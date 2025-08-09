-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 03:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `space`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `message` text NOT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `message`, `approval`) VALUES
(8, 'Shahanaj', 1162314206, 'shahanaj@gmail.com', '2023-06-06', 'I want to book the room 2.', 'Not Allowed'),
(9, 'Sium', 1169889528, 'sium@gmail.com', '2023-06-07', 'Hello I have a question?', 'Not Allowed'),
(10, 'Sujana', 1162314206, 'sujanasamia@gmail.com', '2023-06-26', 'Hiii I want to book room', 'Not Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'Admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'Sujana', 'sss', 'sssss'),
(2, 'sss', 'sss', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `purpose` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` time DEFAULT NULL,
  `timeout` time DEFAULT NULL,
  `rent` double(8,2) DEFAULT NULL,
  `others` double(8,2) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `duration`, `purpose`, `nroom`, `cin`, `cout`, `timeout`, `rent`, `others`, `total`) VALUES
(0, 'Miss.', 'sujana', 'samia', '2 Hour', 'Study', 1, '2023-06-07', '13:35:00', '14:35:00', 0.00, 0.00, 0),
(0, 'Mr.', 'Sium', 'Mohammed', '3 Hour', 'Project wo', 4, '2023-06-09', '23:44:00', '13:46:00', 0.00, 0.00, 0),
(14, 'Mrs.', 'Shananaj', 'Parvin', '4 Hour', 'Project wo', 5, '2023-06-09', '22:02:00', '23:02:00', 0.00, 0.00, 0),
(15, 'Mr.', 'sudad', 'sabit', '3 Hour', 'Study', 1, '2023-06-08', '12:10:00', '14:10:00', 0.00, 0.00, 0),
(18, 'Mr.', 'Peter', 'Parker', '2 Hour', 'Study', 1, '2023-06-09', '14:00:00', '16:00:00', 0.00, 0.00, 0),
(18, 'Mr.', 'Peter', 'Parker', '2 Hour', 'Study', 1, '2023-06-09', '14:00:00', '16:00:00', 0.00, 0.00, 0),
(18, 'Mr.', 'Peter', 'Parker', '2 Hour', 'Study', 1, '2023-06-09', '14:00:00', '16:00:00', 0.00, 0.00, 0),
(19, 'Miss.', 'Mira', 'Alif', '4 Hour', 'Meeting', 4, '2023-06-12', '12:23:00', '14:23:00', 0.00, 0.00, 0),
(16, 'Dr.', 'Saleh', 'Mohammed', '1 Hour', 'Meeting', 3, '2023-06-07', '22:12:00', '12:12:00', 0.00, 0.00, 0),
(21, 'Mr.', 'Bruce', 'Banner', '4 Hour', 'Project wo', 5, '2023-06-08', '23:59:00', '12:59:00', 0.00, 0.00, 0),
(20, 'Mr.', 'Ben', 'Reily', '1 Hour', 'Project wo', 1, '2023-06-08', '21:36:00', '22:36:00', 0.00, 0.00, 0),
(22, 'Miss.', 'Sathi', 'Morales', '2 Hour', 'Meeting', 4, '2023-06-13', '22:28:00', '12:28:00', 0.00, 0.00, 0),
(23, 'Dr.', 'sujana', 'samia', '2 Hour', 'Discussion', 2, '2023-06-13', '23:26:00', '12:26:00', 0.00, 0.00, 0),
(25, 'Mr.', 'Simin', 'Ahmed', '1 Hour', 'Discussion', 3, '2023-06-26', '11:35:00', '12:35:00', 0.00, 0.00, 0),
(24, 'Miss.', 'Shitol', 'Samiha', '2 Hour', 'Discussion', 2, '2023-06-25', '14:28:00', '15:28:00', 0.00, 0.00, 0),
(17, 'Dr.', 'wan', 'ahmed', '2 Hour', 'Discussion', 3, '2023-06-09', '21:00:00', '22:00:00', 0.00, 0.00, 0),
(26, 'Mrs.', 'Nazma', 'Akther', '2 Hour', 'Discussion', 0, '2023-07-18', '00:03:00', '02:03:00', 0.00, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(25) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `quantity`, `place`, `cusid`) VALUES
(1, 'BILIK PERBINCANGAN 1', '1 Room ', 'Free', 2),
(2, 'BILIK PERBINCANGAN 2', '1 Room', 'Free', NULL),
(3, 'BILIK PERBINCANGAN 3', '1 Room', 'Free', NULL),
(4, 'BILIK PERBINCANGAN 4', '1 Room', 'Free', NULL),
(5, 'BILIK PERBINCANGAN 5', '1 Room', 'Free', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Person` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `Purpose` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Program` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` time DEFAULT NULL,
  `timeout` time NOT NULL,
  `stat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Person`, `Phone`, `Duration`, `Purpose`, `NRoom`, `Program`, `cin`, `cout`, `timeout`, `stat`) VALUES
(15, 'Mr.', 'sudad', 'sabit', 'sabit@gmail.com', 'Local', 'FSKTM Teacher', '01162314206', '3 Hour', 'Study', '1', 'Other', '2023-06-08', '12:10:00', '14:10:00', 'Conform'),
(17, 'Dr.', 'wan', 'ahmed', 'christine@gmail.com', 'International', 'FSKTM Teacher', '01162314206', '2 Hour', 'Discussion', '3', 'Software Engine', '2023-06-09', '21:00:00', '22:00:00', 'Conform'),
(20, 'Mr.', 'Ben', 'Reily', 'raily@gmail.com', 'International', 'FSKTM Student', '01169889528', '1 Hour', 'Project wo', '1', 'Networking', '2023-06-08', '21:36:00', '22:36:00', 'Conform'),
(21, 'Mr.', 'Bruce', 'Banner', 'bruce@gmail.com', 'International', 'FSKTM Teacher', '01169889528', '4 Hour', 'Project wo', '5', 'Networking', '2023-06-08', '23:59:00', '12:59:00', 'Conform'),
(22, 'Miss.', 'Sathi', 'Morales', 'mousumi@gmail.com', 'International', 'FSKTM Student', '01169889528', '2 Hour', 'Meeting', '4', 'Software Engine', '2023-06-13', '22:28:00', '12:28:00', 'Conform'),
(24, 'Miss.', 'Shitol', 'Samiha', 'shitol@gmail.com', 'International', 'FSKTM Student', '01162314206', '2 Hour', 'Discussion', '2', 'Software Engine', '2023-06-25', '14:28:00', '15:28:00', 'Conform'),
(25, 'Mr.', 'Simin', 'Ahmed', 'ahmed@gmail.com', 'International', 'FSKTM Student', '01162314206', '1 Hour', 'Discussion', '3', 'Software Engine', '2023-06-26', '11:35:00', '12:35:00', 'Conform'),
(26, 'Mrs.', 'Nazma', 'Akther', 'nazma@gmail.com', 'Local', 'FSKTM Student', '+601162314206', '2 Hour', 'Discussion', 'BI', 'Multimedia', '2023-07-18', '00:03:00', '02:03:00', 'Conform');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
