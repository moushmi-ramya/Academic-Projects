-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2021 at 12:01 PM
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
-- Database: `quizapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

CREATE TABLE `tbl_app` (
  `app_id` int(10) UNSIGNED NOT NULL,
  `app_name` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`app_id`, `app_name`, `email`, `username`, `password`, `contact`) VALUES
(1, 'C-Smile', 'csmile@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '040-22222222');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `question_id` int(10) UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `first_answer` varchar(255) NOT NULL,
  `second_answer` varchar(255) NOT NULL,
  `third_answer` varchar(255) NOT NULL,
  `fourth_answer` varchar(255) NOT NULL,
  `answer` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`question_id`, `question`, `first_answer`, `second_answer`, `third_answer`, `fourth_answer`, `answer`, `image_name`) VALUES
(1, 'Which of the following is the characteristic of T Flip Flop?', 'a', 'b', 'c', 'd', 2, 'Exam_Question_95dcfd2dfa9dc7d61dff32094d138306.png'),
(2, 'What is the next state output of T flip flop, if its input is zero?\r\n', 'Hold state ', '1', 'Complement of present state', '0', 1, ''),
(3, 'How a J K flip-flop is made to toggle its present state?\r\n', 'J=0, K=0', 'J=1, K=0', 'J=0, K=1', 'J=1, K=1', 4, ''),
(4, 'What is the next state output of T flip flop if the input is 1?\r\n', '1', '0', 'Qn', '(Qn)\'', 4, ''),
(5, 'If J=0, K=0 in J K flip flop, then output Q n+1 (the next state output) will be\r\n', '1', '0', '(Qn)\'', 'Qn', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `user_answer` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`result_id`, `student_id`, `question_id`, `user_answer`) VALUES
(1, 1, 1, 2),
(2, 1, 3, 2),
(3, 2, 1, 4),
(4, 2, 2, 3),
(5, 5, 1, 2),
(6, 5, 3, 4),
(7, 4, 1, 1),
(8, 4, 2, 2),
(9, 14, 1, 4),
(10, 14, 2, 1),
(11, 15, 1, 3),
(12, 15, 2, 1),
(13, 22, 1, 4),
(14, 22, 2, 3),
(15, 7, 1, 4),
(16, 7, 2, 4),
(17, 11, 1, 3),
(18, 11, 2, 3),
(19, 8, 1, 1),
(20, 8, 2, 4),
(21, 12, 1, 1),
(22, 12, 2, 1),
(23, 16, 1, 1),
(24, 16, 2, 3),
(25, 26, 1, 2),
(26, 26, 3, 1),
(27, 23, 1, 3),
(28, 23, 2, 2),
(29, 28, 1, 3),
(30, 28, 2, 4),
(31, 30, 1, 2),
(32, 30, 3, 2),
(33, 3, 1, 2),
(34, 3, 3, 3),
(35, 6, 1, 4),
(36, 6, 2, 2),
(37, 9, 1, 1),
(38, 9, 2, 2),
(39, 10, 1, 1),
(40, 10, 2, 1),
(41, 13, 1, 3),
(42, 13, 2, 1),
(43, 17, 1, 2),
(44, 17, 3, 4),
(45, 18, 1, 1),
(46, 18, 2, 4),
(47, 19, 1, 4),
(48, 19, 2, 1),
(49, 20, 1, 2),
(50, 20, 3, 1),
(51, 21, 1, 1),
(52, 21, 2, 3),
(53, 24, 1, 2),
(54, 24, 3, 3),
(55, 25, 1, 4),
(56, 25, 2, 2),
(57, 27, 1, 4),
(58, 27, 2, 4),
(59, 29, 1, 3),
(60, 29, 2, 3),
(61, 31, 1, 3),
(62, 31, 2, 4),
(63, 32, 1, 4),
(64, 32, 2, 1),
(65, 33, 1, 3),
(66, 33, 2, 2),
(67, 34, 1, 1),
(68, 34, 2, 1),
(69, 35, 1, 2),
(70, 35, 3, 2),
(71, 36, 1, 3),
(72, 36, 2, 3),
(73, 37, 1, 2),
(74, 37, 3, 3),
(75, 38, 1, 4),
(76, 38, 2, 3),
(77, 39, 1, 1),
(78, 39, 2, 1),
(79, 40, 1, 4),
(80, 40, 2, 4),
(81, 41, 1, 2),
(82, 41, 3, 3),
(83, 42, 1, 3),
(84, 42, 2, 3),
(85, 43, 1, 4),
(86, 43, 2, 4),
(87, 44, 1, 3),
(88, 44, 2, 2),
(89, 45, 1, 4),
(90, 45, 2, 3),
(91, 46, 1, 1),
(92, 46, 2, 1),
(93, 47, 1, 2),
(94, 47, 3, 4),
(95, 48, 1, 3),
(96, 48, 2, 4),
(97, 49, 1, 2),
(98, 49, 3, 1),
(99, 50, 1, 4),
(100, 50, 2, 1),
(101, 51, 1, 3),
(102, 51, 2, 1),
(103, 52, 1, 4),
(104, 52, 2, 4),
(105, 53, 1, 3),
(106, 53, 2, 1),
(107, 54, 1, 2),
(108, 54, 3, 2),
(109, 55, 1, 1),
(110, 55, 2, 3),
(111, 56, 1, 2),
(112, 56, 3, 3),
(113, 61, 1, 1),
(114, 61, 2, 1),
(115, 57, 1, 2),
(116, 57, 3, 1),
(117, 58, 1, 2),
(118, 58, 3, 4),
(119, 59, 1, 4),
(120, 59, 2, 2),
(121, 60, 1, 3),
(122, 60, 2, 3),
(123, 62, 1, 2),
(124, 62, 3, 1),
(125, 63, 1, 3),
(126, 63, 2, 1),
(127, 64, 1, 2),
(128, 64, 3, 2),
(129, 65, 1, 1),
(130, 65, 2, 4),
(131, 66, 1, 3),
(132, 66, 2, 1),
(133, 67, 1, 3),
(134, 67, 2, 3),
(135, 68, 1, 1),
(136, 68, 2, 1),
(137, 69, 1, 4),
(138, 69, 2, 2),
(139, 70, 1, 2),
(140, 70, 3, 3),
(141, 71, 1, 1),
(142, 71, 2, 3),
(143, 72, 1, 3),
(144, 72, 2, 3),
(145, 73, 1, 2),
(146, 73, 3, 2),
(147, 74, 1, 4),
(148, 74, 2, 4),
(149, 75, 1, 1),
(150, 75, 2, 4),
(151, 76, 1, 3),
(152, 76, 2, 2),
(153, 77, 1, 4),
(154, 77, 2, 1),
(155, 78, 1, 1),
(156, 78, 2, 1),
(157, 79, 1, 3),
(158, 79, 2, 1),
(159, 80, 1, 2),
(160, 80, 3, 3),
(161, 81, 1, 1),
(162, 81, 2, 4),
(163, 82, 1, 4),
(164, 82, 2, 1),
(165, 83, 1, 3),
(166, 83, 2, 4),
(167, 84, 1, 2),
(168, 84, 3, 1),
(169, 85, 1, 4),
(170, 85, 2, 2),
(171, 86, 1, 2),
(172, 86, 3, 1),
(173, 87, 1, 1),
(174, 87, 2, 1),
(175, 88, 1, 3),
(176, 88, 2, 1),
(177, 89, 1, 2),
(178, 89, 3, 4),
(179, 90, 1, 1),
(180, 90, 2, 3),
(181, 91, 1, 2),
(182, 91, 3, 4),
(183, 92, 1, 1),
(184, 92, 2, 2),
(185, 93, 1, 4),
(186, 93, 2, 2),
(187, 94, 1, 3),
(188, 94, 2, 3),
(189, 101, 1, 1),
(190, 101, 2, 4),
(191, 95, 1, 3),
(192, 95, 2, 1),
(193, 96, 1, 1),
(194, 96, 2, 2),
(195, 97, 1, 2),
(196, 97, 3, 2),
(197, 98, 1, 4),
(198, 98, 2, 2),
(199, 99, 1, 3),
(200, 99, 2, 4),
(201, 100, 1, 2),
(202, 100, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `email`, `username`, `password`, `contact`, `gender`) VALUES
(1, 'Moushmi', 'Ramya', 'patibandla_moushmi@srmap.edu.in', 'Moushmi', 'Moushmi', '9866622288', 'female'),
(2, 'Meka', 'Varsha', 'meka_varsha@srmap.edu.in', 'Varsha', 'Varsha', '6303102611', 'female'),
(3, 'Ravipudi', 'Jahnavi', 'jahnavi_ravipudi@srmap.edu.in', 'Jahnavi', 'Jahnavi', '8333825587', 'female'),
(4, 'Mogili', 'Nikitha', 'mogili_nikitha@srmap.edu.in', 'Nikitha', 'Nikitha', '8106172291', 'female'),
(5, 'Indra', 'Kiran', 'indra@gmail.com', 'Indra', 'Indra', '9177542426', 'male'),
(6, 'Rohith', 'Kumar', 'rohith@gmail.com', 'Rohith', 'Rohith', '7680939306', 'male'),
(7, 'Sai ', 'Kiran', 'sai@gmail.com', 'Sai', 'Sai', '8501846041', 'male'),
(8, 'Chandana', 'Gummadi', 'chandana@gmail.com', 'Chandana', 'Chandana', '6300034159', 'female'),
(9, 'Divya', 'Kolli', 'divya@gmail.com', 'Divya', 'Divya', '9494014888', 'female'),
(10, 'Keerthi', 'Gummadi', 'keerthi@gmail.com', 'Keerthi', 'Keerthi', '8074864252', 'female'),
(11, 'Hitendra', 'Sai', 'hitendra@gmail.com', 'Hitendra', 'Hitendra', '9959448073', 'male'),
(12, 'Rama', 'Devi', 'rama@gmail.com', 'Rama', 'Rama', '9876213476', 'female'),
(13, 'Sobin', 'CC', 'sobin@gmail.com', 'Sobin', 'Sobin', '9687423478', 'male'),
(14, 'Sudhakar', 'P', 'sudhakar@gmail.com', 'Sudhakar', 'Sudhakar', '9866622211', 'male'),
(15, 'Neelima', 'P', 'neelima@gmail.com', 'Neelima', 'Neelima', '8985432889', 'female'),
(16, 'Ravi', 'Teja', 'ravi@gmail.com', 'Ravi', 'Ravi', '9968751325', 'male'),
(17, 'Harshini', 'Y', 'harshini@gmail.com', 'Harshini', 'Harshini', '8795632412', 'female'),
(18, 'Hema', 'Harshitha', 'hema@gmail.com', 'Hema', 'Hema', '8794632156', 'female'),
(19, 'Jagruth', 'K', 'jagruth@gmail.com', 'Jagruth', 'Jagruth', '9874586995', 'male'),
(20, 'Advitha', 'P', 'advitha@gmail.com', 'Advitha', 'Advitha', '9986745236', 'female'),
(21, 'Jessi', 'Reddy', 'jessi@gmail.com', 'Jessi', 'Jessi', '8897545686', 'female'),
(22, 'Kishore', 'Babu', 'kishore@gmail.com', 'Kishore', 'Kishore', '9966102576', 'male'),
(23, 'Satyavathi', 'V', 'satyavathi@gmail.com', 'Satyavathi', 'Satyavathi', '7895489654', 'female'),
(24, 'Tinku', 'S', 'tinku@gmail.com', 'Tinku', 'Tinku', '9874685458', 'male'),
(25, 'Tina', 'M', 'tina@gmail.com', 'Tina', 'Tina', '9874562132', 'female'),
(26, 'Dimpy', 'P', 'dimpy@gmail.com', 'Dimpy', 'Dimpy', '8897557423', 'female'),
(27, 'Bhaskar', 'S', 'bhaskar@gmail.com', 'Bhaskar', 'Bhaskar', '9977445586', 'male'),
(28, 'Deepti', 'Reddy', 'deepti@gmail.com', 'Deepti', 'Deepti', '8877445522', 'female'),
(29, 'Virat ', 'Kohli', 'virat@gmail.com', 'Virat', 'Virat', '9966885577', 'male'),
(30, 'Gan', 'Han', 'gh@gmail.com', 'GH', 'GH', '9988774455', 'male'),
(31, 'Std', '1', 'std1@gmail.com', 'Std1', 'Std1', '9121615434', 'male'),
(32, 'Std', '2', 'std2@gmail.com', 'Std2', 'Std2', '7984989136', 'male'),
(33, 'Std ', '3', 'std3@gmail.com', 'Std3', 'Std3', '9988855147', 'female'),
(34, 'Std', '4', 'std4@gmail.com', 'Std4', 'Std4', '9988774452', 'female'),
(35, 'Std', '5', 'std5@gmail.com', 'Std5', 'Std5', '3322111145', 'female'),
(36, 'Std', '6', 'std6@gmail.com', 'Std6', 'Std6', '7788995533', 'male'),
(37, 'Std', '7', 'std7@gmail.com', 'Std7', 'Std7', '986 662 2212', 'female'),
(38, 'Std', '8', 'std8@gmail.com', 'Std8', 'Std8', '7788553333', 'male'),
(39, 'Std', '9', 'std9@gmail.com', 'Std9', 'Std9', '7680939307', 'male'),
(40, 'Std', '10', 'std10@gmail.com', 'Std10', 'Std10', '5566778866', 'female'),
(41, 'Std', '11', 'std11@gmail.com', 'Std11', 'Std11', '0986 662 221', 'male'),
(42, 'Std', '12', 'std12@gmail.com', 'Std12', 'Std12', '0984989136', 'female'),
(43, 'Std', '13', 'std13@gmail.com', 'Std13', 'Std13', '09866622287', 'male'),
(44, 'Std', '14', 'std14@gmail.com', 'Std14', 'Std14', '0984989137', 'male'),
(45, 'Std', '15', 'std15@gmail.com', 'Std15', 'Std15', '0984989138', 'female'),
(46, 'Std', '16', 'std16@gmail.com', 'Std16', 'Std16', '0984989132', 'male'),
(47, 'Std', '17', 'std17@gmail.com', 'Std17', 'Std17', '0984989163', 'male'),
(48, 'Std', '18', 'std18@gmail.com', 'Std18', 'Std18', '0986 662 211', 'female'),
(49, 'Std', '19', 'std19@gmail.com', 'Std19', 'Std19', '0984981363', 'female'),
(50, 'Std', '20', 'std20@gmail.com', 'Std20', 'Std20', '086 662 2211', 'male'),
(51, 'Std', '21', 'std21@gmail.com', 'Std21', 'Std21', '9191216154', 'female'),
(52, 'Std', '22', 'std22@gmail.com', 'Std22', 'Std22', '9888456237', 'male'),
(53, 'Std', '23', 'std23@gmail.com', 'Std23', 'Std23', '9966554477', 'male'),
(54, 'Std', '24', 'std24@gmail.com', 'Std24', 'Std24', '4455661122', 'female'),
(55, 'Std', '25', 'std25@gmail.com', 'Std25', 'Std25', '0949891363', 'female'),
(56, 'Std', '26', 'std26@gmail.com', 'Std26', 'Std26', '8498913631', 'female'),
(57, 'Std', '27', 'std27@gmail.com', 'Std27', 'Std27', '6688552277', 'female'),
(58, 'Std', '28', 'std28@gmail.com', 'Std28', 'Std28', '9966552211', 'male'),
(59, 'Std', '29', 'std29@gmail.com', 'Std29', 'Std29', '7788552211', 'female'),
(60, 'Std', '30', 'std30@gmail.com', 'Std30', 'Std30', '6655441133', 'male'),
(61, 'Std', '31', 'std31@gmail.com', 'Std31', 'Std31', '6677889911', 'male'),
(62, 'Std', '32', 'std32@gmail.com', 'Std32', 'Std32', '5566221147', 'female'),
(63, 'Std', '33', 'std33@gmail.com', 'Std33', 'Std33', '0986 66 2211', 'male'),
(64, 'Std', '34', 'std34@gmail.com', 'Std34', 'Std34', '6677889955', 'male'),
(65, 'Std', '35', 'std35@gmail.com', 'Std35', 'Std35', '7788995544', 'male'),
(66, 'Std', '36', 'std36@gmail.com', 'Std36', 'Std36', '7788556633', 'female'),
(67, 'Std', '37', 'std37@gmail.com', 'Std37 ', 'Std37', '1122334455', 'male'),
(68, 'Std', '38', 'std38@gmail.com', 'Std38', 'Std38', '2233344566', 'male'),
(69, 'Std', '39', 'std39@gmail.com', 'Std39', 'Std39', '2233445566', 'female'),
(70, 'Std', '40', 'std40@gmail.com', 'Std40', 'Std40', '3344556677', 'female'),
(71, 'Std', '41', 'std41@gmail.com', 'Std41', 'Std41', '4455667788', 'male'),
(72, 'Std', '42', 'std42@gmail.com', 'Std42', 'Std42', '9988774456', 'male'),
(73, 'Std', '43', 'std43@gmail.com', 'Std43', 'Std43', '8855662211', 'male'),
(74, 'Std', '44', 'std44@gmail.com', 'Std44', 'Std44', '6655887744', 'female'),
(75, 'Std', '45', 'std45@gmail.com', 'Std45', 'Std45', '3344558866', 'female'),
(76, 'Std', '46', 'std46@gmail.com', 'Std46', 'Std46', '6699887744', 'male'),
(77, 'Std', '47', 'std47@gmail.com', 'Std47', 'Std47', '8866554477', 'male'),
(78, 'Std', '48', 'std48@gmail.com', 'Std48', 'Std48', '4477558866', 'male'),
(79, 'Std', '49', 'std49@gmail.com', 'Std49', 'Std49', '6688774412', 'male'),
(80, 'Std', '50', 'std50@gmail.com', 'Std50', 'Std50', '7755226699', 'female'),
(81, 'Std', '51', 'std51@gmail.com', 'Std51', 'Std51', '5588669944', 'male'),
(82, 'Std', '52', 'std52@gmail.com', 'Std52', 'Std52', '6677445599', 'female'),
(83, 'Std', '53', 'std53@gmail.com', 'Std53', 'Std53', '9966774455', 'male'),
(84, 'Std', '54', 'std54@gmail.com', 'Std54', 'Std54', '7788663344', 'male'),
(85, 'Std', '55', 'std55@gmail.com', 'Std55', 'Std55', '7744669955', 'female'),
(86, 'Std', '56', 'std56@gmail.com', 'Std56', 'Std56', '5522334466', 'female'),
(87, 'Std', '57', 'std57@gmail.com', 'Std57', 'Std57', '1121615434', 'female'),
(88, 'Std', '58', 'std58@gmail.com', 'Std58', 'Std58', '3366445588', 'male'),
(89, 'Std', '59', 'std59@gmail.com', 'Std59', 'Std59', '9988774451', 'male'),
(90, 'Std', '60', 'std60@gmail.com', 'Std60', 'Std60', '9966887733', 'female'),
(91, 'Std', '61', 'std61@gmail.com', 'Std61', 'Std61', '6688994433', 'male'),
(92, 'Std', '62', 'std62@gmail.com', 'Std62', 'Std62', '5588996633', 'male'),
(93, 'Std', '63', 'std63@gmail.com', 'Std63', 'Std63', '4422556637', 'male'),
(94, 'Std', '64', 'std64@gmail.com', 'Std64', 'Std64', '5577889411', 'male'),
(95, 'Std', '65', 'std65@gmail.com', 'Std65', 'Std65', '1144556699', 'female'),
(96, 'Std', '66', 'std66@gmail.com', 'Std66', 'Std66', '1133554488', 'female'),
(97, 'Std', '67', 'std67@gmail.com', 'Std67', 'Std67', '2255447788', 'male'),
(98, 'Std', '68', 'std68@gmail.com', 'Std68', 'Std68', '6688774456', 'male'),
(99, 'Std', '69', 'std69@gmail.com', 'Std69', 'Std69', '2121615434', 'female'),
(100, 'Std', '70', 'std70@gmail.com', 'Std70', 'Std70', '9849891363', 'male'),
(101, 'Std', '101', 'std101@gmail.com', 'std101', 'std101', '8899556677', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `app_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `result_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
