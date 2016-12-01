-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 26, 2016 at 04:30 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Donation_Camp_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Donation_Camp`
--

CREATE TABLE `Donation_Camp` (
  `ID` int(11) NOT NULL,
  `Address` longtext NOT NULL,
  `Camp_Category_ID` int(11) NOT NULL,
  `End_Date` datetime NOT NULL,
  `Start_Date` datetime NOT NULL,
  `Unit` int(11) NOT NULL,
  `Unit_Left` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Donation_Camp`
--

INSERT INTO `Donation_Camp` (`ID`, `Address`, `Camp_Category_ID`, `End_Date`, `Start_Date`, `Unit`, `Unit_Left`, `User_ID`) VALUES
(4, 'JP Nagar', 1, '1970-01-01 08:35:11', '1970-01-01 05:30:22', 90, 90, 1),
(5, 'JP Nagar', 2, '1970-01-01 08:35:11', '1970-01-01 05:30:22', 90, 90, 1),
(6, 'JP Nagar', 5, '1970-01-14 02:08:31', '1970-01-01 06:07:12', 90, 90, 1),
(14, 'Kanlyani Nagar', 7, '1970-01-01 05:35:43', '1970-01-01 05:32:04', 12, 12, 0),
(15, 'Kanlyani Nagar', 7, '1970-01-01 05:30:12', '1970-01-01 05:30:22', 23, 23, 0),
(16, 'Kanlyani Nagar', 7, '1970-01-01 05:32:03', '1970-01-01 05:30:32', 12, 12, 0),
(17, 'JP Nagar', 1, '1970-01-01 05:35:24', '1970-01-01 05:33:54', 34, 34, 0),
(18, 'Kalyani Nagar', 9, '1970-01-01 05:30:00', '1970-01-01 05:30:00', 232, 232, 1),
(19, 'BTM Layout', 9, '1970-01-01 05:30:34', '1970-01-01 05:32:03', 123, 123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Donation_Camp_Category`
--

CREATE TABLE `Donation_Camp_Category` (
  `ID` int(11) NOT NULL,
  `Category` varchar(256) NOT NULL,
  `Sub_Category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Donation_Camp_Category`
--

INSERT INTO `Donation_Camp_Category` (`ID`, `Category`, `Sub_Category`) VALUES
(1, 'Blood', 'A'),
(2, 'Blood', 'B'),
(3, 'Blood', 'C'),
(4, 'Blood', 'A+'),
(5, 'Blood', 'B+'),
(6, 'Blood', 'O'),
(7, 'Tissue', 'Tissue'),
(8, 'Platelates', 'A'),
(9, 'Platelates', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `Donation_Camp_Volenteer`
--

CREATE TABLE `Donation_Camp_Volenteer` (
  `Camp_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Request_Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Donation_Camp_Volunteer`
--

CREATE TABLE `Donation_Camp_Volunteer` (
  `Camp_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Request_Status` varchar(255) NOT NULL,
  `Unit_Donate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Donation_Camp_Volunteer`
--

INSERT INTO `Donation_Camp_Volunteer` (`Camp_ID`, `User_ID`, `Request_Status`, `Unit_Donate`) VALUES
(4, 1, 'Accept', 0),
(5, 1, 'Accept', 0),
(6, 1, 'Accept', 0),
(14, 1, 'Request', 0),
(18, 1, 'Accept', 0),
(19, 1, 'Accept', 0);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `ID` int(11) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Mobile` decimal(19,0) DEFAULT NULL,
  `Name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`ID`, `Email`, `Mobile`, `Name`) VALUES
(1, 'anoop.singh@practo.com', '8174997442', 'anoop rawat'),
(5, 'Om@practo.com', NULL, 'OM');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Donation_Camp`
--
ALTER TABLE `Donation_Camp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Donation_Camp_Category`
--
ALTER TABLE `Donation_Camp_Category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Donation_Camp_Volenteer`
--
ALTER TABLE `Donation_Camp_Volenteer`
  ADD PRIMARY KEY (`Camp_ID`,`User_ID`);

--
-- Indexes for table `Donation_Camp_Volunteer`
--
ALTER TABLE `Donation_Camp_Volunteer`
  ADD PRIMARY KEY (`Camp_ID`,`User_ID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Donation_Camp`
--
ALTER TABLE `Donation_Camp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Donation_Camp_Category`
--
ALTER TABLE `Donation_Camp_Category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;