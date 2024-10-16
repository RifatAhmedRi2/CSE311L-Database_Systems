-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2021 at 12:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `term_assignment_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `shop_details`
--

CREATE TABLE `shop_details` (
  `sID` int(11) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `owner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shop_details`
--

INSERT INTO `shop_details` (`sID`, `sName`, `year`, `owner`) VALUES
(245, 'Evaly', 2018, 'Mohammad Rassel'),
(246, 'Daraz', 2014, 'Alibaba Group'),
(247, 'PickaBoo', 2015, 'Silver Water Technologies Bangladesh Limited'),
(248, 'AliExpress', 2010, 'Alibaba Group'),
(249, 'Amazon India', 2012, 'Amazon.com, Inc.'),
(250, 'Amazon USA', 1994, 'Amazon.com, Inc.'),
(251, 'eBay', 1995, NULL),
(252, 'Flipkart', 2007, 'Walmart');

-- --------------------------------------------------------

--
-- Table structure for table `s_rating`
--

CREATE TABLE `s_rating` (
  `rID` int(11) DEFAULT NULL,
  `sID` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `ratingDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_rating`
--

INSERT INTO `s_rating` (`rID`, `sID`, `stars`, `ratingDate`) VALUES
(336, 245, 2, '2011-01-22'),
(336, 245, 4, '2011-01-27'),
(337, 250, 4, NULL),
(338, 247, 2, '2011-01-20'),
(338, 252, 4, '2011-01-12'),
(338, 252, 2, '2011-01-30'),
(339, 245, 3, '2011-01-09'),
(340, 247, 3, '2011-01-27'),
(340, 248, 2, '2011-01-22'),
(340, 252, 4, NULL),
(341, 251, 3, '2011-01-15'),
(341, 250, 5, '2011-01-19'),
(342, 251, 5, '2011-01-20'),
(343, 248, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_reviewer`
--

CREATE TABLE `s_reviewer` (
  `rID` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `s_reviewer`
--

INSERT INTO `s_reviewer` (`rID`, `name`) VALUES
(336, 'The Daily Star'),
(337, 'Prothom Alo'),
(338, 'Forbes'),
(339, 'The New York Times'),
(340, 'The Daily Observer'),
(341, 'The Washington Post'),
(342, 'Amazon.com, Inc.'),
(343, 'Alibaba Group'),
(504, 'Times of India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_reviewer`
--
ALTER TABLE `s_reviewer`
  ADD PRIMARY KEY (`rID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
