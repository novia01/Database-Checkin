-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2022 at 01:10 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.3.33-1+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumintu-merch`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `registration_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `date_created`, `email`, `name`, `phone`, `password`, `status`, `code`) VALUES
(1, '2021-10-27 06:34:10', 'paksi@gmail.com', 'paksi', '107324012038', NULL, 1, 'vnriedjkfadbfnvklfhdfop30e'),
(2, '2021-10-27 08:45:29', 'rudeus@gmail.com', 'Arafat Maku', '081234567890', NULL, 1, '5A0D94E9E6BF00DF681B75E6FE595203CCB92A296CAAEA599AA3AB6D3511A89737FB5F31E082515BFCB15361184844B034B220EF305D725B3777560707B27510'),
(3, '2021-10-27 08:48:36', 'oliver.syauqiez@yahoo.com', 'Anggun Ayu Lestari', '082356789012', NULL, 1, '1B0F74CA6ECAE286AEF066738E70BC4B4043E2C4B38AB2B61FD8C3BA615250BE690499BD205F0B66C97E1FB10CA0DF5D0DB6738A30E6CA0F273206E8F5120B39'),
(4, '2021-10-27 08:49:31', 'ari.fida@yahoo.com', 'Kirigaya Kazuto', '085217435290', NULL, 1, NULL),
(5, '2021-10-27 08:50:31', 'sul@gmail.com', 'Dimas', '08412937189', NULL, 1, '2hnv8oiedrysthnofg83btgn0oiwthqef'),
(6, '2021-10-27 08:51:38', 'fikafebrika02@gmail.com', 'Fika Febrika', '087894614101', NULL, 1, '24C410527A5AEA6B7A0D792C0C0DA06C6424C98B172B99701E7E9DC99E048818D7303F1E4F9931C9BA2F3B1D950FA0E5B9FA9507ED68C273BD9B0CAC77D03F9B'),
(7, '2021-10-27 08:52:37', 'andina@gmail.com', 'Andina Marsanova', '087854320987', NULL, 1, NULL),
(8, '2021-10-27 08:53:14', 'nurwinda@gmail.com', 'nurwinda dwiva', '085243789865', NULL, 1, NULL),
(9, '2021-10-27 08:54:10', 'minatwice@gmail.com', 'Mina Rofida', '089543127683', NULL, 1, NULL),
(10, '2021-10-27 08:55:08', 'dimas@gmail.com', 'Sultan Dimas', '085209871234', NULL, 1, NULL),
(11, '2021-10-27 08:55:50', 'asasa@gmail.com', 'Asa Darussalam', '087754327865', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_x_merch`
--

CREATE TABLE `customer_x_merch` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL
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
-- Table structure for table `customer_x_merch_eligible`
--

CREATE TABLE `customer_x_merch_eligible` (
  `id` int(10) UNSIGNED NOT NULL,
  `given_on` datetime DEFAULT NULL,
  `given_by` varchar(255) DEFAULT NULL,
  `customer_x_merch_id` int(10) UNSIGNED DEFAULT NULL,
  `merch_eligible_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_x_merch_eligible`
--

INSERT INTO `customer_x_merch_eligible` (`id`, `given_on`, `given_by`, `customer_x_merch_id`, `merch_eligible_id`) VALUES
(1, '2021-12-05 17:00:45', 'Ari', 1, 1),
(2, '2021-12-05 17:00:44', 'Ari', 1, 2),
(3, '2021-12-05 17:00:07', 'Ari', 1, 3),
(4, '2021-12-05 17:00:25', 'Ari', 1, 4),
(5, '2021-12-05 17:00:44', 'Ari', 1, 5),
(6, '2021-12-03 17:00:12', 'Ari', 2, 6),
(7, '2021-12-03 17:00:47', 'Ari', 2, 7),
(8, '2021-12-03 17:00:00', 'Ari', 2, 8),
(9, '2021-12-03 17:00:13', 'Ari', 2, 9),
(10, '2021-12-03 17:00:52', 'Ari', 2, 10),
(11, '2021-12-05 17:00:26', 'Ari', 3, 11),
(12, '2021-12-05 17:00:33', 'Ari', 3, 12),
(13, '2021-12-05 17:00:50', 'Ari', 3, 13),
(14, '2021-12-05 17:00:16', 'Ari', 3, 14),
(15, '2021-12-05 17:00:32', 'Ari', 3, 15),
(16, '2021-12-01 17:00:55', 'Ari', 4, 21),
(17, '2021-12-01 17:00:14', 'Ari', 4, 22),
(18, '2021-12-01 17:00:34', 'Ari', 4, 23),
(19, '2021-12-01 17:00:02', 'Ari', 4, 24),
(20, '2021-12-01 17:00:42', 'Ari', 4, 25),
(21, '2021-12-01 17:00:01', 'Ari', 4, 26),
(22, '2021-12-01 17:00:09', 'Ari', 5, 27),
(23, '2021-12-01 17:00:25', 'Ari', 5, 28),
(24, '2021-12-01 17:00:45', 'Ari', 5, 29),
(25, '2021-12-01 17:00:02', 'Ari', 5, 30),
(26, '2021-12-01 17:00:16', 'Ari', 5, 31),
(27, '2021-12-01 17:00:29', 'Ari', 5, 32),
(28, '2021-12-01 19:00:12', 'Ari', 6, 33),
(29, '2021-12-01 19:00:42', 'Ari', 6, 34),
(30, '2021-12-01 19:00:15', 'Ari', 6, 35),
(31, '2021-12-01 19:00:34', 'Ari', 6, 36),
(32, '2021-12-01 17:00:20', 'Ari', 8, 16),
(33, '2021-12-01 17:00:31', 'Ari', 8, 17),
(34, '2021-12-01 17:00:42', 'Ari', 8, 18),
(35, '2021-12-01 17:00:19', 'Ari', 8, 19),
(36, '2021-12-01 17:00:32', 'Ari', 8, 20);

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-26 18:51:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(2, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:25:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(3, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:26:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'customer', NULL),
(4, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:26:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '1', NULL),
(5, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:26:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '2', NULL),
(6, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:27:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '3', NULL),
(7, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:27:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '4', NULL),
(8, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:28:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '5', NULL),
(9, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:28:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '6', NULL),
(10, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:28:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '7', NULL),
(11, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:33:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '8', NULL),
(12, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:34:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '1', NULL),
(13, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:36:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '9', NULL),
(14, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:42:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '10', NULL),
(15, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:42:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'merch', NULL),
(16, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:42:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '11', NULL),
(17, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:43:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '12', NULL),
(18, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:44:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '13', NULL),
(19, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:45:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'customer_x_merch', NULL),
(20, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:45:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(21, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:45:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '15', NULL),
(22, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:46:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '16', NULL),
(23, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:46:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '15', NULL),
(24, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:47:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'merch_eligibility', NULL),
(25, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:47:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '17', NULL),
(26, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:47:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '18', NULL),
(27, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:48:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '19', NULL),
(28, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:48:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '20', NULL),
(29, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:49:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'customer_x_merch_eligible', NULL),
(30, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:49:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '21', NULL),
(31, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:49:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '22', NULL),
(32, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:50:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '23', NULL),
(33, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:51:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '24', NULL),
(34, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:51:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '25', NULL),
(35, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:52:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'registration', NULL),
(36, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:52:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '26', NULL),
(37, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:53:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '27', NULL),
(38, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:53:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '27', NULL),
(39, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:53:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '28', NULL),
(40, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:54:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '29', NULL),
(41, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:55:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '30', NULL),
(42, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:56:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'certificate', NULL),
(43, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:56:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '31', NULL),
(44, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:56:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '32', NULL),
(45, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:56:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_collections', 'session', NULL),
(46, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:56:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '33', NULL),
(47, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:58:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '34', NULL),
(48, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 06:59:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '35', NULL),
(49, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:01:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '36', NULL),
(50, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:01:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '37', NULL),
(51, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:03:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '38', NULL),
(52, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:03:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '39', NULL),
(53, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:06:19', '::ffff:192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(54, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:09:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '40', NULL),
(55, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:09:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '41', NULL),
(56, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:09:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '1', NULL),
(57, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:10:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '2', NULL),
(58, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:10:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '3', NULL),
(59, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:10:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '4', NULL),
(60, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:10:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '5', NULL),
(61, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:11:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '6', NULL),
(62, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:11:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '7', NULL),
(63, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:12:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '8', NULL),
(64, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:12:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '9', NULL),
(65, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:12:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '10', NULL),
(66, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:12:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '11', NULL),
(67, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:13:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch', '12', NULL),
(68, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:18:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '42', NULL),
(69, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:26:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '1', NULL),
(70, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:26:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '2', NULL),
(71, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:26:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '3', NULL),
(72, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:26:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '4', NULL),
(73, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:26:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '5', NULL),
(74, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '6', NULL),
(75, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '7', NULL),
(76, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '8', NULL),
(77, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '9', NULL),
(78, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '10', NULL),
(79, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '11', NULL),
(80, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '12', NULL),
(81, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '13', NULL),
(82, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:27:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '14', NULL),
(83, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '15', NULL),
(84, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '16', NULL),
(85, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '17', NULL),
(86, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '18', NULL),
(87, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '19', NULL),
(88, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:28:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '20', NULL),
(89, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '21', NULL),
(90, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '22', NULL),
(91, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '23', NULL),
(92, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '24', NULL),
(93, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '25', NULL),
(94, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:29:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '26', NULL),
(95, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '27', NULL),
(96, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '28', NULL),
(97, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '29', NULL),
(98, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '30', NULL),
(99, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '31', NULL),
(100, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:30:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '32', NULL),
(101, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:31:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '33', NULL),
(102, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:31:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '34', NULL),
(103, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:31:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '35', NULL),
(104, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:31:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '36', NULL),
(105, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:34:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '1', NULL),
(106, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:35:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '1', NULL),
(107, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:37:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '2', NULL),
(108, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:38:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '3', NULL),
(109, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:40:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '4', NULL),
(110, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:41:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '5', NULL),
(111, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:42:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '4', NULL),
(112, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:43:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '6', NULL),
(113, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:44:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '7', NULL),
(114, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:45:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '8', NULL),
(115, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 07:46:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '9', NULL),
(116, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:08:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '1', NULL),
(117, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:10:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '2', NULL),
(118, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:10:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '3', NULL),
(119, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:14:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '4', NULL),
(120, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:14:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '5', NULL),
(121, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:14:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '6', NULL),
(122, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:15:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '3', NULL),
(123, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:17:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '7', NULL),
(124, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:18:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '7', NULL),
(125, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:19:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '8', NULL),
(126, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:45:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '2', NULL),
(127, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:46:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '1', NULL),
(128, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:47:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '2', NULL),
(129, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:47:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '1', NULL),
(130, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:48:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '3', NULL),
(131, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:49:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '4', NULL),
(132, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:50:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '5', NULL),
(133, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:51:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '6', NULL),
(134, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:52:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '7', NULL),
(135, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:53:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '8', NULL),
(136, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:54:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '9', NULL),
(137, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:54:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '5', NULL),
(138, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:55:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '10', NULL),
(139, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 08:55:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer', '11', NULL),
(140, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:12:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(141, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:27:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(142, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:38:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '1', NULL),
(143, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:39:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '2', NULL),
(144, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:39:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '3', NULL),
(145, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:39:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '4', NULL),
(146, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:39:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '5', NULL),
(147, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:39:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(148, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:43:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '4', NULL),
(149, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:43:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '5', NULL),
(150, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:45:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(151, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:46:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '7', NULL),
(152, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:46:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '7', NULL),
(153, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:46:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '8', NULL),
(154, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:46:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '9', NULL),
(155, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:46:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '10', NULL),
(156, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:49:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '11', NULL),
(157, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:49:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '12', NULL),
(158, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:49:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '13', NULL),
(159, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:49:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '14', NULL),
(160, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:50:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '15', NULL),
(161, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(162, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '17', NULL),
(163, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '18', NULL),
(164, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '19', NULL),
(165, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '20', NULL),
(166, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:52:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '21', NULL),
(167, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:53:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '22', NULL),
(168, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:53:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '23', NULL),
(169, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:53:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '24', NULL),
(170, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:53:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '25', NULL),
(171, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:53:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '26', NULL),
(172, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:54:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '27', NULL),
(173, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:54:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '25', NULL),
(174, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:55:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '28', NULL),
(175, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:55:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '29', NULL),
(176, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:55:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '30', NULL),
(177, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:56:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '31', NULL),
(178, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:57:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '32', NULL),
(179, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:57:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '33', NULL),
(180, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '34', NULL),
(181, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:57:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '35', NULL),
(182, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 15:57:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '36', NULL),
(183, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:19:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '1', NULL),
(184, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:29:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(185, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:36:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '2', NULL),
(186, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:36:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '2', NULL),
(187, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:36:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '3', NULL),
(188, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:37:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '4', NULL),
(189, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:37:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '5', NULL),
(190, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:37:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '6', NULL),
(191, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:38:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'session', '7', NULL),
(192, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:38:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '7', NULL),
(193, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '8', NULL),
(194, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '9', NULL),
(195, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '10', NULL),
(196, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '11', NULL),
(197, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '12', NULL),
(198, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:39:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '13', NULL),
(199, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:40:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '14', NULL),
(200, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:40:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '15', NULL),
(201, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:40:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '16', NULL),
(202, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:40:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '17', NULL),
(203, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:40:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '18', NULL),
(204, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '19', NULL),
(205, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '20', NULL),
(206, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '21', NULL),
(207, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '22', NULL),
(208, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '23', NULL),
(209, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:41:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '24', NULL),
(210, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:42:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '25', NULL),
(211, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:42:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '26', NULL),
(212, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:42:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '27', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(213, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:43:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '28', NULL),
(214, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:43:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '29', NULL),
(215, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:44:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '30', NULL),
(216, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:44:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '31', NULL),
(217, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:44:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '32', NULL),
(218, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:44:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '33', NULL),
(219, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:44:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '34', NULL),
(220, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:45:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '35', NULL),
(221, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:45:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '36', NULL),
(222, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:45:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '37', NULL),
(223, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:45:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '38', NULL),
(224, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:46:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '1', NULL),
(225, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:46:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '2', NULL),
(226, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '3', NULL),
(227, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '4', NULL),
(228, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '5', NULL),
(229, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '6', NULL),
(230, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '7', NULL),
(231, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '8', NULL),
(232, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '9', NULL),
(233, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '10', NULL),
(234, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '11', NULL),
(235, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '12', NULL),
(236, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '13', NULL),
(237, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:47:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '14', NULL),
(238, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '15', NULL),
(239, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '16', NULL),
(240, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '17', NULL),
(241, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '18', NULL),
(242, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '19', NULL),
(243, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '20', NULL),
(244, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '21', NULL),
(245, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '22', NULL),
(246, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '23', NULL),
(247, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:48:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '24', NULL),
(248, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '25', NULL),
(249, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '26', NULL),
(250, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '27', NULL),
(251, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '28', NULL),
(252, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '29', NULL),
(253, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '30', NULL),
(254, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '31', NULL),
(255, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '32', NULL),
(256, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '33', NULL),
(257, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '34', NULL),
(258, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:49:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '35', NULL),
(259, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:50:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '36', NULL),
(260, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:50:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '37', NULL),
(261, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:50:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '38', NULL),
(262, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:52:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '10', NULL),
(263, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:52:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '19', NULL),
(264, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:52:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '28', NULL),
(265, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:53:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '30', NULL),
(266, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:53:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '1', NULL),
(267, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:54:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '2', NULL),
(268, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:55:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '11', NULL),
(269, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:55:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '20', NULL),
(270, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:55:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '31', NULL),
(271, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:56:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '3', NULL),
(272, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:56:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '3', NULL),
(273, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:57:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '21', NULL),
(274, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:57:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '12', NULL),
(275, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:57:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '32', NULL),
(276, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:58:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '4', NULL),
(277, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:58:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '13', NULL),
(278, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:59:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '22', NULL),
(279, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 16:59:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '33', NULL),
(280, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:00:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '23', NULL),
(281, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:00:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '5', NULL),
(282, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:01:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '14', NULL),
(283, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:02:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '34', NULL),
(284, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:02:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '6', NULL),
(285, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:03:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '15', NULL),
(286, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:03:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '24', NULL),
(287, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:04:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '35', NULL),
(288, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:05:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '36', NULL),
(289, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:05:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '25', NULL),
(290, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:06:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '7', NULL),
(291, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:07:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '16', NULL),
(292, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:08:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '8', NULL),
(293, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:08:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '17', NULL),
(294, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:09:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '26', NULL),
(295, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:09:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '37', NULL),
(296, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:10:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '9', NULL),
(297, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:10:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '18', NULL),
(298, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-27 17:10:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '38', NULL),
(299, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 03:17:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(300, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:24:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '43', NULL),
(301, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:25:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '1', NULL),
(302, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:25:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '2', NULL),
(303, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:25:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '3', NULL),
(304, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:26:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '4', NULL),
(305, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:27:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(306, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:28:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '5', NULL),
(307, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:28:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '6', NULL),
(308, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:29:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '8', NULL),
(309, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:29:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(310, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:29:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '43', NULL),
(311, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:29:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '15', NULL),
(312, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:32:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '44', NULL),
(313, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:32:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '1', NULL),
(314, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:33:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '2', NULL),
(315, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '1', NULL),
(316, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '3', NULL),
(317, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '4', NULL),
(318, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '5', NULL),
(319, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '6', NULL),
(320, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '7', NULL),
(321, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:34:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '8', NULL),
(322, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '9', NULL),
(323, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '10', NULL),
(324, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '11', NULL),
(325, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '12', NULL),
(326, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '13', NULL),
(327, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '14', NULL),
(328, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:35:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '15', NULL),
(329, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '16', NULL),
(330, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '17', NULL),
(331, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '18', NULL),
(332, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '19', NULL),
(333, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '20', NULL),
(334, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:36:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '21', NULL),
(335, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '22', NULL),
(336, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '23', NULL),
(337, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '24', NULL),
(338, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '25', NULL),
(339, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '26', NULL),
(340, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:37:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '27', NULL),
(341, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '28', NULL),
(342, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '29', NULL),
(343, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '30', NULL),
(344, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '31', NULL),
(345, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '32', NULL),
(346, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '33', NULL),
(347, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:38:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '34', NULL),
(348, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:39:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '35', NULL),
(349, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:39:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'merch_eligibility', '36', NULL),
(350, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:40:41', '::ffff:192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(351, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:47', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '45', NULL),
(352, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '26', NULL),
(353, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '28', NULL),
(354, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '27', NULL),
(355, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '29', NULL),
(356, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '30', NULL),
(357, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '45', NULL),
(358, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '26', NULL),
(359, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '45', NULL),
(360, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '28', NULL),
(361, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '27', NULL),
(362, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '29', NULL),
(363, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:44:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '30', NULL),
(364, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:40', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '46', NULL),
(365, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '26', NULL),
(366, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '45', NULL),
(367, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '28', NULL),
(368, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '46', NULL),
(369, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '27', NULL),
(370, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '29', NULL),
(371, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:45:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '30', NULL),
(372, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:46:16', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '1', NULL),
(373, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:46:30', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '2', NULL),
(374, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:46:40', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '3', NULL),
(375, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:46:49', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '4', NULL),
(376, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:47:05', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '5', NULL),
(377, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:47:13', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '6', NULL),
(378, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:47:24', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '7', NULL),
(379, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:47:37', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '8', NULL),
(380, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:47:49', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '9', NULL),
(381, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:48:26', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '10', NULL),
(382, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:48:46', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '11', NULL),
(383, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:49:09', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '12', NULL),
(384, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:49:19', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '13', NULL),
(385, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:49:32', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '14', NULL),
(386, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:49:47', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '15', NULL),
(387, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:50:00', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '16', NULL),
(388, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:50:11', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '17', NULL),
(389, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:50:23', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '18', NULL),
(390, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:50:38', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '19', NULL),
(391, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:50:52', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '20', NULL),
(392, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:51:05', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '21', NULL),
(393, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:51:18', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '22', NULL),
(394, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:51:29', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '23', NULL),
(395, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:51:39', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '24', NULL),
(396, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:51:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '25', NULL),
(397, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:52:44', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '26', NULL),
(398, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:53:00', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '27', NULL),
(399, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:53:16', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '38', NULL),
(400, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:53:30', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '37', NULL),
(401, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:53:43', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '36', NULL),
(402, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:53:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '35', NULL),
(403, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:54:05', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '34', NULL),
(404, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:54:13', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'registration', '33', NULL),
(405, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:55:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(406, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:55:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '32', NULL),
(407, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:55:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '31', NULL),
(408, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:56:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '30', NULL),
(409, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:56:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '29', NULL),
(410, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '28', NULL),
(411, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:28', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '21', NULL),
(412, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:28', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '23', NULL),
(413, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:28', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '22', NULL),
(414, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:28', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '24', NULL),
(415, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:28', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '25', NULL),
(416, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:47', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '47', NULL),
(417, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '21', NULL),
(418, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '47', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(419, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '23', NULL),
(420, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '22', NULL),
(421, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '24', NULL),
(422, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:57:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '25', NULL),
(423, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:14', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '48', NULL),
(424, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '21', NULL),
(425, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '47', NULL),
(426, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '23', NULL),
(427, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '48', NULL),
(428, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '22', NULL),
(429, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '24', NULL),
(430, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:20', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '25', NULL),
(431, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:58:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '29', NULL),
(432, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:59:27', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '1', NULL),
(433, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 07:59:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'registration', '27', NULL),
(434, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:00:07', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '36', NULL),
(435, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:07', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '35', NULL),
(436, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:19', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '34', NULL),
(437, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '2', NULL),
(438, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:30', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '33', NULL),
(439, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '3', NULL),
(440, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:40', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '32', NULL),
(441, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '4', NULL),
(442, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:01:58', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '31', NULL),
(443, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '5', NULL),
(444, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:10', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '30', NULL),
(445, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(446, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:22', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '29', NULL),
(447, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '7', NULL),
(448, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:32', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '28', NULL),
(449, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '8', NULL),
(450, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:44', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '27', NULL),
(451, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '9', NULL),
(452, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:02:58', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '26', NULL),
(453, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '10', NULL),
(454, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:22', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '25', NULL),
(455, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '11', NULL),
(456, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '12', NULL),
(457, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:45', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '24', NULL),
(458, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:58', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '23', NULL),
(459, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:03:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '13', NULL),
(460, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:08', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '22', NULL),
(461, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:18', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '21', NULL),
(462, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '14', NULL),
(463, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:30', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '20', NULL),
(464, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '15', NULL),
(465, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:41', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '19', NULL),
(466, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:53', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'customer_x_merch_eligible', '18', NULL),
(467, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:04:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(468, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:05:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '17', NULL),
(469, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:09:18', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '49', NULL),
(470, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:09:23', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '31', NULL),
(471, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:09:23', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '49', NULL),
(472, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:09:23', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'directus_fields', '32', NULL),
(473, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:31', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '38', NULL),
(474, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '1', NULL),
(475, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:40', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '37', NULL),
(476, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '2', NULL),
(477, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:47', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '36', NULL),
(478, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:55', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '35', NULL),
(479, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:10:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '3', NULL),
(480, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:01', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '34', NULL),
(481, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:08', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '33', NULL),
(482, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '4', NULL),
(483, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:15', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '32', NULL),
(484, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '5', NULL),
(485, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:21', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '31', NULL),
(486, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:27', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '30', NULL),
(487, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '6', NULL),
(488, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:36', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '29', NULL),
(489, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:45', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '28', NULL),
(490, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '7', NULL),
(491, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:54', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '27', NULL),
(492, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:11:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '39', NULL),
(493, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:03', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '26', NULL),
(494, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '8', NULL),
(495, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:32', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '25', NULL),
(496, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '9', NULL),
(497, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:42', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '24', NULL),
(498, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:50', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '23', NULL),
(499, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:57', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '22', NULL),
(500, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:12:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '10', NULL),
(501, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:08', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '21', NULL),
(502, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '11', NULL),
(503, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:16', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '20', NULL),
(504, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:26', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '19', NULL),
(505, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '12', NULL),
(506, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '13', NULL),
(507, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:47', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '39', NULL),
(508, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '14', NULL),
(509, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:13:55', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '18', NULL),
(510, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:14:03', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '17', NULL),
(511, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:14:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'certificate', '15', NULL),
(512, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:14:11', '192.168.18.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.30', 'certificate', '16', NULL),
(513, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '1', NULL),
(514, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '2', NULL),
(515, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '3', NULL),
(516, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '4', NULL),
(517, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '5', NULL),
(518, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '6', NULL),
(519, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '7', NULL),
(520, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:18:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '8', NULL),
(521, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:43:54', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '1', NULL),
(522, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:44:35', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '9', NULL),
(523, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:46:11', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '1', NULL),
(524, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:47:26', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '10', NULL),
(525, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:47:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '10', NULL),
(526, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:47:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '9', NULL),
(527, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:48:12', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '1', NULL),
(528, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:48:33', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch', '11', NULL),
(529, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:49:17', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(530, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:50:05', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(531, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:50:39', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(532, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:51:11', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(533, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:51:17', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_fields', '14', NULL),
(534, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_roles', '29513bb4-a4e1-45b6-b41d-6beb3ff53589', NULL),
(535, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '9', NULL),
(536, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '10', NULL),
(537, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '11', NULL),
(538, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '12', NULL),
(539, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '13', NULL),
(540, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '14', NULL),
(541, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '15', NULL),
(542, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '16', NULL),
(543, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '17', NULL),
(544, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '18', NULL),
(545, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '19', NULL),
(546, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '20', NULL),
(547, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '21', NULL),
(548, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:40', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '22', NULL),
(549, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '23', NULL),
(550, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '24', NULL),
(551, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '25', NULL),
(552, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '26', NULL),
(553, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:41', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '27', NULL),
(554, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:43', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '28', NULL),
(555, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:44', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '29', NULL),
(556, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:45', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '30', NULL),
(557, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:46', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '31', NULL),
(558, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:47', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '32', NULL),
(559, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:50', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '33', NULL),
(560, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:51', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '34', NULL),
(561, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:52', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '35', NULL),
(562, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:53', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '36', NULL),
(563, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:56', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '37', NULL),
(564, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '38', NULL),
(565, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:58:59', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '39', NULL),
(566, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:59:01', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '40', NULL),
(567, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:59:02', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '41', NULL),
(568, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:59:03', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '42', NULL),
(569, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 08:59:04', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '43', NULL),
(570, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:00:21', '::ffff:192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(571, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:00:57', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL),
(572, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:00:57', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_roles', '29513bb4-a4e1-45b6-b41d-6beb3ff53589', NULL),
(573, 'login', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', '2021-10-28 09:01:07', '::ffff:192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL),
(574, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:50', '::ffff:192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(575, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '9', NULL),
(576, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '10', NULL),
(577, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '11', NULL),
(578, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '12', NULL),
(579, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '13', NULL),
(580, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '14', NULL),
(581, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '15', NULL),
(582, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '16', NULL),
(583, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '17', NULL),
(584, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '18', NULL),
(585, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '19', NULL),
(586, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '20', NULL),
(587, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '21', NULL),
(588, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '22', NULL),
(589, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '23', NULL),
(590, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '24', NULL),
(591, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '25', NULL),
(592, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '26', NULL),
(593, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '27', NULL),
(594, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '28', NULL),
(595, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '29', NULL),
(596, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '30', NULL),
(597, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '31', NULL),
(598, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '32', NULL),
(599, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '33', NULL),
(600, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '34', NULL),
(601, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '35', NULL),
(602, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '36', NULL),
(603, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '37', NULL),
(604, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '38', NULL),
(605, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '39', NULL),
(606, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '40', NULL),
(607, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '41', NULL),
(608, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '42', NULL),
(609, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '43', NULL),
(610, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL),
(611, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:09:58', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_roles', '29513bb4-a4e1-45b6-b41d-6beb3ff53589', NULL),
(612, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:10:36', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '1', NULL),
(613, 'delete', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-28 09:10:47', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '1', NULL),
(614, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 03:14:10', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_settings', '1', NULL),
(615, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 03:42:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(616, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 04:00:14', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '2', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(617, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 04:00:18', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_webhooks', '2', NULL),
(618, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 04:03:30', '192.168.18.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_permissions', '44', NULL),
(619, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 04:11:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(620, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-10-29 06:35:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(621, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 02:58:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(622, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:50:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '1', NULL),
(623, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:50:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '2', NULL),
(624, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '3', NULL),
(625, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '4', NULL),
(626, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '5', NULL),
(627, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(628, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '7', NULL),
(629, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '8', NULL),
(630, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '9', NULL),
(631, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '10', NULL),
(632, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:51:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '11', NULL),
(633, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '12', NULL),
(634, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '13', NULL),
(635, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '14', NULL),
(636, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '15', NULL),
(637, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(638, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '17', NULL),
(639, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '18', NULL),
(640, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:52:51', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '19', NULL),
(641, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 04:53:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '20', NULL),
(642, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:08:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '21', NULL),
(643, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:08:59', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '22', NULL),
(644, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:09:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '23', NULL),
(645, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:09:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '24', NULL),
(646, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:09:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '25', NULL),
(647, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:09:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '26', NULL),
(648, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '27', NULL),
(649, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '28', NULL),
(650, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '29', NULL),
(651, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '30', NULL),
(652, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '31', NULL),
(653, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:10:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '32', NULL),
(654, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:11:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '33', NULL),
(655, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:11:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '34', NULL),
(656, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:11:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '35', NULL),
(657, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:11:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '36', NULL),
(658, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:55:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '1', NULL),
(659, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:56:17', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(660, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:56:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '11', NULL),
(661, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 07:57:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(662, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-01 09:52:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(663, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:06:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '1', NULL),
(664, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:06:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '2', NULL),
(665, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:07:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '3', NULL),
(666, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:07:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '4', NULL),
(667, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:08:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '5', NULL),
(668, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:13:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '6', NULL),
(669, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:13:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '7', NULL),
(670, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:14:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '8', NULL),
(671, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:14:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '9', NULL),
(672, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:14:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(673, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:16:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '10', NULL),
(674, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:19:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '11', NULL),
(675, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:19:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '12', NULL),
(676, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:20:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '13', NULL),
(677, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:20:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '14', NULL),
(678, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:20:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '15', NULL),
(679, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:23:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '17', NULL),
(680, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:23:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '18', NULL),
(681, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:24:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '19', NULL),
(682, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:24:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(683, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:24:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '20', NULL),
(684, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:25:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '21', NULL),
(685, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:27:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '16', NULL),
(686, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:27:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '17', NULL),
(687, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:27:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '18', NULL),
(688, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:28:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '19', NULL),
(689, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:28:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '20', NULL),
(690, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:28:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '21', NULL),
(691, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:30:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '22', NULL),
(692, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:30:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '23', NULL),
(693, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:30:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '24', NULL),
(694, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:31:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '25', NULL),
(695, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:31:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '26', NULL),
(696, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:31:35', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '27', NULL),
(697, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:32:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '28', NULL),
(698, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:32:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '29', NULL),
(699, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:33:22', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '30', NULL),
(700, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:33:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '31', NULL),
(701, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:34:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '32', NULL),
(702, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:34:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '33', NULL),
(703, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:34:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '34', NULL),
(704, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:35:26', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '35', NULL),
(705, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 03:35:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'customer_x_merch_eligible', '36', NULL),
(706, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 04:45:30', '::ffff:192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(707, 'login', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 05:01:59', '::ffff:192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(708, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 05:03:31', '192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL),
(709, 'create', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 05:03:31', '192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL),
(710, 'update', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '2021-11-02 05:03:31', '192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_roles', 'fbe8d78b-540d-4c47-8a52-e58a1782f5ab', NULL),
(711, 'login', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2021-11-02 05:03:42', '::ffff:192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL),
(712, 'login', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2021-11-04 03:21:01', '::ffff:192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL),
(713, 'login', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2021-11-04 06:59:29', '::ffff:192.168.18.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL),
(714, 'login', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2021-11-05 03:38:42', '::ffff:192.168.18.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL),
(715, 'login', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2021-12-29 06:53:09', '::ffff:192.168.18.105', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0', 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `singleton` tinyint(1) NOT NULL DEFAULT 0,
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT 1,
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `accountability` varchar(255) DEFAULT 'all',
  `color` varchar(255) DEFAULT NULL,
  `item_duplication_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_duplication_fields`)),
  `sort` int(11) DEFAULT NULL,
  `group` varchar(64) DEFAULT NULL,
  `collapse` varchar(255) NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`, `accountability`, `color`, `item_duplication_fields`, `sort`, `group`, `collapse`) VALUES
('certificate', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('customer', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('customer_x_merch', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('customer_x_merch_eligible', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('merch', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('merch_eligibility', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('registration', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open'),
('session', NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, NULL, NULL, 'all', NULL, NULL, NULL, NULL, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `directus_dashboards`
--

CREATE TABLE `directus_dashboards` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'dashboard',
  `note` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `display` varchar(64) DEFAULT NULL,
  `display_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`display_options`)),
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `translations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`translations`)),
  `note` text DEFAULT NULL,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `required` tinyint(1) DEFAULT 0,
  `group` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `translations`, `note`, `conditions`, `required`, `group`) VALUES
(1, 'customer', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(2, 'customer', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\":true}', 1, 1, NULL, 'half', NULL, NULL, NULL, 0, NULL),
(3, 'customer', 'email', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(4, 'customer', 'name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(5, 'customer', 'phone', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(6, 'customer', 'password', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(9, 'customer', 'status', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"pending\",\"value\":\"0\"},{\"text\":\"verified\",\"value\":\"1\"},{\"text\":\"expired\",\"value\":\"2\"}]}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(10, 'customer', 'code', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(11, 'merch', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(14, 'customer_x_merch', 'id', NULL, 'input', NULL, NULL, NULL, 0, 0, 1, 'full', NULL, NULL, NULL, 0, NULL),
(15, 'customer_x_merch', 'id_ticket', NULL, 'input', NULL, NULL, NULL, 0, 0, 3, 'full', NULL, NULL, NULL, 0, NULL),
(17, 'merch_eligibility', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(20, 'merch_eligibility', 'quantity', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(21, 'customer_x_merch_eligible', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(24, 'customer_x_merch_eligible', 'given_on', NULL, NULL, NULL, NULL, NULL, 0, 0, 6, 'full', NULL, NULL, NULL, 0, NULL),
(25, 'customer_x_merch_eligible', 'given_by', NULL, 'input', NULL, NULL, NULL, 0, 0, 7, 'full', NULL, NULL, NULL, 0, NULL),
(26, 'registration', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(29, 'registration', 'validated_on', '', NULL, NULL, NULL, NULL, 0, 0, 6, 'full', NULL, NULL, NULL, 0, NULL),
(30, 'registration', 'validated_by', NULL, 'input', NULL, NULL, NULL, 0, 0, 7, 'full', NULL, NULL, NULL, 0, NULL),
(31, 'certificate', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL, 0, NULL),
(33, 'session', 'id', NULL, 'input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(34, 'session', 'session_type', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(35, 'session', 'session_desc', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(36, 'session', 'start_time', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(37, 'session', 'finish_time', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(38, 'session', 'session_speaker_photo', NULL, 'file-image', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(39, 'session', 'session_speaker_name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(40, 'merch', 'merch_name', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(41, 'merch', 'total_stock', NULL, 'input', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(42, 'merch_eligibility', 'id_ticket', NULL, 'select-dropdown', '{\"choices\":[{\"text\":\"Peserta Umum Day 1\",\"value\":\"1\"},{\"text\":\"Peserta Umum day 2\",\"value\":\"2\"},{\"text\":\"Peserta Umum Day 3\",\"value\":\"3\"},{\"text\":\"Peserta Umum All Days\",\"value\":\"4\"},{\"text\":\"Undangan\",\"value\":\"5\"},{\"text\":\"Pembicara\",\"value\":\"6\"},{\"text\":\"Media\",\"value\":\"7\"}]}', NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(43, 'customer_x_merch', 'customer_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(44, 'merch_eligibility', 'merch_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL, 0, NULL),
(45, 'registration', 'customer_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(46, 'registration', 'session_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL),
(47, 'customer_x_merch_eligible', 'customer_x_merch_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL),
(48, 'customer_x_merch_eligible', 'merch_eligible_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 4, 'full', NULL, NULL, NULL, 0, NULL),
(49, 'certificate', 'registration_id', NULL, 'select-dropdown-m2o', NULL, NULL, NULL, 0, 0, 2, 'full', NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `charset` varchar(50) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `width` int(10) UNSIGNED DEFAULT NULL,
  `height` int(10) UNSIGNED DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2021-10-26 18:45:39'),
('20201029A', 'Remove System Relations', '2021-10-26 18:45:39'),
('20201029B', 'Remove System Collections', '2021-10-26 18:45:39'),
('20201029C', 'Remove System Fields', '2021-10-26 18:45:39'),
('20201105A', 'Add Cascade System Relations', '2021-10-26 18:45:41'),
('20201105B', 'Change Webhook URL Type', '2021-10-26 18:45:41'),
('20210225A', 'Add Relations Sort Field', '2021-10-26 18:45:41'),
('20210304A', 'Remove Locked Fields', '2021-10-26 18:45:41'),
('20210312A', 'Webhooks Collections Text', '2021-10-26 18:45:41'),
('20210331A', 'Add Refresh Interval', '2021-10-26 18:45:41'),
('20210415A', 'Make Filesize Nullable', '2021-10-26 18:45:41'),
('20210416A', 'Add Collections Accountability', '2021-10-26 18:45:41'),
('20210422A', 'Remove Files Interface', '2021-10-26 18:45:41'),
('20210506A', 'Rename Interfaces', '2021-10-26 18:45:41'),
('20210510A', 'Restructure Relations', '2021-10-26 18:45:42'),
('20210518A', 'Add Foreign Key Constraints', '2021-10-26 18:45:45'),
('20210519A', 'Add System Fk Triggers', '2021-10-26 18:45:46'),
('20210521A', 'Add Collections Icon Color', '2021-10-26 18:45:46'),
('20210525A', 'Add Insights', '2021-10-26 18:45:46'),
('20210608A', 'Add Deep Clone Config', '2021-10-26 18:45:46'),
('20210626A', 'Change Filesize Bigint', '2021-10-26 18:45:46'),
('20210716A', 'Add Conditions to Fields', '2021-10-26 18:45:46'),
('20210721A', 'Add Default Folder', '2021-10-26 18:45:47'),
('20210802A', 'Replace Groups', '2021-10-26 18:45:47'),
('20210803A', 'Add Required to Fields', '2021-10-26 18:45:47'),
('20210805A', 'Update Groups', '2021-10-26 18:45:47'),
('20210805B', 'Change Image Metadata Structure', '2021-10-26 18:45:47'),
('20210811A', 'Add Geometry Config', '2021-10-26 18:45:47'),
('20210831A', 'Remove Limit Column', '2021-10-26 18:45:47'),
('20210903A', 'Add Auth Provider', '2021-10-26 18:45:47'),
('20210907A', 'Webhooks Collections Not Null', '2021-10-26 18:45:47'),
('20210910A', 'Move Module Setup', '2021-10-26 18:45:47'),
('20210920A', 'Webhooks URL Not Null', '2021-10-26 18:45:47'),
('20210924A', 'Add Collection Organization', '2021-10-26 18:45:47'),
('20210927A', 'Replace Fields Group', '2021-10-26 18:45:47'),
('20210927B', 'Replace M2M Interface', '2021-10-26 18:45:47'),
('20210929A', 'Rename Login Action', '2021-10-26 18:45:47'),
('20211007A', 'Update Presets', '2021-10-26 18:45:47'),
('20211009A', 'Add Auth Data', '2021-10-26 18:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `directus_panels`
--

CREATE TABLE `directus_panels` (
  `id` char(36) NOT NULL,
  `dashboard` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(30) DEFAULT 'insert_chart',
  `color` varchar(10) DEFAULT NULL,
  `show_header` tinyint(1) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `position_x` int(11) NOT NULL,
  `position_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_created` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `validation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`validation`)),
  `presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`presets`)),
  `fields` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`) VALUES
(1, NULL, 'certificate', 'read', '{}', '{}', NULL, '*'),
(2, NULL, 'customer', 'read', '{}', '{}', NULL, '*'),
(3, NULL, 'customer_x_merch', 'read', '{}', '{}', NULL, '*'),
(4, NULL, 'customer_x_merch_eligible', 'read', '{}', '{}', NULL, '*'),
(5, NULL, 'merch', 'read', '{}', '{}', NULL, '*'),
(6, NULL, 'merch_eligibility', 'read', '{}', '{}', NULL, '*'),
(7, NULL, 'registration', 'read', '{}', '{}', NULL, '*'),
(8, NULL, 'session', 'read', '{}', '{}', NULL, '*'),
(44, NULL, 'directus_webhooks', 'read', '{}', '{}', NULL, '*');

-- --------------------------------------------------------

--
-- Table structure for table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_query`)),
  `layout_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`layout_options`)),
  `refresh_interval` int(11) DEFAULT NULL,
  `filter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filter`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `layout`, `layout_query`, `layout_options`, `refresh_interval`, `filter`) VALUES
(1, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'customer', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"email\",\"name\",\"status\"]}}', NULL, NULL, NULL),
(2, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'certificate', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"registration_id\",\"id_registration\"],\"limit\":1000,\"sort\":[\"id\"]}}', NULL, NULL, NULL),
(3, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'merch', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"merch_name\",\"total_stock\"]}}', NULL, NULL, NULL),
(4, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'merch', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(5, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'customer_x_merch', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"customer_id\",\"id_customer\",\"id_ticket\"],\"sort\":[\"id\"]}}', NULL, NULL, NULL),
(6, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'customer_x_merch', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"customer_id\",\"id_customer\",\"id_ticket\"],\"sort\":[\"id\"]}}', NULL, NULL, NULL),
(7, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'session', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"session_type\",\"start_time\",\"session_desc\"]}}', NULL, NULL, NULL),
(8, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'registration', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"id\",\"customer_id\",\"id_customer\",\"session_id\",\"id_session\",\"validated_on\"],\"limit\":1000,\"sort\":[\"-id\"]}}', NULL, NULL, NULL),
(9, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'registration', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(10, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'directus_webhooks', NULL, 'tabular', '{\"tabular\":{\"fields\":[\"status\",\"method\",\"name\",\"collections\",\"actions\"],\"page\":1}}', '{\"tabular\":{\"widths\":{\"status\":32,\"method\":100,\"name\":210,\"collections\":240,\"actions\":210}}}', NULL, NULL),
(11, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'merch_eligibility', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"limit\":250,\"sort\":[\"id\"],\"fields\":[\"id\",\"merch_id\",\"id_merch\",\"id_ticket\",\"quantity\"]}}', NULL, NULL, NULL),
(12, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'directus_users', NULL, 'cards', '{\"cards\":{\"sort\":[\"email\"],\"page\":1}}', '{\"cards\":{\"icon\":\"account_circle\",\"title\":\"{{ first_name }} {{ last_name }}\",\"subtitle\":\"{{ email }}\",\"size\":4}}', NULL, NULL),
(13, NULL, 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL, 'certificate', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(14, NULL, 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL, 'directus_files', NULL, 'cards', '{\"cards\":{\"sort\":[\"-uploaded_on\"],\"page\":1}}', '{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{ title }}\",\"subtitle\":\"{{ type }} • {{ filesize }}\",\"size\":4,\"imageFit\":\"crop\"}}', NULL, NULL),
(15, NULL, 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL, 'directus_users', NULL, 'cards', '{\"cards\":{\"sort\":[\"email\"],\"page\":1}}', '{\"cards\":{\"icon\":\"account_circle\",\"title\":\"{{ first_name }} {{ last_name }}\",\"subtitle\":\"{{ email }}\",\"size\":4}}', NULL, NULL),
(16, NULL, 'd322482d-320f-45a5-a27e-a5eb1fcdb349', NULL, 'customer_x_merch', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL),
(17, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'directus_files', NULL, 'cards', '{\"cards\":{\"sort\":[\"-uploaded_on\"],\"page\":1}}', '{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{ title }}\",\"subtitle\":\"{{ type }} • {{ filesize }}\",\"size\":4,\"imageFit\":\"crop\"}}', NULL, NULL),
(18, NULL, 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', NULL, 'customer_x_merch_eligible', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"merch_eligible_id\",\"customer_x_merch_id\",\"given_by\",\"given_on\"],\"limit\":500}}', '{\"tabular\":{\"widths\":{\"customer_x_merch_id\":260}}}', NULL, NULL),
(19, NULL, '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL, 'certificate', NULL, 'tabular', '{\"tabular\":{\"page\":1,\"fields\":[\"registration_id\",\"id\"]}}', NULL, NULL, NULL),
(20, NULL, '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL, 'directus_users', NULL, 'cards', '{\"cards\":{\"sort\":[\"email\"],\"page\":1}}', '{\"cards\":{\"icon\":\"account_circle\",\"title\":\"{{ first_name }} {{ last_name }}\",\"subtitle\":\"{{ email }}\",\"size\":4}}', NULL, NULL),
(21, NULL, '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL, 'directus_files', NULL, 'cards', '{\"cards\":{\"sort\":[\"-uploaded_on\"],\"page\":1}}', '{\"cards\":{\"icon\":\"insert_drive_file\",\"title\":\"{{ title }}\",\"subtitle\":\"{{ type }} • {{ filesize }}\",\"size\":4,\"imageFit\":\"crop\"}}', NULL, NULL),
(22, NULL, '19a97343-e76a-4101-93fc-42eeb81a9fc6', NULL, 'customer_x_merch', NULL, 'tabular', '{\"tabular\":{\"page\":1}}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text DEFAULT NULL,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL,
  `one_deselect_action` varchar(255) NOT NULL DEFAULT 'nullify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `one_collection`, `one_field`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`, `one_deselect_action`) VALUES
(1, 'session', 'session_speaker_photo', 'directus_files', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(2, 'customer_x_merch', 'customer_id', 'customer', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(3, 'merch_eligibility', 'merch_id', 'merch', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(4, 'registration', 'customer_id', 'customer', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(5, 'registration', 'session_id', 'session', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(6, 'customer_x_merch_eligible', 'customer_x_merch_id', 'customer_x_merch', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(7, 'customer_x_merch_eligible', 'merch_eligible_id', 'merch_eligibility', NULL, NULL, NULL, NULL, NULL, 'nullify'),
(8, 'certificate', 'registration_id', 'registration', NULL, NULL, NULL, NULL, NULL, 'nullify');

-- --------------------------------------------------------

--
-- Table structure for table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` int(10) UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `delta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`delta`)),
  `parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 3, 'directus_collections', 'customer', '{\"singleton\":false,\"collection\":\"customer\"}', '{\"singleton\":false,\"collection\":\"customer\"}', NULL),
(2, 4, 'directus_fields', '1', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer\"}', NULL),
(3, 5, 'directus_fields', '2', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"customer\"}', '{\"special\":\"date-created\",\"interface\":\"datetime\",\"readonly\":true,\"hidden\":true,\"width\":\"half\",\"display\":\"datetime\",\"display_options\":{\"relative\":true},\"field\":\"date_created\",\"collection\":\"customer\"}', NULL),
(4, 6, 'directus_fields', '3', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"email\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"email\"}', NULL),
(5, 7, 'directus_fields', '4', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"name\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"name\"}', NULL),
(6, 8, 'directus_fields', '5', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"phone\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"phone\"}', NULL),
(7, 9, 'directus_fields', '6', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"password\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"password\"}', NULL),
(8, 10, 'directus_fields', '7', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"date\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"date\"}', NULL),
(9, 11, 'directus_fields', '8', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pending\",\"value\":\"0\"},{\"text\":\"Verified\",\"value\":\"1\"},{\"text\":\"Expired\",\"value\":\"2\"}]},\"readonly\":false,\"collection\":\"customer\",\"field\":\"status\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Pending\",\"value\":\"0\"},{\"text\":\"Verified\",\"value\":\"1\"},{\"text\":\"Expired\",\"value\":\"2\"}]},\"readonly\":false,\"collection\":\"customer\",\"field\":\"status\"}', NULL),
(10, 12, 'customer', '1', '{\"status\":\"0\"}', '{\"status\":\"0\"}', NULL),
(11, 13, 'directus_fields', '9', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"pending\",\"value\":\"0\"},{\"text\":\"verified\",\"value\":\"1\"},{\"text\":\"expired\",\"value\":\"2\"}]},\"readonly\":false,\"collection\":\"customer\",\"field\":\"status\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"pending\",\"value\":\"0\"},{\"text\":\"verified\",\"value\":\"1\"},{\"text\":\"expired\",\"value\":\"2\"}]},\"readonly\":false,\"collection\":\"customer\",\"field\":\"status\"}', NULL),
(12, 14, 'directus_fields', '10', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"code\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer\",\"field\":\"code\"}', NULL),
(13, 15, 'directus_collections', 'merch', '{\"singleton\":false,\"collection\":\"merch\"}', '{\"singleton\":false,\"collection\":\"merch\"}', NULL),
(14, 16, 'directus_fields', '11', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"merch\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"merch\"}', NULL),
(15, 17, 'directus_fields', '12', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"merch\",\"field\":\"nama\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"merch\",\"field\":\"nama\"}', NULL),
(16, 18, 'directus_fields', '13', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch\",\"field\":\"jumlah_stock\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch\",\"field\":\"jumlah_stock\"}', NULL),
(17, 19, 'directus_collections', 'customer_x_merch', '{\"singleton\":false,\"collection\":\"customer_x_merch\"}', '{\"singleton\":false,\"collection\":\"customer_x_merch\"}', NULL),
(18, 20, 'directus_fields', '14', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer_x_merch\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer_x_merch\"}', NULL),
(19, 21, 'directus_fields', '15', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\"}', NULL),
(20, 22, 'directus_fields', '16', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch\",\"field\":\"id_customer\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch\",\"field\":\"id_customer\"}', NULL),
(21, 23, 'directus_fields', '15', '{\"id\":15,\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(22, 24, 'directus_collections', 'merch_eligibility', '{\"singleton\":false,\"collection\":\"merch_eligibility\"}', '{\"singleton\":false,\"collection\":\"merch_eligibility\"}', NULL),
(23, 25, 'directus_fields', '17', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"merch_eligibility\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"merch_eligibility\"}', NULL),
(24, 26, 'directus_fields', '18', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_ticket\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_ticket\"}', NULL),
(25, 27, 'directus_fields', '19', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_merch\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_merch\"}', NULL),
(26, 28, 'directus_fields', '20', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"quantity\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"quantity\"}', NULL),
(27, 29, 'directus_collections', 'customer_x_merch_eligible', '{\"singleton\":false,\"collection\":\"customer_x_merch_eligible\"}', '{\"singleton\":false,\"collection\":\"customer_x_merch_eligible\"}', NULL),
(28, 30, 'directus_fields', '21', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer_x_merch_eligible\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"customer_x_merch_eligible\"}', NULL),
(29, 31, 'directus_fields', '22', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\"}', NULL),
(30, 32, 'directus_fields', '23', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\"}', NULL),
(31, 33, 'directus_fields', '24', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\"}', NULL),
(32, 34, 'directus_fields', '25', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\"}', NULL),
(33, 35, 'directus_collections', 'registration', '{\"singleton\":false,\"collection\":\"registration\"}', '{\"singleton\":false,\"collection\":\"registration\"}', NULL),
(34, 36, 'directus_fields', '26', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"registration\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"registration\"}', NULL),
(35, 37, 'directus_fields', '27', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"registration\",\"field\":\"id_session\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"registration\",\"field\":\"id_session\"}', NULL),
(36, 38, 'directus_fields', '27', '{\"id\":27,\"collection\":\"registration\",\"field\":\"id_session\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_session\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":null,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(37, 39, 'directus_fields', '28', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"registration\",\"field\":\"id_customer\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"registration\",\"field\":\"id_customer\"}', NULL),
(38, 40, 'directus_fields', '29', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":\"\",\"collection\":\"registration\",\"field\":\"validated_on\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":\"\",\"collection\":\"registration\",\"field\":\"validated_on\"}', NULL),
(39, 41, 'directus_fields', '30', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"validated_by\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"validated_by\"}', NULL),
(40, 42, 'directus_collections', 'certificate', '{\"singleton\":false,\"collection\":\"certificate\"}', '{\"singleton\":false,\"collection\":\"certificate\"}', NULL),
(41, 43, 'directus_fields', '31', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certificate\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"certificate\"}', NULL),
(42, 44, 'directus_fields', '32', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"certificate\",\"field\":\"id_registration\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"certificate\",\"field\":\"id_registration\"}', NULL),
(43, 45, 'directus_collections', 'session', '{\"singleton\":false,\"collection\":\"session\"}', '{\"singleton\":false,\"collection\":\"session\"}', NULL),
(44, 46, 'directus_fields', '33', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"session\"}', '{\"hidden\":true,\"interface\":\"input\",\"readonly\":true,\"field\":\"id\",\"collection\":\"session\"}', NULL),
(45, 47, 'directus_fields', '34', '{\"hidden\":false,\"readonly\":false,\"collection\":\"session\",\"field\":\"session_type\"}', '{\"hidden\":false,\"readonly\":false,\"collection\":\"session\",\"field\":\"session_type\"}', NULL),
(46, 48, 'directus_fields', '35', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_desc\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_desc\"}', NULL),
(47, 49, 'directus_fields', '36', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"session\",\"field\":\"start_time\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"session\",\"field\":\"start_time\"}', NULL),
(48, 50, 'directus_fields', '37', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"session\",\"field\":\"finish_time\"}', '{\"hidden\":false,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"session\",\"field\":\"finish_time\"}', NULL),
(49, 51, 'directus_fields', '38', '{\"hidden\":false,\"interface\":\"file-image\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_speaker_photo\"}', '{\"hidden\":false,\"interface\":\"file-image\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_speaker_photo\"}', NULL),
(50, 52, 'directus_fields', '39', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_speaker_name\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"session\",\"field\":\"session_speaker_name\"}', NULL),
(51, 54, 'directus_fields', '40', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"merch\",\"field\":\"merch_name\"}', '{\"hidden\":false,\"interface\":\"input\",\"readonly\":false,\"collection\":\"merch\",\"field\":\"merch_name\"}', NULL),
(52, 55, 'directus_fields', '41', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch\",\"field\":\"total_stock\"}', '{\"hidden\":false,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch\",\"field\":\"total_stock\"}', NULL),
(53, 56, 'merch', '1', '{\"merch_name\":\"Notebook\",\"total_stock\":1000}', '{\"merch_name\":\"Notebook\",\"total_stock\":1000}', NULL),
(54, 57, 'merch', '2', '{\"merch_name\":\"Mug\",\"total_stock\":1000}', '{\"merch_name\":\"Mug\",\"total_stock\":1000}', NULL),
(55, 58, 'merch', '3', '{\"merch_name\":\"Alat Tulis\",\"total_stock\":1000}', '{\"merch_name\":\"Alat Tulis\",\"total_stock\":1000}', NULL),
(56, 59, 'merch', '4', '{\"merch_name\":\"Gantungan Kunci\",\"total_stock\":1000}', '{\"merch_name\":\"Gantungan Kunci\",\"total_stock\":1000}', NULL),
(57, 60, 'merch', '5', '{\"merch_name\":\"Goody Bag Peserta Umum\",\"total_stock\":1000}', '{\"merch_name\":\"Goody Bag Peserta Umum\",\"total_stock\":1000}', NULL),
(58, 61, 'merch', '6', '{\"merch_name\":\"Goody Bag Undangan\",\"total_stock\":1000}', '{\"merch_name\":\"Goody Bag Undangan\",\"total_stock\":1000}', NULL),
(59, 62, 'merch', '7', '{\"merch_name\":\"Goody Bag Pembicara\",\"total_stock\":1000}', '{\"merch_name\":\"Goody Bag Pembicara\",\"total_stock\":1000}', NULL),
(60, 63, 'merch', '8', '{\"merch_name\":\"Goody Bag Media\",\"total_stock\":1000}', '{\"merch_name\":\"Goody Bag Media\",\"total_stock\":1000}', NULL),
(61, 64, 'merch', '9', '{\"merch_name\":\"Co Card Peserta Umum\",\"total_stock\":1000}', '{\"merch_name\":\"Co Card Peserta Umum\",\"total_stock\":1000}', NULL),
(62, 65, 'merch', '10', '{\"merch_name\":\"Co Card Undangan\",\"total_stock\":1000}', '{\"merch_name\":\"Co Card Undangan\",\"total_stock\":1000}', NULL),
(63, 66, 'merch', '11', '{\"merch_name\":\"Co Card Pembicara\",\"total_stock\":1000}', '{\"merch_name\":\"Co Card Pembicara\",\"total_stock\":1000}', NULL),
(64, 67, 'merch', '12', '{\"merch_name\":\"Co Card Media\",\"total_stock\":1000}', '{\"merch_name\":\"Co Card Media\",\"total_stock\":1000}', NULL),
(65, 68, 'directus_fields', '42', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Peserta Umum Day 1\",\"value\":\"1\"},{\"text\":\"Peserta Umum day 2\",\"value\":\"2\"},{\"text\":\"Peserta Umum Day 3\",\"value\":\"3\"},{\"text\":\"Peserta Umum All Days\",\"value\":\"4\"},{\"text\":\"Undangan\",\"value\":\"5\"},{\"text\":\"Pembicara\",\"value\":\"6\"},{\"text\":\"Media\",\"value\":\"7\"}]},\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_ticket\"}', '{\"hidden\":false,\"interface\":\"select-dropdown\",\"options\":{\"choices\":[{\"text\":\"Peserta Umum Day 1\",\"value\":\"1\"},{\"text\":\"Peserta Umum day 2\",\"value\":\"2\"},{\"text\":\"Peserta Umum Day 3\",\"value\":\"3\"},{\"text\":\"Peserta Umum All Days\",\"value\":\"4\"},{\"text\":\"Undangan\",\"value\":\"5\"},{\"text\":\"Pembicara\",\"value\":\"6\"},{\"text\":\"Media\",\"value\":\"7\"}]},\"display\":null,\"display_options\":null,\"readonly\":false,\"special\":null,\"collection\":\"merch_eligibility\",\"field\":\"id_ticket\"}', NULL),
(66, 69, 'merch_eligibility', '1', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"1\"}', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"1\"}', NULL),
(67, 70, 'merch_eligibility', '2', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"1\"}', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"1\"}', NULL),
(68, 71, 'merch_eligibility', '3', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"1\"}', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"1\"}', NULL),
(69, 72, 'merch_eligibility', '4', '{\"quantity\":500,\"id_ticket\":\"1\",\"id_merch\":5}', '{\"quantity\":500,\"id_ticket\":\"1\",\"id_merch\":5}', NULL),
(70, 73, 'merch_eligibility', '5', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"1\"}', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"1\"}', NULL),
(71, 74, 'merch_eligibility', '6', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"2\"}', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"2\"}', NULL),
(72, 75, 'merch_eligibility', '7', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"2\"}', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"2\"}', NULL),
(73, 76, 'merch_eligibility', '8', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"2\"}', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"2\"}', NULL),
(74, 77, 'merch_eligibility', '9', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"2\"}', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"2\"}', NULL),
(75, 78, 'merch_eligibility', '10', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"2\"}', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"2\"}', NULL),
(76, 79, 'merch_eligibility', '11', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"3\"}', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"3\"}', NULL),
(77, 80, 'merch_eligibility', '12', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"3\"}', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"3\"}', NULL),
(78, 81, 'merch_eligibility', '13', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"3\"}', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"3\"}', NULL),
(79, 82, 'merch_eligibility', '14', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"3\"}', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"3\"}', NULL),
(80, 83, 'merch_eligibility', '15', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"3\"}', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"3\"}', NULL),
(81, 84, 'merch_eligibility', '16', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"4\"}', '{\"id_merch\":1,\"quantity\":500,\"id_ticket\":\"4\"}', NULL),
(82, 85, 'merch_eligibility', '17', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"4\"}', '{\"id_merch\":2,\"quantity\":500,\"id_ticket\":\"4\"}', NULL),
(83, 86, 'merch_eligibility', '18', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"4\"}', '{\"id_merch\":3,\"quantity\":500,\"id_ticket\":\"4\"}', NULL),
(84, 87, 'merch_eligibility', '19', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"4\"}', '{\"id_merch\":5,\"quantity\":500,\"id_ticket\":\"4\"}', NULL),
(85, 88, 'merch_eligibility', '20', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"4\"}', '{\"id_merch\":9,\"quantity\":500,\"id_ticket\":\"4\"}', NULL),
(86, 89, 'merch_eligibility', '21', '{\"id_merch\":1,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":1,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(87, 90, 'merch_eligibility', '22', '{\"id_merch\":2,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":2,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(88, 91, 'merch_eligibility', '23', '{\"id_merch\":3,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":3,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(89, 92, 'merch_eligibility', '24', '{\"id_merch\":4,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":4,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(90, 93, 'merch_eligibility', '25', '{\"id_merch\":6,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":6,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(91, 94, 'merch_eligibility', '26', '{\"id_merch\":10,\"quantity\":100,\"id_ticket\":\"5\"}', '{\"id_merch\":10,\"quantity\":100,\"id_ticket\":\"5\"}', NULL),
(92, 95, 'merch_eligibility', '27', '{\"id_merch\":1,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":1,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(93, 96, 'merch_eligibility', '28', '{\"id_merch\":2,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":2,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(94, 97, 'merch_eligibility', '29', '{\"id_merch\":3,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":3,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(95, 98, 'merch_eligibility', '30', '{\"id_merch\":4,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":4,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(96, 99, 'merch_eligibility', '31', '{\"id_merch\":7,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":7,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(97, 100, 'merch_eligibility', '32', '{\"id_merch\":11,\"quantity\":20,\"id_ticket\":\"6\"}', '{\"id_merch\":11,\"quantity\":20,\"id_ticket\":\"6\"}', NULL),
(98, 101, 'merch_eligibility', '33', '{\"id_merch\":1,\"quantity\":50,\"id_ticket\":\"7\"}', '{\"id_merch\":1,\"quantity\":50,\"id_ticket\":\"7\"}', NULL),
(99, 102, 'merch_eligibility', '34', '{\"id_merch\":4,\"quantity\":50,\"id_ticket\":\"7\"}', '{\"id_merch\":4,\"quantity\":50,\"id_ticket\":\"7\"}', NULL),
(100, 103, 'merch_eligibility', '35', '{\"id_merch\":8,\"quantity\":50,\"id_ticket\":\"7\"}', '{\"id_merch\":8,\"quantity\":50,\"id_ticket\":\"7\"}', NULL),
(101, 104, 'merch_eligibility', '36', '{\"id_merch\":12,\"quantity\":50,\"id_ticket\":\"7\"}', '{\"id_merch\":12,\"quantity\":50,\"id_ticket\":\"7\"}', NULL),
(102, 105, 'session', '1', '{\"session_type\":\"Session 1\",\"session_desc\":\"Seminar System Architecture\",\"start_time\":\"2021-12-01T03:00:49\"}', '{\"session_type\":\"Session 1\",\"session_desc\":\"Seminar System Architecture\",\"start_time\":\"2021-12-01T03:00:49\"}', NULL),
(103, 106, 'session', '1', '{\"id\":1,\"session_type\":\"Session 1\",\"session_desc\":\"Seminar System Architecture\",\"start_time\":\"2021-12-01T10:00:49\",\"finish_time\":\"2021-12-01T12:00:49\",\"session_speaker_photo\":null,\"session_speaker_name\":\"Erray Utama Alld, Ph.D.\"}', '{\"finish_time\":\"2021-12-01T12:00:49\",\"session_speaker_name\":\"Erray Utama Alld, Ph.D.\"}', NULL),
(104, 107, 'session', '2', '{\"session_type\":\"Session 2\",\"session_desc\":\"Seminar System Integration\",\"start_time\":\"2021-12-01T06:00:41\",\"finish_time\":\"2021-12-01T08:00:01\",\"session_speaker_name\":\"Ana Marlinoh Askari, S.E., M.Ak\"}', '{\"session_type\":\"Session 2\",\"session_desc\":\"Seminar System Integration\",\"start_time\":\"2021-12-01T06:00:41\",\"finish_time\":\"2021-12-01T08:00:01\",\"session_speaker_name\":\"Ana Marlinoh Askari, S.E., M.Ak\"}', NULL),
(105, 108, 'session', '3', '{\"session_type\":\"Session 3\",\"session_desc\":\"Seminar System Architecutre & Integration\",\"start_time\":\"2021-12-01T09:00:46\",\"finish_time\":\"2021-12-01T11:00:05\",\"session_speaker_name\":\"Anta Wahyo Budamanas, S.T., Ph.D\"}', '{\"session_type\":\"Session 3\",\"session_desc\":\"Seminar System Architecutre & Integration\",\"start_time\":\"2021-12-01T09:00:46\",\"finish_time\":\"2021-12-01T11:00:05\",\"session_speaker_name\":\"Anta Wahyo Budamanas, S.T., Ph.D\"}', NULL),
(106, 109, 'session', '4', '{\"session_type\":\"Session 4\",\"session_desc\":\"Seminar Native Programming Language 1\",\"start_time\":\"2021-12-01T03:00:24\",\"finish_time\":\"2021-12-01T05:00:38\",\"session_speaker_name\":\"Dr. Khaerodin, M.Pd\"}', '{\"session_type\":\"Session 4\",\"session_desc\":\"Seminar Native Programming Language 1\",\"start_time\":\"2021-12-01T03:00:24\",\"finish_time\":\"2021-12-01T05:00:38\",\"session_speaker_name\":\"Dr. Khaerodin, M.Pd\"}', NULL),
(107, 110, 'session', '5', '{\"session_type\":\"Session 5\",\"session_desc\":\"Seminar Native Programming Languange 2\",\"start_time\":\"2021-12-02T17:00:00\",\"session_speaker_name\":\"Surya Adi Kencana S.kom, M.si\"}', '{\"session_type\":\"Session 5\",\"session_desc\":\"Seminar Native Programming Languange 2\",\"start_time\":\"2021-12-02T17:00:00\",\"session_speaker_name\":\"Surya Adi Kencana S.kom, M.si\"}', NULL),
(108, 111, 'session', '4', '{\"id\":4,\"session_type\":\"Session 4\",\"session_desc\":\"Seminar Native Programming Language 1\",\"start_time\":\"2021-12-03T10:00:24\",\"finish_time\":\"2021-12-03T12:00:38\",\"session_speaker_photo\":null,\"session_speaker_name\":\"Dr. Khaerodin, M.Pd\"}', '{\"start_time\":\"2021-12-03T10:00:24\",\"finish_time\":\"2021-12-03T12:00:38\"}', NULL),
(109, 112, 'session', '6', '{\"session_type\":\"Session 6\",\"session_desc\":\"Seminar Native Programming Languange 3\",\"start_time\":\"2021-12-03T09:00:00\",\"finish_time\":\"2021-12-03T11:00:05\",\"session_speaker_name\":\"drg. Sultan SpKG(K)\"}', '{\"session_type\":\"Session 6\",\"session_desc\":\"Seminar Native Programming Languange 3\",\"start_time\":\"2021-12-03T09:00:00\",\"finish_time\":\"2021-12-03T11:00:05\",\"session_speaker_name\":\"drg. Sultan SpKG(K)\"}', NULL),
(110, 113, 'session', '7', '{\"session_type\":\"Session 7\",\"session_desc\":\"Seminar Database Development 1\",\"start_time\":\"2021-12-12T03:00:47\",\"session_speaker_name\":\"Prof. Dr.  Retnowati Wibisono S.pd, M.Psi\"}', '{\"session_type\":\"Session 7\",\"session_desc\":\"Seminar Database Development 1\",\"start_time\":\"2021-12-12T03:00:47\",\"session_speaker_name\":\"Prof. Dr.  Retnowati Wibisono S.pd, M.Psi\"}', NULL),
(111, 114, 'session', '8', '{\"session_type\":\"Session 8\",\"session_desc\":\"Seminar Database Development 2\",\"start_time\":\"2021-12-05T06:00:33\",\"finish_time\":\"2021-12-05T08:00:51\",\"session_speaker_name\":\"Ada Zakaroa Afifef, Prof., Dr. SE., MBA\"}', '{\"session_type\":\"Session 8\",\"session_desc\":\"Seminar Database Development 2\",\"start_time\":\"2021-12-05T06:00:33\",\"finish_time\":\"2021-12-05T08:00:51\",\"session_speaker_name\":\"Ada Zakaroa Afifef, Prof., Dr. SE., MBA\"}', NULL),
(112, 115, 'session', '9', '{\"session_type\":\"Session 9\",\"session_desc\":\"Seminar Database Development 3\",\"start_time\":\"2021-12-05T09:00:44\",\"finish_time\":\"2021-12-05T11:00:00\",\"session_speaker_name\":\"Prof. Dr. Fathar Rikohmin, M.Hum.\"}', '{\"session_type\":\"Session 9\",\"session_desc\":\"Seminar Database Development 3\",\"start_time\":\"2021-12-05T09:00:44\",\"finish_time\":\"2021-12-05T11:00:00\",\"session_speaker_name\":\"Prof. Dr. Fathar Rikohmin, M.Hum.\"}', NULL),
(113, 116, 'customer_x_merch', '1', '{\"id_ticket\":1,\"id_customer\":2}', '{\"id_ticket\":1,\"id_customer\":2}', NULL),
(114, 117, 'customer_x_merch', '2', '{\"id_ticket\":2,\"id_customer\":3}', '{\"id_ticket\":2,\"id_customer\":3}', NULL),
(115, 118, 'customer_x_merch', '3', '{\"id_ticket\":3,\"id_customer\":4}', '{\"id_ticket\":3,\"id_customer\":4}', NULL),
(116, 119, 'customer_x_merch', '4', '{\"id_ticket\":5,\"id_customer\":9}', '{\"id_ticket\":5,\"id_customer\":9}', NULL),
(117, 120, 'customer_x_merch', '5', '{\"id_ticket\":6,\"id_customer\":10}', '{\"id_ticket\":6,\"id_customer\":10}', NULL),
(118, 121, 'customer_x_merch', '6', '{\"id_ticket\":7,\"id_customer\":11}', '{\"id_ticket\":7,\"id_customer\":11}', NULL),
(119, 122, 'customer_x_merch', '3', '{\"id\":3,\"id_ticket\":3,\"id_customer\":3}', '{\"id_customer\":3}', NULL),
(120, 123, 'customer_x_merch', '7', '{\"id_ticket\":4,\"id_customer\":4}', '{\"id_ticket\":4,\"id_customer\":4}', NULL),
(121, 125, 'customer_x_merch', '8', '{\"id_ticket\":4,\"id_customer\":4}', '{\"id_ticket\":4,\"id_customer\":4}', NULL),
(122, 126, 'customer', '2', '{\"email\":\"laras@gmail.com\",\"name\":\"laras\",\"phone\":\"08732492374\",\"password\":\"laras\",\"status\":\"1\",\"code\":\"908eowqirh89g3y9gurjf\"}', '{\"email\":\"laras@gmail.com\",\"name\":\"laras\",\"phone\":\"08732492374\",\"password\":\"laras\",\"status\":\"1\",\"code\":\"908eowqirh89g3y9gurjf\"}', NULL),
(123, 127, 'customer', '1', '{\"id\":1,\"date_created\":\"2021-10-27T06:34:10.000Z\",\"email\":\"paksi@gmail.com\",\"name\":\"paksi\",\"phone\":\"107324012038\",\"password\":\"paksi\",\"status\":1,\"code\":\"vnriedjkfadbfnvklfhdfop30e\"}', '{\"email\":\"paksi@gmail.com\",\"name\":\"paksi\",\"phone\":\"107324012038\",\"password\":\"paksi\",\"status\":\"1\",\"code\":\"vnriedjkfadbfnvklfhdfop30e\"}', NULL),
(124, 128, 'customer', '2', '{\"id\":2,\"date_created\":\"2021-10-27T08:45:29.000Z\",\"email\":\"rudeus@gmail.com\",\"name\":\"Arafat Maku\",\"phone\":\"081234567890\",\"password\":null,\"status\":1,\"code\":\"5A0D94E9E6BF00DF681B75E6FE595203CCB92A296CAAEA599AA3AB6D3511A89737FB5F31E082515BFCB15361184844B034B220EF305D725B3777560707B27510\"}', '{\"email\":\"rudeus@gmail.com\",\"name\":\"Arafat Maku\",\"phone\":\"081234567890\",\"password\":null,\"status\":\"1\",\"code\":\"5A0D94E9E6BF00DF681B75E6FE595203CCB92A296CAAEA599AA3AB6D3511A89737FB5F31E082515BFCB15361184844B034B220EF305D725B3777560707B27510\"}', NULL),
(125, 129, 'customer', '1', '{\"id\":1,\"date_created\":\"2021-10-27T06:34:10.000Z\",\"email\":\"paksi@gmail.com\",\"name\":\"paksi\",\"phone\":\"107324012038\",\"password\":null,\"status\":1,\"code\":\"vnriedjkfadbfnvklfhdfop30e\"}', '{\"password\":null}', NULL),
(126, 130, 'customer', '3', '{\"email\":\"oliver.syauqiez@yahoo.com\",\"name\":\"Anggun Ayu Lestari\",\"phone\":\"082356789012\",\"status\":\"1\",\"code\":\"1B0F74CA6ECAE286AEF066738E70BC4B4043E2C4B38AB2B61FD8C3BA615250BE690499BD205F0B66C97E1FB10CA0DF5D0DB6738A30E6CA0F273206E8F5120B39\"}', '{\"email\":\"oliver.syauqiez@yahoo.com\",\"name\":\"Anggun Ayu Lestari\",\"phone\":\"082356789012\",\"status\":\"1\",\"code\":\"1B0F74CA6ECAE286AEF066738E70BC4B4043E2C4B38AB2B61FD8C3BA615250BE690499BD205F0B66C97E1FB10CA0DF5D0DB6738A30E6CA0F273206E8F5120B39\"}', NULL),
(127, 131, 'customer', '4', '{\"email\":\"ari.fida@yahoo.com\",\"name\":\"Kirigaya Kazuto\",\"phone\":\"085217435290\",\"status\":\"1\"}', '{\"email\":\"ari.fida@yahoo.com\",\"name\":\"Kirigaya Kazuto\",\"phone\":\"085217435290\",\"status\":\"1\"}', NULL),
(128, 132, 'customer', '5', '{\"email\":\"Dimas@gmail.com\",\"name\":\"Dimas\",\"phone\":\"08412937189\",\"status\":\"1\",\"code\":\"2hnv8oiedrysthnofg83btgn0oiwthqef\"}', '{\"email\":\"Dimas@gmail.com\",\"name\":\"Dimas\",\"phone\":\"08412937189\",\"status\":\"1\",\"code\":\"2hnv8oiedrysthnofg83btgn0oiwthqef\"}', NULL),
(129, 133, 'customer', '6', '{\"email\":\"fikafebrika02@gmail.com\",\"name\":\"Fika Febrika\",\"phone\":\"087894614101\",\"status\":\"1\",\"code\":\"24C410527A5AEA6B7A0D792C0C0DA06C6424C98B172B99701E7E9DC99E048818D7303F1E4F9931C9BA2F3B1D950FA0E5B9FA9507ED68C273BD9B0CAC77D03F9B\"}', '{\"email\":\"fikafebrika02@gmail.com\",\"name\":\"Fika Febrika\",\"phone\":\"087894614101\",\"status\":\"1\",\"code\":\"24C410527A5AEA6B7A0D792C0C0DA06C6424C98B172B99701E7E9DC99E048818D7303F1E4F9931C9BA2F3B1D950FA0E5B9FA9507ED68C273BD9B0CAC77D03F9B\"}', NULL),
(130, 134, 'customer', '7', '{\"email\":\"andina@gmail.com\",\"name\":\"Andina Marsanova\",\"phone\":\"087854320987\",\"status\":\"1\"}', '{\"email\":\"andina@gmail.com\",\"name\":\"Andina Marsanova\",\"phone\":\"087854320987\",\"status\":\"1\"}', NULL),
(131, 135, 'customer', '8', '{\"email\":\"nurwinda@gmail.com\",\"name\":\"nurwinda dwiva\",\"phone\":\"085243789865\",\"status\":\"1\"}', '{\"email\":\"nurwinda@gmail.com\",\"name\":\"nurwinda dwiva\",\"phone\":\"085243789865\",\"status\":\"1\"}', NULL),
(132, 136, 'customer', '9', '{\"email\":\"minatwice@gmail.com\",\"name\":\"Mina Rofida\",\"phone\":\"089543127683\",\"status\":\"1\"}', '{\"email\":\"minatwice@gmail.com\",\"name\":\"Mina Rofida\",\"phone\":\"089543127683\",\"status\":\"1\"}', NULL),
(133, 137, 'customer', '5', '{\"id\":5,\"date_created\":\"2021-10-27T08:50:31.000Z\",\"email\":\"sul@gmail.com\",\"name\":\"Dimas\",\"phone\":\"08412937189\",\"password\":null,\"status\":1,\"code\":\"2hnv8oiedrysthnofg83btgn0oiwthqef\"}', '{\"email\":\"sul@gmail.com\"}', NULL),
(134, 138, 'customer', '10', '{\"email\":\"dimas@gmail.com\",\"name\":\"Sultan Dimas\",\"phone\":\"085209871234\",\"status\":\"1\"}', '{\"email\":\"dimas@gmail.com\",\"name\":\"Sultan Dimas\",\"phone\":\"085209871234\",\"status\":\"1\"}', NULL),
(135, 139, 'customer', '11', '{\"email\":\"asasa@gmail.com\",\"name\":\"Asa Darussalam\",\"phone\":\"087754327865\",\"status\":\"1\"}', '{\"email\":\"asasa@gmail.com\",\"name\":\"Asa Darussalam\",\"phone\":\"087754327865\",\"status\":\"1\"}', NULL),
(136, 142, 'customer_x_merch_eligible', '1', '{\"id_merch_eligible\":1,\"id_customer_x_merch\":1}', '{\"id_merch_eligible\":1,\"id_customer_x_merch\":1}', NULL),
(137, 143, 'customer_x_merch_eligible', '2', '{\"id_customer_x_merch\":1,\"id_merch_eligible\":2}', '{\"id_customer_x_merch\":1,\"id_merch_eligible\":2}', NULL),
(138, 144, 'customer_x_merch_eligible', '3', '{\"id_merch_eligible\":3,\"id_customer_x_merch\":1}', '{\"id_merch_eligible\":3,\"id_customer_x_merch\":1}', NULL),
(139, 145, 'customer_x_merch_eligible', '4', '{\"id_merch_eligible\":5,\"id_customer_x_merch\":1}', '{\"id_merch_eligible\":5,\"id_customer_x_merch\":1}', NULL),
(140, 146, 'customer_x_merch_eligible', '5', '{\"id_merch_eligible\":6,\"id_customer_x_merch\":1}', '{\"id_merch_eligible\":6,\"id_customer_x_merch\":1}', NULL),
(141, 147, 'customer_x_merch_eligible', '6', '{\"id_merch_eligible\":18,\"id_customer_x_merch\":1}', '{\"id_merch_eligible\":18,\"id_customer_x_merch\":1}', NULL),
(142, 148, 'customer_x_merch_eligible', '4', '{\"id\":4,\"id_merch_eligible\":4,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null}', '{\"id_merch_eligible\":4}', NULL),
(143, 149, 'customer_x_merch_eligible', '5', '{\"id\":5,\"id_merch_eligible\":5,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null}', '{\"id_merch_eligible\":5}', NULL),
(144, 150, 'customer_x_merch_eligible', '6', '{\"id\":6,\"id_merch_eligible\":6,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null}', '{\"id_merch_eligible\":6,\"id_customer_x_merch\":2}', NULL),
(145, 151, 'customer_x_merch_eligible', '7', '{\"id_customer_x_merch\":7,\"id_merch_eligible\":2}', '{\"id_customer_x_merch\":7,\"id_merch_eligible\":2}', NULL),
(146, 152, 'customer_x_merch_eligible', '7', '{\"id\":7,\"id_merch_eligible\":7,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null}', '{\"id_merch_eligible\":7,\"id_customer_x_merch\":2}', NULL),
(147, 153, 'customer_x_merch_eligible', '8', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":8}', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":8}', NULL),
(148, 154, 'customer_x_merch_eligible', '9', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":9}', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":9}', NULL),
(149, 155, 'customer_x_merch_eligible', '10', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":10}', '{\"id_customer_x_merch\":2,\"id_merch_eligible\":10}', NULL),
(150, 156, 'customer_x_merch_eligible', '11', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":11}', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":11}', NULL),
(151, 157, 'customer_x_merch_eligible', '12', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":12}', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":12}', NULL),
(152, 158, 'customer_x_merch_eligible', '13', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":13}', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":13}', NULL),
(153, 159, 'customer_x_merch_eligible', '14', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":14}', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":14}', NULL),
(154, 160, 'customer_x_merch_eligible', '15', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":15}', '{\"id_customer_x_merch\":3,\"id_merch_eligible\":15}', NULL),
(155, 161, 'customer_x_merch_eligible', '16', '{\"id_customer_x_merch\":4,\"id_merch_eligible\":21}', '{\"id_customer_x_merch\":4,\"id_merch_eligible\":21}', NULL),
(156, 162, 'customer_x_merch_eligible', '17', '{\"id_merch_eligible\":22,\"id_customer_x_merch\":4}', '{\"id_merch_eligible\":22,\"id_customer_x_merch\":4}', NULL),
(157, 163, 'customer_x_merch_eligible', '18', '{\"id_merch_eligible\":23,\"id_customer_x_merch\":4}', '{\"id_merch_eligible\":23,\"id_customer_x_merch\":4}', NULL),
(158, 164, 'customer_x_merch_eligible', '19', '{\"id_merch_eligible\":24,\"id_customer_x_merch\":4}', '{\"id_merch_eligible\":24,\"id_customer_x_merch\":4}', NULL),
(159, 165, 'customer_x_merch_eligible', '20', '{\"id_merch_eligible\":25,\"id_customer_x_merch\":4}', '{\"id_merch_eligible\":25,\"id_customer_x_merch\":4}', NULL),
(160, 166, 'customer_x_merch_eligible', '21', '{\"id_merch_eligible\":26,\"id_customer_x_merch\":4}', '{\"id_merch_eligible\":26,\"id_customer_x_merch\":4}', NULL),
(161, 167, 'customer_x_merch_eligible', '22', '{\"id_merch_eligible\":27,\"id_customer_x_merch\":5}', '{\"id_merch_eligible\":27,\"id_customer_x_merch\":5}', NULL),
(162, 168, 'customer_x_merch_eligible', '23', '{\"id_merch_eligible\":28,\"id_customer_x_merch\":5}', '{\"id_merch_eligible\":28,\"id_customer_x_merch\":5}', NULL),
(163, 169, 'customer_x_merch_eligible', '24', '{\"id_merch_eligible\":29,\"id_customer_x_merch\":5}', '{\"id_merch_eligible\":29,\"id_customer_x_merch\":5}', NULL),
(164, 170, 'customer_x_merch_eligible', '25', '{\"id_merch_eligible\":30}', '{\"id_merch_eligible\":30}', NULL),
(165, 171, 'customer_x_merch_eligible', '26', '{\"id_merch_eligible\":31,\"id_customer_x_merch\":5}', '{\"id_merch_eligible\":31,\"id_customer_x_merch\":5}', NULL),
(166, 172, 'customer_x_merch_eligible', '27', '{\"id_merch_eligible\":32,\"id_customer_x_merch\":5}', '{\"id_merch_eligible\":32,\"id_customer_x_merch\":5}', NULL),
(167, 173, 'customer_x_merch_eligible', '25', '{\"id\":25,\"id_merch_eligible\":30,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null}', '{\"id_customer_x_merch\":5}', NULL),
(168, 174, 'customer_x_merch_eligible', '28', '{\"id_customer_x_merch\":6,\"id_merch_eligible\":33}', '{\"id_customer_x_merch\":6,\"id_merch_eligible\":33}', NULL),
(169, 175, 'customer_x_merch_eligible', '29', '{\"id_merch_eligible\":34,\"id_customer_x_merch\":6}', '{\"id_merch_eligible\":34,\"id_customer_x_merch\":6}', NULL),
(170, 176, 'customer_x_merch_eligible', '30', '{\"id_merch_eligible\":35,\"id_customer_x_merch\":6}', '{\"id_merch_eligible\":35,\"id_customer_x_merch\":6}', NULL),
(171, 177, 'customer_x_merch_eligible', '31', '{\"id_merch_eligible\":36,\"id_customer_x_merch\":6}', '{\"id_merch_eligible\":36,\"id_customer_x_merch\":6}', NULL),
(172, 178, 'customer_x_merch_eligible', '32', '{\"id_merch_eligible\":16,\"id_customer_x_merch\":8}', '{\"id_merch_eligible\":16,\"id_customer_x_merch\":8}', NULL),
(173, 179, 'customer_x_merch_eligible', '33', '{\"id_merch_eligible\":17,\"id_customer_x_merch\":8}', '{\"id_merch_eligible\":17,\"id_customer_x_merch\":8}', NULL),
(174, 180, 'customer_x_merch_eligible', '34', '{\"id_merch_eligible\":18,\"id_customer_x_merch\":8}', '{\"id_merch_eligible\":18,\"id_customer_x_merch\":8}', NULL),
(175, 181, 'customer_x_merch_eligible', '35', '{\"id_merch_eligible\":19,\"id_customer_x_merch\":8}', '{\"id_merch_eligible\":19,\"id_customer_x_merch\":8}', NULL),
(176, 182, 'customer_x_merch_eligible', '36', '{\"id_merch_eligible\":20,\"id_customer_x_merch\":8}', '{\"id_merch_eligible\":20,\"id_customer_x_merch\":8}', NULL),
(177, 183, 'registration', '1', '{\"id_session\":1,\"id_customer\":2,\"validated_on\":\"2021-12-01T03:00:41\"}', '{\"id_session\":1,\"id_customer\":2,\"validated_on\":\"2021-12-01T03:00:41\"}', NULL),
(178, 185, 'registration', '2', '{\"id_session\":2,\"id_customer\":1}', '{\"id_session\":2,\"id_customer\":1}', NULL),
(179, 186, 'registration', '2', '{\"id\":2,\"id_session\":2,\"id_customer\":2,\"validated_on\":null,\"validated_by\":null}', '{\"id_customer\":2}', NULL),
(180, 187, 'registration', '3', '{\"id_session\":3,\"id_customer\":2}', '{\"id_session\":3,\"id_customer\":2}', NULL),
(181, 188, 'registration', '4', '{\"id_session\":4,\"id_customer\":3}', '{\"id_session\":4,\"id_customer\":3}', NULL),
(182, 189, 'registration', '5', '{\"id_session\":5,\"id_customer\":3}', '{\"id_session\":5,\"id_customer\":3}', NULL),
(183, 190, 'registration', '6', '{\"id_session\":6,\"id_customer\":3}', '{\"id_session\":6,\"id_customer\":3}', NULL),
(184, 191, 'session', '7', '{\"id\":7,\"session_type\":\"Session 7\",\"session_desc\":\"Seminar Database Development 1\",\"start_time\":\"2021-12-05T10:00:47\",\"finish_time\":null,\"session_speaker_photo\":null,\"session_speaker_name\":\"Prof. Dr.  Retnowati Wibisono S.pd, M.Psi\"}', '{\"start_time\":\"2021-12-05T10:00:47\"}', NULL),
(185, 192, 'registration', '7', '{\"id_session\":7,\"id_customer\":3}', '{\"id_session\":7,\"id_customer\":3}', NULL),
(186, 193, 'registration', '8', '{\"id_session\":8,\"id_customer\":3}', '{\"id_session\":8,\"id_customer\":3}', NULL),
(187, 194, 'registration', '9', '{\"id_session\":9,\"id_customer\":3}', '{\"id_session\":9,\"id_customer\":3}', NULL),
(188, 195, 'registration', '10', '{\"id_customer\":9,\"id_session\":1}', '{\"id_customer\":9,\"id_session\":1}', NULL),
(189, 196, 'registration', '11', '{\"id_customer\":9,\"id_session\":2}', '{\"id_customer\":9,\"id_session\":2}', NULL),
(190, 197, 'registration', '12', '{\"id_customer\":9,\"id_session\":3}', '{\"id_customer\":9,\"id_session\":3}', NULL),
(191, 198, 'registration', '13', '{\"id_customer\":9,\"id_session\":4}', '{\"id_customer\":9,\"id_session\":4}', NULL),
(192, 199, 'registration', '14', '{\"id_customer\":9,\"id_session\":5}', '{\"id_customer\":9,\"id_session\":5}', NULL),
(193, 200, 'registration', '15', '{\"id_customer\":9,\"id_session\":6}', '{\"id_customer\":9,\"id_session\":6}', NULL),
(194, 201, 'registration', '16', '{\"id_customer\":9,\"id_session\":7}', '{\"id_customer\":9,\"id_session\":7}', NULL),
(195, 202, 'registration', '17', '{\"id_customer\":9,\"id_session\":8}', '{\"id_customer\":9,\"id_session\":8}', NULL),
(196, 203, 'registration', '18', '{\"id_customer\":9,\"id_session\":9}', '{\"id_customer\":9,\"id_session\":9}', NULL),
(197, 204, 'registration', '19', '{\"id_session\":1,\"id_customer\":10}', '{\"id_session\":1,\"id_customer\":10}', NULL),
(198, 205, 'registration', '20', '{\"id_session\":2,\"id_customer\":10}', '{\"id_session\":2,\"id_customer\":10}', NULL),
(199, 206, 'registration', '21', '{\"id_session\":3,\"id_customer\":10}', '{\"id_session\":3,\"id_customer\":10}', NULL),
(200, 207, 'registration', '22', '{\"id_session\":4,\"id_customer\":10}', '{\"id_session\":4,\"id_customer\":10}', NULL),
(201, 208, 'registration', '23', '{\"id_session\":5,\"id_customer\":10}', '{\"id_session\":5,\"id_customer\":10}', NULL),
(202, 209, 'registration', '24', '{\"id_session\":6,\"id_customer\":10}', '{\"id_session\":6,\"id_customer\":10}', NULL),
(203, 210, 'registration', '25', '{\"id_session\":7,\"id_customer\":10}', '{\"id_session\":7,\"id_customer\":10}', NULL),
(204, 211, 'registration', '26', '{\"id_session\":8,\"id_customer\":10}', '{\"id_session\":8,\"id_customer\":10}', NULL),
(205, 212, 'registration', '27', '{\"id_session\":9,\"id_customer\":10}', '{\"id_session\":9,\"id_customer\":10}', NULL),
(206, 213, 'registration', '28', '{\"id_session\":1,\"id_customer\":11}', '{\"id_session\":1,\"id_customer\":11}', NULL),
(207, 214, 'registration', '29', '{\"id_session\":9,\"id_customer\":11}', '{\"id_session\":9,\"id_customer\":11}', NULL),
(208, 215, 'registration', '30', '{\"id_session\":1,\"id_customer\":4}', '{\"id_session\":1,\"id_customer\":4}', NULL),
(209, 216, 'registration', '31', '{\"id_session\":2,\"id_customer\":4}', '{\"id_session\":2,\"id_customer\":4}', NULL),
(210, 217, 'registration', '32', '{\"id_session\":3,\"id_customer\":4}', '{\"id_session\":3,\"id_customer\":4}', NULL),
(211, 218, 'registration', '33', '{\"id_session\":4,\"id_customer\":4}', '{\"id_session\":4,\"id_customer\":4}', NULL),
(212, 219, 'registration', '34', '{\"id_session\":5,\"id_customer\":4}', '{\"id_session\":5,\"id_customer\":4}', NULL),
(213, 220, 'registration', '35', '{\"id_session\":6,\"id_customer\":4}', '{\"id_session\":6,\"id_customer\":4}', NULL),
(214, 221, 'registration', '36', '{\"id_session\":7,\"id_customer\":4}', '{\"id_session\":7,\"id_customer\":4}', NULL),
(215, 222, 'registration', '37', '{\"id_session\":8,\"id_customer\":4}', '{\"id_session\":8,\"id_customer\":4}', NULL),
(216, 223, 'registration', '38', '{\"id_session\":9,\"id_customer\":4}', '{\"id_session\":9,\"id_customer\":4}', NULL),
(217, 224, 'certificate', '1', '{\"id_registration\":1}', '{\"id_registration\":1}', NULL),
(218, 225, 'certificate', '2', '{\"id_registration\":2}', '{\"id_registration\":2}', NULL),
(219, 226, 'certificate', '3', '{\"id_registration\":3}', '{\"id_registration\":3}', NULL),
(220, 227, 'certificate', '4', '{\"id_registration\":4}', '{\"id_registration\":4}', NULL),
(221, 228, 'certificate', '5', '{\"id_registration\":5}', '{\"id_registration\":5}', NULL),
(222, 229, 'certificate', '6', '{\"id_registration\":6}', '{\"id_registration\":6}', NULL),
(223, 230, 'certificate', '7', '{\"id_registration\":7}', '{\"id_registration\":7}', NULL),
(224, 231, 'certificate', '8', '{\"id_registration\":8}', '{\"id_registration\":8}', NULL),
(225, 232, 'certificate', '9', '{\"id_registration\":9}', '{\"id_registration\":9}', NULL),
(226, 233, 'certificate', '10', '{\"id_registration\":10}', '{\"id_registration\":10}', NULL),
(227, 234, 'certificate', '11', '{\"id_registration\":11}', '{\"id_registration\":11}', NULL),
(228, 235, 'certificate', '12', '{\"id_registration\":12}', '{\"id_registration\":12}', NULL),
(229, 236, 'certificate', '13', '{\"id_registration\":13}', '{\"id_registration\":13}', NULL),
(230, 237, 'certificate', '14', '{\"id_registration\":14}', '{\"id_registration\":14}', NULL),
(231, 238, 'certificate', '15', '{\"id_registration\":15}', '{\"id_registration\":15}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(232, 239, 'certificate', '16', '{\"id_registration\":16}', '{\"id_registration\":16}', NULL),
(233, 240, 'certificate', '17', '{\"id_registration\":17}', '{\"id_registration\":17}', NULL),
(234, 241, 'certificate', '18', '{\"id_registration\":18}', '{\"id_registration\":18}', NULL),
(235, 242, 'certificate', '19', '{\"id_registration\":19}', '{\"id_registration\":19}', NULL),
(236, 243, 'certificate', '20', '{\"id_registration\":20}', '{\"id_registration\":20}', NULL),
(237, 244, 'certificate', '21', '{\"id_registration\":21}', '{\"id_registration\":21}', NULL),
(238, 245, 'certificate', '22', '{\"id_registration\":22}', '{\"id_registration\":22}', NULL),
(239, 246, 'certificate', '23', '{\"id_registration\":23}', '{\"id_registration\":23}', NULL),
(240, 247, 'certificate', '24', '{\"id_registration\":24}', '{\"id_registration\":24}', NULL),
(241, 248, 'certificate', '25', '{\"id_registration\":25}', '{\"id_registration\":25}', NULL),
(242, 249, 'certificate', '26', '{\"id_registration\":26}', '{\"id_registration\":26}', NULL),
(243, 250, 'certificate', '27', '{\"id_registration\":27}', '{\"id_registration\":27}', NULL),
(244, 251, 'certificate', '28', '{\"id_registration\":28}', '{\"id_registration\":28}', NULL),
(245, 252, 'certificate', '29', '{\"id_registration\":29}', '{\"id_registration\":29}', NULL),
(246, 253, 'certificate', '30', '{\"id_registration\":30}', '{\"id_registration\":30}', NULL),
(247, 254, 'certificate', '31', '{\"id_registration\":31}', '{\"id_registration\":31}', NULL),
(248, 255, 'certificate', '32', '{\"id_registration\":32}', '{\"id_registration\":32}', NULL),
(249, 256, 'certificate', '33', '{\"id_registration\":33}', '{\"id_registration\":33}', NULL),
(250, 257, 'certificate', '34', '{\"id_registration\":34}', '{\"id_registration\":34}', NULL),
(251, 258, 'certificate', '35', '{\"id_registration\":35}', '{\"id_registration\":35}', NULL),
(252, 259, 'certificate', '36', '{\"id_registration\":36}', '{\"id_registration\":36}', NULL),
(253, 260, 'certificate', '37', '{\"id_registration\":37}', '{\"id_registration\":37}', NULL),
(254, 261, 'certificate', '38', '{\"id_registration\":38}', '{\"id_registration\":38}', NULL),
(255, 262, 'registration', '10', '{\"id\":10,\"id_session\":1,\"id_customer\":9,\"validated_on\":\"2021-12-01T10:00:34\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T10:00:34\"}', NULL),
(256, 263, 'registration', '19', '{\"id\":19,\"id_session\":1,\"id_customer\":10,\"validated_on\":\"2021-12-01T12:00:14\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T12:00:14\"}', NULL),
(257, 264, 'registration', '28', '{\"id\":28,\"id_session\":1,\"id_customer\":11,\"validated_on\":\"2021-12-01T12:00:41\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T12:00:41\"}', NULL),
(258, 265, 'registration', '30', '{\"id\":30,\"id_session\":1,\"id_customer\":4,\"validated_on\":\"2021-12-01T12:00:04\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T12:00:04\"}', NULL),
(259, 266, 'registration', '1', '{\"id\":1,\"id_session\":1,\"id_customer\":2,\"validated_on\":\"2021-12-01T13:00:41\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T13:00:41\"}', NULL),
(260, 267, 'registration', '2', '{\"id\":2,\"id_session\":2,\"id_customer\":2,\"validated_on\":\"2021-12-01T13:00:07\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T13:00:07\"}', NULL),
(261, 268, 'registration', '11', '{\"id\":11,\"id_session\":2,\"id_customer\":9,\"validated_on\":\"2021-12-01T13:00:38\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T13:00:38\"}', NULL),
(262, 269, 'registration', '20', '{\"id\":20,\"id_session\":2,\"id_customer\":10,\"validated_on\":\"2021-12-01T13:00:10\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T13:00:10\"}', NULL),
(263, 270, 'registration', '31', '{\"id\":31,\"id_session\":2,\"id_customer\":4,\"validated_on\":\"2021-12-01T13:00:33\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T13:00:33\"}', NULL),
(264, 271, 'registration', '3', '{\"id\":3,\"id_session\":3,\"id_customer\":2,\"validated_on\":\"2021-12-04T16:00:08\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-04T16:00:08\"}', NULL),
(265, 272, 'registration', '3', '{\"id\":3,\"id_session\":3,\"id_customer\":2,\"validated_on\":\"2021-12-01T16:00:08\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T16:00:08\"}', NULL),
(266, 273, 'registration', '21', '{\"id\":21,\"id_session\":3,\"id_customer\":10,\"validated_on\":\"2021-12-01T16:00:45\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T16:00:45\"}', NULL),
(267, 274, 'registration', '12', '{\"id\":12,\"id_session\":3,\"id_customer\":9,\"validated_on\":\"2021-12-01T16:00:18\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T16:00:18\"}', NULL),
(268, 275, 'registration', '32', '{\"id\":32,\"id_session\":3,\"id_customer\":4,\"validated_on\":\"2021-12-01T16:00:41\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-01T16:00:41\"}', NULL),
(269, 276, 'registration', '4', '{\"id\":4,\"id_session\":4,\"id_customer\":3,\"validated_on\":\"2021-12-03T10:00:15\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T10:00:15\"}', NULL),
(270, 277, 'registration', '13', '{\"id\":13,\"id_session\":4,\"id_customer\":9,\"validated_on\":\"2021-12-03T10:00:36\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T10:00:36\"}', NULL),
(271, 278, 'registration', '22', '{\"id\":22,\"id_session\":4,\"id_customer\":10,\"validated_on\":\"2021-12-03T10:00:01\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T10:00:01\"}', NULL),
(272, 279, 'registration', '33', '{\"id\":33,\"id_session\":4,\"id_customer\":4,\"validated_on\":\"2021-12-03T10:00:25\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T10:00:25\"}', NULL),
(273, 280, 'registration', '23', '{\"id\":23,\"id_session\":5,\"id_customer\":10,\"validated_on\":\"2021-12-03T12:00:03\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T12:00:03\"}', NULL),
(274, 281, 'registration', '5', '{\"id\":5,\"id_session\":5,\"id_customer\":3,\"validated_on\":\"2021-12-03T12:00:35\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T12:00:35\"}', NULL),
(275, 282, 'registration', '14', '{\"id\":14,\"id_session\":5,\"id_customer\":9,\"validated_on\":\"2021-12-03T12:00:08\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T12:00:08\"}', NULL),
(276, 283, 'registration', '34', '{\"id\":34,\"id_session\":5,\"id_customer\":4,\"validated_on\":\"2021-12-03T12:00:47\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T12:00:47\"}', NULL),
(277, 284, 'registration', '6', '{\"id\":6,\"id_session\":6,\"id_customer\":3,\"validated_on\":\"2021-12-03T16:00:34\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T16:00:34\"}', NULL),
(278, 285, 'registration', '15', '{\"id\":15,\"id_session\":6,\"id_customer\":9,\"validated_on\":\"2021-12-03T16:00:04\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T16:00:04\"}', NULL),
(279, 286, 'registration', '24', '{\"id\":24,\"id_session\":6,\"id_customer\":10,\"validated_on\":\"2021-12-03T16:00:35\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T16:00:35\"}', NULL),
(280, 287, 'registration', '35', '{\"id\":35,\"id_session\":6,\"id_customer\":4,\"validated_on\":\"2021-12-03T16:00:00\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-03T16:00:00\"}', NULL),
(281, 288, 'registration', '36', '{\"id\":36,\"id_session\":7,\"id_customer\":4,\"validated_on\":\"2021-12-05T10:00:49\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T10:00:49\"}', NULL),
(282, 289, 'registration', '25', '{\"id\":25,\"id_session\":7,\"id_customer\":10,\"validated_on\":\"2021-12-05T10:00:23\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T10:00:23\"}', NULL),
(283, 290, 'registration', '7', '{\"id\":7,\"id_session\":7,\"id_customer\":3,\"validated_on\":\"2021-12-05T10:00:18\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T10:00:18\"}', NULL),
(284, 291, 'registration', '16', '{\"id\":16,\"id_session\":7,\"id_customer\":9,\"validated_on\":\"2021-12-05T13:00:59\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T13:00:59\"}', NULL),
(285, 292, 'registration', '8', '{\"id\":8,\"id_session\":8,\"id_customer\":3,\"validated_on\":\"2021-12-05T13:00:53\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T13:00:53\"}', NULL),
(286, 293, 'registration', '17', '{\"id\":17,\"id_session\":8,\"id_customer\":9,\"validated_on\":\"2021-12-05T13:00:20\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T13:00:20\"}', NULL),
(287, 294, 'registration', '26', '{\"id\":26,\"id_session\":8,\"id_customer\":10,\"validated_on\":\"2021-12-05T13:00:50\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T13:00:50\"}', NULL),
(288, 295, 'registration', '37', '{\"id\":37,\"id_session\":8,\"id_customer\":4,\"validated_on\":\"2021-12-05T13:00:15\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T13:00:15\"}', NULL),
(289, 296, 'registration', '9', '{\"id\":9,\"id_session\":9,\"id_customer\":3,\"validated_on\":\"2021-12-05T16:00:51\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T16:00:51\"}', NULL),
(290, 297, 'registration', '18', '{\"id\":18,\"id_session\":9,\"id_customer\":9,\"validated_on\":\"2021-12-05T16:00:14\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T16:00:14\"}', NULL),
(291, 298, 'registration', '38', '{\"id\":38,\"id_session\":9,\"id_customer\":4,\"validated_on\":\"2021-12-05T16:00:39\",\"validated_by\":null}', '{\"validated_on\":\"2021-12-05T16:00:39\"}', NULL),
(292, 300, 'directus_fields', '43', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch\",\"field\":\"customer_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch\",\"field\":\"customer_id\"}', NULL),
(293, 301, 'customer_x_merch', '1', '{\"id\":1,\"id_ticket\":1,\"id_customer\":null,\"customer_id\":2}', '{\"id_customer\":null,\"customer_id\":2}', NULL),
(294, 302, 'customer_x_merch', '2', '{\"id\":2,\"id_ticket\":2,\"id_customer\":null,\"customer_id\":3}', '{\"id_customer\":null,\"customer_id\":3}', NULL),
(295, 303, 'customer_x_merch', '3', '{\"id\":3,\"id_ticket\":3,\"id_customer\":null,\"customer_id\":3}', '{\"id_customer\":null,\"customer_id\":3}', NULL),
(296, 304, 'customer_x_merch', '4', '{\"id\":4,\"id_ticket\":5,\"id_customer\":null,\"customer_id\":9}', '{\"id_customer\":null,\"customer_id\":9}', NULL),
(297, 306, 'customer_x_merch', '5', '{\"id\":5,\"id_ticket\":6,\"id_customer\":null,\"customer_id\":10}', '{\"id_customer\":null,\"customer_id\":10}', NULL),
(298, 307, 'customer_x_merch', '6', '{\"id\":6,\"id_ticket\":7,\"id_customer\":null,\"customer_id\":11}', '{\"id_customer\":null,\"customer_id\":11}', NULL),
(299, 308, 'customer_x_merch', '8', '{\"id\":8,\"id_ticket\":4,\"id_customer\":null,\"customer_id\":4}', '{\"id_customer\":null,\"customer_id\":4}', NULL),
(300, 309, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(301, 310, 'directus_fields', '43', '{\"id\":43,\"collection\":\"customer_x_merch\",\"field\":\"customer_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"customer_id\",\"sort\":2,\"group\":null}', NULL),
(302, 311, 'directus_fields', '15', '{\"id\":15,\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id_ticket\",\"sort\":3,\"group\":null}', NULL),
(303, 312, 'directus_fields', '44', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"merch_eligibility\",\"field\":\"merch_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"merch_eligibility\",\"field\":\"merch_id\"}', NULL),
(304, 313, 'merch_eligibility', '1', '{\"id\":1,\"id_merch\":1,\"quantity\":500,\"id_ticket\":1,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(305, 314, 'merch_eligibility', '2', '{\"id\":2,\"id_merch\":null,\"quantity\":500,\"id_ticket\":1,\"merch_id\":2}', '{\"id_merch\":null,\"merch_id\":2}', NULL),
(306, 315, 'merch_eligibility', '1', '{\"id\":1,\"id_merch\":null,\"quantity\":500,\"id_ticket\":1,\"merch_id\":1}', '{\"id_merch\":null}', NULL),
(307, 316, 'merch_eligibility', '3', '{\"id\":3,\"id_merch\":3,\"quantity\":500,\"id_ticket\":1,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(308, 317, 'merch_eligibility', '4', '{\"id\":4,\"id_merch\":5,\"quantity\":500,\"id_ticket\":1,\"merch_id\":5}', '{\"merch_id\":5}', NULL),
(309, 318, 'merch_eligibility', '5', '{\"id\":5,\"id_merch\":9,\"quantity\":500,\"id_ticket\":1,\"merch_id\":9}', '{\"merch_id\":9}', NULL),
(310, 319, 'merch_eligibility', '6', '{\"id\":6,\"id_merch\":1,\"quantity\":500,\"id_ticket\":2,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(311, 320, 'merch_eligibility', '7', '{\"id\":7,\"id_merch\":2,\"quantity\":500,\"id_ticket\":2,\"merch_id\":2}', '{\"merch_id\":2}', NULL),
(312, 321, 'merch_eligibility', '8', '{\"id\":8,\"id_merch\":3,\"quantity\":500,\"id_ticket\":2,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(313, 322, 'merch_eligibility', '9', '{\"id\":9,\"id_merch\":5,\"quantity\":500,\"id_ticket\":2,\"merch_id\":5}', '{\"merch_id\":5}', NULL),
(314, 323, 'merch_eligibility', '10', '{\"id\":10,\"id_merch\":9,\"quantity\":500,\"id_ticket\":2,\"merch_id\":9}', '{\"merch_id\":9}', NULL),
(315, 324, 'merch_eligibility', '11', '{\"id\":11,\"id_merch\":1,\"quantity\":500,\"id_ticket\":3,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(316, 325, 'merch_eligibility', '12', '{\"id\":12,\"id_merch\":2,\"quantity\":500,\"id_ticket\":3,\"merch_id\":2}', '{\"merch_id\":2}', NULL),
(317, 326, 'merch_eligibility', '13', '{\"id\":13,\"id_merch\":3,\"quantity\":500,\"id_ticket\":3,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(318, 327, 'merch_eligibility', '14', '{\"id\":14,\"id_merch\":5,\"quantity\":500,\"id_ticket\":3,\"merch_id\":5}', '{\"merch_id\":5}', NULL),
(319, 328, 'merch_eligibility', '15', '{\"id\":15,\"id_merch\":9,\"quantity\":500,\"id_ticket\":3,\"merch_id\":9}', '{\"merch_id\":9}', NULL),
(320, 329, 'merch_eligibility', '16', '{\"id\":16,\"id_merch\":1,\"quantity\":500,\"id_ticket\":4,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(321, 330, 'merch_eligibility', '17', '{\"id\":17,\"id_merch\":2,\"quantity\":500,\"id_ticket\":4,\"merch_id\":2}', '{\"merch_id\":2}', NULL),
(322, 331, 'merch_eligibility', '18', '{\"id\":18,\"id_merch\":3,\"quantity\":500,\"id_ticket\":4,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(323, 332, 'merch_eligibility', '19', '{\"id\":19,\"id_merch\":5,\"quantity\":500,\"id_ticket\":4,\"merch_id\":5}', '{\"merch_id\":5}', NULL),
(324, 333, 'merch_eligibility', '20', '{\"id\":20,\"id_merch\":9,\"quantity\":500,\"id_ticket\":4,\"merch_id\":9}', '{\"merch_id\":9}', NULL),
(325, 334, 'merch_eligibility', '21', '{\"id\":21,\"id_merch\":1,\"quantity\":100,\"id_ticket\":5,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(326, 335, 'merch_eligibility', '22', '{\"id\":22,\"id_merch\":2,\"quantity\":100,\"id_ticket\":5,\"merch_id\":2}', '{\"merch_id\":2}', NULL),
(327, 336, 'merch_eligibility', '23', '{\"id\":23,\"id_merch\":3,\"quantity\":100,\"id_ticket\":5,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(328, 337, 'merch_eligibility', '24', '{\"id\":24,\"id_merch\":4,\"quantity\":100,\"id_ticket\":5,\"merch_id\":4}', '{\"merch_id\":4}', NULL),
(329, 338, 'merch_eligibility', '25', '{\"id\":25,\"id_merch\":6,\"quantity\":100,\"id_ticket\":5,\"merch_id\":6}', '{\"merch_id\":6}', NULL),
(330, 339, 'merch_eligibility', '26', '{\"id\":26,\"id_merch\":10,\"quantity\":100,\"id_ticket\":5,\"merch_id\":10}', '{\"merch_id\":10}', NULL),
(331, 340, 'merch_eligibility', '27', '{\"id\":27,\"id_merch\":1,\"quantity\":20,\"id_ticket\":6,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(332, 341, 'merch_eligibility', '28', '{\"id\":28,\"id_merch\":2,\"quantity\":20,\"id_ticket\":6,\"merch_id\":2}', '{\"merch_id\":2}', NULL),
(333, 342, 'merch_eligibility', '29', '{\"id\":29,\"id_merch\":3,\"quantity\":20,\"id_ticket\":6,\"merch_id\":3}', '{\"merch_id\":3}', NULL),
(334, 343, 'merch_eligibility', '30', '{\"id\":30,\"id_merch\":4,\"quantity\":20,\"id_ticket\":6,\"merch_id\":4}', '{\"merch_id\":4}', NULL),
(335, 344, 'merch_eligibility', '31', '{\"id\":31,\"id_merch\":7,\"quantity\":20,\"id_ticket\":6,\"merch_id\":7}', '{\"merch_id\":7}', NULL),
(336, 345, 'merch_eligibility', '32', '{\"id\":32,\"id_merch\":11,\"quantity\":20,\"id_ticket\":6,\"merch_id\":11}', '{\"merch_id\":11}', NULL),
(337, 346, 'merch_eligibility', '33', '{\"id\":33,\"id_merch\":1,\"quantity\":50,\"id_ticket\":7,\"merch_id\":1}', '{\"merch_id\":1}', NULL),
(338, 347, 'merch_eligibility', '34', '{\"id\":34,\"id_merch\":4,\"quantity\":50,\"id_ticket\":7,\"merch_id\":4}', '{\"merch_id\":4}', NULL),
(339, 348, 'merch_eligibility', '35', '{\"id\":35,\"id_merch\":8,\"quantity\":50,\"id_ticket\":7,\"merch_id\":8}', '{\"merch_id\":8}', NULL),
(340, 349, 'merch_eligibility', '36', '{\"id\":36,\"id_merch\":12,\"quantity\":50,\"id_ticket\":7,\"merch_id\":12}', '{\"merch_id\":12}', NULL),
(341, 351, 'directus_fields', '45', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"customer_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"customer_id\"}', NULL),
(342, 352, 'directus_fields', '26', '{\"id\":26,\"collection\":\"registration\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(343, 353, 'directus_fields', '28', '{\"id\":28,\"collection\":\"registration\",\"field\":\"id_customer\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_customer\",\"sort\":2,\"group\":null}', NULL),
(344, 354, 'directus_fields', '27', '{\"id\":27,\"collection\":\"registration\",\"field\":\"id_session\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_session\",\"sort\":3,\"group\":null}', NULL),
(345, 355, 'directus_fields', '29', '{\"id\":29,\"collection\":\"registration\",\"field\":\"validated_on\",\"special\":\"\",\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_on\",\"sort\":4,\"group\":null}', NULL),
(346, 356, 'directus_fields', '30', '{\"id\":30,\"collection\":\"registration\",\"field\":\"validated_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_by\",\"sort\":5,\"group\":null}', NULL),
(347, 357, 'directus_fields', '45', '{\"id\":45,\"collection\":\"registration\",\"field\":\"customer_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"customer_id\",\"sort\":6,\"group\":null}', NULL),
(348, 358, 'directus_fields', '26', '{\"id\":26,\"collection\":\"registration\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(349, 359, 'directus_fields', '45', '{\"id\":45,\"collection\":\"registration\",\"field\":\"customer_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"customer_id\",\"sort\":2,\"group\":null}', NULL),
(350, 360, 'directus_fields', '28', '{\"id\":28,\"collection\":\"registration\",\"field\":\"id_customer\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_customer\",\"sort\":3,\"group\":null}', NULL),
(351, 361, 'directus_fields', '27', '{\"id\":27,\"collection\":\"registration\",\"field\":\"id_session\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_session\",\"sort\":4,\"group\":null}', NULL),
(352, 362, 'directus_fields', '29', '{\"id\":29,\"collection\":\"registration\",\"field\":\"validated_on\",\"special\":\"\",\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_on\",\"sort\":5,\"group\":null}', NULL),
(353, 363, 'directus_fields', '30', '{\"id\":30,\"collection\":\"registration\",\"field\":\"validated_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_by\",\"sort\":6,\"group\":null}', NULL),
(354, 364, 'directus_fields', '46', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"session_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"registration\",\"field\":\"session_id\"}', NULL),
(355, 365, 'directus_fields', '26', '{\"id\":26,\"collection\":\"registration\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(356, 366, 'directus_fields', '45', '{\"id\":45,\"collection\":\"registration\",\"field\":\"customer_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"customer_id\",\"sort\":2,\"group\":null}', NULL),
(357, 367, 'directus_fields', '28', '{\"id\":28,\"collection\":\"registration\",\"field\":\"id_customer\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_customer\",\"sort\":3,\"group\":null}', NULL),
(358, 368, 'directus_fields', '46', '{\"id\":46,\"collection\":\"registration\",\"field\":\"session_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"session_id\",\"sort\":4,\"group\":null}', NULL),
(359, 369, 'directus_fields', '27', '{\"id\":27,\"collection\":\"registration\",\"field\":\"id_session\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"id_session\",\"sort\":5,\"group\":null}', NULL),
(360, 370, 'directus_fields', '29', '{\"id\":29,\"collection\":\"registration\",\"field\":\"validated_on\",\"special\":\"\",\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_on\",\"sort\":6,\"group\":null}', NULL),
(361, 371, 'directus_fields', '30', '{\"id\":30,\"collection\":\"registration\",\"field\":\"validated_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"registration\",\"field\":\"validated_by\",\"sort\":7,\"group\":null}', NULL),
(362, 372, 'registration', '1', '{\"id\":1,\"id_session\":1,\"id_customer\":2,\"validated_on\":\"2021-12-01T13:00:41\",\"validated_by\":null,\"customer_id\":2,\"session_id\":1}', '{\"customer_id\":2,\"session_id\":1}', NULL),
(363, 373, 'registration', '2', '{\"id\":2,\"id_session\":2,\"id_customer\":2,\"validated_on\":\"2021-12-01T13:00:07\",\"validated_by\":null,\"customer_id\":2,\"session_id\":2}', '{\"customer_id\":2,\"session_id\":2}', NULL),
(364, 374, 'registration', '3', '{\"id\":3,\"id_session\":3,\"id_customer\":2,\"validated_on\":\"2021-12-01T16:00:08\",\"validated_by\":null,\"customer_id\":2,\"session_id\":3}', '{\"customer_id\":2,\"session_id\":3}', NULL),
(365, 375, 'registration', '4', '{\"id\":4,\"id_session\":4,\"id_customer\":3,\"validated_on\":\"2021-12-03T10:00:15\",\"validated_by\":null,\"customer_id\":3,\"session_id\":4}', '{\"customer_id\":3,\"session_id\":4}', NULL),
(366, 376, 'registration', '5', '{\"id\":5,\"id_session\":5,\"id_customer\":3,\"validated_on\":\"2021-12-03T12:00:35\",\"validated_by\":null,\"customer_id\":3,\"session_id\":5}', '{\"customer_id\":3,\"session_id\":5}', NULL),
(367, 377, 'registration', '6', '{\"id\":6,\"id_session\":6,\"id_customer\":3,\"validated_on\":\"2021-12-03T16:00:34\",\"validated_by\":null,\"customer_id\":3,\"session_id\":6}', '{\"customer_id\":3,\"session_id\":6}', NULL),
(368, 378, 'registration', '7', '{\"id\":7,\"id_session\":7,\"id_customer\":3,\"validated_on\":\"2021-12-05T10:00:18\",\"validated_by\":null,\"customer_id\":3,\"session_id\":7}', '{\"customer_id\":3,\"session_id\":7}', NULL),
(369, 379, 'registration', '8', '{\"id\":8,\"id_session\":8,\"id_customer\":3,\"validated_on\":\"2021-12-05T13:00:53\",\"validated_by\":null,\"customer_id\":3,\"session_id\":8}', '{\"customer_id\":3,\"session_id\":8}', NULL),
(370, 380, 'registration', '9', '{\"id\":9,\"id_session\":9,\"id_customer\":3,\"validated_on\":\"2021-12-05T16:00:51\",\"validated_by\":null,\"customer_id\":3,\"session_id\":9}', '{\"customer_id\":3,\"session_id\":9}', NULL),
(371, 381, 'registration', '10', '{\"id\":10,\"id_session\":1,\"id_customer\":9,\"validated_on\":\"2021-12-01T10:00:34\",\"validated_by\":null,\"customer_id\":9,\"session_id\":1}', '{\"customer_id\":9,\"session_id\":1}', NULL),
(372, 382, 'registration', '11', '{\"id\":11,\"id_session\":2,\"id_customer\":9,\"validated_on\":\"2021-12-01T13:00:38\",\"validated_by\":null,\"customer_id\":9,\"session_id\":2}', '{\"customer_id\":9,\"session_id\":2}', NULL),
(373, 383, 'registration', '12', '{\"id\":12,\"id_session\":3,\"id_customer\":9,\"validated_on\":\"2021-12-01T16:00:18\",\"validated_by\":null,\"customer_id\":9,\"session_id\":3}', '{\"customer_id\":9,\"session_id\":3}', NULL),
(374, 384, 'registration', '13', '{\"id\":13,\"id_session\":4,\"id_customer\":9,\"validated_on\":\"2021-12-03T10:00:36\",\"validated_by\":null,\"customer_id\":9,\"session_id\":4}', '{\"customer_id\":9,\"session_id\":4}', NULL),
(375, 385, 'registration', '14', '{\"id\":14,\"id_session\":5,\"id_customer\":9,\"validated_on\":\"2021-12-03T12:00:08\",\"validated_by\":null,\"customer_id\":9,\"session_id\":5}', '{\"customer_id\":9,\"session_id\":5}', NULL),
(376, 386, 'registration', '15', '{\"id\":15,\"id_session\":6,\"id_customer\":9,\"validated_on\":\"2021-12-03T16:00:04\",\"validated_by\":null,\"customer_id\":9,\"session_id\":6}', '{\"customer_id\":9,\"session_id\":6}', NULL),
(377, 387, 'registration', '16', '{\"id\":16,\"id_session\":7,\"id_customer\":9,\"validated_on\":\"2021-12-05T13:00:59\",\"validated_by\":null,\"customer_id\":9,\"session_id\":7}', '{\"customer_id\":9,\"session_id\":7}', NULL),
(378, 388, 'registration', '17', '{\"id\":17,\"id_session\":8,\"id_customer\":9,\"validated_on\":\"2021-12-05T13:00:20\",\"validated_by\":null,\"customer_id\":9,\"session_id\":8}', '{\"customer_id\":9,\"session_id\":8}', NULL),
(379, 389, 'registration', '18', '{\"id\":18,\"id_session\":9,\"id_customer\":9,\"validated_on\":\"2021-12-05T16:00:14\",\"validated_by\":null,\"customer_id\":9,\"session_id\":9}', '{\"customer_id\":9,\"session_id\":9}', NULL),
(380, 390, 'registration', '19', '{\"id\":19,\"id_session\":1,\"id_customer\":10,\"validated_on\":\"2021-12-01T12:00:14\",\"validated_by\":null,\"customer_id\":10,\"session_id\":1}', '{\"customer_id\":10,\"session_id\":1}', NULL),
(381, 391, 'registration', '20', '{\"id\":20,\"id_session\":2,\"id_customer\":10,\"validated_on\":\"2021-12-01T13:00:10\",\"validated_by\":null,\"customer_id\":10,\"session_id\":2}', '{\"customer_id\":10,\"session_id\":2}', NULL),
(382, 392, 'registration', '21', '{\"id\":21,\"id_session\":3,\"id_customer\":10,\"validated_on\":\"2021-12-01T16:00:45\",\"validated_by\":null,\"customer_id\":10,\"session_id\":3}', '{\"customer_id\":10,\"session_id\":3}', NULL),
(383, 393, 'registration', '22', '{\"id\":22,\"id_session\":4,\"id_customer\":10,\"validated_on\":\"2021-12-03T10:00:01\",\"validated_by\":null,\"customer_id\":10,\"session_id\":4}', '{\"customer_id\":10,\"session_id\":4}', NULL),
(384, 394, 'registration', '23', '{\"id\":23,\"id_session\":5,\"id_customer\":10,\"validated_on\":\"2021-12-03T12:00:03\",\"validated_by\":null,\"customer_id\":10,\"session_id\":5}', '{\"customer_id\":10,\"session_id\":5}', NULL),
(385, 395, 'registration', '24', '{\"id\":24,\"id_session\":6,\"id_customer\":10,\"validated_on\":\"2021-12-03T16:00:35\",\"validated_by\":null,\"customer_id\":10,\"session_id\":6}', '{\"customer_id\":10,\"session_id\":6}', NULL),
(386, 396, 'registration', '25', '{\"id\":25,\"id_session\":7,\"id_customer\":10,\"validated_on\":\"2021-12-05T10:00:23\",\"validated_by\":null,\"customer_id\":10,\"session_id\":7}', '{\"customer_id\":10,\"session_id\":7}', NULL),
(387, 397, 'registration', '26', '{\"id\":26,\"id_session\":8,\"id_customer\":10,\"validated_on\":\"2021-12-05T13:00:50\",\"validated_by\":null,\"customer_id\":10,\"session_id\":8}', '{\"customer_id\":10,\"session_id\":8}', NULL),
(388, 398, 'registration', '27', '{\"id\":27,\"id_session\":9,\"id_customer\":10,\"validated_on\":null,\"validated_by\":null,\"customer_id\":10,\"session_id\":9}', '{\"customer_id\":10,\"session_id\":9}', NULL),
(389, 399, 'registration', '38', '{\"id\":38,\"id_session\":9,\"id_customer\":4,\"validated_on\":\"2021-12-05T16:00:39\",\"validated_by\":null,\"customer_id\":4,\"session_id\":9}', '{\"customer_id\":4,\"session_id\":9}', NULL),
(390, 400, 'registration', '37', '{\"id\":37,\"id_session\":8,\"id_customer\":4,\"validated_on\":\"2021-12-05T13:00:15\",\"validated_by\":null,\"customer_id\":4,\"session_id\":8}', '{\"customer_id\":4,\"session_id\":8}', NULL),
(391, 401, 'registration', '36', '{\"id\":36,\"id_session\":7,\"id_customer\":4,\"validated_on\":\"2021-12-05T10:00:49\",\"validated_by\":null,\"customer_id\":4,\"session_id\":7}', '{\"customer_id\":4,\"session_id\":7}', NULL),
(392, 402, 'registration', '35', '{\"id\":35,\"id_session\":6,\"id_customer\":4,\"validated_on\":\"2021-12-03T16:00:00\",\"validated_by\":null,\"customer_id\":4,\"session_id\":6}', '{\"customer_id\":4,\"session_id\":6}', NULL),
(393, 403, 'registration', '34', '{\"id\":34,\"id_session\":5,\"id_customer\":4,\"validated_on\":\"2021-12-03T12:00:47\",\"validated_by\":null,\"customer_id\":4,\"session_id\":5}', '{\"customer_id\":4,\"session_id\":5}', NULL),
(394, 404, 'registration', '33', '{\"id\":33,\"id_session\":4,\"id_customer\":4,\"validated_on\":\"2021-12-03T10:00:25\",\"validated_by\":null,\"customer_id\":4,\"session_id\":4}', '{\"customer_id\":4,\"session_id\":4}', NULL),
(395, 406, 'registration', '32', '{\"id\":32,\"id_session\":3,\"id_customer\":4,\"validated_on\":\"2021-12-01T16:00:41\",\"validated_by\":null,\"customer_id\":4,\"session_id\":3}', '{\"customer_id\":4,\"session_id\":3}', NULL),
(396, 407, 'registration', '31', '{\"id\":31,\"id_session\":2,\"id_customer\":4,\"validated_on\":\"2021-12-01T13:00:33\",\"validated_by\":null,\"customer_id\":4,\"session_id\":2}', '{\"customer_id\":4,\"session_id\":2}', NULL),
(397, 408, 'registration', '30', '{\"id\":30,\"id_session\":1,\"id_customer\":4,\"validated_on\":\"2021-12-01T12:00:04\",\"validated_by\":null,\"customer_id\":4,\"session_id\":1}', '{\"customer_id\":4,\"session_id\":1}', NULL),
(398, 409, 'registration', '29', '{\"id\":29,\"id_session\":9,\"id_customer\":11,\"validated_on\":null,\"validated_by\":null,\"customer_id\":11,\"session_id\":9}', '{\"customer_id\":11,\"session_id\":9}', NULL),
(399, 410, 'registration', '28', '{\"id\":28,\"id_session\":1,\"id_customer\":11,\"validated_on\":\"2021-12-01T12:00:41\",\"validated_by\":null,\"customer_id\":11,\"session_id\":1}', '{\"customer_id\":11,\"session_id\":1}', NULL),
(400, 411, 'directus_fields', '21', '{\"id\":21,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(401, 412, 'directus_fields', '23', '{\"id\":23,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"sort\":2,\"group\":null}', NULL),
(402, 413, 'directus_fields', '22', '{\"id\":22,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"sort\":3,\"group\":null}', NULL),
(403, 414, 'directus_fields', '24', '{\"id\":24,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"special\":null,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"sort\":4,\"group\":null}', NULL),
(404, 415, 'directus_fields', '25', '{\"id\":25,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"sort\":5,\"group\":null}', NULL),
(405, 416, 'directus_fields', '47', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\"}', NULL),
(406, 417, 'directus_fields', '21', '{\"id\":21,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(407, 418, 'directus_fields', '47', '{\"id\":47,\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\",\"sort\":2,\"group\":null}', NULL),
(408, 419, 'directus_fields', '23', '{\"id\":23,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"sort\":3,\"group\":null}', NULL),
(409, 420, 'directus_fields', '22', '{\"id\":22,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"sort\":4,\"group\":null}', NULL),
(410, 421, 'directus_fields', '24', '{\"id\":24,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"special\":null,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"sort\":5,\"group\":null}', NULL),
(411, 422, 'directus_fields', '25', '{\"id\":25,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"sort\":6,\"group\":null}', NULL),
(412, 423, 'directus_fields', '48', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"merch_eligible_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"customer_x_merch_eligible\",\"field\":\"merch_eligible_id\"}', NULL),
(413, 424, 'directus_fields', '21', '{\"id\":21,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(414, 425, 'directus_fields', '47', '{\"id\":47,\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"customer_x_merch_id\",\"sort\":2,\"group\":null}', NULL),
(415, 426, 'directus_fields', '23', '{\"id\":23,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_customer_x_merch\",\"sort\":3,\"group\":null}', NULL),
(416, 427, 'directus_fields', '48', '{\"id\":48,\"collection\":\"customer_x_merch_eligible\",\"field\":\"merch_eligible_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":4,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"merch_eligible_id\",\"sort\":4,\"group\":null}', NULL),
(417, 428, 'directus_fields', '22', '{\"id\":22,\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":5,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"id_merch_eligible\",\"sort\":5,\"group\":null}', NULL),
(418, 429, 'directus_fields', '24', '{\"id\":24,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"special\":null,\"interface\":null,\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":6,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_on\",\"sort\":6,\"group\":null}', NULL),
(419, 430, 'directus_fields', '25', '{\"id\":25,\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":7,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch_eligible\",\"field\":\"given_by\",\"sort\":7,\"group\":null}', NULL),
(420, 431, 'registration', '29', '{\"id\":29,\"id_session\":9,\"id_customer\":11,\"validated_on\":\"2021-12-05T16:00:33\",\"validated_by\":null,\"customer_id\":11,\"session_id\":9}', '{\"validated_on\":\"2021-12-05T16:00:33\"}', NULL),
(421, 432, 'customer_x_merch_eligible', '1', '{\"id\":1,\"id_merch_eligible\":1,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":1,\"merch_eligible_id\":1}', '{\"customer_x_merch_id\":1,\"merch_eligible_id\":1}', NULL),
(422, 433, 'registration', '27', '{\"id\":27,\"validated_on\":\"2021-12-05T16:00:10\",\"validated_by\":null,\"customer_id\":10,\"session_id\":9}', '{\"validated_on\":\"2021-12-05T16:00:10\"}', NULL),
(423, 434, 'customer_x_merch_eligible', '36', '{\"id\":36,\"id_merch_eligible\":20,\"id_customer_x_merch\":8,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":8,\"merch_eligible_id\":20}', '{\"customer_x_merch_id\":8,\"merch_eligible_id\":20}', NULL),
(424, 435, 'customer_x_merch_eligible', '35', '{\"id\":35,\"id_merch_eligible\":19,\"id_customer_x_merch\":8,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":8,\"merch_eligible_id\":19}', '{\"customer_x_merch_id\":8,\"merch_eligible_id\":19}', NULL),
(425, 436, 'customer_x_merch_eligible', '34', '{\"id\":34,\"id_merch_eligible\":18,\"id_customer_x_merch\":8,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":8,\"merch_eligible_id\":18}', '{\"customer_x_merch_id\":8,\"merch_eligible_id\":18}', NULL),
(426, 437, 'customer_x_merch_eligible', '2', '{\"id\":2,\"id_merch_eligible\":2,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":1,\"merch_eligible_id\":2}', '{\"customer_x_merch_id\":1,\"merch_eligible_id\":2}', NULL),
(427, 438, 'customer_x_merch_eligible', '33', '{\"id\":33,\"id_merch_eligible\":17,\"id_customer_x_merch\":8,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":8,\"merch_eligible_id\":17}', '{\"customer_x_merch_id\":8,\"merch_eligible_id\":17}', NULL),
(428, 439, 'customer_x_merch_eligible', '3', '{\"id\":3,\"id_merch_eligible\":3,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":1,\"merch_eligible_id\":3}', '{\"customer_x_merch_id\":1,\"merch_eligible_id\":3}', NULL),
(429, 440, 'customer_x_merch_eligible', '32', '{\"id\":32,\"id_merch_eligible\":16,\"id_customer_x_merch\":8,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":8,\"merch_eligible_id\":16}', '{\"customer_x_merch_id\":8,\"merch_eligible_id\":16}', NULL),
(430, 441, 'customer_x_merch_eligible', '4', '{\"id\":4,\"id_merch_eligible\":4,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":1,\"merch_eligible_id\":4}', '{\"customer_x_merch_id\":1,\"merch_eligible_id\":4}', NULL),
(431, 442, 'customer_x_merch_eligible', '31', '{\"id\":31,\"id_merch_eligible\":36,\"id_customer_x_merch\":6,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":6,\"merch_eligible_id\":36}', '{\"customer_x_merch_id\":6,\"merch_eligible_id\":36}', NULL),
(432, 443, 'customer_x_merch_eligible', '5', '{\"id\":5,\"id_merch_eligible\":5,\"id_customer_x_merch\":1,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":1,\"merch_eligible_id\":5}', '{\"customer_x_merch_id\":1,\"merch_eligible_id\":5}', NULL),
(433, 444, 'customer_x_merch_eligible', '30', '{\"id\":30,\"id_merch_eligible\":35,\"id_customer_x_merch\":6,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":6,\"merch_eligible_id\":35}', '{\"customer_x_merch_id\":6,\"merch_eligible_id\":35}', NULL),
(434, 445, 'customer_x_merch_eligible', '6', '{\"id\":6,\"id_merch_eligible\":6,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":2,\"merch_eligible_id\":6}', '{\"customer_x_merch_id\":2,\"merch_eligible_id\":6}', NULL),
(435, 446, 'customer_x_merch_eligible', '29', '{\"id\":29,\"id_merch_eligible\":34,\"id_customer_x_merch\":6,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":6,\"merch_eligible_id\":34}', '{\"customer_x_merch_id\":6,\"merch_eligible_id\":34}', NULL),
(436, 447, 'customer_x_merch_eligible', '7', '{\"id\":7,\"id_merch_eligible\":7,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":2,\"merch_eligible_id\":7}', '{\"customer_x_merch_id\":2,\"merch_eligible_id\":7}', NULL),
(437, 448, 'customer_x_merch_eligible', '28', '{\"id\":28,\"id_merch_eligible\":33,\"id_customer_x_merch\":6,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":6,\"merch_eligible_id\":33}', '{\"customer_x_merch_id\":6,\"merch_eligible_id\":33}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(438, 449, 'customer_x_merch_eligible', '8', '{\"id\":8,\"id_merch_eligible\":8,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":2,\"merch_eligible_id\":8}', '{\"customer_x_merch_id\":2,\"merch_eligible_id\":8}', NULL),
(439, 450, 'customer_x_merch_eligible', '27', '{\"id\":27,\"id_merch_eligible\":32,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":32}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":32}', NULL),
(440, 451, 'customer_x_merch_eligible', '9', '{\"id\":9,\"id_merch_eligible\":9,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":2,\"merch_eligible_id\":9}', '{\"customer_x_merch_id\":2,\"merch_eligible_id\":9}', NULL),
(441, 452, 'customer_x_merch_eligible', '26', '{\"id\":26,\"id_merch_eligible\":31,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":31}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":31}', NULL),
(442, 453, 'customer_x_merch_eligible', '10', '{\"id\":10,\"id_merch_eligible\":10,\"id_customer_x_merch\":2,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":2,\"merch_eligible_id\":10}', '{\"customer_x_merch_id\":2,\"merch_eligible_id\":10}', NULL),
(443, 454, 'customer_x_merch_eligible', '25', '{\"id\":25,\"id_merch_eligible\":30,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":30}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":30}', NULL),
(444, 455, 'customer_x_merch_eligible', '11', '{\"id\":11,\"id_merch_eligible\":11,\"id_customer_x_merch\":3,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":3,\"merch_eligible_id\":11}', '{\"customer_x_merch_id\":3,\"merch_eligible_id\":11}', NULL),
(445, 456, 'customer_x_merch_eligible', '12', '{\"id\":12,\"id_merch_eligible\":12,\"id_customer_x_merch\":3,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":3,\"merch_eligible_id\":12}', '{\"customer_x_merch_id\":3,\"merch_eligible_id\":12}', NULL),
(446, 457, 'customer_x_merch_eligible', '24', '{\"id\":24,\"id_merch_eligible\":29,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":29}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":29}', NULL),
(447, 458, 'customer_x_merch_eligible', '23', '{\"id\":23,\"id_merch_eligible\":28,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":28}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":28}', NULL),
(448, 459, 'customer_x_merch_eligible', '13', '{\"id\":13,\"id_merch_eligible\":13,\"id_customer_x_merch\":3,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":3,\"merch_eligible_id\":13}', '{\"customer_x_merch_id\":3,\"merch_eligible_id\":13}', NULL),
(449, 460, 'customer_x_merch_eligible', '22', '{\"id\":22,\"id_merch_eligible\":27,\"id_customer_x_merch\":5,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":5,\"merch_eligible_id\":27}', '{\"customer_x_merch_id\":5,\"merch_eligible_id\":27}', NULL),
(450, 461, 'customer_x_merch_eligible', '21', '{\"id\":21,\"id_merch_eligible\":26,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":26}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":26}', NULL),
(451, 462, 'customer_x_merch_eligible', '14', '{\"id\":14,\"id_merch_eligible\":14,\"id_customer_x_merch\":3,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":3,\"merch_eligible_id\":14}', '{\"customer_x_merch_id\":3,\"merch_eligible_id\":14}', NULL),
(452, 463, 'customer_x_merch_eligible', '20', '{\"id\":20,\"id_merch_eligible\":25,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":25}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":25}', NULL),
(453, 464, 'customer_x_merch_eligible', '15', '{\"id\":15,\"id_merch_eligible\":15,\"id_customer_x_merch\":3,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":3,\"merch_eligible_id\":15}', '{\"customer_x_merch_id\":3,\"merch_eligible_id\":15}', NULL),
(454, 465, 'customer_x_merch_eligible', '19', '{\"id\":19,\"id_merch_eligible\":24,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":24}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":24}', NULL),
(455, 466, 'customer_x_merch_eligible', '18', '{\"id\":18,\"id_merch_eligible\":23,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":23}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":23}', NULL),
(456, 467, 'customer_x_merch_eligible', '16', '{\"id\":16,\"id_merch_eligible\":21,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', NULL),
(457, 468, 'customer_x_merch_eligible', '17', '{\"id\":17,\"id_merch_eligible\":22,\"id_customer_x_merch\":4,\"given_on\":null,\"given_by\":null,\"customer_x_merch_id\":4,\"merch_eligible_id\":22}', '{\"customer_x_merch_id\":4,\"merch_eligible_id\":22}', NULL),
(458, 469, 'directus_fields', '49', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"certificate\",\"field\":\"registration_id\"}', '{\"hidden\":false,\"interface\":\"select-dropdown-m2o\",\"readonly\":false,\"collection\":\"certificate\",\"field\":\"registration_id\"}', NULL),
(459, 470, 'directus_fields', '31', '{\"id\":31,\"collection\":\"certificate\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"certificate\",\"field\":\"id\",\"sort\":1,\"group\":null}', NULL),
(460, 471, 'directus_fields', '49', '{\"id\":49,\"collection\":\"certificate\",\"field\":\"registration_id\",\"special\":null,\"interface\":\"select-dropdown-m2o\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":2,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"certificate\",\"field\":\"registration_id\",\"sort\":2,\"group\":null}', NULL),
(461, 472, 'directus_fields', '32', '{\"id\":32,\"collection\":\"certificate\",\"field\":\"id_registration\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":3,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"certificate\",\"field\":\"id_registration\",\"sort\":3,\"group\":null}', NULL),
(462, 473, 'certificate', '38', '{\"id\":38,\"id_registration\":38,\"registration_id\":38}', '{\"registration_id\":38}', NULL),
(463, 474, 'certificate', '1', '{\"id\":1,\"id_registration\":1,\"registration_id\":1}', '{\"registration_id\":1}', NULL),
(464, 475, 'certificate', '37', '{\"id\":37,\"id_registration\":37,\"registration_id\":37}', '{\"registration_id\":37}', NULL),
(465, 476, 'certificate', '2', '{\"id\":2,\"id_registration\":2,\"registration_id\":2}', '{\"registration_id\":2}', NULL),
(466, 477, 'certificate', '36', '{\"id\":36,\"id_registration\":36,\"registration_id\":36}', '{\"registration_id\":36}', NULL),
(467, 478, 'certificate', '35', '{\"id\":35,\"id_registration\":35,\"registration_id\":35}', '{\"registration_id\":35}', NULL),
(468, 479, 'certificate', '3', '{\"id\":3,\"id_registration\":3,\"registration_id\":3}', '{\"registration_id\":3}', NULL),
(469, 480, 'certificate', '34', '{\"id\":34,\"id_registration\":34,\"registration_id\":34}', '{\"registration_id\":34}', NULL),
(470, 481, 'certificate', '33', '{\"id\":33,\"id_registration\":33,\"registration_id\":33}', '{\"registration_id\":33}', NULL),
(471, 482, 'certificate', '4', '{\"id\":4,\"id_registration\":4,\"registration_id\":4}', '{\"registration_id\":4}', NULL),
(472, 483, 'certificate', '32', '{\"id\":32,\"id_registration\":32,\"registration_id\":32}', '{\"registration_id\":32}', NULL),
(473, 484, 'certificate', '5', '{\"id\":5,\"id_registration\":5,\"registration_id\":5}', '{\"registration_id\":5}', NULL),
(474, 485, 'certificate', '31', '{\"id\":31,\"id_registration\":31,\"registration_id\":31}', '{\"registration_id\":31}', NULL),
(475, 486, 'certificate', '30', '{\"id\":30,\"id_registration\":30,\"registration_id\":30}', '{\"registration_id\":30}', NULL),
(476, 487, 'certificate', '6', '{\"id\":6,\"id_registration\":6,\"registration_id\":6}', '{\"registration_id\":6}', NULL),
(477, 488, 'certificate', '29', '{\"id\":29,\"id_registration\":29,\"registration_id\":29}', '{\"registration_id\":29}', NULL),
(478, 489, 'certificate', '28', '{\"id\":28,\"id_registration\":28,\"registration_id\":28}', '{\"registration_id\":28}', NULL),
(479, 490, 'certificate', '7', '{\"id\":7,\"id_registration\":7,\"registration_id\":7}', '{\"registration_id\":7}', NULL),
(480, 491, 'certificate', '27', '{\"id\":27,\"id_registration\":27,\"registration_id\":27}', '{\"registration_id\":27}', NULL),
(481, 492, 'certificate', '39', '{\"registration_id\":8}', '{\"registration_id\":8}', NULL),
(482, 493, 'certificate', '26', '{\"id\":26,\"id_registration\":26,\"registration_id\":26}', '{\"registration_id\":26}', NULL),
(483, 494, 'certificate', '8', '{\"id\":8,\"id_registration\":8,\"registration_id\":8}', '{\"registration_id\":8}', NULL),
(484, 495, 'certificate', '25', '{\"id\":25,\"id_registration\":25,\"registration_id\":25}', '{\"registration_id\":25}', NULL),
(485, 496, 'certificate', '9', '{\"id\":9,\"id_registration\":9,\"registration_id\":9}', '{\"registration_id\":9}', NULL),
(486, 497, 'certificate', '24', '{\"id\":24,\"id_registration\":24,\"registration_id\":24}', '{\"registration_id\":24}', NULL),
(487, 498, 'certificate', '23', '{\"id\":23,\"id_registration\":23,\"registration_id\":23}', '{\"registration_id\":23}', NULL),
(488, 499, 'certificate', '22', '{\"id\":22,\"id_registration\":22,\"registration_id\":22}', '{\"registration_id\":22}', NULL),
(489, 500, 'certificate', '10', '{\"id\":10,\"id_registration\":10,\"registration_id\":10}', '{\"registration_id\":10}', NULL),
(490, 501, 'certificate', '21', '{\"id\":21,\"id_registration\":21,\"registration_id\":21}', '{\"registration_id\":21}', NULL),
(491, 502, 'certificate', '11', '{\"id\":11,\"id_registration\":11,\"registration_id\":11}', '{\"registration_id\":11}', NULL),
(492, 503, 'certificate', '20', '{\"id\":20,\"id_registration\":20,\"registration_id\":20}', '{\"registration_id\":20}', NULL),
(493, 504, 'certificate', '19', '{\"id\":19,\"id_registration\":19,\"registration_id\":19}', '{\"registration_id\":19}', NULL),
(494, 505, 'certificate', '12', '{\"id\":12,\"id_registration\":12,\"registration_id\":12}', '{\"registration_id\":12}', NULL),
(495, 506, 'certificate', '13', '{\"id\":13,\"id_registration\":13,\"registration_id\":13}', '{\"registration_id\":13}', NULL),
(496, 508, 'certificate', '14', '{\"id\":14,\"id_registration\":14,\"registration_id\":14}', '{\"registration_id\":14}', NULL),
(497, 509, 'certificate', '18', '{\"id\":18,\"id_registration\":18,\"registration_id\":18}', '{\"registration_id\":18}', NULL),
(498, 510, 'certificate', '17', '{\"id\":17,\"id_registration\":17,\"registration_id\":17}', '{\"registration_id\":17}', NULL),
(499, 511, 'certificate', '15', '{\"id\":15,\"id_registration\":15,\"registration_id\":15}', '{\"registration_id\":15}', NULL),
(500, 512, 'certificate', '16', '{\"id\":16,\"id_registration\":16,\"registration_id\":16}', '{\"registration_id\":16}', NULL),
(501, 513, 'directus_permissions', '1', '{\"role\":null,\"collection\":\"certificate\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"certificate\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(502, 514, 'directus_permissions', '2', '{\"role\":null,\"collection\":\"customer\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"customer\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(503, 515, 'directus_permissions', '3', '{\"role\":null,\"collection\":\"customer_x_merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"customer_x_merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(504, 516, 'directus_permissions', '4', '{\"role\":null,\"collection\":\"customer_x_merch_eligible\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"customer_x_merch_eligible\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(505, 517, 'directus_permissions', '5', '{\"role\":null,\"collection\":\"merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(506, 518, 'directus_permissions', '6', '{\"role\":null,\"collection\":\"merch_eligibility\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"merch_eligibility\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(507, 519, 'directus_permissions', '7', '{\"role\":null,\"collection\":\"registration\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"registration\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(508, 520, 'directus_permissions', '8', '{\"role\":null,\"collection\":\"session\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"session\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(509, 521, 'directus_webhooks', '1', '{\"name\":\"POST Customer X Merch\",\"url\":\"http://192.168.18.70:8055/admin/collections/customer_x_merch\",\"actions\":\"create\",\"collections\":\"customer_x_merch\"}', '{\"name\":\"POST Customer X Merch\",\"url\":\"http://192.168.18.70:8055/admin/collections/customer_x_merch\",\"actions\":\"create\",\"collections\":\"customer_x_merch\"}', NULL),
(510, 522, 'customer_x_merch', '9', '{\"customer_id\":1,\"id_ticket\":3}', '{\"customer_id\":1,\"id_ticket\":3}', NULL),
(511, 523, 'directus_webhooks', '1', '{\"id\":1,\"name\":\"POST Customer X Merch\",\"method\":\"POST\",\"url\":\"http://192.168.18.70:8055/items/customer_x_merch?\",\"status\":\"active\",\"data\":true,\"actions\":[\"create\"],\"collections\":[\"customer_x_merch\"]}', '{\"url\":\"http://192.168.18.70:8055/items/customer_x_merch?\"}', NULL),
(512, 524, 'customer_x_merch', '10', '{\"customer_id\":5,\"id_ticket\":2}', '{\"customer_id\":5,\"id_ticket\":2}', NULL),
(513, 527, 'directus_webhooks', '1', '{\"id\":1,\"name\":\"POST Customer X Merch\",\"method\":\"POST\",\"url\":\"http://192.168.18.70:8055/admin/collections/customer_x_merch\",\"status\":\"active\",\"data\":true,\"actions\":[\"create\"],\"collections\":[\"customer_x_merch\"]}', '{\"url\":\"http://192.168.18.70:8055/admin/collections/customer_x_merch\"}', NULL),
(514, 528, 'customer_x_merch', '11', '{\"customer_id\":1,\"id_ticket\":3}', '{\"customer_id\":1,\"id_ticket\":3}', NULL),
(515, 529, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":true,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(516, 530, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(517, 531, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(518, 532, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":true,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(519, 533, 'directus_fields', '14', '{\"id\":14,\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', '{\"collection\":\"customer_x_merch\",\"field\":\"id\",\"special\":null,\"interface\":\"input\",\"options\":null,\"display\":null,\"display_options\":null,\"readonly\":false,\"hidden\":false,\"sort\":1,\"width\":\"full\",\"translations\":null,\"note\":null,\"conditions\":null,\"required\":false,\"group\":null}', NULL),
(520, 534, 'directus_roles', '29513bb4-a4e1-45b6-b41d-6beb3ff53589', '{\"name\":\"Webhook\",\"admin_access\":false,\"app_access\":true}', '{\"name\":\"Webhook\",\"admin_access\":false,\"app_access\":true}', NULL),
(521, 535, 'directus_permissions', '9', '{\"collection\":\"directus_files\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_files\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(522, 536, 'directus_permissions', '10', '{\"collection\":\"directus_files\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_files\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(523, 537, 'directus_permissions', '11', '{\"collection\":\"directus_files\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_files\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(524, 538, 'directus_permissions', '12', '{\"collection\":\"directus_files\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_files\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(525, 539, 'directus_permissions', '13', '{\"collection\":\"directus_dashboards\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_dashboards\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(526, 540, 'directus_permissions', '14', '{\"collection\":\"directus_dashboards\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_dashboards\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(527, 541, 'directus_permissions', '15', '{\"collection\":\"directus_dashboards\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_dashboards\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(528, 542, 'directus_permissions', '16', '{\"collection\":\"directus_dashboards\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_dashboards\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(529, 543, 'directus_permissions', '17', '{\"collection\":\"directus_panels\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_panels\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(530, 544, 'directus_permissions', '18', '{\"collection\":\"directus_panels\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_panels\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(531, 545, 'directus_permissions', '19', '{\"collection\":\"directus_panels\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_panels\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(532, 546, 'directus_permissions', '20', '{\"collection\":\"directus_panels\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_panels\",\"action\":\"delete\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(533, 547, 'directus_permissions', '21', '{\"collection\":\"directus_folders\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_folders\",\"action\":\"create\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(534, 548, 'directus_permissions', '22', '{\"collection\":\"directus_folders\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_folders\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(535, 549, 'directus_permissions', '23', '{\"collection\":\"directus_folders\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_folders\",\"action\":\"update\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(536, 550, 'directus_permissions', '24', '{\"collection\":\"directus_folders\",\"action\":\"delete\",\"permissions\":{},\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_folders\",\"action\":\"delete\",\"permissions\":{},\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(537, 551, 'directus_permissions', '25', '{\"collection\":\"directus_users\",\"action\":\"read\",\"permissions\":{},\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_users\",\"action\":\"read\",\"permissions\":{},\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(538, 552, 'directus_permissions', '26', '{\"collection\":\"directus_users\",\"action\":\"update\",\"permissions\":{\"id\":{\"_eq\":\"$CURRENT_USER\"}},\"fields\":\"first_name,last_name,email,password,location,title,description,avatar,language,theme\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_users\",\"action\":\"update\",\"permissions\":{\"id\":{\"_eq\":\"$CURRENT_USER\"}},\"fields\":\"first_name,last_name,email,password,location,title,description,avatar,language,theme\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(539, 553, 'directus_permissions', '27', '{\"collection\":\"directus_roles\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"collection\":\"directus_roles\",\"action\":\"read\",\"permissions\":{},\"fields\":\"*\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', NULL),
(540, 554, 'directus_permissions', '28', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"certificate\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"certificate\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(541, 555, 'directus_permissions', '29', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(542, 556, 'directus_permissions', '30', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(543, 557, 'directus_permissions', '31', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch_eligible\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch_eligible\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(544, 558, 'directus_permissions', '32', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(545, 559, 'directus_permissions', '33', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"certificate\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"certificate\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(546, 560, 'directus_permissions', '34', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(547, 561, 'directus_permissions', '35', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(548, 562, 'directus_permissions', '36', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch_eligible\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"customer_x_merch_eligible\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(549, 563, 'directus_permissions', '37', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(550, 564, 'directus_permissions', '38', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"registration\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"registration\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(551, 565, 'directus_permissions', '39', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"session\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"session\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(552, 566, 'directus_permissions', '40', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch_eligibility\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch_eligibility\",\"action\":\"create\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(553, 567, 'directus_permissions', '41', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch_eligibility\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"merch_eligibility\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(554, 568, 'directus_permissions', '42', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"registration\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"registration\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(555, 569, 'directus_permissions', '43', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"session\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"collection\":\"session\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(556, 571, 'directus_users', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', '{\"first_name\":\"Muhammad\",\"last_name\":\"Rafi\",\"email\":\"sultan@example.com\",\"password\":\"**********\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', '{\"first_name\":\"Muhammad\",\"last_name\":\"Rafi\",\"email\":\"sultan@example.com\",\"password\":\"**********\",\"role\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\"}', 557),
(557, 572, 'directus_roles', '29513bb4-a4e1-45b6-b41d-6beb3ff53589', '{\"id\":\"29513bb4-a4e1-45b6-b41d-6beb3ff53589\",\"name\":\"Webhook\",\"icon\":\"supervised_user_circle\",\"description\":null,\"ip_access\":null,\"enforce_tfa\":false,\"collection_list\":null,\"admin_access\":false,\"app_access\":true,\"users\":[\"d322482d-320f-45a5-a27e-a5eb1fcdb349\"]}', '{}', NULL),
(558, 610, 'directus_users', 'd322482d-320f-45a5-a27e-a5eb1fcdb349', '{\"id\":\"d322482d-320f-45a5-a27e-a5eb1fcdb349\",\"first_name\":\"Muhammad\",\"last_name\":\"Rafi\",\"email\":\"sultan@example.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":null,\"language\":\"en-US\",\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"suspended\",\"role\":null,\"token\":null,\"last_access\":\"2021-10-28T09:09:58.000Z\",\"last_page\":\"/users/d322482d-320f-45a5-a27e-a5eb1fcdb349\",\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null}', '{\"status\":\"suspended\",\"role\":null}', NULL),
(559, 612, 'directus_webhooks', '1', '{\"id\":1,\"name\":\"POST Customer X Merch\",\"method\":\"POST\",\"url\":\"google.com\",\"status\":\"active\",\"data\":true,\"actions\":[\"create\"],\"collections\":[\"customer_x_merch\"]}', '{\"url\":\"google.com\"}', NULL),
(560, 614, 'directus_settings', '1', '{\"project_url\":\"logistickelompok3.com\"}', '{\"project_url\":\"logistickelompok3.com\"}', NULL),
(561, 616, 'directus_webhooks', '2', '{\"name\":\"Customer X Merch WH GET\",\"method\":\"GET\",\"url\":\"https://b1d0fc53a9960946068a304a9baa06ec.m.pipedream.net\",\"actions\":\"create,update,delete\",\"collections\":\"customer_x_merch\"}', '{\"name\":\"Customer X Merch WH GET\",\"method\":\"GET\",\"url\":\"https://b1d0fc53a9960946068a304a9baa06ec.m.pipedream.net\",\"actions\":\"create,update,delete\",\"collections\":\"customer_x_merch\"}', NULL),
(562, 617, 'directus_webhooks', '2', '{\"id\":2,\"name\":\"Customer X Merch WH GET\",\"method\":\"GET\",\"url\":\"https://b1d0fc53a9960946068a304a9baa06ec.m.pipedream.net\",\"status\":\"active\",\"data\":true,\"actions\":[\"create\"],\"collections\":[\"customer_x_merch\"]}', '{\"actions\":[\"create\"]}', NULL),
(563, 618, 'directus_permissions', '44', '{\"role\":null,\"collection\":\"directus_webhooks\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', '{\"role\":null,\"collection\":\"directus_webhooks\",\"action\":\"read\",\"fields\":[\"*\"],\"permissions\":{},\"validation\":{}}', NULL),
(564, 622, 'customer_x_merch_eligible', '1', '{\"id\":1,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":1}', '{\"given_by\":\"Ari\"}', NULL),
(565, 623, 'customer_x_merch_eligible', '2', '{\"id\":2,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":2}', '{\"given_by\":\"Ari\"}', NULL),
(566, 624, 'customer_x_merch_eligible', '3', '{\"id\":3,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":3}', '{\"given_by\":\"Ari\"}', NULL),
(567, 625, 'customer_x_merch_eligible', '4', '{\"id\":4,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":4}', '{\"given_by\":\"Ari\"}', NULL),
(568, 626, 'customer_x_merch_eligible', '5', '{\"id\":5,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":5}', '{\"given_by\":\"Ari\"}', NULL),
(569, 627, 'customer_x_merch_eligible', '6', '{\"id\":6,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":6}', '{\"given_by\":\"Ari\"}', NULL),
(570, 628, 'customer_x_merch_eligible', '7', '{\"id\":7,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":7}', '{\"given_by\":\"Ari\"}', NULL),
(571, 629, 'customer_x_merch_eligible', '8', '{\"id\":8,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":8}', '{\"given_by\":\"Ari\"}', NULL),
(572, 630, 'customer_x_merch_eligible', '9', '{\"id\":9,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":9}', '{\"given_by\":\"Ari\"}', NULL),
(573, 631, 'customer_x_merch_eligible', '10', '{\"id\":10,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":10}', '{\"given_by\":\"Ari\"}', NULL),
(574, 632, 'customer_x_merch_eligible', '11', '{\"id\":11,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":11}', '{\"given_by\":\"Ari\"}', NULL),
(575, 633, 'customer_x_merch_eligible', '12', '{\"id\":12,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":12}', '{\"given_by\":\"Ari\"}', NULL),
(576, 634, 'customer_x_merch_eligible', '13', '{\"id\":13,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":13}', '{\"given_by\":\"Ari\"}', NULL),
(577, 635, 'customer_x_merch_eligible', '14', '{\"id\":14,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":14}', '{\"given_by\":\"Ari\"}', NULL),
(578, 636, 'customer_x_merch_eligible', '15', '{\"id\":15,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":15}', '{\"given_by\":\"Ari\"}', NULL),
(579, 637, 'customer_x_merch_eligible', '16', '{\"id\":16,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', '{\"given_by\":\"Ari\"}', NULL),
(580, 638, 'customer_x_merch_eligible', '17', '{\"id\":17,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":22}', '{\"given_by\":\"Ari\"}', NULL),
(581, 639, 'customer_x_merch_eligible', '18', '{\"id\":18,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":23}', '{\"given_by\":\"Ari\"}', NULL),
(582, 640, 'customer_x_merch_eligible', '19', '{\"id\":19,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":24}', '{\"given_by\":\"Ari\"}', NULL),
(583, 641, 'customer_x_merch_eligible', '20', '{\"id\":20,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":25}', '{\"given_by\":\"Ari\"}', NULL),
(584, 642, 'customer_x_merch_eligible', '21', '{\"id\":21,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":26}', '{\"given_by\":\"Ari\"}', NULL),
(585, 643, 'customer_x_merch_eligible', '22', '{\"id\":22,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":27}', '{\"given_by\":\"Ari\"}', NULL),
(586, 644, 'customer_x_merch_eligible', '23', '{\"id\":23,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":28}', '{\"given_by\":\"Ari\"}', NULL),
(587, 645, 'customer_x_merch_eligible', '24', '{\"id\":24,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":29}', '{\"given_by\":\"Ari\"}', NULL),
(588, 646, 'customer_x_merch_eligible', '25', '{\"id\":25,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":30}', '{\"given_by\":\"Ari\"}', NULL),
(589, 647, 'customer_x_merch_eligible', '26', '{\"id\":26,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":31}', '{\"given_by\":\"Ari\"}', NULL),
(590, 648, 'customer_x_merch_eligible', '27', '{\"id\":27,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":32}', '{\"given_by\":\"Ari\"}', NULL),
(591, 649, 'customer_x_merch_eligible', '28', '{\"id\":28,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":33}', '{\"given_by\":\"Ari\"}', NULL),
(592, 650, 'customer_x_merch_eligible', '29', '{\"id\":29,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":34}', '{\"given_by\":\"Ari\"}', NULL),
(593, 651, 'customer_x_merch_eligible', '30', '{\"id\":30,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":35}', '{\"given_by\":\"Ari\"}', NULL),
(594, 652, 'customer_x_merch_eligible', '31', '{\"id\":31,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":36}', '{\"given_by\":\"Ari\"}', NULL),
(595, 653, 'customer_x_merch_eligible', '32', '{\"id\":32,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":16}', '{\"given_by\":\"Ari\"}', NULL),
(596, 654, 'customer_x_merch_eligible', '33', '{\"id\":33,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":17}', '{\"given_by\":\"Ari\"}', NULL),
(597, 655, 'customer_x_merch_eligible', '34', '{\"id\":34,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":18}', '{\"given_by\":\"Ari\"}', NULL),
(598, 656, 'customer_x_merch_eligible', '35', '{\"id\":35,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":19}', '{\"given_by\":\"Ari\"}', NULL),
(599, 657, 'customer_x_merch_eligible', '36', '{\"id\":36,\"given_on\":null,\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":20}', '{\"given_by\":\"Ari\"}', NULL),
(600, 658, 'customer_x_merch_eligible', '1', '{\"id\":1,\"given_on\":\"2021-12-03T14:55:45\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":1}', '{\"given_on\":\"2021-12-03T14:55:45\"}', NULL),
(601, 659, 'customer_x_merch_eligible', '6', '{\"id\":6,\"given_on\":\"2021-12-05T14:56:12\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":6}', '{\"given_on\":\"2021-12-05T14:56:12\"}', NULL),
(602, 660, 'customer_x_merch_eligible', '11', '{\"id\":11,\"given_on\":\"2021-12-07T14:56:26\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":11}', '{\"given_on\":\"2021-12-07T14:56:26\"}', NULL),
(603, 661, 'customer_x_merch_eligible', '16', '{\"id\":16,\"given_on\":\"2021-12-03T14:56:55\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', '{\"given_on\":\"2021-12-03T14:56:55\"}', NULL),
(604, 663, 'customer_x_merch_eligible', '1', '{\"id\":1,\"given_on\":\"2021-12-05T10:00:45\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":1}', '{\"given_on\":\"2021-12-05T10:00:45\"}', NULL),
(605, 664, 'customer_x_merch_eligible', '2', '{\"id\":2,\"given_on\":\"2021-12-05T10:00:44\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":2}', '{\"given_on\":\"2021-12-05T10:00:44\"}', NULL),
(606, 665, 'customer_x_merch_eligible', '3', '{\"id\":3,\"given_on\":\"2021-12-05T10:00:07\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":3}', '{\"given_on\":\"2021-12-05T10:00:07\"}', NULL),
(607, 666, 'customer_x_merch_eligible', '4', '{\"id\":4,\"given_on\":\"2021-12-05T10:00:25\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":4}', '{\"given_on\":\"2021-12-05T10:00:25\"}', NULL),
(608, 667, 'customer_x_merch_eligible', '5', '{\"id\":5,\"given_on\":\"2021-12-05T10:00:44\",\"given_by\":\"Ari\",\"customer_x_merch_id\":1,\"merch_eligible_id\":5}', '{\"given_on\":\"2021-12-05T10:00:44\"}', NULL),
(609, 668, 'customer_x_merch_eligible', '6', '{\"id\":6,\"given_on\":\"2021-12-03T10:00:12\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":6}', '{\"given_on\":\"2021-12-03T10:00:12\"}', NULL),
(610, 669, 'customer_x_merch_eligible', '7', '{\"id\":7,\"given_on\":\"2021-12-03T10:00:47\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":7}', '{\"given_on\":\"2021-12-03T10:00:47\"}', NULL),
(611, 670, 'customer_x_merch_eligible', '8', '{\"id\":8,\"given_on\":\"2021-12-03T10:00:00\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":8}', '{\"given_on\":\"2021-12-03T10:00:00\"}', NULL),
(612, 671, 'customer_x_merch_eligible', '9', '{\"id\":9,\"given_on\":\"2021-12-03T10:00:13\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":9}', '{\"given_on\":\"2021-12-03T10:00:13\"}', NULL),
(613, 673, 'customer_x_merch_eligible', '10', '{\"id\":10,\"given_on\":\"2021-12-03T10:00:52\",\"given_by\":\"Ari\",\"customer_x_merch_id\":2,\"merch_eligible_id\":10}', '{\"given_on\":\"2021-12-03T10:00:52\"}', NULL),
(614, 674, 'customer_x_merch_eligible', '11', '{\"id\":11,\"given_on\":\"2021-12-05T10:00:26\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":11}', '{\"given_on\":\"2021-12-05T10:00:26\"}', NULL),
(615, 675, 'customer_x_merch_eligible', '12', '{\"id\":12,\"given_on\":\"2021-12-05T10:00:33\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":12}', '{\"given_on\":\"2021-12-05T10:00:33\"}', NULL),
(616, 676, 'customer_x_merch_eligible', '13', '{\"id\":13,\"given_on\":\"2021-12-05T10:00:50\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":13}', '{\"given_on\":\"2021-12-05T10:00:50\"}', NULL),
(617, 677, 'customer_x_merch_eligible', '14', '{\"id\":14,\"given_on\":\"2021-12-05T10:00:16\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":14}', '{\"given_on\":\"2021-12-05T10:00:16\"}', NULL),
(618, 678, 'customer_x_merch_eligible', '15', '{\"id\":15,\"given_on\":\"2021-12-05T10:00:32\",\"given_by\":\"Ari\",\"customer_x_merch_id\":3,\"merch_eligible_id\":15}', '{\"given_on\":\"2021-12-05T10:00:32\"}', NULL),
(619, 679, 'customer_x_merch_eligible', '17', '{\"id\":17,\"given_on\":\"2021-12-09T10:00:14\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":22}', '{\"given_on\":\"2021-12-09T10:00:14\"}', NULL),
(620, 680, 'customer_x_merch_eligible', '18', '{\"id\":18,\"given_on\":\"2021-12-09T10:00:34\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":23}', '{\"given_on\":\"2021-12-09T10:00:34\"}', NULL),
(621, 681, 'customer_x_merch_eligible', '19', '{\"id\":19,\"given_on\":\"2021-12-09T10:00:02\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":24}', '{\"given_on\":\"2021-12-09T10:00:02\"}', NULL),
(622, 682, 'customer_x_merch_eligible', '16', '{\"id\":16,\"given_on\":\"2021-12-09T10:00:55\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', '{\"given_on\":\"2021-12-09T10:00:55\"}', NULL),
(623, 683, 'customer_x_merch_eligible', '20', '{\"id\":20,\"given_on\":\"2021-12-09T10:00:42\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":25}', '{\"given_on\":\"2021-12-09T10:00:42\"}', NULL),
(624, 684, 'customer_x_merch_eligible', '21', '{\"id\":21,\"given_on\":\"2021-12-09T10:00:01\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":26}', '{\"given_on\":\"2021-12-09T10:00:01\"}', NULL),
(625, 685, 'customer_x_merch_eligible', '16', '{\"id\":16,\"given_on\":\"2021-12-01T10:00:55\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":21}', '{\"given_on\":\"2021-12-01T10:00:55\"}', NULL),
(626, 686, 'customer_x_merch_eligible', '17', '{\"id\":17,\"given_on\":\"2021-12-01T10:00:14\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":22}', '{\"given_on\":\"2021-12-01T10:00:14\"}', NULL),
(627, 687, 'customer_x_merch_eligible', '18', '{\"id\":18,\"given_on\":\"2021-12-01T10:00:34\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":23}', '{\"given_on\":\"2021-12-01T10:00:34\"}', NULL),
(628, 688, 'customer_x_merch_eligible', '19', '{\"id\":19,\"given_on\":\"2021-12-01T10:00:02\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":24}', '{\"given_on\":\"2021-12-01T10:00:02\"}', NULL),
(629, 689, 'customer_x_merch_eligible', '20', '{\"id\":20,\"given_on\":\"2021-12-01T10:00:42\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":25}', '{\"given_on\":\"2021-12-01T10:00:42\"}', NULL),
(630, 690, 'customer_x_merch_eligible', '21', '{\"id\":21,\"given_on\":\"2021-12-01T10:00:01\",\"given_by\":\"Ari\",\"customer_x_merch_id\":4,\"merch_eligible_id\":26}', '{\"given_on\":\"2021-12-01T10:00:01\"}', NULL),
(631, 691, 'customer_x_merch_eligible', '22', '{\"id\":22,\"given_on\":\"2021-12-01T10:00:09\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":27}', '{\"given_on\":\"2021-12-01T10:00:09\"}', NULL),
(632, 692, 'customer_x_merch_eligible', '23', '{\"id\":23,\"given_on\":\"2021-12-01T10:00:25\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":28}', '{\"given_on\":\"2021-12-01T10:00:25\"}', NULL),
(633, 693, 'customer_x_merch_eligible', '24', '{\"id\":24,\"given_on\":\"2021-12-01T10:00:45\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":29}', '{\"given_on\":\"2021-12-01T10:00:45\"}', NULL),
(634, 694, 'customer_x_merch_eligible', '25', '{\"id\":25,\"given_on\":\"2021-12-01T10:00:02\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":30}', '{\"given_on\":\"2021-12-01T10:00:02\"}', NULL),
(635, 695, 'customer_x_merch_eligible', '26', '{\"id\":26,\"given_on\":\"2021-12-01T10:00:16\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":31}', '{\"given_on\":\"2021-12-01T10:00:16\"}', NULL),
(636, 696, 'customer_x_merch_eligible', '27', '{\"id\":27,\"given_on\":\"2021-12-01T10:00:29\",\"given_by\":\"Ari\",\"customer_x_merch_id\":5,\"merch_eligible_id\":32}', '{\"given_on\":\"2021-12-01T10:00:29\"}', NULL),
(637, 697, 'customer_x_merch_eligible', '28', '{\"id\":28,\"given_on\":\"2021-12-01T12:00:12\",\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":33}', '{\"given_on\":\"2021-12-01T12:00:12\"}', NULL),
(638, 698, 'customer_x_merch_eligible', '29', '{\"id\":29,\"given_on\":\"2021-12-01T12:00:42\",\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":34}', '{\"given_on\":\"2021-12-01T12:00:42\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(639, 699, 'customer_x_merch_eligible', '30', '{\"id\":30,\"given_on\":\"2021-12-01T12:00:15\",\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":35}', '{\"given_on\":\"2021-12-01T12:00:15\"}', NULL),
(640, 700, 'customer_x_merch_eligible', '31', '{\"id\":31,\"given_on\":\"2021-12-01T12:00:34\",\"given_by\":\"Ari\",\"customer_x_merch_id\":6,\"merch_eligible_id\":36}', '{\"given_on\":\"2021-12-01T12:00:34\"}', NULL),
(641, 701, 'customer_x_merch_eligible', '32', '{\"id\":32,\"given_on\":\"2021-12-01T10:00:20\",\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":16}', '{\"given_on\":\"2021-12-01T10:00:20\"}', NULL),
(642, 702, 'customer_x_merch_eligible', '33', '{\"id\":33,\"given_on\":\"2021-12-01T10:00:31\",\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":17}', '{\"given_on\":\"2021-12-01T10:00:31\"}', NULL),
(643, 703, 'customer_x_merch_eligible', '34', '{\"id\":34,\"given_on\":\"2021-12-01T10:00:42\",\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":18}', '{\"given_on\":\"2021-12-01T10:00:42\"}', NULL),
(644, 704, 'customer_x_merch_eligible', '35', '{\"id\":35,\"given_on\":\"2021-12-01T10:00:19\",\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":19}', '{\"given_on\":\"2021-12-01T10:00:19\"}', NULL),
(645, 705, 'customer_x_merch_eligible', '36', '{\"id\":36,\"given_on\":\"2021-12-01T10:00:32\",\"given_by\":\"Ari\",\"customer_x_merch_id\":8,\"merch_eligible_id\":20}', '{\"given_on\":\"2021-12-01T10:00:32\"}', NULL),
(646, 708, 'directus_users', 'd5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', '{\"id\":\"d5cbf9e3-8e2b-46bf-b561-ce1b72f10d22\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"admin@example.com\",\"password\":\"**********\",\"location\":null,\"title\":null,\"description\":null,\"tags\":null,\"avatar\":null,\"language\":\"en-US\",\"theme\":\"auto\",\"tfa_secret\":null,\"status\":\"active\",\"role\":\"fbe8d78b-540d-4c47-8a52-e58a1782f5ab\",\"token\":null,\"last_access\":\"2021-11-02T05:01:59.000Z\",\"last_page\":\"/settings/roles/fbe8d78b-540d-4c47-8a52-e58a1782f5ab\",\"provider\":\"default\",\"external_identifier\":null,\"auth_data\":null}', '{\"role\":\"fbe8d78b-540d-4c47-8a52-e58a1782f5ab\"}', 648),
(647, 709, 'directus_users', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '{\"first_name\":\"Admin\",\"last_name\":\"Lumintu\",\"email\":\"pintars@lumintu.com\",\"password\":\"**********\",\"role\":\"fbe8d78b-540d-4c47-8a52-e58a1782f5ab\"}', '{\"first_name\":\"Admin\",\"last_name\":\"Lumintu\",\"email\":\"pintars@lumintu.com\",\"password\":\"**********\",\"role\":\"fbe8d78b-540d-4c47-8a52-e58a1782f5ab\"}', 648),
(648, 710, 'directus_roles', 'fbe8d78b-540d-4c47-8a52-e58a1782f5ab', '{\"id\":\"fbe8d78b-540d-4c47-8a52-e58a1782f5ab\",\"name\":\"Administrator\",\"icon\":\"verified\",\"description\":\"Initial administrative role with unrestricted App/API access\",\"ip_access\":null,\"enforce_tfa\":false,\"collection_list\":null,\"admin_access\":true,\"app_access\":true,\"users\":[\"19a97343-e76a-4101-93fc-42eeb81a9fc6\",\"d5cbf9e3-8e2b-46bf-b561-ce1b72f10d22\"]}', '{}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text DEFAULT NULL,
  `ip_access` text DEFAULT NULL,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT 0,
  `collection_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`collection_list`)),
  `admin_access` tinyint(1) NOT NULL DEFAULT 0,
  `app_access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `collection_list`, `admin_access`, `app_access`) VALUES
('fbe8d78b-540d-4c47-8a52-e58a1782f5ab', 'Administrator', 'verified', 'Initial administrative role with unrestricted App/API access', NULL, 0, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_sessions`
--

INSERT INTO `directus_sessions` (`token`, `user`, `expires`, `ip`, `user_agent`, `data`) VALUES
('eLGKw8tjpRl3OmipUtEdzgtRW39JLJBHEZ5qVrMvE2U2pXPzWaQufx0LuMTiIY4L', '19a97343-e76a-4101-93fc-42eeb81a9fc6', '2022-01-05 08:33:50', '::ffff:192.168.18.105', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text DEFAULT NULL,
  `auth_login_attempts` int(10) UNSIGNED DEFAULT 25,
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`storage_asset_presets`)),
  `custom_css` text DEFAULT NULL,
  `storage_default_folder` char(36) DEFAULT NULL,
  `basemaps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`basemaps`)),
  `mapbox_key` varchar(255) DEFAULT NULL,
  `module_bar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`module_bar`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `project_name`, `project_url`, `project_color`, `project_logo`, `public_foreground`, `public_background`, `public_note`, `auth_login_attempts`, `auth_password_policy`, `storage_asset_transform`, `storage_asset_presets`, `custom_css`, `storage_default_folder`, `basemaps`, `mapbox_key`, `module_bar`) VALUES
(1, 'Directus', 'logistickelompok3.com', '#00C897', NULL, NULL, NULL, NULL, 25, NULL, 'all', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_page` varchar(255) DEFAULT NULL,
  `provider` varchar(128) NOT NULL DEFAULT 'default',
  `external_identifier` varchar(255) DEFAULT NULL,
  `auth_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`auth_data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`, `provider`, `external_identifier`, `auth_data`) VALUES
('19a97343-e76a-4101-93fc-42eeb81a9fc6', 'Admin', 'Lumintu', 'pintars@lumintu.com', '$argon2i$v=19$m=4096,t=3,p=1$Zig2vxWR9SiHCgQOrc5cPw$37xbdwTEkJKYfXjloUuk4VlwSckZufZvpkXpR8BIz1k', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', 'fbe8d78b-540d-4c47-8a52-e58a1782f5ab', NULL, '2021-12-29 08:33:50', '/collections/customer_x_merch_eligible/1', 'default', NULL, NULL),
('d322482d-320f-45a5-a27e-a5eb1fcdb349', 'Muhammad', 'Rafi', 'sultan@example.com', '$argon2i$v=19$m=4096,t=3,p=1$wzbXsQITuty68dhmjD/TwQ$1ZZ7IC1qAg9j5Ad+2l3dr9rnoQpHpds+qBYrgr4FLHw', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'suspended', NULL, NULL, '2021-10-28 09:09:58', '/users/d322482d-320f-45a5-a27e-a5eb1fcdb349', 'default', NULL, NULL),
('d5cbf9e3-8e2b-46bf-b561-ce1b72f10d22', 'Admin', 'User', 'admin@example.com', '$argon2i$v=19$m=4096,t=3,p=1$WHrsWWhlmNw95MvWpijGcg$DeoGrwP4YNC7w150nJVUcQP1aDZ/OMi4FUoGSOYtccM', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', 'fbe8d78b-540d-4c47-8a52-e58a1782f5ab', NULL, '2021-11-02 05:03:32', '/settings/roles', 'default', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT 1,
  `actions` varchar(100) NOT NULL,
  `collections` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directus_webhooks`
--

INSERT INTO `directus_webhooks` (`id`, `name`, `method`, `url`, `status`, `data`, `actions`, `collections`) VALUES
(2, 'Customer X Merch WH GET', 'GET', 'https://b1d0fc53a9960946068a304a9baa06ec.m.pipedream.net', 'active', 1, 'create', 'customer_x_merch');

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `id` int(10) UNSIGNED NOT NULL,
  `merch_name` varchar(255) DEFAULT NULL,
  `total_stock` int(11) DEFAULT NULL
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
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `merch_id` int(10) UNSIGNED DEFAULT NULL
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
  `id` int(10) UNSIGNED NOT NULL,
  `validated_on` datetime DEFAULT NULL,
  `validated_by` varchar(255) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `validated_on`, `validated_by`, `customer_id`, `session_id`) VALUES
(1, '2021-12-01 20:00:41', NULL, 2, 1),
(2, '2021-12-01 20:00:07', NULL, 2, 2),
(3, '2021-12-01 23:00:08', NULL, 2, 3),
(4, '2021-12-03 17:00:15', NULL, 3, 4),
(5, '2021-12-03 19:00:35', NULL, 3, 5),
(6, '2021-12-03 23:00:34', NULL, 3, 6),
(7, '2021-12-05 17:00:18', NULL, 3, 7),
(8, '2021-12-05 20:00:53', NULL, 3, 8),
(9, '2021-12-05 23:00:51', NULL, 3, 9),
(10, '2021-12-01 17:00:34', NULL, 9, 1),
(11, '2021-12-01 20:00:38', NULL, 9, 2),
(12, '2021-12-01 23:00:18', NULL, 9, 3),
(13, '2021-12-03 17:00:36', NULL, 9, 4),
(14, '2021-12-03 19:00:08', NULL, 9, 5),
(15, '2021-12-03 23:00:04', NULL, 9, 6),
(16, '2021-12-05 20:00:59', NULL, 9, 7),
(17, '2021-12-05 20:00:20', NULL, 9, 8),
(18, '2021-12-05 23:00:14', NULL, 9, 9),
(19, '2021-12-01 19:00:14', NULL, 10, 1),
(20, '2021-12-01 20:00:10', NULL, 10, 2),
(21, '2021-12-01 23:00:45', NULL, 10, 3),
(22, '2021-12-03 17:00:01', NULL, 10, 4),
(23, '2021-12-03 19:00:03', NULL, 10, 5),
(24, '2021-12-03 23:00:35', NULL, 10, 6),
(25, '2021-12-05 17:00:23', NULL, 10, 7),
(26, '2021-12-05 20:00:50', NULL, 10, 8),
(27, '2021-12-05 23:00:10', NULL, 10, 9),
(28, '2021-12-01 19:00:41', NULL, 11, 1),
(29, '2021-12-05 23:00:33', NULL, 11, 9),
(30, '2021-12-01 19:00:04', NULL, 4, 1),
(31, '2021-12-01 20:00:33', NULL, 4, 2),
(32, '2021-12-01 23:00:41', NULL, 4, 3),
(33, '2021-12-03 17:00:25', NULL, 4, 4),
(34, '2021-12-03 19:00:47', NULL, 4, 5),
(35, '2021-12-03 23:00:00', NULL, 4, 6),
(36, '2021-12-05 17:00:49', NULL, 4, 7),
(37, '2021-12-05 20:00:15', NULL, 4, 8),
(38, '2021-12-05 23:00:39', NULL, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `session_desc` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `session_speaker_photo` char(36) DEFAULT NULL,
  `session_speaker_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session_type`, `session_desc`, `start_time`, `finish_time`, `session_speaker_photo`, `session_speaker_name`) VALUES
(1, 'Session 1', 'Seminar System Architecture', '2021-12-01 17:00:49', '2021-12-01 19:00:49', NULL, 'Erray Utama Alld, Ph.D.'),
(2, 'Session 2', 'Seminar System Integration', '2021-12-01 20:00:41', '2021-12-01 22:00:01', NULL, 'Ana Marlinoh Askari, S.E., M.Ak'),
(3, 'Session 3', 'Seminar System Architecutre & Integration', '2021-12-01 23:00:46', '2021-12-02 01:00:05', NULL, 'Anta Wahyo Budamanas, S.T., Ph.D'),
(4, 'Session 4', 'Seminar Native Programming Language 1', '2021-12-03 17:00:24', '2021-12-03 19:00:38', NULL, 'Dr. Khaerodin, M.Pd'),
(5, 'Session 5', 'Seminar Native Programming Languange 2', '2021-12-03 07:00:00', NULL, NULL, 'Surya Adi Kencana S.kom, M.si'),
(6, 'Session 6', 'Seminar Native Programming Languange 3', '2021-12-03 23:00:00', '2021-12-04 01:00:05', NULL, 'drg. Sultan SpKG(K)'),
(7, 'Session 7', 'Seminar Database Development 1', '2021-12-05 17:00:47', NULL, NULL, 'Prof. Dr.  Retnowati Wibisono S.pd, M.Psi'),
(8, 'Session 8', 'Seminar Database Development 2', '2021-12-05 20:00:33', '2021-12-05 22:00:51', NULL, 'Ada Zakaroa Afifef, Prof., Dr. SE., MBA'),
(9, 'Session 9', 'Seminar Database Development 3', '2021-12-05 23:00:44', '2021-12-06 01:00:00', NULL, 'Prof. Dr. Fathar Rikohmin, M.Hum.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `certificate_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_x_merch_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_x_merch_eligible_customer_x_merch_id_foreign` (`customer_x_merch_id`),
  ADD KEY `customer_x_merch_eligible_merch_eligible_id_foreign` (`merch_eligible_id`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Indexes for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`),
  ADD KEY `directus_collections_group_foreign` (`group`);

--
-- Indexes for table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_dashboards_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`),
  ADD KEY `directus_files_folder_foreign` (`folder`);

--
-- Indexes for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Indexes for table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_panels_dashboard_foreign` (`dashboard`),
  ADD KEY `directus_panels_user_created_foreign` (`user_created`);

--
-- Indexes for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Indexes for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Indexes for table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Indexes for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`);

--
-- Indexes for table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`),
  ADD KEY `directus_settings_storage_default_folder_foreign` (`storage_default_folder`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_external_identifier_unique` (`external_identifier`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Indexes for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `merch_eligibility_merch_id_foreign` (`merch_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_customer_id_foreign` (`customer_id`),
  ADD KEY `registration_session_id_foreign` (`session_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_session_speaker_photo_foreign` (`session_speaker_photo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT for table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=649;

--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `merch`
--
ALTER TABLE `merch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registration` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_x_merch`
--
ALTER TABLE `customer_x_merch`
  ADD CONSTRAINT `customer_x_merch_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_x_merch_eligible`
--
ALTER TABLE `customer_x_merch_eligible`
  ADD CONSTRAINT `customer_x_merch_eligible_customer_x_merch_id_foreign` FOREIGN KEY (`customer_x_merch_id`) REFERENCES `customer_x_merch` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customer_x_merch_eligible_merch_eligible_id_foreign` FOREIGN KEY (`merch_eligible_id`) REFERENCES `merch_eligibility` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD CONSTRAINT `directus_collections_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_collections` (`collection`);

--
-- Constraints for table `directus_dashboards`
--
ALTER TABLE `directus_dashboards`
  ADD CONSTRAINT `directus_dashboards_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Constraints for table `directus_panels`
--
ALTER TABLE `directus_panels`
  ADD CONSTRAINT `directus_panels_dashboard_foreign` FOREIGN KEY (`dashboard`) REFERENCES `directus_dashboards` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_panels_user_created_foreign` FOREIGN KEY (`user_created`) REFERENCES `directus_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Constraints for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_storage_default_folder_foreign` FOREIGN KEY (`storage_default_folder`) REFERENCES `directus_folders` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `merch_eligibility`
--
ALTER TABLE `merch_eligibility`
  ADD CONSTRAINT `merch_eligibility_merch_id_foreign` FOREIGN KEY (`merch_id`) REFERENCES `merch` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registration_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_session_speaker_photo_foreign` FOREIGN KEY (`session_speaker_photo`) REFERENCES `directus_files` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
