-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2020 at 07:19 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `adminid` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`adminid`, `designation`, `fullname`, `password`, `username`) VALUES
(101, 'Admin', 'Pradeep Joam', 'joam', 'joam');

-- --------------------------------------------------------

--
-- Table structure for table `courses_details`
--

CREATE TABLE `courses_details` (
  `courseid` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `chapters` varchar(255) DEFAULT NULL,
  `coursecode` varchar(255) DEFAULT NULL,
  `coursename` varchar(255) DEFAULT NULL,
  `descrp` varchar(255) DEFAULT NULL,
  `enrolls` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `posted_on` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `test` varchar(255) DEFAULT NULL,
  `updated_on` varchar(255) DEFAULT NULL,
  `videos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_details`
--

INSERT INTO `courses_details` (`courseid`, `author`, `chapters`, `coursecode`, `coursename`, `descrp`, `enrolls`, `image`, `posted_on`, `price`, `rating`, `tags`, `test`, `updated_on`, `videos`) VALUES
(13, 'java', '6', 'java#13', 'java', 'java', '1', 'https://www.lifewire.com/thmb/XNcZfX6LQXsLEghCMCx0n1hF6l4=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/what-is-java-5b4bda1cc9e77c0037171617.jpg', '14/07/2020', '23', '2', 'java', '6', '14/07/2020', '1');

-- --------------------------------------------------------

--
-- Table structure for table `forum_questions`
--

CREATE TABLE `forum_questions` (
  `qid` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `postedby` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_replies`
--

CREATE TABLE `forum_replies` (
  `rid` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `repliedby` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `next_val`) VALUES
('default', 17);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_details`
--

CREATE TABLE `instructor_details` (
  `instructorid` int(11) NOT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor_details`
--

INSERT INTO `instructor_details` (`instructorid`, `courses`, `email`, `fullname`, `mobile`, `password`, `qualification`, `username`) VALUES
(6, 'jav#13,', 'joam@gmail.com', 'joam', '9815167031', '123', 'PHD', 'joam');

-- --------------------------------------------------------

--
-- Table structure for table `session_log`
--

CREATE TABLE `session_log` (
  `sessionid` int(11) NOT NULL,
  `intime` varchar(255) DEFAULT NULL,
  `log_date` varchar(255) DEFAULT NULL,
  `out_time` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_log`
--

INSERT INTO `session_log` (`sessionid`, `intime`, `log_date`, `out_time`, `type`, `username`) VALUES
(1, '13:38', '14/07/2020', '13:39', 'User', 'joam'),
(2, '13:40', '14/07/2020', '13:43', 'User', 'joam'),
(4, '13:48', '14/07/2020', '13:50', 'User', 'test'),
(5, '13:52', '14/07/2020', '13:54', 'User', 'test'),
(7, '13:55', '14/07/2020', '13:55', 'Instructor', 'joam'),
(8, '13:56', '14/07/2020', '13:56', 'Admin', 'joam'),
(9, '13:57', '14/07/2020', '13:57', 'User', 'test'),
(10, '13:58', '14/07/2020', '14:00', 'User', 'joam'),
(11, '14:00', '14/07/2020', '14:03', 'Instructor', 'joam'),
(12, '14:00', '14/07/2020', 'active', 'Instructor', 'joam'),
(14, '14:04', '14/07/2020', '14:05', 'Admin', 'joam'),
(15, '14:05', '14/07/2020', '14:07', 'User', 'test'),
(16, '14:05', '14/07/2020', 'active', 'User', 'test'),
(17, '14:07', '14/07/2020', '14:08', 'Admin', 'joam');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `userid` int(11) NOT NULL,
  `active_courses` varchar(255) DEFAULT NULL,
  `courses_completed` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enrolled_courses` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `parent_mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `payment_details` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`userid`, `active_courses`, `courses_completed`, `email`, `enrolled_courses`, `fullname`, `interest`, `mobile`, `parent_mobile`, `password`, `payment_details`, `username`) VALUES
(3, 'java#13,', '', 'test@gmail.com', 'java#13,', 'test', '', '9876541230', '', '7410', '14/07/2020-java#13-27.14,', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `courses_details`
--
ALTER TABLE `courses_details`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `forum_questions`
--
ALTER TABLE `forum_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `forum_replies`
--
ALTER TABLE `forum_replies`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `hibernate_sequences`
--
ALTER TABLE `hibernate_sequences`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Indexes for table `instructor_details`
--
ALTER TABLE `instructor_details`
  ADD PRIMARY KEY (`instructorid`);

--
-- Indexes for table `session_log`
--
ALTER TABLE `session_log`
  ADD PRIMARY KEY (`sessionid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
