-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 01:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_test_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerkey`
--

CREATE TABLE `answerkey` (
  `ID` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answerkey`
--

INSERT INTO `answerkey` (`ID`, `result`) VALUES
(1, 'Error'),
(2, '2018'),
(3, 'ba'),
(4, 'aa'),
(5, 'ab'),
(6, '-1'),
(7, 'F'),
(8, '1'),
(9, '0'),
(10, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `Email` varchar(30) NOT NULL,
  `TestName` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`Email`, `TestName`, `date`, `score`) VALUES
('rajkrstudent@gmail.com', 'Coding Mock Test', '2022-04-15', 0),
('rajkrstudent@gmail.com', 'Aptitude Mock Test', '2022-04-15', 0),
('rajkrstudent@gmail.com', 'Coding Mock Test', '2022-04-27', 2),
('rajkrstudent@gmail.com', 'Coding Mock Test', '2022-04-27', 3),
('rajkrstudent@gmail.com', 'Aptitude Mock Test', '2022-04-27', 1),
('rajkrstudent@gmail.com', 'Coding Mock Test', '2022-04-27', 3),
('rajkrstudent@gmail.com', 'Technical Mock Test', '2022-04-27', 4),
('rajkrstudent@gmail.com', 'Coding Mock Test', '2022-04-27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `resultkey`
--

CREATE TABLE `resultkey` (
  `ID` int(11) NOT NULL,
  `answer` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resultkey`
--

INSERT INTO `resultkey` (`ID`, `answer`) VALUES
(1, '22'),
(2, '0'),
(3, 'ba'),
(4, 'bb'),
(5, 'xy'),
(6, '-1'),
(7, '-2'),
(8, '1'),
(9, '00'),
(10, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `ID` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`ID`, `result`) VALUES
(1, '10'),
(2, '0'),
(3, 'ba'),
(4, 'bb'),
(5, 'xy'),
(6, '-1'),
(7, '-2'),
(8, '00'),
(9, '1'),
(10, 'YN');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `CPassword` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Branch` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`FirstName`, `LastName`, `Email`, `Password`, `CPassword`, `Gender`, `Branch`) VALUES
('rabindra', 'Kumar', 'raj123@gmail.com', 'Raj@123', 'Raj@123', 'Male', 'sdfad'),
('RAJ', 'KUMAR', 'rajkrstudent@gmail.com', 'Raj@123', 'Raj@123', 'Male', 'BE'),
('ram', 'Kumar', 'ram125@gmail.com', 'Raj@123', 'Raj@123', 'Male', 'sdfad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answerkey`
--
ALTER TABLE `answerkey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `resultkey`
--
ALTER TABLE `resultkey`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`Email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `student_info` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
