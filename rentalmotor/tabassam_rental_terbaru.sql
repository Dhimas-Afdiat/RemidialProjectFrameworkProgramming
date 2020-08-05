-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabassam_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Reynaldo Edwin  Pratama', 'reynaldoex723@gmail.com', '$2y$10$/Nd5.56cbIAsoKpc7CY05e6E8nR93ki01QqMJtLq3p0Nfw2OZtv/W', '2020-07-01 23:54:22', '2020-07-01 23:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kendaraan_platnomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_tahunrakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_seat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kendaraan_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id`, `kendaraan_platnomor`, `kendaraan_merk`, `kendaraan_tipe`, `kendaraan_tahunrakit`, `kendaraan_seat`, `kendaraan_foto`, `kendaraan_fasilitas`, `kendaraan_status`, `created_at`, `updated_at`) VALUES
(1, 'B 2222 VGA', 'Nissan', 'Nissan Awaire', '2011', '4', 'Nissan juke.jpg', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-19 20:58:37', '2020-06-19 21:01:53'),
(2, 'B 8888 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', 'Avanza.jpg', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-19 21:03:08', '2020-06-19 21:03:41'),
(3, 'B 3333 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-20 11:15:33', '2020-06-20 11:15:33'),
(4, 'B 2221 VGA', 'Nissan', 'Nissan Awaire 2011', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'bebas', NULL, NULL),
(6, 'B 2223 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(7, 'B 2224 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(8, 'B 2225 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(9, 'B 2226 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(10, 'B 2227 VGA', 'Avanza', 'Dutro Bus 130 MDBL \r\n', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(11, 'B 2228 VGA', 'Avanza', 'Dutro Bus 130 MDBL \r\n', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(13, 'B 2230 VGA', 'Avanza', 'Dutro Bus 130 MDBL \r\n', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(14, 'B 2229 VGA', 'Avanza', 'Dutro Bus 130 MDBL \r\n', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(16, 'B 2231 VGA', 'Avanza', 'Dutro Bus 130 MDBL \r\n', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(17, 'B 8881 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(18, 'B 8882 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(20, 'B 8883 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(22, 'B 8884 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(23, 'B 8885 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(25, 'B 8887 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(26, 'B 8888 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(28, 'B 8889 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(29, 'B 8890 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(30, 'B 3334 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(31, 'B 3335 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(33, 'B 3336 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(34, 'B 3337 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(36, 'B 3338 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(37, 'B 3339 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(39, 'B 3340 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(40, 'B 3341 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(42, 'B 3342 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(43, 'B 3343 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(44, 'B 1111 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(45, 'B 1112 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(47, 'B 1113 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(48, 'B 1114 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(49, 'B 1115 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(50, 'B 1116 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(51, 'B 1117 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(52, 'B 1118 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(53, 'B 1119 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(54, 'B 1120 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(56, 'B 6661 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(57, 'B 6662 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(58, 'B 6663 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(59, 'B 6664 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(60, 'B 6665 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(61, 'B 6666 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(62, 'B 6667 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(63, 'B 6668 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(64, 'B 6669 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(65, 'B 6670 VGA', 'Nissan', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Beas', NULL, NULL),
(66, 'B 9991 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(67, 'B 9992 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(68, 'B 9993 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(69, 'B 9994 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(70, 'B 9995 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(71, 'B 9996 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(72, 'B 9997 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(73, 'B 9998 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(74, 'B 9999 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(75, 'B 9100 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(76, 'B 9101 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(77, 'B 9102 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(78, 'B 9103 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(79, 'B 9104 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(80, 'B 9105 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(81, 'B 9106 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(82, 'B 9107 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(83, 'B 9108 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(84, 'B 9109 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(85, 'B 9120 VGA', 'Avanza', 'Dutro Bus 130 MDBL ', '2015', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...\r\n', 'Bebas', NULL, NULL),
(86, 'B 1234 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(87, 'B 1235 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(88, 'B 1236 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(89, 'B 1237 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(90, 'B 1238 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(91, 'B 1239 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(92, 'B 1249 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(93, 'B 1259 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(94, 'B 1269 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(95, 'B 1279 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(96, 'B 1289 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(97, 'B 1299 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(98, 'B 1399 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(99, 'B 1499 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(100, 'B 1599 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(101, 'B 1699 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(102, 'B 1799 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(103, 'B 1899 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(104, 'B 1999 VGA', 'Nissan ', 'Nissan Awaire ', '2011', '4', NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia...', 'Bebas', NULL, NULL),
(105, 'B 2222 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', 'C:\\xampp\\tmp\\phpAD25.tmp', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-28 21:45:22', '2020-06-28 21:45:22'),
(106, 'B 2222 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', 'C:\\xampp\\tmp\\php251.tmp', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-28 21:47:55', '2020-06-28 21:47:55'),
(107, 'B 2222 VGA', 'Avanza', 'Dutro Bus 130 MDBL', '2015', '4', 'C:\\xampp\\tmp\\phpC043.tmp', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas', '2020-06-28 21:48:43', '2020-06-28 21:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2020_03_30_073322_create_admins_table', 1),
(54, '2020_03_30_152746_create_products_table', 1),
(55, '2020_03_30_152914_create_comments_table', 1),
(56, '2020_06_13_034208_create_social_accounts_table', 1),
(57, '2020_06_14_044520_create_kendaraan_table', 1),
(58, '2020_06_27_142009_create_pelanggan_table', 1),
(59, '2020_06_27_142855_create_sopir_table', 1),
(60, '2020_06_27_152026_create_tarif_table', 1),
(61, '2020_06_27_232300_create_transaksi_table', 1),
(62, '2020_07_01_163639_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `pelanggan_nama` varchar(50) NOT NULL,
  `pelanggan_alamat` varchar(230) DEFAULT NULL,
  `pelanggan_telpon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `pelanggan_nama`, `pelanggan_alamat`, `pelanggan_telpon`) VALUES
(1, 'NURIS AKBAR', 'BANDUNG', '082121473036'),
(2, 'andi', 'jakarta', '0812 1111'),
(3, 'tono', 'bekasi', '0812 2222'),
(4, 'citra', 'depok', '0812 3333'),
(5, 'dewi', 'bogor', '0812 4444'),
(6, 'marzuki', 'tangerang', '0812 5555'),
(8, 'edo', 'jalan asemtiga', '0853467'),
(9, 'Musyrifah', 'Jakarta', '0853467'),
(10, 'Syahida', 'Bandung', '09876545'),
(11, 'Mujahida', 'Surabaya', '09876555'),
(12, 'reynaldo', 'Palembang', '08353636'),
(13, 'Ruqayah', 'Jakarta', '08353636'),
(14, 'Zaidul', 'Bandung', '09876545'),
(15, 'Ahmad', 'Bali', '0875456767'),
(16, 'suharto', 'Padang', '08353636'),
(17, 'Mujiah', 'Makasar', '09876545'),
(18, 'Reva', 'Palembang', '09876555'),
(19, 'Raiz', 'Jakarta', '0875456767'),
(20, 'Varo', 'Bandung', '08353636'),
(21, 'Kunto', 'Aceh', '09876555'),
(22, 'Rivani', 'Bali', '09876555'),
(23, 'Puji', 'Bngka Belitung', '9363533637'),
(24, 'Ilham', 'Surabaya', '9363533637'),
(25, 'Zsechisty', 'Jakarta', '09876545'),
(26, 'roma', 'Balikpapan', '03933363636'),
(27, 'Ridho', 'Brebes', '0982726222'),
(28, 'Kinto', 'Majalengka', '9363533637'),
(29, 'Alim', 'Purwokerto', '08353636'),
(30, 'Munzir', 'Medan', '092722353'),
(31, 'Umar', 'Jakarta', '9363533637'),
(32, 'Utsman', 'Bandung', '09876555'),
(33, 'Ali', 'Palembang', '083633637377'),
(34, 'edo Alfarizi', 'Bandung', '9363533637'),
(35, 'I Made Wirawan', 'Bali', '037334337373'),
(36, 'I Made Wirawan', 'Bali', '037334337373'),
(37, 'Ngurah Rai', 'Bali', '0388377336'),
(38, 'Kuida', 'Jakarta', '028344747'),
(39, 'Lovely', 'Surabaya', '9353536474'),
(40, 'Kirito', 'Balikpapan', '9363533637'),
(41, 'Sutoyo', 'Majalengka', '02827225252'),
(42, 'Muzdalifah', 'Bandung', '08353636'),
(43, 'Mita', 'Kota Tegal', '0282625252'),
(44, 'Syrta', 'Jakarta', '0227225'),
(45, 'Muhammad Adi', 'Banjarmasin', '0373333'),
(46, 'Dirojah', 'Banyumas', '0282252'),
(47, 'Nia', 'Kota Tegal', '038333'),
(48, 'Ve', 'Jakarta', '0853467'),
(49, 'Zay', 'Bali', '02837363636'),
(50, 'Riko', 'Bandung', '9363533637'),
(51, 'Zainudin', 'Jakarta', '02873633'),
(52, 'Memet', 'Surabaya', '0875456767'),
(53, 'Aidho', 'TulungAgung', '028303833'),
(54, 'I Made Gede', 'Bali', '0875456767'),
(55, 'Ronaldinho', 'Palembang', '09643373737'),
(56, 'Muzaka', 'Manado', '096545677'),
(57, 'Umar Al-farizi', 'Bandung', '05678887643'),
(58, 'Dodo', 'Palembang', '0875456767'),
(59, 'Fani', 'Kota Tegal', '0987444555'),
(60, 'Ayuni', 'Brebes', '0875456767'),
(61, 'Syaeful Bakhri', 'Kota Tegal', '09333737373'),
(62, 'Syaeful Labib', 'Pemalang', '098333636'),
(63, 'Mita Mutia', 'Kota Tegal', '09876545'),
(64, 'Reza', 'Jakarta', '0875456767'),
(65, 'Hida', 'Kota Tegal', '9363533637'),
(66, 'Mutia', 'Bali', '0853467'),
(67, 'Teuku Wisnu', 'Aceh', '098765567'),
(68, 'Kurniawan', 'Jakarta', '03837363'),
(69, 'Rumaysho', 'Yogyakarta', '08373535363'),
(70, 'ReyuKhan', 'Kota Tegal', '0987635353'),
(71, 'Sumarni', 'Bandung', '9363533637'),
(72, 'Sumanto', 'Palembang', '0836353336'),
(73, 'Sudada', 'Bandung', '0282726252'),
(74, 'I Made Wirawan Santoso', 'Bali', '09876555'),
(75, 'Ade', 'Kota Tegal', '09654444433'),
(76, 'Wiwit', 'Kota Tegal', '0875456767'),
(77, 'Reynaldo Edwin', 'Kota Tegal', '098765464'),
(78, 'vembri', 'Kota Tegal', '9363533637'),
(79, 'wijaya', 'Kota Tegal', '0875456767'),
(80, 'Tasya', 'Kota Tegal', '084746363'),
(81, 'Vey', 'Palembang', '08353636'),
(82, 'Kurniawan Ade', 'Brebes', '0987464663'),
(83, 'Ade Owen', 'Kota Tegal', '0874333'),
(84, 'Ade Barkash', 'Bandung', '9363533637'),
(85, 'Murnia', 'Jakarta', '9363533637'),
(86, 'Rifa\'i', 'Kota Tegal', '0875456767'),
(87, 'Ravildo', 'Surabaya', '0938335353'),
(88, 'Mujhira', 'Jakarta', '09876545'),
(89, 'Robin', 'Bandung', '0853467'),
(90, 'Robin', 'Bandung', '0853467'),
(91, 'Syaukani', 'Batang', '0987624262'),
(92, 'Syaukani', 'Batang', '0987624262'),
(93, 'Hartoyo', 'Tangerang', '098262526'),
(94, 'Zubaedah', 'Kota Tegal', '0938833363'),
(95, 'Razi', 'Surabaya', '083363363'),
(96, 'Kurniawan Masrury', 'Bandung', '0837333526'),
(97, 'Nomury', 'Bali', '0987876242'),
(98, 'Demian', 'Kota Tegal', '09876555'),
(99, 'Lucardo', 'Banjarmasin', '0986884'),
(100, 'I Made AgusWirawan', 'Bali', '087765227'),
(101, 'bakhry', 'Kota Tegal', '08763567'),
(104, 'edo', 'kotategal', '098754567878'),
(105, 'aidho', 'asemtiga', '08765467899');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `user_id`, `provider_id`, `provider_name`, `created_at`, `updated_at`) VALUES
(2, 1, '1018745165301210', 'facebook', '2020-07-01 12:05:31', '2020-07-01 12:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id` int(11) NOT NULL,
  `sopir_alamat` text NOT NULL,
  `sopir_nama` varchar(100) NOT NULL,
  `sopir_telpon` varchar(12) NOT NULL,
  `sopir_ktp` varchar(30) NOT NULL,
  `sopir_sim` varchar(30) NOT NULL,
  `sopir_status` enum('bebas','jalan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id`, `sopir_alamat`, `sopir_nama`, `sopir_telpon`, `sopir_ktp`, `sopir_sim`, `sopir_status`) VALUES
(2, 'JAKARTA', 'Alexander', '08181111', '1234 1111', '6789 1111', 'jalan'),
(3, 'DEPOK', 'Bimo', '08183333', '1234 3333', '6789 3333', 'bebas'),
(4, 'bogor', 'Bima', '08184444', '1234 4444', '6789 4444', 'bebas'),
(5, 'jakarta', 'Chandra', '08185555', '1234 5555', '6789 5555', 'bebas'),
(6, 'benasi', 'David', '08186666', '1234 6666', '6789 6666', 'bebas'),
(7, 'Kota Medan', 'Dewi', '08187777', '1234 7777', '6789 7777', 'bebas'),
(8, 'bogor', 'Edward', '08188888', '1234 8888', '6789 8888', 'bebas'),
(9, 'tangerang', 'Aidho', '08189999', '1234 9999', '6789 9999', 'bebas'),
(11, 'Jakarta', 'Supri', '087642345678', '872223242526', '242422627228', 'bebas'),
(12, 'Medan', 'Dirjo', '087652422425', '922625353633', '83634337383', 'jalan'),
(13, 'Madura', 'supri', '092625272726', '92725222626', '9282635637338', 'bebas'),
(14, 'Surabaya', 'Reynaldo', '09373633', '0383635363737', '0383635336377', 'bebas'),
(15, 'Madura', 'daryo', '0974262727', '526282929292', '928262526282', 'bebas'),
(16, 'Bali', 'I Gede', '082622222', '9272625252626', '9272525272828', 'bebas'),
(17, 'Kebumen', 'Suyoto', '098363535', '033363633378', '0383635353637', 'bebas'),
(18, 'Jakarta', 'Durjo', '097353637', '038335337383', '03833533339', 'jalan'),
(19, 'Aceh', 'Sujoto', '038336363', '03933636373', '033735363737', 'bebas'),
(20, 'Bandung', 'Salva', '09373633', '03938363637', '03938833377', 'bebas'),
(21, 'Bali', 'Edo', '08363535', '03373633366', '033773363377', 'jalan'),
(22, 'Denpasar', 'I Putu Gede', '937363535', '938336353637', '039933333533', 'jalan'),
(23, 'Madura', 'Sugibyo', '03937363535', '833536333939', '038335353633', 'bebas'),
(24, 'Jakarta', 'Darjo', '093363535', '03933335333', '03933633635', 'bebas'),
(25, 'tangerang', 'somad', '0383353', '9333363337377', '039373636363', 'bebas'),
(26, 'Pemalang', 'Dibyo', '0746474847', '04944445464747', '0494746464646', 'bebas'),
(27, 'Madura', 'doodo', '09373633', '0447464646', '049474644', 'bebas'),
(28, 'Bali', 'Dewi', '84464474', '9484464647', '0484746446', 'bebas'),
(29, 'Madura', 'Aidho Alfa', '84464474', '9484464647', '0484746446', 'bebas'),
(30, 'Surabaya', 'I Nyoman Agung', '38373338', '04474644747', '94846454546', 'bebas'),
(31, 'Jakarta', 'Dewi Anggreani', '38373338', '9484464647', '0484746446', 'bebas'),
(32, 'Kota Medan', 'Dewi Anggreani Syahputri', '38373338', '9484464647', '0484746446', 'bebas'),
(33, 'Surabaya', 'Ragil', '099474646', '048474645', '04474644', 'bebas'),
(34, 'Surabaya', 'Dewi Arofa', '9446464744', '049446464647', '04847464646', 'jalan'),
(35, 'Bali', 'I Ngurah Rai', '93363535', '04474644747', '0484746446', 'bebas'),
(36, 'Jakarta', 'Aidho Suplaii', '9446464744', '9484464647', '04474644', 'jalan'),
(37, 'Bandung', 'Kuya', '9446464744', '9484464647', '04847464646', 'bebas'),
(38, 'Jakarta', 'Ray', '0944645547', '484746454546', '92862524748', 'jalan'),
(39, 'Manado', 'Galaxy', '0373653363', '3837363536', '0393333534', 'bebas'),
(40, 'Yogyakarta', 'Buwono', '933633535', '058573542', '0484752426', 'bebas'),
(41, 'Madura', 'Mey', '0393837363', '826254857', '098765477', 'jalan'),
(42, 'Makasar', 'Opa', '0393363535', '8373524238', '0393363536', 'bebas'),
(43, 'Makasar', 'Dewi Alfia', '0337363536', '03938366177', '02827252422', 'bebas'),
(44, 'Madura', 'sumanto', '03933336', '039336336', '039383635', 'bebas'),
(45, 'Aceh', 'Tengu arsy', '9446464744', '3837363536', '92862524748', 'jalan'),
(46, 'Aceh', 'Cut Hida', '0373653363', '049446464647', '0484746446', 'bebas'),
(47, 'Aceh', 'Rido', '84464474', '9484464647', '94846454546', 'bebas'),
(48, 'Madura', 'Ryhan', '9446464744', '04474644747', '04474644', 'jalan'),
(49, 'Madura', 'Ryhan Alfiana', '84464474', '3837363536', '0393333534', 'jalan'),
(50, 'Madura', 'Aidho Musyafa', '039373635', '039383736', '0337322526', 'jalan'),
(51, 'Surabaya', 'Rosyid', '84464474', '9484464647', '92862524748', 'jalan'),
(52, 'Surabaya', 'Rifani', '09836353', '039373636', '7363373839', 'jalan'),
(53, 'Kota Tegal', 'vembri', '0994463536', '0494444646', '827233839', 'jalan'),
(54, 'Kota Tegal', 'Nia', '03837363', '01136374', '02726337', 'bebas'),
(55, 'Bali', 'Mita', '9446464744', '04474644747', '92862524748', 'bebas'),
(56, 'Brebes', 'Johan', '039383736', '9383353537', '1817353737', 'bebas'),
(57, 'Madura', 'Dewi Arando', '38373338', '9484464647', '94846454546', 'bebas'),
(58, 'Madura', 'Dewi Arando', '38373338', '9484464647', '94846454546', 'bebas'),
(59, 'Padang', 'Sugiono', '38373338', '3837363536', '04474644', 'jalan'),
(60, 'Surabaya', 'Siao', '048553738', '03937363537', '08252675858', 'bebas'),
(61, 'Bandung', 'Xe', '048574644', '059475222', '0836474484', 'bebas'),
(62, 'Brebes', 'Ve', '9446464744', '3837363536', '04847464646', 'jalan'),
(63, 'Madura', 'Kuy', '0397353647', '085352253748', '08262425478', 'jalan'),
(64, 'Pemalang', 'Rua', '03736337', '0393736337', '03335333838', 'jalan'),
(65, 'Surabaya', 'I Nyoman Setiwan', '03372557494', '03836353637', '08168448466', 'bebas'),
(66, 'Bali', 'Aidho Alfa Amirul', '84464474', '484746454546', '0393333534', 'jalan'),
(67, 'Jakarta', 'Roward', '0383725326', '05752326484', '03825357587', 'bebas'),
(68, 'Pemalang', 'Gugun', '9446464744', '484746454546', '04474644', 'jalan'),
(69, 'Padang', 'Reko', '38373338', '9484464647', '04847464646', 'jalan'),
(70, 'bekasi', 'Ningtyas', '098353425', '42537485847', '927252263849', 'jalan'),
(71, 'Aceh', 'Cut Hina', '09476367', '4364844955', '9372226844', 'jalan'),
(72, 'Malang', 'Yusli', '83632264849', '937353537474', '234493262527', 'bebas'),
(73, 'Lamongan', 'Sujoyo', '094542637', '753435363', '4463389486', 'bebas'),
(74, 'Bali', 'I Nyoman', '0484634226', '3335336338', '098465342', 'jalan'),
(75, 'Surabaya', 'I Nyoman Purwo', '38373338', '3837363536', '94846454546', 'jalan'),
(76, 'Aceh', 'Teuku Risa', '38373338', '3837363536', '04474644', 'jalan'),
(77, 'Kota Tegal', 'Romli', '38373338', '04474644747', '04847464646', 'bebas'),
(78, 'Madura', 'Aidho Muhammad', '037353426', '03363425272', '48463536338', 'jalan'),
(79, 'Aceh', 'Cut Mutia', '0373653363', '9484464647', '0393333534', 'bebas'),
(80, 'Brebes', 'Aramco', '84464474', '04474644747', '92862524748', 'jalan'),
(81, 'Brebes', 'Aramco', '84464474', '04474644747', '92862524748', 'jalan'),
(82, 'Padang', 'Simanjutak', '9446464744', '9484464647', '04474644', 'bebas'),
(83, 'Surabaya', 'Yoga', '0373653363', '04474644747', '0393333534', 'bebas'),
(84, 'Surabaya', 'Aramco Nahila', '84464474', '484746454546', '0393333534', 'jalan'),
(85, 'Bali', 'I Nyoman Terrawan', '083735425', '8675343383', '9876434566', 'bebas'),
(86, 'Jakarta', 'Budi', '09826242', '8463424374', '8742574785', 'bebas'),
(87, 'Bandung', 'Maudia', '072522627', '09363353637', '435378969968', 'jalan'),
(88, 'Madura', 'Rumili', '094745435', '97445648383', '652325374849', 'bebas'),
(89, 'Bali', 'I Nyoman Munwar', '947453363', '0557464744', '53422564785', 'bebas'),
(90, 'Lamongan', 'Anandita', '84464474', '049446464647', '92862524748', 'bebas'),
(91, 'Bali', 'Putu Gede wirawan', '9446464744', '9484464647', '94846454546', 'jalan'),
(92, 'Madura', 'Mulyono', '0373653363', '049446464647', '04847464646', 'bebas'),
(93, 'Kota Tegal', 'Aramco Muhammad', '9446464744', '9484464647', '04847464646', 'bebas'),
(94, 'Surabaya', 'Aidho Kuya', '933633535', '8373524238', '7363373839', 'bebas'),
(95, 'Surabaya', 'Dewi Arando Da Silva', '933633535', '484746454546', '0393333534', 'bebas'),
(96, 'Bali', 'Ridho Gustalvo', '2354646447', '23474848485', '23645755585', 'jalan'),
(97, 'Kota Tegal', 'Sujiwo', '735342283', '62423253738', '946343633', 'jalan'),
(98, 'Surabaya', 'Da Silva Cinamos', '9836355343', '0937363535', '3574484848', 'bebas'),
(99, 'Surabaya', 'Dewi Aisyah', '9446464744', '8373524238', '0484746446', 'bebas'),
(100, 'Bali', 'I Nyoman Agung Setiawan', '9446464744', '3837363536', '0484746446', 'jalan'),
(101, 'Surabaya', 'Aisyah Syahida', '84464474', '04474644747', '1817353737', 'bebas'),
(102, 'Kab Tegal', 'Reynaldo Edwin Pratama', '93873636', '98376363', '039387373', 'bebas'),
(105, 'jakarta', 'edo', '0987655678', '098765446', '098765678', 'jalan'),
(106, 'jakarta', 'edo', '0987655678', '098765446', '098765678', 'jalan');

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `id` int(11) NOT NULL,
  `kendaraan_id` int(11) NOT NULL,
  `tarif_perhari` int(11) NOT NULL,
  `tarif_overtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`id`, `kendaraan_id`, `tarif_perhari`, `tarif_overtime`) VALUES
(3, 1, 1200000, 1000000),
(4, 2, 2000000, 2000000),
(5, 3, 3000000, 3000000),
(6, 4, 4000000, 4000000),
(7, 8, 5000000, 5000000),
(8, 9, 6000000, 6000000),
(9, 10, 7000000, 7000000),
(10, 11, 8000000, 8000000),
(14, 12, 800, 2000000),
(15, 13, 300, 500),
(16, 14, 300, 500),
(17, 14, 120000, 500000),
(18, 15, 120000, 500000),
(19, 16, 120000, 500000),
(20, 16, 120000, 500000),
(21, 18, 120000, 500000),
(22, 19, 120000, 500000),
(23, 20, 120000, 500000),
(24, 21, 120000, 500000),
(25, 22, 120000, 500000),
(26, 23, 120000, 500000),
(27, 24, 120000, 500000),
(28, 25, 120000, 500000),
(29, 26, 120000, 500000),
(30, 27, 120000, 500000),
(31, 28, 120000, 500000),
(32, 29, 120000, 500000),
(33, 30, 120000, 500000),
(34, 31, 120000, 500000),
(35, 32, 120000, 500000),
(36, 33, 200000, 400000),
(37, 34, 200000, 400000),
(38, 35, 200000, 400000),
(39, 36, 200000, 400000),
(40, 37, 200000, 400000),
(41, 38, 200000, 400000),
(42, 39, 200000, 400000),
(43, 40, 200000, 400000),
(44, 41, 200000, 400000),
(45, 42, 200000, 400000),
(46, 43, 200000, 400000),
(47, 44, 200000, 400000),
(48, 45, 200000, 400000),
(49, 46, 200000, 400000),
(50, 47, 200000, 400000),
(51, 48, 200000, 400000),
(52, 49, 200000, 400000),
(53, 50, 200000, 400000),
(54, 51, 300000, 600000),
(55, 52, 300000, 600000),
(56, 53, 300000, 600000),
(57, 54, 300000, 600000),
(58, 55, 300000, 600000),
(59, 56, 300000, 600000),
(60, 57, 300000, 600000),
(61, 58, 300000, 600000),
(62, 59, 300000, 600000),
(63, 60, 300000, 600000),
(64, 61, 300000, 600000),
(65, 62, 300000, 600000),
(66, 63, 300000, 600000),
(67, 64, 300000, 600000),
(68, 65, 300000, 600000),
(69, 66, 300000, 600000),
(70, 67, 300000, 600000),
(71, 68, 300000, 400000),
(72, 69, 300000, 400000),
(73, 70, 300000, 600000),
(74, 71, 300000, 600000),
(75, 72, 300000, 600000),
(76, 73, 300000, 600000),
(77, 74, 300000, 600000),
(78, 75, 300000, 600000),
(79, 76, 300000, 600000),
(80, 77, 300000, 600000),
(81, 78, 300000, 600000),
(82, 79, 300000, 600000),
(83, 80, 400000, 800000),
(84, 81, 400000, 800000),
(85, 82, 400000, 800000),
(86, 83, 400000, 800000),
(87, 84, 400000, 800000),
(88, 85, 400000, 800000),
(89, 86, 400000, 800000),
(90, 87, 400000, 800000),
(91, 88, 400000, 800000),
(92, 89, 400000, 800000),
(93, 90, 400000, 800000),
(94, 91, 500000, 1000000),
(95, 92, 500000, 1000000),
(96, 93, 500000, 1000000),
(97, 94, 500000, 1000000),
(98, 95, 500000, 1000000),
(99, 96, 500000, 1000000),
(100, 97, 500000, 1000000),
(101, 98, 500000, 1000000),
(102, 99, 500000, 1000000),
(103, 99, 500000, 1000000),
(104, 100, 500000, 1000000),
(105, 101, 500000, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `sopir_id` int(11) NOT NULL,
  `transaksi_tglmulai` date NOT NULL,
  `transaksi_tglselesai` date DEFAULT NULL,
  `transaksi_hari` varchar(10) DEFAULT NULL,
  `transaksi_tglovertime` varchar(288) NOT NULL,
  `transaksi_hariovertime` int(11) DEFAULT NULL,
  `transaksi_total` int(11) NOT NULL,
  `transaksi_status` enum('mulai','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `pelanggan_id`, `sopir_id`, `transaksi_tglmulai`, `transaksi_tglselesai`, `transaksi_hari`, `transaksi_tglovertime`, `transaksi_hariovertime`, `transaksi_total`, `transaksi_status`) VALUES
(1, 2, 2, '2015-06-12', '2015-06-13', '1', '2015-06-19', 6, 6000000, 'selesai'),
(2, 2, 3, '2015-06-11', '2015-06-13', NULL, '0000-00-00', NULL, 0, 'mulai'),
(3, 2, 2, '2015-06-12', '2015-06-14', NULL, '2015-06-18', 7, 6000000, 'selesai'),
(4, 3, 3, '2015-06-06', '2015-06-08', '4', '2015-06-12', 7, 600000, 'selesai'),
(5, 4, 4, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(6, 5, 5, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(7, 6, 6, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(8, 7, 7, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(9, 8, 8, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 300000, 'selesai'),
(10, 9, 9, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 300000, 'selesai'),
(11, 10, 10, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(12, 11, 11, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(13, 12, 12, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(14, 13, 13, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(15, 14, 14, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(16, 15, 15, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(17, 16, 16, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(18, 16, 16, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(19, 17, 17, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(20, 18, 18, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(21, 19, 19, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(22, 20, 20, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(23, 21, 21, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(24, 22, 22, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(25, 24, 24, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 500000, 'selesai'),
(26, 25, 25, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 700000, 'selesai'),
(27, 26, 26, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(28, 27, 27, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(29, 28, 28, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 700000, 'selesai'),
(30, 29, 29, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 700000, 'selesai'),
(31, 30, 30, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(32, 31, 31, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 500000, 'selesai'),
(33, 32, 32, '2015-08-14', '2015-08-15', '1', '2015-08-19', 6, 400000, 'selesai'),
(34, 33, 33, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 400000, 'selesai'),
(35, 35, 35, '2015-08-13', '2015-08-14', '1', '2015-07-20', 6, 500000, 'selesai'),
(36, 36, 36, '2015-08-16', '2015-08-17', '1', '2015-08-21', 7, 500000, 'selesai'),
(37, 37, 37, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 500000, 'selesai'),
(38, 38, 38, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 700000, 'selesai'),
(39, 39, 39, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 400000, 'selesai'),
(40, 40, 40, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 500000, 'selesai'),
(41, 41, 41, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 500000, 'selesai'),
(42, 42, 42, '2015-08-16', '2015-08-17', '1', '2015-08-20', 4, 550000, 'selesai'),
(43, 43, 43, '2015-09-01', '2015-09-02', '1', '2015-09-08', 6, 500000, 'selesai'),
(44, 44, 44, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 550000, 'selesai'),
(45, 45, 45, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 700000, 'selesai'),
(46, 46, 46, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 500000, 'selesai'),
(47, 47, 47, '2015-10-01', '2015-10-02', '1', '2015-10-07', 5, 550000, 'selesai'),
(48, 48, 48, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 400000, 'selesai'),
(49, 49, 49, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 400000, 'selesai'),
(50, 50, 50, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 500000, 'selesai'),
(51, 51, 51, '2015-10-01', '2015-10-02', '1', '2015-10-07', 6, 550000, 'selesai'),
(52, 52, 52, '2015-10-01', '2015-10-02', '1', '2015-10-07', 6, 600000, 'selesai'),
(53, 53, 53, '2015-10-03', '2015-10-04', '1', '2015-10-11', 7, 700000, 'selesai'),
(54, 54, 54, '2015-10-03', '2015-10-04', '1', '2015-10-12', 6, 500000, 'selesai'),
(55, 55, 55, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 600000, 'selesai'),
(56, 56, 56, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 700000, 'selesai'),
(57, 57, 57, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 600000, 'selesai'),
(58, 58, 58, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 400000, 'selesai'),
(59, 59, 59, '2015-11-12', '2015-11-13', '1', '2015-11-20', 7, 700000, 'selesai'),
(60, 60, 60, '2015-11-11', '2015-11-12', '1', '2015-11-20', 7, 500000, 'selesai'),
(61, 61, 61, '2015-11-12', '2015-11-13', '1', '2015-11-21', 7, 800000, 'selesai'),
(62, 62, 62, '2015-11-13', '2015-11-14', '1', '2015-11-20', 7, 700000, 'selesai'),
(63, 63, 63, '2015-11-14', '2015-11-15', '1', '2015-11-21', 7, 850000, 'selesai'),
(64, 64, 64, '2015-11-14', '2015-11-15', '1', '2015-11-21', 7, 700000, 'selesai'),
(65, 65, 65, '2015-11-15', '2015-11-16', '1', '2015-11-22', 7, 700000, 'selesai'),
(66, 66, 66, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 500000, 'selesai'),
(67, 67, 67, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 550000, 'selesai'),
(68, 68, 68, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 400000, 'selesai'),
(69, 69, 69, '2016-01-20', '2016-01-21', '1', '2016-1-28', 7, 500000, 'selesai'),
(70, 70, 70, '2016-01-23', '2016-01-24', '1', '2016-1-31', 7, 900000, 'selesai'),
(71, 71, 71, '2016-01-23', '2016-01-24', '1', '2016-1-31', 7, 600000, 'selesai'),
(72, 72, 72, '2016-02-10', '2016-02-11', '1', '2016-2-18', 7, 400000, 'selesai'),
(73, 73, 73, '2016-03-11', '2016-03-12', '1', '2016-3-19', 7, 700000, 'selesai'),
(74, 74, 74, '2016-04-11', '2016-04-12', '1', '2016-4-19', 7, 400000, 'selesai'),
(75, 75, 75, '2016-05-11', '2016-05-12', '1', '2016-5-19', 7, 500000, 'selesai'),
(76, 76, 76, '2016-06-11', '2016-06-12', '1', '2016-6-19', 7, 400000, 'selesai'),
(77, 77, 77, '2016-07-11', '2016-07-12', '1', '2016-7-19', 7, 500000, 'selesai'),
(78, 77, 77, '2016-08-11', '2016-08-12', '1', '2016-8-19', 7, 550000, 'selesai'),
(79, 79, 79, '2016-09-11', '2016-09-12', '1', '2016-9-19', 7, 700000, 'selesai'),
(80, 80, 80, '2016-10-11', '2016-10-12', '1', '2016-10-19', 7, 500000, 'selesai'),
(81, 81, 81, '2016-12-11', '2016-12-12', '1', '2016-12-19', 7, 500000, 'selesai'),
(82, 82, 82, '2017-01-11', '2017-01-12', '1', '2017-01-19', 7, 400000, 'selesai'),
(83, 83, 83, '2017-02-11', '2017-02-12', '1', '2017-01-19', 7, 600000, 'selesai'),
(84, 84, 84, '2017-03-11', '2017-03-12', '1', '2017-03-19', 7, 1000000, 'selesai'),
(85, 85, 85, '2017-04-11', '2017-04-12', '1', '2017-04-19', 7, 500000, 'selesai'),
(86, 86, 86, '2017-05-11', '2017-05-12', '1', '2017-05-19', 7, 700000, 'selesai'),
(87, 87, 87, '2017-06-11', '2017-06-12', '1', '2017-06-19', 7, 550000, 'selesai'),
(88, 88, 88, '2017-07-11', '2017-07-12', '1', '2017-07-19', 7, 700000, 'selesai'),
(89, 89, 89, '2017-08-11', '2017-08-12', '1', '2017-08-19', 7, 700000, 'selesai'),
(90, 90, 90, '2017-09-11', '2017-09-12', '1', '2017-09-19', 7, 700000, 'selesai'),
(91, 91, 91, '2017-10-11', '2017-10-12', '1', '2017-10-19', 7, 400000, 'selesai'),
(92, 93, 93, '2017-11-11', '2017-11-12', '1', '2017-11-19', 7, 700000, 'selesai'),
(93, 94, 94, '2017-12-11', '2017-12-12', '1', '2017-12-19', 7, 400000, 'selesai'),
(94, 95, 95, '2018-01-11', '2018-01-12', '1', '2018-01-19', 7, 1200000, 'selesai'),
(95, 96, 96, '2018-02-11', '2018-02-12', '1', '2018-02-19', 7, 700000, 'selesai'),
(96, 96, 96, '2018-03-11', '2018-03-12', '1', '2018-03-19', 7, 500000, 'selesai'),
(97, 97, 97, '2018-03-11', '2018-03-12', '1', '2018-03-19', 7, 500000, 'selesai'),
(98, 98, 998, '2018-04-11', '2018-04-12', '1', '2018-04-19', 7, 550000, 'selesai'),
(99, 99, 99, '2018-05-11', '2018-05-12', '1', '2018-05-19', 7, 500000, 'selesai'),
(100, 100, 100, '2018-06-11', '2018-06-12', '1', '2018-05-19', 7, 550000, 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_id_unique` (`provider_id`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tarif`
--
ALTER TABLE `tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
