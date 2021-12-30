-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2021 at 06:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lainnya`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `date_created` varchar(24) NOT NULL,
  `email` varchar(25) NOT NULL,
  `name` varchar(18) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `code` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `date_created`, `email`, `name`, `phone`, `password`, `status`, `code`) VALUES
(1, '2021-10-27T06:34:10.000Z', 'paksi@gmail.com', 'paksi', 2147483647, NULL, b'1', 'vnriedjkfadbfnvklfhdfop30e'),
(2, '2021-10-27T08:45:29.000Z', 'rudeus@gmail.com', 'Arafat Maku', 2147483647, NULL, b'1', '5A0D94E9E6BF00DF681B75E6FE595203CCB92A296CAAEA599AA3AB6D3511A89737FB5F31E082515BFCB15361184844B034B220EF305D725B3777560707B27510'),
(3, '2021-10-27T08:48:36.000Z', 'oliver.syauqiez@yahoo.com', 'Anggun Ayu Lestari', 2147483647, NULL, b'1', '1B0F74CA6ECAE286AEF066738E70BC4B4043E2C4B38AB2B61FD8C3BA615250BE690499BD205F0B66C97E1FB10CA0DF5D0DB6738A30E6CA0F273206E8F5120B39'),
(4, '2021-10-27T08:49:31.000Z', 'ari.fida@yahoo.com', 'Kirigaya Kazuto', 2147483647, NULL, b'1', NULL),
(5, '2021-10-27T08:50:31.000Z', 'sul@gmail.com', 'Dimas', 2147483647, NULL, b'1', '2hnv8oiedrysthnofg83btgn0oiwthqef'),
(6, '2021-10-27T08:51:38.000Z', 'fikafebrika02@gmail.com', 'Fika Febrika', 2147483647, NULL, b'1', '24C410527A5AEA6B7A0D792C0C0DA06C6424C98B172B99701E7E9DC99E048818D7303F1E4F9931C9BA2F3B1D950FA0E5B9FA9507ED68C273BD9B0CAC77D03F9B'),
(7, '2021-10-27T08:52:37.000Z', 'andina@gmail.com', 'Andina Marsanova', 2147483647, NULL, b'1', NULL),
(8, '2021-10-27T08:53:14.000Z', 'nurwinda@gmail.com', 'nurwinda dwiva', 2147483647, NULL, b'1', NULL),
(9, '2021-10-27T08:54:10.000Z', 'minatwice@gmail.com', 'Mina Rofida', 2147483647, NULL, b'1', NULL),
(10, '2021-10-27T08:55:08.000Z', 'dimas@gmail.com', 'Sultan Dimas', 2147483647, NULL, b'1', NULL),
(11, '2021-10-27T08:55:50.000Z', 'asasa@gmail.com', 'Asa Darussalam', 2147483647, NULL, b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_x_merch`
--

CREATE TABLE `customer_x_merch` (
  `id` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_x_merch`
--

INSERT INTO `customer_x_merch` (`id`, `id_ticket`, `customer_id`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 3),
(4, 5, 9),
(5, 6, 10),
(6, 7, 11),
(8, 4, 4),
(11, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_x_merch_eligibility`
--

CREATE TABLE `customer_x_merch_eligibility` (
  `id` int(11) NOT NULL,
  `given_on` varchar(19) NOT NULL,
  `given_by` varchar(3) NOT NULL,
  `customer_x_merch_id` int(11) NOT NULL,
  `merch_eligible_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_x_merch_eligibility`
--

INSERT INTO `customer_x_merch_eligibility` (`id`, `given_on`, `given_by`, `customer_x_merch_id`, `merch_eligible_id`) VALUES
(1, '2021-12-05T10:00:45', 'Ari', 1, 1),
(2, '2021-12-05T10:00:44', 'Ari', 1, 2),
(3, '2021-12-05T10:00:07', 'Ari', 1, 3),
(4, '2021-12-05T10:00:25', 'Ari', 1, 4),
(5, '2021-12-05T10:00:44', 'Ari', 1, 5),
(6, '2021-12-03T10:00:12', 'Ari', 2, 6),
(7, '2021-12-03T10:00:47', 'Ari', 2, 7),
(8, '2021-12-03T10:00:00', 'Ari', 2, 8),
(9, '2021-12-03T10:00:13', 'Ari', 2, 9),
(10, '2021-12-03T10:00:52', 'Ari', 2, 10),
(11, '2021-12-05T10:00:26', 'Ari', 3, 11),
(12, '2021-12-05T10:00:33', 'Ari', 3, 12),
(13, '2021-12-05T10:00:50', 'Ari', 3, 13),
(14, '2021-12-05T10:00:16', 'Ari', 3, 14),
(15, '2021-12-05T10:00:32', 'Ari', 3, 15),
(16, '2021-12-01T10:00:55', 'Ari', 4, 21),
(17, '2021-12-01T10:00:14', 'Ari', 4, 22),
(18, '2021-12-01T10:00:34', 'Ari', 4, 23),
(19, '2021-12-01T10:00:02', 'Ari', 4, 24),
(20, '2021-12-01T10:00:42', 'Ari', 4, 25),
(21, '2021-12-01T10:00:01', 'Ari', 4, 26),
(22, '2021-12-01T10:00:09', 'Ari', 5, 27),
(23, '2021-12-01T10:00:25', 'Ari', 5, 28),
(24, '2021-12-01T10:00:45', 'Ari', 5, 29),
(25, '2021-12-01T10:00:02', 'Ari', 5, 30),
(26, '2021-12-01T10:00:16', 'Ari', 5, 31),
(27, '2021-12-01T10:00:29', 'Ari', 5, 32),
(28, '2021-12-01T12:00:12', 'Ari', 6, 33),
(29, '2021-12-01T12:00:42', 'Ari', 6, 34),
(30, '2021-12-01T12:00:15', 'Ari', 6, 35),
(31, '2021-12-01T12:00:34', 'Ari', 6, 36),
(32, '2021-12-01T10:00:20', 'Ari', 8, 16),
(33, '2021-12-01T10:00:31', 'Ari', 8, 17),
(34, '2021-12-01T10:00:42', 'Ari', 8, 18),
(35, '2021-12-01T10:00:19', 'Ari', 8, 19),
(36, '2021-12-01T10:00:32', 'Ari', 8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `id` int(11) NOT NULL,
  `merch_name` varchar(22) NOT NULL,
  `total_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merch`
--

INSERT INTO `merch` (`id`, `merch_name`, `total_stock`) VALUES
(1, 'Notebook', 1000),
(2, 'Mug', 1000),
(3, 'Alat Tulis', 1000),
(4, 'Gantungan Kunci', 1000),
(5, 'Goody Bag Peserta Umum', 1000),
(6, 'Goody Bag Undangan', 1000),
(7, 'Goody Bag Pembicara', 1000),
(8, 'Goody Bag Media', 1000),
(9, 'Co Card Peserta Umum', 1000),
(10, 'Co Card Undangan', 1000),
(11, 'Co Card Pembicara', 1000),
(12, 'Co Card Media', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `merch_eligibility`
--

CREATE TABLE `merch_eligibility` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_ticket` int(11) NOT NULL,
  `merch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merch_eligibility`
--

INSERT INTO `merch_eligibility` (`id`, `quantity`, `id_ticket`, `merch_id`) VALUES
(1, 500, 1, 1),
(2, 500, 1, 2),
(3, 500, 1, 3),
(4, 500, 1, 5),
(5, 500, 1, 9),
(6, 500, 2, 1),
(7, 500, 2, 2),
(8, 500, 2, 3),
(9, 500, 2, 5),
(10, 500, 2, 9),
(11, 500, 3, 1),
(12, 500, 3, 2),
(13, 500, 3, 3),
(14, 500, 3, 5),
(15, 500, 3, 9),
(16, 500, 4, 1),
(17, 500, 4, 2),
(18, 500, 4, 3),
(19, 500, 4, 5),
(20, 500, 4, 9),
(21, 100, 5, 1),
(22, 100, 5, 2),
(23, 100, 5, 3),
(24, 100, 5, 4),
(25, 100, 5, 6),
(26, 100, 5, 10),
(27, 20, 6, 1),
(28, 20, 6, 2),
(29, 20, 6, 3),
(30, 20, 6, 4),
(31, 20, 6, 7),
(32, 20, 6, 11),
(33, 50, 7, 1),
(34, 50, 7, 4),
(35, 50, 7, 8),
(36, 50, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id_registration` int(11) NOT NULL,
  `validated_on` varchar(19) DEFAULT NULL,
  `validated_by` varchar(30) DEFAULT NULL,
  `id_participant` int(11) DEFAULT NULL,
  `id_session` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id_registration`, `validated_on`, `validated_by`, `id_participant`, `id_session`) VALUES
(65, '2021-11-07T12:32:28', NULL, 2, 4),
(66, '2021-12-03T13:34:56', NULL, 2, 5),
(67, '2021-12-03T16:06:26', NULL, 2, 6),
(69, '2021-12-01T09:29:44', NULL, 9, 1),
(70, NULL, NULL, 9, 2),
(71, NULL, NULL, 9, 3),
(72, '2021-12-01T10:03:51', NULL, 9, 4),
(73, NULL, NULL, 9, 5),
(74, NULL, NULL, 9, 6),
(75, NULL, NULL, 9, 7),
(76, '2021-12-05T13:37:31', NULL, 9, 8),
(77, NULL, NULL, 9, 9),
(78, NULL, NULL, 10, 1),
(79, NULL, NULL, 10, 2),
(80, NULL, NULL, 10, 3),
(81, NULL, NULL, 10, 4),
(82, NULL, NULL, 10, 5),
(83, NULL, NULL, 10, 6),
(84, NULL, NULL, 10, 7),
(85, NULL, NULL, 10, 8),
(86, NULL, NULL, 10, 9),
(87, '2021-12-01T09:58:41', NULL, 11, 1),
(88, '2021-12-05T15:45:46', NULL, 11, 9),
(89, NULL, NULL, 2, 1),
(90, NULL, NULL, 2, 2),
(91, NULL, NULL, 2, 3),
(92, '2021-12-03T09:53:42', NULL, 4, 4),
(93, '2021-12-03T12:35:43', NULL, 4, 5),
(94, '2021-12-03T15:54:40', NULL, 4, 6),
(95, '2021-12-01T09:55:17', NULL, 4, 1),
(96, '2021-12-01T12:55:35', NULL, 4, 2),
(97, '2021-12-01T15:56:09', NULL, 4, 3),
(98, '2021-12-05T10:39:04', NULL, 4, 7),
(99, '2021-12-05T13:00:01', NULL, 4, 8),
(100, '2021-12-05T15:52:41', NULL, 4, 9),
(101, NULL, NULL, 3, 7),
(102, '2021-12-05T13:06:49', NULL, 3, 8),
(103, NULL, NULL, 3, 9),
(104, NULL, NULL, 3, 4),
(105, NULL, NULL, 3, 5),
(106, NULL, NULL, 3, 6),
(107, NULL, NULL, NULL, NULL),
(155, NULL, NULL, 15, NULL),
(158, NULL, NULL, 16, NULL),
(159, NULL, NULL, 15, 1),
(160, NULL, NULL, 15, 2),
(161, NULL, NULL, 15, 3),
(162, NULL, NULL, 15, 1),
(163, NULL, NULL, 15, 2),
(164, NULL, NULL, 15, 3),
(165, NULL, NULL, 15, 1),
(166, NULL, NULL, 15, 2),
(167, NULL, NULL, 15, 3),
(168, NULL, NULL, 15, 1),
(169, NULL, NULL, 15, 2),
(170, NULL, NULL, 15, 3),
(171, NULL, NULL, 15, 1),
(172, NULL, NULL, 15, 2),
(173, NULL, NULL, 15, 3),
(174, NULL, NULL, 15, 1),
(175, NULL, NULL, 15, 2),
(176, NULL, NULL, 15, 3),
(177, NULL, NULL, 15, 1),
(178, NULL, NULL, 15, 2),
(179, NULL, NULL, 15, 3),
(180, NULL, NULL, 15, 1),
(181, NULL, NULL, 15, 2),
(182, NULL, NULL, 15, 3),
(183, NULL, NULL, 15, 1),
(184, NULL, NULL, 15, 2),
(185, NULL, NULL, 15, 3),
(186, NULL, NULL, 15, 1),
(187, NULL, NULL, 15, 2),
(188, NULL, NULL, 15, 3),
(189, NULL, NULL, 15, 1),
(190, NULL, NULL, 15, 2),
(191, NULL, NULL, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session_type` date NOT NULL,
  `session_desc` varchar(41) NOT NULL,
  `start_time` varchar(19) NOT NULL,
  `finish_time` varchar(19) DEFAULT NULL,
  `session_speaker_photo` varchar(30) DEFAULT NULL,
  `session_speaker_name` varchar(41) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session_type`, `session_desc`, `start_time`, `finish_time`, `session_speaker_photo`, `session_speaker_name`) VALUES
(1, '0000-00-00', 'Seminar System Architecture', '2021-12-01T10:00:49', '2021-12-01T12:00:49', NULL, 'Erray Utama Alld, Ph.D.'),
(2, '0000-00-00', 'Seminar System Integration', '2021-12-01T13:00:41', '2021-12-01T15:00:01', NULL, 'Ana Marlinoh Askari, S.E., M.Ak'),
(3, '0000-00-00', 'Seminar System Architecutre & Integration', '2021-12-01T16:00:46', '2021-12-01T18:00:05', NULL, 'Anta Wahyo Budamanas, S.T., Ph.D'),
(4, '0000-00-00', 'Seminar Native Programming Language 1', '2021-12-03T10:00:24', '2021-12-03T12:00:38', NULL, 'Dr. Khaerodin, M.Pd'),
(5, '0000-00-00', 'Seminar Native Programming Languange 2', '2021-12-03T00:00:00', NULL, NULL, 'Surya Adi Kencana S.kom, M.si'),
(6, '0000-00-00', 'Seminar Native Programming Languange 3', '2021-12-03T16:00:00', '2021-12-03T18:00:05', NULL, 'drg. Sultan SpKG(K)'),
(7, '0000-00-00', 'Seminar Database Development 1', '2021-12-05T10:00:47', NULL, NULL, 'Prof. Dr.  Retnowati Wibisono S.pd, M.Psi'),
(8, '0000-00-00', 'Seminar Database Development 2', '2021-12-05T13:00:33', '2021-12-05T15:00:51', NULL, 'Ada Zakaroa Afifef, Prof., Dr. SE., MBA'),
(9, '0000-00-00', 'Seminar Database Development 3', '2021-12-05T16:00:44', '2021-12-05T18:00:00', NULL, 'Prof. Dr. Fathar Rikohmin, M.Hum.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_x_merch_eligibility`
--
ALTER TABLE `customer_x_merch_eligibility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merch`
--
ALTER TABLE `merch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id_registration`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
