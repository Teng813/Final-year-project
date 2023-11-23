-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 07:57 PM
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
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_image`) VALUES
('A001', 'admin@gmail.com', 'Admin12345', 'user-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `ann_id` int(100) NOT NULL,
  `announcement` varchar(200) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ann_id`, `announcement`, `subject`, `status`, `date`) VALUES
(4, 'The system will be shut down until 10 November 2023.', 'System shut down', 'urgent', '2023-11-23 17:03:56'),
(5, 'Quizzes are added, please join the quizzes now!', 'New quizzes added', '-', '2023-11-28 13:51:51'),
(6, 'Your feedback is invaluable to us. If you have suggestions, comments, or ideas for improvement, please don\'t hesitate to reach out.', 'Feedback', '-', '2023-11-20 13:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `ans_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `ans_user` varchar(50) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(10) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `attempt` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`ans_id`, `user_id`, `ans_user`, `quiz_id`, `question_id`, `answer`, `attempt`) VALUES
(899, 27, 'c ', 32, 232, 'a', 1),
(900, 27, '1a ', 32, 234, '1a', 1),
(901, 27, 'te ', 33, 238, 'te', 1),
(902, 27, '1 ', 33, 247, '1', 1),
(903, 28, 'tee ', 40, 238, 'te', 1),
(904, 28, '11 ', 40, 247, '1', 1),
(905, 28, 'te ', 40, 238, 'te', 2),
(906, 28, '2 ', 40, 247, '1', 2),
(907, 28, 'null', 39, 240, 'e4', 1),
(908, 28, 'abc is fun ', 39, 245, 'abc is not fun', 1),
(909, 28, 'false ', 41, 241, 'false', 1),
(910, 28, 'tamadun1 ', 41, 243, 'tamadun2', 1),
(911, 28, 'no ', 38, 244, 'no', 1),
(912, 28, 'false ', 35, 241, 'false', 1),
(913, 28, 'tamadun3 ', 35, 243, 'tamadun2', 1),
(914, 28, '1m ', 37, 242, '1m', 1),
(915, 28, 'no ', 37, 244, 'no', 1),
(916, 28, 'null ', 38, 244, 'no', 2),
(917, 30, 'b ', 32, 232, 'a', 1),
(918, 30, '1b ', 32, 234, '1a', 1),
(919, 30, 'no ', 38, 244, 'no', 1),
(920, 30, 'e1 ', 39, 240, 'e4', 1),
(921, 30, 'abc is fun ', 39, 245, 'abc is not fun', 1),
(922, 30, 'e2 ', 39, 240, 'e4', 2),
(923, 30, 'abc is not fun ', 39, 245, 'abc is not fun', 2),
(924, 31, 'a ', 32, 232, 'a', 1),
(925, 31, '1c ', 32, 234, '1a', 1),
(926, 31, 'false ', 35, 241, 'false', 1),
(927, 31, 'tamadun2 ', 35, 243, 'tamadun2', 1),
(928, 31, '2m ', 43, 242, '1m', 1),
(929, 31, 'yes ', 43, 244, 'no', 1),
(930, 31, '2m ', 37, 242, '1m', 1),
(931, 31, 'no ', 37, 244, 'no', 1),
(932, 32, 'a ', 51, 232, 'a', 1),
(933, 32, '1a ', 51, 234, '1a', 1),
(934, 31, 'abc is fun ', 50, 245, 'abc is not fun', 1),
(935, 31, 'yes ', 50, 246, '-', 1),
(936, 33, 'te ', 33, 238, 'te', 1),
(937, 33, '1 ', 33, 247, '1', 1),
(938, 33, 'true ', 49, 241, 'false', 1),
(939, 28, 'a ', 51, 232, 'a', 1),
(940, 28, '1c ', 51, 234, '1a', 1),
(941, 28, 'yes ', 55, 250, 'yes', 1),
(942, 28, 'yes ', 55, 251, 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `archive_history`
--

CREATE TABLE `archive_history` (
  `his_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` char(50) NOT NULL,
  `correct_no` int(10) NOT NULL,
  `wrong_no` int(10) NOT NULL,
  `attempt` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_history`
--

INSERT INTO `archive_history` (`his_id`, `user_id`, `user_name`, `user_email`, `quiz_id`, `score`, `correct_no`, `wrong_no`, `attempt`, `date`) VALUES
(66, 27, 'Yih Kai', 'yk@gmail.com', 32, '0', 1, 1, 1, '2023-11-05 17:43:39'),
(67, 27, 'Yih Kai', 'yk@gmail.com', 33, '10', 2, 0, 1, '2023-11-05 17:44:01'),
(68, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 40, '-10', 0, 2, 1, '2023-11-05 17:51:45'),
(69, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 40, '0', 1, 1, 2, '2023-11-05 17:51:54'),
(70, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 39, '-16', 0, 2, 1, '2023-11-05 17:52:02'),
(71, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 41, '0', 1, 1, 1, '2023-11-05 17:52:23'),
(72, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 38, '5', 1, 0, 1, '2023-11-05 17:52:30'),
(73, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 35, '0', 1, 1, 1, '2023-11-05 17:52:37'),
(74, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 37, '10', 2, 0, 1, '2023-11-05 17:52:49'),
(75, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 38, '-5', 0, 1, 2, '2023-11-05 17:52:57'),
(76, 30, 'Teng', 'teng@gmail.com', 32, '-10', 0, 2, 1, '2023-11-05 17:53:42'),
(77, 30, 'Teng', 'teng@gmail.com', 38, '5', 1, 0, 1, '2023-11-05 17:53:51'),
(78, 30, 'Teng', 'teng@gmail.com', 39, '-16', 0, 2, 1, '2023-11-05 17:54:00'),
(79, 30, 'Teng', 'teng@gmail.com', 39, '0', 1, 1, 2, '2023-11-05 17:54:08'),
(80, 31, 'Shirley', 'shirley@gmail.com', 32, '0', 1, 1, 1, '2023-11-05 17:57:55'),
(81, 31, 'Shirley', 'shirley@gmail.com', 35, '10', 2, 0, 1, '2023-11-05 17:58:08'),
(82, 31, 'Shirley', 'shirley@gmail.com', 43, '-10', 0, 2, 1, '2023-11-05 17:58:19'),
(83, 31, 'Shirley', 'shirley@gmail.com', 37, '0', 1, 1, 1, '2023-11-05 17:58:34'),
(84, 32, 'Bryan', 'bryan@gmail.com', 51, '8', 2, 0, 1, '2023-11-05 18:47:07'),
(85, 31, 'Shirley', 'shirley@gmail.com', 50, '-10', 0, 2, 1, '2023-11-05 18:47:48'),
(86, 33, 'Albert', 'albert@gmail.com', 33, '10', 2, 0, 1, '2023-11-06 17:22:16'),
(87, 33, 'Albert', 'albert@gmail.com', 49, '-5', 0, 1, 1, '2023-11-06 17:40:30'),
(88, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 51, '0', 1, 1, 1, '2023-11-07 06:08:26'),
(89, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 55, '5', 1, 1, 1, '2023-11-23 18:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `archive_rank`
--

CREATE TABLE `archive_rank` (
  `rank_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_rank`
--

INSERT INTO `archive_rank` (`rank_id`, `user_id`, `user_email`, `user_name`, `score`, `quiz_id`, `date`) VALUES
(4, 27, 'yk@gmail.com', 'Yih Kai', 0, 32, '2023-11-05 17:43:39'),
(5, 27, 'yk@gmail.com', 'Yih Kai', 10, 33, '2023-11-05 17:44:01'),
(6, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 40, '2023-11-05 17:51:54'),
(7, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', -16, 39, '2023-11-05 17:52:02'),
(8, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 41, '2023-11-05 17:52:23'),
(9, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 5, 38, '2023-11-05 17:52:30'),
(10, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 35, '2023-11-05 17:52:37'),
(11, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 10, 37, '2023-11-05 17:52:49'),
(12, 30, 'teng@gmail.com', 'Teng', -10, 32, '2023-11-05 17:53:42'),
(13, 30, 'teng@gmail.com', 'Teng', 5, 38, '2023-11-05 17:53:51'),
(14, 30, 'teng@gmail.com', 'Teng', 0, 39, '2023-11-05 17:54:08'),
(15, 31, 'shirley@gmail.com', 'Shirley', 0, 32, '2023-11-05 17:57:55'),
(16, 31, 'shirley@gmail.com', 'Shirley', 10, 35, '2023-11-05 17:58:08'),
(17, 31, 'shirley@gmail.com', 'Shirley', -10, 43, '2023-11-05 17:58:19'),
(18, 31, 'shirley@gmail.com', 'Shirley', 0, 37, '2023-11-05 17:58:34'),
(19, 32, 'bryan@gmail.com', 'Bryan', 8, 51, '2023-11-05 18:47:07'),
(20, 31, 'shirley@gmail.com', 'Shirley', -10, 50, '2023-11-05 18:47:48'),
(21, 33, 'albert@gmail.com', 'Albert', 10, 33, '2023-11-06 17:22:16'),
(22, 33, 'albert@gmail.com', 'Albert', -5, 49, '2023-11-06 17:40:30'),
(23, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 51, '2023-11-07 06:08:26'),
(24, 28, 'tengteng8132002@gmail.com', 'Teng Teng Lim', 5, 55, '2023-11-23 18:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`, `date`) VALUES
(17, 'Hi', 'Hi, welcome to online quiz system!', '2023-11-23 17:43:38'),
(18, 'Bye', 'Thank you and bye bye!', '2023-11-23 18:26:53'),
(19, 'Byebye', 'Thank you and bye bye!', '2023-11-23 18:27:06'),
(20, 'hello', 'Hello, welcome to online quiz system!', '2023-11-23 18:27:23'),
(21, '1', 'The FAQ of the system are : <br/> Q1: How do I participate in a quiz? <br/>To participate in a quiz, log in to your account on then browse the available quizzes, and click on the quiz you want to join. Follow the on-screen instructions to start the quiz. <br/> Q2: How are quiz scores calculated? <br/>Quiz scores are typically calculated based on the number of correct answers. Each correct answer contributes to your total score. Some quizzes may also have a time factor, rewarding participants who answer questions quickly. <br/> Q3 : How can I reset my password if I forget it? <br/> If you forget your password, click on the \\\"Forgot Password\\\" link on the login page. Follow the instructions to reset your password. An email will be sent to you with further steps.', '2023-11-23 18:31:06'),
(22, '2', 'Please leave your comment/feedback in one message, thank you!', '2023-11-23 18:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_message` varchar(300) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_history`
--

INSERT INTO `chat_history` (`id`, `user_id`, `user_message`, `date`) VALUES
(51, 28, 'hi', '2023-11-07 14:10:02'),
(52, 28, 'hi', '2023-11-07 14:10:28'),
(53, 28, '12345', '2023-11-07 14:16:10'),
(54, 28, '1', '2023-11-24 02:29:57'),
(55, 28, '1', '2023-11-24 02:30:27'),
(56, 28, '1', '2023-11-24 02:31:10'),
(57, 28, 'hello', '2023-11-24 02:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `score` char(10) NOT NULL,
  `correct_no` int(10) NOT NULL,
  `wrong_no` int(10) NOT NULL,
  `attempt` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `user_id`, `user_name`, `user_email`, `quiz_id`, `score`, `correct_no`, `wrong_no`, `attempt`, `date`) VALUES
(102, 27, 'Yih Kai', 'yk@gmail.com', 32, '0', 1, 1, 1, '2023-09-10 17:43:39'),
(103, 27, 'Yih Kai', 'yk@gmail.com', 33, '10', 2, 0, 1, '2023-11-05 17:44:01'),
(104, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 40, '-10', 0, 2, 1, '2023-10-05 17:51:45'),
(105, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 40, '0', 1, 1, 2, '2023-10-05 17:51:54'),
(107, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 41, '0', 1, 1, 1, '2023-11-05 17:52:23'),
(110, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 37, '10', 2, 0, 1, '2023-09-05 17:52:49'),
(111, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 38, '-5', 0, 1, 2, '2023-08-05 17:52:57'),
(112, 30, 'Teng', 'teng@gmail.com', 32, '-10', 0, 2, 1, '2023-08-05 17:53:42'),
(113, 30, 'Teng', 'teng@gmail.com', 38, '5', 1, 0, 1, '2023-07-05 17:53:51'),
(114, 30, 'Teng', 'teng@gmail.com', 39, '-16', 0, 2, 1, '2023-07-05 17:54:00'),
(115, 30, 'Teng', 'teng@gmail.com', 39, '0', 1, 1, 2, '2023-06-05 17:54:08'),
(116, 31, 'Shirley', 'shirley@gmail.com', 32, '0', 1, 1, 1, '2023-05-05 17:57:55'),
(117, 31, 'Shirley', 'shirley@gmail.com', 35, '10', 2, 0, 1, '2023-05-05 17:58:08'),
(118, 31, 'Shirley', 'shirley@gmail.com', 43, '-10', 0, 2, 1, '2023-04-10 17:43:39'),
(119, 31, 'Shirley', 'shirley@gmail.com', 37, '0', 1, 1, 1, '2023-03-05 17:58:34'),
(120, 32, 'Bryan', 'bryan@gmail.com', 51, '8', 2, 0, 1, '2023-02-05 18:47:07'),
(122, 33, 'Albert', 'albert@gmail.com', 33, '10', 2, 0, 1, '2023-02-06 17:22:16'),
(123, 33, 'Albert', 'albert@gmail.com', 49, '-5', 0, 1, 1, '2023-01-06 17:40:30'),
(124, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 51, '0', 1, 1, 1, '2023-11-07 06:08:26'),
(125, 28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', 55, '5', 1, 1, 1, '2023-11-23 18:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` int(5) NOT NULL,
  `lecturer_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lecturer_password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lecturer_image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lecturer_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lecturer_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_id`, `lecturer_name`, `lecturer_password`, `lecturer_image`, `lecturer_email`, `lecturer_no`) VALUES
(9, 'Bell', '$2y$10$r8FF6mm68If0NFvaGU/ZgO7eksX0P3Npc5B4nXjbynmA5gE5cGhHK', '', 'bell@gmail.com', 1234567890),
(10, 'Alice Teoh', '$2y$10$Qd8FfZ8.tCjH72Svv7ae6esHn8H3JRQt6lfY78EDio.Q2yJwieG7O', '', 'alice@gmail.com', 123456789),
(11, 'Leow', '$2y$10$7Lq9mUXUclJ8RSazeXf8P.fVmgKdT/etoUZfe7WVn2FabnhObKlXC', 'profile.png', 'leow@gmail.com', 234567890),
(13, 'Ms. Vasuky', '$2y$10$kyv1JspLH9GTkpNzNn.K2OoeFU/38G.BRBmIqRXmewdpwD7PeLFVy', '', 'vasuky@gmail.com', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `question_id` varchar(10) NOT NULL,
  `option` varchar(100) NOT NULL,
  `option_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`question_id`, `option`, `option_id`) VALUES
('231', 'option 1', '231a'),
('231', 'option 2', '231b'),
('231', 'option 3', '231c'),
('231', 'option 4', '231d'),
('232', 'a', '232a'),
('232', 'b', '232b'),
('232', 'c', '232c'),
('232', '-', '232d'),
('233', '1', '233a'),
('233', '2', '233b'),
('233', '-', '233c'),
('233', '-', '233d'),
('234', '1a', '234a'),
('234', '1b', '234b'),
('234', '1c', '234c'),
('234', '1d', '234d'),
('235', 'ma1', '235a'),
('235', 'ma2', '235b'),
('235', '-', '235c'),
('235', '-', '235d'),
('236', '2ma', '236a'),
('236', '2mb', '236b'),
('236', '2mc', '236c'),
('236', '2md', '236d'),
('237', 'ma1', '237a'),
('237', 'ma2', '237b'),
('237', '-', '237c'),
('237', '-', '237d'),
('238', 'te', '238a'),
('238', 'te', '238b'),
('238', 'te', '238c'),
('238', 'tee', '238d'),
('239', 'apple', '239a'),
('239', 'bus', '239b'),
('239', 'cat', '239c'),
('239', 'donkey', '239d'),
('240', 'e1', '240a'),
('240', 'e2', '240b'),
('240', 'e3', '240c'),
('240', 'e4', '240d'),
('241', 'false', '241a'),
('241', 'true', '241b'),
('241', '-', '241c'),
('241', '-', '241d'),
('242', '1m', '242a'),
('242', '2m', '242b'),
('242', '-', '242c'),
('242', '-', '242d'),
('243', 'tamadun1', '243a'),
('243', 'tamadun2', '243b'),
('243', 'tamadun3', '243c'),
('243', 'tamadun4', '243d'),
('244', 'yes', '244a'),
('244', 'no', '244b'),
('244', 'null', '244c'),
('244', 'null', '244d'),
('245', 'abc is fun', '245a'),
('245', 'abc is not fun', '245b'),
('245', 'abc is fun', '245c'),
('245', 'abc is not fun', '245d'),
('246', 'yes', '246a'),
('246', 'no', '246b'),
('246', '-', '246c'),
('246', '-', '246d'),
('247', '11', '247a'),
('247', '1', '247b'),
('247', '2', '247c'),
('247', '3', '247d'),
('248', 'good', '248a'),
('248', 'bad', '248b'),
('248', 'fine ', '248c'),
('248', '-', '248d'),
('249', 'true', '249a'),
('249', 'maybe', '249b'),
('249', 'no', '249c'),
('249', 'all of the above', '249d'),
('250', 'yes', '250a'),
('250', 'no', '250b'),
('250', 'N/A', '250c'),
('250', 'N/A', '250d'),
('251', 'yes', '251a'),
('251', 'no', '251b'),
('251', 'N/A', '251c'),
('251', 'N/A', '251d');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(10) NOT NULL,
  `question` varchar(100) NOT NULL,
  `choice` int(10) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `lecturer_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question`, `choice`, `answer`, `subject`, `lecturer_name`) VALUES
(232, 'Science Question 2', 4, 'a', 'Science', 'Bell'),
(234, 'Science ques2', 4, '1a', 'Science', 'Leow'),
(235, 'Maths question1', 4, 'ma1', 'Mathematics', 'Leow'),
(238, 'testing', 4, 'te', 'Mathematics', 'Leow'),
(239, 'eng1', 4, 'bus', 'English', 'Leow'),
(240, 'eng2', 4, 'e4', 'English', 'Leow'),
(241, 'Sejarah is fun!', 4, 'false', 'Sejarah', 'Leow'),
(242, 'Malay1', 4, '1m', 'Malay', 'Leow'),
(243, 'Tamadun testing', 4, 'tamadun2', 'Sejarah', 'Alice Teoh'),
(244, 'Malay ques', 4, 'no', 'Malay', 'Alice Teoh'),
(245, 'abc is fun', 4, 'abc is not fun', 'English', 'Alice Teoh'),
(246, 'snacks is nice!', 4, '-', 'English', 'Bell'),
(247, '1+1', 4, '1', 'Mathematics', 'Bell'),
(248, 'Sejarah test', 4, 'bad', 'Sejarah', 'Ms. Vasuky'),
(249, 'Science science', 4, 'all of the above', 'Science', 'Ms. Vasuky'),
(250, 'Malay is fun!', 2, 'yes', 'Malay', 'Leow'),
(251, 'Malay is hard', 2, 'no', 'Malay', 'Leow');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(10) NOT NULL,
  `quiz_title` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `correct` char(10) NOT NULL,
  `wrong` char(10) NOT NULL,
  `total_question` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `diff_level` int(5) NOT NULL,
  `attempt` int(5) NOT NULL,
  `quiz_subject` varchar(50) NOT NULL,
  `quiz_visibility` varchar(50) NOT NULL,
  `quiz_time` int(100) NOT NULL,
  `quiz_password` varchar(20) DEFAULT NULL,
  `lecturer_name` varchar(50) NOT NULL,
  `quiz_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `question`, `correct`, `wrong`, `total_question`, `date`, `diff_level`, `attempt`, `quiz_subject`, `quiz_visibility`, `quiz_time`, `quiz_password`, `lecturer_name`, `quiz_image`) VALUES
(32, 'quiz 1 ', '232, 234', '5', '5', 2, '2023-01-05 16:25:02', 5, 10, 'Science', 'Private', 10, 'abc123', 'Ms. Vasuky', 'cover.png'),
(33, 'testing quiz', '238, 247', '5', '5', 2, '2023-02-05 16:27:18', 3, 10, 'Mathematics', 'Public', 10, '', 'Ms. Vasuky', 'cover2.jpg'),
(34, 'maths quiz', '235, 238, 247', '5', '5', 3, '2023-02-05 16:28:48', 6, 10, 'Mathematics', 'Public', 10, '', 'Alice Teoh', 'cover_maths2.png'),
(35, 'quiz demo', '241, 243', '5', '5', 2, '2023-01-05 16:30:35', 3, 10, 'Sejarah', 'Public', 10, '', 'Alice Teoh', 'background.jpg'),
(36, 'English 1', '239, 245', '5', '5', 2, '2023-03-05 16:31:13', 6, 10, 'English', 'Private', 10, 'abc123', 'Alice Teoh', 'book.png'),
(37, 'malay 1', '242, 244', '5', '5', 2, '2023-03-05 16:32:37', 7, 10, 'Malay', 'Private', 5, 'abc123', 'Alice Teoh', 'cover.png'),
(38, 'malay test', '244', '5', '5', 1, '2023-01-05 16:35:10', 2, 10, 'Malay', 'Public', 10, '', 'Bell', 'cover2.jpg'),
(39, 'testing english', '240, 245', '8', '8', 2, '2023-11-23 18:55:08', 3, 10, 'English', 'Public', 5, '', 'Bell', 'cover.png'),
(40, 'Maths good !', '238, 247', '5', '5', 2, '2023-05-05 16:38:33', 4, 10, 'Mathematics', 'Public', 5, '', 'Leow', 'cover_maths.jpg'),
(41, 'Sejarah sejarah', '241, 243', '5', '5', 2, '2023-05-05 16:39:31', 4, 10, 'Sejarah', 'Private', 10, 'abc123', 'Leow', 'cover.png'),
(42, 'Science quiz', '232, 234, 249', '5', '5', 3, '2023-06-05 17:54:49', 5, 10, 'Science', 'Private', 20, 'abc123', 'Alice Teoh', 'cover2.jpg'),
(43, 'malay demo test', '242, 244', '5', '5', 2, '2023-07-05 17:55:41', 7, 10, 'Malay', 'Public', 5, '', 'Leow', 'logo.png'),
(44, 'malay quiz', '244', '5', '5', 1, '2023-07-05 17:56:12', 5, 10, 'Malay', 'Private', 5, 'abc123', 'Leow', 'background.jpg'),
(45, 'Sc test', '232, 234, 249', '10', '10', 3, '2023-08-05 18:01:05', 10, 10, 'Science', 'Public', 10, '', 'Ms. Vasuky', 'cover3.jpg'),
(46, 'Science test', '232, 234, 249', '8', '8', 3, '2023-08-05 18:01:30', 8, 10, 'Science', 'Public', 20, '', 'Ms. Vasuky', 'cover5.jpg'),
(47, 'Maths testing', '238', '5', '5', 1, '2023-10-05 18:02:22', 5, 5, 'Mathematics', 'Private', 5, 'abc123', 'Ms. Vasuky', 'cover_maths2.png'),
(48, 'English test', '240, 245', '3', '3', 2, '2023-11-23 18:55:13', 3, 5, 'English', 'Public', 5, '', 'Bell', 'background.jpg'),
(49, 'Sej test', '241', '5', '5', 1, '2023-07-05 18:03:42', 3, 10, 'Sejarah', 'Public', 5, '', 'Bell', 'cover5.jpg'),
(50, 'BI quiz', '245, 246', '5', '5', 2, '2023-04-05 18:04:32', 3, 5, 'English', 'Public', 5, '', 'Bell', 'cover4.jpg'),
(51, 'Sejarah buku test', '232, 234', '4', '4', 2, '2023-11-05 18:05:26', 2, 5, 'Science', 'Public', 5, '', 'Leow', 'book.png'),
(52, 'Science demo ', '234, 249', '5', '5', 2, '2023-11-05 18:05:52', 5, 5, 'Science', 'Private', 5, 'abc123', 'Leow', 'cover4.jpg'),
(53, 'demo', '240, 245, 246', '5', '5', 3, '2023-11-07 06:12:46', 5, 10, 'English', 'Private', 10, 'abc123', 'Leow', 'cover.png'),
(54, 'Sej', '241, 243, 248', '5', '0', 3, '2023-11-23 18:51:59', 5, 5, 'Sejarah', 'Private', 10, 'abc123', 'Leow', 'cover2.jpg'),
(55, 'Malay quiz 1', '250, 251', '5', '0', 2, '2023-11-23 18:54:10', 3, 10, 'Malay', 'Public', 5, '', 'Leow', 'chat.png');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `user_id`, `user_email`, `user_name`, `score`, `quiz_id`, `date`) VALUES
(39, '27', 'yk@gmail.com', 'Yih Kai', 0, 32, '2023-11-05 17:43:39'),
(40, '27', 'yk@gmail.com', 'Yih Kai', 10, 33, '2023-11-05 17:44:01'),
(41, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 40, '2023-11-05 17:51:54'),
(42, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', -16, 39, '2023-11-05 17:52:02'),
(43, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 41, '2023-11-05 17:52:23'),
(44, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 5, 38, '2023-11-05 17:52:30'),
(45, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 35, '2023-11-05 17:52:37'),
(46, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 10, 37, '2023-11-05 17:52:49'),
(47, '30', 'teng@gmail.com', 'Teng', -10, 32, '2023-11-05 17:53:42'),
(48, '30', 'teng@gmail.com', 'Teng', 5, 38, '2023-11-05 17:53:51'),
(49, '30', 'teng@gmail.com', 'Teng', 0, 39, '2023-11-05 17:54:08'),
(50, '31', 'shirley@gmail.com', 'Shirley', 0, 32, '2023-11-05 17:57:55'),
(51, '31', 'shirley@gmail.com', 'Shirley', 10, 35, '2023-11-05 17:58:08'),
(52, '31', 'shirley@gmail.com', 'Shirley', -10, 43, '2023-11-05 17:58:19'),
(53, '31', 'shirley@gmail.com', 'Shirley', 0, 37, '2023-11-05 17:58:34'),
(54, '32', 'bryan@gmail.com', 'Bryan', 8, 51, '2023-11-05 18:47:07'),
(55, '31', 'shirley@gmail.com', 'Shirley', -10, 50, '2023-11-05 18:47:48'),
(56, '33', 'albert@gmail.com', 'Albert', 10, 33, '2023-11-06 17:22:16'),
(57, '33', 'albert@gmail.com', 'Albert', -5, 49, '2023-11-06 17:40:30'),
(58, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 0, 51, '2023-11-07 06:08:26'),
(59, '28', 'tengteng8132002@gmail.com', 'Teng Teng Lim', 5, 55, '2023-11-23 18:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `subject`) VALUES
(4, 'Science'),
(5, 'Mathematics'),
(6, 'English'),
(9, 'Sejarah'),
(10, 'Malay');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_number` int(20) NOT NULL,
  `user_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_number`, `user_image`) VALUES
(27, 'Yih Kai', 'yk@gmail.com', '$2y$10$Un4qWiJQ.a.f4bMVlawsIe19rUy/6qfX10/SjmhkHqHdbs4SG33rS', 1234567890, 'look good.png'),
(28, 'Teng Teng Lim', 'tengteng8132002@gmail.com', '$2y$10$C.vLB2JhOhSHz3ZnufjnPe5B/DcNgzp26CmD/BR.KFSX1wJKvnbre', 124207460, 'profile.png'),
(30, 'Teng', 'teng@gmail.com', '$2y$10$1UBi1z0jJmzCfqQVrBbyg.hb4iH/.g9bUt3KRBAbifiXt4zhyXi0y', 124207460, ' profile2.png'),
(31, 'Shirley', 'shirley@gmail.com', '$2y$10$qqcQFoQTkFEmnfSQZwoNH.lP1SsH2lLli/fATnyPxP1T.bwYEX6lm', 1234567890, '  profile2.png'),
(32, 'Bryan', 'bryan@gmail.com', '$2y$10$RsZVzCXCRSa9WQlsUdWaPu7B/wCnTciYU3as2YGbcqKk.oNML..Ui', 123456789, '  profile3.png'),
(33, 'Albert', 'albert@gmail.com', '$2y$10$gVdX82BZJYWINNF1rVeMTuglcoXVQJf/8eWymhn7TDx8EZH.ZjAAC', 1234567890, '  profile2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ann_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`ans_id`),
  ADD KEY `FK_question_id 1` (`question_id`);

--
-- Indexes for table `archive_history`
--
ALTER TABLE `archive_history`
  ADD PRIMARY KEY (`his_id`);

--
-- Indexes for table `archive_rank`
--
ALTER TABLE `archive_rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`),
  ADD KEY `FK_user_id 2` (`user_id`),
  ADD KEY `FK_quiz_id` (`quiz_id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`),
  ADD KEY `FK_user_id 3` (`user_id`),
  ADD KEY `FK_quiz_id 3` (`quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `ann_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `ans_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=943;

--
-- AUTO_INCREMENT for table `archive_history`
--
ALTER TABLE `archive_history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `archive_rank`
--
ALTER TABLE `archive_rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `lecturer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
