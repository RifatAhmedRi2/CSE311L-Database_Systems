-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 08:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `daten`
--

CREATE TABLE `daten` (
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1510, 1381),
(1510, 1689),
(1689, 1709),
(1381, 1247),
(1709, 1247),
(1689, 1782),
(1782, 1468),
(1782, 1316),
(1782, 1304),
(1468, 1101),
(1468, 1641),
(1101, 1641),
(1247, 1911),
(1247, 1501),
(1501, 1501),
(1501, 1934),
(1316, 1934),
(1934, 1304),
(1304, 1661),
(1661, 1025),
(1381, 1510),
(1689, 1510),
(1709, 1689),
(1247, 1381),
(1247, 1709),
(1782, 1689),
(1468, 1782),
(1316, 1782),
(1304, 1782),
(1101, 1468),
(1641, 1468),
(1641, 1101),
(1911, 1247),
(1501, 1247),
(1501, 1911),
(1934, 1501),
(1934, 1316),
(1304, 1934),
(1661, 1304),
(1025, 1661);

-- --------------------------------------------------------

--
-- Table structure for table `highschooler`
--

CREATE TABLE `highschooler` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `grade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `highschooler`
--

INSERT INTO `highschooler` (`ID`, `name`, `grade`) VALUES
(1510, 'Jordan', '9'),
(1689, 'Gabriel', '9'),
(1381, 'Tiffany', '9'),
(1709, 'Cassandra', '9'),
(1101, 'Haley', '10'),
(1782, 'Andrew', '10'),
(1468, 'Kris', '10'),
(1641, 'Brittany', '10'),
(1247, 'Alexis', '11'),
(1316, 'Austin', '11'),
(1911, 'Gabriel', '11'),
(1501, 'Jessica', '11'),
(1304, 'Jordan', '12'),
(1025, 'John', '12'),
(1934, 'Kyle', '12'),
(1661, 'Logan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `ID1` int(11) NOT NULL,
  `ID2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`ID1`, `ID2`) VALUES
(1689, 1709),
(1709, 1689),
(1782, 1709),
(1911, 1247),
(1247, 1468),
(1641, 1468),
(1316, 1304),
(1501, 1934),
(1934, 1501),
(1025, 1101);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
