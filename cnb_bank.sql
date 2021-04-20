-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 06:04 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnb_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Dev', 'Karthik', 1000, '2021-04-20 21:25:13'),
(2, 'Karthik', 'Ankush', 500, '2021-04-20 21:25:35'),
(3, 'Virat', 'Anushka', 1000, '2021-04-20 21:25:58'),
(4, 'Karthik', 'Dev', 500, '2021-04-20 21:26:21'),
(5, 'Rohan', 'John', 1500, '2021-04-20 21:26:48'),
(6, 'Dev', 'Virat', 500, '2021-04-20 21:27:13'),
(7, 'Anushka', 'Deepa', 1000, '2021-04-20 21:27:36'),
(8, 'Abhi', 'Amogh', 1000, '2021-04-20 21:28:04'),
(9, 'Virat', 'Rohan', 200, '2021-04-20 21:28:31'),
(10, 'Abhi', 'Rohan', 1000, '2021-04-20 21:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Dev', 'devddp@gmail.com', 99000),
(2, 'Karthik', 'karthik@gmail.com', 200000),
(3, 'Abhi', 'abhi@gmail.com', 48000),
(4, 'Amogh', 'amogh@gmail.com', 6000),
(5, 'Ankush', 'ankush@gmail.com', 10500),
(6, 'Virat', 'virat@gmail.com', 9300),
(7, 'Anushka', 'anushka@gmail.com', 50000),
(8, 'Deepa', 'deepa@gmail.com', 3000),
(9, 'John', 'john@gmail.com', 3000),
(10, 'Rohan', 'rohan@gmail.com', 4700);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
