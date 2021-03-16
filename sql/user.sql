-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 04:30 AM
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
-- Database: `user`
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
(1, 'Rohan', 'Shahid', 467, '2021-03-08 09:24:09'),
(2, 'Mittal paeysh', 'Dwayne smith', 3464, '2021-03-13 21:45:07');

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
(1, 'Rohan', 'rohu@gmail.com', 3079),
(2, 'Dwayne smith', 'dwayne@gmail.com', 23964),
(3, 'Mittal paeysh', 'mittal@gmail.com', 50034),
(4, 'Ashraf Shamim', 'ashraf35@gmail.com', 50000),
(5, 'RS. Tiwari', 'tiwari@reddiff.com', 35838),
(6, 'Shubham Kumar', 'kumar@gmail.com', 25778),
(7, 'Deepika', 'padukone@gmail.com', 50000),
(8, 'Rahul Roshan', 'roshan@gmail.com', 10004),
(9, 'Virat Indra', 'virat@gmail.com', 30000),
(10, 'Shaheen Aasir', 'aasir@email.com', 50776);

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
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
