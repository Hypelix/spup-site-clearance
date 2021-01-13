-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 07:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_clearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `user_type` char(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL,
  `archive` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_id`, `username`, `password`, `firstname`, `lastname`, `email`, `contactno`, `gender`, `avatar`, `user_type`, `timestamp`, `salt`, `archive`) VALUES
(29, 'faculty', '847991efffb9ba1debfbcf25fe13d2493cf60f4f', 'CARLOS', 'BABARAN', 'carlosbabaran@gmail.com', '09222222222', 'M', 'img/uploads/site.png', '4', '2018-11-25 08:55:01', '37505785497d00c5a0a68b4ace76f85199322d15', '0'),
(37, 'officer', '847991efffb9ba1debfbcf25fe13d2493cf60f4f', 'KRIZEL', 'ABAD', 'kriz@yahoo.com', '09222222222', 'F', 'img/uploads/site.png', '2', '2018-11-25 19:03:46', '7869fe9286192de6d915b7883c0d947f4a7a0a24', '0'),
(38, 'dean', '847991efffb9ba1debfbcf25fe13d2493cf60f4f', 'JEININ LEI', 'ARELLANO', 'kri@yahoo.com', '0922222222222', 'F', 'img/uploads/site.png', '3', '2018-11-25 19:04:48', '7aa2c7c58b44cf93c50f9e6efedff1a5053295bf', ''),
(42, 'secretary', '847991efffb9ba1debfbcf25fe13d2493cf60f4f', 'JYZEL', 'HERNANDEZ', 'jyzel@gmail.com', '', 'F', 'img/uploads/site.png', '1', '2019-05-20 06:00:29', '0b7675a55a32ae358807e16a2147e357e43efa18', ''),
(43, 'director', '847991efffb9ba1debfbcf25fe13d2493cf60f4f', 'ALMA', 'QUINAGORAN', 'alma@quinagoran', '', 'F', 'img/uploads/site.png', '5', '2019-05-22 01:17:41', 'bff2e1a5ecf4a2d65691e6b6d4b893db1b6c258e', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `venue` varchar(255) NOT NULL,
  `archive` char(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `event_name`, `start_date`, `end_date`, `venue`, `archive`, `timestamp`, `salt`) VALUES
(1, 'CYBER SUMMIT', '2018-08-17', '2018-08-18', '1', '1', '2018-11-25 16:21:15', '42123123FeaASd9123213213DA12312sd'),
(2, 'UNIWEEK', '2018-12-03', '2018-12-07', 'SPUP', '0', '2018-11-25 16:30:31', '412fe87e2f60c4efb0a5b9c83c8fb6df156d2192'),
(3, 'TCON 4', '2018-11-30', '2018-12-02', 'GLOBAL CENTER', '0', '2018-12-06 02:31:58', 'a2d6e5d65df4acbfdadf00fbe8f33ed0ec5ee6e0'),
(4, 'GOVERNORS HEALTH SEMINAR', '2018-12-06', '2018-12-07', '4', '0', '2018-12-06 02:32:59', '8fa4655783e5aad89d6a1d6c6d5f33852e97fde2'),
(5, 'Hi', '2019-05-09', '2019-05-06', 'SPUP', '0', '2019-05-08 05:16:06', '47d65ac8f70cc2a3629258bc6b5dc7ebb2172e5f'),
(6, 'parents day', '2019-06-14', '2019-06-14', '1', '0', '2019-06-13 01:29:10', '6341eb4eb3a62426d7c76b3f2407676b7edd7fd0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL,
  `log_name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`log_id`, `log_name`, `username`, `fullname`, `date`, `time`) VALUES
(2, 'Insert student 804747', 'admin', 'CARLOS BABARAN', '0000-00-00', '12:07:11'),
(3, 'Insert event UNIWEEK', 'admin', 'CARLOS BABARAN', '0000-00-00', '12:30:31'),
(4, 'Insert sanction FLASH DRIVE', 'admin', 'CARLOS BABARAN', '0000-00-00', '12:57:45'),
(5, 'Insert sanction MANILA PAPER', 'admin', 'CARLOS BABARAN', '0000-00-00', '12:58:54'),
(6, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '02:31:20'),
(7, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '02:46:35'),
(8, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '02:47:34'),
(9, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '02:48:56'),
(10, 'Update event CYBER SUMMITT', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:02:40'),
(11, 'Update event CYBER SUMMIT', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:03:12'),
(12, 'Update event CYBER SUMMITt', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:03:53'),
(13, 'Update event CYBER SUMMIT', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:04:28'),
(14, 'Update sanction FLASH DRIVEeEEEE', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:44:05'),
(15, 'Update sanction FLASH DRIVEeEEEE', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:45:12'),
(16, 'Update sanction FLASH DRIVE', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:45:29'),
(17, 'Update student 804747', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:57:58'),
(18, 'Update student 804747', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:58:05'),
(19, 'Update student 124545', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:58:11'),
(20, 'Insert student 321678', 'admin', 'CARLOS BABARAN', '0000-00-00', '09:17:15'),
(21, 'Insert sanction CARTOLINA', 'admin', 'CARLOS BABARAN', '0000-00-00', '09:31:15'),
(22, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:31:25'),
(23, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:32:29'),
(24, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:37:24'),
(25, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:40:32'),
(26, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:41:09'),
(27, 'Insert Remarks 4', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:48:53'),
(28, 'Insert student 2017-033', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:24:50'),
(29, 'Update student 124545', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:32:32'),
(30, 'Update student 2017-033', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:33:17'),
(31, 'Update student 2017-034', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:33:31'),
(32, 'Update School Year and Semester into2019-2020 1ST', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:50:10'),
(33, 'Update School Year and Semester into2019-2020 3RD', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:51:29'),
(34, 'Update School Year and Semester into2018-2019 1ST', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:51:35'),
(35, 'Insert student 2018-012', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:54:01'),
(36, 'Update school year and semester of regular student : 2018-2019 - 2ND', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:13:52'),
(37, 'Update school year and semester of regular student : 2019-2020 - SUMMER', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:16:09'),
(38, 'Update school year and semester of regular student : 2019-2020 - SUMMER', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:16:33'),
(39, 'Update school year and semester of regular student : 2019-2020 - SUMMER', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:17:04'),
(40, 'Update school year and semester of regular student : 2018-2019 - 1ST', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:17:28'),
(41, 'Update school year and semester of regular student : 2018-2019 - 2ND', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:18:44'),
(42, 'Update school year and semester of regular student : 2020-2021 - 2ND', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:19:09'),
(43, 'Update school year and semester of regular student : 2018-2019 - 1ST', 'admin', 'CARLOS BABARAN', '0000-00-00', '11:19:20'),
(44, 'Insert sanction PAPER CUTTER', 'admin', 'CARLOS BABARAN', '0000-00-00', '01:02:24'),
(45, 'Update school year and semester of regular student : 2019-2020 - 2ND', 'admin', 'CARLOS BABARAN', '0000-00-00', '02:11:26'),
(46, 'Update School Year and Semester into2018-2019 1ST', 'admin', 'CARLOS BABARAN', '0000-00-00', '09:14:01'),
(47, 'Insert student 2018-333', 'admin', 'CARLOS BABARAN', '0000-00-00', '09:19:32'),
(48, 'Update sanction', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:06:40'),
(49, 'Update sanction', 'admin', 'CARLOS BABARAN', '0000-00-00', '10:07:07'),
(50, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:42:29'),
(51, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:42:36'),
(52, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:44:14'),
(53, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:47:18'),
(54, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:47:23'),
(55, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:47:57'),
(56, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:48:04'),
(57, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '10:48:29'),
(58, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:21:00'),
(59, 'Insert Violation ', 'faculty', 'CARLOS BABARAN', '0000-00-00', '01:00:10'),
(60, 'Insert Violation 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '01:01:24'),
(61, 'Insert Violation 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '01:02:13'),
(62, 'Insert Violation 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '01:03:21'),
(63, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:49:51'),
(64, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:49:57'),
(65, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:53:35'),
(66, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:54:06'),
(67, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:54:21'),
(68, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:54:50'),
(69, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '04:55:06'),
(70, 'Insert event TCON 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:31:58'),
(71, 'Insert event GOVERNORS HEALTH SEMINAR', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:32:59'),
(72, 'Insert Remarks 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:33:55'),
(73, 'Insert Remarks 4', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:35:45'),
(74, 'Insert Violation 4', 'officer', 'KRIZEL ABAD', '0000-00-00', '11:26:40'),
(75, 'Insert Violation 4', 'officer', 'KRIZEL ABAD', '0000-00-00', '11:29:06'),
(76, 'Insert Violation 4', 'officer', 'KRIZEL ABAD', '0000-00-00', '11:33:46'),
(77, 'Insert Violation 4', 'officer', 'KRIZEL ABAD', '0000-00-00', '11:35:03'),
(78, 'Insert Violation 4', 'officer', 'KRIZEL ABAD', '0000-00-00', '11:35:44'),
(79, 'Update student 124545', 'faculty', 'CARLOS BABARAN', '0000-00-00', '03:49:43'),
(80, 'Update student 2018-333', 'faculty', 'CARLOS BABARAN', '0000-00-00', '03:50:19'),
(81, 'Insert Remarks 117', 'faculty', 'CARLOS BABARAN', '0000-00-00', '09:04:13'),
(82, 'Update student 2016-00048', 'faculty', 'CARLOS BABARAN', '0000-00-00', '09:07:45'),
(83, 'Insert Remarks 117', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:01:09'),
(84, 'Insert Remarks 51', 'faculty', 'CARLOS BABARAN', '0000-00-00', '10:01:35'),
(85, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:34:52'),
(86, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:55:28'),
(87, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:56:33'),
(88, 'Insert Remarks 52', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:00:03'),
(89, 'Insert Remarks 52', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:04:42'),
(90, 'Insert Remarks 52', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:06:50'),
(91, 'Insert Remarks 52', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:07:49'),
(92, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:23:11'),
(93, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:25:00'),
(94, 'Insert Remarks 117', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:24:11'),
(95, 'Insert Remarks 117', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:25:11'),
(96, 'Insert Remarks 51', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:35:27'),
(97, 'Insert Remarks 51', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:35:39'),
(98, 'Insert Remarks 1', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:38:47'),
(99, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:48:34'),
(100, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:49:22'),
(101, 'Update school year and semester of regular student : 2018-2019 - 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:27:56'),
(102, 'Update school year and semester of regular student : 2019-2020 - 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:28:08'),
(103, 'Insert event Hi', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:16:06'),
(104, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:40:57'),
(105, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:41:40'),
(106, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:42:28'),
(107, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:42:43'),
(108, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:42:54'),
(109, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:43:15'),
(110, 'Update school year and semester of regular student : 2019-2020 - 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:43:42'),
(111, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:46:36'),
(112, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:47:36'),
(113, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:47:50'),
(114, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:48:05'),
(115, 'Update school year and semester of regular student : 2018-2019 - 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:49:41'),
(116, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:50:25'),
(117, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:48:54'),
(118, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:50:31'),
(119, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:07:29'),
(120, 'Update school year and semester of regular student : 2019-2020 - 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:18:23'),
(121, 'Update School Year and Semester into2018-2019 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:55:32'),
(122, 'Update School Year and Semester into2020-2021 1ST', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:56:07'),
(123, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:41:27'),
(124, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:43:05'),
(125, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:52:03'),
(126, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:55:07'),
(127, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:58:20'),
(128, 'Insert Violation 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:26:17'),
(129, 'Insert Violation 51', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:47:02'),
(130, 'Insert Violation 51', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:47:37'),
(131, 'Update account ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:12:21'),
(132, 'Update account ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:12:36'),
(133, 'Update account ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:13:27'),
(134, 'Update account ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:17:12'),
(135, 'Update account ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:18:13'),
(136, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:21:25'),
(137, 'Insert Violation 117', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:33:30'),
(138, 'Insert Violation 117', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:33:30'),
(139, 'Insert Violation 117', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:33:30'),
(140, 'Insert Violation 2016-00048', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:56:58'),
(141, 'Insert Violation 2016-00048', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:56:58'),
(142, 'Insert Violation 2016-00048', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:56:58'),
(143, 'Insert Violation 2018-01-0317', 'director', 'ALMA QUINAGORAN', '0000-00-00', '06:58:45'),
(144, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(145, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(146, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(147, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(148, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(149, 'Insert Violation 2015-01060', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:04:13'),
(150, 'Insert Violation 2015-00017', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:06:01'),
(151, 'Insert Violation 2016-00048', 'director', 'ALMA QUINAGORAN', '0000-00-00', '07:07:10'),
(152, 'Insert Violation 2016-00048', 'director', 'ALMA QUINAGORAN', '0000-00-00', '01:53:52'),
(153, 'Insert Violation 2015-00135', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:00:37'),
(154, 'Insert Remarks 177', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '05:10:25'),
(155, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '05:10:42'),
(156, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:25:59'),
(157, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:26:36'),
(158, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:26:37'),
(159, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:26:38'),
(160, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:26:38'),
(161, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:26:38'),
(162, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:27:21'),
(163, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:29:53'),
(164, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:29:56'),
(165, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:29:58'),
(166, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:30:00'),
(167, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:30:02'),
(168, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:30:04'),
(169, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:30:05'),
(170, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '06:30:07'),
(171, 'Update sanction', 'dean', ' ', '0000-00-00', '12:12:34'),
(172, 'Update sanction', 'dean', ' ', '0000-00-00', '12:12:36'),
(173, 'Update sanction', 'dean', ' ', '0000-00-00', '12:13:10'),
(174, 'Update sanction', 'dean', ' ', '0000-00-00', '12:13:13'),
(175, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:21:58'),
(176, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:22:01'),
(177, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:35:15'),
(178, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:10'),
(179, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:12'),
(180, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:13'),
(181, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:14'),
(182, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:16'),
(183, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:17'),
(184, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:21'),
(185, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:03:23'),
(186, 'Update School Year and Semester into2018-2019 2ND', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:00:23'),
(187, 'Update school year and semester of regular student : 2018-2019 - 2ND', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:00:28'),
(188, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:40:59'),
(189, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:41:03'),
(190, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:50:07'),
(191, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:50:10'),
(192, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:57:13'),
(193, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:57:15'),
(194, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:00:25'),
(195, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:01:10'),
(196, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:01:29'),
(197, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:01:33'),
(198, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:03:29'),
(199, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:03:41'),
(200, 'Update sanction', 'secretary', 'JYZEL HERNANDEZ', '0000-00-00', '01:41:12'),
(201, 'Update sanction', 'secretary', 'JYZEL HERNANDEZ', '0000-00-00', '01:42:00'),
(202, 'Update sanction', 'secretary', 'JYZEL HERNANDEZ', '0000-00-00', '01:42:02'),
(203, 'Update sanction', 'secretary', 'JYZEL HERNANDEZ', '0000-00-00', '01:42:23'),
(204, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:43:56'),
(205, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:44:48'),
(206, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:44:52'),
(207, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:55:49'),
(208, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:10:06'),
(209, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:26:24'),
(210, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:26:27'),
(211, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:26:29'),
(212, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:28:06'),
(213, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:28:08'),
(214, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:29:33'),
(215, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:29:53'),
(216, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:29:56'),
(217, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:52:05'),
(218, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:52:10'),
(219, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '12:52:12'),
(220, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '12:56:51'),
(221, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '12:57:10'),
(222, 'Update sanction', 'secretary', 'JYZEL HERNANDEZ', '0000-00-00', '12:58:28'),
(223, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:02:33'),
(224, 'Update violation', 'director', 'ALMA QUINAGORAN', '0000-00-00', '02:05:22'),
(225, 'Update sanction', 'director', 'ALMA QUINAGORAN', '0000-00-00', '02:06:11'),
(226, 'Update sanction', 'director', 'ALMA QUINAGORAN', '0000-00-00', '02:06:21'),
(227, 'Update student 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:08:23'),
(228, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:25:28'),
(229, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:28:06'),
(230, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:34:33'),
(231, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:36:44'),
(232, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:36:50'),
(233, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:36:51'),
(234, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:40:06'),
(235, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:40:32'),
(236, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '03:40:48'),
(237, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '03:41:07'),
(238, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '01:58:36'),
(239, 'Insert Remarks ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:32:32'),
(240, 'Insert Remarks ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:33:47'),
(241, 'Insert Remarks ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:39:54'),
(242, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:50:11'),
(243, 'Insert Remarks 51', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:51:26'),
(244, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:53:50'),
(245, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '02:56:18'),
(246, 'Insert Remarks 51', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:27:42'),
(247, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:30:14'),
(248, 'Insert Remarks 51', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '03:48:09'),
(249, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '05:25:09'),
(250, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '05:25:11'),
(251, 'Insert Remarks ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:29:36'),
(252, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:16:29'),
(253, 'Insert Remarks ', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:22:16'),
(254, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:23:52'),
(255, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:24:31'),
(256, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:24:35'),
(257, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:24:39'),
(258, 'Update violation', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:24:43'),
(259, 'Update sanction', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:35:42'),
(260, 'Update sanction', 'faculty', 'CARLOS BABARAN', '0000-00-00', '08:36:08'),
(261, 'Update sanction', 'officer', 'KRIZEL ABAD', '0000-00-00', '08:36:23'),
(262, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '09:17:36'),
(263, 'Insert Remarks 117', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '09:23:41'),
(264, 'Insert event parents day', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '09:29:10'),
(265, 'Update event CYBER SUMMIT', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:30:30'),
(266, 'Update event GOVERNORS HEALTH SEMINAR', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '08:30:39'),
(267, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:36:19'),
(268, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '10:38:32'),
(269, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:22:17'),
(270, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:24:28'),
(271, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:41:37'),
(272, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:28:26'),
(273, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:28:26'),
(274, 'Insert Violation 2016-00048', 'dean', 'JEININ LEI ARELLANO', '0000-00-00', '11:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requirements`
--

CREATE TABLE `tbl_requirements` (
  `id` int(11) NOT NULL,
  `requirements` varchar(100) NOT NULL,
  `due_date` varchar(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `status` char(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanction`
--

CREATE TABLE `tbl_sanction` (
  `sanction_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `archive` char(1) NOT NULL DEFAULT '0',
  `for_officer` char(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sanction`
--

INSERT INTO `tbl_sanction` (`sanction_id`, `item_name`, `quantity`, `archive`, `for_officer`, `timestamp`, `salt`) VALUES
(1, 'PENCIL', 2, '0', 'N', '2018-11-25 16:34:39', 'AsdsaAdsadas31321ASDas012321312Aqwedhdfhsc51212'),
(2, 'FLASH DRIVE', 1, '0', 'N', '2018-11-25 16:57:45', 'ec1bb5145915e78c06663831d8db201441fd8555'),
(3, 'MANILA PAPER', 5, '0', 'N', '2018-11-25 16:58:54', '40dc35569d62e726174666f3035289390f1fcdb9'),
(4, 'CARTOLINA', 5, '0', 'N', '2018-11-27 13:31:15', 'bf00e670fca9556ed8c77d2364e365ece2048142'),
(5, 'PAPER CUTTER', 1, '0', 'Y', '2018-12-03 05:02:24', '8a7355fb000f50a73eb7cf197a1da915ce58fc70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanctionlink`
--

CREATE TABLE `tbl_sanctionlink` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `sanction_id` varchar(50) NOT NULL,
  `sanction_type` varchar(7) NOT NULL,
  `sanction_date` varchar(20) NOT NULL,
  `ampm` varchar(2) NOT NULL,
  `C1` char(1) NOT NULL DEFAULT 'N',
  `C2` char(1) NOT NULL DEFAULT 'N',
  `C3` char(1) NOT NULL DEFAULT 'N',
  `school_year` varchar(10) NOT NULL,
  `sem` varchar(6) NOT NULL,
  `qty` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_semyear`
--

CREATE TABLE `tbl_semyear` (
  `id` int(11) NOT NULL,
  `school_year` varchar(10) NOT NULL,
  `sem` varchar(6) NOT NULL,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_semyear`
--

INSERT INTO `tbl_semyear` (`id`, `school_year`, `sem`, `salt`) VALUES
(1, '2018-2019', '2ND', 'ASDAasd12312adasEsadasda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` varchar(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `officer` char(1) NOT NULL,
  `gender` char(1) NOT NULL,
  `archive` char(1) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL,
  `school_year` varchar(50) NOT NULL,
  `sem` varchar(11) NOT NULL,
  `remove_status` char(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `student_id`, `firstname`, `middlename`, `lastname`, `course`, `year`, `section`, `email`, `contact`, `officer`, `gender`, `archive`, `status`, `school_year`, `sem`, `remove_status`, `timestamp`, `salt`) VALUES
(1, '2018-01-0317', 'Johanes Paulus', 'D', 'Abuyuan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '2018-12-08 03:25:00', 'ASD123'),
(2, '2016-01648', 'Joyan Noel', 'M', 'Aggarao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '2018-12-08 03:25:00', 'ASD124'),
(3, '2018-01-0001', 'Paul Arwin', 'Suguitan', 'Alda', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD125'),
(4, '2013-00221', 'Gerald Martin', 'V', 'Balabis', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD126'),
(5, '2016-00635', 'Bryan', 'Q', 'Baliuag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD127'),
(6, '2018-01-1222', 'Dan Angelo', 'Q', 'Baliuag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD128'),
(7, '2016-01646', 'Kurt Roland', 'M', 'Bayadog', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD129'),
(8, '2018-01-0678', 'Orlando Jr.', 'C', 'Bunagan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD130'),
(9, '2012-00010', 'Vince Lesther', 'A', 'Calimag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD131'),
(10, '2018-01-1000', 'Darren Angelo', 'S', 'Callueng', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD132'),
(11, '2018-01-0857', 'Ceazar Christ', 'A', 'Canceran', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD133'),
(12, '2018-01-1016', 'Arman Paul Jr.', 'A', 'Cortes', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD134'),
(13, '2016-01745', 'Kelvin Kharl', 'S', 'Dabo', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD135'),
(14, '2016-01487', 'Keith Angelo', 'D', 'De Leon', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD136'),
(15, '2018-01-1108', 'Florido III', 'A', 'Deray', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD137'),
(16, '2016-01099', 'Kim Randel', 'D', 'Dolozon', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD138'),
(17, '2018-01-0030', 'David ', 'A', 'Domaguina', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD139'),
(18, '2018-01-0074', 'Joshua', 'C', 'Dumbrique', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD140'),
(19, '2012-00001', 'Miguel Francisco', '', 'Gamiao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD141'),
(20, '2012-02299', 'Elymar', '', 'Gongob', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD142'),
(21, '2016-00771', 'Granduer Majesty', 'T', 'Labang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD143'),
(22, '2018-01-1265', 'Joh Karl', 'F', 'Labang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD144'),
(23, '2018-01-1040', 'Jerick Steven', 'J', 'Lara', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD145'),
(24, '2018-01-1018', 'Allen Paul', 'F', 'Liong', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD146'),
(25, '2018-01-0044', 'Michael Angelo', 'B', 'Macarubbo', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '2018-12-08 02:06:00', 'ASD147'),
(26, '2018-01-0975', 'Fritz Allen Rae', 'L', 'Malana', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD148'),
(27, '2018-01-1150', 'Zeus Marou', 'B', 'Marigocio', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD149'),
(28, '2018-01-0006', 'Renz Christian', 'C', 'Mesa', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD150'),
(29, '2016-01050', 'Rodston', 'R', 'Millare', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD151'),
(30, '2004-00037', 'Francis Prim', 'S', 'Pagunuran', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD152'),
(31, '2018-01-1095', 'Lito John', 'F', 'Portos', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD153'),
(32, '2003-00194', 'Jonas Gabriel', 'C', 'Rivera', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD154'),
(33, '2006-10556', 'Alec Jiro', 'C', 'Saludes', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD155'),
(34, '2017-030043', 'Jean Lloyd', 'B', 'Taguba', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD156'),
(35, '2018-01-0037', 'Jowel', 'C', 'Utanes', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD157'),
(36, '2016-01080', 'Wardita Marie', 'R', 'Agustin', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD158'),
(37, '2016-00681', 'Cassandra Marie', 'C', 'Andal', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD159'),
(38, '2016-01735', 'Jay Vee', 'S', 'Apostol', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD160'),
(39, '2016-01677', 'Maricar', 'B', 'Arzadon', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD161'),
(40, '2018-01-0023', 'Mary Joyce', 'H', 'Baletan', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD162'),
(41, '2018-01-1203', 'Ritchelle Joy', 'D', 'Catabian', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD163'),
(42, '2016-00701', 'Thaniela Cayl', 'S', 'Chan', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD164'),
(43, '2016-00612', 'Marcy Clarete', '', 'Clemente', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD165'),
(44, '2018-01-0052', 'Jessa', 'R', 'Parungao', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD166'),
(45, '2018-01-0010', 'Mary Xylex', 'B', 'Pasion', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD167'),
(46, '2018-01-1232', 'Julie Ann', 'A', 'Ramil', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD168'),
(47, '2018-01-0756', 'Athena Mae', 'B', 'Santiago', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD169'),
(48, '2018-01-1221', 'Naomi', 'S', 'Tanaka', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD170'),
(49, '2018-01-0914', 'Jezarene', 'C', 'Valiente', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD171'),
(50, '2016-00785', 'Alyssa Jane', 'Masirag', 'Villanueva', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD172'),
(51, '2015-01060', 'Adrinel Shane', 'T', 'Abella', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD173'),
(52, '2015-00135', 'Kurt Kovien', 'B', 'Acoba', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD174'),
(53, '2014-00629', 'Christian Paul', 'T', 'Agpuon', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD175'),
(54, '2014-00756', 'Daniel', '', 'Bangayan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD176'),
(55, '2014-00436', 'Tomas Jr.', 'M', 'Binag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD177'),
(56, '2015-00572', 'Wendelle', 'A', 'Buncag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD178'),
(57, '2012-02-02337', 'Markavin  ', '', 'Cabildo', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD179'),
(58, '2015-00526', 'Vincent Carl', 'S', 'Caddauan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD180'),
(59, '2015-00675', 'Rheiner', 'C', 'Calizar', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD181'),
(60, '2012-01-01735', 'Christian Jay', '', 'Carag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD182'),
(61, '2015-00520', 'Isabelo Jr.', 'A', 'Cari?o', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD183'),
(62, '2014-00933', 'Arnel', 'D', 'Casay', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD184'),
(63, '2017-0100270', 'Adrian Louis', 'E', 'Casibang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD185'),
(64, '2015-01013', 'Karl Patrick', 'C', 'Cellona', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD186'),
(65, '2015-00127', 'Joel John', 'De Guzman', 'Centeno', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD187'),
(66, '2015-01073', 'Russel Kim Alexis', 'Despabelade', 'Cristobal', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD188'),
(67, '2017-030015', 'Christian Marie', 'L', 'Danao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD189'),
(68, '2017-0100276', 'Leorex Keith', 'W', 'Danao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD190'),
(69, '2015-00638', 'Seth Joshua', 'M', 'Dannang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD191'),
(70, '2015-00603', 'Vincent Cenen', 'Dionisio', 'Dayag', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD192'),
(71, '2015-00956', 'John Paul', 'Patricio', 'Dulin', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD193'),
(72, '2016-2-00089', 'Diego Gracias', 'Acera', 'Dumaua', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD194'),
(73, '2015-00607', 'King Shalomrabi', 'Mabborang', 'Feliciano', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD195'),
(74, '2015-00699', 'Aris June', 'Pamittan', 'Fernandez', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD196'),
(75, '2015-00706', 'Mark Darylle', 'Apostol', 'Formose', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD197'),
(76, '2015-00347', 'Brian', 'Agustin', 'Foronda', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD198'),
(77, '2015-01239', 'Jaylord', 'Turingan', 'Frace', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD199'),
(78, '2016-00120', 'Christian', 'Maggay', 'Francinilla', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD200'),
(79, '2011-02-01230', 'Raymond', 'Zu?iga', 'Gamiao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD201'),
(80, '2015-00051', 'Zahn Xandre', 'Acorda', 'Gavino', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD202'),
(81, '2016-2-00085', 'Joemel', 'Umblas', 'Gersaniba', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD203'),
(82, '2014-00392', ' Joshua James', 'Talattad', 'Ginez', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD204'),
(83, '2015-01020', 'Brylle Geno', 'Sanchez', 'Gumabay', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD205'),
(84, '2015-00785', 'Eljone', 'Yoma', 'Hermano', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD206'),
(85, '2017-0100277', 'Juan Miguel Rafael', 'P', 'Iba?ez', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD207'),
(86, '2015-00713', 'Prince Gio', 'Pagaduan', 'Lacsamana', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD208'),
(87, '2017-03-0018', 'Mark Bryan', 'Calayan', 'Lagundi', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD209'),
(88, '2016-2-00084', 'Joseph Carlo', 'M', 'Liban', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD210'),
(89, '2015-00843', 'John Kenneth', 'Cannu', 'Mabazza', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD211'),
(90, '2015-00269', 'Daniel', 'Agustin', 'Mabborang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD212'),
(91, '2015-00710', 'Reuel Jascha', 'Guibani', 'Mabborang', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD213'),
(92, '2015-00608', 'Kevin Enryll', 'Miguel', 'Maggay', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD214'),
(93, '2012-02-02285', 'John Rovan', 'Abedes', 'Mallillin', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD215'),
(94, '2015-00024', 'Mario Emmanuel', 'Morales', 'Mallillin', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD216'),
(95, '2016-2-00092', 'Jasper', 'Malenab', 'Melad', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD217'),
(96, '2017-030015', 'Ervin Roi', 'C', 'Mesina', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD218'),
(97, '2017-0100312', 'Jefferson', 'P', 'Oledan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD219'),
(98, '2015-00962', 'Mark Anthony', 'Pimentel', 'Orence', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD220'),
(99, '2015-00674', 'John Bernard', 'Pastera', 'Orpilla', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD221'),
(100, '2015-00200', 'Jules Lemuel', 'Tabaldo', 'Pastoral', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD222'),
(101, '2015-00414', 'Dlanorson', 'Teja', 'Patay', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD223'),
(102, '2015-00678', 'Keith Russel', 'Delmendo', 'Que', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD224'),
(103, '2016-00035', 'Jan Giled', 'Barnedo', 'Reyes', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD225'),
(104, '2014-00757', 'Evanz', 'Espita', 'Saguibo', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD226'),
(105, '2013-01-03360', 'Constante Jr.', 'Recolizado', 'Sapla', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD227'),
(106, '2014-00554', 'John Paul ', 'Melad', 'Silvestre', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD228'),
(107, '2015-00107', 'Jayvee', 'Cabaddu', 'Siuagan', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD229'),
(108, '2014-00857', 'Homer Charles', 'Acebedo', 'Tillenuis', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD230'),
(109, '2013-01-03123', 'John Rico ', 'Corral', 'Toribio', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD231'),
(110, '2015-00948', 'Mark Angelo', 'Mactal', 'Torres', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD232'),
(111, '2015-00120', 'Ralph Gabriel', 'Ballad', 'Tuapin', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD233'),
(112, '2015-00625', 'Asher Winfrey', 'Agustin', 'Udarbe', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD234'),
(113, '2015-00321', 'Ralph Lauren-j', 'Arcines', 'Viernes', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD235'),
(114, '2015-00248', 'Allan Jay', 'Masirag', 'Villanueva', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD236'),
(115, '2015-00541', 'Marc Angelo', 'Sablay', 'Yadao', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD237'),
(116, '2016-00031', 'Marulan', '', 'Yuga', 'BSIT', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD238'),
(117, '2016-00048', 'Criselda', 'Sumaoang', 'Abad', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD239'),
(118, '2015-00874', 'Ann Marie Kristine', 'Guerrero', 'Addatu', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD240'),
(119, '2015-00324', 'Reina', 'Soller', 'Altura', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD241'),
(120, '2015-00057', 'Kristel Joy', 'Lucas', 'Apelado', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD242'),
(121, '2016-00039', 'Jeinin Lei', 'Lustica', 'Arellano', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD243'),
(122, '2015-00292', 'Odhessa Ross', 'Batan', 'Barba', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD244'),
(123, '2015-01279', 'Shaina Mae', 'Sabado', 'Beligan', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD245'),
(124, '2015-00307', 'Junross Gaile', 'Dela Cruz', 'Binarao', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD246'),
(125, '2017-0100273', 'Ma. Angelica', 'G', 'Callangan', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD247'),
(126, '2015-01085', 'Regina Joyce', 'Llobrera', 'Canlas', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD248'),
(127, '2015-00297', 'Kharen Dayle', 'Lim', 'Cuevas', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD249'),
(128, '2015-00029', 'Heidie', 'Aggabao', 'Dela Cruz', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD250'),
(129, '2015-00336', 'Rolayne', 'Montelibano', 'Dela Paz', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD251'),
(130, '2015-00131', 'Reni Shane', 'Pancho', 'Denna', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD252'),
(131, '2015-00458', 'Jezrille Kylie', 'Bisquera', 'Espartero', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD253'),
(132, '2015-00210', 'Diana', 'Magaddatu', 'Galang', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD254'),
(133, '2015-00344', 'Ellaine ', 'Yoma', 'Hermano', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD255'),
(134, '2015-00305', 'Jyzel', 'Conciso', 'Hernandez', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD256'),
(135, '2016-2-00090', 'Noami', 'Macababbad', 'Marciano', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD257'),
(136, '2016-00062', 'Sandy Anne', 'Battad', 'Mecate', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD258'),
(137, '2015-00279', 'Chrysiele', 'Lizardo', 'Pal', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD259'),
(138, '2017-0100295', 'Jhanika Mhae', 'Ona', 'Pe?a', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD260'),
(139, '03-02676', 'Marie Monique', 'Lingan', 'Sabban', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD261'),
(140, '2015-00719', 'Johana Mae', 'Arizo', 'Tangan', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD262'),
(141, '2015-00108', 'Clarence Joy', 'Rojero', 'Torrado', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD263'),
(142, '2016-000075', 'Kate Charmaine ', 'Bangayan', 'Viraguas', 'BSIT', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD264'),
(143, '2015-00017', 'Mariel', 'Capalungan', 'Addatu', 'BLIS', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD265'),
(144, '2015-00204', 'Ma. Trinidad', 'Suyu', 'Baccay', 'BLIS', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD266'),
(145, '2015-00753', 'Jiberly', 'Basilio', 'Corpuz', 'BLIS', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD267'),
(146, '2016-00114', 'Jale', 'Saquing', 'Valdez', 'BLIS', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD268'),
(147, '2016-00055', 'Ena Alodia', 'Amistad', 'Yanga', 'BLIS', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD269'),
(148, '2018-01-0111', 'Christian Darell', 'D', 'Bandayrel', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD270'),
(149, '2016-00687', 'John Carlo', 'G', 'Binarao', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD271'),
(150, '2018-01-1044', 'Henry Jr.', 'O', 'Caligan', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD272'),
(151, '2018-01-1268', 'Ryan Eleazar', 'G', 'Calngao', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD273'),
(152, '2018-01-0744', 'Paul Jacob', 'D', 'Capitle', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD274'),
(153, '2018-01-0745', 'Ronald', 'C', 'Llanera', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD275'),
(154, '2016-00901', 'Mark Jester', 'A', 'Nicolas', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD276'),
(155, '2015-01592', 'Adrian Emil', 'Sinchioco', 'Taganas', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD277'),
(156, '2016-01056', 'Sarah Lei', 'C', 'Piagan', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD278'),
(157, '2018-01-1107', 'Micahella', 'L', 'Tamondon', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD279'),
(158, '2015-00569', 'Timothy John', 'Genobili', 'Alindayu', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD280'),
(159, '2018-01-1238', 'Philipe Anthony', 'C', 'Battung', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD281'),
(160, '2017-030028', 'John Elrom', 'V', 'Baylon', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD282'),
(161, '2013-01-03104', 'John Dale', 'Guingab', 'Bulusan', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD283'),
(162, '2018-01-1239', 'Romel', 'G', 'Bunagan', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD284'),
(163, '2017-030013', 'Eugene Anthony', 'T', 'Columna', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD285'),
(164, '2017-0100274', 'James', 'C', 'Dulin', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD286'),
(165, '2013-01-02639', 'James Jr.', 'Consuelo', 'Gonzales', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD287'),
(166, '2015-00862', 'Anthony', 'Datul', 'Hernandez', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD288'),
(167, '2018-01-1235', 'Roger Jr.', 'T', 'Leal', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD289'),
(168, '2012-01-02090', 'Mark Anthony ', 'Buraga', 'Macarubbo', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD290'),
(169, '2017-030016', 'John Alex', 'M', 'Miranda', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD291'),
(170, '2018-01-1237', 'Caimon Keith', 'C', 'Nool', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD292'),
(171, '2017-0100293', 'Karl Aldrin', 'Bisquera', 'Paredes', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD293'),
(172, '2017-030011', 'Kaymar', 'C', 'Ramachandran', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD294'),
(173, '2015-00009', 'Joseph Anthony', 'Malana', 'Tabbu', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD295'),
(174, '2015-01251', 'Evan', '', 'Talosig', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD296'),
(175, '2013-01-03271', 'Mark Ashley', 'Cagurangan', 'Tumanguil', 'BSCOE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD297'),
(176, '2016-00033', 'Pauli Angeli', 'Tulauan', 'Aguilar', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD298'),
(177, '2017-03-0001', 'Fatima Yvonne', 'L', 'Allam', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD299'),
(178, '2017-0100279', 'Maria Clarissa', 'L', 'Aquino', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD300'),
(179, '2015-00380', 'Kimberly', 'Sumer', 'Quejado', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD301'),
(180, '2015-00813', 'Patricia', 'Ejiroghene', 'Temile', 'BSCOE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD302'),
(181, '2016-01165', 'Christine', 'P', 'Bancud', 'BSENSE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD303'),
(182, '2016-01877', 'Jenalyn', 'Acera', 'Corpuz', 'BSENSE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD304'),
(183, '2016-01111', 'Jenmizeth Kaye', 'C', 'Ludovice', 'BSENSE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD305'),
(184, '2015-00501', 'Bryan', 'Hosmillo', 'Angoluan', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD306'),
(185, '2015-00360', 'Aaron Henrich', 'Barrias', 'Bambalan', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD307'),
(186, '2015-01257', 'Enrico', 'Ortega', 'Bernardino', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD308'),
(187, '2015-00205', 'Winfreynel', 'Elizaga', 'Dadia', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD309'),
(188, '2015-00665', 'Patrick Leo', 'Ruiz', 'Dela Cruz', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD310'),
(189, '2015-00475', 'Jake', 'Pascua', 'Encarnacion', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD311'),
(190, '2015-01277', 'Marty Niko', 'Manaligod', 'Liban', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD312'),
(191, '2016-000002', 'Edward John', 'Pacis', 'Marallag', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD313'),
(192, '2015-00590', 'Joshua', 'Calamasa', 'Navarro', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD314'),
(193, '2013-01-02694', 'Kent Jude', 'Uman', 'Pascual', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD315'),
(194, '2015-00504', 'Juben', '', 'Salvador', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD316'),
(195, '2015-01256', 'Marc Dylan', '', 'Vargas', 'BSENSE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD317'),
(196, '2013-02-03570', 'Jayanne', 'Favila', 'Apostol', 'BSENSE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD318'),
(197, '2017-03-0009', 'Coleen Joy ', 'Ganipan', 'Cammayo', 'BSENSE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD319'),
(198, '2018-01-1210', 'Angelica', 'Calipdan', 'Baquiran', 'BSGE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD320'),
(199, '2018-01-0640', 'Steven Kent', 'A', 'Alonzo', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD321'),
(200, '2018-01-0084', 'Anford', 'A', 'Aquino', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD322'),
(201, '2012-00232', 'Carl Steven', 'R', 'Aragon', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD323'),
(202, '2012-00230', 'William Harvey', 'Unida', 'Ariniego', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD324'),
(203, '2018-01-0971', 'Jaybie', 'P', 'Barit', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD325'),
(204, '2018-01-1165', 'Charlie', 'B', 'Bugnay', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD326'),
(205, '2018-01-0709', 'Clifford', 'M', 'Clemencia', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD327'),
(206, '2018-01-1169', 'Jared Kyle', 'D', 'Daguitan', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD328'),
(207, '2018-01-1138', 'Kenny Mark', 'B', 'Dongan', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD329'),
(208, '2018-01-0858', 'Irvin Kent', 'G', 'Echalar', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD330'),
(209, '2018-01-0894', 'Paul Christian', 'R', 'Fabro', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD331'),
(210, '2018-01-0742', 'Danielle Angelo', 'A', 'Fieror', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD332'),
(211, '2018-01-0990', 'Charles Harold', 'R', 'Galiza', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD333'),
(212, '2018-01-0076', 'Paul Clifford', 'L', 'Garcia', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD334'),
(213, '2018-01-1013', 'Makk Mogim', 'J', 'Imperio', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD335'),
(214, '2016-01289', 'Gio', 'U', 'Malapira', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD336'),
(215, '2018-01-1039', 'Ariel Jude', 'M', 'Mangrubang', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD337'),
(216, '2018-01-0086', 'Winchel', 'C', 'Mendoza', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD338'),
(217, '2016-01914', 'Eliezer', 'Dela Pena', 'Orge', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD339'),
(218, '2018-01-0905', 'Peter Angelo', 'R', 'Padilla', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD340'),
(219, '2016-01443', 'Mark Howard', 'E', 'Parallag', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD341'),
(220, '2018-01-0079', 'Keith Dylan', 'G', 'Pasion', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD342'),
(221, '2018-01-0305', 'Joefferson', 'D', 'Salcedo', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD343'),
(222, '2018-01-1067', 'Jason Lloyd', 'P', 'Salmo', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD344'),
(223, '2018-01-1258', 'Jastine Vomett Harold', 'W', 'Tabanganay', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD345'),
(224, '2018-01-1020', 'Vincent', 'V', 'Viernes', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD346'),
(225, '2018-01-1228', 'Raymart', 'E', 'Villanueva', 'BSCE', '', '', '', '', 'N', 'M', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD347'),
(226, '2018-01-0927', 'Anna Cristina', 'D', 'Alvarez', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD348'),
(227, '2016-01733', 'Lyka', 'Agregado', 'Aron', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD349'),
(228, '2016-00994', 'Jeanne David', 'F', 'Ba?ares', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD350'),
(229, '2018-01-0075', 'Relyn Mae', 'D', 'Bayani', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD351'),
(230, '2016--1888', 'Leah Sheilamae', 'B', 'Cusipag', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD352'),
(231, '2018-01-0087', 'Cherry Faye', 'R', 'Lamusao', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD353'),
(232, '2014-00680', 'Aravel', 'Reyes', 'Lutoc', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD354'),
(233, '2012-00014', 'Lorraine', 'M', 'Talattad', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD355'),
(234, '2018-01-1010', 'Karren Mae', 'G', 'Umbay', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '0000-00-00 00:00:00', 'ASD356'),
(235, '2018-01-0945', 'Pamela Jezreel', 'T', 'Villanueva', 'BSCE', '', '', '', '', 'N', 'F', '0', 'R', '2018-2019', '2ND', '', '2018-12-08 03:25:00', 'ASD357');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_violation`
--

CREATE TABLE `tbl_violation` (
  `id` int(11) NOT NULL,
  `violation` varchar(100) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `b1` int(1) NOT NULL DEFAULT '0',
  `b2` int(1) NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salt` varchar(255) NOT NULL,
  `remarks` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_violation`
--

INSERT INTO `tbl_violation` (`id`, `violation`, `student_id`, `date`, `b1`, `b2`, `timestamp`, `salt`, `remarks`) VALUES
(40, 'C', '2016-00048', '2019-06-13', 0, 0, '2019-06-13 22:36:19', '38c2ef730fffd4737a39e4f412c200c1a85eb21d', '1'),
(41, 'D', '2016-00048', '2019-06-14', 0, 0, '2019-06-13 22:38:32', '18760a484c5e957e171afa85c105c77b6f758e5c', '1'),
(42, 'F', '2016-00048', '2019-06-14', 0, 0, '2019-06-13 23:22:17', '45dff7f792982837678a7dbe048dee0579027d12', '1'),
(43, 'E', '2016-00048', '2019-06-15', 0, 0, '2019-06-13 23:24:28', '604f23f3405b9cc64a810d0d7b6a1a5e3ac7f14f', '1'),
(44, 'I', '2016-00048', '2019-06-13', 0, 0, '2019-06-13 23:41:37', '881233ce91c8d275a4cfa879e3965650850acaa2', '1'),
(45, 'A', '2016-00048', '2019-06-18', 0, 0, '2019-06-18 23:28:26', '259b1c8da96aae197cc7272bad8d47a08140fe7b', '1'),
(46, 'B', '2016-00048', '2019-06-18', 0, 0, '2019-06-18 23:28:27', '3cc026a863614d6cc78d3197a3ec66e576ec3421', '1'),
(47, 'D', '2016-00048', '2019-06-18', 0, 0, '2019-06-18 23:28:27', '3cc026a863614d6cc78d3197a3ec66e576ec3421', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanction`
--
ALTER TABLE `tbl_sanction`
  ADD PRIMARY KEY (`sanction_id`);

--
-- Indexes for table `tbl_sanctionlink`
--
ALTER TABLE `tbl_sanctionlink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_semyear`
--
ALTER TABLE `tbl_semyear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_violation`
--
ALTER TABLE `tbl_violation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sanction`
--
ALTER TABLE `tbl_sanction`
  MODIFY `sanction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sanctionlink`
--
ALTER TABLE `tbl_sanctionlink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_semyear`
--
ALTER TABLE `tbl_semyear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `tbl_violation`
--
ALTER TABLE `tbl_violation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
