-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2016 at 05:37 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `junktrade`
--
CREATE DATABASE IF NOT EXISTS `junktrade` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `junktrade`;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `itemid` int(11) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `itemdescription` varchar(500) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `uploaddate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemid`, `itemname`, `itemdescription`, `picture`, `uploaddate`, `userid`) VALUES
(1, 'House', 'This is my house item', '../img/house.jpg', '2016-11-26 03:38:21', 1),
(2, 'Peas', 'This is my easy peasy item', '../img/easy.png', '2016-11-26 03:38:21', 2),
(3, 'Money', 'This is my money item', '../img/nomoney.png', '2016-11-26 03:38:42', 2),
(4, 'Friends', 'This is my friends item', '../img/buddy.png', '2016-11-26 03:38:42', 6),
(25, 'Dell XPS', 'Processor: i7 3.5 Ghz Quad Core\r\nRam: 12 GB\r\nGraphics: GeForce GTX 980', '../img/xps.png', '2016-11-26 15:54:19', 6),
(26, 'Logo', 'This is my logo item', '../img/logo.png', '2016-11-26 15:55:07', 6),
(27, 'HP Laptop', 'Processor: i5 2.5 Ghz Dual Core\r\nRam: 8 GB\r\nGraphics: Intel ', '../img/hp.jpg', '2016-11-26 15:57:48', 1),
(29, 'SVG Flag', 'This the flag of St. Vincent and the Grenadines, West Indies', '../img/svgflag.png', '2016-11-27 15:21:11', 39),
(30, '', 'Weed is my best friend', '../img/cloudserver.jpg', '2016-11-27 22:57:00', 40);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `interests` varchar(100) DEFAULT NULL,
  `tradables` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `ratingNumber` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `requester` int(11) NOT NULL,
  `requestee` int(11) NOT NULL,
  `item` int(10) NOT NULL,
  `timerequested` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `requester`, `requestee`, `item`, `timerequested`) VALUES
(11, 39, 6, 26, '2016-11-27 20:05:31'),
(12, 6, 39, 29, '2016-11-27 20:06:06'),
(13, 39, 1, 27, '2016-11-27 20:08:12'),
(15, 1, 6, 25, '2016-11-27 21:34:00'),
(19, 6, 39, 29, '2016-11-27 22:30:01'),
(20, 39, 40, 30, '2016-11-27 22:57:45'),
(21, 40, 39, 29, '2016-11-27 23:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `TransactionId` int(11) NOT NULL,
  `User1` int(11) NOT NULL,
  `User2` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `email`, `contact`, `address`, `password`) VALUES
(1, 'micmcm', 'Mickel', 'McMillan', 'mickelmcmillan@email.com', '1234567', 'Milner', '6918950f89321712a8641620423d8c7d25951c0c'),
(2, 'mikmon', 'Mikael', 'Montoute', 'mikaelmontoute@email.com', '9876543', 'Diego Martin', '16331e4442209ff309047eaec83430646490f038'),
(6, 'jamtart', 'Jamal', 'Winchester', 'jamalwinchester@email.com', '4517889', 'Tobago', '0942897430e12d98c4acafc63d50b91fda44ca38'),
(7, 'fesean', 'Shamar', 'Culzuc', 'shamarculzac@email.com', '485566', 'St.Vincent', '825cce7a7af23134328ca7a872a142337e0a07fc'),
(8, 'pinky', 'Justin', 'Cadougan', 'justincadougan@email.com', '7894686', 'St.Vincent', 'f1412f80e25ec11bef07414c2cfa8c84ce3fdf23'),
(9, 'kyledef', 'Kyle', 'DeFreitas', 'kyledefreitas@email.com', '455454', 'St.Vincent', '7103a38d7b345ad9dc1e25dd3b7dd606f84d2c0c'),
(10, 'shiva', 'Shiva', 'Ramoudith', 'shiveramoudith@email.com', '47558', 'Trinidad', '848b186485107266a3807096d328690f86a22c05'),
(34, 'franny', 'Francis', 'Darius', 'francis@email.com', '1234567899', 'Florida', '63ab89682d9a027b1f5c91f6b0ed347ef7dc9ac7'),
(38, 'kieu', 'Duc', 'Kieu', 'kieu@email.com', '1111111111', 'Lady Young', '2c27c22226e3fc5c109ebb4cbc4c972e02bce8f8'),
(39, 'kyledef', 'Kyle', 'De Freitas', 'kyle@email.com', '1234567890', 'St. Vincent', '6233de5df38c206a8bde5ae6f8be9c6949740c1f'),
(40, 'rastaman', 'Kadem', 'McGillivary', 'rasta@email.com', '1111111111', 'Carriacou', 'f9c897117a284ec37d408472be98de935b93f83f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`ratingNumber`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `ratingNumber` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
