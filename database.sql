-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 01, 2016 at 07:29 AM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `url_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `Browser`
--

CREATE TABLE `Browser` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Browser`
--

INSERT INTO `Browser` (`ID`, `Name`) VALUES
(3, 'Mozilla/5.0'),
(4, 'unknown'),
(5, 'Chrome'),
(6, 'Safari');

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`ID`, `Name`) VALUES
(1, 'undefined');

-- --------------------------------------------------------

--
-- Table structure for table `Referer`
--

CREATE TABLE `Referer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Referer`
--

INSERT INTO `Referer` (`ID`, `Name`) VALUES
(3, 'https://www.facebook.com/'),
(2, 'unknown');

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `ID` bigint(20) NOT NULL,
  `URL` varchar(700) CHARACTER SET ascii NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`ID`, `URL`, `Created_At`, `User_ID`) VALUES
(10, 'http://google.com', '2016-11-29 14:42:25', 4),
(16, 'google.com', '2016-11-29 14:54:06', 4),
(17, 'fdf.com', '2016-11-29 15:27:46', 4),
(18, 'erere', '2016-11-29 15:28:02', 4),
(27, 'asd.com', '2016-11-29 18:41:04', 4),
(28, 'we.com', '2016-11-29 18:43:43', 4),
(29, 'aec.com', '2016-11-29 18:48:04', 4),
(30, 'dfgg.com', '2016-11-29 18:56:33', 4),
(31, 'rtretert.com', '2016-11-29 18:57:02', 4),
(32, 'ssdgsg.com', '2016-11-29 18:58:56', 4),
(33, 'assfaf.com', '2016-11-29 18:59:35', 4),
(34, 'sdsgs.com', '2016-11-29 19:02:23', 4),
(37, 'www.yahoo.com', '2016-11-29 19:07:47', 4),
(44, 'abc.com', '2016-11-30 05:59:10', 4),
(45, 'https://google.com', '2016-11-30 12:29:45', 4),
(46, 'yahoo.com', '2016-11-30 13:52:34', 4),
(47, 'git.com', '2016-11-30 13:57:10', 4),
(48, 'sdsadsf', '2016-11-30 14:02:29', 4),
(49, 'sfegdg', '2016-11-30 14:02:40', 4),
(50, 'vdgdfg', '2016-11-30 14:03:09', 4),
(51, 'asfafsaf', '2016-11-30 14:03:40', 4),
(52, 'sfsaf', '2016-11-30 14:03:43', 4),
(53, 'afssfasga', '2016-11-30 14:03:50', 4),
(54, 'wer23rddx', '2016-11-30 14:03:54', 4),
(55, 'http://google.com', '2016-11-30 14:44:35', 6),
(56, 'http://yahoo.com', '2016-11-30 14:45:28', 6),
(57, 'dfgfdg.com', '2016-11-30 15:03:44', 6),
(58, 'dfsfdsf', '2016-11-30 15:07:30', 6),
(59, 'sfsdfs', '2016-11-30 15:07:42', 6),
(60, 'dfdsfdsf.com', '2016-11-30 15:08:55', 6),
(61, 'abcd.com', '2016-11-30 15:30:28', 4),
(62, 'xyz.com', '2016-11-30 15:32:34', 4),
(63, 'zoom.com', '2016-11-30 15:37:37', 4),
(64, 'zoomm.com', '2016-11-30 15:38:16', 4),
(65, 'boom.com', '2016-11-30 15:39:22', 4);

-- --------------------------------------------------------

--
-- Table structure for table `url_visit`
--

CREATE TABLE `url_visit` (
  `ID` int(11) NOT NULL,
  `URL` bigint(20) NOT NULL,
  `Clicked_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Browser` int(11) NOT NULL,
  `Location` int(11) NOT NULL,
  `Referer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `url_visit`
--

INSERT INTO `url_visit` (`ID`, `URL`, `Clicked_At`, `Browser`, `Location`, `Referer`) VALUES
(6, 10, '2016-11-29 20:27:21', 3, 1, 2),
(7, 10, '2016-11-29 20:38:24', 3, 1, 2),
(8, 37, '2016-11-29 20:39:26', 3, 1, 2),
(9, 37, '2016-11-29 20:39:42', 3, 1, 2),
(10, 10, '2016-11-30 09:27:44', 3, 1, 3),
(17, 10, '2016-12-01 06:01:48', 5, 1, 2),
(18, 10, '2016-12-01 06:02:09', 5, 1, 2),
(19, 10, '2016-12-01 06:02:16', 6, 1, 2),
(20, 10, '2016-12-01 06:02:21', 6, 1, 2),
(21, 10, '2016-12-01 06:02:24', 6, 1, 2),
(22, 10, '2016-12-01 06:02:26', 6, 1, 2),
(23, 10, '2016-12-01 06:02:29', 5, 1, 2),
(24, 10, '2016-12-01 06:02:31', 5, 1, 2),
(25, 10, '2016-12-01 06:02:31', 5, 1, 2),
(26, 10, '2016-12-01 06:02:35', 5, 1, 2),
(27, 10, '2016-12-01 06:02:35', 5, 1, 2),
(28, 10, '2016-12-01 06:04:04', 6, 1, 3),
(29, 10, '2016-12-01 06:04:08', 6, 1, 3),
(30, 10, '2016-12-01 06:04:11', 6, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Registered_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Password`, `Registered_At`, `Email`) VALUES
(4, 'Anoop Rawat', 'k5NB9Cmal1g=', '2016-11-29 10:23:44', 'anoop.singh@practo.com'),
(5, 'Rahul', 'DO7v/V6EkUBexiHq/Qn8Bg==', '2016-11-29 10:28:15', 'rahul@practo.com'),
(6, 'Ankit', 'lpp3fte9tH0=', '2016-11-30 14:44:21', 'ankit@practo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Browser`
--
ALTER TABLE `Browser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `Referer`
--
ALTER TABLE `Referer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `URL` (`URL`,`User_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `url_visit`
--
ALTER TABLE `url_visit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `URL` (`URL`),
  ADD KEY `URL_2` (`URL`),
  ADD KEY `Location` (`Location`),
  ADD KEY `Browser` (`Browser`),
  ADD KEY `Referer` (`Referer`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Browser`
--
ALTER TABLE `Browser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Referer`
--
ALTER TABLE `Referer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `url_visit`
--
ALTER TABLE `url_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `urls`
--
ALTER TABLE `urls`
  ADD CONSTRAINT `urls_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `url_visit`
--
ALTER TABLE `url_visit`
  ADD CONSTRAINT `url_visit_ibfk_1` FOREIGN KEY (`URL`) REFERENCES `urls` (`ID`),
  ADD CONSTRAINT `url_visit_ibfk_2` FOREIGN KEY (`Browser`) REFERENCES `Browser` (`ID`),
  ADD CONSTRAINT `url_visit_ibfk_3` FOREIGN KEY (`Location`) REFERENCES `Country` (`ID`),
  ADD CONSTRAINT `url_visit_ibfk_4` FOREIGN KEY (`Referer`) REFERENCES `Referer` (`ID`);
