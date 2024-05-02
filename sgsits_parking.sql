-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 02, 2024 at 11:06 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sgsits_parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Fname`, `Lname`, `mobile_no`, `location`, `username`, `password`) VALUES
(1, 'Pankaj', 'Nagava', '8696384756', 'SGSITS Indore', 'pankaj', '12345'),
(7, 'Anurag', 'Choudhary', '1234567890', 'Main Parking', 'Anurag', '$2y$10$8CHaZXTscxAbHRwcoffYmuwG6VJwvejTiJbMlGxj/dueiZuMS33WO');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slot` int(200) NOT NULL,
  `remaining_slots` varchar(50) NOT NULL,
  `attendant` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `location`, `street`, `name`, `slot`, `remaining_slots`, `attendant`, `date`, `price`) VALUES
(1, 'SGSITS Indore', 'Cafe91', 'CSE Parking', 4, '2', 'Pankaj Nagava', '2024-04-30 06:24:42', '50'),
(2, 'SGSITS Indore', 'Main Parking', 'Main Parking', 4, '4', 'Pankaj Nagava', '2024-04-30 04:10:33', '50'),
(7, 'SGSITS Indore', 'Main Parking', 'Pharmacy', 30, '30', 'Anurag', '2024-04-25 08:11:52', '40');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `parking_id` int(25) NOT NULL,
  `slots` varchar(25) NOT NULL,
  `hours` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `customer` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `slots`, `hours`, `cost`, `customer`, `time`, `status`, `otp`) VALUES
(1, 1, '1', 5, 250, 'abhishek@gmail.com', '2023-11-02 14:58:49', 'Completed', '7165'),
(8, 2, '1', 3, 150, 'abhishek@gmail.com', '2023-11-02 18:40:34', 'Completed', '4978'),
(9, 2, '1', 4, 200, 'abhishekpatidar9876@gmail', '2023-11-02 18:43:43', 'Completed', '355'),
(10, 2, '1', 4, 200, 'vivekdawar582@gmail.com', '2023-11-02 18:46:39', 'Completed', ''),
(11, 1, '1', 6, 300, 'a.patidar0901@gmail.com', '2023-11-02 22:11:31', 'Completed', '7294'),
(26, 2, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-02 23:28:49', 'Completed', '2282'),
(27, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-02 23:38:01', 'Completed', '1152'),
(28, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-02 23:41:50', 'Completed', '916'),
(29, 1, '1', 13, 650, 'a.patidar0901@gmail.com', '2023-11-02 23:44:47', 'Completed', '5605'),
(30, 7, '1', 3, 120, 'a.patidar0901@gmail.com', '2023-11-02 23:49:44', 'Completed', '7759'),
(31, 1, '1', 3, 150, 'a.patidar0901@gmail.com', '2023-11-03 00:46:40', 'Completed', '5733'),
(32, 7, '1', 2, 80, 'a.patidar0901@gmail.com', '2023-11-03 00:49:48', 'Completed', '8673'),
(33, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-03 08:38:53', 'Completed', ''),
(34, 2, '1', 3, 150, 'a.patidar0901@gmail.com', '2023-11-03 08:56:44', 'Completed', ''),
(35, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-03 10:41:30', 'Completed', ''),
(36, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-03 10:44:27', 'Completed', '4574'),
(37, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-11-03 10:53:54', 'Completed', '6577'),
(38, 1, '1', 4, 200, 'a.patidar0901@gmail.com', '2023-11-03 15:12:53', 'Completed', ''),
(39, 1, '1', 4, 200, 'a.patidar0901@gmail.com', '2023-11-03 15:18:44', 'Completed', ''),
(41, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-03 18:27:38', 'Completed', '1765'),
(42, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-03 18:42:46', 'Completed', '8737'),
(43, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-05 13:55:17', 'Completed', '7768'),
(44, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-05 14:06:11', 'Completed', '6842'),
(45, 7, '1', 2, 80, 'a.patidar0901@gmail.com', '2023-12-05 15:11:43', 'Completed', '2720'),
(46, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-06 14:35:44', 'Completed', '9589'),
(47, 2, '1', 3, 150, 'abhishek@gmail.com', '2023-12-06 14:36:36', 'Completed', '9194'),
(48, 2, '1', 2, 100, 'abhishek@gmail.com', '2023-12-06 14:37:59', 'Completed', '3934'),
(49, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-06 14:40:11', 'Completed', '8684'),
(50, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2023-12-06 14:41:13', 'Completed', '8086'),
(51, 1, '1', 6, 300, 'a.patidar0901@gmail.com', '2023-12-06 15:15:03', 'Completed', '5939'),
(52, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-02-13 23:03:21', 'Completed', '4150'),
(53, 1, '1', 1, 50, 'abhishek@gmail.com', '2024-04-14 23:18:20', 'Completed', '3249'),
(54, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-14 23:20:02', 'Completed', '1625'),
(55, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-14 23:21:27', 'Completed', '4666'),
(56, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-14 23:25:37', 'Completed', '8356'),
(57, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-15 10:24:31', 'Completed', '7380'),
(58, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-15 14:16:49', 'Completed', '2397'),
(59, 1, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-16 13:39:36', 'Completed', '4781'),
(60, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:20:04', 'Completed', '6447'),
(61, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:22:35', 'Completed', ''),
(62, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:38:30', 'Completed', ''),
(63, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:40:32', 'Completed', ''),
(64, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:44:54', 'Completed', ''),
(65, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:56:39', 'Completed', '7506'),
(66, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:58:29', 'Completed', ''),
(67, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 12:59:43', 'Completed', ''),
(68, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 13:05:18', 'Completed', ''),
(69, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 13:11:27', 'Completed', ''),
(70, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-24 14:16:18', 'Completed', ''),
(71, 2, '1', 3, 150, 'pnagava@gmail.com', '2024-04-24 14:25:09', 'Completed', ''),
(72, 7, '1', 1, 40, 'pnagava@gmail.com', '2024-04-25 13:41:27', 'Completed', ''),
(73, 2, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-25 16:07:00', 'Completed', ''),
(74, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-25 16:39:18', 'Completed', '5646'),
(75, 2, '1', 1, 50, 'a.patidar0901@gmail.com', '2024-04-25 16:40:43', 'Completed', '1778'),
(76, 2, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-30 09:40:18', 'Completed', ''),
(77, 1, '1', 2, 100, 'a.patidar0901@gmail.com', '2024-04-30 11:53:39', 'Completed', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`) VALUES
(1, 'Abhishek', 'abhishek@gmail.com', '$2y$10$cK8g0rSW7E9WG0KP2GrqhOl2F6DhnQmcAnsjs4Au6H9UbUQq7O23C', '$2y$10$LC6iLMQQ5eqDd7NEAM47XuY2zWHhaWLEatEWm/PT43j11iPGYKiCS'),
(10, 'Vivek Dawar', 'vivek@gmail.com', '$2y$10$6b2NPBi1399gOwAvttcKuO68SN7WxO1jCGUlLOtmSu2Yr9bRk2Oay', '$2y$10$3RJa4hGvHjGWXw1PPMNLieXFVwzaVYeKA6ecmUz22pTNmlmmnXnnS'),
(11, 'Priyanka', 'priyanka@gmai.com', '$2y$10$7uBN5CvClKh5Kk.AFF/7z.MPf9EBgJP4bby7NXJMarX2vpnTOUVZa', '$2y$10$wIl5fNAbWCCgTtQsxYWUx.oIc0pz3oQOdDImcv9u7MmdUEWPTwiRy'),
(12, 'Neha Mehra', 'Neha@gmail.com', '$2y$10$gxgl.W7O5i.wf5WJrcdtOOHgCJHLg9JGlrShwn7nuAq3beq25Vziy', '$2y$10$eUT12gVoFvLAuh/aJBsjb.iVrwQFeV/9FUBxzyAdZ5v6P2EthZlUm'),
(13, 'Priyanka Kokate', 'Priyanka@gmail.com', '$2y$10$R5cuUDBqrFyp1uGlPHSsZeuaV7ygTQ7eM99bL7NAaI88llYmzQEme', '$2y$10$wJxHN8uDeAj3UYCzMiXBq.2gPqiuUQUzwgCLMmsHoyuyZ32IY/mIS'),
(14, 'Abhishek', 'Abhi@gmail.com', '$2y$10$OWeDEsNpUl0O/fjHCgwf8.AIjLBYEpwJ4Ti6AJy0/ywJaHSE30GPa', '$2y$10$u9F6pHxwtKF2bsCgxHWy..qP5GMobWhXBREIO/hPwgHhnAH1xSRWq'),
(16, 'Abhi', 'abhipatidar9@gmail.com', '$2y$10$/j2pc6I/DqEeGL/U7Rd9tulrWQy9uGZCfk04tuGns4vjwuyLWBjMq', '$2y$10$tALtW7SMo61rY7z1btXoTODKMua0fBNIJplqC2uMy4gm0I9a7CNhm'),
(17, 'vivek', 'vivekdawar582@gmail.com', '$2y$10$s9g2.q3GFV2QwjQGrmLjpuTg17KiYptPSuvwFmDmAipjubk4OJ7.e', '$2y$10$W7fdNSDoy66NQW2JSmBCIumviPCTv0qRFXaycnyOgziRAUjWXpCsO'),
(18, 'Abhishek Patidar', 'a.patidar0901@gmail.com', '$2y$10$LQB19R8ecC38pYygD0Wrzuti4y2ZQl105ZE96MohvWAoW0N5V9sb.', '$2y$10$CLUQuhnjwVpKYLPQa62UMOFKoYnKP9mi3BNsuCcJgU7glzgBNEX8S'),
(19, 'Anurag', 'anurag1@gmail.com', '$2y$10$Vo2ykmYz6wsEQR9k4awMYeC3F5licwUc3UlycSlRolMHIHAkLD9UW', '$2y$10$6Vhm9mFMTdrhwGGx.Gm4F.OlLH3fwx3NIyUJuFQNNwk0bQktbknTm'),
(20, 'Pankaj', 'pnagava@gmail.com', '$2y$10$umkf3Fjs1VsDm4pgCyT0pOiOGm89ksfTb11FsXjQaLyeQEknenbBW', '$2y$10$236ehmR8XCgBMSaUtStvyucKWxzJUOc0KsFn7YohwU06tf2AqYkVG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
