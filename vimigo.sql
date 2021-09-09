-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2021 at 06:51 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swimming society`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(128) NOT NULL,
  `userEmail` varchar(128) NOT NULL,
  `userPassword` varchar(128) NOT NULL,
  `userStatus` varchar(128) DEFAULT 'member' CHECK (`userStatus` = 'member' or `userStatus` = 'admin'),
  `studentId` int(7) NOT NULL,
  `userFullname` varchar(128) NOT NULL,
  `userAddress` varchar(128) NOT NULL,
  `userPostcode` int(5) NOT NULL,
  `userCity` varchar(128) NOT NULL,
  `stateId` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPassword`, `userStatus`, `studentId`, `userFullname`, `userAddress`, `userPostcode`, `userCity`, `stateId`) VALUES
(1, 'root', 'root@gmail.com', '$2y$10$ReJUOpOdUBzQ688x1wE/qe2wmb3xTzvZJlkf5JHK4YzBGN95Nj0G6', 'admin', 0, 'root', 'root', 70000, 'seremban', 1),
(6, 'THONG', 'limyt-wm20@student.tarc.edu.my', '$2y$10$IDeVEyZzHxDJCNA/XveAoOlhPl3PrpvCeKFi3JoRyIs91bh.WijFi', 'member', 2004305, 'LIM YING THONG', 'No 100', 52100, 'kl', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `stateId` (`stateId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
