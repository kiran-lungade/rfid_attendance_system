-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 03:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodemculog`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(6) UNSIGNED NOT NULL,
  `CardNumber` double DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `SerialNumber` double NOT NULL,
  `DateLog` date DEFAULT NULL,
  `TimeIn` time DEFAULT NULL,
  `TimeOut` time DEFAULT NULL,
  `UserStat` varchar(100) NOT NULL,
  `building_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `CardNumber`, `Name`, `SerialNumber`, `DateLog`, `TimeIn`, `TimeOut`, `UserStat`, `building_number`) VALUES
(26, 14011844127, 'Kiran Lungade', 39, '2022-12-01', '13:08:28', '14:27:42', 'Arrived late and Left early', 0),
(27, 928917125, 'Piyush Shinde', 56, '2022-12-01', '13:09:18', '14:27:43', 'Arrived late and Left early', 0),
(28, 762533125, 'Pramila Shinde', 57, '2022-12-01', '13:11:28', '13:11:32', 'Arrived late and Left early', 0),
(29, 1084640127, 'Shital Rahane', 49, '2022-12-01', '13:49:00', '13:49:03', 'Arrived late and Left early', 0),
(41, 928917125, 'Piyush Shinde', 56, '2022-12-02', '20:50:03', '20:52:38', 'Arrived late and Left on time', 0),
(42, 928917125, 'Piyush Shinde', 56, '2022-12-03', '09:47:49', '12:04:15', 'Arrived on time and Left early', 0),
(43, 18814114125, 'Ishwar Wagh', 66, '2022-12-03', '09:52:12', '09:52:14', 'Arrived on time and Left early', 0),
(44, 14011844127, 'Kiran Lungade', 39, '2022-12-03', '09:58:45', '11:39:38', 'Arrived on time and Left early', 0),
(45, 1084640127, 'Shital Rahane', 49, '2022-12-03', '10:08:34', '11:39:44', 'Arrived late and Left early', 0),
(46, 9220967127, 'Arati Rahane', 47, '2022-12-03', '10:37:39', '10:38:27', 'Arrived late and Left early', 0),
(47, 10857250123, 'Viraj Adhav', 1, '2022-12-03', '10:41:59', '10:42:30', 'Arrived late and Left early', 0),
(48, 25210948127, 'shreyas bhor', 7, '2022-12-03', '10:47:40', NULL, 'Arrived late', 0),
(49, 442399125, 'Dipjyot jape', 30, '2022-12-03', '11:20:57', NULL, 'Arrived late', 0),
(50, 23613252127, 'Vaishavi Dhavade', 20, '2022-12-03', '11:49:31', '11:49:50', 'Arrived late and Left early', 0),
(51, 12415613125, 'Arati Walte', 68, '2022-12-03', '11:58:13', '11:58:20', 'Arrived late and Left early', 0),
(52, 10823810125, 'Jayavant Warkhade', 69, '2022-12-03', '12:03:20', '12:03:22', 'Arrived late and Left early', 0),
(53, 10812311125, 'tejas sonawane', 61, '2022-12-03', '12:05:25', '12:05:42', 'Arrived late and Left early', 0),
(54, 928917125, 'Piyush Shinde', 56, '2023-01-09', '14:27:06', NULL, 'Arrived late', 0),
(55, 14011844127, 'Kiran Lungade', 39, '2023-01-12', '14:27:33', '14:27:38', 'Arrived late and Left early', 0),
(56, 145208110224, 'Vishal Gavade', 74, '2023-01-12', '14:28:36', NULL, 'Arrived late', 0),
(57, 1084640127, 'Shital Rahane', 49, '2023-01-12', '15:02:24', '16:01:16', 'Arrived late and Left early', 0),
(58, 10857250123, 'Viraj Adhav', 1, '2023-01-12', '15:17:29', '15:17:32', 'Arrived late and Left early', 0),
(59, 928917125, 'Piyush Shinde', 56, '2023-01-12', '15:52:25', '16:13:28', 'Arrived late and Left early', 0),
(60, 762533125, 'Pramila Shinde', 57, '2023-01-12', '16:13:50', '16:13:52', 'Arrived late and Left early', 0),
(61, 23613252127, 'Vaishavi Dhavade', 20, '2023-01-12', '16:15:12', '16:15:14', 'Arrived late and Left early', 0),
(62, 14011844127, 'Kiran Lungade', 39, '2023-01-13', '09:10:47', '09:10:50', 'Arrived on time and Left early', 0),
(63, 765610125, 'Vaibhav Lokhande', 38, '2023-01-13', '09:20:22', '11:17:12', 'Arrived on time and Left early', 0),
(64, 281938125, 'Tejas Nagare', 41, '2023-01-13', '09:57:23', '09:58:02', 'Arrived on time and Left early', 0),
(65, 20412311125, 'Aher Vaishnavi', 65, '2023-01-13', '09:59:36', NULL, 'Arrived on time', 0),
(66, 1402208125, 'Shubham Kamandar', 32, '2023-01-13', '10:00:56', '10:22:47', 'Arrived late and Left early', 0),
(67, 928917125, 'Piyush Shinde', 56, '2023-01-13', '10:04:43', '11:23:36', 'Arrived late and Left early', 0),
(68, 204910124, 'Saurabh hon', 26, '2023-01-13', '10:06:18', NULL, 'Arrived late', 0),
(69, 1222058773, 'Sachin Jagtap', 36, '2023-01-13', '10:09:15', NULL, 'Arrived late', 0),
(70, 10857250123, 'Viraj Adhav', 1, '2023-01-13', '10:12:05', '10:12:18', 'Arrived late and Left early', 0),
(71, 25210948127, 'shreyas bhor', 7, '2023-01-13', '10:18:21', NULL, 'Arrived late', 0),
(72, 10823810125, 'Jayavant Warkhade', 69, '2023-01-13', '10:18:30', NULL, 'Arrived late', 0),
(73, 1084640127, 'Shital Rahane', 49, '2023-01-13', '10:56:54', '10:57:13', 'Arrived late and Left early', 0),
(74, 928917125, 'Piyush Shinde', 56, '2023-01-18', '16:53:43', '17:13:19', 'Arrived late and Left early', 0),
(75, 928917125, 'Piyush Shinde', 56, '2023-02-01', '09:12:11', '09:12:43', 'Arrived on time and Left early', 0),
(76, 928917125, 'Piyush Shinde', 56, '2023-02-08', '13:26:35', '13:39:31', 'Arrived late and Left early', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `SerialNumber` double NOT NULL,
  `Role` varchar(100) NOT NULL,
  `CardID` double NOT NULL,
  `CardID_select` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `SerialNumber`, `Role`, `CardID`, `CardID_select`) VALUES
(21, 'Prof. Nikam ', 111, 'Faculty', 42435519, 0),
(22, 'Prof. Gawali', 112, 'Faculty', 1221013873, 0),
(23, 'Kiran Lungade', 39, 'Student', 14011844127, 0),
(24, 'Arati Rahane', 47, 'Student', 9220967127, 0),
(28, 'Kishor More', 40, 'Student', 25221250127, 0),
(29, 'Pramila Shinde', 57, 'Student', 762533125, 0),
(37, 'Ishwar Wagh', 66, 'Student', 18814114125, 0),
(38, 'Viraj Adhav', 1, 'Student', 10857250123, 0),
(39, 'shreyas bhor', 7, 'Student', 25210948127, 0),
(40, 'Dipjyot jape', 30, 'Student', 442399125, 0),
(42, 'Vaishavi Dhavade', 20, 'Student', 23613252127, 0),
(43, 'Arati Walte', 68, 'Student', 12415613125, 0),
(44, 'Jayavant Warkhade', 69, 'Student', 10823810125, 0),
(45, 'tejas sonawane', 61, 'Student', 10812311125, 0),
(47, 'Vishal Gavade', 74, 'Student', 145208110224, 0),
(48, 'Piyush Shinde', 56, 'Student', 928917125, 0),
(49, 'Vaibhav Lokhande', 38, 'Student', 765610125, 0),
(50, 'Tejas Nagare', 41, 'Student', 281938125, 0),
(51, 'Aher Vaishnavi', 65, 'Student', 20412311125, 0),
(52, 'Shubham Kamandar', 32, 'Student', 1402208125, 0),
(53, 'Saurabh hon', 26, 'Student', 204910124, 0),
(54, 'Sachin Jagtap', 36, 'Student', 1222058773, 0),
(55, 'Shital Rahane', 49, 'Student', 1084640127, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
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
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
