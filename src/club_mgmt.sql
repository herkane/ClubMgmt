-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 06:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_status`
--

CREATE TABLE `account_status` (
  `id` int(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_status`
--

INSERT INTO `account_status` (`id`, `description`) VALUES
(0, 'Unverifié'),
(1, 'Verifié'),
(2, 'Desactivé'),
(3, 'Supprimé');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` blob DEFAULT NULL,
  `nbr_participants` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `activities_has_user`
--

CREATE TABLE `activities_has_user` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(0, 'Admin'),
(1, 'Adhèrent'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `Role` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_status` int(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Role`, `email`, `password`, `account_status`, `f_name`, `l_name`) VALUES
(1, 0, 'a@g.c', 'achraf', 1, 'HERKANE', 'Achraf'),
(2, 2, 'didiziki@mailinator.com', '', 0, 'LEVINE', 'Joelle'),
(3, 2, 'sywyruvu@mailinator.com', '', 0, 'NASH', 'Karina'),
(4, 1, 'wixyvilak@mailinator.com', '', 0, 'SHIELDS', 'Maxine'),
(5, 2, 'fogefemy@mailinator.com', '', 0, 'WEST', 'Iliana'),
(6, 2, 'kedynam@mailinator.com', 'Pa$$w0rd!', 0, 'SPARKS', 'Lacota'),
(7, 2, 'wyhedolo@mailinator.com', 'Pa$$w0rd!', 0, 'MEADOWS', 'Christopher'),
(8, 2, 'qika@mailinator.com', 'Pa$$w0rd!', 0, 'WAGNER', 'Rebekah'),
(9, 2, 'mawuxefin@mailinator.com', 'Pa$$w0rd!', 0, 'BUCKNER', 'Lucian'),
(10, 2, 'wyzecyjo@mailinator.com', 'Pa$$w0rd!', 0, 'MILES', 'Indira'),
(11, 2, 'zoluw@mailinator.com', 'Pa$$w0rd!', 0, 'STANTON', 'Kasper'),
(12, 2, 'seduk@mailinator.com', 'Pa$$w0rd!', 0, 'CURTIS', 'Leo'),
(13, 2, 'taqop@mailinator.com', 'Pa$$w0rd!', 0, 'HOLMAN', 'Keane'),
(14, 2, 'letihujyg@mailinator.com', 'Pa$$w0rd!', 0, 'MCDONALD', 'Amos'),
(15, 2, 'dihikukylo@mailinator.com', 'Pa$$w0rd!', 0, 'PAYNE', 'Kaden'),
(16, 2, 'reky@mailinator.com', 'Pa$$w0rd!', 0, 'FINLEY', 'Cruz'),
(17, 2, 'vazohebi@mailinator.com', 'Pa$$w0rd!', 0, 'CHRISTENSEN', 'Hadley'),
(18, 2, 'jojybyl@mailinator.com', 'Pa$$w0rd!', 0, 'MCMAHON', 'Mohammad'),
(19, 2, 'gemiwulomu@mailinator.com', 'Pa$$w0rd!', 0, 'PUGH', 'Brock'),
(20, 2, 'wyqohufyp@mailinator.com', 'Pa$$w0rd!', 0, 'SANTANA', 'Devin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_status`
--
ALTER TABLE `account_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities_has_user`
--
ALTER TABLE `activities_has_user`
  ADD PRIMARY KEY (`activity_id`,`user_id`),
  ADD KEY `user` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_email` (`email`),
  ADD KEY `role` (`Role`),
  ADD KEY `acc_status` (`account_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `activities_has_user`
--
ALTER TABLE `activities_has_user`
  ADD CONSTRAINT `activity` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `acc_status` FOREIGN KEY (`account_status`) REFERENCES `account_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `role` FOREIGN KEY (`Role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
