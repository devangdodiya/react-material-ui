-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2021 at 09:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletedata` (IN `id1` INT(10))  BEGIN
DELETE FROM `user` WHERE `id` = `id1`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getuserdata` ()  BEGIN
SELECT * FROM `user`;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertdata` (IN `name` VARCHAR(100), IN `email` VARCHAR(100), IN `pass` VARCHAR(100))  BEGIN
INSERT INTO `user`(`user_name`, `email`, `password`) VALUES (`name`,`email`,`pass`);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatedata` (IN `name` VARCHAR(100), IN `email` VARCHAR(100), IN `pass` VARCHAR(100), IN `id1` INT(10))  BEGIN
INSERT INTO `user`(`user_name`, `email`, `password`,`id`) VALUES (`name`,`email`,`pass`,`id1`);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` int(1) NOT NULL,
  `profile` longtext NOT NULL,
  `isDelete` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`, `gender`, `profile`, `isDelete`) VALUES
(1, 'devang as', 'devang@gmail.com', 1, 'images/609b819773931.jpg', 0),
(2, 'dasdas asd', 'dasdas@f.com', 1, 'images/609b80f3ca4b9.', 1),
(3, 'devang dodiya', 'das', 2, 'images/609b5f9312b39.png', 1),
(4, 'dsa', 'das', 1, 'images/609b66076cbde.png', 1),
(12, 'devang', 'e10adc3949ba59abbe56e057f20f883e', 1, 'images/609bad667f6c3.png', 0),
(13, 'devang@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 'images/609bae2e07bab.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `email`, `password`) VALUES
(1, 'devang', 'dv#gmail.com', '123456'),
(2, 'dev', 'dev@d.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
