-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 07:59 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `question_option` varchar(1000) NOT NULL,
  `option_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `question_option`, `option_score`) VALUES
(1, 1, 'Good', 0),
(2, 1, 'Bad', 0),
(3, 1, 'Not so well', 0),
(7, 2, 'Yes', NULL),
(8, 2, 'No', NULL),
(9, 3, 'Yes', NULL),
(10, 3, 'No', NULL),
(11, 4, 'Yes', NULL),
(12, 4, 'No', NULL),
(13, 5, 'Yes', NULL),
(14, 5, 'No', NULL),
(15, 7, 'Always', NULL),
(16, 7, 'Often', NULL),
(17, 7, 'Never', NULL),
(18, 8, 'Always', NULL),
(19, 8, 'Often', NULL),
(20, 8, 'Never', NULL),
(24, 9, 'Always', NULL),
(25, 9, 'Often', NULL),
(26, 9, 'Never', NULL),
(27, 11, 'Happy', NULL),
(28, 11, 'Satisfied', NULL),
(29, 11, 'Anxious', NULL),
(30, 11, 'Sad', NULL),
(31, 12, 'Good', NULL),
(32, 12, 'Moderate', NULL),
(33, 12, 'Bad', NULL),
(34, 13, 'Yes', NULL),
(35, 13, 'No', NULL),
(36, 15, 'Yes', NULL),
(37, 15, 'No', NULL),
(38, 16, 'Yes', NULL),
(39, 16, 'No', NULL),
(40, 17, 'More than 5', NULL),
(41, 17, 'Less than 5', NULL),
(42, 17, 'A lot', NULL),
(46, 18, 'Always', NULL),
(47, 18, 'Often', NULL),
(48, 18, 'Never', NULL),
(49, 19, 'Always', NULL),
(50, 19, 'Often', NULL),
(51, 19, 'Never', NULL),
(52, 20, 'Yes', NULL),
(53, 20, 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) NOT NULL,
  `question_description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_description`) VALUES
(1, 'How are you feeling today ? '),
(2, 'Have you ever experienced a terrible occurrence that has impacted you significantly? For example victim of armed assault, witnessing an incident etc.'),
(3, 'Do you ever feel that you’ve been affected by feelings of edginess, anxiety, or nerves? '),
(4, 'Have you ever experienced an ‘attack’ of fear, anxiety, or panic? '),
(5, 'Tell me about your sleeping habits over the past X months. Have you noticed any changes? Difficulty sleeping? Restlessness? '),
(6, 'How would you describe your appetite over the past X weeks? Have your eating habits changed in any way?'),
(7, 'How often during the past X months have you felt as though your moods, or your life, were under your control? '),
(8, 'How frequently have you been bothered by not being able to stop worrying? '),
(9, 'How often over the past few weeks have you felt the future was bleak? '),
(10, 'Describe how ‘supported’ you feel by others around you – your friends, family, or otherwise. '),
(11, 'How do you feel most of the time? '),
(12, 'What are your energy levels like when you finish your day?'),
(13, 'Are you having any extreme emotions or mood swings? Any suicidal thoughts, breakdowns, or panic attacks?'),
(14, 'How relaxed do you feel most of the time?'),
(15, 'Are you having trouble focusing at work or school?'),
(16, 'Over the last 12 months, did you ever plan how you might attempt suicide? '),
(17, 'How many close friends would you say you have? '),
(18, 'Over the last 12 months, how frequently have you felt alone or lonely? '),
(19, 'How frequently have you been doing things that mean something to you or your life?'),
(20, 'Do you feel that there are treatment out there that can help you to get better?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL DEFAULT 'not_admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `type`) VALUES
(1, 'faysal', '123456', 'not_admin'),
(2, 'ariba', '123', 'admin'),
(3, 'zarif', '1234', 'not_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
