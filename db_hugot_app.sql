-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 08:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hugot_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_followers`
--

CREATE TABLE `tbl_followers` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hearts`
--

CREATE TABLE `tbl_hearts` (
  `react_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `heart_reacts` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hearts`
--

INSERT INTO `tbl_hearts` (`react_id`, `post_id`, `user_id`, `heart_reacts`, `date_created`) VALUES
(10, 17, 2, 1, '2024-08-21 19:00:12'),
(12, 18, 4, 1, '2024-08-23 14:28:51'),
(14, 17, 3, 1, '2024-08-23 15:26:34'),
(16, 18, 1, 1, '2024-08-23 15:26:46'),
(17, 18, 2, 1, '2024-08-23 15:27:34'),
(18, 14, 2, 1, '2024-08-23 15:39:36'),
(19, 9, 3, 1, '2024-08-23 15:39:49'),
(20, 9, 4, 1, '2024-08-23 15:39:59'),
(21, 17, 4, 1, '2024-08-23 15:46:41'),
(22, 16, 4, 1, '2024-08-23 15:51:52'),
(23, 16, 3, 1, '2024-08-23 15:52:44'),
(24, 15, 3, 1, '2024-08-23 18:17:14'),
(25, 14, 3, 1, '2024-08-23 18:17:19'),
(26, 12, 3, 1, '2024-08-23 18:31:00'),
(28, 18, 3, 1, '2024-08-23 18:37:40'),
(30, 13, 3, 1, '2024-08-23 18:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `heart_count` int(11) NOT NULL DEFAULT 0,
  `hugot_post` longtext NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `user_id`, `comment_count`, `heart_count`, `hugot_post`, `date_created`) VALUES
(1, 1, 0, 0, 'sdfsdf', '2024-08-20 19:26:23'),
(2, 1, 0, 0, 'SDFSDF', '2024-08-20 19:26:32'),
(3, 1, 0, 0, 'sdfsdfsdfsdf', '2024-08-20 19:29:00'),
(4, 1, 0, 0, 'sdfsdf', '2024-08-20 19:36:08'),
(5, 1, 0, 0, 'mas malakas pala ang tuhod kaysa kamot guys!', '2024-08-20 19:36:52'),
(6, 2, 0, 0, 'pstingin ng baba u...', '2024-08-20 19:38:56'),
(7, 2, 0, 0, 'asd', '2024-08-21 03:29:50'),
(8, 1, 0, 0, 'Who is your crush ayieee', '2024-08-21 04:29:10'),
(9, 1, 0, 2, 'fsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldgfsdklfgsdl;kgs;kldg', '2024-08-21 05:29:05'),
(10, 1, 0, 0, 'This is a test', '2024-08-21 08:14:18'),
(11, 1, 0, 0, 'test', '2024-08-21 08:25:16'),
(12, 1, 0, 1, 'testtttt', '2024-08-21 08:25:32'),
(13, 1, 0, 1, 'mic test', '2024-08-21 08:26:54'),
(14, 2, 0, 2, 'guys', '2024-08-21 09:30:55'),
(15, 3, 0, 1, 'This is working', '2024-08-21 15:23:52'),
(16, 3, 0, 2, 'mic test', '2024-08-21 17:16:18'),
(17, 2, 0, 3, 'sdf', '2024-08-21 18:43:56'),
(18, 4, 0, 4, 'hello\n', '2024-08-23 14:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recenthugots`
--

CREATE TABLE `tbl_recenthugots` (
  `recent_id` int(11) NOT NULL,
  `timeline_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `theme_id` int(11) NOT NULL,
  `theme_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`theme_id`, `theme_type`) VALUES
(1, 'Life'),
(2, 'Love'),
(3, 'Broken'),
(4, 'Emo'),
(5, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_themetimeline`
--

CREATE TABLE `tbl_themetimeline` (
  `themeTimeline_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeline`
--

CREATE TABLE `tbl_timeline` (
  `timeline_id` int(11) NOT NULL,
  `theme_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_timeline`
--

INSERT INTO `tbl_timeline` (`timeline_id`, `theme_id`, `post_id`, `date_created`) VALUES
(4, 1, 4, '2024-08-20 19:36:08'),
(5, 2, 5, '2024-08-20 19:36:52'),
(6, 4, 6, '2024-08-20 19:38:56'),
(7, 1, 7, '2024-08-21 03:29:50'),
(8, 2, 8, '2024-08-21 04:29:10'),
(9, 5, 9, '2024-08-21 05:29:05'),
(10, 5, 10, '2024-08-21 08:14:18'),
(11, 5, 11, '2024-08-21 08:25:16'),
(12, 3, 12, '2024-08-21 08:25:32'),
(13, 2, 13, '2024-08-21 08:26:54'),
(14, 1, 14, '2024-08-21 09:30:55'),
(15, 2, 15, '2024-08-21 15:23:52'),
(16, 5, 16, '2024-08-21 17:16:18'),
(17, 1, 17, '2024-08-21 18:43:56'),
(18, 4, 18, '2024-08-23 14:28:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `coverphoto` varchar(255) NOT NULL,
  `followers_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `pwd`, `email`, `profile_picture`, `coverphoto`, `followers_count`, `following_count`, `date_created`) VALUES
(1, 'helloworld', '$2y$10$8kBlnZpAdcEsTz.zXeV4MOvx7cT3NnwzLjI4xwnbGANZHmuHzxSM.', 'hello@gmail.com', '', '', 0, 0, '2024-08-20 16:50:51'),
(2, 'felix', '$2y$10$DBbF5iLTf1VAX65c93ZgcOvHJw.cXzn3h5isB9B0k8onpkW6W2TAi', 'felix@gmail.com', '', '', 0, 0, '2024-08-20 19:38:26'),
(3, '123', '$2y$10$oidOBdX54rIvEZHM5tR3ZuwSayASlQe8Ruo6cQWlaqI2PI2ybkcgG', 'aaa@gmail.com', '', '', 0, 0, '2024-08-21 12:52:53'),
(4, 'pitok', '$2y$10$lIwMvnlEpB2b6nU5t3fx7uo44XECqg4oNDimYMNi7y2bxy9NDvYja', 'pitok@gmail.com', '', '', 0, 0, '2024-08-23 14:28:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_followers`
--
ALTER TABLE `tbl_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indexes for table `tbl_hearts`
--
ALTER TABLE `tbl_hearts`
  ADD PRIMARY KEY (`react_id`),
  ADD UNIQUE KEY `unique_like` (`post_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_recenthugots`
--
ALTER TABLE `tbl_recenthugots`
  ADD PRIMARY KEY (`recent_id`),
  ADD KEY `timeline_id` (`timeline_id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `tbl_themetimeline`
--
ALTER TABLE `tbl_themetimeline`
  ADD PRIMARY KEY (`themeTimeline_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD PRIMARY KEY (`timeline_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_followers`
--
ALTER TABLE `tbl_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hearts`
--
ALTER TABLE `tbl_hearts`
  MODIFY `react_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_recenthugots`
--
ALTER TABLE `tbl_recenthugots`
  MODIFY `recent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_themetimeline`
--
ALTER TABLE `tbl_themetimeline`
  MODIFY `themeTimeline_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  MODIFY `timeline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`post_id`),
  ADD CONSTRAINT `tbl_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_followers`
--
ALTER TABLE `tbl_followers`
  ADD CONSTRAINT `tbl_followers_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `tbl_user` (`user_id`),
  ADD CONSTRAINT `tbl_followers_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_hearts`
--
ALTER TABLE `tbl_hearts`
  ADD CONSTRAINT `tbl_hearts_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`post_id`),
  ADD CONSTRAINT `tbl_hearts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_recenthugots`
--
ALTER TABLE `tbl_recenthugots`
  ADD CONSTRAINT `tbl_recenthugots_ibfk_1` FOREIGN KEY (`timeline_id`) REFERENCES `tbl_timeline` (`timeline_id`);

--
-- Constraints for table `tbl_themetimeline`
--
ALTER TABLE `tbl_themetimeline`
  ADD CONSTRAINT `tbl_themetimeline_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `tbl_theme` (`theme_id`),
  ADD CONSTRAINT `tbl_themetimeline_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`post_id`);

--
-- Constraints for table `tbl_timeline`
--
ALTER TABLE `tbl_timeline`
  ADD CONSTRAINT `tbl_timeline_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `tbl_theme` (`theme_id`),
  ADD CONSTRAINT `tbl_timeline_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
