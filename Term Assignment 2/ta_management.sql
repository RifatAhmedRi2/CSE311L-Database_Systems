-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 06:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `ID1` int(11) NOT NULL,
  `ID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend`
--

INSERT INTO `friend` (`ID1`, `ID2`) VALUES
(510, 381),
(510, 689),
(689, 709),
(381, 247),
(709, 247),
(689, 782),
(782, 468),
(782, 316),
(782, 304),
(468, 101),
(468, 641),
(101, 641),
(247, 911),
(247, 501),
(501, 501),
(501, 934),
(316, 934),
(934, 304),
(304, 661),
(661, 25),
(381, 510),
(689, 510),
(709, 689),
(247, 381),
(247, 709),
(782, 689),
(468, 782),
(316, 782),
(304, 782),
(101, 468),
(641, 468),
(641, 101),
(911, 247),
(501, 247),
(501, 911),
(934, 501),
(934, 316),
(304, 934),
(661, 304),
(25, 661);

-- --------------------------------------------------------

--
-- Table structure for table `review_ta`
--

CREATE TABLE `review_ta` (
  `ID1` int(11) NOT NULL,
  `ID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_ta`
--

INSERT INTO `review_ta` (`ID1`, `ID2`) VALUES
(689, 709),
(709, 689),
(782, 709),
(911, 247),
(247, 468),
(641, 468),
(316, 304),
(501, 934),
(934, 501),
(25, 101);

-- --------------------------------------------------------

--
-- Table structure for table `ta`
--

CREATE TABLE `ta` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `GPA` double(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ta`
--

INSERT INTO `ta` (`ID`, `Name`, `Semester`, `GPA`) VALUES
(25, 'Joyonto', 12, 3.55),
(101, 'Hasan', 10, 3.78),
(247, 'Alamin', 11, 3.35),
(304, 'Jahangir', 12, 3.49),
(316, 'Ananotara', 11, 3.50),
(381, 'Tania', 9, 3.66),
(468, 'Kashfia', 10, 3.56),
(501, 'Jessica', 11, 3.78),
(510, 'Jahid', 9, 3.36),
(641, 'Britto', 10, 3.99),
(661, 'Laila', 12, 3.66),
(689, 'Gazi', 9, 3.40),
(709, 'Chandra', 9, 3.98),
(782, 'Ananna', 10, 3.45),
(911, 'Gonesh', 11, 3.89),
(934, 'Konica', 12, 3.29);

-- --------------------------------------------------------

--
-- Table structure for table `ta_info`
--

CREATE TABLE `ta_info` (
  `id` int(11) NOT NULL,
  `Position` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ta_info`
--

INSERT INTO `ta_info` (`id`, `Position`) VALUES
(25, 'GA'),
(101, 'UGA'),
(247, 'UGA'),
(304, 'UGA'),
(316, 'GA'),
(381, 'UGA'),
(468, 'UGA'),
(501, 'UGA'),
(510, 'UGA'),
(641, 'UGA'),
(661, 'UGA'),
(689, 'UGA'),
(709, 'UGA'),
(782, 'UGA'),
(911, 'GA'),
(934, 'GA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ta`
--
ALTER TABLE `ta`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ta_info`
--
ALTER TABLE `ta_info`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
