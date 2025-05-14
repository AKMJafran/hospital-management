-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2025 at 02:49 PM
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
-- Database: `sbr-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `like_Count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `full_name`, `phone_number`, `country`, `email`, `message`, `submit_date`) VALUES
(1, 'Dilusha', '123-456-7890', 'Sri Lanka', 'dilushamadushan007@gmail.com', 'good', '2025-04-19 14:24:53'),
(2, 'Dilusha', '123-456-7890', 'Sri Lanka', 'dilushamadushan007@gmail.com', 'good', '2025-04-19 14:27:47'),
(3, 'kk', '0704385066', 'Sri Lanka', 'aa@mail.com', 'good', '2025-04-19 14:30:59'),
(4, 'kk', '0704385066', 'Sri Lanka', 'aa@mail.com', 'good', '2025-04-19 14:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `start_time` time NOT NULL,
  `duration` int(11) NOT NULL,
  `event_type` enum('Free','Paid') NOT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_reg`
--

CREATE TABLE `event_reg` (
  `id` int(11) NOT NULL,
  `namec` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `room` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `participants` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_bookings`
--

CREATE TABLE `room_bookings` (
  `booking_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `adult_count` int(11) NOT NULL,
  `children_count` int(11) NOT NULL,
  `payment_status` enum('Success','Unsuccess') NOT NULL,
  `room_price` decimal(10,2) NOT NULL,
  `special_requests` text DEFAULT NULL,
  `booking_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(100) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `u_contactNo` int(10) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `u_imgPath` varchar(100) NOT NULL,
  `u_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_reg`
--
ALTER TABLE `event_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_bookings`
--
ALTER TABLE `room_bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_reg`
--
ALTER TABLE `event_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_bookings`
--
ALTER TABLE `room_bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
