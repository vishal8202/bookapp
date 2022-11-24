-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 10:23 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `adress` varchar(20) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `adress`, `phno`, `username`, `password`) VALUES
(1, 'vishal vijayan', 'thodupuzha', 8113808202, 'vishal', 'vishal@123');

-- --------------------------------------------------------

--
-- Table structure for table `books_detail`
--

CREATE TABLE `books_detail` (
  `bookid` int(11) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `Author_name` varchar(20) NOT NULL,
  `book_categ` varchar(20) NOT NULL,
  `charge_p_day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_detail`
--

INSERT INTO `books_detail` (`bookid`, `book_name`, `Author_name`, `book_categ`, `charge_p_day`) VALUES
(1, 'alice in wonder land', 'lews', 'fantasy', 250),
(2, 'the book', 'conan', 'classic', 100),
(3, 'a womans life', 'maupassant', 'literary', 520),
(4, 'oliver', 'charies', 'fiction', 200),
(5, 'pinijar', 'amrita', 'social', 400),
(6, 'dead city', 'james', 'fiction', 250),
(7, 'a revenu stamp', 'amrita', 'poetry', 300),
(8, 'the india story', 'bimal', 'creative nonfiction', 350),
(9, 'queen of fire', 'devika', 'fantasy', 300),
(10, 'monsoon', 'sahitya', 'historical fiction', 280);

-- --------------------------------------------------------

--
-- Table structure for table `issuebooks`
--

CREATE TABLE `issuebooks` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `Established_date` date NOT NULL,
  `returndate` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebooks`
--

INSERT INTO `issuebooks` (`id`, `userid`, `bookid`, `Established_date`, `returndate`, `amount`) VALUES
(1, 101, 201, '2022-11-10', '2022-11-25', 200),
(2, 102, 202, '2022-11-23', '2022-11-30', 200),
(3, 103, 203, '2022-11-02', '2022-11-24', 300),
(4, 104, 204, '2022-11-10', '2022-11-24', 302),
(5, 105, 205, '2022-11-17', '2022-11-30', 500),
(6, 106, 206, '2022-11-02', '2022-11-24', 300),
(7, 107, 207, '2022-11-10', '2022-11-25', 600),
(8, 108, 208, '2022-11-16', '2022-11-24', 600),
(9, 109, 209, '2022-11-10', '2022-11-25', 200),
(10, 110, 210, '2022-11-24', '2022-11-30', 300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `adress` varchar(20) NOT NULL,
  `phno` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `adress`, `phno`) VALUES
(1, 'vishal', 'idukki', 8113808202),
(2, 'tom', 'kottayam', 1234567890),
(3, 'akash', 'kollam', 9876543210),
(4, 'karthi', 'kannur', 6789054321);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books_detail`
--
ALTER TABLE `books_detail`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `issuebooks`
--
ALTER TABLE `issuebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books_detail`
--
ALTER TABLE `books_detail`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `issuebooks`
--
ALTER TABLE `issuebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
