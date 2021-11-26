-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 11:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `searchbox`
--
CREATE DATABASE IF NOT EXISTS `searchbox` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `searchbox`;
-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sub-description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `title`, `description`, `sub-description`, `link`) VALUES
(1, 'google', 'search everything.....\r\nwith a single character.', 'google.co.in', 'https://www.google.com/'),
(2, 'effectpark', 'be creative', 'get new after effects tutorials and project files..', 'https://effectpark.wordpress.com/'),
(3, 'facebook', 'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.', 'View the latest news, announcements and media resources from Meta.', 'https://www.facebook.com/'),
(4, 'Twitter. It\'s what\'s happening / Twitter', 'From breaking news and entertainment to sports and politics, get the full story with all the live commentary.', 'Log in to Twitter.', 'https://twitter.com/?lang=en'),
(5, 'Instagram', 'Create an account or log in to Instagram - A simple, fun & creative way to capture, edit & share photos, videos & messages with friends & family.', 'The metaverse is the next evolution of social technology.', 'https://www.instagram.com/'),
(6, 'GitHub: Where the world builds software · GitHub', 'GitHub is where over 73 million developers shape the future of software, together. Contribute to the open source community, manage your Git repositories, ...', 'Updates, ideas, and inspiration from GitHub', 'https://github.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
