-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2021 at 09:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpage`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class` int(10) NOT NULL,
  `age` int(20) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Sno`, `name`, `class`, `age`, `sid`, `gender`, `group`) VALUES
(1, 'Varsha', 8, 12, '1', 'f', 'C'),
(2, 'Ramya', 9, 13, '2', 'f', 'C'),
(3, 'Jahnavi', 10, 15, '3', 'f', 'B'),
(4, 'Nikitha', 10, 15, '4', 'f', 'C'),
(5, 'Rohith', 8, 13, '5', 'm', 'B'),
(6, 'Indra', 10, 15, '6', 'm', 'B'),
(7, 'Aashritha', 7, 12, '7', 'f', 'B'),
(8, 'Jeevan', 8, 13, '8', 'm', 'B'),
(9, 'Divya', 7, 11, '9', 'f', 'B'),
(10, 'Kolli', 7, 12, '10', 'f', 'A'),
(11, 'Pranitha', 10, 15, '11', 'f', 'C'),
(12, 'Meka', 12, 16, '12', 'm', 'C'),
(13, 'Kiran', 9, 15, '13', 'm', 'A'),
(14, 'Leela', 7, 12, '14', 'f', 'B'),
(15, 'Sukumar', 6, 11, '15', 'm', 'B'),
(16, 'Ravi', 10, 15, '16', 'm', 'B'),
(17, 'Kumar', 7, 13, '17', 'm', 'A'),
(18, 'Navya', 7, 13, '18', 'f', 'C'),
(19, 'Nikhila', 7, 13, '19', 'f', 'C'),
(20, 'Shiva', 10, 16, '20', 'm', 'C'),
(21, 'moushmi', 9, 14, '21', 'f', 'C'),
(22, 'meena', 9, 14, '22', 'f', 'B'),
(23, 'Vasu', 10, 11, '23', 'm', 'A'),
(24, 'Vasavi', 10, 14, '24', 'f', 'B'),
(25, 'Krishn', 9, 12, '25', 'm', 'B'),
(26, 'Chinnu', 9, 14, '26', 'f', 'B'),
(27, 'Raguram', 10, 15, '27', 'm', 'C'),
(28, 'John', 8, 12, '28', 'm', 'B'),
(29, 'Virat', 10, 15, '29', 'm', 'A'),
(30, 'Doreman', 7, 12, '30', 'f', 'B'),
(31, 'Harshini', 8, 12, '31', 'f', 'C'),
(32, 'Rahul', 10, 11, '32', 'm', 'B'),
(33, 'Vasudev', 8, 13, '33', 'm', 'C'),
(34, 'Mario', 9, 14, '34', 'f', 'A'),
(35, 'Harish', 10, 15, '35', 'm', 'B'),
(36, 'Roi', 10, 15, '36', 'm', 'B'),
(37, 'Orange', 10, 15, '37', 'f', 'B'),
(38, 'Lovely', 10, 15, '38', 'f', 'B'),
(39, 'Himani', 9, 14, '39', 'f', 'B'),
(40, 'Manideep', 10, 15, '40', 'm', 'B'),
(41, 'Kinu', 9, 14, '41', 'm', 'B'),
(42, 'Manaswi', 6, 11, '42', 'f', 'B'),
(43, 'Goutham', 8, 12, '43', 'm', 'B'),
(44, 'Dolly', 6, 11, '44', 'f', 'C'),
(45, 'Dhara', 7, 12, '45', 'm', 'C'),
(46, 'Jara', 10, 14, '46', 'f', 'B'),
(47, 'Krishn', 9, 12, '47', 'm', 'A'),
(48, 'Chinnu', 9, 14, '48', 'f', 'B'),
(49, 'Raguram', 10, 15, '49', 'm', 'B'),
(50, 'John', 8, 12, '50', 'm', 'B'),
(51, 'Virat', 10, 15, '51', 'm', 'B'),
(52, 'Doreman', 7, 12, '52', 'f', 'B'),
(53, 'Harshini', 8, 12, '53', 'f', 'B'),
(54, 'Rahul', 10, 11, '54', 'm', 'B'),
(55, 'Vasudev', 8, 13, '55', 'm', 'B'),
(56, 'Mario', 9, 14, '56', 'f', 'B'),
(57, 'Harish', 10, 15, '57', 'm', 'A'),
(58, 'Roi', 10, 15, '58', 'm', 'B'),
(59, 'Orange', 10, 15, '59', 'f', 'B'),
(60, 'Lovely', 10, 15, '60', 'f', 'B'),
(61, 'Himani', 9, 14, '61', 'f', 'B'),
(62, 'Manideep', 10, 15, '62', 'm', 'B'),
(63, 'Kinu', 9, 14, '63', 'm', 'B'),
(64, 'Manaswi', 6, 11, '64', 'f', 'B'),
(65, 'Goutham', 8, 12, '65', 'm', 'B'),
(66, 'Dolly', 6, 11, '66', 'f', 'C'),
(67, 'Dhara', 7, 12, '67', 'm', 'C'),
(68, 'Rahul', 10, 11, '68', 'm', 'B'),
(69, 'Vasudev', 8, 13, '69', 'm', 'B'),
(70, 'Mario', 9, 14, '70', 'f', 'B'),
(71, 'Vasavi', 10, 14, '71', 'f', 'A'),
(72, 'Krishn', 9, 12, '72', 'm', 'B'),
(73, 'Chinnu', 9, 14, '73', 'f', 'B'),
(74, 'Raguram', 10, 15, '74', 'm', 'C'),
(75, 'John', 8, 12, '75', 'm', 'B'),
(76, 'Virat', 10, 15, '76', 'm', 'A'),
(77, 'Doreman', 7, 12, '77', 'f', 'B'),
(78, 'Harshini', 8, 12, '78', 'f', 'B'),
(79, 'Rahul', 10, 11, '79', 'm', 'B'),
(80, 'Vasudev', 8, 13, '80', 'm', 'C'),
(81, 'Mario', 9, 14, '81', 'f', 'A'),
(82, 'Harish', 10, 15, '82', 'm', 'B'),
(83, 'Roi', 10, 15, '83', 'm', 'B'),
(84, 'Orange', 10, 15, '84', 'f', 'B'),
(85, 'Lovely', 10, 15, '85', 'f', 'C'),
(86, 'Himani', 9, 14, '86', 'f', 'C'),
(87, 'Manideep', 10, 15, '87', 'm', 'B'),
(88, 'Kinu', 9, 14, '88', 'm', 'B'),
(89, 'Manaswi', 6, 11, '89', 'f', 'B'),
(90, 'Goutham', 8, 12, '90', 'm', 'B'),
(91, 'Dolly', 6, 11, '91', 'f', 'B'),
(92, 'Dhara', 7, 12, '92', 'm', 'B'),
(93, 'Lovely', 10, 15, '93', 'f', 'B'),
(94, 'Himani', 9, 14, '94', 'f', 'B'),
(95, 'Manideep', 10, 15, '95', 'm', 'B'),
(96, 'Kinu', 9, 14, '96', 'm', 'B'),
(97, 'Manaswi', 6, 11, '97', 'f', 'B'),
(98, 'Goutham', 8, 12, '98', 'm', 'B'),
(99, 'Dolly', 6, 11, '99', 'f', 'B'),
(100, 'Dhara', 7, 12, '100', 'm', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Sno` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Sno`, `name`, `id`, `password`, `address`, `phone`) VALUES
(1, 'Presidency', '1', 'p1', 'Nizamabad', 6303102611);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
