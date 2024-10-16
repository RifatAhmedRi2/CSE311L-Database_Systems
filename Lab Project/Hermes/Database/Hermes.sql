-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2021 at 10:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hermes`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `productID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`productID`, `orderID`, `totalAmount`) VALUES
(13452, 336519, 7060),
(17732, 226499, 2000),
(13889, 135463, 5600),
(17695, 123545, 560),
(12332, 543414, 2450),
(35890, 138535, 460),
(17543, 385634, 18000),
(17695, 456345, 560),
(17732, 894433, 2000),
(12543, 454383, 1200),
(17889, 731353, 790),
(35200, 748681, 400),
(12332, 438534, 2450),
(35890, 463863, 460),
(12543, 235354, 1200),
(12543, 284148, 1200),
(17732, 385364, 2000),
(35200, 394474, 400),
(13889, 638374, 5600),
(17695, 456385, 560);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `customerName` varchar(25) DEFAULT NULL,
  `locationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `locationID`) VALUES
(222, 'RIfat Ahmed', 1300),
(301, 'Nafis Faiyaz', 3300),
(345, 'Shashoto Siam', 1400),
(379, 'Peter Parker', 2000),
(390, 'Tony Stark', 1300),
(408, 'Rahima Begum', 2500),
(409, 'Kuddus Mia', 1600),
(422, 'Mina Akter', 3300),
(436, 'Sakib Al Hasan', 2200),
(447, 'Mushfiqur Rahim', 2200),
(453, 'Tamim Iqbal', 1700),
(463, 'Sabbir Rahman', 2000),
(466, 'Lee Ji Eun', 1400);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationID` int(11) NOT NULL,
  `streetAddress` varchar(25) DEFAULT NULL,
  `city` varchar(25) NOT NULL,
  `postalCode` int(11) NOT NULL,
  `state` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationID`, `streetAddress`, `city`, `postalCode`, `state`) VALUES
(1300, 'Sher-e-bangla road', 'Tongi', 1710, 'Gazipur'),
(1400, 'Gobib-e-newaz road', 'Uttara', 2320, 'Dhaka'),
(1600, 'College gate chottor', 'Pabna', 6600, 'Rajshahi'),
(1700, 'Choyonika garments', 'Dhanmondi', 5643, 'Dhaka'),
(2000, 'Matbor bari road', 'Dumuria', 9252, 'Khulna'),
(2200, 'Chiringa bazar road', 'Cox\'s Bazar', 4743, 'Chittagong'),
(2500, 'Cherag Ali road', 'Tongi', 1713, 'Gazipur'),
(3300, 'Chowrasta', 'Panthapath', 3329, 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `userName` varchar(25) NOT NULL,
  `PASSWORD` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`userName`, `PASSWORD`) VALUES
('Apex', 'apex123'),
('Artisan', 'artisan456'),
('Fashion House', 'fhouse'),
('House of Ahmed', 'HOA123'),
('Texmart', 'tex123'),
('Trendz', 'trendz123');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracking`
--

CREATE TABLE `order_tracking` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `productID` int(11) NOT NULL,
  `locationID` int(11) NOT NULL,
  `orderStatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_tracking`
--

INSERT INTO `order_tracking` (`orderID`, `customerID`, `productID`, `locationID`, `orderStatus`) VALUES
(123545, 422, 17695, 3300, 'Packaging'),
(135463, 379, 13889, 2000, 'Delivered'),
(138535, 453, 35890, 1700, 'Delivered'),
(226499, 466, 17732, 1400, 'Delivered'),
(235354, 447, 12543, 2200, 'Packaging'),
(284148, 463, 12543, 2000, 'Delivered'),
(336519, 222, 13452, 1300, 'Packaging'),
(385364, 436, 17732, 2200, 'Packaging'),
(385634, 390, 17543, 1300, 'Out For Delivery'),
(394474, 222, 35200, 1300, 'Out For Delivery'),
(438534, 390, 12332, 1300, 'Delivered'),
(454383, 222, 12543, 1300, 'Delivered'),
(456345, 345, 17695, 1400, 'Delivered'),
(456385, 379, 17695, 2000, 'Delivered'),
(463863, 390, 35890, 1300, 'Out For Delivery'),
(543414, 301, 12332, 3300, 'Delivered'),
(638374, 466, 13889, 1400, 'Out For Delivery'),
(731353, 301, 17889, 3300, 'Packaging'),
(748681, 422, 35200, 3300, 'Out For Delivery'),
(894433, 408, 17732, 2500, 'Packaging');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productName` varchar(25) DEFAULT NULL,
  `productID` int(11) NOT NULL,
  `productType` varchar(25) NOT NULL,
  `productWeight` double NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productName`, `productID`, `productType`, `productWeight`, `totalAmount`) VALUES
('Panjabi', 12332, 'Clothing', 1, 2450),
('Tshirt', 12543, 'Clothing', 0.5, 1200),
('Fossil Watch', 13452, 'Men\'s Accessories', 0.6, 7060),
('Versace Perfume', 13889, ' Men\'s Accessories', 1.2, 5600),
('LG 32\" Monitor', 17543, 'Electronics', 10, 18000),
('Charging Cable', 17695, 'Mobile Accessories', 0.25, 560),
('Logitech Speakers', 17732, 'Electronics', 2, 2000),
('Mobile Cover', 17889, 'Mobile Accessories', 0.25, 790),
('Doritos', 35200, 'Food', 0.2, 400),
('Pringles and Coke', 35890, 'Food', 1.8, 460);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`,`totalAmount`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `locationID` (`locationID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`,`totalAmount`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order_tracking` (`orderID`),
  ADD CONSTRAINT `billing_ibfk_2` FOREIGN KEY (`productID`,`totalAmount`) REFERENCES `product` (`productID`, `totalAmount`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`locationID`) REFERENCES `location` (`locationID`);

--
-- Constraints for table `order_tracking`
--
ALTER TABLE `order_tracking`
  ADD CONSTRAINT `order_tracking_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `order_tracking_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `order_tracking_ibfk_3` FOREIGN KEY (`locationID`) REFERENCES `customer` (`locationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
