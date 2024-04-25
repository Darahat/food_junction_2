-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 07:09 PM
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
-- Database: `food_junction`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_receive`
--

CREATE TABLE `account_receive` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `receive_date` varchar(100) NOT NULL,
  `receive_mode` varchar(100) NOT NULL,
  `r_bank_name` varchar(100) NOT NULL,
  `r_cheque_no` varchar(100) NOT NULL,
  `r_cheque_date` varchar(100) NOT NULL,
  `d_bank_id` varchar(100) NOT NULL,
  `d_account_no` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` bigint(20) NOT NULL,
  `bank_id` bigint(20) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `bank_id`, `account_no`, `created`, `modified`) VALUES
(1, 5, '123', '2013-09-08 11:22:56', '2013-09-08 05:22:32'),
(2, 5, '25000', '2013-09-23 05:44:56', '2013-09-22 23:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `bank_cheque`
--

CREATE TABLE `bank_cheque` (
  `id` bigint(20) NOT NULL,
  `bank_id` bigint(20) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `cheque_book_no` varchar(200) NOT NULL,
  `cheque_no` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` bigint(20) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `bank_address` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `bank_name`, `bank_address`, `created`, `modified`) VALUES
(1, 'Datch Bangla Bank', 'sssssssssssssss wwwwwwwwwwwwww', '2011-03-14 00:51:48', '2011-03-13 10:50:36'),
(2, 'Islamic Bank Bangladesh', 'test', '2011-03-15 00:58:48', '2011-03-14 10:57:36'),
(3, 'Mutual Trush Bank', 'test', '2012-02-06 05:15:01', '2012-02-05 21:14:13'),
(4, 'Dhaka Bank', '', '2012-03-01 05:56:35', '2012-02-29 21:55:47'),
(5, 'Maruf sir', 'rampura', '2013-09-08 11:22:39', '2013-09-08 05:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` bigint(20) NOT NULL,
  `transfer_date` varchar(200) NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `transfer_by` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bank_transfer`
--

INSERT INTO `bank_transfer` (`id`, `transfer_date`, `bank_id`, `account_no`, `amount`, `transfer_by`, `created`, `modified`) VALUES
(1, '2013-09-08', '5', '1', 25000, 'admin', '2013-09-24 11:27:12', '2013-09-24 05:26:48'),
(2, '2013-09-07', '5', '1', 27000, 'admin', '2013-09-24 11:27:59', '2013-09-24 05:27:35'),
(3, '2013-09-08', '5', '1', 11480, 'admin', '2013-09-24 11:28:35', '2013-09-24 05:28:11'),
(4, '2013-09-08', '5', '1', 20, 'admin', '2013-09-24 11:29:26', '2013-09-24 05:29:02'),
(5, '2013-09-09', '5', '1', 8700, 'admin', '2013-09-24 11:30:03', '2013-09-24 05:29:39'),
(6, '2013-09-10', '5', '1', 6000, 'admin', '2013-09-24 11:30:52', '2013-09-24 05:30:28'),
(7, '2013-09-11', '5', '1', 6500, 'admin', '2013-09-24 11:31:24', '2013-09-24 05:31:00'),
(8, '2013-09-12', '5', '1', 7000, 'admin', '2013-09-24 11:32:02', '2013-09-24 05:31:38'),
(9, '2013-09-13', '5', '1', 45300, 'admin', '2013-09-24 11:34:15', '2013-09-24 05:33:51'),
(10, '2013-09-14', '5', '1', 40000, 'admin', '2013-09-24 11:34:52', '2013-09-24 05:34:28'),
(11, '2013-09-15', '5', '1', 11000, 'admin', '2013-09-24 12:36:28', '2013-09-24 06:36:04'),
(12, '2013-09-16', '5', '1', 12300, 'admin', '2013-09-24 12:37:15', '2013-09-24 06:36:51'),
(13, '2013-09-17', '5', '1', 15700, 'admin', '2013-09-24 12:37:46', '2013-09-24 06:37:22'),
(14, '2013-09-19', '5', '1', 17000, 'admin', '2013-09-24 12:41:07', '2013-09-24 06:40:43'),
(15, '2013-09-20', '5', '1', 27300, 'admin', '2013-09-24 12:41:51', '2013-09-24 06:41:27'),
(16, '2013-09-21', '5', '1', 28000, 'admin', '2013-09-24 12:42:16', '2013-09-24 06:41:52'),
(17, '2013-09-22', '5', '1', 5600, 'admin', '2013-09-24 12:43:00', '2013-09-24 06:42:36'),
(18, '2013-09-23', '5', '1', 7500, 'admin', '2013-09-24 12:43:28', '2013-09-24 06:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_table`
--

CREATE TABLE `cafe_table` (
  `id` bigint(20) NOT NULL,
  `table_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cafe_table`
--

INSERT INTO `cafe_table` (`id`, `table_name`, `created`, `modified`) VALUES
(1, 'Bowling5', '2012-03-21 05:00:00', '2012-03-20 20:59:13'),
(2, 'Bowling4', '2012-03-21 05:00:13', '2012-03-20 20:59:25'),
(3, 'Bowling3', '2012-03-21 05:00:33', '2012-03-20 20:59:45'),
(4, 'Bowling2', '2012-03-21 05:01:15', '2012-03-20 21:00:27'),
(5, 'Bowling1', '2013-09-05 05:06:25', '2013-09-05 05:06:01'),
(6, 'Bowling6', '2013-09-05 06:01:05', '2013-09-05 06:00:41'),
(7, 'Bowling7', '2013-09-05 06:01:41', '2013-09-05 06:01:17'),
(8, 'Bowling8', '2013-09-05 06:02:13', '2013-09-05 06:01:49'),
(9, 'Bowling9', '2013-09-05 06:02:45', '2013-09-05 06:02:21'),
(10, 'Bowling10', '2013-09-05 06:03:06', '2013-09-05 06:02:42'),
(11, 'Bowling11', '2013-09-05 06:03:20', '2013-09-05 06:02:56'),
(12, 'Bowling12', '2013-09-05 06:03:36', '2013-09-05 06:03:12'),
(13, 'Bowling13', '2013-09-05 06:03:46', '2013-09-05 06:03:22'),
(14, 'Bowling14', '2013-09-05 06:04:21', '2013-09-05 06:03:57'),
(15, 'Bowling15', '2013-09-05 06:04:38', '2013-09-05 06:04:14'),
(16, 'Bowling16', '2013-09-05 06:04:51', '2013-09-05 06:04:27'),
(17, 'Bowling17', '2013-09-05 06:05:22', '2013-09-05 06:04:58'),
(18, 'Bowling18', '2013-09-05 06:05:39', '2013-09-05 06:05:15'),
(19, 'Bowling19', '2013-09-05 06:06:07', '2013-09-05 06:05:43'),
(20, 'Bowling20', '2013-09-05 06:06:26', '2013-09-05 06:06:02'),
(21, 'Bowling21', '2013-09-05 06:06:39', '2013-09-05 06:06:15'),
(22, 'Bowling22', '2013-09-05 06:06:49', '2013-09-05 06:06:25'),
(23, 'The Break1', '2013-09-05 06:07:25', '2013-09-05 06:07:01'),
(24, 'The Break2', '2013-09-05 06:07:38', '2013-09-05 06:07:14'),
(25, 'The Break3', '2013-09-05 06:07:49', '2013-09-05 06:07:25'),
(26, 'The Break4', '2013-09-05 06:08:00', '2013-09-05 06:07:36'),
(27, 'The Break5', '2013-09-05 06:08:19', '2013-09-05 06:07:55'),
(28, 'The Break6', '2013-09-05 06:08:29', '2013-09-05 06:08:05'),
(29, 'The Break7', '2013-09-05 06:08:41', '2013-09-05 06:08:17'),
(30, 'The Break8', '2013-09-05 06:08:58', '2013-09-05 06:08:34'),
(31, 'The Break9', '2013-09-05 06:09:21', '2013-09-05 06:08:57'),
(32, 'The Break10', '2013-09-05 06:09:35', '2013-09-05 06:09:11'),
(33, 'The Break11', '2013-09-05 06:09:47', '2013-09-05 06:09:23'),
(34, 'The Break12', '2013-09-05 06:09:58', '2013-09-05 06:09:34'),
(35, 'SnookerA1', '2013-09-05 06:10:50', '2013-09-05 06:10:26'),
(36, 'SnookerA2', '2013-09-05 06:10:57', '2013-09-05 06:10:33'),
(37, 'SnookerA3', '2013-09-05 06:11:06', '2013-09-05 06:10:42'),
(38, 'SnookerA4', '2013-09-05 06:11:15', '2013-09-05 06:10:51'),
(39, 'SnookerB1', '2013-09-05 06:11:26', '2013-09-05 06:11:02'),
(40, 'SnookerB2', '2013-09-05 06:11:36', '2013-09-05 06:11:12'),
(41, 'SnookerB3', '2013-09-05 06:11:48', '2013-09-05 06:11:24'),
(42, 'SnookerB4', '2013-09-05 06:12:00', '2013-09-05 06:11:36'),
(43, 'SnookerG1', '2013-09-05 06:12:24', '2013-09-05 06:12:00'),
(44, 'SnookerR2', '2013-09-05 06:12:46', '2013-09-05 06:12:22'),
(45, 'SnookerW3', '2013-09-05 06:13:03', '2013-09-05 06:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_bank`
--

CREATE TABLE `cash_in_bank` (
  `id` bigint(20) NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `balance` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cash_in_bank`
--

INSERT INTO `cash_in_bank` (`id`, `bank_id`, `account_no`, `balance`, `created`, `modified`) VALUES
(1, '5', '1', 301400, '0000-00-00 00:00:00', '2013-09-24 06:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_hand`
--

CREATE TABLE `cash_in_hand` (
  `id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cash_in_hand`
--

INSERT INTO `cash_in_hand` (`id`, `amount`, `created`, `modified`) VALUES
(1, -11747, '0000-00-00 00:00:00', '2013-11-26 01:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_temp`
--

CREATE TABLE `cheque_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `bank_id` varchar(100) NOT NULL,
  `account_no` varchar(100) NOT NULL,
  `cheque_book_no` varchar(200) NOT NULL,
  `cheque_no` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(300) NOT NULL,
  `address` text NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `vat_reg` varchar(300) NOT NULL,
  `company_logo` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `address`, `contact_no`, `email_address`, `vat_reg`, `company_logo`, `created`, `modified`) VALUES
(1, 'the break', 'Jamuna Future Park', '01713107679', 'info@thebreak.com', '18131068929', '', '2012-03-08 08:50:36', '2012-03-08 00:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `capital_city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `capital_city`, `created_at`, `updated_at`) VALUES
(202, 'Chile', 'Santiago', '2021-07-01 08:39:24', '2021-07-01 08:39:24'),
(203, 'Lesotho', 'Maseru', '2021-07-02 15:08:46', '2021-07-02 15:09:07'),
(204, 'Spain', 'Madrid', '2021-07-02 15:13:13', '2021-07-02 15:13:29'),
(205, 'United States', 'Washington, D.C', '2021-07-02 17:35:35', '2021-07-02 17:35:35'),
(208, 'Bangladesh', 'Dhaka', '2021-11-28 14:10:35', '2021-11-28 14:10:35'),
(212, 'Maldives', 'Male', '2021-11-29 02:58:25', '2021-11-29 02:59:56'),
(213, 'Indonasia', 'Jakata', '2021-11-29 02:58:34', '2021-11-29 02:58:54'),
(214, 'New Zealand', 'Wellington', '2021-11-29 03:01:00', '2021-11-29 03:01:00'),
(215, 'asdads', 'dasfdfas', '2021-12-01 04:55:26', '2021-12-01 04:55:26'),
(216, 'dffsd', 'dfddf', '2021-12-01 04:58:07', '2021-12-01 04:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `customer_type` varchar(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `email_address` varchar(200) NOT NULL,
  `contact_no1` varchar(200) NOT NULL,
  `contact_no2` varchar(200) NOT NULL,
  `birthday` varchar(200) NOT NULL,
  `billing_street1` varchar(200) NOT NULL,
  `billing_street2` varchar(200) NOT NULL,
  `billing_city` varchar(100) NOT NULL,
  `billing_state` varchar(100) NOT NULL,
  `billing_zip_code` varchar(100) NOT NULL,
  `billing_country` varchar(200) NOT NULL,
  `shipping_street1` varchar(100) NOT NULL,
  `shipping_street2` varchar(200) NOT NULL,
  `shipping_city` varchar(200) NOT NULL,
  `shipping_state` varchar(200) NOT NULL,
  `shipping_zip_code` varchar(200) NOT NULL,
  `shipping_country` varchar(200) NOT NULL,
  `customer_photo` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_id`, `customer_type`, `customer_name`, `email_address`, `contact_no1`, `contact_no2`, `birthday`, `billing_street1`, `billing_street2`, `billing_city`, `billing_state`, `billing_zip_code`, `billing_country`, `shipping_street1`, `shipping_street2`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_country`, `customer_photo`, `status`, `created`, `modified`) VALUES
(5, '', '2', 'Razib Hayat Khan', 'ddd@yyy.com', '01915596543', '333333333', 'dddddddddd', 'ddddddddd', '', 'fffffffffffff', 'fffffffffff', '3444', 'ddddddd', 'vvvvvvvvv', '', 'ddddddddd', 'rrrrrrrrrrr', '233', 'ddddd', '', 'approved', '2012-02-18 11:43:21', '2012-03-08 01:52:37'),
(6, '', '1', 'Rahman Munshi', 'sss@rrr.com', '01675596543', '2222222222222', '222222', 'dddddds ffffff', '', 'eeee', 'ssssssss', '1234', 'dddddddddds', 'sssssssss', '', 'eeeeeee', 'rrrrrrrrr', '2344', 'dffff rrrrrrr', 'ui-bg_flat_15_cd0a0a_40x100.png', 'approved', '2012-02-19 04:29:08', '2012-03-08 01:52:37'),
(7, '', '3', 'Tomi Miya', 'sss@rrr.com', '01515596543', '2222222222222', '222222', 'dddddds ffffff', '', 'eeee', 'ssssssss', '1234', 'dddddddddds', 'sssssssss', '', 'eeeeeee', 'rrrrrrrrr', '2344', 'dffff rrrrrrr', 'icon_settings2.png', 'approved', '2012-02-19 04:35:35', '2012-03-08 01:52:37'),
(8, '', '3', 'Sajon Ahmed', 'sajon@gmail.com', '01920934588', '04499333', '2012-03-08', 'Mirpur12', '', 'Dhaka', 'Mirpur', '1216', 'Bangladesh', 'sssssssss', '', 'sssssssss', 'sssssssssss', 'sssssssss', 'sssssss', 'register_banner_02.jpg', 'approved', '2012-03-08 06:57:31', '2012-03-08 01:52:37'),
(9, '', '3', 'Sajon Ahmed3', 'sajon@gmail.com', '01920934588', '', '', 'Mirpur12', '', 'Dhaka', 'Mirpur', '1216', 'Bangladesh', '', '', '', '', '', '', '', 'approved', '2012-03-08 07:20:45', '2012-03-08 01:12:02'),
(10, '', '3', 'Sajon Ahmed34', 'sajon@gmail.com', '01920934588', '', '', 'Mirpur12', '', 'Dhaka', 'Mirpur', '1216', 'Bangladesh', '', '', '', '', '', '', 'LifeFrame.lnk.png', 'approved', '2012-03-08 07:25:37', '2012-03-08 01:12:02'),
(11, '', '', 'ddddddd', 'sss@yyy.com', '3455666', '34455555', '', 'dddddddd', '', 'sssssssss', 'dddddddd', 'dddddddd', 'eeeeeeeee', '', '', '', '', '', '', 'accounts.png', 'pending', '2012-03-10 11:37:53', '2012-03-10 03:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` bigint(20) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(300) NOT NULL,
  `discount_ratio` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `type_id`, `type_name`, `discount_ratio`, `created`, `modified`) VALUES
(1, '1', 'Gold Member', 20, '2012-01-26 16:22:26', '2012-02-18 03:39:13'),
(2, '2', 'Silver Member', 15, '2012-01-26 16:23:55', '2012-02-18 03:39:13'),
(3, '3', 'Bronze', 5, '2012-01-30 12:16:48', '2012-02-18 03:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `expense_name`
--

CREATE TABLE `expense_name` (
  `id` bigint(20) NOT NULL,
  `expense_type_id` bigint(20) NOT NULL,
  `expense_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expense_name`
--

INSERT INTO `expense_name` (`id`, `expense_type_id`, `expense_name`, `created`, `modified`) VALUES
(1, 3, 'rrrrrrrrrrrrr', '2011-03-15 02:03:32', '2011-03-14 12:02:20'),
(2, 2, 'Text Expense', '2011-03-15 02:03:46', '2011-03-14 12:02:34'),
(3, 4, 'Water Cost', '2011-03-23 23:11:28', '2011-03-23 09:10:40'),
(4, 3, 'Paper Bying', '2012-03-01 10:56:55', '2012-03-01 02:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `id` bigint(20) NOT NULL,
  `expense_type_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`id`, `expense_type_name`, `created`, `modified`) VALUES
(2, 'Internet Bill', '2011-03-15 01:38:48', '2011-03-14 11:37:36'),
(3, 'Hospital Cost', '2011-03-15 01:39:17', '2011-03-14 11:38:05'),
(4, 'Utility', '2011-03-23 23:10:53', '2011-03-23 09:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_track`
--

CREATE TABLE `invoice_track` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kot_main_truck`
--

CREATE TABLE `kot_main_truck` (
  `id` bigint(20) NOT NULL,
  `kot_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kot_setting`
--

CREATE TABLE `kot_setting` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `total_qty` double NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kot_setting`
--

INSERT INTO `kot_setting` (`id`, `product_code`, `total_qty`, `created`) VALUES
(1, 'CODE1', 102, '2013-09-19 11:12:09'),
(4, 'CODE33', 102, '2013-11-24 12:08:01'),
(5, 'CODE76', 203, '2013-12-19 08:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `kot_setting_product`
--

CREATE TABLE `kot_setting_product` (
  `id` bigint(20) NOT NULL,
  `kot_sid` bigint(20) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `en_sl` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kot_setting_product`
--

INSERT INTO `kot_setting_product` (`id`, `kot_sid`, `product_code`, `quantity`, `en_sl`, `created`) VALUES
(1, 1, 'CODE211', 80, 1, '2013-09-19 11:12:10'),
(2, 1, 'CODE212', 20, 2, '2013-09-19 11:12:10'),
(3, 1, 'CODE209', 1, 3, '2013-09-19 11:12:10'),
(4, 1, 'CODE210', 1, 4, '2013-09-19 11:12:10'),
(12, 4, 'CODE68', 100, 1, '2013-11-24 12:08:01'),
(13, 4, 'CODE210', 1, 2, '2013-11-24 12:08:01'),
(14, 4, 'CODE209', 1, 3, '2013-11-24 12:08:01'),
(28, 5, 'CODE211', 160, 1, '2013-12-19 08:52:51'),
(29, 5, 'CODE212', 40, 2, '2013-12-19 08:52:51'),
(30, 5, 'CODE209', 1, 3, '2013-12-19 08:52:51'),
(31, 5, 'CODE210', 2, 4, '2013-12-19 08:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `kot_setting_temp`
--

CREATE TABLE `kot_setting_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `quantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `office_expense`
--

CREATE TABLE `office_expense` (
  `id` bigint(20) NOT NULL,
  `expense_type_id` bigint(20) NOT NULL,
  `expense_name_id` bigint(20) NOT NULL,
  `expense_date` varchar(200) NOT NULL,
  `voucher_no` varchar(100) NOT NULL,
  `expense_description` text NOT NULL,
  `expense_by` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `bank_id` bigint(20) DEFAULT NULL,
  `account_no` bigint(20) DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `cheque_date` varchar(200) DEFAULT NULL,
  `cheque_type` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `office_expense`
--

INSERT INTO `office_expense` (`id`, `expense_type_id`, `expense_name_id`, `expense_date`, `voucher_no`, `expense_description`, `expense_by`, `payment_mode`, `bank_id`, `account_no`, `cheque_no`, `cheque_date`, `cheque_type`, `amount`, `created`, `modified`) VALUES
(1, 3, 4, '2012-03-04', 'vr2034', 'tesss sss', 'sanchoy', 'cash', 0, NULL, NULL, '', '', 300, '2012-03-04 05:19:18', '2012-03-03 21:18:30'),
(2, 2, 2, '2012-03-04', 'vr2035', 'test', 'demo3', 'bank', 1, 1, '6', '2012-03-04', 'cash', 500, '2012-03-04 05:40:09', '2012-03-03 21:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `package_setting`
--

CREATE TABLE `package_setting` (
  `id` bigint(20) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `total_qty` double NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `package_setting`
--

INSERT INTO `package_setting` (`id`, `product_code`, `total_qty`, `created`) VALUES
(1, 'CODE25', 5, '2013-09-02 09:13:49'),
(2, 'CODE26', 3, '2013-09-02 12:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `package_setting_product`
--

CREATE TABLE `package_setting_product` (
  `id` bigint(20) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `quantity` double NOT NULL,
  `en_sl` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `package_setting_product`
--

INSERT INTO `package_setting_product` (`id`, `package_id`, `product_code`, `quantity`, `en_sl`, `created`) VALUES
(1, 1, 'CODE2', 2, 1, '2013-09-02 09:13:49'),
(2, 1, 'CODE4', 3, 2, '2013-09-02 09:13:49'),
(3, 2, 'CODE2', 3, 1, '2013-09-02 12:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `package_setting_temp`
--

CREATE TABLE `package_setting_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `quantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `product_category_id` varchar(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `unit_type_id` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `purchase_cost` double DEFAULT NULL,
  `other_cost` double DEFAULT NULL,
  `sell_price` double NOT NULL,
  `product_photo` varchar(300) NOT NULL,
  `product_type` int(11) NOT NULL DEFAULT 1 COMMENT '1= main item, 2=sub item, 3 = package',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `product_category_id`, `product_code`, `product_name`, `unit_type_id`, `description`, `purchase_cost`, `other_cost`, `sell_price`, `product_photo`, `product_type`, `created`, `modified`) VALUES
(27, '1', '2', 'CODE1', 'Pichchi Burger', 10, '', NULL, NULL, 240, '', 1, '2013-09-05 03:24:14', '2013-09-05 03:23:50'),
(28, '28', '13', 'CODE28', 'Pichchi Burger/Onion Rings/ Meal Coke', 13, '', NULL, NULL, 320, '', 3, '2013-09-05 03:28:54', '2013-09-05 03:28:30'),
(29, '29', '13', 'CODE29', 'Pichchi Burger/Onion Rings/ Meal Pepsi', 13, '', NULL, NULL, 320, '', 3, '2013-09-05 03:30:07', '2013-09-05 03:29:43'),
(30, '30', '13', 'CODE30', 'Nawab Burger/Onion Rings/ Meal Water', 13, '', NULL, NULL, 384, '', 3, '2013-09-05 03:30:55', '2013-09-05 03:30:31'),
(31, '31', '13', 'CODE31', 'Nawab Burger/Onion Rings/ Meal Coke', 13, '', NULL, NULL, 384, '', 3, '2013-09-05 04:43:03', '2013-09-05 04:42:39'),
(32, '32', '13', 'CODE32', 'Nawab Burger/Onion Rings/ Meal pepsi', 13, '', NULL, NULL, 384, '', 3, '2013-09-05 04:43:49', '2013-09-05 04:43:25'),
(33, '33', '2', 'CODE33', 'Chicken Chop sandwich', 10, '', NULL, NULL, 248, '', 1, '2013-09-05 04:44:47', '2013-09-05 04:44:23'),
(34, '34', '13', 'CODE34', 'Chicken Chop sandwich/Onion Rings/ Meal Coke', 13, '', NULL, NULL, 320, '', 3, '2013-09-05 04:46:05', '2013-09-05 04:45:41'),
(35, '35', '13', 'CODE35', 'Chicken Chop sandwich/Onion Rings/ Meal Pepsi', 13, '', NULL, NULL, 320, '', 3, '2013-09-05 04:46:47', '2013-09-05 04:46:23'),
(37, '37', '12', 'CODE37', 'French fries Choto', 10, '', NULL, NULL, 64, '', 1, '2013-09-05 04:48:09', '2013-09-05 04:47:45'),
(38, '38', '12', 'CODE38', 'French fries Boro', 10, '', NULL, NULL, 92, '', 1, '2013-09-05 04:48:49', '2013-09-05 04:48:25'),
(39, '39', '12', 'CODE39', 'Ponir fries', 10, '', NULL, NULL, 120, '', 1, '2013-09-05 04:49:23', '2013-09-05 04:48:59'),
(40, '40', '12', 'CODE40', 'Ponir Chili fries', 10, '', NULL, NULL, 208, '', 1, '2013-09-05 04:50:00', '2013-09-05 04:49:36'),
(41, '41', '4', 'CODE41', 'Feni-Furter', 10, '', NULL, NULL, 136, '', 1, '2013-09-05 04:50:52', '2013-09-05 04:50:28'),
(42, '42', '13', 'CODE42', 'Feni-Furter/Onion Rings/ Meal Coke', 13, '', NULL, NULL, 200, '', 3, '2013-09-05 04:52:02', '2013-09-05 04:51:38'),
(43, '43', '13', 'CODE43', 'Feni-Furter/Onion Rings/ Meal Pepsi', 13, '', NULL, NULL, 200, '', 1, '2013-09-05 04:52:41', '2013-09-05 04:52:17'),
(44, '44', '13', 'CODE44', 'Feni-Furter/Onion Rings/ Meal Water', 13, '', NULL, NULL, 200, '', 1, '2013-09-05 04:55:57', '2013-09-05 04:55:33'),
(45, '45', '4', 'CODE45', 'Chittagong Chili-Furter', 10, '', NULL, NULL, 216, '', 1, '2013-09-05 04:56:52', '2013-09-05 04:56:28'),
(46, '46', '13', 'CODE46', 'Chittagong Chili-Furter /Onion Rings/Coke', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 04:57:49', '2013-09-05 04:57:25'),
(47, '47', '13', 'CODE47', 'Chittagong Chili-Furter/Onion Rings/ Pepsi', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 04:58:32', '2013-09-05 04:58:08'),
(48, '48', '13', 'CODE48', 'Chittagong Chili-Furter/Onion Rings/ Water', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 04:59:26', '2013-09-05 04:59:02'),
(49, '49', '4', 'CODE49', 'Aloo Chop-Furter', 10, '', NULL, NULL, 216, '', 1, '2013-09-05 05:01:14', '2013-09-05 05:00:50'),
(50, '50', '13', 'CODE50', 'Aloo Chop-Furter/Onion Rings/ Meal Coke', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 05:04:02', '2013-09-05 05:03:38'),
(51, '51', '13', 'CODE51', 'Aloo Chop-Furter/Onion Rings/ Meal Pepsi', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 05:05:40', '2013-09-05 05:05:16'),
(52, '52', '13', 'CODE52', 'Aloo Chop-Furter/Onion Rings/ Meal Water', 13, '', NULL, NULL, 280, '', 3, '2013-09-05 05:18:35', '2013-09-05 05:18:11'),
(53, '53', '14', 'CODE53', 'Milkshake Chocolate', 10, '', NULL, NULL, 140, '', 1, '2013-09-05 05:19:45', '2013-09-05 05:19:21'),
(54, '54', '14', 'CODE54', 'Milkshake Vanilla', 10, '', NULL, NULL, 140, '', 1, '2013-09-05 05:20:18', '2013-09-05 05:19:54'),
(55, '55', '14', 'CODE55', 'Milkshake Strawberry', 10, '', NULL, NULL, 140, '', 1, '2013-09-05 05:21:04', '2013-09-05 05:20:40'),
(56, '56', '14', 'CODE56', 'Oreo Milkshake Chocolate', 10, '', NULL, NULL, 160, '', 1, '2013-09-05 05:22:03', '2013-09-05 05:21:39'),
(57, '57', '14', 'CODE57', 'Oreo Milkshake Vanilla', 10, '', NULL, NULL, 160, '', 1, '2013-09-05 05:22:52', '2013-09-05 05:22:28'),
(58, '58', '14', 'CODE58', 'Oreo Milkshake Strawberry', 10, '', NULL, NULL, 160, '', 1, '2013-09-05 05:23:20', '2013-09-05 05:22:56'),
(59, '59', '14', 'CODE59', 'Soft Drinks 250ml Coke', 10, '', NULL, NULL, 28, '', 1, '2013-09-05 05:25:10', '2013-09-05 05:24:46'),
(60, '60', '14', 'CODE60', 'Soft Drinks 250ml Pepsi', 10, '', NULL, NULL, 28, '', 1, '2013-09-05 05:25:40', '2013-09-05 05:25:16'),
(61, '61', '14', 'CODE61', 'Soft Drinks 500ml Coke', 10, '', NULL, NULL, 44, '', 1, '2013-09-05 05:26:52', '2013-09-05 05:26:28'),
(62, '62', '14', 'CODE62', 'Soft Drinks 500ml Pepsi', 10, '', NULL, NULL, 44, '', 1, '2013-09-05 05:27:58', '2013-09-05 05:27:34'),
(63, '63', '14', 'CODE63', 'Can Coke', 10, '', NULL, NULL, 44, '', 1, '2013-09-05 05:28:30', '2013-09-05 05:28:06'),
(64, '64', '14', 'CODE64', 'Can Pepsi', 10, '', NULL, NULL, 44, '', 1, '2013-09-05 05:28:52', '2013-09-05 05:28:28'),
(65, '65', '14', 'CODE65', 'Lebuade', 10, '', NULL, NULL, 80, '', 1, '2013-09-05 05:29:29', '2013-09-05 05:29:05'),
(66, '66', '14', 'CODE66', 'Mineral Water', 10, '', NULL, NULL, 20, '', 1, '2013-09-05 05:30:20', '2013-09-05 05:29:56'),
(67, '67', '10', 'CODE67', 'Beef Minced 25% Fat-Bengal Meat', 14, '', NULL, NULL, 0, '', 2, '2013-09-05 05:59:25', '2013-09-05 05:59:01'),
(68, '68', '10', 'CODE68', 'Chicken Breast-White Hen', 15, '', NULL, NULL, 0, '', 2, '2013-09-05 06:11:41', '2013-09-05 06:11:17'),
(69, '69', '10', 'CODE69', 'beef hot dogs -- white hen', 14, '', NULL, NULL, 0, '', 2, '2013-09-05 06:12:30', '2013-09-05 06:12:06'),
(71, '71', '10', 'CODE71', 'Hot Dog Buns', 10, '', NULL, NULL, 0, '', 2, '2013-09-05 06:13:45', '2013-09-05 06:13:21'),
(72, '72', '10', 'CODE72', 'French Fries - McCain Shoestring Frozen - 12.5 kg', 13, '', NULL, NULL, 0, '', 2, '2013-09-05 06:15:18', '2013-09-05 06:14:54'),
(73, '73', '15', 'CODE73', 'Brownie-Dhaka Delights', 10, '', NULL, NULL, 120, '', 1, '2013-09-06 00:10:51', '2013-09-06 00:10:27'),
(74, '74', '15', 'CODE74', 'Cheese Cake-Dhaka Delight', 10, '', NULL, NULL, 180, '', 1, '2013-09-06 00:15:46', '2013-09-06 00:15:22'),
(75, '75', '15', 'CODE75', 'Apple Pie', 10, '', NULL, NULL, 120, '', 1, '2013-09-06 00:17:56', '2013-09-06 00:17:32'),
(76, '76', '2', 'CODE76', 'Nawab Burger', 10, '', NULL, 0, 312, '', 1, '2013-09-06 03:18:12', '2013-09-06 03:17:48'),
(77, '77', '13', 'CODE77', 'Pichchi Burger/Onion Rings/Meal Water', 13, '', NULL, NULL, 320, '', 3, '2013-09-06 04:07:19', '2013-09-06 04:06:55'),
(78, '78', '13', 'CODE78', 'Chicken Cop sandwich/Onion Rings/ meal Water', 13, '', NULL, NULL, 320, '', 3, '2013-09-06 04:39:47', '2013-09-06 04:39:23'),
(79, '79', '10', 'CODE79', 'Lettuce', 10, '', NULL, NULL, 0, '', 2, '2013-09-09 06:19:41', '2013-09-09 00:19:17'),
(80, '80', '10', 'CODE80', 'Onion', 14, '', NULL, NULL, 0, '', 2, '2013-09-09 06:27:41', '2013-09-09 00:27:17'),
(81, '81', '10', 'CODE81', 'Slice Cheese', 14, '', NULL, NULL, 0, '', 2, '2013-09-09 06:31:22', '2013-09-09 00:30:58'),
(82, '82', '10', 'CODE82', 'Meoniz', 10, '', NULL, NULL, 0, '', 2, '2013-09-09 06:32:37', '2013-09-09 00:32:13'),
(83, '83', '10', 'CODE83', 'Bed Cream', 10, '', NULL, NULL, 0, '', 2, '2013-09-09 06:34:38', '2013-09-09 00:34:14'),
(84, '84', '10', 'CODE84', 'Salt', 14, '', NULL, NULL, 0, '', 2, '2013-09-09 06:36:09', '2013-09-09 00:35:45'),
(85, '85', '10', 'CODE85', 'Beef Cube', 10, '', NULL, NULL, 0, '', 2, '2013-09-09 06:37:17', '2013-09-09 00:36:53'),
(86, '86', '10', 'CODE86', 'Cicken Cube', 14, '', NULL, NULL, 0, '', 1, '2013-09-09 06:38:19', '2013-09-09 00:37:55'),
(87, '87', '10', 'CODE87', 'white pepar', 14, '', NULL, 0, 0, '', 2, '2013-09-09 06:48:10', '2013-09-09 00:47:46'),
(88, '88', '10', 'CODE88', 'blake', 14, '', NULL, 0, 0, '', 2, '2013-09-09 06:48:45', '2013-09-09 00:48:21'),
(89, '89', '10', 'CODE89', 'tomato', 14, '', NULL, 0, 0, '', 2, '2013-09-09 06:50:45', '2013-09-09 00:50:21'),
(90, '90', '10', 'CODE90', 'chili', 15, '', NULL, 0, 0, '', 1, '2013-09-09 06:53:08', '2013-09-09 00:52:44'),
(91, '91', '10', 'CODE91', 'shokna chili', 15, '', NULL, 0, 0, '', 1, '2013-09-09 06:53:59', '2013-09-09 00:53:35'),
(92, '92', '10', 'CODE92', 'big onion', 14, '', NULL, 0, 0, '', 2, '2013-09-09 06:55:44', '2013-09-09 00:55:20'),
(93, '93', '10', 'CODE93', 'blaf batar', 9, '', NULL, 0, 0, '', 2, '2013-09-09 06:57:41', '2013-09-09 00:57:17'),
(94, '94', '10', 'CODE94', 'Gas fighter', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:07:51', '2013-09-09 01:07:27'),
(95, '95', '10', 'CODE95', 'Kichen Tisu', 9, '', NULL, 0, 0, '', 2, '2013-09-09 07:10:11', '2013-09-09 01:09:47'),
(96, '96', '10', 'CODE96', 'Air Fresnar', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:13:21', '2013-09-09 01:12:57'),
(97, '97', '10', 'CODE97', 'Mozarala Csee', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:16:00', '2013-09-09 01:15:36'),
(98, '98', '10', 'CODE98', 'Commerosial Dusibin', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:18:37', '2013-09-09 01:18:13'),
(99, '99', '10', 'CODE99', 'Duster ', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:19:19', '2013-09-09 01:18:55'),
(100, '100', '10', 'CODE100', 'Dinner spoon', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:20:31', '2013-09-09 01:20:07'),
(101, '101', '10', 'CODE101', 'Tea Spoon', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:21:20', '2013-09-09 01:20:56'),
(102, '102', '10', 'CODE102', 'funcl Big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:24:54', '2013-09-09 01:24:30'),
(103, '103', '10', 'CODE103', 'Sharpner', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:27:59', '2013-09-09 01:27:35'),
(104, '104', '10', 'CODE104', 'Stecl Box9ml', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:29:48', '2013-09-09 01:29:24'),
(105, '105', '10', 'CODE105', 'Mop Trolly', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:30:49', '2013-09-09 01:30:25'),
(106, '106', '10', 'CODE106', 'Long Broom', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:31:58', '2013-09-09 01:31:34'),
(107, '107', '10', 'CODE107', 'Kitchen Sciseons', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:35:11', '2013-09-09 01:34:47'),
(108, '108', '10', 'CODE108', 'Showcl Cap', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:36:55', '2013-09-09 01:36:31'),
(109, '109', '10', 'CODE109', 'Bread Knibe Long', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:38:22', '2013-09-09 01:37:58'),
(110, '110', '10', 'CODE110', 'Stoplcer Phin', 9, '', NULL, 0, 0, '', 2, '2013-09-09 07:39:19', '2013-09-09 01:38:55'),
(111, '111', '10', 'CODE111', 'Stoplcer  Machin', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:40:20', '2013-09-09 01:39:56'),
(112, '112', '10', 'CODE112', 'Punch Machin', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:42:01', '2013-09-09 01:41:37'),
(113, '113', '10', 'CODE113', 'Spnay Thue', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:43:19', '2013-09-09 01:42:55'),
(114, '114', '10', 'CODE114', 'Wooden Spetula', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:44:21', '2013-09-09 01:43:57'),
(115, '115', '10', 'CODE115', 'Steel Rosting Fork', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:45:42', '2013-09-09 01:45:18'),
(116, '116', '10', 'CODE116', 'Seraper', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:46:28', '2013-09-09 01:46:04'),
(117, '117', '10', 'CODE117', 'Carving Kmie', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:50:32', '2013-09-09 01:50:08'),
(118, '118', '10', 'CODE118', 'Hand Glovs oncfu', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:54:14', '2013-09-09 01:53:50'),
(119, '119', '10', 'CODE119', 'Hand Glovs Blac', 10, '', NULL, 0, 0, '', 2, '2013-09-09 07:58:56', '2013-09-09 01:58:32'),
(120, '120', '10', 'CODE120', 'Binail Gloas', 9, '', NULL, 0, 0, '', 2, '2013-09-09 08:02:40', '2013-09-09 02:02:16'),
(121, '121', '10', 'CODE121', 'Mclamine Plate Big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:06:55', '2013-09-09 02:06:31'),
(122, '122', '10', 'CODE122', 'Thailand Tray Big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:07:57', '2013-09-09 02:07:33'),
(123, '123', '10', 'CODE123', 'Steel Mixcr Bowl big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:09:47', '2013-09-09 02:09:23'),
(124, '124', '10', 'CODE124', 'Steel Mixcr Bowl m', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:19:16', '2013-09-09 02:18:52'),
(125, '125', '10', 'CODE125', 'Korean Choping', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:21:26', '2013-09-09 02:21:02'),
(126, '126', '10', 'CODE126', 'Suger', 14, '', NULL, NULL, 0, '', 2, '2013-09-09 08:33:05', '2013-09-09 02:32:41'),
(127, '127', '10', 'CODE127', 'Rice spoon ', 10, '', NULL, 0, 0, '', 2, '2013-09-09 08:43:00', '2013-09-09 02:42:36'),
(128, '128', '14', 'CODE128', '7 up 200ml', 10, '', NULL, NULL, 28, '', 1, '2013-09-09 08:52:45', '2013-09-09 02:52:21'),
(129, '129', '14', 'CODE129', 'Mountain Due200ml', 10, '', NULL, NULL, 28, '', 2, '2013-09-09 08:55:41', '2013-09-09 02:55:17'),
(130, '130', '14', 'CODE130', 'Mountain Due500ml', 10, '', NULL, NULL, 44, '', 1, '2013-09-09 08:57:48', '2013-09-09 02:57:24'),
(131, '131', '14', 'CODE131', '7 up 500ml', 10, '', NULL, NULL, 44, '', 1, '2013-09-09 09:01:07', '2013-09-09 03:00:43'),
(132, '132', '10', 'CODE132', 'Fork', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:10:43', '2013-09-09 03:10:19'),
(133, '133', '10', 'CODE133', 'Glass', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:11:30', '2013-09-09 03:11:06'),
(134, '134', '10', 'CODE134', 'Plat', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:12:16', '2013-09-09 03:11:52'),
(135, '135', '10', 'CODE135', 'Baking tray alom', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:13:17', '2013-09-09 03:12:53'),
(136, '136', '10', 'CODE136', 'Baking tray ', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:14:02', '2013-09-09 03:13:38'),
(137, '137', '10', 'CODE137', 'Zebra trya ituiland', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:15:15', '2013-09-09 03:14:51'),
(138, '138', '10', 'CODE138', 'tray plastic', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:15:59', '2013-09-09 03:15:35'),
(139, '139', '10', 'CODE139', 'Floor wyper hauy', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:16:55', '2013-09-09 03:16:31'),
(140, '140', '10', 'CODE140', 'teep roll', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:18:06', '2013-09-09 03:17:42'),
(141, '141', '10', 'CODE141', 'oven glovs', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:19:11', '2013-09-09 03:18:47'),
(142, '142', '10', 'CODE142', 'batar', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:20:21', '2013-09-09 03:19:57'),
(143, '143', '10', 'CODE143', 'latush', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:21:14', '2013-09-09 03:20:50'),
(144, '144', '10', 'CODE144', 'Fouim', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:22:14', '2013-09-09 03:21:50'),
(145, '145', '10', 'CODE145', 'Bot big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:23:21', '2013-09-09 03:22:57'),
(146, '146', '10', 'CODE146', 'Bot  M', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:26:07', '2013-09-09 03:25:43'),
(147, '147', '10', 'CODE147', 'Bot  S', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:26:47', '2013-09-09 03:26:23'),
(148, '148', '10', 'CODE148', 'Mog', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:27:29', '2013-09-09 03:27:05'),
(149, '149', '10', 'CODE149', 'stone', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:28:55', '2013-09-09 03:28:31'),
(150, '150', '10', 'CODE150', 'Gulss mulumin', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:30:11', '2013-09-09 03:29:47'),
(151, '151', '10', 'CODE151', 'one time falutp', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:31:44', '2013-09-09 03:31:20'),
(152, '152', '10', 'CODE152', 'solt fot', 10, '', NULL, 0, 0, '', 1, '2013-09-09 09:32:34', '2013-09-09 03:32:10'),
(153, '153', '10', 'CODE153', 'Comershial Roping', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:35:13', '2013-09-09 03:34:49'),
(154, '154', '10', 'CODE154', 'Foil Rool Big', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:36:39', '2013-09-09 03:36:15'),
(155, '155', '10', 'CODE155', 'Container 4ps', 9, '', NULL, 0, 0, '', 2, '2013-09-09 09:38:38', '2013-09-09 03:38:14'),
(156, '156', '10', 'CODE156', 'Dish Wash 5List', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:40:14', '2013-09-09 03:39:50'),
(157, '157', '10', 'CODE157', 'Hand Wash 5List', 9, '', NULL, 0, 0, '', 2, '2013-09-09 09:42:28', '2013-09-09 03:42:04'),
(158, '158', '10', 'CODE158', 'Floor Cleanes 5List', 9, '', NULL, 0, 0, '', 2, '2013-09-09 09:43:55', '2013-09-09 03:43:31'),
(159, '159', '10', 'CODE159', 'Jali Bowl ', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:44:53', '2013-09-09 03:44:29'),
(160, '160', '10', 'CODE160', 'Gamla', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:45:41', '2013-09-09 03:45:17'),
(161, '161', '10', 'CODE161', 'Bictec', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:57:52', '2013-09-09 03:57:28'),
(162, '162', '10', 'CODE162', 'Paddle bin', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:58:43', '2013-09-09 03:58:19'),
(163, '163', '10', 'CODE163', 'Costapc', 10, '', NULL, 0, 0, '', 2, '2013-09-09 09:59:57', '2013-09-09 03:59:33'),
(164, '164', '10', 'CODE164', 'Ganbeg(Blac)', 10, '', NULL, 0, 0, '', 2, '2013-09-09 10:01:37', '2013-09-09 04:01:13'),
(165, '165', '10', 'CODE165', 'Ganbeg(Big)', 10, '', NULL, 0, 0, '', 2, '2013-09-09 10:02:34', '2013-09-09 04:02:10'),
(166, '166', '10', 'CODE166', 'Chilyg Chise', 9, '', NULL, 0, 0, '', 2, '2013-09-09 13:00:29', '2013-09-09 07:00:05'),
(167, '167', '10', 'CODE167', 'Meotnej', 10, '', NULL, 0, 0, '', 2, '2013-09-09 13:05:57', '2013-09-09 07:05:33'),
(168, '168', '10', 'CODE168', 'Credcras', 10, '', NULL, 0, 0, '', 2, '2013-09-09 13:08:07', '2013-09-09 07:07:43'),
(169, '169', '10', 'CODE169', 'Bif Qu', 9, '', NULL, 0, 0, '', 2, '2013-09-09 13:13:33', '2013-09-09 07:13:09'),
(170, '170', '10', 'CODE170', 'Cicken Qut', 9, '', NULL, 0, 0, '', 2, '2013-09-09 13:16:53', '2013-09-09 07:16:29'),
(171, '171', '12', 'CODE171', 'Onion Rings Choto', 10, '', NULL, NULL, 64, '', 1, '2013-09-09 13:19:51', '2013-09-09 07:19:27'),
(172, '172', '10', 'CODE172', 'L.P Sos', 10, '', NULL, 0, 0, '', 2, '2013-09-09 13:24:33', '2013-09-09 07:24:09'),
(173, '173', '10', 'CODE173', 'Cheese', 14, '', NULL, 0, 0, '', 2, '2013-09-09 13:28:37', '2013-09-09 07:28:13'),
(178, '175', '14', 'CODE175', 'Fanta Can 250 ml', 10, '', NULL, NULL, 44, '', 1, '2013-09-10 12:22:47', '2013-09-10 06:22:23'),
(179, '179', '14', 'CODE179', 'Sprite Can 250 ml', 10, '', NULL, NULL, 44, '', 1, '2013-09-10 12:29:38', '2013-09-10 06:29:14'),
(180, '180', '14', 'CODE180', 'Mirinda  500 ml', 10, '', NULL, NULL, 44, '', 1, '2013-09-10 12:33:20', '2013-09-10 06:32:56'),
(181, '181', '14', 'CODE181', '7 up 500ml(diet)', 10, '', NULL, NULL, 44, '', 1, '2013-09-11 11:17:28', '2013-09-11 05:17:04'),
(182, '182', '14', 'CODE182', 'pepsi 500ml(diet)', 10, '', NULL, NULL, 44, '', 1, '2013-09-11 11:23:09', '2013-09-11 05:22:45'),
(183, '183', '14', 'CODE183', '7 up 200ml(dew)', 10, '', NULL, NULL, 28, '', 1, '2013-09-11 11:31:51', '2013-09-11 05:31:27'),
(184, '184', '14', 'CODE184', 'CocaCola(Dew)200ml', 10, '', NULL, NULL, 28, '', 1, '2013-09-11 11:38:17', '2013-09-11 05:37:53'),
(185, '185', '14', 'CODE185', 'sprite(Dew)200ml', 10, '', NULL, NULL, 28, '', 1, '2013-09-11 11:39:25', '2013-09-11 05:39:01'),
(186, '186', '14', 'CODE186', 'Coke(Dew)', 10, '', NULL, NULL, 28, '', 1, '2013-09-11 11:40:15', '2013-09-11 05:39:51'),
(187, '187', '14', 'CODE187', ' pepsi 200ml', 10, '', NULL, NULL, 28, '', 1, '2013-09-13 05:52:46', '2013-09-12 23:52:22'),
(188, '188', '16', 'CODE188', 'Spicy BBQ Chicken Wings', 16, '', NULL, NULL, 180, '', 1, '2013-09-13 11:43:35', '2013-09-13 05:43:11'),
(189, '189', '13', 'CODE189', 'Chicken Cop sandwich/French fries/ meal Water', 13, '', NULL, 0, 320, '', 3, '2013-09-14 10:21:54', '2013-09-14 04:21:30'),
(190, '190', '13', 'CODE190', 'Chicken Cop sandwich/French fries/ meal coke', 12, '', NULL, 0, 320, '', 3, '2013-09-14 10:24:57', '2013-09-14 04:24:33'),
(191, '191', '13', 'CODE191', 'Chicken Cop sandwich/French fries/ meal Pepsi', 13, '', NULL, 0, 320, '', 3, '2013-09-14 10:28:32', '2013-09-14 04:28:08'),
(192, '192', '13', 'CODE192', 'Pichchi Burger/French fries/Meal Water', 13, '', NULL, 0, 320, '', 3, '2013-09-14 10:41:59', '2013-09-14 04:41:35'),
(193, '193', '13', 'CODE193', 'Pichchi Burger/French fries/Meal coke', 13, '', NULL, 0, 320, '', 3, '2013-09-14 10:42:41', '2013-09-14 04:42:17'),
(194, '194', '13', 'CODE194', 'Pichchi Burger/French fries/Meal pepsi', 13, '', NULL, 0, 320, '', 1, '2013-09-14 10:43:13', '2013-09-14 04:42:49'),
(195, '195', '13', 'CODE195', 'Chittagong Chili-Furter/French fries/ Water', 13, '', NULL, 0, 280, '', 3, '2013-09-14 10:46:24', '2013-09-14 04:46:00'),
(196, '196', '13', 'CODE196', 'Chittagong Chili-Furter/French fries/ coke', 12, '', NULL, 0, 280, '', 3, '2013-09-14 10:46:59', '2013-09-14 04:46:35'),
(197, '197', '13', 'CODE197', 'Chittagong Chili-Furter/French fries/ pepsi', 13, '', NULL, 0, 280, '', 3, '2013-09-14 10:47:34', '2013-09-14 04:47:10'),
(198, '198', '13', 'CODE198', 'Aloo Chop-Furter/French fries/ Meal Water', 13, '', NULL, 0, 280, '', 3, '2013-09-14 10:59:16', '2013-09-14 04:58:52'),
(199, '199', '13', 'CODE199', 'Aloo Chop-Furter/French fries/ Meal coke', 13, '', NULL, 0, 280, '', 3, '2013-09-14 10:59:54', '2013-09-14 04:59:30'),
(200, '200', '13', 'CODE200', 'Aloo Chop-Furter/French fries/ Meal pepsi', 13, '', NULL, 0, 280, '', 1, '2013-09-14 11:00:28', '2013-09-14 05:00:04'),
(201, '201', '13', 'CODE201', 'Nawab Burger/French fries/ Meal pepsi', 13, '', NULL, 0, 384, '', 3, '2013-09-14 11:12:06', '2013-09-14 05:11:42'),
(202, '202', '13', 'CODE202', 'Nawab Burger/French fries/ Meal water', 13, '', NULL, 0, 384, '', 3, '2013-09-14 11:12:39', '2013-09-14 05:12:15'),
(203, '203', '13', 'CODE203', 'Nawab Burger/French fries/ Meal coke', 13, '', NULL, 0, 384, '', 1, '2013-09-14 11:13:17', '2013-09-14 05:12:53'),
(204, '204', '13', 'CODE204', 'Feni-Furter/French fries/ Meal Water', 13, '', NULL, 0, 200, '', 3, '2013-09-14 11:16:43', '2013-09-14 05:16:19'),
(205, '205', '13', 'CODE205', 'Feni-Furter/French fries/ Meal coke', 13, '', NULL, 0, 200, '', 1, '2013-09-14 11:17:14', '2013-09-14 05:16:50'),
(206, '206', '13', 'CODE206', 'Feni-Furter/French fries/ Meal pepsi', 13, '', NULL, 0, 200, '', 1, '2013-09-14 11:17:55', '2013-09-14 05:17:31'),
(207, '207', '12', 'CODE207', 'onion rings boro', 10, '', NULL, 0, 92, '', 1, '2013-09-14 11:23:23', '2013-09-14 05:22:59'),
(208, '208', '14', 'CODE208', 'Oreo Milkshake', 10, '', NULL, NULL, 160, '', 1, '2013-09-14 13:39:00', '2013-09-14 07:38:36'),
(209, '209', '10', 'CODE209', 'Hamburger Bun - Hot Breads', 10, '', NULL, 0, 0, '', 2, '2013-09-19 11:03:33', '2013-09-19 05:03:09'),
(210, '210', '10', 'CODE210', 'Cheese Sandwich Slice - Melbourne', 10, '', NULL, 0, 0, '', 2, '2013-09-19 11:06:36', '2013-09-19 05:06:12'),
(211, '211', '10', 'CODE211', 'Beef Boneless - White Hen', 15, '', NULL, 0, 0, '', 2, '2013-09-19 11:08:44', '2013-09-19 05:08:20'),
(212, '212', '10', 'CODE212', 'Beef Fat - White Hen', 15, '', NULL, 0, 0, '', 2, '2013-09-19 11:09:13', '2013-09-19 05:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `product_category_id` varchar(50) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_category_id`, `category_name`, `created`, `modified`) VALUES
(2, '2', 'Burgers/Sandwiches', '0000-00-00 00:00:00', '2011-07-23 15:23:42'),
(4, '4', 'Frankfurters/hot dogs', '0000-00-00 00:00:00', '2011-07-23 15:23:42'),
(10, '', 'Sub Item Category', '2012-11-28 21:37:41', '2012-11-28 09:36:53'),
(12, '', 'Fries', '2013-01-26 09:00:07', '2013-01-26 02:59:43'),
(13, '', 'Package', '2013-09-02 08:17:37', '2013-09-01 20:16:49'),
(14, '', 'Drinks', '2013-09-05 03:15:39', '2013-09-05 03:15:15'),
(15, '', 'Dessert', '2013-09-06 00:08:41', '2013-09-06 00:08:17'),
(16, '', 'Chicken Wings', '2013-09-13 11:42:19', '2013-09-13 05:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Rice', '2012-04-25 08:02:52', ''),
(2, 'Minicate', '2012-04-25 08:18:42', ''),
(3, 'ewrrdfvfdf', '2021-12-01 04:14:04', '2021-12-01 10:14:04'),
(4, 'atttt gfdgd', '2021-12-01 04:14:39', '2021-12-01 10:14:39'),
(5, 'asasdads', '2021-12-01 04:42:31', '2021-12-01 10:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `receivd_delivery_temp`
--

CREATE TABLE `receivd_delivery_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1= main item, 2 = sub item',
  `product_category` varchar(100) NOT NULL,
  `quantity` double NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `receivd_delivery_temp`
--

INSERT INTO `receivd_delivery_temp` (`id`, `username`, `product_code`, `product_type`, `product_category`, `quantity`, `p_price`, `created`) VALUES
(2, 'admin', 'CODE68', '2', '10', 10, '45', '0000-00-00 00:00:00'),
(5, 'admin', 'CODE71', '2', '10', 70, '11.4', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `received_delivery`
--

CREATE TABLE `received_delivery` (
  `id` int(11) NOT NULL,
  `chalan_id` varchar(100) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `note` varchar(50) NOT NULL,
  `price_grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `received_delivery`
--

INSERT INTO `received_delivery` (`id`, `chalan_id`, `delivery_date`, `note`, `price_grand_total`, `paid_amount`, `status`, `supplier_id`, `created`, `modified`) VALUES
(2, '79', '2013-09-02', '', 32090, 0, 'due', '7', '2013-09-05 07:11:52', '2013-09-05 07:11:28'),
(3, '11', '2013-09-09', '', 50, 0, 'due', '9', '2013-09-09 06:25:33', '2013-09-09 00:25:09'),
(4, '03', '2013-09-09', '', 55, 0, 'due', '8', '2013-09-09 08:33:50', '2013-09-09 02:33:26'),
(5, '01', '2013-09-05', '', 4500, 0, 'due', '10', '2013-09-09 10:08:55', '2013-09-09 04:08:31'),
(6, '02', '2013-09-05', '', 768, 0, 'due', '10', '2013-09-09 10:11:04', '2013-09-09 04:10:40'),
(7, '04', '2013-09-05', '', 36442, 0, 'due', '10', '2013-09-09 11:50:50', '2013-09-09 05:50:26'),
(8, '05', '2013-09-03', '', 10900, 0, 'due', '9', '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(9, '06', '2013-09-05', '', 1290, 0, 'due', '10', '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(10, 'sdffd12', '2013-11-05', 'tess', 745000, 0, 'due', '9', '2013-11-05 05:11:57', '2013-11-04 23:11:33'),
(11, 'sdffd13', '2013-11-05', 'fdggf', 34255660, 0, 'due', '9', '2013-11-05 05:14:52', '2013-11-04 23:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `received_delivery_product`
--

CREATE TABLE `received_delivery_product` (
  `id` bigint(20) NOT NULL,
  `delivery_id` varchar(200) NOT NULL,
  `chalan_id` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1=main item, 2=sub item',
  `product_code` varchar(300) NOT NULL,
  `product_price` double NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `en_sl` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `received_delivery_product`
--

INSERT INTO `received_delivery_product` (`id`, `delivery_id`, `chalan_id`, `product_category`, `product_type`, `product_code`, `product_price`, `quantity`, `en_sl`, `created`, `modified`) VALUES
(8, '2', '79', '10', '2', 'CODE67', 490, '57', 1, '2013-09-05 07:11:53', '2013-09-05 07:11:29'),
(9, '2', '79', '10', '2', 'CODE69', 570, '3', 2, '2013-09-05 07:11:53', '2013-09-05 07:11:29'),
(10, '2', '79', '10', '2', 'CODE68', 490, '5', 3, '2013-09-05 07:11:53', '2013-09-05 07:11:29'),
(11, '3', '11', '10', '2', 'CODE79', 5, '10', 1, '2013-09-09 06:25:33', '2013-09-09 00:25:09'),
(12, '4', '03', '10', '2', 'CODE126', 55, '1', 1, '2013-09-09 08:33:50', '2013-09-09 02:33:26'),
(13, '5', '01', '10', '2', 'CODE98', 4500, '1', 1, '2013-09-09 10:08:55', '2013-09-09 04:08:31'),
(14, '6', '02', '10', '2', 'CODE99', 16, '48', 1, '2013-09-09 10:11:04', '2013-09-09 04:10:40'),
(15, '7', '04', '10', '2', 'CODE100', 35, '6', 1, '2013-09-09 11:50:50', '2013-09-09 05:50:26'),
(16, '7', '04', '10', '2', 'CODE101', 25, '6', 2, '2013-09-09 11:50:50', '2013-09-09 05:50:26'),
(17, '7', '04', '10', '2', 'CODE102', 70, '1', 3, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(18, '7', '04', '10', '2', 'CODE103', 180, '1', 4, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(19, '7', '04', '10', '2', 'CODE105', 2600, '1', 5, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(20, '7', '04', '10', '2', 'CODE106', 280, '2', 6, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(21, '7', '04', '10', '2', 'CODE107', 250, '1', 7, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(22, '7', '04', '10', '2', 'CODE108', 3.5, '100', 8, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(23, '7', '04', '10', '2', 'CODE109', 380, '1', 9, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(24, '7', '04', '10', '2', 'CODE110', 15, '5', 10, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(25, '7', '04', '10', '2', 'CODE112', 120, '1', 11, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(26, '7', '04', '10', '2', 'CODE113', 120, '1', 12, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(27, '7', '04', '10', '2', 'CODE114', 60, '1', 13, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(28, '7', '04', '10', '2', 'CODE115', 280, '1', 14, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(29, '7', '04', '10', '2', 'CODE116', 60, '1', 15, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(30, '7', '04', '10', '2', 'CODE117', 85, '1', 16, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(31, '7', '04', '10', '2', 'CODE118', 0.6, '100', 17, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(32, '7', '04', '10', '2', 'CODE119', 90, '1', 18, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(33, '7', '04', '10', '2', 'CODE120', 380, '4', 19, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(34, '7', '04', '10', '2', 'CODE121', 75, '15', 20, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(35, '7', '04', '10', '2', 'CODE122', 1580, '2', 21, '2013-09-09 11:50:51', '2013-09-09 05:50:27'),
(36, '7', '04', '10', '2', 'CODE123', 750, '2', 22, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(37, '7', '04', '10', '2', 'CODE124', 450, '2', 23, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(38, '7', '04', '10', '2', 'CODE125', 1800, '1', 24, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(39, '7', '04', '10', '2', 'CODE153', 1650, '2', 25, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(40, '7', '04', '10', '2', 'CODE154', 3500, '1', 26, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(41, '7', '04', '10', '2', 'CODE155', 550, '1', 27, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(42, '7', '04', '10', '2', 'CODE156', 750, '1', 28, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(43, '7', '04', '10', '2', 'CODE157', 850, '1', 29, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(44, '7', '04', '10', '2', 'CODE158', 650, '1', 30, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(45, '7', '04', '10', '2', 'CODE159', 80, '1', 31, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(46, '7', '04', '10', '2', 'CODE160', 90, '1', 32, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(47, '7', '04', '10', '2', 'CODE161', 120, '2', 33, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(48, '7', '04', '10', '2', 'CODE162', 350, '4', 34, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(49, '7', '04', '10', '2', 'CODE163', 20, '1', 35, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(50, '7', '04', '10', '2', 'CODE164', 140, '4', 36, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(51, '7', '04', '10', '2', 'CODE165', 140, '1', 37, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(52, '7', '04', '10', '2', 'CODE145', 300, '3', 38, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(53, '7', '04', '10', '2', 'CODE146', 260, '3', 39, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(54, '7', '04', '10', '2', 'CODE147', 160, '3', 40, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(55, '7', '04', '10', '2', 'CODE148', 280, '1', 41, '2013-09-09 11:50:52', '2013-09-09 05:50:28'),
(56, '7', '04', '10', '2', 'CODE149', 350, '1', 42, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(57, '7', '04', '10', '2', 'CODE127', 0.9, '200', 43, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(58, '7', '04', '10', '2', 'CODE133', 1.5, '250', 44, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(59, '7', '04', '10', '2', 'CODE134', 2.4, '500', 45, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(60, '7', '04', '10', '2', 'CODE135', 1000, '1', 46, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(61, '7', '04', '10', '2', 'CODE136', 650, '1', 47, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(62, '7', '04', '10', '2', 'CODE137', 1200, '1', 48, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(63, '7', '04', '10', '2', 'CODE138', 120, '1', 49, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(64, '7', '04', '10', '2', 'CODE139', 900, '1', 50, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(65, '7', '04', '10', '2', 'CODE99', 16, '12', 51, '2013-09-09 11:50:53', '2013-09-09 05:50:29'),
(66, '8', '05', '10', '2', 'CODE89', 80, '3', 1, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(67, '8', '05', '10', '2', 'CODE126', 55, '1', 2, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(68, '8', '05', '10', '2', 'CODE93', 7000, '1', 3, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(69, '8', '05', '10', '2', 'CODE92', 65, '5', 4, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(70, '8', '05', '10', '2', 'CODE87', 570, '1', 5, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(71, '8', '05', '10', '2', 'CODE88', 430, '1', 6, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(72, '8', '05', '10', '2', 'CODE81', 680, '1', 7, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(73, '8', '05', '10', '2', 'CODE79', 10, '6', 8, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(74, '8', '05', '10', '2', 'CODE95', 50, '6', 9, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(75, '8', '05', '10', '2', 'CODE96', 200, '1', 10, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(76, '8', '05', '10', '2', 'CODE82', 750, '1', 11, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(77, '8', '05', '10', '2', 'CODE97', 170, '1', 12, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(78, '8', '05', '10', '2', 'CODE94', 120, '1', 13, '2013-09-09 12:56:39', '2013-09-09 06:56:15'),
(79, '9', '06', '10', '2', 'CODE150', 50, '4', 1, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(80, '9', '06', '10', '2', 'CODE151', 2.5, '100', 2, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(81, '9', '06', '10', '2', 'CODE152', 60, '1', 3, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(82, '9', '06', '10', '2', 'CODE96', 200, '1', 4, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(83, '9', '06', '10', '2', 'CODE90', 35, '1', 5, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(84, '9', '06', '', '2', ' 	shokna chili', 25, '1', 6, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(85, '9', '06', '10', '2', 'CODE142', 260, '2', 7, '2013-09-09 13:53:53', '2013-09-09 07:53:29'),
(86, '10', 'sdffd12', '10', '2', 'CODE67', 10, '1000', 1, '2013-11-05 05:11:57', '2013-11-04 23:11:33'),
(87, '10', 'sdffd12', '10', '2', 'CODE68', 10, '50000', 2, '2013-11-05 05:11:57', '2013-11-04 23:11:33'),
(88, '10', 'sdffd12', '10', '2', 'CODE69', 10, '23000', 3, '2013-11-05 05:11:57', '2013-11-04 23:11:33'),
(89, '10', 'sdffd12', '10', '2', 'CODE72', 5, '1000', 4, '2013-11-05 05:11:57', '2013-11-04 23:11:33'),
(90, '11', 'sdffd13', '10', '2', 'CODE211', 10, '2335566', 1, '2013-11-05 05:14:52', '2013-11-04 23:14:28'),
(91, '11', 'sdffd13', '10', '2', 'CODE212', 10, '1000000', 2, '2013-11-05 05:14:52', '2013-11-04 23:14:28'),
(92, '11', 'sdffd13', '10', '2', 'CODE209', 50, '10000', 3, '2013-11-05 05:14:52', '2013-11-04 23:14:28'),
(93, '11', 'sdffd13', '10', '2', 'CODE210', 40, '10000', 4, '2013-11-05 05:14:52', '2013-11-04 23:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `sell_order`
--

CREATE TABLE `sell_order` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `invoice_sl` varchar(50) NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `table_sl` int(11) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `customer_type` varchar(200) NOT NULL,
  `amount_sub_total` double NOT NULL,
  `amount_grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `cash_payment` double NOT NULL,
  `card_payment` double NOT NULL,
  `change_amount` double NOT NULL,
  `discount_ratio` double NOT NULL,
  `discount` double NOT NULL,
  `vat_ratio` varchar(100) NOT NULL,
  `total_vat` double NOT NULL,
  `service_charge_ratio` varchar(100) NOT NULL,
  `service_charge` double NOT NULL,
  `comment` varchar(500) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `token_no` bigint(20) NOT NULL,
  `invoice_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = active, 1= inactive',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sell_order`
--

INSERT INTO `sell_order` (`id`, `invoice_no`, `invoice_sl`, `table_id`, `table_sl`, `order_no`, `order_date`, `customer_name`, `customer_id`, `payment_mode`, `customer_type`, `amount_sub_total`, `amount_grand_total`, `paid_amount`, `cash_payment`, `card_payment`, `change_amount`, `discount_ratio`, `discount`, `vat_ratio`, `total_vat`, `service_charge_ratio`, `service_charge`, `comment`, `user_id`, `status`, `token_no`, `invoice_status`, `created`, `modified`) VALUES
(1, '1', '1', 21, 1, '1', '2013-09-08', '', '', 'cash', 'regular', 56, 64, 64, 0, 0, 0, 0, 0, '15', 8, '', 0, '', 'admin', 'paid', 1, 1, '0000-00-00 00:00:00', '2013-09-08 02:06:56'),
(2, '2', '2', 5, 1, '1', '2013-09-08', '', '', 'cash', 'regular', 56, 64, 64, 0, 0, 0, 0, 0, '15', 8, '', 0, '', 'admin', 'paid', 2, 1, '0000-00-00 00:00:00', '2013-09-08 02:07:51'),
(3, '3', '3', 5, 2, '2', '2013-09-08', '', '', 'cash', 'regular', 56, 64, 64, 0, 0, 0, 0, 0, '15', 8, '', 0, '', 'admin', 'paid', 3, 1, '0000-00-00 00:00:00', '2013-09-08 02:08:09'),
(4, '4', '4', 5, 3, '3', '2013-09-08', '', '', 'cash', 'regular', 616, 708, 708, 0, 0, 0, 0, 0, '15', 92, '', 0, '', 'admin', 'paid', 4, 1, '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(5, '5', '5', 18, 1, '1', '2013-09-08', '', '', '', 'regular', 88, 110, 110, 0, 110, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 5, 1, '0000-00-00 00:00:00', '2013-09-08 02:54:36'),
(6, '6', '6', 2, 1, '1', '2013-09-08', '', '', '', 'regular', 176, 220, 220, 220, 0, 0, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 6, 1, '0000-00-00 00:00:00', '2013-09-08 02:58:14'),
(7, '7', '7', 5, 4, '4', '2013-09-08', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 7, 1, '0000-00-00 00:00:00', '2013-09-08 02:59:49'),
(8, '8', '8', 1, 1, '1', '2013-09-08', '', '', '', 'regular', 368, 460, 460, 460, 0, 0, 0, 0, '15', 55, '10', 37, '', 'admin', 'paid', 8, 1, '0000-00-00 00:00:00', '2013-09-08 03:01:36'),
(9, '9', '9', 2, 2, '2', '2013-09-08', '', '', '', 'regular', 604, 755, 755, 755, 0, 0, 0, 0, '15', 91, '10', 60, '', 'admin', 'paid', 9, 1, '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(10, '10', '10', 23, 1, '1', '2013-09-08', '', '', '', 'regular', 384, 480, 480, 480, 0, 20, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 10, 1, '0000-00-00 00:00:00', '2013-09-08 03:08:08'),
(11, '11', '11', 30, 1, '1', '2013-09-08', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 11, 1, '0000-00-00 00:00:00', '2013-09-08 04:16:55'),
(12, '12', '12', 6, 1, '1', '2013-09-08', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 12, 1, '0000-00-00 00:00:00', '2013-09-08 04:19:14'),
(13, '13', '13', 39, 1, '1', '2013-09-08', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 13, 1, '0000-00-00 00:00:00', '2013-09-08 04:25:54'),
(14, '14', '14', 23, 2, '2', '2013-09-08', '', '', '', 'regular', 356, 445, 445, 445, 0, 55, 0, 0, '15', 53, '10', 36, '', 'admin', 'paid', 14, 1, '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(15, '15', '15', 2, 3, '3', '2013-09-08', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 15, 1, '0000-00-00 00:00:00', '2013-09-08 04:36:21'),
(16, '16', '16', 1, 2, '2', '2013-09-08', '', '', '', 'regular', 1152, 1440, 1440, 1440, 0, 560, 0, 0, '15', 173, '10', 115, '', 'admin', 'paid', 16, 1, '0000-00-00 00:00:00', '2013-09-08 04:42:22'),
(17, '17', '17', 23, 3, '3', '2013-09-08', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 17, 1, '0000-00-00 00:00:00', '2013-09-08 05:16:24'),
(18, '18', '18', 23, 4, '4', '2013-09-08', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 18, 1, '0000-00-00 00:00:00', '2013-09-08 05:24:11'),
(19, '19', '19', 29, 1, '1', '2013-09-08', '', '', '', 'regular', 72, 90, 90, 90, 0, 10, 0, 0, '15', 11, '10', 7, '', 'admin', 'paid', 19, 1, '0000-00-00 00:00:00', '2013-09-08 05:38:53'),
(20, '20', '20', 22, 1, '1', '2013-09-08', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 20, 1, '0000-00-00 00:00:00', '2013-09-08 06:16:59'),
(21, '21', '21', 20, 1, '1', '2013-09-08', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 21, 1, '0000-00-00 00:00:00', '2013-09-08 06:38:11'),
(22, '22', '22', 17, 1, '1', '2013-09-08', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 22, 1, '0000-00-00 00:00:00', '2013-09-08 06:47:54'),
(23, '23', '23', 7, 1, '1', '2013-09-08', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 23, 1, '0000-00-00 00:00:00', '2013-09-08 06:57:17'),
(24, '24', '24', 43, 1, '1', '2013-09-08', '', '', '', 'regular', 60, 75, 75, 75, 0, 0, 0, 0, '15', 9, '10', 6, '', 'admin', 'paid', 24, 1, '0000-00-00 00:00:00', '2013-09-08 07:10:36'),
(25, '25', '25', 18, 2, '2', '2013-09-08', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 25, 1, '0000-00-00 00:00:00', '2013-09-08 07:13:01'),
(26, '26', '26', 39, 2, '2', '2013-09-08', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 26, 1, '0000-00-00 00:00:00', '2013-09-08 07:16:10'),
(27, '27', '27', 12, 1, '1', '2013-09-08', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 27, 1, '0000-00-00 00:00:00', '2013-09-08 07:16:54'),
(28, '28', '28', 2, 4, '4', '2013-09-08', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 28, 1, '0000-00-00 00:00:00', '2013-09-08 07:23:13'),
(29, '29', '29', 19, 1, '1', '2013-09-08', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 29, 1, '0000-00-00 00:00:00', '2013-09-08 07:25:47'),
(30, '30', '30', 23, 5, '5', '2013-09-08', '', '', '', 'regular', 128, 160, 160, 160, 0, 40, 0, 0, '15', 19, '10', 13, '', 'admin', 'paid', 30, 1, '0000-00-00 00:00:00', '2013-09-08 07:39:02'),
(31, '31', '31', 27, 1, '1', '2013-09-08', '', '', '', 'regular', 1352, 1690, 1690, 1690, 0, 0, 0, 0, '15', 203, '10', 135, '', 'admin', 'paid', 31, 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(32, '32', '32', 27, 2, '2', '2013-09-08', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 32, 1, '0000-00-00 00:00:00', '2013-09-08 08:00:05'),
(33, '33', '33', 20, 2, '2', '2013-09-08', '', '', '', 'regular', 136, 170, 170, 170, 0, 0, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 33, 1, '0000-00-00 00:00:00', '2013-09-08 08:14:41'),
(34, '34', '34', 21, 2, '2', '2013-09-08', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 34, 1, '0000-00-00 00:00:00', '2013-09-08 08:24:56'),
(35, '35', '35', 23, 6, '6', '2013-09-08', '', '', '', 'regular', 240, 300, 300, 300, 0, 0, 0, 0, '15', 36, '10', 24, '', 'admin', 'paid', 35, 1, '0000-00-00 00:00:00', '2013-09-08 08:33:09'),
(36, '36', '36', 27, 3, '3', '2013-09-08', '', '', '', 'regular', 1816, 2270, 2270, 2270, 0, 30, 0, 0, '15', 272, '10', 182, '', 'admin', 'paid', 36, 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(37, '37', '37', 2, 5, '5', '2013-09-08', '', '', '', 'regular', 268, 335, 335, 335, 0, 165, 0, 0, '15', 40, '10', 27, '', 'admin', 'paid', 37, 0, '0000-00-00 00:00:00', '2013-09-08 09:02:06'),
(38, '38', '38', 24, 1, '1', '2013-09-08', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 38, 0, '0000-00-00 00:00:00', '2013-09-08 09:05:21'),
(39, '39', '39', 5, 5, '5', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 39, 0, '0000-00-00 00:00:00', '2013-09-09 00:05:12'),
(40, '40', '40', 2, 6, '6', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 40, 0, '0000-00-00 00:00:00', '2013-09-09 01:25:33'),
(41, '41', '41', 43, 2, '2', '2013-09-09', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 41, 0, '0000-00-00 00:00:00', '2013-09-09 01:32:45'),
(42, '42', '42', 1, 3, '3', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 42, 0, '0000-00-00 00:00:00', '2013-09-09 01:47:19'),
(43, '43', '43', 3, 1, '1', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 43, 0, '0000-00-00 00:00:00', '2013-09-09 01:57:24'),
(44, '44', '44', 1, 4, '4', '2013-09-09', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 44, 0, '0000-00-00 00:00:00', '2013-09-09 02:03:22'),
(45, '45', '45', 2, 7, '7', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 45, 0, '0000-00-00 00:00:00', '2013-09-09 02:11:01'),
(46, '46', '46', 1, 5, '5', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 46, 0, '0000-00-00 00:00:00', '2013-09-09 02:45:13'),
(47, '47', '47', 23, 7, '7', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 47, 0, '0000-00-00 00:00:00', '2013-09-09 03:06:46'),
(48, '48', '48', 23, 8, '8', '2013-09-09', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 48, 0, '0000-00-00 00:00:00', '2013-09-09 03:47:33'),
(49, '49', '49', 23, 9, '9', '2013-09-09', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 49, 0, '0000-00-00 00:00:00', '2013-09-09 03:48:36'),
(50, '50', '50', 19, 2, '2', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 50, 0, '0000-00-00 00:00:00', '2013-09-09 04:18:59'),
(51, '51', '51', 21, 3, '3', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 51, 0, '0000-00-00 00:00:00', '2013-09-09 04:37:48'),
(52, '52', '52', 44, 1, '1', '2013-09-09', '', '', '', 'regular', 356, 445, 445, 445, 0, 0, 0, 0, '15', 53, '10', 36, '', 'admin', 'paid', 52, 0, '0000-00-00 00:00:00', '2013-09-09 04:52:56'),
(53, '53', '53', 19, 3, '3', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 53, 0, '0000-00-00 00:00:00', '2013-09-09 04:54:11'),
(54, '54', '54', 43, 3, '3', '2013-09-09', '', '', '', 'regular', 240, 300, 300, 300, 0, 700, 0, 0, '15', 36, '10', 24, '', 'admin', 'paid', 54, 0, '0000-00-00 00:00:00', '2013-09-09 05:01:29'),
(55, '55', '55', 32, 1, '1', '2013-09-09', '', '', '', 'regular', 72, 90, 90, 90, 0, 410, 0, 0, '15', 11, '10', 7, '', 'admin', 'paid', 55, 0, '0000-00-00 00:00:00', '2013-09-09 05:10:24'),
(56, '56', '56', 10, 1, '1', '2013-09-09', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 56, 0, '0000-00-00 00:00:00', '2013-09-09 05:16:01'),
(57, '57', '57', 42, 1, '1', '2013-09-09', '', '', '', 'regular', 176, 220, 220, 220, 0, 30, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 57, 0, '0000-00-00 00:00:00', '2013-09-09 05:23:39'),
(58, '58', '58', 2, 8, '8', '2013-09-09', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 58, 0, '0000-00-00 00:00:00', '2013-09-09 05:30:47'),
(59, '59', '59', 18, 3, '3', '2013-09-09', '', '', '', 'regular', 48, 60, 60, 60, 0, 40, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 59, 0, '0000-00-00 00:00:00', '2013-09-09 05:44:32'),
(60, '60', '60', 10, 2, '2', '2013-09-09', '', '', '', 'regular', 148, 185, 185, 185, 0, 15, 0, 0, '15', 22, '10', 15, '', 'admin', 'paid', 60, 0, '0000-00-00 00:00:00', '2013-09-09 05:56:50'),
(61, '61', '61', 17, 2, '2', '2013-09-09', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 61, 0, '0000-00-00 00:00:00', '2013-09-09 06:22:02'),
(62, '62', '62', 20, 3, '3', '2013-09-09', '', '', '', 'regular', 148, 185, 185, 185, 0, 315, 0, 0, '15', 22, '10', 15, '', 'admin', 'paid', 62, 0, '0000-00-00 00:00:00', '2013-09-09 06:24:33'),
(63, '63', '63', 30, 2, '2', '2013-09-09', '', '', '', 'regular', 184, 230, 230, 230, 0, 770, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 63, 0, '0000-00-00 00:00:00', '2013-09-09 06:28:58'),
(64, '64', '64', 18, 4, '4', '2013-09-09', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 64, 0, '0000-00-00 00:00:00', '2013-09-09 06:42:17'),
(65, '65', '65', 35, 1, '1', '2013-09-09', '', '', '', 'regular', 160, 200, 200, 200, 0, 300, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 65, 0, '0000-00-00 00:00:00', '2013-09-09 06:46:10'),
(66, '66', '66', 35, 2, '2', '2013-09-09', '', '', '', 'regular', 160, 200, 200, 200, 0, 100, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 66, 0, '0000-00-00 00:00:00', '2013-09-09 06:47:22'),
(67, '67', '67', 20, 4, '4', '2013-09-09', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 67, 0, '0000-00-00 00:00:00', '2013-09-09 06:49:02'),
(68, '68', '68', 22, 2, '2', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 68, 0, '0000-00-00 00:00:00', '2013-09-09 07:01:58'),
(69, '69', '69', 15, 1, '1', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 69, 0, '0000-00-00 00:00:00', '2013-09-09 07:07:52'),
(70, '70', '70', 19, 4, '4', '2013-09-09', '', '', '', 'regular', 72, 90, 90, 90, 0, 10, 0, 0, '15', 11, '10', 7, '', 'admin', 'paid', 70, 0, '0000-00-00 00:00:00', '2013-09-09 07:26:25'),
(71, '71', '71', 2, 9, '9', '2013-09-09', '', '', '', 'regular', 44, 55, 55, 55, 0, 445, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 71, 0, '0000-00-00 00:00:00', '2013-09-09 07:43:45'),
(72, '72', '72', 5, 6, '6', '2013-09-09', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 72, 0, '0000-00-00 00:00:00', '2013-09-09 07:52:59'),
(73, '73', '73', 25, 1, '1', '2013-09-09', '', '', '', 'regular', 640, 800, 800, 800, 0, 0, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 73, 0, '0000-00-00 00:00:00', '2013-09-09 07:54:19'),
(74, '74', '74', 43, 4, '4', '2013-09-09', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 74, 0, '0000-00-00 00:00:00', '2013-09-09 08:10:42'),
(75, '75', '75', 19, 5, '5', '2013-09-09', '', '', '', 'regular', 624, 780, 780, 780, 0, 220, 0, 0, '15', 94, '10', 62, '', 'admin', 'paid', 75, 0, '0000-00-00 00:00:00', '2013-09-09 08:13:32'),
(76, '76', '76', 6, 2, '2', '2013-09-09', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 76, 0, '0000-00-00 00:00:00', '2013-09-09 08:16:19'),
(77, '77', '77', 2, 10, '10', '2013-09-09', '', '', '', 'regular', 936, 1170, 1170, 1170, 0, 0, 0, 0, '15', 140, '10', 94, '', 'admin', 'paid', 77, 0, '0000-00-00 00:00:00', '2013-09-09 08:31:40'),
(78, '78', '78', 39, 3, '3', '2013-09-09', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 78, 0, '0000-00-00 00:00:00', '2013-09-09 08:34:34'),
(79, '79', '79', 27, 4, '4', '2013-09-09', '', '', '', 'regular', 1324, 1655, 1655, 1655, 0, 45, 0, 0, '15', 199, '10', 132, '', 'admin', 'paid', 79, 0, '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(80, '80', '80', 33, 1, '1', '2013-09-09', '', '', '', 'regular', 48, 60, 60, 60, 0, 40, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 80, 0, '0000-00-00 00:00:00', '2013-09-09 08:43:24'),
(81, '81', '81', 33, 2, '2', '2013-09-09', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 81, 0, '0000-00-00 00:00:00', '2013-09-09 08:58:52'),
(82, '82', '82', 16, 1, '1', '2013-09-10', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 82, 0, '0000-00-00 00:00:00', '2013-09-10 01:04:49'),
(83, '83', '83', 8, 1, '1', '2013-09-10', '', '', '', 'regular', 176, 220, 220, 220, 0, 0, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 83, 0, '0000-00-00 00:00:00', '2013-09-10 01:10:34'),
(84, '84', '84', 23, 10, '10', '2013-09-10', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 84, 0, '0000-00-00 00:00:00', '2013-09-10 01:25:20'),
(85, '85', '85', 3, 2, '2', '2013-09-10', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 85, 0, '0000-00-00 00:00:00', '2013-09-10 01:28:08'),
(86, '86', '86', 27, 5, '5', '2013-09-10', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 86, 0, '0000-00-00 00:00:00', '2013-09-10 01:36:21'),
(87, '87', '87', 10, 3, '3', '2013-09-10', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 87, 0, '0000-00-00 00:00:00', '2013-09-10 01:42:46'),
(88, '88', '88', 8, 2, '2', '2013-09-10', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 88, 0, '0000-00-00 00:00:00', '2013-09-10 01:48:30'),
(89, '89', '89', 3, 3, '3', '2013-09-10', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 89, 0, '0000-00-00 00:00:00', '2013-09-10 01:58:21'),
(90, '90', '90', 1, 6, '6', '2013-09-10', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 90, 0, '0000-00-00 00:00:00', '2013-09-10 02:22:27'),
(91, '91', '91', 32, 2, '2', '2013-09-10', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 91, 0, '0000-00-00 00:00:00', '2013-09-10 02:42:55'),
(92, '92', '92', 3, 4, '4', '2013-09-10', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 92, 0, '0000-00-00 00:00:00', '2013-09-10 02:51:44'),
(93, '93', '93', 45, 1, '1', '2013-09-10', '', '', '', 'regular', 120, 150, 150, 150, 0, 50, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 93, 0, '0000-00-00 00:00:00', '2013-09-10 02:55:21'),
(94, '94', '94', 2, 11, '11', '2013-09-10', '', '', '', 'regular', 56, 70, 70, 70, 0, 430, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 94, 0, '0000-00-00 00:00:00', '2013-09-10 02:56:58'),
(95, '95', '95', 19, 6, '6', '2013-09-10', '', '', '', 'regular', 640, 800, 800, 800, 0, 200, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 95, 0, '0000-00-00 00:00:00', '2013-09-10 03:00:01'),
(96, '96', '96', 2, 12, '12', '2013-09-10', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 96, 0, '0000-00-00 00:00:00', '2013-09-10 03:15:52'),
(97, '97', '97', 44, 2, '2', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 97, 0, '0000-00-00 00:00:00', '2013-09-10 04:53:16'),
(98, '98', '98', 29, 2, '2', '2013-09-10', '', '', '', 'regular', 268, 335, 335, 335, 0, 665, 0, 0, '15', 40, '10', 27, '', 'admin', 'paid', 98, 0, '0000-00-00 00:00:00', '2013-09-10 05:03:32'),
(99, '99', '99', 34, 1, '1', '2013-09-10', '', '', '', 'regular', 588, 735, 735, 735, 0, 265, 0, 0, '15', 88, '10', 59, '', 'admin', 'paid', 99, 0, '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(100, '100', '100', 24, 2, '2', '2013-09-10', '', '', '', 'regular', 304, 380, 380, 380, 0, 0, 0, 0, '15', 46, '10', 30, '', 'admin', 'paid', 100, 0, '0000-00-00 00:00:00', '2013-09-10 05:13:10'),
(101, '101', '101', 35, 3, '3', '2013-09-10', '', '', '', 'regular', 92, 115, 115, 115, 0, 1, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 101, 0, '0000-00-00 00:00:00', '2013-09-10 05:14:25'),
(102, '102', '102', 2, 13, '13', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 102, 0, '0000-00-00 00:00:00', '2013-09-10 05:39:27'),
(103, '103', '103', 35, 4, '4', '2013-09-10', '', '', '', 'regular', 316, 395, 395, 395, 0, 105, 0, 0, '15', 47, '10', 32, '', 'admin', 'paid', 103, 0, '0000-00-00 00:00:00', '2013-09-10 05:58:52'),
(104, '104', '104', 16, 2, '2', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 104, 0, '0000-00-00 00:00:00', '2013-09-10 06:32:08'),
(105, '105', '105', 35, 5, '5', '2013-09-10', '', '', '', 'regular', 92, 115, 115, 115, 0, 85, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 105, 0, '0000-00-00 00:00:00', '2013-09-10 06:36:36'),
(106, '106', '106', 35, 6, '6', '2013-09-10', '', '', '', 'regular', 92, 115, 115, 115, 0, 385, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 106, 0, '0000-00-00 00:00:00', '2013-09-10 07:24:27'),
(107, '107', '107', 27, 6, '6', '2013-09-10', '', '', '', 'regular', 224, 280, 280, 280, 0, 220, 0, 0, '15', 34, '10', 22, '', 'admin', 'paid', 107, 0, '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(108, '108', '108', 3, 5, '5', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 108, 0, '0000-00-00 00:00:00', '2013-09-10 08:03:05'),
(109, '109', '109', 22, 3, '3', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 109, 0, '0000-00-00 00:00:00', '2013-09-10 08:14:54'),
(110, '110', '110', 24, 3, '3', '2013-09-10', '', '', '', 'regular', 768, 960, 960, 960, 0, 0, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 110, 0, '0000-00-00 00:00:00', '2013-09-10 08:17:42'),
(111, '111', '111', 1, 7, '7', '2013-09-10', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 111, 0, '0000-00-00 00:00:00', '2013-09-10 08:19:01'),
(112, '112', '112', 30, 3, '3', '2013-09-10', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 112, 0, '0000-00-00 00:00:00', '2013-09-10 08:29:45'),
(113, '113', '113', 35, 7, '7', '2013-09-11', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 113, 0, '0000-00-00 00:00:00', '2013-09-11 01:31:58'),
(114, '114', '114', 18, 5, '5', '2013-09-11', '', '', '', 'regular', 40, 50, 50, 50, 0, 0, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 114, 0, '0000-00-00 00:00:00', '2013-09-11 02:29:33'),
(115, '115', '115', 19, 7, '7', '2013-09-11', '', '', '', 'regular', 568, 710, 710, 710, 0, 0, 0, 0, '15', 85, '10', 57, '', 'admin', 'paid', 115, 0, '0000-00-00 00:00:00', '2013-09-11 02:33:06'),
(116, '116', '116', 32, 3, '3', '2013-09-11', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 116, 0, '0000-00-00 00:00:00', '2013-09-11 02:34:49'),
(117, '117', '117', 13, 1, '1', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 117, 0, '0000-00-00 00:00:00', '2013-09-11 03:23:46'),
(118, '118', '118', 3, 6, '6', '2013-09-11', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 118, 0, '0000-00-00 00:00:00', '2013-09-11 03:25:27'),
(119, '119', '119', 1, 8, '8', '2013-09-11', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 119, 0, '0000-00-00 00:00:00', '2013-09-11 04:10:28'),
(120, '120', '120', 2, 14, '14', '2013-09-11', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 120, 0, '0000-00-00 00:00:00', '2013-09-11 04:12:01'),
(121, '121', '121', 24, 4, '4', '2013-09-11', '', '', '', 'regular', 224, 280, 280, 280, 0, 20, 0, 0, '15', 34, '10', 22, '', 'admin', 'paid', 121, 0, '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(122, '122', '122', 18, 6, '6', '2013-09-11', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 122, 0, '0000-00-00 00:00:00', '2013-09-11 04:46:27'),
(123, '123', '123', 12, 2, '2', '2013-09-11', '', '', '', 'regular', 696, 870, 870, 870, 0, 130, 0, 0, '15', 104, '10', 70, '', 'admin', 'paid', 123, 0, '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(124, '124', '124', 2, 15, '15', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 124, 0, '0000-00-00 00:00:00', '2013-09-11 05:56:42'),
(125, '125', '125', 18, 7, '7', '2013-09-11', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 125, 0, '0000-00-00 00:00:00', '2013-09-11 06:01:55'),
(126, '126', '126', 2, 16, '16', '2013-09-11', '', '', '', 'regular', 136, 170, 170, 170, 0, 330, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 126, 0, '0000-00-00 00:00:00', '2013-09-11 06:33:13'),
(127, '127', '127', 21, 4, '4', '2013-09-11', '', '', '', 'regular', 768, 960, 960, 960, 0, 40, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 127, 0, '0000-00-00 00:00:00', '2013-09-11 06:39:57'),
(128, '128', '128', 21, 5, '5', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 128, 0, '0000-00-00 00:00:00', '2013-09-11 06:41:39'),
(129, '129', '129', 35, 8, '8', '2013-09-11', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 129, 0, '0000-00-00 00:00:00', '2013-09-11 07:10:49'),
(130, '130', '130', 18, 8, '8', '2013-09-11', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 130, 0, '0000-00-00 00:00:00', '2013-09-11 07:12:47'),
(131, '131', '131', 3, 7, '7', '2013-09-11', '', '', '', 'regular', 560, 700, 700, 700, 0, 0, 0, 0, '15', 84, '10', 56, '', 'admin', 'paid', 131, 0, '0000-00-00 00:00:00', '2013-09-11 07:13:20'),
(132, '132', '132', 21, 6, '6', '2013-09-11', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 132, 0, '0000-00-00 00:00:00', '2013-09-11 07:32:00'),
(133, '133', '133', 3, 8, '8', '2013-09-11', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 133, 0, '0000-00-00 00:00:00', '2013-09-11 07:37:51'),
(134, '134', '134', 37, 1, '1', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 430, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 134, 0, '0000-00-00 00:00:00', '2013-09-11 07:48:31'),
(135, '135', '135', 14, 1, '1', '2013-09-11', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 135, 0, '0000-00-00 00:00:00', '2013-09-11 07:51:33'),
(136, '136', '136', 21, 7, '7', '2013-09-11', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 136, 0, '0000-00-00 00:00:00', '2013-09-11 07:53:10'),
(137, '137', '137', 35, 9, '9', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 137, 0, '0000-00-00 00:00:00', '2013-09-11 08:05:51'),
(138, '138', '138', 17, 3, '3', '2013-09-11', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 138, 0, '0000-00-00 00:00:00', '2013-09-11 08:09:46'),
(139, '139', '139', 36, 1, '1', '2013-09-11', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 139, 0, '0000-00-00 00:00:00', '2013-09-11 08:17:59'),
(140, '140', '140', 35, 10, '10', '2013-09-11', '', '', '', 'regular', 976, 1220, 1220, 1220, 0, 280, 0, 0, '15', 146, '10', 98, '', 'admin', 'paid', 140, 0, '0000-00-00 00:00:00', '2013-09-11 08:38:32'),
(141, '141', '141', 7, 2, '2', '2013-09-12', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 141, 0, '0000-00-00 00:00:00', '2013-09-12 00:36:06'),
(142, '142', '142', 2, 17, '17', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 142, 0, '0000-00-00 00:00:00', '2013-09-12 00:55:33'),
(143, '143', '143', 3, 9, '9', '2013-09-12', '', '', '', 'regular', 108, 135, 135, 135, 0, 15, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 143, 0, '0000-00-00 00:00:00', '2013-09-12 01:09:14'),
(144, '144', '144', 19, 8, '8', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 144, 0, '0000-00-00 00:00:00', '2013-09-12 01:10:42'),
(145, '145', '145', 43, 5, '5', '2013-09-12', '', '', '', 'regular', 320, 400, 400, 400, 0, 600, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 145, 0, '0000-00-00 00:00:00', '2013-09-12 01:29:10'),
(146, '146', '146', 39, 4, '4', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 146, 0, '0000-00-00 00:00:00', '2013-09-12 01:54:37'),
(147, '147', '147', 45, 2, '2', '2013-09-12', '', '', '', 'regular', 640, 800, 800, 800, 0, 200, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 147, 0, '0000-00-00 00:00:00', '2013-09-12 01:57:20'),
(148, '148', '148', 2, 18, '18', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 148, 0, '0000-00-00 00:00:00', '2013-09-12 02:06:50'),
(149, '149', '149', 1, 9, '9', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 149, 0, '0000-00-00 00:00:00', '2013-09-12 02:18:08'),
(150, '150', '150', 41, 1, '1', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 150, 0, '0000-00-00 00:00:00', '2013-09-12 02:28:04'),
(151, '151', '151', 1, 10, '10', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 151, 0, '0000-00-00 00:00:00', '2013-09-12 02:33:31'),
(152, '152', '152', 22, 4, '4', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 430, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 152, 0, '0000-00-00 00:00:00', '2013-09-12 02:36:43'),
(153, '153', '153', 2, 19, '19', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 153, 0, '0000-00-00 00:00:00', '2013-09-12 02:39:37'),
(154, '154', '154', 40, 1, '1', '2013-09-12', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 154, 0, '0000-00-00 00:00:00', '2013-09-12 02:47:53'),
(155, '155', '155', 37, 2, '2', '2013-09-12', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 155, 0, '0000-00-00 00:00:00', '2013-09-12 02:48:18'),
(156, '156', '156', 44, 3, '3', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 445, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 156, 0, '0000-00-00 00:00:00', '2013-09-12 04:14:13'),
(157, '157', '157', 43, 6, '6', '2013-09-12', '', '', '', 'regular', 348, 435, 435, 435, 0, 565, 0, 0, '15', 52, '10', 35, '', 'admin', 'paid', 157, 0, '0000-00-00 00:00:00', '2013-09-12 04:28:32'),
(158, '158', '158', 43, 7, '7', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 158, 0, '0000-00-00 00:00:00', '2013-09-12 04:31:04'),
(159, '159', '159', 20, 5, '5', '2013-09-12', '', '', '', 'regular', 152, 190, 190, 190, 0, 10, 0, 0, '15', 23, '10', 15, '', 'admin', 'paid', 159, 0, '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(160, '160', '160', 22, 5, '5', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 160, 0, '0000-00-00 00:00:00', '2013-09-12 04:40:48'),
(161, '161', '161', 22, 6, '6', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 161, 0, '0000-00-00 00:00:00', '2013-09-12 04:41:30'),
(162, '162', '162', 20, 6, '6', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 162, 0, '0000-00-00 00:00:00', '2013-09-12 05:32:59'),
(163, '163', '163', 20, 7, '7', '2013-09-12', '', '', '', 'regular', 88, 110, 110, 110, 0, 390, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 163, 0, '0000-00-00 00:00:00', '2013-09-12 05:42:44'),
(164, '164', '164', 7, 3, '3', '2013-09-12', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 164, 0, '0000-00-00 00:00:00', '2013-09-12 05:45:35'),
(165, '165', '165', 24, 5, '5', '2013-09-12', '', '', '', 'regular', 72, 90, 90, 90, 0, 10, 0, 0, '15', 11, '10', 7, '', 'admin', 'paid', 165, 0, '0000-00-00 00:00:00', '2013-09-12 05:52:42'),
(166, '166', '166', 39, 5, '5', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 166, 0, '0000-00-00 00:00:00', '2013-09-12 05:57:55'),
(167, '167', '167', 4, 1, '1', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 167, 0, '0000-00-00 00:00:00', '2013-09-12 06:21:10'),
(168, '168', '168', 23, 11, '11', '2013-09-12', '', '', '', 'regular', 384, 480, 480, 480, 0, 20, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 168, 0, '0000-00-00 00:00:00', '2013-09-12 06:35:53'),
(169, '169', '169', 43, 8, '8', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 169, 0, '0000-00-00 00:00:00', '2013-09-12 06:47:32'),
(170, '170', '170', 15, 2, '2', '2013-09-12', '', '', '', 'regular', 152, 190, 190, 190, 0, 310, 0, 0, '15', 23, '10', 15, '', 'admin', 'paid', 170, 0, '0000-00-00 00:00:00', '2013-09-12 06:52:13'),
(171, '171', '171', 4, 2, '2', '2013-09-12', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 171, 0, '0000-00-00 00:00:00', '2013-09-12 06:56:05'),
(172, '172', '172', 39, 6, '6', '2013-09-12', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 172, 0, '0000-00-00 00:00:00', '2013-09-12 07:03:55'),
(173, '173', '173', 26, 1, '1', '2013-09-12', '', '', '', 'regular', 768, 960, 960, 960, 0, 40, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 173, 0, '0000-00-00 00:00:00', '2013-09-12 07:10:37'),
(174, '174', '174', 19, 9, '9', '2013-09-12', '', '', '', 'regular', 776, 970, 970, 970, 0, 30, 0, 0, '15', 116, '10', 78, '', 'admin', 'paid', 174, 0, '0000-00-00 00:00:00', '2013-09-12 07:34:31'),
(175, '175', '175', 21, 8, '8', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 445, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 175, 0, '0000-00-00 00:00:00', '2013-09-12 07:39:27'),
(176, '176', '176', 4, 3, '3', '2013-09-12', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 176, 0, '0000-00-00 00:00:00', '2013-09-12 08:36:01'),
(177, '177', '177', 22, 7, '7', '2013-09-12', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 177, 0, '0000-00-00 00:00:00', '2013-09-12 08:41:02'),
(178, '178', '178', 44, 4, '4', '2013-09-12', '', '', '', 'regular', 252, 315, 315, 315, 0, 0, 0, 0, '15', 38, '10', 25, '', 'admin', 'paid', 178, 0, '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(179, '179', '179', 17, 4, '4', '2013-09-12', '', '', '', 'regular', 412, 515, 515, 515, 0, 0, 0, 0, '15', 62, '10', 41, '', 'admin', 'paid', 179, 0, '0000-00-00 00:00:00', '2013-09-12 08:55:21'),
(180, '180', '180', 4, 4, '4', '2013-09-12', '', '', '', 'regular', 88, 110, 110, 110, 0, 390, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 180, 0, '0000-00-00 00:00:00', '2013-09-12 09:07:25'),
(181, '181', '181', 33, 3, '3', '2013-09-13', '', '', '', 'regular', 268, 235, 235, 235, 0, 265, 0, 100, '15', 40, '10', 27, '', 'admin', 'paid', 181, 0, '0000-00-00 00:00:00', '2013-09-13 00:45:45'),
(182, '182', '182', 35, 11, '11', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 182, 0, '0000-00-00 00:00:00', '2013-09-13 01:05:20'),
(183, '183', '183', 20, 8, '8', '2013-09-13', '', '', '', 'regular', 84, 105, 105, 105, 0, 95, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 183, 0, '0000-00-00 00:00:00', '2013-09-13 01:06:39'),
(184, '184', '184', 27, 7, '7', '2013-09-13', '', '', '', 'regular', 60, 75, 75, 75, 0, 25, 0, 0, '15', 9, '10', 6, '', 'admin', 'paid', 184, 0, '0000-00-00 00:00:00', '2013-09-13 01:17:05'),
(185, '185', '185', 25, 2, '2', '2013-09-13', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 185, 0, '0000-00-00 00:00:00', '2013-09-13 01:25:11'),
(186, '186', '186', 33, 4, '4', '2013-09-13', '', '', '', 'regular', 1052, 1315, 1315, 1315, 0, 185, 0, 0, '15', 158, '10', 105, '', 'admin', 'paid', 186, 0, '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(187, '187', '187', 4, 5, '5', '2013-09-13', '', '', '', 'regular', 176, 220, 220, 220, 0, 0, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 187, 0, '0000-00-00 00:00:00', '2013-09-13 01:46:33'),
(188, '188', '188', 29, 3, '3', '2013-09-13', '', '', '', 'regular', 420, 525, 525, 525, 0, 0, 0, 0, '15', 63, '10', 42, '', 'admin', 'paid', 188, 0, '0000-00-00 00:00:00', '2013-09-13 01:47:14'),
(189, '189', '189', 16, 3, '3', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 189, 0, '0000-00-00 00:00:00', '2013-09-13 01:54:37'),
(190, '190', '190', 15, 3, '3', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 190, 0, '0000-00-00 00:00:00', '2013-09-13 01:59:19'),
(191, '191', '191', 19, 10, '10', '2013-09-13', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 191, 0, '0000-00-00 00:00:00', '2013-09-13 02:06:57'),
(192, '192', '192', 26, 2, '2', '2013-09-13', '', '', '', 'regular', 80, 100, 100, 100, 0, 400, 0, 0, '15', 12, '10', 8, '', 'admin', 'paid', 192, 0, '0000-00-00 00:00:00', '2013-09-13 02:08:28'),
(193, '193', '193', 27, 8, '8', '2013-09-13', '', '', '', 'regular', 844, 1055, 1055, 1055, 0, 0, 0, 0, '15', 127, '10', 84, '', 'admin', 'paid', 193, 0, '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(194, '194', '194', 27, 9, '9', '2013-09-13', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 194, 0, '0000-00-00 00:00:00', '2013-09-13 02:13:49'),
(195, '195', '195', 4, 6, '6', '2013-09-13', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 195, 0, '0000-00-00 00:00:00', '2013-09-13 02:15:57'),
(196, '196', '196', 19, 11, '11', '2013-09-13', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 196, 0, '0000-00-00 00:00:00', '2013-09-13 02:20:07'),
(197, '197', '197', 17, 5, '5', '2013-09-13', '', '', '', 'regular', 40, 50, 50, 50, 0, 50, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 197, 0, '0000-00-00 00:00:00', '2013-09-13 02:25:30'),
(198, '198', '198', 2, 20, '20', '2013-09-13', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 198, 0, '0000-00-00 00:00:00', '2013-09-13 02:27:46'),
(199, '199', '199', 30, 4, '4', '2013-09-13', '', '', '', 'regular', 972, 1215, 1215, 1215, 0, 0, 0, 0, '15', 146, '10', 97, '', 'admin', 'paid', 199, 0, '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(200, '200', '200', 26, 3, '3', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 200, 0, '0000-00-00 00:00:00', '2013-09-13 02:54:20'),
(201, '201', '201', 14, 2, '2', '2013-09-13', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 201, 0, '0000-00-00 00:00:00', '2013-09-13 02:58:07'),
(202, '202', '202', 12, 3, '3', '2013-09-13', '', '', '', 'regular', 140, 175, 175, 175, 0, 0, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 202, 0, '0000-00-00 00:00:00', '2013-09-13 02:59:07'),
(203, '203', '203', 32, 4, '4', '2013-09-13', '', '', '', 'regular', 480, 600, 600, 600, 0, 0, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 203, 0, '0000-00-00 00:00:00', '2013-09-13 03:00:57'),
(204, '204', '204', 10, 4, '4', '2013-09-13', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 204, 0, '0000-00-00 00:00:00', '2013-09-13 03:04:26'),
(205, '205', '205', 13, 2, '2', '2013-09-13', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 205, 0, '0000-00-00 00:00:00', '2013-09-13 03:12:52'),
(206, '206', '206', 27, 10, '10', '2013-09-13', '', '', '', 'regular', 660, 825, 825, 825, 0, 0, 0, 0, '15', 99, '10', 66, '', 'admin', 'paid', 206, 0, '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(207, '207', '207', 34, 2, '2', '2013-09-13', '', '', '', 'regular', 1408, 1760, 1760, 1760, 0, 0, 0, 0, '15', 211, '10', 141, '', 'admin', 'paid', 207, 0, '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(208, '208', '208', 13, 3, '3', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 208, 0, '0000-00-00 00:00:00', '2013-09-13 03:32:11'),
(209, '209', '209', 18, 9, '9', '2013-09-13', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 209, 0, '0000-00-00 00:00:00', '2013-09-13 03:39:06'),
(210, '210', '210', 13, 4, '4', '2013-09-13', '', '', '', 'regular', 40, 50, 50, 50, 0, 50, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 210, 0, '0000-00-00 00:00:00', '2013-09-13 03:42:40'),
(211, '211', '211', 28, 1, '1', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 211, 0, '0000-00-00 00:00:00', '2013-09-13 03:44:38'),
(212, '212', '212', 30, 5, '5', '2013-09-13', '', '', '', 'regular', 348, 435, 435, 435, 0, 0, 0, 0, '15', 52, '10', 35, '', 'admin', 'paid', 212, 0, '0000-00-00 00:00:00', '2013-09-13 03:45:46'),
(213, '213', '213', 29, 4, '4', '2013-09-13', '', '', '', 'regular', 412, 515, 515, 515, 0, 0, 0, 0, '15', 62, '10', 41, '', 'admin', 'paid', 213, 0, '0000-00-00 00:00:00', '2013-09-13 03:49:37'),
(214, '214', '214', 32, 5, '5', '2013-09-13', '', '', '', 'regular', 4100, 5125, 5125, 5125, 0, 25, 0, 0, '15', 615, '10', 410, '', 'admin', 'paid', 214, 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(215, '215', '215', 23, 12, '12', '2013-09-13', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 215, 0, '0000-00-00 00:00:00', '2013-09-13 04:01:30'),
(216, '216', '216', 19, 12, '12', '2013-09-13', '', '', '', 'regular', 204, 255, 255, 255, 0, 0, 0, 0, '15', 31, '10', 20, '', 'admin', 'paid', 216, 0, '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(217, '217', '217', 27, 11, '11', '2013-09-13', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 217, 0, '0000-00-00 00:00:00', '2013-09-13 04:23:33'),
(218, '218', '218', 34, 3, '3', '2013-09-13', '', '', '', 'regular', 964, 1205, 1205, 1205, 0, 0, 0, 0, '15', 145, '10', 96, '', 'admin', 'paid', 218, 0, '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(219, '219', '219', 33, 5, '5', '2013-09-13', '', '', '', 'regular', 1280, 1600, 1600, 1600, 0, 0, 0, 0, '15', 192, '10', 128, '', 'admin', 'paid', 219, 0, '0000-00-00 00:00:00', '2013-09-13 04:37:31'),
(220, '220', '220', 1, 11, '11', '2013-09-13', '', '', '', 'regular', 348, 435, 435, 435, 0, 65, 0, 0, '15', 52, '10', 35, '', 'admin', 'paid', 220, 0, '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(221, '221', '221', 11, 1, '1', '2013-09-13', '', '', '', 'regular', 232, 290, 290, 290, 0, 210, 0, 0, '15', 35, '10', 23, '', 'admin', 'paid', 221, 0, '0000-00-00 00:00:00', '2013-09-13 04:47:23'),
(222, '222', '222', 30, 6, '6', '2013-09-13', '', '', '', 'regular', 1228, 1535, 1535, 1535, 0, 65, 0, 0, '15', 184, '10', 123, '', 'admin', 'paid', 222, 0, '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(223, '223', '223', 23, 13, '13', '2013-09-13', '', '', '', 'regular', 224, 280, 280, 280, 0, 720, 0, 0, '15', 34, '10', 22, '', 'admin', 'paid', 223, 0, '0000-00-00 00:00:00', '2013-09-13 05:03:14'),
(224, '224', '224', 25, 3, '3', '2013-09-13', '', '', '', 'regular', 920, 1150, 1150, 1150, 0, 50, 0, 0, '15', 138, '10', 92, '', 'admin', 'paid', 224, 0, '0000-00-00 00:00:00', '2013-09-13 05:11:30'),
(225, '225', '225', 3, 10, '10', '2013-09-13', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 225, 0, '0000-00-00 00:00:00', '2013-09-13 05:12:26'),
(226, '226', '226', 4, 7, '7', '2013-09-13', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 226, 0, '0000-00-00 00:00:00', '2013-09-13 05:15:17'),
(227, '227', '227', 20, 9, '9', '2013-09-13', '', '', '', 'regular', 280, 350, 350, 350, 0, 0, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 227, 0, '0000-00-00 00:00:00', '2013-09-13 05:19:27'),
(228, '228', '228', 17, 6, '6', '2013-09-13', '', '', '', 'regular', 272, 340, 340, 340, 0, 0, 0, 0, '15', 41, '10', 27, '', 'admin', 'paid', 228, 0, '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(229, '229', '229', 6, 3, '3', '2013-09-13', '', '', '', 'regular', 204, 255, 255, 255, 0, 45, 0, 0, '15', 31, '10', 20, '', 'admin', 'paid', 229, 0, '0000-00-00 00:00:00', '2013-09-13 05:39:27'),
(230, '230', '230', 4, 8, '8', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 230, 0, '0000-00-00 00:00:00', '2013-09-13 05:46:10'),
(231, '231', '231', 22, 8, '8', '2013-09-13', '', '', '', 'regular', 440, 550, 550, 550, 0, 50, 0, 0, '15', 66, '10', 44, '', 'admin', 'paid', 231, 0, '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(232, '232', '232', 28, 2, '2', '2013-09-13', '', '', '', 'regular', 184, 230, 230, 230, 0, 0, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 232, 0, '0000-00-00 00:00:00', '2013-09-13 05:56:07'),
(233, '233', '233', 22, 9, '9', '2013-09-13', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 233, 0, '0000-00-00 00:00:00', '2013-09-13 05:59:08'),
(234, '234', '234', 24, 6, '6', '2013-09-13', '', '', '', 'regular', 148, 185, 185, 185, 0, 0, 0, 0, '15', 22, '10', 15, '', 'admin', 'paid', 234, 0, '0000-00-00 00:00:00', '2013-09-13 06:01:15'),
(235, '235', '235', 17, 7, '7', '2013-09-13', '', '', '', 'regular', 740, 925, 925, 925, 0, 0, 0, 0, '15', 111, '10', 74, '', 'admin', 'paid', 235, 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(236, '236', '236', 38, 1, '1', '2013-09-13', '', '', '', 'regular', 348, 435, 435, 435, 0, 65, 0, 0, '15', 52, '10', 35, '', 'admin', 'paid', 236, 0, '0000-00-00 00:00:00', '2013-09-13 06:06:32'),
(237, '237', '237', 14, 3, '3', '2013-09-13', '', '', '', 'regular', 264, 330, 330, 330, 0, 170, 0, 0, '15', 40, '10', 26, '', 'admin', 'paid', 237, 0, '0000-00-00 00:00:00', '2013-09-13 06:11:03'),
(238, '238', '238', 18, 10, '10', '2013-09-13', '', '', '', 'regular', 128, 160, 160, 160, 0, 340, 0, 0, '15', 19, '10', 13, '', 'admin', 'paid', 238, 0, '0000-00-00 00:00:00', '2013-09-13 06:12:38'),
(239, '239', '239', 16, 4, '4', '2013-09-13', '', '', '', 'regular', 108, 135, 135, 135, 0, 0, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 239, 0, '0000-00-00 00:00:00', '2013-09-13 06:14:48'),
(240, '240', '240', 4, 9, '9', '2013-09-13', '', '', '', 'regular', 128, 160, 160, 160, 0, 0, 0, 0, '15', 19, '10', 13, '', 'admin', 'paid', 240, 0, '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(241, '241', '241', 19, 13, '13', '2013-09-13', '', '', '', 'regular', 64, 80, 80, 80, 0, 420, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 241, 0, '0000-00-00 00:00:00', '2013-09-13 06:24:40'),
(242, '242', '242', 18, 11, '11', '2013-09-13', '', '', '', 'regular', 92, 115, 115, 115, 0, 385, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 242, 0, '0000-00-00 00:00:00', '2013-09-13 06:26:17'),
(243, '243', '243', 18, 12, '12', '2013-09-13', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 243, 0, '0000-00-00 00:00:00', '2013-09-13 06:28:20'),
(244, '244', '244', 40, 2, '2', '2013-09-13', '', '', '', 'regular', 124, 155, 155, 155, 0, 445, 0, 0, '15', 19, '10', 12, '', 'admin', 'paid', 244, 0, '0000-00-00 00:00:00', '2013-09-13 06:29:37'),
(245, '245', '245', 28, 3, '3', '2013-09-13', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 245, 0, '0000-00-00 00:00:00', '2013-09-13 06:30:50'),
(246, '246', '246', 24, 7, '7', '2013-09-13', '', '', '', 'regular', 704, 880, 880, 880, 0, 0, 0, 0, '15', 106, '10', 70, '', 'admin', 'paid', 246, 0, '0000-00-00 00:00:00', '2013-09-13 06:35:33'),
(247, '247', '247', 15, 4, '4', '2013-09-13', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 247, 0, '0000-00-00 00:00:00', '2013-09-13 06:37:22'),
(248, '248', '248', 38, 2, '2', '2013-09-13', '', '', '', 'regular', 320, 400, 400, 400, 0, 100, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 248, 0, '0000-00-00 00:00:00', '2013-09-13 06:38:24'),
(249, '249', '249', 37, 3, '3', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 249, 0, '0000-00-00 00:00:00', '2013-09-13 06:51:02'),
(250, '250', '250', 4, 10, '10', '2013-09-13', '', '', '', 'regular', 76, 95, 95, 95, 0, 5, 0, 0, '15', 11, '10', 8, '', 'admin', 'paid', 250, 0, '0000-00-00 00:00:00', '2013-09-13 06:56:42'),
(251, '251', '251', 20, 10, '10', '2013-09-13', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 251, 0, '0000-00-00 00:00:00', '2013-09-13 06:58:25'),
(252, '252', '252', 23, 14, '14', '2013-09-13', '', '', '', 'regular', 92, 115, 115, 115, 0, 385, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 252, 0, '0000-00-00 00:00:00', '2013-09-13 07:00:26'),
(253, '253', '253', 19, 14, '14', '2013-09-13', '', '', '', 'regular', 336, 420, 420, 420, 0, 80, 0, 0, '15', 50, '10', 34, '', 'admin', 'paid', 253, 0, '0000-00-00 00:00:00', '2013-09-13 07:05:15'),
(254, '254', '254', 28, 4, '4', '2013-09-13', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 254, 0, '0000-00-00 00:00:00', '2013-09-13 07:06:34'),
(255, '255', '255', 21, 9, '9', '2013-09-13', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 255, 0, '0000-00-00 00:00:00', '2013-09-13 07:08:18'),
(256, '256', '256', 24, 8, '8', '2013-09-13', '', '', '', 'regular', 320, 400, 400, 400, 0, 100, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 256, 0, '0000-00-00 00:00:00', '2013-09-13 07:09:21'),
(257, '257', '257', 16, 5, '5', '2013-09-13', '', '', '', 'regular', 48, 60, 60, 60, 0, 40, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 257, 0, '0000-00-00 00:00:00', '2013-09-13 07:11:02'),
(258, '258', '258', 18, 13, '13', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 258, 0, '0000-00-00 00:00:00', '2013-09-13 07:13:14');
INSERT INTO `sell_order` (`id`, `invoice_no`, `invoice_sl`, `table_id`, `table_sl`, `order_no`, `order_date`, `customer_name`, `customer_id`, `payment_mode`, `customer_type`, `amount_sub_total`, `amount_grand_total`, `paid_amount`, `cash_payment`, `card_payment`, `change_amount`, `discount_ratio`, `discount`, `vat_ratio`, `total_vat`, `service_charge_ratio`, `service_charge`, `comment`, `user_id`, `status`, `token_no`, `invoice_status`, `created`, `modified`) VALUES
(259, '259', '259', 25, 4, '4', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 445, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 259, 0, '0000-00-00 00:00:00', '2013-09-13 07:18:55'),
(260, '260', '260', 27, 12, '12', '2013-09-13', '', '', '', 'regular', 148, 185, 185, 185, 0, 0, 0, 0, '15', 22, '10', 15, '', 'admin', 'paid', 260, 0, '0000-00-00 00:00:00', '2013-09-13 07:20:22'),
(261, '261', '261', 4, 11, '11', '2013-09-13', '', '', '', 'regular', 1104, 1380, 1380, 1380, 0, 620, 0, 0, '15', 166, '10', 110, '', 'admin', 'paid', 261, 0, '0000-00-00 00:00:00', '2013-09-13 07:27:18'),
(262, '262', '262', 30, 7, '7', '2013-09-13', '', '', '', 'regular', 112, 140, 140, 140, 0, 10, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 262, 0, '0000-00-00 00:00:00', '2013-09-13 07:30:57'),
(263, '263', '263', 26, 4, '4', '2013-09-13', '', '', '', 'regular', 84, 105, 105, 105, 0, 5, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 263, 0, '0000-00-00 00:00:00', '2013-09-13 07:32:27'),
(264, '264', '264', 27, 13, '13', '2013-09-13', '', '', '', 'regular', 212, 265, 265, 265, 0, 235, 0, 0, '15', 32, '10', 21, '', 'admin', 'paid', 264, 0, '0000-00-00 00:00:00', '2013-09-13 07:34:21'),
(265, '265', '265', 19, 15, '15', '2013-09-13', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 265, 0, '0000-00-00 00:00:00', '2013-09-13 07:37:20'),
(266, '266', '266', 23, 15, '15', '2013-09-13', '', '', '', 'regular', 160, 200, 200, 200, 0, 300, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 266, 0, '0000-00-00 00:00:00', '2013-09-13 07:49:33'),
(267, '267', '267', 8, 3, '3', '2013-09-13', '', '', '', 'regular', 184, 230, 230, 230, 0, 0, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 267, 0, '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(268, '268', '268', 17, 8, '8', '2013-09-13', '', '', '', 'regular', 476, 595, 595, 595, 0, 0, 0, 0, '15', 71, '10', 48, '', 'admin', 'paid', 268, 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(269, '269', '269', 10, 5, '5', '2013-09-13', '', '', '', 'regular', 244, 305, 305, 305, 0, 195, 0, 0, '15', 37, '10', 24, '', 'admin', 'paid', 269, 0, '0000-00-00 00:00:00', '2013-09-13 07:59:58'),
(270, '270', '270', 32, 6, '6', '2013-09-13', '', '', '', 'regular', 884, 1105, 1105, 1105, 0, 0, 0, 0, '15', 133, '10', 88, '', 'admin', 'paid', 270, 0, '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(271, '271', '271', 4, 12, '12', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 271, 0, '0000-00-00 00:00:00', '2013-09-13 08:04:31'),
(272, '272', '272', 16, 6, '6', '2013-09-13', '', '', '', 'regular', 300, 375, 375, 375, 0, 125, 0, 0, '15', 45, '10', 30, '', 'admin', 'paid', 272, 0, '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(273, '273', '273', 26, 5, '5', '2013-09-13', '', '', '', 'regular', 336, 420, 420, 420, 0, 80, 0, 0, '15', 50, '10', 34, '', 'admin', 'paid', 273, 0, '0000-00-00 00:00:00', '2013-09-13 08:14:35'),
(274, '274', '274', 17, 9, '9', '2013-09-13', '', '', '', 'regular', 192, 240, 240, 240, 0, 60, 0, 0, '15', 29, '10', 19, '', 'admin', 'paid', 274, 0, '0000-00-00 00:00:00', '2013-09-13 08:18:13'),
(275, '275', '275', 27, 14, '14', '2013-09-13', '', '', '', 'regular', 48, 60, 60, 60, 0, 0, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 275, 0, '0000-00-00 00:00:00', '2013-09-13 08:20:06'),
(276, '276', '276', 23, 16, '16', '2013-09-13', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 276, 0, '0000-00-00 00:00:00', '2013-09-13 08:21:23'),
(277, '277', '277', 34, 4, '4', '2013-09-13', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 277, 0, '0000-00-00 00:00:00', '2013-09-13 08:27:46'),
(278, '278', '278', 17, 10, '10', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 278, 0, '0000-00-00 00:00:00', '2013-09-13 08:28:48'),
(279, '279', '279', 15, 5, '5', '2013-09-13', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 279, 0, '0000-00-00 00:00:00', '2013-09-13 08:29:45'),
(280, '280', '280', 23, 17, '17', '2013-09-13', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 280, 0, '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(281, '281', '281', 21, 10, '10', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 281, 0, '0000-00-00 00:00:00', '2013-09-13 08:45:09'),
(282, '282', '282', 19, 16, '16', '2013-09-13', '', '', '', 'regular', 160, 200, 200, 200, 0, 0, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 282, 0, '0000-00-00 00:00:00', '2013-09-13 08:48:17'),
(283, '283', '283', 23, 18, '18', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 283, 0, '0000-00-00 00:00:00', '2013-09-13 08:51:48'),
(284, '284', '284', 16, 7, '7', '2013-09-13', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 284, 0, '0000-00-00 00:00:00', '2013-09-13 08:59:14'),
(285, '285', '285', 43, 9, '9', '2013-09-13', '', '', '', 'regular', 944, 1180, 1180, 1180, 0, 0, 0, 0, '15', 142, '10', 94, '', 'admin', 'paid', 285, 0, '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(286, '286', '286', 34, 5, '5', '2013-09-13', '', '', '', 'regular', 624, 780, 780, 780, 0, 220, 0, 0, '15', 94, '10', 62, '', 'admin', 'paid', 286, 0, '0000-00-00 00:00:00', '2013-09-13 09:06:14'),
(287, '287', '287', 18, 14, '14', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 287, 0, '0000-00-00 00:00:00', '2013-09-13 09:08:59'),
(288, '288', '288', 11, 2, '2', '2013-09-13', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 288, 0, '0000-00-00 00:00:00', '2013-09-13 09:12:21'),
(289, '289', '289', 19, 17, '17', '2013-09-13', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 289, 0, '0000-00-00 00:00:00', '2013-09-13 09:16:18'),
(290, '290', '290', 28, 5, '5', '2013-09-13', '', '', '', 'regular', 260, 325, 325, 325, 0, 175, 0, 0, '15', 39, '10', 26, '', 'admin', 'paid', 290, 0, '0000-00-00 00:00:00', '2013-09-13 09:21:21'),
(291, '291', '291', 30, 8, '8', '2013-09-13', '', '', '', 'regular', 636, 795, 795, 795, 0, 205, 0, 0, '15', 95, '10', 64, '', 'admin', 'paid', 291, 0, '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(292, '292', '292', 35, 12, '12', '2013-09-13', '', '', '', 'regular', 368, 460, 460, 460, 0, 40, 0, 0, '15', 55, '10', 37, '', 'admin', 'paid', 292, 0, '0000-00-00 00:00:00', '2013-09-13 09:25:06'),
(293, '293', '293', 38, 3, '3', '2013-09-13', '', '', '', 'regular', 512, 640, 640, 640, 0, 0, 0, 0, '15', 77, '10', 51, '', 'admin', 'paid', 293, 0, '0000-00-00 00:00:00', '2013-09-13 09:29:07'),
(294, '294', '294', 21, 11, '11', '2013-09-13', '', '', '', 'regular', 20, 25, 25, 25, 0, 15, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 294, 0, '0000-00-00 00:00:00', '2013-09-13 09:34:05'),
(295, '295', '295', 5, 7, '7', '2013-09-13', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 295, 0, '0000-00-00 00:00:00', '2013-09-13 09:36:52'),
(296, '296', '296', 26, 6, '6', '2013-09-13', '', '', '', 'regular', 768, 960, 960, 960, 0, 0, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 296, 0, '0000-00-00 00:00:00', '2013-09-13 09:37:41'),
(297, '297', '297', 1, 12, '12', '2013-09-13', '', '', '', 'regular', 1600, 2000, 2000, 2000, 0, 0, 0, 0, '15', 240, '10', 160, '', 'admin', 'paid', 297, 0, '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(298, '298', '298', 4, 13, '13', '2013-09-14', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 298, 0, '0000-00-00 00:00:00', '2013-09-14 00:27:45'),
(299, '299', '299', 21, 12, '12', '2013-09-14', '', '', '', 'regular', 492, 615, 615, 615, 0, 385, 0, 0, '15', 74, '10', 49, '', 'admin', 'paid', 299, 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(300, '300', '300', 17, 11, '11', '2013-09-14', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 300, 0, '0000-00-00 00:00:00', '2013-09-14 00:52:51'),
(301, '301', '301', 42, 2, '2', '2013-09-14', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 301, 0, '0000-00-00 00:00:00', '2013-09-14 00:57:39'),
(302, '302', '302', 16, 8, '8', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 302, 0, '0000-00-00 00:00:00', '2013-09-14 01:08:13'),
(303, '303', '303', 15, 6, '6', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 303, 0, '0000-00-00 00:00:00', '2013-09-14 01:12:05'),
(304, '304', '304', 19, 18, '18', '2013-09-14', '', '', '', 'regular', 348, 435, 435, 435, 0, 565, 0, 0, '15', 52, '10', 35, '', 'admin', 'paid', 304, 0, '0000-00-00 00:00:00', '2013-09-14 01:14:07'),
(305, '305', '305', 18, 15, '15', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 305, 0, '0000-00-00 00:00:00', '2013-09-14 01:15:56'),
(306, '306', '306', 10, 6, '6', '2013-09-14', '', '', '', 'regular', 168, 210, 210, 210, 0, 790, 0, 0, '15', 25, '10', 17, '', 'admin', 'paid', 306, 0, '0000-00-00 00:00:00', '2013-09-14 01:34:14'),
(307, '307', '307', 43, 10, '10', '2013-09-14', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 307, 0, '0000-00-00 00:00:00', '2013-09-14 01:36:08'),
(308, '308', '308', 42, 3, '3', '2013-09-14', '', '', '', 'regular', 240, 300, 300, 300, 0, 200, 0, 0, '15', 36, '10', 24, '', 'admin', 'paid', 308, 0, '0000-00-00 00:00:00', '2013-09-14 01:48:48'),
(309, '309', '309', 27, 15, '15', '2013-09-14', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 309, 0, '0000-00-00 00:00:00', '2013-09-14 01:51:36'),
(310, '310', '310', 4, 14, '14', '2013-09-14', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 310, 0, '0000-00-00 00:00:00', '2013-09-14 01:56:18'),
(311, '311', '311', 12, 4, '4', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 311, 0, '0000-00-00 00:00:00', '2013-09-14 01:59:52'),
(312, '312', '312', 34, 6, '6', '2013-09-14', '', '', '', 'regular', 1052, 1315, 1315, 1315, 0, 185, 0, 0, '15', 158, '10', 105, '', 'admin', 'paid', 312, 0, '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(313, '313', '313', 40, 3, '3', '2013-09-14', '', '', '', 'regular', 320, 400, 400, 400, 0, 100, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 313, 0, '0000-00-00 00:00:00', '2013-09-14 02:17:16'),
(314, '314', '314', 23, 19, '19', '2013-09-14', '', '', '', 'regular', 1472, 1840, 1840, 1840, 0, 0, 0, 0, '15', 221, '10', 147, '', 'admin', 'paid', 314, 0, '0000-00-00 00:00:00', '2013-09-14 02:36:16'),
(315, '315', '315', 29, 5, '5', '2013-09-14', '', '', '', 'regular', 3212, 4015, 4015, 4015, 0, 0, 0, 0, '15', 482, '10', 321, '', 'admin', 'paid', 315, 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(316, '316', '316', 33, 6, '6', '2013-09-14', '', '', '', 'regular', 1108, 1385, 1385, 1385, 0, 0, 0, 0, '15', 166, '10', 111, '', 'admin', 'paid', 316, 0, '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(317, '317', '317', 18, 16, '16', '2013-09-14', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 317, 0, '0000-00-00 00:00:00', '2013-09-14 03:44:19'),
(318, '318', '318', 25, 5, '5', '2013-09-14', '', '', '', 'regular', 8536, 9816, 9816, 9816, 0, 184, 10, 853.6, '15', 1280, '10', 854, '', 'admin', 'paid', 318, 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(319, '319', '319', 19, 19, '19', '2013-09-14', '', '', '', 'regular', 152, 190, 190, 190, 0, 0, 0, 0, '15', 23, '10', 15, '', 'admin', 'paid', 319, 0, '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(320, '320', '320', 3, 11, '11', '2013-09-14', '', '', '', 'regular', 84, 105, 105, 105, 0, 395, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 320, 0, '0000-00-00 00:00:00', '2013-09-14 04:33:43'),
(321, '321', '321', 45, 3, '3', '2013-09-14', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 321, 0, '0000-00-00 00:00:00', '2013-09-14 04:54:06'),
(322, '322', '322', 34, 7, '7', '2013-09-14', '', '', '', 'regular', 1880, 2350, 2350, 2350, 0, 0, 0, 0, '15', 282, '10', 188, '', 'admin', 'paid', 322, 0, '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(323, '323', '323', 17, 12, '12', '2013-09-14', '', '', '', 'regular', 384, 480, 480, 480, 0, 0, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 323, 0, '0000-00-00 00:00:00', '2013-09-14 05:02:46'),
(324, '324', '324', 5, 8, '8', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 324, 0, '0000-00-00 00:00:00', '2013-09-14 05:04:51'),
(325, '325', '325', 5, 9, '9', '2013-09-14', '', '', '', 'regular', 40, 50, 50, 50, 0, 50, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 325, 0, '0000-00-00 00:00:00', '2013-09-14 05:06:59'),
(326, '326', '326', 18, 17, '17', '2013-09-14', '', '', '', 'regular', 92, 115, 115, 115, 0, 35, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 326, 0, '0000-00-00 00:00:00', '2013-09-14 05:08:23'),
(327, '327', '327', 4, 15, '15', '2013-09-14', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 327, 0, '0000-00-00 00:00:00', '2013-09-14 05:30:21'),
(328, '328', '328', 26, 7, '7', '2013-09-14', '', '', '', 'regular', 44, 55, 55, 55, 0, 15, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 328, 0, '0000-00-00 00:00:00', '2013-09-14 05:46:56'),
(329, '329', '329', 11, 3, '3', '2013-09-14', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 329, 0, '0000-00-00 00:00:00', '2013-09-14 06:04:33'),
(330, '330', '330', 12, 5, '5', '2013-09-14', '', '', '', 'regular', 132, 165, 165, 165, 0, 35, 0, 0, '15', 20, '10', 13, '', 'admin', 'paid', 330, 0, '0000-00-00 00:00:00', '2013-09-14 06:15:02'),
(331, '331', '331', 17, 13, '13', '2013-09-14', '', '', '', 'regular', 120, 150, 150, 150, 0, 350, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 331, 0, '0000-00-00 00:00:00', '2013-09-14 06:20:15'),
(332, '332', '332', 4, 16, '16', '2013-09-14', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 332, 0, '0000-00-00 00:00:00', '2013-09-14 06:23:37'),
(333, '333', '333', 17, 14, '14', '2013-09-14', '', '', '', 'regular', 60, 75, 75, 75, 0, 0, 0, 0, '15', 9, '10', 6, '', 'admin', 'paid', 333, 0, '0000-00-00 00:00:00', '2013-09-14 06:44:59'),
(334, '334', '334', 37, 4, '4', '2013-09-14', '', '', '', 'regular', 280, 350, 350, 350, 0, 150, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 334, 0, '0000-00-00 00:00:00', '2013-09-14 06:48:36'),
(335, '335', '335', 5, 10, '10', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 335, 0, '0000-00-00 00:00:00', '2013-09-14 06:49:54'),
(336, '336', '336', 35, 13, '13', '2013-09-14', '', '', '', 'regular', 308, 385, 385, 385, 0, 615, 0, 0, '15', 46, '10', 31, '', 'admin', 'paid', 336, 0, '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(337, '337', '337', 18, 18, '18', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 337, 0, '0000-00-00 00:00:00', '2013-09-14 07:00:11'),
(338, '338', '338', 40, 4, '4', '2013-09-14', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 338, 0, '0000-00-00 00:00:00', '2013-09-14 07:05:53'),
(339, '339', '339', 29, 6, '6', '2013-09-14', '', '', '', 'regular', 1024, 1280, 1280, 1280, 0, 0, 0, 0, '15', 154, '10', 102, '', 'admin', 'paid', 339, 0, '0000-00-00 00:00:00', '2013-09-14 07:13:12'),
(340, '340', '340', 31, 1, '1', '2013-09-14', '', '', '', 'regular', 916, 1145, 1145, 1145, 0, 0, 0, 0, '15', 137, '10', 92, '', 'admin', 'paid', 340, 0, '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(341, '341', '341', 26, 8, '8', '2013-09-14', '', '', '', 'regular', 480, 600, 600, 600, 0, 115, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 341, 0, '0000-00-00 00:00:00', '2013-09-14 07:22:03'),
(342, '342', '342', 12, 6, '6', '2013-09-14', '', '', '', 'regular', 1256, 1570, 1570, 1570, 0, 430, 0, 0, '15', 188, '10', 126, '', 'admin', 'paid', 342, 0, '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(343, '343', '343', 11, 4, '4', '2013-09-14', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 343, 0, '0000-00-00 00:00:00', '2013-09-14 07:27:13'),
(344, '344', '344', 9, 1, '1', '2013-09-14', '', '', '', 'regular', 1068, 1335, 1335, 1335, 0, 0, 0, 0, '15', 160, '10', 107, '', 'admin', 'paid', 344, 0, '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(345, '345', '345', 20, 11, '11', '2013-09-14', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 345, 0, '0000-00-00 00:00:00', '2013-09-14 07:54:37'),
(346, '346', '346', 23, 20, '20', '2013-09-14', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 346, 0, '0000-00-00 00:00:00', '2013-09-14 07:55:23'),
(347, '347', '347', 30, 9, '9', '2013-09-14', '', '', '', 'regular', 2048, 2560, 2560, 2560, 0, 0, 0, 0, '15', 307, '10', 205, '', 'admin', 'paid', 347, 0, '0000-00-00 00:00:00', '2013-09-14 08:10:41'),
(348, '348', '348', 4, 17, '17', '2013-09-14', '', '', '', 'regular', 72, 90, 90, 90, 0, 10, 0, 0, '15', 11, '10', 7, '', 'admin', 'paid', 348, 0, '0000-00-00 00:00:00', '2013-09-14 08:12:26'),
(349, '349', '349', 14, 4, '4', '2013-09-14', '', '', '', 'regular', 316, 395, 395, 395, 0, 0, 0, 0, '15', 47, '10', 32, '', 'admin', 'paid', 349, 0, '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(350, '350', '350', 3, 12, '12', '2013-09-14', '', '', '', 'regular', 720, 900, 900, 900, 0, 0, 0, 0, '15', 108, '10', 72, '', 'admin', 'paid', 350, 0, '0000-00-00 00:00:00', '2013-09-14 08:44:41'),
(351, '351', '351', 13, 5, '5', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 351, 0, '0000-00-00 00:00:00', '2013-09-14 08:45:31'),
(352, '352', '352', 43, 11, '11', '2013-09-14', '', '', '', 'regular', 1136, 1420, 1420, 1420, 0, 0, 0, 0, '15', 170, '10', 114, '', 'admin', 'paid', 352, 0, '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(353, '353', '353', 27, 16, '16', '2013-09-14', '', '', '', 'regular', 488, 610, 610, 610, 0, 390, 0, 0, '15', 73, '10', 49, '', 'admin', 'paid', 353, 0, '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(354, '354', '354', 45, 4, '4', '2013-09-14', '', '', '', 'regular', 640, 800, 800, 800, 0, 0, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 354, 0, '0000-00-00 00:00:00', '2013-09-14 08:57:48'),
(355, '355', '355', 45, 5, '5', '2013-09-14', '', '', '', 'regular', 480, 600, 600, 600, 0, 0, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 355, 0, '0000-00-00 00:00:00', '2013-09-14 08:58:41'),
(356, '356', '356', 34, 8, '8', '2013-09-14', '', '', '', 'regular', 1644, 2055, 2055, 2055, 0, 0, 0, 0, '15', 247, '10', 164, '', 'admin', 'paid', 356, 0, '0000-00-00 00:00:00', '2013-09-14 08:59:20'),
(357, '357', '357', 24, 9, '9', '2013-09-14', '', '', '', 'regular', 92, 115, 115, 115, 0, 35, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 357, 0, '0000-00-00 00:00:00', '2013-09-14 09:02:05'),
(358, '358', '358', 20, 12, '12', '2013-09-14', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 358, 0, '0000-00-00 00:00:00', '2013-09-14 09:04:24'),
(359, '359', '359', 16, 9, '9', '2013-09-14', '', '', '', 'regular', 20, 25, 25, 25, 0, 5, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 359, 0, '0000-00-00 00:00:00', '2013-09-14 09:06:13'),
(360, '360', '360', 4, 18, '18', '2013-09-14', '', '', '', 'regular', 184, 230, 230, 230, 0, 70, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 360, 0, '0000-00-00 00:00:00', '2013-09-14 09:07:37'),
(361, '361', '361', 27, 17, '17', '2013-09-15', '', '', '', 'regular', 224, 280, 280, 280, 0, 20, 0, 0, '15', 34, '10', 22, '', 'admin', 'paid', 361, 0, '0000-00-00 00:00:00', '2013-09-15 01:24:44'),
(362, '362', '362', 19, 20, '20', '2013-09-15', '', '', '', 'regular', 164, 205, 205, 205, 0, 45, 0, 0, '15', 25, '10', 16, '', 'admin', 'paid', 362, 0, '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(363, '363', '363', 4, 19, '19', '2013-09-15', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 363, 0, '0000-00-00 00:00:00', '2013-09-15 03:52:50'),
(364, '364', '364', 16, 10, '10', '2013-09-15', '', '', '', 'regular', 132, 165, 165, 165, 0, 35, 0, 0, '15', 20, '10', 13, '', 'admin', 'paid', 364, 0, '0000-00-00 00:00:00', '2013-09-15 04:05:59'),
(365, '365', '365', 5, 11, '11', '2013-09-15', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 365, 0, '0000-00-00 00:00:00', '2013-09-15 04:16:35'),
(366, '366', '366', 21, 13, '13', '2013-09-15', '', '', '', 'regular', 84, 105, 105, 105, 0, 895, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 366, 0, '0000-00-00 00:00:00', '2013-09-15 04:19:06'),
(367, '367', '367', 26, 9, '9', '2013-09-15', '', '', '', 'regular', 960, 1200, 1200, 1200, 0, 0, 0, 0, '15', 144, '10', 96, '', 'admin', 'paid', 367, 0, '0000-00-00 00:00:00', '2013-09-15 04:21:38'),
(368, '368', '368', 22, 10, '10', '2013-09-15', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 368, 0, '0000-00-00 00:00:00', '2013-09-15 04:37:05'),
(369, '369', '369', 17, 15, '15', '2013-09-15', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 369, 0, '0000-00-00 00:00:00', '2013-09-15 04:51:52'),
(370, '370', '370', 6, 4, '4', '2013-09-15', '', '', '', 'regular', 764, 955, 955, 955, 0, 45, 0, 0, '15', 115, '10', 76, '', 'admin', 'paid', 370, 0, '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(371, '371', '371', 4, 20, '20', '2013-09-15', '', '', '', 'regular', 140, 175, 175, 175, 0, 25, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 371, 0, '0000-00-00 00:00:00', '2013-09-15 05:13:55'),
(372, '372', '372', 18, 19, '19', '2013-09-15', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 372, 0, '0000-00-00 00:00:00', '2013-09-15 05:25:32'),
(373, '373', '373', 13, 6, '6', '2013-09-15', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 373, 0, '0000-00-00 00:00:00', '2013-09-15 05:30:00'),
(374, '374', '374', 28, 6, '6', '2013-09-15', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 374, 0, '0000-00-00 00:00:00', '2013-09-15 05:31:12'),
(375, '375', '375', 16, 11, '11', '2013-09-15', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 375, 0, '0000-00-00 00:00:00', '2013-09-15 05:32:33'),
(376, '376', '376', 19, 21, '21', '2013-09-15', '', '', '', 'regular', 140, 175, 175, 175, 0, 0, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 376, 0, '0000-00-00 00:00:00', '2013-09-15 05:33:41'),
(377, '377', '377', 10, 7, '7', '2013-09-15', '', '', '', 'regular', 48, 60, 60, 60, 0, 0, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 377, 0, '0000-00-00 00:00:00', '2013-09-15 05:36:38'),
(378, '378', '378', 11, 5, '5', '2013-09-15', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 378, 0, '0000-00-00 00:00:00', '2013-09-15 05:57:06'),
(379, '379', '379', 31, 2, '2', '2013-09-15', '', '', '', 'regular', 1168, 1460, 1460, 1460, 0, 40, 0, 0, '15', 175, '10', 117, '', 'admin', 'paid', 379, 0, '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(380, '380', '380', 20, 13, '13', '2013-09-15', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 380, 0, '0000-00-00 00:00:00', '2013-09-15 06:04:44'),
(381, '381', '381', 28, 7, '7', '2013-09-15', '', '', '', 'regular', 176, 220, 220, 220, 0, 0, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 381, 0, '0000-00-00 00:00:00', '2013-09-15 06:10:08'),
(382, '382', '382', 4, 21, '21', '2013-09-15', '', '', '', 'regular', 84, 105, 105, 105, 0, 45, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 382, 0, '0000-00-00 00:00:00', '2013-09-15 06:20:04'),
(383, '383', '383', 5, 12, '12', '2013-09-15', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 383, 0, '0000-00-00 00:00:00', '2013-09-15 06:26:32'),
(384, '384', '384', 4, 22, '22', '2013-09-15', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 384, 0, '0000-00-00 00:00:00', '2013-09-15 06:30:58'),
(385, '385', '385', 33, 7, '7', '2013-09-15', '', '', '', 'regular', 1572, 1965, 1965, 1965, 0, 35, 0, 0, '15', 236, '10', 157, '', 'admin', 'paid', 385, 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(386, '386', '386', 3, 13, '13', '2013-09-15', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 386, 0, '0000-00-00 00:00:00', '2013-09-15 07:03:36'),
(387, '387', '387', 15, 7, '7', '2013-09-15', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 387, 0, '0000-00-00 00:00:00', '2013-09-15 07:39:35'),
(388, '388', '388', 15, 8, '8', '2013-09-15', '', '', '', 'regular', 236, 295, 295, 295, 0, 5, 0, 0, '15', 35, '10', 24, '', 'admin', 'paid', 388, 0, '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(389, '389', '389', 31, 3, '3', '2013-09-15', '', '', '', 'regular', 276, 345, 345, 345, 0, 0, 0, 0, '15', 41, '10', 28, '', 'admin', 'paid', 389, 0, '0000-00-00 00:00:00', '2013-09-15 08:09:39'),
(390, '390', '390', 32, 7, '7', '2013-09-15', '', '', '', 'regular', 820, 1025, 1025, 1025, 0, 0, 0, 0, '15', 123, '10', 82, '', 'admin', 'paid', 390, 0, '0000-00-00 00:00:00', '2013-09-15 08:12:31'),
(391, '391', '391', 22, 11, '11', '2013-09-15', '', '', '', 'regular', 92, 115, 115, 115, 0, 385, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 391, 0, '0000-00-00 00:00:00', '2013-09-15 08:25:52'),
(392, '392', '392', 33, 8, '8', '2013-09-15', '', '', '', 'regular', 848, 1060, 1060, 1060, 0, 40, 0, 0, '15', 127, '10', 85, '', 'admin', 'paid', 392, 0, '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(393, '393', '393', 21, 14, '14', '2013-09-16', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 393, 0, '0000-00-00 00:00:00', '2013-09-16 00:46:22'),
(394, '394', '394', 32, 8, '8', '2013-09-16', '', '', '', 'regular', 280, 350, 350, 350, 0, 0, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 394, 0, '0000-00-00 00:00:00', '2013-09-16 02:00:26'),
(395, '395', '395', 38, 4, '4', '2013-09-16', '', '', '', 'regular', 160, 200, 200, 200, 0, 300, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 395, 0, '0000-00-00 00:00:00', '2013-09-16 02:05:48'),
(396, '396', '396', 22, 12, '12', '2013-09-16', '', '', '', 'regular', 324, 405, 405, 405, 0, 95, 0, 0, '15', 49, '10', 32, '', 'admin', 'paid', 396, 0, '0000-00-00 00:00:00', '2013-09-16 02:34:38'),
(397, '397', '397', 18, 20, '20', '2013-09-16', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 397, 0, '0000-00-00 00:00:00', '2013-09-16 04:06:30'),
(398, '398', '398', 30, 10, '10', '2013-09-16', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 398, 0, '0000-00-00 00:00:00', '2013-09-16 04:25:23'),
(399, '399', '399', 23, 21, '21', '2013-09-16', '', '', '', 'regular', 384, 480, 480, 480, 0, 20, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 399, 0, '0000-00-00 00:00:00', '2013-09-16 04:30:09'),
(400, '400', '400', 4, 23, '23', '2013-09-16', '', '', '', 'regular', 524, 655, 655, 655, 0, 45, 0, 0, '15', 79, '10', 52, '', 'admin', 'paid', 400, 0, '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(401, '401', '401', 12, 7, '7', '2013-09-16', '', '', '', 'regular', 56, 70, 70, 70, 0, 430, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 401, 0, '0000-00-00 00:00:00', '2013-09-16 05:06:24'),
(402, '402', '402', 23, 22, '22', '2013-09-16', '', '', '', 'regular', 384, 480, 480, 480, 0, 520, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 402, 0, '0000-00-00 00:00:00', '2013-09-16 05:24:11'),
(403, '403', '403', 28, 8, '8', '2013-09-16', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 403, 0, '0000-00-00 00:00:00', '2013-09-16 05:51:19'),
(404, '404', '404', 6, 5, '5', '2013-09-16', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 404, 0, '0000-00-00 00:00:00', '2013-09-16 06:03:26'),
(405, '405', '405', 26, 10, '10', '2013-09-16', '', '', '', 'regular', 1556, 1945, 1945, 1945, 0, 55, 0, 0, '15', 233, '10', 156, '', 'admin', 'paid', 405, 0, '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(406, '406', '406', 24, 10, '10', '2013-09-16', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 406, 0, '0000-00-00 00:00:00', '2013-09-16 06:25:40'),
(407, '407', '407', 35, 14, '14', '2013-09-16', '', '', '', 'regular', 164, 205, 205, 205, 0, 295, 0, 0, '15', 25, '10', 16, '', 'admin', 'paid', 407, 0, '0000-00-00 00:00:00', '2013-09-16 06:56:27'),
(408, '408', '408', 20, 14, '14', '2013-09-16', '', '', '', 'regular', 636, 795, 795, 795, 0, 5, 0, 0, '15', 95, '10', 64, '', 'admin', 'paid', 408, 0, '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(409, '409', '409', 37, 5, '5', '2013-09-16', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 409, 0, '0000-00-00 00:00:00', '2013-09-16 07:26:14'),
(410, '410', '410', 17, 16, '16', '2013-09-16', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 410, 0, '0000-00-00 00:00:00', '2013-09-16 07:37:31'),
(411, '411', '411', 20, 15, '15', '2013-09-16', '', '', '', 'regular', 84, 105, 105, 105, 0, 5, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 411, 0, '0000-00-00 00:00:00', '2013-09-16 07:58:09'),
(412, '412', '412', 22, 13, '13', '2013-09-16', '', '', '', 'regular', 184, 230, 230, 230, 0, 0, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 412, 0, '0000-00-00 00:00:00', '2013-09-16 08:04:53'),
(413, '413', '413', 27, 18, '18', '2013-09-16', '', '', '', 'regular', 1292, 1615, 1615, 1615, 0, 0, 0, 0, '15', 194, '10', 129, '', 'admin', 'paid', 413, 0, '0000-00-00 00:00:00', '2013-09-16 08:09:00'),
(414, '414', '414', 34, 9, '9', '2013-09-16', '', '', '', 'regular', 980, 1225, 1225, 1225, 0, 0, 0, 0, '15', 147, '10', 98, '', 'admin', 'paid', 414, 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(415, '415', '415', 25, 6, '6', '2013-09-16', '', '', '', 'regular', 516, 645, 645, 645, 0, 0, 0, 0, '15', 77, '10', 52, '', 'admin', 'paid', 415, 0, '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(416, '416', '416', 25, 7, '7', '2013-09-16', '', '', '', 'regular', 492, 615, 615, 615, 0, 0, 0, 0, '15', 74, '10', 49, '', 'admin', 'paid', 416, 0, '0000-00-00 00:00:00', '2013-09-16 08:24:31'),
(417, '417', '417', 31, 4, '4', '2013-09-16', '', '', '', 'regular', 588, 735, 735, 735, 0, 0, 0, 0, '15', 88, '10', 59, '', 'admin', 'paid', 417, 0, '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(418, '418', '418', 19, 22, '22', '2013-09-16', '', '', '', 'regular', 152, 190, 190, 190, 0, 0, 0, 0, '15', 23, '10', 15, '', 'admin', 'paid', 418, 0, '0000-00-00 00:00:00', '2013-09-16 08:47:08'),
(419, '419', '419', 19, 23, '23', '2013-09-16', '', '', '', 'regular', 112, 140, 140, 140, 0, 360, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 419, 0, '0000-00-00 00:00:00', '2013-09-16 08:54:50'),
(420, '420', '420', 18, 21, '21', '2013-09-16', '', '', '', 'regular', 196, 245, 245, 245, 0, 55, 0, 0, '15', 29, '10', 20, '', 'admin', 'paid', 420, 0, '0000-00-00 00:00:00', '2013-09-16 08:58:00'),
(421, '421', '421', 22, 14, '14', '2013-09-17', '', '', '', 'regular', 140, 175, 175, 175, 0, 0, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 421, 0, '0000-00-00 00:00:00', '2013-09-17 00:36:54'),
(422, '422', '422', 30, 11, '11', '2013-09-17', '', '', '', 'regular', 236, 295, 295, 295, 0, 0, 0, 0, '15', 35, '10', 24, '', 'admin', 'paid', 422, 0, '0000-00-00 00:00:00', '2013-09-17 00:37:54'),
(423, '423', '423', 13, 7, '7', '2013-09-17', '', '', '', 'regular', 280, 350, 350, 350, 0, 50, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 423, 0, '0000-00-00 00:00:00', '2013-09-17 01:00:08'),
(424, '424', '424', 4, 24, '24', '2013-09-17', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 424, 0, '0000-00-00 00:00:00', '2013-09-17 01:05:56'),
(425, '425', '425', 19, 24, '24', '2013-09-17', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 425, 0, '0000-00-00 00:00:00', '2013-09-17 01:40:54'),
(426, '426', '426', 20, 16, '16', '2013-09-17', '', '', '', 'regular', 264, 330, 330, 330, 0, 0, 0, 0, '15', 40, '10', 26, '', 'admin', 'paid', 426, 0, '0000-00-00 00:00:00', '2013-09-17 01:56:17'),
(427, '427', '427', 36, 2, '2', '2013-09-17', '', '', '', 'regular', 88, 110, 110, 110, 0, 390, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 427, 0, '0000-00-00 00:00:00', '2013-09-17 01:57:22'),
(428, '428', '428', 10, 8, '8', '2013-09-17', '', '', '', 'regular', 748, 935, 935, 935, 0, 65, 0, 0, '15', 112, '10', 75, '', 'admin', 'paid', 428, 0, '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(429, '429', '429', 4, 25, '25', '2013-09-17', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 429, 0, '0000-00-00 00:00:00', '2013-09-17 02:46:39'),
(430, '430', '430', 5, 13, '13', '2013-09-17', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 430, 0, '0000-00-00 00:00:00', '2013-09-17 03:39:00'),
(431, '431', '431', 25, 8, '8', '2013-09-17', '', '', '', 'regular', 40, 50, 50, 50, 0, 0, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 431, 0, '0000-00-00 00:00:00', '2013-09-17 03:49:09'),
(432, '432', '432', 4, 26, '26', '2013-09-17', '', '', '', 'regular', 108, 135, 135, 135, 0, 865, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 432, 0, '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(433, '433', '433', 26, 11, '11', '2013-09-17', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 433, 0, '0000-00-00 00:00:00', '2013-09-17 04:29:45'),
(434, '434', '434', 33, 9, '9', '2013-09-17', '', '', '', 'regular', 872, 1090, 1090, 1090, 0, 0, 0, 0, '15', 131, '10', 87, '', 'admin', 'paid', 434, 0, '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(435, '435', '435', 32, 9, '9', '2013-09-17', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 435, 0, '0000-00-00 00:00:00', '2013-09-17 04:51:47'),
(436, '436', '436', 26, 12, '12', '2013-09-17', '', '', '', 'regular', 368, 460, 460, 460, 0, 40, 0, 0, '15', 55, '10', 37, '', 'admin', 'paid', 436, 0, '0000-00-00 00:00:00', '2013-09-17 04:54:24'),
(437, '437', '437', 20, 17, '17', '2013-09-17', '', '', '', 'regular', 580, 725, 725, 725, 0, 75, 0, 0, '15', 87, '10', 58, '', 'admin', 'paid', 437, 0, '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(438, '438', '438', 16, 12, '12', '2013-09-17', '', '', '', 'regular', 236, 295, 295, 295, 0, 205, 0, 0, '15', 35, '10', 24, '', 'admin', 'paid', 438, 0, '0000-00-00 00:00:00', '2013-09-17 05:47:51'),
(439, '439', '439', 35, 15, '15', '2013-09-17', '', '', '', 'regular', 528, 660, 660, 660, 0, 340, 0, 0, '15', 79, '10', 53, '', 'admin', 'paid', 439, 0, '0000-00-00 00:00:00', '2013-09-17 06:18:47'),
(440, '440', '440', 4, 27, '27', '2013-09-17', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 440, 0, '0000-00-00 00:00:00', '2013-09-17 06:32:09'),
(441, '441', '441', 19, 25, '25', '2013-09-17', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 441, 0, '0000-00-00 00:00:00', '2013-09-17 06:40:09'),
(442, '442', '442', 32, 10, '10', '2013-09-17', '', '', '', 'regular', 300, 375, 375, 375, 0, 125, 0, 0, '15', 45, '10', 30, '', 'admin', 'paid', 442, 0, '0000-00-00 00:00:00', '2013-09-17 06:44:05'),
(443, '443', '443', 32, 11, '11', '2013-09-17', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 443, 0, '0000-00-00 00:00:00', '2013-09-17 06:45:06'),
(444, '444', '444', 32, 12, '12', '2013-09-17', '', '', '', 'regular', 208, 260, 260, 260, 0, 240, 0, 0, '15', 31, '10', 21, '', 'admin', 'paid', 444, 0, '0000-00-00 00:00:00', '2013-09-17 06:48:06'),
(445, '445', '445', 32, 13, '13', '2013-09-17', '', '', '', 'regular', 480, 600, 600, 600, 0, 400, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 445, 0, '0000-00-00 00:00:00', '2013-09-17 06:49:28'),
(446, '446', '446', 32, 14, '14', '2013-09-17', '', '', '', 'regular', 480, 600, 600, 600, 0, 0, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 446, 0, '0000-00-00 00:00:00', '2013-09-17 06:50:56'),
(447, '447', '447', 32, 15, '15', '2013-09-17', '', '', '', 'regular', 408, 510, 510, 510, 0, 490, 0, 0, '15', 61, '10', 41, '', 'admin', 'paid', 447, 0, '0000-00-00 00:00:00', '2013-09-17 06:52:08'),
(448, '448', '448', 21, 15, '15', '2013-09-17', '', '', '', 'regular', 204, 255, 255, 255, 0, 0, 0, 0, '15', 31, '10', 20, '', 'admin', 'paid', 448, 0, '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(449, '449', '449', 26, 13, '13', '2013-09-17', '', '', '', 'regular', 768, 960, 960, 960, 0, 0, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 449, 0, '0000-00-00 00:00:00', '2013-09-17 06:59:32'),
(450, '450', '450', 22, 15, '15', '2013-09-17', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 450, 0, '0000-00-00 00:00:00', '2013-09-17 07:06:13'),
(451, '451', '451', 23, 23, '23', '2013-09-17', '', '', '', 'regular', 1080, 1350, 1350, 1350, 0, 650, 0, 0, '15', 162, '10', 108, '', 'admin', 'paid', 451, 0, '0000-00-00 00:00:00', '2013-09-17 07:19:30'),
(452, '452', '452', 9, 2, '2', '2013-09-17', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 452, 0, '0000-00-00 00:00:00', '2013-09-17 07:31:58'),
(453, '453', '453', 34, 10, '10', '2013-09-17', '', '', '', 'regular', 260, 325, 325, 325, 0, 175, 0, 0, '15', 39, '10', 26, '', 'admin', 'paid', 453, 0, '0000-00-00 00:00:00', '2013-09-17 07:38:14'),
(454, '454', '454', 18, 22, '22', '2013-09-17', '', '', '', 'regular', 84, 105, 105, 105, 0, 5, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 454, 0, '0000-00-00 00:00:00', '2013-09-17 07:40:06'),
(455, '455', '455', 20, 18, '18', '2013-09-17', '', '', '', 'regular', 320, 400, 400, 400, 0, 600, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 455, 0, '0000-00-00 00:00:00', '2013-09-17 07:41:18'),
(456, '456', '456', 29, 7, '7', '2013-09-17', '', '', '', 'regular', 736, 920, 920, 920, 0, 0, 0, 0, '15', 110, '10', 74, '', 'admin', 'paid', 456, 0, '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(457, '457', '457', 19, 26, '26', '2013-09-17', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 457, 0, '0000-00-00 00:00:00', '2013-09-17 09:01:52'),
(458, '458', '458', 23, 24, '24', '2013-09-17', '', '', '', 'regular', 448, 560, 560, 560, 0, 0, 0, 0, '15', 67, '10', 45, '', 'admin', 'paid', 458, 0, '0000-00-00 00:00:00', '2013-09-17 09:04:32'),
(459, '459', '459', 19, 27, '27', '2013-09-17', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 459, 0, '0000-00-00 00:00:00', '2013-09-17 09:08:41'),
(460, '460', '460', 27, 19, '19', '2013-09-17', '', '', '', 'regular', 1724, 2155, 2155, 2155, 0, 0, 0, 0, '15', 259, '10', 172, '', 'admin', 'paid', 460, 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(461, '461', '461', 4, 28, '28', '2013-09-19', '', '', '', 'regular', 220, 275, 275, 275, 0, 225, 0, 0, '15', 33, '10', 22, '', 'admin', 'paid', 461, 0, '0000-00-00 00:00:00', '2013-09-19 01:41:02'),
(462, '462', '462', 33, 10, '10', '2013-09-19', '', '', '', 'regular', 2112, 2640, 2640, 2640, 0, 360, 0, 0, '15', 317, '10', 211, '', 'admin', 'paid', 462, 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(463, '463', '463', 27, 20, '20', '2013-09-19', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 463, 0, '0000-00-00 00:00:00', '2013-09-19 02:54:43'),
(464, '464', '464', 33, 11, '11', '2013-09-19', '', '', '', 'regular', 1308, 1635, 1635, 1635, 0, 0, 0, 0, '15', 196, '10', 131, '', 'admin', 'paid', 464, 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(465, '465', '465', 32, 16, '16', '2013-09-19', '', '', '', 'regular', 268, 335, 335, 335, 0, 165, 0, 0, '15', 40, '10', 27, '', 'admin', 'paid', 465, 0, '0000-00-00 00:00:00', '2013-09-19 03:32:28'),
(466, '466', '466', 19, 28, '28', '2013-09-19', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 466, 0, '0000-00-00 00:00:00', '2013-09-19 04:00:04'),
(467, '467', '467', 43, 12, '12', '2013-09-19', '', '', '', 'regular', 556, 695, 695, 695, 0, 0, 0, 0, '15', 83, '10', 56, '', 'admin', 'paid', 467, 0, '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(468, '468', '468', 25, 9, '9', '2013-09-19', '', '', '', 'regular', 228, 285, 285, 285, 0, 0, 0, 0, '15', 34, '10', 23, '', 'admin', 'paid', 468, 0, '0000-00-00 00:00:00', '2013-09-19 05:31:42'),
(469, '469', '469', 24, 11, '11', '2013-09-19', '', '', '', 'regular', 768, 960, 960, 960, 0, 0, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 469, 0, '0000-00-00 00:00:00', '2013-09-19 05:32:29'),
(470, '470', '470', 4, 29, '29', '2013-09-19', '', '', '', 'regular', 276, 345, 345, 345, 0, 55, 0, 0, '15', 41, '10', 28, '', 'admin', 'paid', 470, 0, '0000-00-00 00:00:00', '2013-09-19 05:35:13'),
(471, '471', '471', 6, 6, '6', '2013-09-19', '', '', '', 'regular', 104, 130, 130, 130, 0, 0, 0, 0, '15', 16, '10', 10, '', 'admin', 'paid', 471, 0, '0000-00-00 00:00:00', '2013-09-19 05:46:49'),
(472, '472', '472', 5, 14, '14', '2013-09-19', '', '', '', 'regular', 236, 295, 295, 295, 0, 0, 0, 0, '15', 35, '10', 24, '', 'admin', 'paid', 472, 0, '0000-00-00 00:00:00', '2013-09-19 05:48:33'),
(473, '473', '473', 28, 9, '9', '2013-09-19', '', '', '', 'regular', 1532, 1915, 1915, 1915, 0, 85, 0, 0, '15', 230, '10', 153, '', 'admin', 'paid', 473, 0, '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(474, '474', '474', 34, 11, '11', '2013-09-19', '', '', '', 'regular', 1256, 1570, 1570, 1570, 0, 0, 0, 0, '15', 188, '10', 126, '', 'admin', 'paid', 474, 0, '0000-00-00 00:00:00', '2013-09-19 05:57:49'),
(475, '475', '475', 35, 16, '16', '2013-09-19', '', '', '', 'regular', 440, 550, 550, 550, 0, 450, 0, 0, '15', 66, '10', 44, '', 'admin', 'paid', 475, 0, '0000-00-00 00:00:00', '2013-09-19 06:11:39'),
(476, '476', '476', 15, 9, '9', '2013-09-19', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 476, 0, '0000-00-00 00:00:00', '2013-09-19 06:33:07'),
(477, '477', '477', 4, 30, '30', '2013-09-19', '', '', '', 'regular', 104, 130, 130, 130, 0, 0, 0, 0, '15', 16, '10', 10, '', 'admin', 'paid', 477, 0, '0000-00-00 00:00:00', '2013-09-19 06:47:45'),
(478, '478', '478', 13, 8, '8', '2013-09-19', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 478, 0, '0000-00-00 00:00:00', '2013-09-19 06:57:12'),
(479, '479', '479', 27, 21, '21', '2013-09-19', '', '', '', 'regular', 292, 365, 365, 365, 0, 0, 0, 0, '15', 44, '10', 29, '', 'admin', 'paid', 479, 0, '0000-00-00 00:00:00', '2013-09-19 07:32:32'),
(480, '480', '480', 27, 22, '22', '2013-09-19', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 480, 0, '0000-00-00 00:00:00', '2013-09-19 07:34:48'),
(481, '481', '481', 29, 8, '8', '2013-09-19', '', '', '', 'regular', 1684, 2105, 2105, 2105, 0, 0, 0, 0, '15', 253, '10', 168, '', 'admin', 'paid', 481, 0, '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(482, '482', '482', 10, 9, '9', '2013-09-19', '', '', '', 'regular', 376, 470, 470, 470, 0, 30, 0, 0, '15', 56, '10', 38, '', 'admin', 'paid', 482, 0, '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(483, '483', '483', 24, 12, '12', '2013-09-19', '', '', '', 'regular', 208, 260, 260, 260, 0, 240, 0, 0, '15', 31, '10', 21, '', 'admin', 'paid', 483, 0, '0000-00-00 00:00:00', '2013-09-19 08:01:44'),
(484, '484', '484', 34, 12, '12', '2013-09-19', '', '', '', 'regular', 504, 630, 630, 630, 0, 370, 0, 0, '15', 76, '10', 50, '', 'admin', 'paid', 484, 0, '0000-00-00 00:00:00', '2013-09-19 08:04:15'),
(485, '485', '485', 16, 13, '13', '2013-09-19', '', '', '', 'regular', 548, 685, 685, 685, 0, 0, 0, 0, '15', 82, '10', 55, '', 'admin', 'paid', 485, 0, '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(486, '486', '486', 15, 10, '10', '2013-09-19', '', '', '', 'regular', 2024, 2530, 2530, 2530, 0, 0, 0, 0, '15', 304, '10', 202, '', 'admin', 'paid', 486, 0, '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(487, '487', '487', 20, 19, '19', '2013-09-19', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 487, 0, '0000-00-00 00:00:00', '2013-09-19 08:39:01'),
(488, '488', '488', 22, 16, '16', '2013-09-19', '', '', '', 'regular', 428, 535, 535, 535, 0, 65, 0, 0, '15', 64, '10', 43, '', 'admin', 'paid', 488, 0, '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(489, '489', '489', 17, 17, '17', '2013-09-20', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 489, 0, '0000-00-00 00:00:00', '2013-09-20 00:22:39'),
(490, '490', '490', 2, 21, '21', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 490, 0, '0000-00-00 00:00:00', '2013-09-20 02:01:08'),
(491, '491', '491', 38, 5, '5', '2013-09-20', '', '', '', 'regular', 784, 980, 980, 980, 0, 0, 0, 0, '15', 118, '10', 78, '', 'admin', 'paid', 491, 0, '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(492, '492', '492', 4, 31, '31', '2013-09-20', '', '', '', 'regular', 40, 50, 50, 50, 0, 50, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 492, 0, '0000-00-00 00:00:00', '2013-09-20 02:02:44'),
(493, '493', '493', 34, 13, '13', '2013-09-20', '', '', '', 'regular', 1836, 2295, 2295, 2295, 0, 0, 0, 0, '15', 275, '10', 184, '', 'admin', 'paid', 493, 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(494, '494', '494', 27, 23, '23', '2013-09-20', '', '', '', 'regular', 864, 1080, 1080, 1080, 0, 0, 0, 0, '15', 130, '10', 86, '', 'admin', 'paid', 494, 0, '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(495, '495', '495', 25, 10, '10', '2013-09-20', '', '', '', 'regular', 540, 675, 675, 675, 0, 0, 0, 0, '15', 81, '10', 54, '', 'admin', 'paid', 495, 0, '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(496, '496', '496', 23, 25, '25', '2013-09-20', '', '', '', 'regular', 560, 700, 700, 700, 0, 0, 0, 0, '15', 84, '10', 56, '', 'admin', 'paid', 496, 0, '0000-00-00 00:00:00', '2013-09-20 03:24:13'),
(497, '497', '497', 26, 14, '14', '2013-09-20', '', '', '', 'regular', 412, 515, 515, 515, 0, 0, 0, 0, '15', 62, '10', 41, '', 'admin', 'paid', 497, 0, '0000-00-00 00:00:00', '2013-09-20 03:42:05'),
(498, '498', '498', 15, 11, '11', '2013-09-20', '', '', '', 'regular', 184, 230, 230, 230, 0, 270, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 498, 0, '0000-00-00 00:00:00', '2013-09-20 04:20:16'),
(499, '499', '499', 17, 18, '18', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 499, 0, '0000-00-00 00:00:00', '2013-09-20 04:21:57'),
(500, '500', '500', 18, 23, '23', '2013-09-20', '', '', '', 'regular', 360, 450, 450, 450, 0, 0, 0, 0, '15', 54, '10', 36, '', 'admin', 'paid', 500, 0, '0000-00-00 00:00:00', '2013-09-20 04:27:50'),
(501, '501', '501', 12, 8, '8', '2013-09-20', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 501, 0, '0000-00-00 00:00:00', '2013-09-20 04:30:19'),
(502, '502', '502', 23, 26, '26', '2013-09-20', '', '', '', 'regular', 288, 360, 360, 360, 0, 0, 0, 0, '15', 43, '10', 29, '', 'admin', 'paid', 502, 0, '0000-00-00 00:00:00', '2013-09-20 04:44:56'),
(503, '503', '503', 5, 15, '15', '2013-09-20', '', '', '', 'regular', 40, 50, 50, 50, 0, 50, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 503, 0, '0000-00-00 00:00:00', '2013-09-20 04:54:48'),
(504, '504', '504', 11, 6, '6', '2013-09-20', '', '', '', 'regular', 176, 220, 220, 220, 0, 280, 0, 0, '15', 26, '10', 18, '', 'admin', 'paid', 504, 0, '0000-00-00 00:00:00', '2013-09-20 05:05:24'),
(505, '505', '505', 4, 32, '32', '2013-09-20', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 505, 0, '0000-00-00 00:00:00', '2013-09-20 05:08:26'),
(506, '506', '506', 32, 17, '17', '2013-09-20', '', '', '', 'regular', 792, 990, 990, 990, 0, 0, 0, 0, '15', 119, '10', 79, '', 'admin', 'paid', 506, 0, '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(507, '507', '507', 25, 11, '11', '2013-09-20', '', '', '', 'regular', 468, 585, 585, 585, 0, 15, 0, 0, '15', 70, '10', 47, '', 'admin', 'paid', 507, 0, '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(508, '508', '508', 23, 27, '27', '2013-09-20', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 508, 0, '0000-00-00 00:00:00', '2013-09-20 05:22:03'),
(509, '509', '509', 4, 33, '33', '2013-09-20', '', '', '', 'regular', 300, 375, 375, 375, 0, 0, 0, 0, '15', 45, '10', 30, '', 'admin', 'paid', 509, 0, '0000-00-00 00:00:00', '2013-09-20 05:23:58'),
(510, '510', '510', 4, 34, '34', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 510, 0, '0000-00-00 00:00:00', '2013-09-20 05:25:27'),
(511, '511', '511', 10, 10, '10', '2013-09-20', '', '', '', 'regular', 64, 80, 80, 80, 0, 0, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 511, 0, '0000-00-00 00:00:00', '2013-09-20 05:29:02');
INSERT INTO `sell_order` (`id`, `invoice_no`, `invoice_sl`, `table_id`, `table_sl`, `order_no`, `order_date`, `customer_name`, `customer_id`, `payment_mode`, `customer_type`, `amount_sub_total`, `amount_grand_total`, `paid_amount`, `cash_payment`, `card_payment`, `change_amount`, `discount_ratio`, `discount`, `vat_ratio`, `total_vat`, `service_charge_ratio`, `service_charge`, `comment`, `user_id`, `status`, `token_no`, `invoice_status`, `created`, `modified`) VALUES
(512, '512', '512', 16, 14, '14', '2013-09-20', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 512, 0, '0000-00-00 00:00:00', '2013-09-20 05:46:18'),
(513, '513', '513', 4, 35, '35', '2013-09-20', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 513, 0, '0000-00-00 00:00:00', '2013-09-20 05:51:14'),
(514, '514', '514', 4, 36, '36', '2013-09-20', '', '', '', 'regular', 144, 180, 180, 180, 0, 20, 0, 0, '15', 22, '10', 14, '', 'admin', 'paid', 514, 0, '0000-00-00 00:00:00', '2013-09-20 05:52:36'),
(515, '515', '515', 15, 12, '12', '2013-09-20', '', '', '', 'regular', 92, 115, 115, 115, 0, 5, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 515, 0, '0000-00-00 00:00:00', '2013-09-20 05:59:39'),
(516, '516', '516', 35, 17, '17', '2013-09-20', '', '', '', 'regular', 184, 230, 230, 230, 0, 20, 0, 0, '15', 28, '10', 18, '', 'admin', 'paid', 516, 0, '0000-00-00 00:00:00', '2013-09-20 06:11:16'),
(517, '517', '517', 29, 9, '9', '2013-09-20', '', '', '', 'regular', 392, 490, 490, 490, 0, 10, 0, 0, '15', 59, '10', 39, '', 'admin', 'paid', 517, 0, '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(518, '518', '518', 8, 4, '4', '2013-09-20', '', '', '', 'regular', 204, 255, 255, 255, 0, 0, 0, 0, '15', 31, '10', 20, '', 'admin', 'paid', 518, 0, '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(519, '519', '519', 12, 9, '9', '2013-09-20', '', '', '', 'regular', 140, 175, 175, 175, 0, 0, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 519, 0, '0000-00-00 00:00:00', '2013-09-20 06:26:34'),
(520, '520', '520', 25, 12, '12', '2013-09-20', '', '', '', 'regular', 264, 330, 330, 330, 0, 170, 0, 0, '15', 40, '10', 26, '', 'admin', 'paid', 520, 0, '0000-00-00 00:00:00', '2013-09-20 06:27:17'),
(521, '521', '521', 33, 12, '12', '2013-09-20', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 521, 0, '0000-00-00 00:00:00', '2013-09-20 06:41:59'),
(522, '522', '522', 19, 29, '29', '2013-09-20', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 522, 0, '0000-00-00 00:00:00', '2013-09-20 06:43:29'),
(523, '523', '523', 5, 16, '16', '2013-09-20', '', '', '', 'regular', 64, 80, 80, 80, 0, 420, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 523, 0, '0000-00-00 00:00:00', '2013-09-20 06:44:51'),
(524, '524', '524', 28, 10, '10', '2013-09-20', '', '', '', 'regular', 296, 370, 370, 370, 0, 0, 0, 0, '15', 44, '10', 30, '', 'admin', 'paid', 524, 0, '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(525, '525', '525', 25, 13, '13', '2013-09-20', '', '', '', 'regular', 112, 140, 140, 140, 0, 60, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 525, 0, '0000-00-00 00:00:00', '2013-09-20 06:56:25'),
(526, '526', '526', 27, 24, '24', '2013-09-20', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 526, 0, '0000-00-00 00:00:00', '2013-09-20 07:00:00'),
(527, '527', '527', 6, 7, '7', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 5, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 527, 0, '0000-00-00 00:00:00', '2013-09-20 07:03:19'),
(528, '528', '528', 12, 10, '10', '2013-09-20', '', '', '', 'regular', 144, 180, 180, 180, 0, 320, 0, 0, '15', 22, '10', 14, '', 'admin', 'paid', 528, 0, '0000-00-00 00:00:00', '2013-09-20 07:08:27'),
(529, '529', '529', 17, 19, '19', '2013-09-20', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 529, 0, '0000-00-00 00:00:00', '2013-09-20 07:11:04'),
(530, '530', '530', 11, 7, '7', '2013-09-20', '', '', '', 'regular', 108, 135, 135, 135, 0, 65, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 530, 0, '0000-00-00 00:00:00', '2013-09-20 07:12:07'),
(531, '531', '531', 32, 18, '18', '2013-09-20', '', '', '', 'regular', 480, 600, 600, 600, 0, 0, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 531, 0, '0000-00-00 00:00:00', '2013-09-20 07:17:50'),
(532, '532', '532', 7, 4, '4', '2013-09-20', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 532, 0, '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(533, '533', '533', 11, 8, '8', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 533, 0, '0000-00-00 00:00:00', '2013-09-20 07:31:34'),
(534, '534', '534', 28, 11, '11', '2013-09-20', '', '', '', 'regular', 1624, 2030, 2030, 2030, 0, 0, 0, 0, '15', 244, '10', 162, '', 'admin', 'paid', 534, 0, '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(535, '535', '535', 23, 28, '28', '2013-09-20', '', '', '', 'regular', 872, 1090, 1090, 1090, 0, 0, 0, 0, '15', 131, '10', 87, '', 'admin', 'paid', 535, 0, '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(536, '536', '536', 4, 37, '37', '2013-09-20', '', '', '', 'regular', 84, 105, 105, 105, 0, 5, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 536, 0, '0000-00-00 00:00:00', '2013-09-20 07:51:48'),
(537, '537', '537', 23, 29, '29', '2013-09-20', '', '', '', 'regular', 20, 25, 25, 25, 0, 5, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 537, 0, '0000-00-00 00:00:00', '2013-09-20 07:52:54'),
(538, '538', '538', 2, 22, '22', '2013-09-20', '', '', '', 'regular', 148, 185, 185, 185, 0, 0, 0, 0, '15', 22, '10', 15, '', 'admin', 'paid', 538, 0, '0000-00-00 00:00:00', '2013-09-20 07:58:40'),
(539, '539', '539', 10, 11, '11', '2013-09-20', '', '', '', 'regular', 84, 105, 105, 105, 0, 5, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 539, 0, '0000-00-00 00:00:00', '2013-09-20 07:59:35'),
(540, '540', '540', 15, 13, '13', '2013-09-20', '', '', '', 'regular', 112, 140, 140, 140, 0, 0, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 540, 0, '0000-00-00 00:00:00', '2013-09-20 08:15:43'),
(541, '541', '541', 24, 13, '13', '2013-09-20', '', '', '', 'regular', 400, 500, 500, 500, 0, 0, 0, 0, '15', 60, '10', 40, '', 'admin', 'paid', 541, 0, '0000-00-00 00:00:00', '2013-09-20 08:21:22'),
(542, '542', '542', 13, 9, '9', '2013-09-20', '', '', '', 'regular', 172, 215, 215, 215, 0, 285, 0, 0, '15', 26, '10', 17, '', 'admin', 'paid', 542, 0, '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(543, '543', '543', 33, 13, '13', '2013-09-20', '', '', '', 'regular', 1376, 1720, 1720, 1720, 0, 0, 0, 0, '15', 206, '10', 138, '', 'admin', 'paid', 543, 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(544, '544', '544', 38, 6, '6', '2013-09-20', '', '', '', 'regular', 168, 210, 210, 210, 0, 0, 0, 0, '15', 25, '10', 17, '', 'admin', 'paid', 544, 0, '0000-00-00 00:00:00', '2013-09-20 08:32:30'),
(545, '545', '545', 4, 38, '38', '2013-09-20', '', '', '', 'regular', 132, 165, 165, 165, 0, 0, 0, 0, '15', 20, '10', 13, '', 'admin', 'paid', 545, 0, '0000-00-00 00:00:00', '2013-09-20 08:35:17'),
(546, '546', '546', 26, 15, '15', '2013-09-20', '', '', '', 'regular', 1852, 2315, 2315, 2315, 0, 0, 0, 0, '15', 278, '10', 185, '', 'admin', 'paid', 546, 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(547, '547', '547', 16, 15, '15', '2013-09-20', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 547, 0, '0000-00-00 00:00:00', '2013-09-20 09:04:23'),
(548, '548', '548', 11, 9, '9', '2013-09-20', '', '', '', 'regular', 108, 135, 135, 135, 0, 65, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 548, 0, '0000-00-00 00:00:00', '2013-09-20 09:28:35'),
(549, '549', '549', 31, 5, '5', '2013-09-20', '', '', '', 'regular', 1264, 1580, 1580, 1580, 0, 0, 0, 0, '15', 190, '10', 126, '', 'admin', 'paid', 549, 0, '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(550, '550', '550', 28, 12, '12', '2013-09-20', '', '', '', 'regular', 1696, 2120, 2120, 2120, 0, 0, 0, 0, '15', 254, '10', 170, '', 'admin', 'paid', 550, 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(551, '551', '551', 41, 2, '2', '2013-09-20', '', '', '', 'regular', 324, 405, 405, 405, 0, 45, 0, 0, '15', 49, '10', 32, '', 'admin', 'paid', 551, 0, '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(552, '552', '552', 28, 13, '13', '2013-09-20', '', '', '', 'regular', 84, 105, 105, 105, 0, 15, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 552, 0, '0000-00-00 00:00:00', '2013-09-20 09:51:39'),
(553, '553', '553', 16, 16, '16', '2013-09-21', '', '', '', 'regular', 248, 310, 310, 310, 0, 0, 0, 0, '15', 37, '10', 25, '', 'admin', 'paid', 553, 0, '0000-00-00 00:00:00', '2013-09-21 00:35:42'),
(554, '554', '554', 20, 20, '20', '2013-09-21', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 554, 0, '0000-00-00 00:00:00', '2013-09-21 00:55:36'),
(555, '555', '555', 17, 20, '20', '2013-09-21', '', '', '', 'regular', 172, 215, 215, 215, 0, 285, 0, 0, '15', 26, '10', 17, '', 'admin', 'paid', 555, 0, '0000-00-00 00:00:00', '2013-09-21 00:57:23'),
(556, '556', '556', 4, 39, '39', '2013-09-21', '', '', '', 'regular', 92, 115, 115, 115, 0, 0, 0, 0, '15', 14, '10', 9, '', 'admin', 'paid', 556, 0, '0000-00-00 00:00:00', '2013-09-21 00:59:28'),
(557, '557', '557', 15, 14, '14', '2013-09-21', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 557, 0, '0000-00-00 00:00:00', '2013-09-21 01:09:05'),
(558, '558', '558', 22, 17, '17', '2013-09-21', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 558, 0, '0000-00-00 00:00:00', '2013-09-21 01:16:30'),
(559, '559', '559', 12, 11, '11', '2013-09-21', '', '', '', 'regular', 112, 140, 140, 140, 0, 410, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 559, 0, '0000-00-00 00:00:00', '2013-09-21 01:27:58'),
(560, '560', '560', 31, 6, '6', '2013-09-21', '', '', '', 'regular', 640, 800, 800, 800, 0, 0, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 560, 0, '0000-00-00 00:00:00', '2013-09-21 01:35:49'),
(561, '561', '561', 32, 19, '19', '2013-09-21', '', '', '', 'regular', 412, 515, 515, 515, 0, 85, 0, 0, '15', 62, '10', 41, '', 'admin', 'paid', 561, 0, '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(562, '562', '562', 19, 30, '30', '2013-09-21', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 562, 0, '0000-00-00 00:00:00', '2013-09-21 02:00:32'),
(563, '563', '563', 19, 31, '31', '2013-09-21', '', '', '', 'regular', 112, 140, 140, 140, 0, 10, 0, 0, '15', 17, '10', 11, '', 'admin', 'paid', 563, 0, '0000-00-00 00:00:00', '2013-09-21 02:40:15'),
(564, '564', '564', 23, 30, '30', '2013-09-21', '', '', '', 'regular', 1208, 1510, 1510, 1510, 0, 0, 0, 0, '15', 181, '10', 121, '', 'admin', 'paid', 564, 0, '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(565, '565', '565', 5, 17, '17', '2013-09-21', '', '', '', 'regular', 128, 160, 160, 160, 0, 340, 0, 0, '15', 19, '10', 13, '', 'admin', 'paid', 565, 0, '0000-00-00 00:00:00', '2013-09-21 04:01:17'),
(566, '566', '566', 14, 5, '5', '2013-09-21', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 566, 0, '0000-00-00 00:00:00', '2013-09-21 04:02:22'),
(567, '567', '567', 4, 40, '40', '2013-09-21', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 567, 0, '0000-00-00 00:00:00', '2013-09-21 04:09:41'),
(568, '568', '568', 5, 18, '18', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 568, 0, '0000-00-00 00:00:00', '2013-09-21 04:14:19'),
(569, '569', '569', 24, 14, '14', '2013-09-21', '', '', '', 'regular', 320, 400, 400, 400, 0, 100, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 569, 0, '0000-00-00 00:00:00', '2013-09-21 04:31:50'),
(570, '570', '570', 24, 15, '15', '2013-09-21', '', '', '', 'regular', 28, 35, 35, 35, 0, 65, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 570, 0, '0000-00-00 00:00:00', '2013-09-21 04:33:03'),
(571, '571', '571', 42, 4, '4', '2013-09-21', '', '', '', 'regular', 2616, 3270, 3270, 3270, 0, 0, 0, 0, '15', 392, '10', 262, '', 'admin', 'paid', 571, 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(572, '572', '572', 42, 5, '5', '2013-09-21', '', '', '', 'regular', 48, 60, 60, 60, 0, 0, 0, 0, '15', 7, '10', 5, '', 'admin', 'paid', 572, 0, '0000-00-00 00:00:00', '2013-09-21 04:56:57'),
(573, '573', '573', 21, 16, '16', '2013-09-21', '', '', '', 'regular', 20, 25, 25, 25, 0, 75, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 573, 0, '0000-00-00 00:00:00', '2013-09-21 05:04:14'),
(574, '574', '574', 27, 25, '25', '2013-09-21', '', '', '', 'regular', 576, 720, 720, 720, 0, 280, 0, 0, '15', 86, '10', 58, '', 'admin', 'paid', 574, 0, '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(575, '575', '575', 19, 32, '32', '2013-09-21', '', '', '', 'regular', 60, 75, 75, 75, 0, 25, 0, 0, '15', 9, '10', 6, '', 'admin', 'paid', 575, 0, '0000-00-00 00:00:00', '2013-09-21 05:13:33'),
(576, '576', '576', 4, 41, '41', '2013-09-21', '', '', '', 'regular', 40, 50, 50, 50, 0, 0, 0, 0, '15', 6, '10', 4, '', 'admin', 'paid', 576, 0, '0000-00-00 00:00:00', '2013-09-21 05:16:03'),
(577, '577', '577', 32, 20, '20', '2013-09-21', '', '', '', 'regular', 528, 660, 660, 660, 0, 0, 0, 0, '15', 79, '10', 53, '', 'admin', 'paid', 577, 0, '0000-00-00 00:00:00', '2013-09-21 05:16:47'),
(578, '578', '578', 32, 21, '21', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 578, 0, '0000-00-00 00:00:00', '2013-09-21 05:19:17'),
(579, '579', '579', 4, 42, '42', '2013-09-21', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 579, 0, '0000-00-00 00:00:00', '2013-09-21 05:46:11'),
(580, '580', '580', 20, 21, '21', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 580, 0, '0000-00-00 00:00:00', '2013-09-21 05:52:25'),
(581, '581', '581', 35, 18, '18', '2013-09-21', '', '', '', 'regular', 108, 135, 135, 135, 0, 15, 0, 0, '15', 16, '10', 11, '', 'admin', 'paid', 581, 0, '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(582, '582', '582', 20, 22, '22', '2013-09-21', '', '', '', 'regular', 224, 280, 280, 280, 0, 0, 0, 0, '15', 34, '10', 22, '', 'admin', 'paid', 582, 0, '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(583, '583', '583', 19, 33, '33', '2013-09-21', '', '', '', 'regular', 84, 105, 105, 105, 0, 395, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 583, 0, '0000-00-00 00:00:00', '2013-09-21 06:23:41'),
(584, '584', '584', 32, 22, '22', '2013-09-21', '', '', '', 'regular', 904, 1130, 1130, 1130, 0, 0, 0, 0, '15', 136, '10', 90, '', 'admin', 'paid', 584, 0, '0000-00-00 00:00:00', '2013-09-21 06:26:18'),
(585, '585', '585', 6, 8, '8', '2013-09-21', '', '', '', 'regular', 240, 300, 300, 300, 0, 700, 0, 0, '15', 36, '10', 24, '', 'admin', 'paid', 585, 0, '0000-00-00 00:00:00', '2013-09-21 06:30:52'),
(586, '586', '586', 30, 12, '12', '2013-09-21', '', '', '', 'regular', 236, 295, 295, 295, 0, 5, 0, 0, '15', 35, '10', 24, '', 'admin', 'paid', 586, 0, '0000-00-00 00:00:00', '2013-09-21 06:36:48'),
(587, '587', '587', 30, 13, '13', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 587, 0, '0000-00-00 00:00:00', '2013-09-21 06:38:25'),
(588, '588', '588', 24, 16, '16', '2013-09-21', '', '', '', 'regular', 3164, 3955, 3955, 3955, 0, 0, 0, 0, '15', 475, '10', 316, '', 'admin', 'paid', 588, 0, '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(589, '589', '589', 17, 21, '21', '2013-09-21', '', '', '', 'regular', 320, 400, 400, 400, 0, 100, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 589, 0, '0000-00-00 00:00:00', '2013-09-21 06:45:55'),
(590, '590', '590', 15, 15, '15', '2013-09-21', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 590, 0, '0000-00-00 00:00:00', '2013-09-21 06:53:21'),
(591, '591', '591', 25, 14, '14', '2013-09-21', '', '', '', 'regular', 664, 830, 830, 830, 0, 0, 0, 0, '15', 100, '10', 66, '', 'admin', 'paid', 591, 0, '0000-00-00 00:00:00', '2013-09-21 07:04:59'),
(592, '592', '592', 28, 14, '14', '2013-09-21', '', '', '', 'regular', 2040, 2550, 2550, 2550, 0, 0, 0, 0, '15', 306, '10', 204, '', 'admin', 'paid', 592, 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(593, '593', '593', 19, 34, '34', '2013-09-21', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 593, 0, '0000-00-00 00:00:00', '2013-09-21 07:15:01'),
(594, '594', '594', 34, 14, '14', '2013-09-21', '', '', '', 'regular', 2428, 3035, 3035, 3035, 0, 465, 0, 0, '15', 364, '10', 243, '', 'admin', 'paid', 594, 0, '0000-00-00 00:00:00', '2013-09-21 07:27:39'),
(595, '595', '595', 20, 23, '23', '2013-09-21', '', '', '', 'regular', 300, 375, 375, 375, 0, 625, 0, 0, '15', 45, '10', 30, '', 'admin', 'paid', 595, 0, '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(596, '596', '596', 45, 6, '6', '2013-09-21', '', '', '', 'regular', 384, 480, 480, 480, 0, 0, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 596, 0, '0000-00-00 00:00:00', '2013-09-21 07:38:43'),
(597, '597', '597', 24, 17, '17', '2013-09-21', '', '', '', 'regular', 552, 690, 690, 690, 0, 0, 0, 0, '15', 83, '10', 55, '', 'admin', 'paid', 597, 0, '0000-00-00 00:00:00', '2013-09-21 07:39:18'),
(598, '598', '598', 19, 35, '35', '2013-09-21', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 598, 0, '0000-00-00 00:00:00', '2013-09-21 07:40:56'),
(599, '599', '599', 33, 14, '14', '2013-09-21', '', '', '', 'regular', 756, 945, 945, 945, 0, 0, 0, 0, '15', 113, '10', 76, '', 'admin', 'paid', 599, 0, '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(600, '600', '600', 29, 10, '10', '2013-09-21', '', '', '', 'regular', 608, 760, 760, 760, 0, 0, 0, 0, '15', 91, '10', 61, '', 'admin', 'paid', 600, 0, '0000-00-00 00:00:00', '2013-09-21 07:47:56'),
(601, '601', '601', 29, 11, '11', '2013-09-21', '', '', '', 'regular', 848, 1060, 1060, 1060, 0, 0, 0, 0, '15', 127, '10', 85, '', 'admin', 'paid', 601, 0, '0000-00-00 00:00:00', '2013-09-21 07:49:58'),
(602, '602', '602', 43, 13, '13', '2013-09-21', '', '', '', 'regular', 1280, 1600, 1600, 1600, 0, 400, 0, 0, '15', 192, '10', 128, '', 'admin', 'paid', 602, 0, '0000-00-00 00:00:00', '2013-09-21 07:54:08'),
(603, '603', '603', 1, 13, '13', '2013-09-21', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 603, 0, '0000-00-00 00:00:00', '2013-09-21 07:59:13'),
(604, '604', '604', 5, 19, '19', '2013-09-21', '', '', '', 'regular', 2400, 3000, 3000, 3000, 0, 0, 0, 0, '15', 360, '10', 240, '', 'admin', 'paid', 604, 0, '0000-00-00 00:00:00', '2013-09-21 08:10:44'),
(605, '605', '605', 5, 20, '20', '2013-09-21', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 605, 0, '0000-00-00 00:00:00', '2013-09-21 08:12:20'),
(606, '606', '606', 4, 43, '43', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 606, 0, '0000-00-00 00:00:00', '2013-09-21 08:16:40'),
(607, '607', '607', 25, 15, '15', '2013-09-21', '', '', '', 'regular', 708, 885, 885, 885, 0, 0, 0, 0, '15', 106, '10', 71, '', 'admin', 'paid', 607, 0, '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(608, '608', '608', 18, 24, '24', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 608, 0, '0000-00-00 00:00:00', '2013-09-21 08:42:05'),
(609, '609', '609', 28, 15, '15', '2013-09-21', '', '', '', 'regular', 2880, 3600, 3600, 3600, 0, 0, 0, 0, '15', 432, '10', 288, '', 'admin', 'paid', 609, 0, '0000-00-00 00:00:00', '2013-09-21 08:46:25'),
(610, '610', '610', 19, 36, '36', '2013-09-21', '', '', '', 'regular', 44, 55, 55, 55, 0, 0, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 610, 0, '0000-00-00 00:00:00', '2013-09-21 09:00:45'),
(611, '611', '611', 2, 23, '23', '2013-09-22', '', '', '', 'regular', 20, 25, 25, 25, 0, 25, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 611, 0, '0000-00-00 00:00:00', '2013-09-22 01:15:15'),
(612, '612', '612', 4, 44, '44', '2013-09-22', '', '', '', 'regular', 120, 150, 150, 150, 0, 350, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 612, 0, '0000-00-00 00:00:00', '2013-09-22 01:50:56'),
(613, '613', '613', 16, 17, '17', '2013-09-22', '', '', '', 'regular', 120, 150, 150, 150, 0, 0, 0, 0, '15', 18, '10', 12, '', 'admin', 'paid', 613, 0, '0000-00-00 00:00:00', '2013-09-22 02:34:49'),
(614, '614', '614', 13, 10, '10', '2013-09-22', '', '', '', 'regular', 140, 175, 175, 175, 0, 325, 0, 0, '15', 21, '10', 14, '', 'admin', 'paid', 614, 0, '0000-00-00 00:00:00', '2013-09-22 02:36:11'),
(615, '615', '615', 12, 12, '12', '2013-09-22', '', '', '', 'regular', 56, 70, 70, 70, 0, 0, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 615, 0, '0000-00-00 00:00:00', '2013-09-22 03:26:48'),
(616, '616', '616', 31, 7, '7', '2013-09-22', '', '', '', 'regular', 384, 480, 480, 480, 0, 20, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 616, 0, '0000-00-00 00:00:00', '2013-09-22 03:37:30'),
(617, '617', '617', 25, 16, '16', '2013-09-22', '', '', '', 'regular', 372, 465, 465, 465, 0, 35, 0, 0, '15', 56, '10', 37, '', 'admin', 'paid', 617, 0, '0000-00-00 00:00:00', '2013-09-22 04:06:36'),
(618, '618', '618', 22, 18, '18', '2013-09-22', '', '', '', 'regular', 180, 225, 225, 225, 0, 25, 0, 0, '15', 27, '10', 18, '', 'admin', 'paid', 618, 0, '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(619, '619', '619', 14, 6, '6', '2013-09-22', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 619, 0, '0000-00-00 00:00:00', '2013-09-22 04:53:14'),
(620, '620', '620', 25, 17, '17', '2013-09-22', '', '', '', 'regular', 384, 480, 480, 480, 0, 20, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 620, 0, '0000-00-00 00:00:00', '2013-09-22 04:54:10'),
(621, '621', '621', 10, 12, '12', '2013-09-22', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 621, 0, '0000-00-00 00:00:00', '2013-09-22 06:35:22'),
(622, '622', '622', 18, 25, '25', '2013-09-22', '', '', '', 'regular', 228, 285, 285, 285, 0, 215, 0, 0, '15', 34, '10', 23, '', 'admin', 'paid', 622, 0, '0000-00-00 00:00:00', '2013-09-22 06:46:11'),
(623, '623', '623', 8, 5, '5', '2013-09-22', '', '', '', 'regular', 404, 505, 505, 505, 0, 0, 0, 0, '15', 61, '10', 40, '', 'admin', 'paid', 623, 0, '0000-00-00 00:00:00', '2013-09-22 06:58:58'),
(624, '624', '624', 17, 22, '22', '2013-09-22', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 624, 0, '0000-00-00 00:00:00', '2013-09-22 07:09:45'),
(625, '625', '625', 35, 19, '19', '2013-09-22', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 625, 0, '0000-00-00 00:00:00', '2013-09-22 08:43:02'),
(626, '626', '626', 29, 12, '12', '2013-09-22', '', '', '', 'regular', 1536, 1920, 1920, 1920, 0, 0, 0, 0, '15', 230, '10', 154, '', 'admin', 'paid', 626, 0, '0000-00-00 00:00:00', '2013-09-22 08:49:44'),
(627, '627', '627', 23, 31, '31', '2013-09-22', '', '', '', 'regular', 2400, 3000, 3000, 3000, 0, 0, 0, 0, '15', 360, '10', 240, '', 'admin', 'paid', 627, 0, '0000-00-00 00:00:00', '2013-09-22 09:08:20'),
(628, '628', '628', 37, 6, '6', '2013-09-23', '', '', '', 'regular', 536, 670, 670, 670, 0, 0, 0, 0, '15', 80, '10', 54, '', 'admin', 'paid', 628, 0, '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(629, '629', '629', 27, 26, '26', '2013-09-23', '', '', '', 'regular', 356, 445, 445, 445, 0, 0, 0, 0, '15', 53, '10', 36, '', 'admin', 'paid', 629, 0, '0000-00-00 00:00:00', '2013-09-23 00:35:56'),
(630, '630', '630', 20, 24, '24', '2013-09-23', '', '', '', 'regular', 204, 255, 255, 255, 0, 45, 0, 0, '15', 31, '10', 20, '', 'admin', 'paid', 630, 0, '0000-00-00 00:00:00', '2013-09-23 01:50:44'),
(631, '631', '631', 33, 15, '15', '2013-09-23', '', '', '', 'regular', 228, 285, 285, 285, 0, 0, 0, 0, '15', 34, '10', 23, '', 'admin', 'paid', 631, 0, '0000-00-00 00:00:00', '2013-09-23 02:01:25'),
(632, '632', '632', 13, 11, '11', '2013-09-23', '', '', '', 'regular', 400, 500, 500, 500, 0, 0, 0, 0, '15', 60, '10', 40, '', 'admin', 'paid', 632, 0, '0000-00-00 00:00:00', '2013-09-23 02:02:11'),
(633, '633', '633', 4, 45, '45', '2013-09-23', '', '', '', 'regular', 20, 25, 25, 25, 0, 5, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 633, 0, '0000-00-00 00:00:00', '2013-09-23 02:17:06'),
(634, '634', '634', 7, 5, '5', '2013-09-23', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 634, 0, '0000-00-00 00:00:00', '2013-09-23 02:24:28'),
(635, '635', '635', 29, 13, '13', '2013-09-23', '', '', '', 'regular', 536, 670, 670, 670, 0, 0, 0, 0, '15', 80, '10', 54, '', 'admin', 'paid', 635, 0, '0000-00-00 00:00:00', '2013-09-23 02:50:13'),
(636, '636', '636', 24, 18, '18', '2013-09-23', '', '', '', 'regular', 1040, 1300, 1300, 1300, 0, 0, 0, 0, '15', 156, '10', 104, '', 'admin', 'paid', 636, 0, '0000-00-00 00:00:00', '2013-09-23 03:08:13'),
(637, '637', '637', 37, 7, '7', '2013-09-23', '', '', '', 'regular', 744, 930, 930, 930, 0, 0, 0, 0, '15', 112, '10', 74, '', 'admin', 'paid', 637, 0, '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(638, '638', '638', 19, 37, '37', '2013-09-23', '', '', '', 'regular', 160, 200, 200, 200, 0, 300, 0, 0, '15', 24, '10', 16, '', 'admin', 'paid', 638, 0, '0000-00-00 00:00:00', '2013-09-23 04:14:23'),
(639, '639', '639', 14, 7, '7', '2013-09-23', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 639, 0, '0000-00-00 00:00:00', '2013-09-23 04:45:13'),
(640, '640', '640', 4, 46, '46', '2013-09-23', '', '', '', 'regular', 28, 35, 35, 35, 0, 5, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 640, 0, '0000-00-00 00:00:00', '2013-09-23 04:51:29'),
(641, '641', '641', 31, 8, '8', '2013-09-23', '', '', '', 'regular', 268, 335, 335, 335, 0, 0, 0, 0, '15', 40, '10', 27, '', 'admin', 'paid', 641, 0, '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(642, '642', '642', 20, 25, '25', '2013-09-23', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 642, 0, '0000-00-00 00:00:00', '2013-09-23 05:55:56'),
(643, '643', '643', 4, 47, '47', '2013-09-23', '', '', '', 'regular', 28, 35, 35, 35, 0, 15, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 643, 0, '0000-00-00 00:00:00', '2013-09-23 06:18:50'),
(644, '644', '644', 20, 26, '26', '2013-09-23', '', '', '', 'regular', 280, 350, 350, 350, 0, 650, 0, 0, '15', 42, '10', 28, '', 'admin', 'paid', 644, 0, '0000-00-00 00:00:00', '2013-09-23 06:20:19'),
(645, '645', '645', 35, 20, '20', '2013-09-23', '', '', '', 'regular', 772, 965, 965, 965, 0, 0, 0, 0, '15', 116, '10', 77, '', 'admin', 'paid', 645, 0, '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(646, '646', '646', 16, 18, '18', '2013-09-23', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 646, 0, '0000-00-00 00:00:00', '2013-09-23 07:56:09'),
(647, '647', '647', 18, 26, '26', '2013-09-23', '', '', '', 'regular', 244, 305, 305, 305, 0, 0, 0, 0, '15', 37, '10', 24, '', 'admin', 'paid', 647, 0, '0000-00-00 00:00:00', '2013-09-23 08:18:35'),
(648, '648', '648', 20, 27, '27', '2013-09-23', '', '', '', 'regular', 44, 55, 55, 55, 0, 45, 0, 0, '15', 7, '10', 4, '', 'admin', 'paid', 648, 0, '0000-00-00 00:00:00', '2013-09-23 08:22:09'),
(649, '649', '649', 4, 48, '48', '2013-09-24', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 649, 0, '0000-00-00 00:00:00', '2013-09-24 01:22:24'),
(650, '650', '650', 14, 8, '8', '2013-09-24', '', '', '', 'regular', 384, 480, 480, 480, 0, 0, 0, 0, '15', 58, '10', 38, '', 'admin', 'paid', 650, 0, '0000-00-00 00:00:00', '2013-09-24 01:32:39'),
(651, '651', '651', 19, 38, '38', '2013-09-24', '', '', '', 'regular', 64, 80, 80, 80, 0, 20, 0, 0, '15', 10, '10', 6, '', 'admin', 'paid', 651, 0, '0000-00-00 00:00:00', '2013-09-24 01:51:26'),
(652, '652', '652', 14, 9, '9', '2013-09-24', '', '', '', 'regular', 128, 160, 160, 160, 0, 340, 0, 0, '15', 19, '10', 13, '', 'admin', 'paid', 652, 0, '0000-00-00 00:00:00', '2013-09-24 01:53:18'),
(653, '653', '653', 15, 16, '16', '2013-09-24', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 653, 0, '0000-00-00 00:00:00', '2013-09-24 02:00:11'),
(654, '654', '654', 19, 39, '39', '2013-09-24', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 654, 0, '0000-00-00 00:00:00', '2013-09-24 02:52:07'),
(655, '655', '655', 18, 27, '27', '2013-09-24', '', '', '', 'regular', 88, 110, 110, 110, 0, 0, 0, 0, '15', 13, '10', 9, '', 'admin', 'paid', 655, 0, '0000-00-00 00:00:00', '2013-09-24 02:52:55'),
(656, '656', '656', 14, 10, '10', '2013-09-24', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 656, 0, '0000-00-00 00:00:00', '2013-09-24 03:09:55'),
(657, '657', '657', 27, 27, '27', '2013-09-24', '', '', '', 'regular', 1268, 1585, 1585, 1585, 0, 0, 0, 0, '15', 190, '10', 127, '', 'admin', 'paid', 657, 0, '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(658, '658', '658', 1, 14, '14', '2013-09-24', '', '', '', 'regular', 28, 35, 35, 35, 0, 0, 0, 0, '15', 4, '10', 3, '', 'admin', 'paid', 658, 0, '0000-00-00 00:00:00', '2013-09-24 03:21:52'),
(659, '659', '659', 35, 21, '21', '2013-09-24', '', '', '', 'regular', 296, 370, 370, 370, 0, 130, 0, 0, '15', 44, '10', 30, '', 'admin', 'paid', 659, 0, '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(660, '660', '660', 26, 16, '16', '2013-09-24', '', '', '', 'regular', 768, 960, 960, 960, 0, 0, 0, 0, '15', 115, '10', 77, '', 'admin', 'paid', 660, 0, '0000-00-00 00:00:00', '2013-09-24 03:30:55'),
(661, '661', '661', 32, 23, '23', '2013-09-24', '', '', '', 'regular', 700, 875, 875, 875, 0, 125, 0, 0, '15', 105, '10', 70, '', 'admin', 'paid', 661, 0, '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(662, '662', '662', 34, 15, '15', '2013-09-24', '', '', '', 'regular', 884, 1105, 1105, 1105, 0, 395, 0, 0, '15', 133, '10', 88, '', 'admin', 'paid', 662, 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(663, '663', '663', 29, 14, '14', '2013-09-24', '', '', '', 'regular', 688, 860, 860, 860, 0, 140, 0, 0, '15', 103, '10', 69, '', 'admin', 'paid', 663, 0, '0000-00-00 00:00:00', '2013-09-24 06:51:26'),
(664, '664', '664', 20, 28, '28', '2013-09-24', '', '', '', 'regular', 320, 400, 400, 400, 0, 0, 0, 0, '15', 48, '10', 32, '', 'admin', 'paid', 664, 0, '0000-00-00 00:00:00', '2013-09-24 07:12:34'),
(665, '665', '665', 24, 19, '19', '2013-09-24', '', '', '', 'regular', 480, 600, 600, 600, 0, 0, 0, 0, '15', 72, '10', 48, '', 'admin', 'paid', 665, 0, '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(666, '666', '666', 19, 40, '40', '2013-09-24', '', '', '', 'regular', 84, 105, 105, 105, 0, 0, 0, 0, '15', 13, '10', 8, '', 'admin', 'paid', 666, 0, '0000-00-00 00:00:00', '2013-09-24 07:19:16'),
(667, '667', '667', 28, 16, '16', '2013-09-24', '', '', '', 'regular', 660, 825, 825, 825, 0, 175, 0, 0, '15', 99, '10', 66, '', 'admin', 'paid', 667, 0, '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(668, '668', '668', 18, 28, '28', '2013-09-24', '', '', '', 'regular', 620, 775, 775, 775, 0, 0, 0, 0, '15', 93, '10', 62, '', 'admin', 'paid', 668, 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(669, '669', '669', 24, 20, '20', '2013-09-24', '', '', '', 'regular', 20, 25, 25, 25, 0, 0, 0, 0, '15', 3, '10', 2, '', 'admin', 'paid', 669, 0, '0000-00-00 00:00:00', '2013-09-24 07:33:42'),
(670, '670', '670', 30, 14, '14', '2013-09-24', '', '', '', 'regular', 900, 1125, 1125, 1125, 0, 0, 0, 0, '15', 135, '10', 90, '', 'admin', 'paid', 670, 0, '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(671, '671', '671', 13, 12, '12', '2013-09-24', '', '', '', 'regular', 640, 800, 800, 800, 0, 200, 0, 0, '15', 96, '10', 64, '', 'admin', 'paid', 671, 0, '0000-00-00 00:00:00', '2013-09-24 08:14:36'),
(672, '672', '672', 33, 16, '16', '2013-09-24', '', '', '', 'regular', 812, 1015, 1015, 1015, 0, 5, 0, 0, '15', 122, '10', 81, '', 'admin', 'paid', 672, 0, '0000-00-00 00:00:00', '2013-09-24 08:24:28'),
(673, '673', '673', 10, 13, '13', '2013-09-24', '', '', '', 'regular', 56, 70, 70, 70, 0, 30, 0, 0, '15', 8, '10', 6, '', 'admin', 'paid', 673, 0, '0000-00-00 00:00:00', '2013-09-24 08:31:36'),
(674, '674', '674', 32, 24, '24', '2013-09-24', '', '', '', 'regular', 172, 215, 215, 215, 0, 0, 0, 0, '15', 26, '10', 17, '', 'admin', 'paid', 674, 0, '0000-00-00 00:00:00', '2013-09-24 08:32:21'),
(675, '675', '675', 7, 6, '6', '2013-09-24', '', '', '', 'regular', 136, 170, 170, 170, 0, 30, 0, 0, '15', 20, '10', 14, '', 'admin', 'paid', 675, 0, '0000-00-00 00:00:00', '2013-09-24 08:39:43'),
(676, '676', '676', 16, 19, '19', '2013-09-24', '', '', '', 'regular', 1368, 1710, 1710, 1710, 0, 0, 0, 0, '15', 205, '10', 137, '', 'admin', 'paid', 676, 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(677, '677', '677', 14, 11, '11', '2013-09-24', '', '', '', 'regular', 600, 750, 750, 750, 0, 0, 0, 0, '15', 90, '10', 60, '', 'admin', 'paid', 677, 0, '0000-00-00 00:00:00', '2013-09-24 08:46:54'),
(678, '678', '678', 15, 17, '17', '2013-09-24', '', '', '', 'regular', 1672, 2090, 2090, 2090, 0, 10, 0, 0, '15', 251, '10', 167, '', 'admin', 'paid', 678, 0, '0000-00-00 00:00:00', '2013-09-24 08:50:41'),
(679, '679', '679', 10, 14, '14', '2013-10-02', 'dfggfd', '', '', 'regular', 240, 300, 300, 300, 0, 0, 0, 0, '15', 36, '10', 24, 'test', 'admin', 'paid', 679, 0, '0000-00-00 00:00:00', '2013-10-01 22:57:10'),
(680, '680', '680', 5, 21, '21', '2013-10-02', '', '', '', 'regular', 240, 300, 300, 0, 300, 0, 0, 0, '15', 36, '10', 24, '', 'admin', 'paid', 680, 0, '0000-00-00 00:00:00', '2013-10-02 03:05:46'),
(681, '681', '681', 5, 22, '22', '2013-10-05', '', '', '', 'regular', 240, 252, 252, 252, 0, 0, 0, 24, '15', 36, '0', 0, '', 'admin', 'paid', 681, 0, '0000-00-00 00:00:00', '2013-10-05 03:16:22'),
(682, '682', '682', 5, 23, '23', '2013-11-24', 'sasa', '', '', 'regular', 496, 620, 620, 620, 0, 0, 0, 0, '15', 74, '10', 50, '', 'admin', 'paid', 682, 0, '0000-00-00 00:00:00', '2013-11-24 06:09:20'),
(683, '683', '683', 5, 24, '24', '2013-11-24', '', '', '', 'regular', 1248, 1560, 1560, 1560, 0, 0, 0, 0, '15', 187, '10', 125, '', 'admin', 'paid', 683, 0, '0000-00-00 00:00:00', '2013-11-24 06:20:13'),
(684, '684', '684', 5, 25, '25', '2013-11-26', '', '', '', 'regular', 248, 310, 310, 310, 0, 0, 0, 0, '15', 37, '10', 25, '', 'admin', 'paid', 684, 0, '0000-00-00 00:00:00', '2013-11-26 01:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `sell_order_product`
--

CREATE TABLE `sell_order_product` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `table_id` varchar(200) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1=main item, 2=sub item',
  `product_code` varchar(300) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `amount_total` double NOT NULL,
  `en_sl` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `invoice_status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = active, 1= inactive',
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sell_order_product`
--

INSERT INTO `sell_order_product` (`id`, `invoice_no`, `order_date`, `table_id`, `product_category`, `product_type`, `product_code`, `quantity`, `amount`, `amount_total`, `en_sl`, `user_id`, `invoice_status`, `created`, `modified`) VALUES
(1, '1', '2013-09-08', '21', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:06:56'),
(2, '2', '2013-09-08', '5', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:07:51'),
(3, '3', '2013-09-08', '5', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:08:09'),
(4, '4', '2013-09-08', '5', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(5, '4', '2013-09-08', '5', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(6, '4', '2013-09-08', '5', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(7, '4', '2013-09-08', '5', '14', '1', 'CODE63', '1', 44, 44, 4, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(8, '5', '2013-09-08', '18', '14', '1', 'CODE63', '2', 44, 88, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:54:36'),
(9, '6', '2013-09-08', '2', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:58:14'),
(10, '6', '2013-09-08', '2', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:58:14'),
(11, '7', '2013-09-08', '5', '14', '1', 'CODE63', '2', 44, 88, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 02:59:49'),
(12, '8', '2013-09-08', '1', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:01:36'),
(13, '8', '2013-09-08', '1', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:01:36'),
(14, '9', '2013-09-08', '2', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(15, '9', '2013-09-08', '2', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(16, '9', '2013-09-08', '2', '14', '1', 'CODE63', '2', 44, 88, 3, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(17, '9', '2013-09-08', '2', '14', '1', 'CODE59', '5', 28, 140, 4, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(18, '10', '2013-09-08', '23', '13', '3', 'CODE31', '1', 384, 384, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 03:08:08'),
(19, '11', '2013-09-08', '30', '14', '1', 'CODE62', '2', 44, 88, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:16:55'),
(20, '12', '2013-09-08', '6', '14', '1', 'CODE59', '4', 28, 112, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:19:14'),
(21, '13', '2013-09-08', '39', '14', '1', 'CODE62', '2', 44, 88, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:25:54'),
(22, '14', '2013-09-08', '23', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(23, '14', '2013-09-08', '23', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(24, '14', '2013-09-08', '23', '14', '1', 'CODE63', '1', 44, 44, 3, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(25, '15', '2013-09-08', '2', '14', '1', 'CODE61', '1', 44, 44, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:36:21'),
(26, '16', '2013-09-08', '1', '13', '3', 'CODE31', '3', 384, 1152, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 04:42:22'),
(27, '17', '2013-09-08', '23', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 05:16:24'),
(28, '18', '2013-09-08', '23', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 05:24:11'),
(29, '19', '2013-09-08', '29', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 05:38:53'),
(30, '19', '2013-09-08', '29', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 05:38:53'),
(31, '20', '2013-09-08', '22', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 06:16:59'),
(32, '21', '2013-09-08', '20', '14', '1', 'CODE63', '2', 44, 88, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 06:38:11'),
(33, '22', '2013-09-08', '17', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 06:47:54'),
(34, '23', '2013-09-08', '7', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 06:57:17'),
(35, '24', '2013-09-08', '43', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:10:36'),
(36, '25', '2013-09-08', '18', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:13:01'),
(37, '26', '2013-09-08', '39', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:16:10'),
(38, '27', '2013-09-08', '12', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:16:54'),
(39, '28', '2013-09-08', '2', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:23:13'),
(40, '28', '2013-09-08', '2', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:23:13'),
(41, '29', '2013-09-08', '19', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:25:47'),
(42, '29', '2013-09-08', '19', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:25:47'),
(43, '30', '2013-09-08', '23', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:39:02'),
(44, '31', '2013-09-08', '27', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(45, '31', '2013-09-08', '27', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(46, '31', '2013-09-08', '27', '2', '1', 'CODE76', '2', 312, 624, 3, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(47, '31', '2013-09-08', '27', '14', '1', 'CODE66', '3', 20, 60, 4, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(48, '31', '2013-09-08', '27', '14', '1', 'CODE63', '1', 44, 44, 5, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(49, '31', '2013-09-08', '27', '12', '1', 'CODE37', '1', 64, 64, 6, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(50, '32', '2013-09-08', '27', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:00:05'),
(51, '33', '2013-09-08', '20', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:14:41'),
(52, '33', '2013-09-08', '20', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:14:41'),
(53, '34', '2013-09-08', '21', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:24:56'),
(54, '34', '2013-09-08', '21', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:24:56'),
(55, '35', '2013-09-08', '23', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 08:33:09'),
(56, '36', '2013-09-08', '27', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(57, '36', '2013-09-08', '27', '2', '1', 'CODE1', '3', 240, 720, 2, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(58, '36', '2013-09-08', '27', '2', '1', 'CODE76', '1', 312, 312, 3, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(59, '36', '2013-09-08', '27', '14', '1', 'CODE62', '1', 44, 44, 4, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(60, '36', '2013-09-08', '27', '15', '1', 'CODE74', '1', 180, 180, 5, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(61, '36', '2013-09-08', '27', '15', '1', 'CODE73', '2', 120, 240, 6, 'admin', 1, '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(62, '37', '2013-09-08', '2', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-08 09:02:06'),
(63, '37', '2013-09-08', '2', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-08 09:02:06'),
(64, '38', '2013-09-08', '24', '15', '1', 'CODE73', '1', 120, 120, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-08 09:05:21'),
(65, '39', '2013-09-09', '5', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 00:05:12'),
(66, '40', '2013-09-09', '2', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 01:25:33'),
(67, '41', '2013-09-09', '43', '14', '1', 'CODE63', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 01:32:45'),
(68, '42', '2013-09-09', '1', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 01:47:19'),
(69, '43', '2013-09-09', '3', '14', '1', 'CODE61', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 01:57:24'),
(70, '44', '2013-09-09', '1', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 02:03:22'),
(71, '45', '2013-09-09', '2', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 02:11:01'),
(72, '46', '2013-09-09', '1', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 02:45:13'),
(73, '47', '2013-09-09', '23', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 03:06:46'),
(74, '48', '2013-09-09', '23', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 03:47:33'),
(75, '49', '2013-09-09', '23', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 03:48:36'),
(76, '50', '2013-09-09', '19', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 04:18:59'),
(77, '51', '2013-09-09', '21', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 04:37:48'),
(78, '52', '2013-09-09', '44', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 04:52:56'),
(79, '52', '2013-09-09', '44', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 04:52:56'),
(80, '53', '2013-09-09', '19', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 04:54:11'),
(81, '54', '2013-09-09', '43', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:01:29'),
(82, '54', '2013-09-09', '43', '14', '1', 'CODE60', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:01:29'),
(83, '55', '2013-09-09', '32', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:10:24'),
(84, '55', '2013-09-09', '32', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:10:24'),
(85, '56', '2013-09-09', '10', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:16:01'),
(86, '56', '2013-09-09', '10', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:16:01'),
(87, '57', '2013-09-09', '42', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:23:39'),
(88, '57', '2013-09-09', '42', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:23:39'),
(89, '58', '2013-09-09', '2', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:30:47'),
(90, '59', '2013-09-09', '18', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:44:32'),
(91, '59', '2013-09-09', '18', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:44:32'),
(92, '60', '2013-09-09', '10', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:56:50'),
(93, '60', '2013-09-09', '10', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 05:56:50'),
(94, '61', '2013-09-09', '17', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:22:01'),
(95, '61', '2013-09-09', '17', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:22:01'),
(96, '62', '2013-09-09', '20', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:24:33'),
(97, '62', '2013-09-09', '20', '14', '1', 'CODE60', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:24:33'),
(98, '63', '2013-09-09', '30', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:28:58'),
(99, '63', '2013-09-09', '30', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:28:58'),
(100, '64', '2013-09-09', '18', '14', '1', 'CODE59', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:42:17'),
(101, '65', '2013-09-09', '35', '14', '1', 'CODE58', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:46:10'),
(102, '66', '2013-09-09', '35', '14', '1', 'CODE58', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:47:22'),
(103, '67', '2013-09-09', '20', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 06:49:02'),
(104, '68', '2013-09-09', '22', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:01:58'),
(105, '69', '2013-09-09', '15', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:07:52'),
(106, '70', '2013-09-09', '19', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:26:25'),
(107, '70', '2013-09-09', '19', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:26:25'),
(108, '71', '2013-09-09', '2', '14', '1', 'CODE61', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:43:45'),
(109, '72', '2013-09-09', '5', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:52:59'),
(110, '73', '2013-09-09', '25', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 07:54:19'),
(111, '74', '2013-09-09', '43', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:10:42'),
(112, '75', '2013-09-09', '19', '2', '1', 'CODE76', '2', 312, 624, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:13:32'),
(113, '76', '2013-09-09', '6', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:16:19'),
(114, '76', '2013-09-09', '6', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:16:19'),
(115, '77', '2013-09-09', '2', '2', '1', 'CODE76', '3', 312, 936, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:31:40'),
(116, '78', '2013-09-09', '39', '14', '2', 'CODE129', '5', 28, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:34:33'),
(117, '79', '2013-09-09', '27', '2', '1', 'CODE76', '4', 312, 1248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(118, '79', '2013-09-09', '27', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(119, '79', '2013-09-09', '27', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(120, '80', '2013-09-09', '33', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:43:24'),
(121, '80', '2013-09-09', '33', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:43:24'),
(122, '81', '2013-09-09', '33', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:58:52'),
(123, '81', '2013-09-09', '33', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-09 08:58:52'),
(124, '82', '2013-09-10', '16', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:04:49'),
(125, '82', '2013-09-10', '16', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:04:49'),
(126, '83', '2013-09-10', '8', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:10:34'),
(127, '83', '2013-09-10', '8', '14', '1', 'CODE60', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:10:34'),
(128, '84', '2013-09-10', '23', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:25:20'),
(129, '85', '2013-09-10', '3', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:28:08'),
(130, '85', '2013-09-10', '3', '14', '1', 'CODE131', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:28:08'),
(131, '86', '2013-09-10', '27', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:36:21'),
(132, '87', '2013-09-10', '10', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:42:46'),
(133, '88', '2013-09-10', '8', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:48:30'),
(134, '88', '2013-09-10', '8', '14', '1', 'CODE128', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:48:30'),
(135, '89', '2013-09-10', '3', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 01:58:21'),
(136, '90', '2013-09-10', '1', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:22:27'),
(137, '90', '2013-09-10', '1', '14', '1', 'CODE55', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:22:27'),
(138, '91', '2013-09-10', '32', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:42:55'),
(139, '91', '2013-09-10', '32', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:42:55'),
(140, '92', '2013-09-10', '3', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:51:44'),
(141, '93', '2013-09-10', '45', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:55:21'),
(142, '93', '2013-09-10', '45', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:55:21'),
(143, '94', '2013-09-10', '2', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 02:56:58'),
(144, '95', '2013-09-10', '19', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 03:00:01'),
(145, '96', '2013-09-10', '2', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 03:15:52'),
(146, '97', '2013-09-10', '44', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 04:53:16'),
(147, '98', '2013-09-10', '29', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:03:32'),
(148, '98', '2013-09-10', '29', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:03:32'),
(149, '99', '2013-09-10', '34', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(150, '99', '2013-09-10', '34', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(151, '99', '2013-09-10', '34', '14', '1', 'CODE63', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(152, '100', '2013-09-10', '24', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:13:10'),
(153, '100', '2013-09-10', '24', '12', '1', 'CODE171', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:13:10'),
(154, '101', '2013-09-10', '35', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:14:25'),
(155, '102', '2013-09-10', '2', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:39:27'),
(156, '103', '2013-09-10', '35', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:58:52'),
(157, '103', '2013-09-10', '35', '14', '1', 'CODE130', '3', 44, 132, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 05:58:52'),
(158, '104', '2013-09-10', '16', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 06:32:08'),
(159, '105', '2013-09-10', '35', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 06:36:36'),
(160, '106', '2013-09-10', '35', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 07:24:27'),
(161, '106', '2013-09-10', '35', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 07:24:27'),
(162, '107', '2013-09-10', '27', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(163, '107', '2013-09-10', '27', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(164, '107', '2013-09-10', '27', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(165, '108', '2013-09-10', '3', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:03:05'),
(166, '109', '2013-09-10', '22', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:14:53'),
(167, '110', '2013-09-10', '24', '13', '3', 'CODE30', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:17:42'),
(168, '111', '2013-09-10', '1', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:19:01'),
(169, '112', '2013-09-10', '30', '14', '1', 'CODE128', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:29:45'),
(170, '112', '2013-09-10', '30', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-10 08:29:45'),
(171, '113', '2013-09-11', '35', '14', '1', 'CODE131', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 01:31:58'),
(172, '114', '2013-09-11', '18', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 02:29:33'),
(173, '115', '2013-09-11', '19', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 02:33:06'),
(174, '115', '2013-09-11', '19', '14', '1', 'CODE130', '2', 44, 88, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 02:33:06'),
(175, '116', '2013-09-11', '32', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 02:34:49'),
(176, '117', '2013-09-11', '13', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 03:23:46'),
(177, '118', '2013-09-11', '3', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 03:25:27'),
(178, '119', '2013-09-11', '1', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:10:28'),
(179, '120', '2013-09-11', '2', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:12:01'),
(180, '121', '2013-09-11', '24', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(181, '121', '2013-09-11', '24', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(182, '121', '2013-09-11', '24', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(183, '122', '2013-09-11', '18', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:46:27'),
(184, '122', '2013-09-11', '18', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:46:27'),
(185, '123', '2013-09-11', '12', '13', '3', 'CODE34', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(186, '123', '2013-09-11', '12', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(187, '123', '2013-09-11', '12', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(188, '124', '2013-09-11', '2', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 05:56:42'),
(189, '125', '2013-09-11', '18', '14', '1', 'CODE130', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 06:01:55'),
(190, '126', '2013-09-11', '2', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 06:33:13'),
(191, '126', '2013-09-11', '2', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 06:33:13'),
(192, '127', '2013-09-11', '21', '13', '3', 'CODE30', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 06:39:57'),
(193, '128', '2013-09-11', '21', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 06:41:39'),
(194, '129', '2013-09-11', '35', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:10:49'),
(195, '130', '2013-09-11', '18', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:12:47'),
(196, '131', '2013-09-11', '3', '14', '1', 'CODE53', '4', 140, 560, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:13:20'),
(197, '132', '2013-09-11', '21', '14', '1', 'CODE185', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:32:00'),
(198, '133', '2013-09-11', '3', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:37:51'),
(199, '133', '2013-09-11', '3', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:37:51'),
(200, '134', '2013-09-11', '37', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:48:31'),
(201, '135', '2013-09-11', '14', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:51:33'),
(202, '136', '2013-09-11', '21', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 07:53:10'),
(203, '137', '2013-09-11', '35', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 08:05:51'),
(204, '138', '2013-09-11', '17', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 08:09:45'),
(205, '139', '2013-09-11', '36', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 08:17:59'),
(206, '140', '2013-09-11', '35', '2', '1', 'CODE76', '3', 312, 936, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 08:38:32'),
(207, '140', '2013-09-11', '35', '14', '1', 'CODE66', '2', 20, 40, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-11 08:38:32'),
(208, '141', '2013-09-12', '7', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 00:36:06'),
(209, '142', '2013-09-12', '2', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 00:55:33'),
(210, '143', '2013-09-12', '3', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:09:14'),
(211, '143', '2013-09-12', '3', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:09:14'),
(212, '144', '2013-09-12', '19', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:10:42'),
(213, '145', '2013-09-12', '43', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:29:10'),
(214, '146', '2013-09-12', '39', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:54:37'),
(215, '147', '2013-09-12', '45', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 01:57:20'),
(216, '148', '2013-09-12', '2', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:06:50'),
(217, '149', '2013-09-12', '1', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:18:08'),
(218, '150', '2013-09-12', '41', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:28:04'),
(219, '151', '2013-09-12', '1', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:33:31'),
(220, '152', '2013-09-12', '22', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:36:43'),
(221, '153', '2013-09-12', '2', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:39:37'),
(222, '154', '2013-09-12', '40', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:47:53'),
(223, '154', '2013-09-12', '40', '14', '2', 'CODE129', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:47:53'),
(224, '155', '2013-09-12', '37', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 02:48:18'),
(225, '156', '2013-09-12', '44', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:14:13'),
(226, '157', '2013-09-12', '43', '13', '3', 'CODE34', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:28:32'),
(227, '157', '2013-09-12', '43', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:28:32'),
(228, '158', '2013-09-12', '43', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:31:04'),
(229, '159', '2013-09-12', '20', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(230, '159', '2013-09-12', '20', '14', '1', 'CODE185', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(231, '159', '2013-09-12', '20', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(232, '160', '2013-09-12', '22', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:40:48'),
(233, '161', '2013-09-12', '22', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 04:41:30'),
(234, '162', '2013-09-12', '20', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:32:59'),
(235, '163', '2013-09-12', '20', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:42:44'),
(236, '163', '2013-09-12', '20', '14', '1', 'CODE131', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:42:44'),
(237, '164', '2013-09-12', '7', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:45:35'),
(238, '165', '2013-09-12', '24', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:52:42'),
(239, '165', '2013-09-12', '24', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:52:42'),
(240, '166', '2013-09-12', '39', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 05:57:55'),
(241, '167', '2013-09-12', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:21:10'),
(242, '168', '2013-09-12', '23', '13', '3', 'CODE30', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:35:53'),
(243, '169', '2013-09-12', '43', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:47:32'),
(244, '170', '2013-09-12', '15', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:52:13'),
(245, '170', '2013-09-12', '15', '14', '1', 'CODE62', '2', 44, 88, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:52:13'),
(246, '171', '2013-09-12', '4', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:56:05'),
(247, '171', '2013-09-12', '4', '14', '1', 'CODE55', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 06:56:05'),
(248, '172', '2013-09-12', '39', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 07:03:55'),
(249, '173', '2013-09-12', '26', '13', '3', 'CODE30', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 07:10:37'),
(250, '174', '2013-09-12', '19', '2', '1', 'CODE33', '2', 248, 496, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 07:34:31'),
(251, '174', '2013-09-12', '19', '14', '1', 'CODE55', '2', 140, 280, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 07:34:31'),
(252, '175', '2013-09-12', '21', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 07:39:27'),
(253, '176', '2013-09-12', '4', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:36:01'),
(254, '177', '2013-09-12', '22', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:41:02'),
(255, '178', '2013-09-12', '44', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(256, '178', '2013-09-12', '44', '14', '1', 'CODE59', '5', 28, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(257, '178', '2013-09-12', '44', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(258, '179', '2013-09-12', '17', '13', '3', 'CODE30', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:55:21'),
(259, '179', '2013-09-12', '17', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 08:55:21'),
(260, '180', '2013-09-12', '4', '14', '1', 'CODE63', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-12 09:07:25'),
(261, '181', '2013-09-13', '33', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 00:45:45'),
(262, '181', '2013-09-13', '33', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 00:45:45'),
(263, '182', '2013-09-13', '35', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:05:20'),
(264, '183', '2013-09-13', '20', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:06:38'),
(265, '184', '2013-09-13', '27', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:17:05'),
(266, '185', '2013-09-13', '25', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:25:10'),
(267, '186', '2013-09-13', '33', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(268, '186', '2013-09-13', '33', '13', '3', 'CODE32', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(269, '186', '2013-09-13', '33', '13', '3', 'CODE35', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(270, '186', '2013-09-13', '33', '14', '1', 'CODE59', '1', 28, 28, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(271, '187', '2013-09-13', '4', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:46:33'),
(272, '187', '2013-09-13', '4', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:46:33'),
(273, '188', '2013-09-13', '29', '14', '1', 'CODE53', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:47:14'),
(274, '188', '2013-09-13', '29', '14', '1', 'CODE55', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:47:14'),
(275, '189', '2013-09-13', '16', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:54:37'),
(276, '190', '2013-09-13', '15', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 01:59:19'),
(277, '191', '2013-09-13', '19', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:06:57'),
(278, '192', '2013-09-13', '26', '14', '1', 'CODE66', '4', 20, 80, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:08:28'),
(279, '193', '2013-09-13', '27', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(280, '193', '2013-09-13', '27', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(281, '193', '2013-09-13', '27', '14', '1', 'CODE54', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(282, '194', '2013-09-13', '27', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:13:49'),
(283, '195', '2013-09-13', '4', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:15:57'),
(284, '195', '2013-09-13', '4', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:15:57'),
(285, '196', '2013-09-13', '19', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:20:07'),
(286, '197', '2013-09-13', '17', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:25:29'),
(287, '198', '2013-09-13', '2', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:27:46'),
(288, '199', '2013-09-13', '30', '13', '3', 'CODE29', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(289, '199', '2013-09-13', '30', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(290, '199', '2013-09-13', '30', '2', '1', 'CODE33', '1', 248, 248, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(291, '199', '2013-09-13', '30', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(292, '200', '2013-09-13', '26', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:54:20'),
(293, '201', '2013-09-13', '14', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:58:07'),
(294, '202', '2013-09-13', '12', '14', '1', 'CODE54', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 02:59:07'),
(295, '203', '2013-09-13', '32', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:00:57'),
(296, '204', '2013-09-13', '10', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:04:26'),
(297, '205', '2013-09-13', '13', '14', '1', 'CODE60', '5', 28, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:12:52'),
(298, '206', '2013-09-13', '27', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(299, '206', '2013-09-13', '27', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(300, '206', '2013-09-13', '27', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(301, '207', '2013-09-13', '34', '13', '3', 'CODE28', '3', 320, 960, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(302, '207', '2013-09-13', '34', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(303, '207', '2013-09-13', '34', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(304, '207', '2013-09-13', '34', '14', '1', 'CODE180', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(305, '208', '2013-09-13', '13', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:32:11'),
(306, '209', '2013-09-13', '18', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:39:06'),
(307, '210', '2013-09-13', '13', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:42:40'),
(308, '211', '2013-09-13', '28', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:44:38'),
(309, '212', '2013-09-13', '30', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:45:46'),
(310, '212', '2013-09-13', '30', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:45:46'),
(311, '213', '2013-09-13', '29', '13', '3', 'CODE31', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:49:37'),
(312, '213', '2013-09-13', '29', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:49:37'),
(313, '214', '2013-09-13', '32', '13', '3', 'CODE31', '6', 384, 2304, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(314, '214', '2013-09-13', '32', '13', '3', 'CODE28', '4', 320, 1280, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(315, '214', '2013-09-13', '32', '13', '3', 'CODE34', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(316, '214', '2013-09-13', '32', '14', '1', 'CODE180', '3', 44, 132, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(317, '214', '2013-09-13', '32', '14', '1', 'CODE181', '1', 44, 44, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(318, '214', '2013-09-13', '32', '14', '1', 'CODE66', '1', 20, 20, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(319, '215', '2013-09-13', '23', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:01:30'),
(320, '216', '2013-09-13', '19', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(321, '216', '2013-09-13', '19', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(322, '216', '2013-09-13', '19', '14', '1', 'CODE183', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(323, '217', '2013-09-13', '27', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:23:33'),
(324, '218', '2013-09-13', '34', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:30:21'),
(325, '218', '2013-09-13', '34', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:30:21'),
(326, '218', '2013-09-13', '34', '14', '1', 'CODE55', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(327, '218', '2013-09-13', '34', '12', '1', 'CODE171', '1', 64, 64, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(328, '218', '2013-09-13', '34', '14', '1', 'CODE59', '2', 28, 56, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(329, '219', '2013-09-13', '33', '13', '3', 'CODE28', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:37:31'),
(330, '220', '2013-09-13', '1', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(331, '220', '2013-09-13', '1', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(332, '220', '2013-09-13', '1', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(333, '221', '2013-09-13', '11', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:47:23'),
(334, '221', '2013-09-13', '11', '14', '1', 'CODE59', '5', 28, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:47:23'),
(335, '222', '2013-09-13', '30', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(336, '222', '2013-09-13', '30', '13', '3', 'CODE30', '2', 384, 768, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(337, '222', '2013-09-13', '30', '14', '1', 'CODE54', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(338, '223', '2013-09-13', '23', '12', '1', 'CODE171', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:03:13'),
(339, '223', '2013-09-13', '23', '14', '1', 'CODE180', '2', 44, 88, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:03:13'),
(340, '223', '2013-09-13', '23', '14', '1', 'CODE63', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:03:14'),
(341, '223', '2013-09-13', '23', '14', '2', 'CODE129', '1', 28, 28, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:03:14'),
(342, '224', '2013-09-13', '25', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:11:30'),
(343, '224', '2013-09-13', '25', '14', '1', 'CODE55', '2', 140, 280, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:11:30'),
(344, '225', '2013-09-13', '3', '14', '1', 'CODE54', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:12:26'),
(345, '226', '2013-09-13', '4', '14', '1', 'CODE54', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:15:17'),
(346, '227', '2013-09-13', '20', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:19:27'),
(347, '228', '2013-09-13', '17', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(348, '228', '2013-09-13', '17', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(349, '228', '2013-09-13', '17', '14', '1', 'CODE62', '3', 44, 132, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(350, '229', '2013-09-13', '6', '14', '1', 'CODE54', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:39:27'),
(351, '229', '2013-09-13', '6', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:39:27'),
(352, '230', '2013-09-13', '4', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:46:10'),
(353, '231', '2013-09-13', '22', '16', '1', 'CODE188', '1', 200, 200, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(354, '231', '2013-09-13', '22', '12', '1', 'CODE38', '1', 92, 92, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(355, '231', '2013-09-13', '22', '12', '1', 'CODE171', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(356, '231', '2013-09-13', '22', '14', '1', 'CODE185', '3', 28, 84, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(357, '232', '2013-09-13', '28', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:56:07'),
(358, '232', '2013-09-13', '28', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:56:07'),
(359, '233', '2013-09-13', '22', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 05:59:08'),
(360, '234', '2013-09-13', '24', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:01:15'),
(361, '234', '2013-09-13', '24', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:01:15'),
(362, '235', '2013-09-13', '17', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(363, '235', '2013-09-13', '17', '14', '1', 'CODE55', '3', 140, 420, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(364, '235', '2013-09-13', '17', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(365, '235', '2013-09-13', '17', '14', '1', 'CODE62', '2', 44, 88, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(366, '235', '2013-09-13', '17', '14', '1', 'CODE60', '2', 28, 56, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(367, '235', '2013-09-13', '17', '14', '1', 'CODE66', '1', 20, 20, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(368, '236', '2013-09-13', '38', '13', '3', 'CODE34', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:06:32'),
(369, '236', '2013-09-13', '38', '14', '1', 'CODE185', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:06:32'),
(370, '237', '2013-09-13', '14', '16', '1', 'CODE188', '1', 200, 200, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:11:03'),
(371, '237', '2013-09-13', '14', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:11:03'),
(372, '238', '2013-09-13', '18', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:12:38'),
(373, '239', '2013-09-13', '16', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:14:48'),
(374, '239', '2013-09-13', '16', '14', '1', 'CODE175', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:14:48'),
(375, '240', '2013-09-13', '4', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(376, '240', '2013-09-13', '4', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(377, '240', '2013-09-13', '4', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(378, '241', '2013-09-13', '19', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:24:40'),
(379, '242', '2013-09-13', '18', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:26:17'),
(380, '243', '2013-09-13', '18', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:28:20'),
(381, '243', '2013-09-13', '18', '14', '1', 'CODE183', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:28:20'),
(382, '244', '2013-09-13', '40', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:29:37'),
(383, '244', '2013-09-13', '40', '14', '1', 'CODE66', '2', 20, 40, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:29:37'),
(384, '245', '2013-09-13', '28', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:30:49'),
(385, '245', '2013-09-13', '28', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:30:49'),
(386, '246', '2013-09-13', '24', '13', '3', 'CODE31', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:35:33'),
(387, '246', '2013-09-13', '24', '13', '3', 'CODE35', '1', 320, 320, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:35:33'),
(388, '247', '2013-09-13', '15', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:37:22'),
(389, '247', '2013-09-13', '15', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:37:22'),
(390, '248', '2013-09-13', '38', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:38:24'),
(391, '249', '2013-09-13', '37', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:51:02'),
(392, '250', '2013-09-13', '4', '14', '1', 'CODE185', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:56:42');
INSERT INTO `sell_order_product` (`id`, `invoice_no`, `order_date`, `table_id`, `product_category`, `product_type`, `product_code`, `quantity`, `amount`, `amount_total`, `en_sl`, `user_id`, `invoice_status`, `created`, `modified`) VALUES
(393, '250', '2013-09-13', '4', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:56:42'),
(394, '251', '2013-09-13', '20', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 06:58:25'),
(395, '252', '2013-09-13', '23', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:00:26'),
(396, '252', '2013-09-13', '23', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:00:26'),
(397, '253', '2013-09-13', '19', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:05:15'),
(398, '253', '2013-09-13', '19', '14', '1', 'CODE183', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:05:15'),
(399, '254', '2013-09-13', '28', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:06:34'),
(400, '255', '2013-09-13', '21', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:08:18'),
(401, '255', '2013-09-13', '21', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:08:18'),
(402, '256', '2013-09-13', '24', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:09:21'),
(403, '257', '2013-09-13', '16', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:11:02'),
(404, '257', '2013-09-13', '16', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:11:02'),
(405, '258', '2013-09-13', '18', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:13:14'),
(406, '259', '2013-09-13', '25', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:18:55'),
(407, '260', '2013-09-13', '27', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:20:21'),
(408, '260', '2013-09-13', '27', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:20:22'),
(409, '261', '2013-09-13', '4', '2', '1', 'CODE1', '3', 240, 720, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:27:18'),
(410, '261', '2013-09-13', '4', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:27:18'),
(411, '262', '2013-09-13', '30', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:30:56'),
(412, '262', '2013-09-13', '30', '14', '1', 'CODE128', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:30:56'),
(413, '262', '2013-09-13', '30', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:30:57'),
(414, '263', '2013-09-13', '26', '14', '1', 'CODE183', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:32:27'),
(415, '264', '2013-09-13', '27', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:34:21'),
(416, '264', '2013-09-13', '27', '14', '1', 'CODE183', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:34:21'),
(417, '265', '2013-09-13', '19', '14', '1', 'CODE183', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:37:20'),
(418, '266', '2013-09-13', '23', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:49:33'),
(419, '266', '2013-09-13', '23', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:49:33'),
(420, '267', '2013-09-13', '8', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(421, '267', '2013-09-13', '8', '12', '1', 'CODE171', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(422, '267', '2013-09-13', '8', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(423, '268', '2013-09-13', '17', '14', '1', 'CODE130', '3', 44, 132, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(424, '268', '2013-09-13', '17', '14', '1', 'CODE180', '2', 44, 88, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(425, '268', '2013-09-13', '17', '14', '1', 'CODE62', '2', 44, 88, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(426, '268', '2013-09-13', '17', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(427, '268', '2013-09-13', '17', '14', '1', 'CODE59', '2', 28, 56, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(428, '268', '2013-09-13', '17', '12', '1', 'CODE38', '1', 92, 92, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(429, '269', '2013-09-13', '10', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:59:58'),
(430, '269', '2013-09-13', '10', '14', '1', 'CODE66', '3', 20, 60, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 07:59:58'),
(431, '270', '2013-09-13', '32', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(432, '270', '2013-09-13', '32', '12', '1', 'CODE37', '4', 64, 256, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(433, '270', '2013-09-13', '32', '14', '1', 'CODE66', '3', 20, 60, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(434, '270', '2013-09-13', '32', '14', '1', 'CODE180', '2', 44, 88, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(435, '271', '2013-09-13', '4', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:04:31'),
(436, '272', '2013-09-13', '16', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(437, '272', '2013-09-13', '16', '14', '1', 'CODE63', '2', 44, 88, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(438, '272', '2013-09-13', '16', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(439, '273', '2013-09-13', '26', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:14:34'),
(440, '273', '2013-09-13', '26', '12', '1', 'CODE171', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:14:34'),
(441, '273', '2013-09-13', '26', '14', '1', 'CODE130', '2', 44, 88, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:14:35'),
(442, '274', '2013-09-13', '17', '12', '1', 'CODE37', '3', 64, 192, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:18:13'),
(443, '275', '2013-09-13', '27', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:20:05'),
(444, '275', '2013-09-13', '27', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:20:05'),
(445, '276', '2013-09-13', '23', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:21:22'),
(446, '276', '2013-09-13', '23', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:21:23'),
(447, '277', '2013-09-13', '34', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:27:46'),
(448, '277', '2013-09-13', '34', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:27:46'),
(449, '278', '2013-09-13', '17', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:28:48'),
(450, '279', '2013-09-13', '15', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:29:45'),
(451, '280', '2013-09-13', '23', '14', '1', 'CODE183', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(452, '280', '2013-09-13', '23', '14', '1', 'CODE184', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(453, '280', '2013-09-13', '23', '14', '1', 'CODE60', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(454, '281', '2013-09-13', '21', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:45:09'),
(455, '282', '2013-09-13', '19', '14', '1', 'CODE66', '8', 20, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:48:17'),
(456, '283', '2013-09-13', '23', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:51:48'),
(457, '284', '2013-09-13', '16', '14', '1', 'CODE185', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 08:59:14'),
(458, '285', '2013-09-13', '43', '2', '1', 'CODE1', '3', 240, 720, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(459, '285', '2013-09-13', '43', '12', '1', 'CODE38', '2', 92, 184, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(460, '285', '2013-09-13', '43', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(461, '286', '2013-09-13', '34', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:06:13'),
(462, '286', '2013-09-13', '34', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:06:13'),
(463, '286', '2013-09-13', '34', '14', '2', 'CODE129', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:06:14'),
(464, '286', '2013-09-13', '34', '14', '1', 'CODE130', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:06:14'),
(465, '287', '2013-09-13', '18', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:08:59'),
(466, '288', '2013-09-13', '11', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:12:21'),
(467, '289', '2013-09-13', '19', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:16:18'),
(468, '290', '2013-09-13', '28', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:21:21'),
(469, '290', '2013-09-13', '28', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:21:21'),
(470, '291', '2013-09-13', '30', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:24:05'),
(471, '291', '2013-09-13', '30', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(472, '291', '2013-09-13', '30', '12', '1', 'CODE38', '1', 92, 92, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(473, '291', '2013-09-13', '30', '13', '3', 'CODE28', '1', 320, 320, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(474, '292', '2013-09-13', '35', '12', '1', 'CODE171', '4', 64, 256, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:25:06'),
(475, '292', '2013-09-13', '35', '14', '1', 'CODE59', '4', 28, 112, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:25:06'),
(476, '293', '2013-09-13', '38', '14', '1', 'CODE54', '3', 140, 420, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:29:06'),
(477, '293', '2013-09-13', '38', '12', '1', 'CODE38', '1', 92, 92, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:29:06'),
(478, '294', '2013-09-13', '21', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:34:05'),
(479, '295', '2013-09-13', '5', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:36:52'),
(480, '296', '2013-09-13', '26', '13', '3', 'CODE30', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:37:41'),
(481, '297', '2013-09-13', '1', '13', '3', 'CODE30', '3', 384, 1152, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(482, '297', '2013-09-13', '1', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(483, '297', '2013-09-13', '1', '12', '1', 'CODE171', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(484, '298', '2013-09-14', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:27:45'),
(485, '299', '2013-09-14', '21', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(486, '299', '2013-09-14', '21', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(487, '299', '2013-09-14', '21', '12', '1', 'CODE171', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(488, '299', '2013-09-14', '21', '14', '1', 'CODE53', '1', 140, 140, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(489, '299', '2013-09-14', '21', '14', '1', 'CODE130', '1', 44, 44, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(490, '300', '2013-09-14', '17', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:52:51'),
(491, '301', '2013-09-14', '42', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 00:57:39'),
(492, '302', '2013-09-14', '16', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:08:13'),
(493, '303', '2013-09-14', '15', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:12:05'),
(494, '304', '2013-09-14', '19', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:14:07'),
(495, '304', '2013-09-14', '19', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:14:07'),
(496, '305', '2013-09-14', '18', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:15:56'),
(497, '306', '2013-09-14', '10', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:34:14'),
(498, '306', '2013-09-14', '10', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:34:14'),
(499, '307', '2013-09-14', '43', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:36:08'),
(500, '307', '2013-09-14', '43', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:36:08'),
(501, '308', '2013-09-14', '42', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(502, '308', '2013-09-14', '42', '14', '2', 'CODE129', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(503, '308', '2013-09-14', '42', '14', '1', 'CODE185', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(504, '309', '2013-09-14', '27', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:51:36'),
(505, '310', '2013-09-14', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:56:18'),
(506, '311', '2013-09-14', '12', '14', '1', 'CODE185', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 01:59:52'),
(507, '312', '2013-09-14', '34', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(508, '312', '2013-09-14', '34', '13', '3', 'CODE34', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(509, '312', '2013-09-14', '34', '12', '1', 'CODE38', '1', 92, 92, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(510, '313', '2013-09-14', '40', '13', '3', 'CODE29', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:17:16'),
(511, '314', '2013-09-14', '23', '13', '3', 'CODE35', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:36:16'),
(512, '314', '2013-09-14', '23', '13', '3', 'CODE32', '3', 384, 1152, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:36:16'),
(513, '315', '2013-09-14', '29', '13', '3', 'CODE30', '3', 384, 1152, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(514, '315', '2013-09-14', '29', '13', '3', 'CODE34', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(515, '315', '2013-09-14', '29', '2', '1', 'CODE33', '1', 248, 248, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(516, '315', '2013-09-14', '29', '16', '1', 'CODE188', '2', 180, 360, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(517, '315', '2013-09-14', '29', '14', '1', 'CODE63', '2', 44, 88, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(518, '315', '2013-09-14', '29', '14', '1', 'CODE53', '1', 140, 140, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(519, '315', '2013-09-14', '29', '14', '1', 'CODE54', '1', 140, 140, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(520, '315', '2013-09-14', '29', '14', '1', 'CODE55', '1', 140, 140, 8, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(521, '315', '2013-09-14', '29', '2', '1', 'CODE1', '1', 240, 240, 9, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(522, '315', '2013-09-14', '29', '12', '1', 'CODE37', '1', 64, 64, 10, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(523, '316', '2013-09-14', '33', '13', '3', 'CODE31', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(524, '316', '2013-09-14', '33', '13', '3', 'CODE34', '1', 320, 320, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(525, '316', '2013-09-14', '33', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(526, '317', '2013-09-14', '18', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 03:44:19'),
(527, '318', '2013-09-14', '25', '13', '3', 'CODE31', '10', 384, 3840, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(528, '318', '2013-09-14', '25', '13', '3', 'CODE28', '12', 320, 3840, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(529, '318', '2013-09-14', '25', '2', '1', 'CODE1', '3', 240, 720, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(530, '318', '2013-09-14', '25', '12', '1', 'CODE38', '1', 92, 92, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(531, '318', '2013-09-14', '25', '14', '1', 'CODE180', '1', 44, 44, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(532, '319', '2013-09-14', '19', '14', '1', 'CODE66', '4', 20, 80, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(533, '319', '2013-09-14', '19', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(534, '319', '2013-09-14', '19', '14', '1', 'CODE62', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(535, '320', '2013-09-14', '3', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:33:43'),
(536, '320', '2013-09-14', '3', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:33:43'),
(537, '321', '2013-09-14', '45', '14', '1', 'CODE53', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:54:06'),
(538, '322', '2013-09-14', '34', '13', '1', 'CODE194', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(539, '322', '2013-09-14', '34', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(540, '322', '2013-09-14', '34', '14', '1', 'CODE54', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(541, '322', '2013-09-14', '34', '14', '1', 'CODE57', '2', 160, 320, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(542, '323', '2013-09-14', '17', '13', '3', 'CODE31', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:02:46'),
(543, '324', '2013-09-14', '5', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:04:51'),
(544, '325', '2013-09-14', '5', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:06:59'),
(545, '326', '2013-09-14', '18', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:08:23'),
(546, '326', '2013-09-14', '18', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:08:23'),
(547, '327', '2013-09-14', '4', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:30:21'),
(548, '328', '2013-09-14', '26', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 05:46:56'),
(549, '329', '2013-09-14', '11', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:04:33'),
(550, '330', '2013-09-14', '12', '14', '1', 'CODE183', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(551, '330', '2013-09-14', '12', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(552, '330', '2013-09-14', '12', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(553, '331', '2013-09-14', '17', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:20:15'),
(554, '331', '2013-09-14', '17', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:20:15'),
(555, '332', '2013-09-14', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:23:37'),
(556, '333', '2013-09-14', '17', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:44:59'),
(557, '334', '2013-09-14', '37', '14', '1', 'CODE54', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:48:36'),
(558, '334', '2013-09-14', '37', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:48:36'),
(559, '335', '2013-09-14', '5', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:49:54'),
(560, '336', '2013-09-14', '35', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(561, '336', '2013-09-14', '35', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(562, '336', '2013-09-14', '35', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(563, '337', '2013-09-14', '18', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:00:11'),
(564, '338', '2013-09-14', '40', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:05:53'),
(565, '338', '2013-09-14', '40', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:05:53'),
(566, '339', '2013-09-14', '29', '13', '3', 'CODE193', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:13:12'),
(567, '339', '2013-09-14', '29', '13', '3', 'CODE201', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:13:12'),
(568, '340', '2013-09-14', '31', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(569, '340', '2013-09-14', '31', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(570, '340', '2013-09-14', '31', '2', '1', 'CODE33', '1', 248, 248, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(571, '340', '2013-09-14', '31', '14', '1', 'CODE62', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(572, '341', '2013-09-14', '26', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:22:03'),
(573, '342', '2013-09-14', '12', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(574, '342', '2013-09-14', '12', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(575, '342', '2013-09-14', '12', '2', '1', 'CODE1', '1', 240, 240, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(576, '342', '2013-09-14', '12', '2', '1', 'CODE76', '1', 312, 312, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(577, '343', '2013-09-14', '11', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:27:13'),
(578, '344', '2013-09-14', '9', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(579, '344', '2013-09-14', '9', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(580, '344', '2013-09-14', '9', '13', '3', 'CODE190', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(581, '344', '2013-09-14', '9', '14', '1', 'CODE180', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(582, '345', '2013-09-14', '20', '14', '1', 'CODE60', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:54:37'),
(583, '346', '2013-09-14', '23', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 07:55:23'),
(584, '347', '2013-09-14', '30', '13', '3', 'CODE28', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:10:41'),
(585, '347', '2013-09-14', '30', '13', '3', 'CODE201', '2', 384, 768, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:10:41'),
(586, '348', '2013-09-14', '4', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:12:26'),
(587, '348', '2013-09-14', '4', '14', '2', 'CODE129', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:12:26'),
(588, '349', '2013-09-14', '14', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(589, '349', '2013-09-14', '14', '12', '1', 'CODE38', '1', 92, 92, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(590, '349', '2013-09-14', '14', '14', '1', 'CODE180', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(591, '350', '2013-09-14', '3', '2', '1', 'CODE1', '3', 240, 720, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:44:41'),
(592, '351', '2013-09-14', '13', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:45:31'),
(593, '352', '2013-09-14', '43', '13', '1', 'CODE194', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(594, '352', '2013-09-14', '43', '12', '1', 'CODE40', '2', 208, 416, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(595, '352', '2013-09-14', '43', '14', '1', 'CODE57', '1', 160, 160, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(596, '352', '2013-09-14', '43', '2', '1', 'CODE1', '1', 240, 240, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(597, '353', '2013-09-14', '27', '12', '1', 'CODE40', '2', 208, 416, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(598, '353', '2013-09-14', '27', '14', '1', 'CODE181', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(599, '353', '2013-09-14', '27', '14', '1', 'CODE60', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(600, '354', '2013-09-14', '45', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:57:48'),
(601, '355', '2013-09-14', '45', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:58:41'),
(602, '356', '2013-09-14', '34', '13', '1', 'CODE194', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(603, '356', '2013-09-14', '34', '13', '3', 'CODE78', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(604, '356', '2013-09-14', '34', '13', '3', 'CODE191', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(605, '356', '2013-09-14', '34', '14', '1', 'CODE180', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(606, '356', '2013-09-14', '34', '13', '3', 'CODE190', '1', 320, 320, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 08:59:20'),
(607, '357', '2013-09-14', '24', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 09:02:05'),
(608, '358', '2013-09-14', '20', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 09:04:24'),
(609, '359', '2013-09-14', '16', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 09:06:13'),
(610, '360', '2013-09-14', '4', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 09:07:37'),
(611, '360', '2013-09-14', '4', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-14 09:07:37'),
(612, '361', '2013-09-15', '27', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 01:24:44'),
(613, '361', '2013-09-15', '27', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 01:24:44'),
(614, '362', '2013-09-15', '19', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(615, '362', '2013-09-15', '19', '14', '1', 'CODE183', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(616, '362', '2013-09-15', '19', '14', '1', 'CODE63', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(617, '363', '2013-09-15', '4', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 03:52:50'),
(618, '364', '2013-09-15', '16', '14', '1', 'CODE62', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:05:59'),
(619, '364', '2013-09-15', '16', '14', '1', 'CODE175', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:05:59'),
(620, '365', '2013-09-15', '5', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:16:35'),
(621, '366', '2013-09-15', '21', '14', '1', 'CODE60', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:19:06'),
(622, '367', '2013-09-15', '26', '13', '3', 'CODE28', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:21:38'),
(623, '367', '2013-09-15', '26', '13', '3', 'CODE193', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:21:38'),
(624, '368', '2013-09-15', '22', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:37:05'),
(625, '369', '2013-09-15', '17', '14', '1', 'CODE60', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 04:51:52'),
(626, '370', '2013-09-15', '6', '16', '1', 'CODE188', '2', 180, 360, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(627, '370', '2013-09-15', '6', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(628, '370', '2013-09-15', '6', '14', '1', 'CODE59', '7', 28, 196, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(629, '371', '2013-09-15', '4', '14', '1', 'CODE54', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:13:55'),
(630, '372', '2013-09-15', '18', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:25:32'),
(631, '373', '2013-09-15', '13', '14', '1', 'CODE60', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:30:00'),
(632, '373', '2013-09-15', '13', '14', '2', 'CODE129', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:30:00'),
(633, '374', '2013-09-15', '28', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:31:12'),
(634, '375', '2013-09-15', '16', '14', '1', 'CODE59', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:32:33'),
(635, '376', '2013-09-15', '19', '14', '1', 'CODE59', '5', 28, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:33:41'),
(636, '377', '2013-09-15', '10', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:36:38'),
(637, '377', '2013-09-15', '10', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:36:38'),
(638, '378', '2013-09-15', '11', '14', '1', 'CODE128', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 05:57:06'),
(639, '379', '2013-09-15', '31', '13', '3', 'CODE193', '3', 320, 960, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(640, '379', '2013-09-15', '31', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(641, '379', '2013-09-15', '31', '14', '1', 'CODE183', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(642, '380', '2013-09-15', '20', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:04:44'),
(643, '380', '2013-09-15', '20', '14', '2', 'CODE129', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:04:44'),
(644, '381', '2013-09-15', '28', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:10:08'),
(645, '381', '2013-09-15', '28', '14', '2', 'CODE129', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:10:08'),
(646, '382', '2013-09-15', '4', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:20:04'),
(647, '383', '2013-09-15', '5', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:26:31'),
(648, '384', '2013-09-15', '4', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:30:58'),
(649, '385', '2013-09-15', '33', '13', '3', 'CODE193', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(650, '385', '2013-09-15', '33', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(651, '385', '2013-09-15', '33', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(652, '385', '2013-09-15', '33', '14', '1', 'CODE59', '1', 28, 28, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(653, '385', '2013-09-15', '33', '14', '1', 'CODE66', '1', 20, 20, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(654, '386', '2013-09-15', '3', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 07:03:36'),
(655, '387', '2013-09-15', '15', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 07:39:35'),
(656, '388', '2013-09-15', '15', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(657, '388', '2013-09-15', '15', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(658, '388', '2013-09-15', '15', '14', '1', 'CODE55', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(659, '389', '2013-09-15', '31', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:09:39'),
(660, '389', '2013-09-15', '31', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:09:39'),
(661, '390', '2013-09-15', '32', '13', '3', 'CODE189', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:12:31'),
(662, '390', '2013-09-15', '32', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:12:31'),
(663, '391', '2013-09-15', '22', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:25:52'),
(664, '392', '2013-09-15', '33', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:45:11'),
(665, '392', '2013-09-15', '33', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(666, '392', '2013-09-15', '33', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(667, '392', '2013-09-15', '33', '14', '1', 'CODE63', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(668, '392', '2013-09-15', '33', '14', '1', 'CODE175', '1', 44, 44, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(669, '393', '2013-09-16', '21', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 00:46:22'),
(670, '393', '2013-09-16', '21', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 00:46:22'),
(671, '394', '2013-09-16', '32', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 02:00:26'),
(672, '395', '2013-09-16', '38', '14', '1', 'CODE208', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 02:05:48'),
(673, '396', '2013-09-16', '22', '14', '1', 'CODE185', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 02:34:38'),
(674, '396', '2013-09-16', '22', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 02:34:38'),
(675, '397', '2013-09-16', '18', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:06:30'),
(676, '398', '2013-09-16', '30', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:25:23'),
(677, '398', '2013-09-16', '30', '14', '1', 'CODE131', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:25:23'),
(678, '399', '2013-09-16', '23', '13', '3', 'CODE201', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:30:09'),
(679, '400', '2013-09-16', '4', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(680, '400', '2013-09-16', '4', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(681, '400', '2013-09-16', '4', '2', '1', 'CODE1', '1', 240, 240, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(682, '400', '2013-09-16', '4', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(683, '401', '2013-09-16', '12', '14', '1', 'CODE185', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 05:06:24'),
(684, '402', '2013-09-16', '23', '13', '3', 'CODE201', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 05:24:11'),
(685, '403', '2013-09-16', '28', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 05:51:19'),
(686, '404', '2013-09-16', '6', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:03:25'),
(687, '404', '2013-09-16', '6', '14', '1', 'CODE60', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:03:26'),
(688, '405', '2013-09-16', '26', '13', '3', 'CODE192', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(689, '405', '2013-09-16', '26', '12', '1', 'CODE40', '2', 208, 416, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(690, '405', '2013-09-16', '26', '16', '1', 'CODE188', '1', 180, 180, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(691, '405', '2013-09-16', '26', '14', '1', 'CODE56', '2', 160, 320, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(692, '406', '2013-09-16', '24', '14', '1', 'CODE60', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:25:40'),
(693, '407', '2013-09-16', '35', '12', '1', 'CODE39', '1', 120, 120, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:56:27'),
(694, '407', '2013-09-16', '35', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 06:56:27'),
(695, '408', '2013-09-16', '20', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(696, '408', '2013-09-16', '20', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(697, '408', '2013-09-16', '20', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(698, '409', '2013-09-16', '37', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:26:14'),
(699, '410', '2013-09-16', '17', '14', '2', 'CODE129', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:37:31'),
(700, '411', '2013-09-16', '20', '14', '1', 'CODE60', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 07:58:09'),
(701, '412', '2013-09-16', '22', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:04:53'),
(702, '412', '2013-09-16', '22', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:04:53'),
(703, '413', '2013-09-16', '27', '2', '1', 'CODE76', '4', 312, 1248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:09:00'),
(704, '413', '2013-09-16', '27', '14', '1', 'CODE181', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:09:00'),
(705, '414', '2013-09-16', '34', '13', '3', 'CODE192', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(706, '414', '2013-09-16', '34', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(707, '414', '2013-09-16', '34', '14', '1', 'CODE183', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(708, '414', '2013-09-16', '34', '12', '1', 'CODE171', '2', 64, 128, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(709, '414', '2013-09-16', '34', '12', '1', 'CODE39', '1', 120, 120, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(710, '415', '2013-09-16', '25', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(711, '415', '2013-09-16', '25', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(712, '415', '2013-09-16', '25', '14', '1', 'CODE55', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(713, '416', '2013-09-16', '25', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:24:31'),
(714, '416', '2013-09-16', '25', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:24:31'),
(715, '417', '2013-09-16', '31', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(716, '417', '2013-09-16', '31', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(717, '417', '2013-09-16', '31', '14', '1', 'CODE175', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(718, '418', '2013-09-16', '19', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:47:08'),
(719, '418', '2013-09-16', '19', '14', '1', 'CODE66', '3', 20, 60, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:47:08'),
(720, '419', '2013-09-16', '19', '14', '1', 'CODE183', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:54:50'),
(721, '420', '2013-09-16', '18', '14', '1', 'CODE60', '7', 28, 196, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-16 08:58:00'),
(722, '421', '2013-09-17', '22', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 00:36:54'),
(723, '422', '2013-09-17', '30', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 00:37:54'),
(724, '422', '2013-09-17', '30', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 00:37:54'),
(725, '423', '2013-09-17', '13', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:00:08'),
(726, '424', '2013-09-17', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:05:56'),
(727, '425', '2013-09-17', '19', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:40:54'),
(728, '426', '2013-09-17', '20', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:56:17'),
(729, '426', '2013-09-17', '20', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:56:17'),
(730, '427', '2013-09-17', '36', '14', '1', 'CODE175', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 01:57:22'),
(731, '428', '2013-09-17', '10', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(732, '428', '2013-09-17', '10', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(733, '428', '2013-09-17', '10', '14', '1', 'CODE58', '1', 160, 160, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(734, '428', '2013-09-17', '10', '14', '1', 'CODE54', '1', 140, 140, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(735, '429', '2013-09-17', '4', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 02:46:39'),
(736, '430', '2013-09-17', '5', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 03:39:00'),
(737, '431', '2013-09-17', '25', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 03:49:09'),
(738, '432', '2013-09-17', '4', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(739, '432', '2013-09-17', '4', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(740, '432', '2013-09-17', '4', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(741, '433', '2013-09-17', '26', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:29:45'),
(742, '434', '2013-09-17', '33', '13', '3', 'CODE201', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(743, '434', '2013-09-17', '33', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(744, '434', '2013-09-17', '33', '14', '1', 'CODE55', '2', 140, 280, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(745, '434', '2013-09-17', '33', '14', '1', 'CODE60', '1', 28, 28, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(746, '435', '2013-09-17', '32', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:51:47'),
(747, '436', '2013-09-17', '26', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:54:24'),
(748, '436', '2013-09-17', '26', '14', '2', 'CODE129', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:54:24'),
(749, '437', '2013-09-17', '20', '14', '1', 'CODE55', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(750, '437', '2013-09-17', '20', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(751, '437', '2013-09-17', '20', '14', '1', 'CODE57', '1', 160, 160, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(752, '438', '2013-09-17', '16', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 05:47:51'),
(753, '438', '2013-09-17', '16', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 05:47:51'),
(754, '439', '2013-09-17', '35', '12', '1', 'CODE40', '2', 208, 416, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:18:47'),
(755, '439', '2013-09-17', '35', '14', '2', 'CODE129', '4', 28, 112, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:18:47'),
(756, '440', '2013-09-17', '4', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:32:09'),
(757, '441', '2013-09-17', '19', '14', '1', 'CODE180', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:40:09'),
(758, '442', '2013-09-17', '32', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:44:05'),
(759, '442', '2013-09-17', '32', '14', '1', 'CODE66', '3', 20, 60, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:44:05'),
(760, '443', '2013-09-17', '32', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:45:06'),
(761, '444', '2013-09-17', '32', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:48:06'),
(762, '445', '2013-09-17', '32', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:49:28'),
(763, '446', '2013-09-17', '32', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:50:56'),
(764, '447', '2013-09-17', '32', '14', '1', 'CODE208', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:52:08'),
(765, '447', '2013-09-17', '32', '2', '1', 'CODE33', '1', 248, 248, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:52:08'),
(766, '448', '2013-09-17', '21', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(767, '448', '2013-09-17', '21', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(768, '448', '2013-09-17', '21', '14', '1', 'CODE183', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(769, '449', '2013-09-17', '26', '13', '3', 'CODE202', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:59:32'),
(770, '449', '2013-09-17', '26', '13', '3', 'CODE201', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 06:59:32'),
(771, '450', '2013-09-17', '22', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:06:13'),
(772, '451', '2013-09-17', '23', '13', '1', 'CODE203', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:19:30'),
(773, '451', '2013-09-17', '23', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:19:30'),
(774, '452', '2013-09-17', '9', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:31:58'),
(775, '453', '2013-09-17', '34', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:38:14'),
(776, '453', '2013-09-17', '34', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:38:14'),
(777, '454', '2013-09-17', '18', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:40:06'),
(778, '455', '2013-09-17', '20', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:41:18'),
(779, '456', '2013-09-17', '29', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(780, '456', '2013-09-17', '29', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(781, '456', '2013-09-17', '29', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:49:53');
INSERT INTO `sell_order_product` (`id`, `invoice_no`, `order_date`, `table_id`, `product_category`, `product_type`, `product_code`, `quantity`, `amount`, `amount_total`, `en_sl`, `user_id`, `invoice_status`, `created`, `modified`) VALUES
(782, '456', '2013-09-17', '29', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(783, '457', '2013-09-17', '19', '14', '2', 'CODE129', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:01:52'),
(784, '458', '2013-09-17', '23', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:04:32'),
(785, '458', '2013-09-17', '23', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:04:32'),
(786, '459', '2013-09-17', '19', '14', '1', 'CODE60', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:08:41'),
(787, '460', '2013-09-17', '27', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(788, '460', '2013-09-17', '27', '2', '1', 'CODE76', '1', 312, 312, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(789, '460', '2013-09-17', '27', '13', '3', 'CODE202', '1', 384, 384, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(790, '460', '2013-09-17', '27', '12', '1', 'CODE40', '2', 208, 416, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(791, '460', '2013-09-17', '27', '14', '1', 'CODE175', '2', 44, 88, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(792, '460', '2013-09-17', '27', '14', '1', 'CODE63', '1', 44, 44, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(793, '461', '2013-09-19', '4', '14', '1', 'CODE180', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:41:02'),
(794, '461', '2013-09-19', '4', '14', '1', 'CODE62', '3', 44, 132, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:41:02'),
(795, '462', '2013-09-19', '33', '13', '3', 'CODE192', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(796, '462', '2013-09-19', '33', '13', '3', 'CODE31', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(797, '462', '2013-09-19', '33', '13', '3', 'CODE201', '1', 384, 384, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(798, '462', '2013-09-19', '33', '13', '1', 'CODE203', '1', 384, 384, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(799, '462', '2013-09-19', '33', '12', '1', 'CODE40', '2', 208, 416, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(800, '462', '2013-09-19', '33', '16', '1', 'CODE188', '1', 180, 180, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(801, '462', '2013-09-19', '33', '14', '1', 'CODE63', '1', 44, 44, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(802, '463', '2013-09-19', '27', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 02:54:43'),
(803, '464', '2013-09-19', '33', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(804, '464', '2013-09-19', '33', '13', '3', 'CODE193', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(805, '464', '2013-09-19', '33', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(806, '464', '2013-09-19', '33', '14', '1', 'CODE59', '2', 28, 56, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(807, '464', '2013-09-19', '33', '14', '1', 'CODE66', '1', 20, 20, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(808, '465', '2013-09-19', '32', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:32:28'),
(809, '465', '2013-09-19', '32', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 03:32:28'),
(810, '466', '2013-09-19', '19', '14', '1', 'CODE60', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 04:00:04'),
(811, '467', '2013-09-19', '43', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(812, '467', '2013-09-19', '43', '12', '1', 'CODE38', '2', 92, 184, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(813, '467', '2013-09-19', '43', '14', '1', 'CODE59', '11', 28, 308, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(814, '468', '2013-09-19', '25', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:31:42'),
(815, '468', '2013-09-19', '25', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:31:42'),
(816, '469', '2013-09-19', '24', '13', '3', 'CODE31', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:32:29'),
(817, '470', '2013-09-19', '4', '14', '1', 'CODE181', '5', 44, 220, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:35:13'),
(818, '470', '2013-09-19', '4', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:35:13'),
(819, '471', '2013-09-19', '6', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:46:49'),
(820, '471', '2013-09-19', '6', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:46:49'),
(821, '472', '2013-09-19', '5', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:48:33'),
(822, '472', '2013-09-19', '5', '14', '1', 'CODE185', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:48:33'),
(823, '473', '2013-09-19', '28', '13', '3', 'CODE28', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(824, '473', '2013-09-19', '28', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(825, '473', '2013-09-19', '28', '14', '1', 'CODE180', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(826, '474', '2013-09-19', '34', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(827, '474', '2013-09-19', '34', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(828, '474', '2013-09-19', '34', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(829, '474', '2013-09-19', '34', '14', '1', 'CODE55', '1', 140, 140, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:57:49'),
(830, '474', '2013-09-19', '34', '14', '1', 'CODE59', '1', 28, 28, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 05:57:49'),
(831, '475', '2013-09-19', '35', '13', '3', 'CODE34', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:11:39'),
(832, '475', '2013-09-19', '35', '12', '1', 'CODE39', '1', 120, 120, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:11:39'),
(833, '476', '2013-09-19', '15', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:33:07'),
(834, '477', '2013-09-19', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:47:45'),
(835, '477', '2013-09-19', '4', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:47:45'),
(836, '478', '2013-09-19', '13', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 06:57:12'),
(837, '479', '2013-09-19', '27', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:32:31'),
(838, '479', '2013-09-19', '27', '14', '1', 'CODE208', '1', 160, 160, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:32:32'),
(839, '479', '2013-09-19', '27', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:32:32'),
(840, '480', '2013-09-19', '27', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:34:48'),
(841, '481', '2013-09-19', '29', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(842, '481', '2013-09-19', '29', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(843, '481', '2013-09-19', '29', '2', '1', 'CODE33', '1', 248, 248, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(844, '481', '2013-09-19', '29', '12', '1', 'CODE40', '1', 208, 208, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(845, '481', '2013-09-19', '29', '14', '1', 'CODE54', '1', 140, 140, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(846, '481', '2013-09-19', '29', '13', '3', 'CODE201', '1', 384, 384, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(847, '482', '2013-09-19', '10', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(848, '482', '2013-09-19', '10', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(849, '482', '2013-09-19', '10', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(850, '483', '2013-09-19', '24', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:01:44'),
(851, '483', '2013-09-19', '24', '14', '1', 'CODE185', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:01:44'),
(852, '484', '2013-09-19', '34', '12', '1', 'CODE39', '1', 120, 120, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:04:15'),
(853, '484', '2013-09-19', '34', '13', '3', 'CODE201', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:04:15'),
(854, '485', '2013-09-19', '16', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(855, '485', '2013-09-19', '16', '14', '1', 'CODE59', '3', 28, 84, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(856, '485', '2013-09-19', '16', '14', '1', 'CODE55', '2', 140, 280, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(857, '486', '2013-09-19', '15', '2', '1', 'CODE76', '4', 312, 1248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(858, '486', '2013-09-19', '15', '12', '1', 'CODE38', '2', 92, 184, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(859, '486', '2013-09-19', '15', '12', '1', 'CODE40', '2', 208, 416, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(860, '486', '2013-09-19', '15', '14', '1', 'CODE63', '4', 44, 176, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(861, '487', '2013-09-19', '20', '14', '1', 'CODE183', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:39:01'),
(862, '488', '2013-09-19', '22', '12', '1', 'CODE38', '3', 92, 276, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(863, '488', '2013-09-19', '22', '12', '1', 'CODE171', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(864, '488', '2013-09-19', '22', '14', '1', 'CODE62', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(865, '488', '2013-09-19', '22', '14', '1', 'CODE180', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(866, '489', '2013-09-20', '17', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 00:22:39'),
(867, '490', '2013-09-20', '2', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:01:08'),
(868, '491', '2013-09-20', '38', '13', '3', 'CODE196', '2', 280, 560, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(869, '491', '2013-09-20', '38', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(870, '491', '2013-09-20', '38', '14', '1', 'CODE63', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(871, '492', '2013-09-20', '4', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:02:44'),
(872, '493', '2013-09-20', '34', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(873, '493', '2013-09-20', '34', '13', '3', 'CODE78', '1', 320, 320, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(874, '493', '2013-09-20', '34', '14', '1', 'CODE53', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(875, '493', '2013-09-20', '34', '14', '1', 'CODE55', '2', 140, 280, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(876, '493', '2013-09-20', '34', '2', '1', 'CODE1', '1', 240, 240, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(877, '493', '2013-09-20', '34', '4', '1', 'CODE45', '1', 216, 216, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(878, '494', '2013-09-20', '27', '13', '3', 'CODE193', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(879, '494', '2013-09-20', '27', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(880, '494', '2013-09-20', '27', '14', '1', 'CODE208', '1', 160, 160, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(881, '495', '2013-09-20', '25', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(882, '495', '2013-09-20', '25', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(883, '495', '2013-09-20', '25', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(884, '496', '2013-09-20', '23', '13', '3', 'CODE192', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 03:24:13'),
(885, '496', '2013-09-20', '23', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 03:24:13'),
(886, '497', '2013-09-20', '26', '13', '3', 'CODE201', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 03:42:05'),
(887, '497', '2013-09-20', '26', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 03:42:05'),
(888, '498', '2013-09-20', '15', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:20:16'),
(889, '498', '2013-09-20', '15', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:20:16'),
(890, '499', '2013-09-20', '17', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:21:57'),
(891, '500', '2013-09-20', '18', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:27:50'),
(892, '500', '2013-09-20', '18', '14', '1', 'CODE179', '4', 44, 176, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:27:50'),
(893, '501', '2013-09-20', '12', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:30:19'),
(894, '502', '2013-09-20', '23', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:44:56'),
(895, '502', '2013-09-20', '23', '14', '1', 'CODE66', '2', 20, 40, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:44:56'),
(896, '503', '2013-09-20', '5', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 04:54:48'),
(897, '504', '2013-09-20', '11', '14', '1', 'CODE63', '4', 44, 176, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:05:24'),
(898, '505', '2013-09-20', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:08:26'),
(899, '506', '2013-09-20', '32', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(900, '506', '2013-09-20', '32', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(901, '506', '2013-09-20', '32', '14', '1', 'CODE63', '2', 44, 88, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(902, '507', '2013-09-20', '25', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(903, '507', '2013-09-20', '25', '13', '3', 'CODE204', '1', 200, 200, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(904, '507', '2013-09-20', '25', '14', '2', 'CODE129', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(905, '508', '2013-09-20', '23', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:22:02'),
(906, '508', '2013-09-20', '23', '14', '2', 'CODE129', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:22:02'),
(907, '509', '2013-09-20', '4', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:23:58'),
(908, '509', '2013-09-20', '4', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:23:58'),
(909, '510', '2013-09-20', '4', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:25:27'),
(910, '511', '2013-09-20', '10', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:29:02'),
(911, '512', '2013-09-20', '16', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:46:18'),
(912, '513', '2013-09-20', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:51:14'),
(913, '514', '2013-09-20', '4', '14', '1', 'CODE179', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:52:35'),
(914, '514', '2013-09-20', '4', '14', '1', 'CODE185', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:52:36'),
(915, '515', '2013-09-20', '15', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 05:59:39'),
(916, '516', '2013-09-20', '35', '14', '1', 'CODE55', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:11:16'),
(917, '516', '2013-09-20', '35', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:11:16'),
(918, '517', '2013-09-20', '29', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(919, '517', '2013-09-20', '29', '14', '1', 'CODE53', '2', 140, 280, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(920, '517', '2013-09-20', '29', '12', '1', 'CODE38', '1', 92, 92, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(921, '518', '2013-09-20', '8', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(922, '518', '2013-09-20', '8', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(923, '518', '2013-09-20', '8', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(924, '519', '2013-09-20', '12', '14', '1', 'CODE59', '5', 28, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:26:34'),
(925, '520', '2013-09-20', '25', '14', '1', 'CODE183', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:27:17'),
(926, '520', '2013-09-20', '25', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:27:17'),
(927, '521', '2013-09-20', '33', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:41:59'),
(928, '522', '2013-09-20', '19', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:43:29'),
(929, '522', '2013-09-20', '19', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:43:29'),
(930, '523', '2013-09-20', '5', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:44:51'),
(931, '524', '2013-09-20', '28', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(932, '524', '2013-09-20', '28', '14', '2', 'CODE129', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(933, '524', '2013-09-20', '28', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(934, '525', '2013-09-20', '25', '14', '1', 'CODE128', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:56:25'),
(935, '525', '2013-09-20', '25', '14', '2', 'CODE129', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 06:56:25'),
(936, '526', '2013-09-20', '27', '14', '1', 'CODE180', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:00:00'),
(937, '527', '2013-09-20', '6', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:03:19'),
(938, '528', '2013-09-20', '12', '14', '1', 'CODE180', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:08:27'),
(939, '528', '2013-09-20', '12', '14', '1', 'CODE128', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:08:27'),
(940, '529', '2013-09-20', '17', '14', '1', 'CODE175', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:11:04'),
(941, '529', '2013-09-20', '17', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:11:04'),
(942, '530', '2013-09-20', '11', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:12:07'),
(943, '530', '2013-09-20', '11', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:12:07'),
(944, '531', '2013-09-20', '32', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:17:50'),
(945, '532', '2013-09-20', '7', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(946, '532', '2013-09-20', '7', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(947, '532', '2013-09-20', '7', '14', '1', 'CODE130', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(948, '533', '2013-09-20', '11', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:31:34'),
(949, '534', '2013-09-20', '28', '13', '1', 'CODE203', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(950, '534', '2013-09-20', '28', '13', '1', 'CODE205', '4', 200, 800, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(951, '534', '2013-09-20', '28', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(952, '535', '2013-09-20', '23', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(953, '535', '2013-09-20', '23', '2', '1', 'CODE33', '1', 248, 248, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(954, '535', '2013-09-20', '23', '2', '1', 'CODE1', '1', 240, 240, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(955, '536', '2013-09-20', '4', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:51:48'),
(956, '537', '2013-09-20', '23', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:52:54'),
(957, '538', '2013-09-20', '2', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:58:40'),
(958, '538', '2013-09-20', '2', '14', '1', 'CODE183', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:58:40'),
(959, '539', '2013-09-20', '10', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:59:35'),
(960, '539', '2013-09-20', '10', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 07:59:35'),
(961, '540', '2013-09-20', '15', '14', '2', 'CODE129', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:15:43'),
(962, '541', '2013-09-20', '24', '13', '1', 'CODE205', '2', 200, 400, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:21:22'),
(963, '542', '2013-09-20', '13', '14', '1', 'CODE62', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(964, '542', '2013-09-20', '13', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(965, '542', '2013-09-20', '13', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(966, '543', '2013-09-20', '33', '2', '1', 'CODE33', '2', 248, 496, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(967, '543', '2013-09-20', '33', '2', '1', 'CODE1', '2', 240, 480, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(968, '543', '2013-09-20', '33', '12', '1', 'CODE38', '1', 92, 92, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(969, '543', '2013-09-20', '33', '14', '1', 'CODE180', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(970, '543', '2013-09-20', '33', '14', '1', 'CODE185', '3', 28, 84, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(971, '543', '2013-09-20', '33', '14', '1', 'CODE66', '1', 20, 20, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(972, '543', '2013-09-20', '33', '14', '1', 'CODE208', '1', 160, 160, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(973, '544', '2013-09-20', '38', '14', '2', 'CODE129', '6', 28, 168, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:32:30'),
(974, '545', '2013-09-20', '4', '14', '1', 'CODE180', '3', 44, 132, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:35:17'),
(975, '546', '2013-09-20', '26', '4', '1', 'CODE45', '4', 216, 864, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(976, '546', '2013-09-20', '26', '14', '1', 'CODE181', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(977, '546', '2013-09-20', '26', '14', '1', 'CODE66', '2', 20, 40, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(978, '546', '2013-09-20', '26', '14', '1', 'CODE59', '1', 28, 28, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(979, '546', '2013-09-20', '26', '2', '1', 'CODE76', '2', 312, 624, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(980, '546', '2013-09-20', '26', '12', '1', 'CODE40', '1', 208, 208, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(981, '546', '2013-09-20', '26', '14', '1', 'CODE180', '1', 44, 44, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(982, '547', '2013-09-20', '16', '14', '1', 'CODE181', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:04:23'),
(983, '548', '2013-09-20', '11', '14', '1', 'CODE62', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:28:35'),
(984, '548', '2013-09-20', '11', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:28:35'),
(985, '549', '2013-09-20', '31', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(986, '549', '2013-09-20', '31', '13', '3', 'CODE193', '2', 320, 640, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(987, '549', '2013-09-20', '31', '2', '1', 'CODE1', '1', 240, 240, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(988, '550', '2013-09-20', '28', '2', '1', 'CODE76', '4', 312, 1248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(989, '550', '2013-09-20', '28', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(990, '550', '2013-09-20', '28', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(991, '550', '2013-09-20', '28', '14', '1', 'CODE59', '2', 28, 56, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(992, '550', '2013-09-20', '28', '14', '1', 'CODE130', '2', 44, 88, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(993, '551', '2013-09-20', '41', '12', '1', 'CODE38', '2', 92, 184, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(994, '551', '2013-09-20', '41', '14', '1', 'CODE59', '4', 28, 112, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(995, '551', '2013-09-20', '41', '14', '2', 'CODE129', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(996, '552', '2013-09-20', '28', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-20 09:51:39'),
(997, '553', '2013-09-21', '16', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:35:41'),
(998, '553', '2013-09-21', '16', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:35:42'),
(999, '553', '2013-09-21', '16', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:35:42'),
(1000, '554', '2013-09-21', '20', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:55:36'),
(1001, '555', '2013-09-21', '17', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:57:23'),
(1002, '555', '2013-09-21', '17', '14', '1', 'CODE66', '4', 20, 80, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:57:23'),
(1003, '556', '2013-09-21', '4', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 00:59:28'),
(1004, '557', '2013-09-21', '15', '14', '1', 'CODE185', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:09:05'),
(1005, '558', '2013-09-21', '22', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:16:30'),
(1006, '559', '2013-09-21', '12', '14', '1', 'CODE60', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:27:58'),
(1007, '560', '2013-09-21', '31', '13', '3', 'CODE193', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:35:49'),
(1008, '561', '2013-09-21', '32', '13', '3', 'CODE78', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1009, '561', '2013-09-21', '32', '12', '1', 'CODE37', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1010, '561', '2013-09-21', '32', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1011, '562', '2013-09-21', '19', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 02:00:32'),
(1012, '563', '2013-09-21', '19', '14', '1', 'CODE59', '4', 28, 112, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 02:40:15'),
(1013, '564', '2013-09-21', '23', '13', '3', 'CODE31', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1014, '564', '2013-09-21', '23', '13', '1', 'CODE203', '2', 384, 768, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1015, '564', '2013-09-21', '23', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1016, '565', '2013-09-21', '5', '14', '1', 'CODE130', '2', 44, 88, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:01:17'),
(1017, '565', '2013-09-21', '5', '14', '1', 'CODE66', '2', 20, 40, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:01:17'),
(1018, '566', '2013-09-21', '14', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:02:22'),
(1019, '567', '2013-09-21', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:09:41'),
(1020, '568', '2013-09-21', '5', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:14:19'),
(1021, '569', '2013-09-21', '24', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:31:50'),
(1022, '570', '2013-09-21', '24', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:33:03'),
(1023, '571', '2013-09-21', '42', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1024, '571', '2013-09-21', '42', '14', '1', 'CODE59', '7', 28, 196, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1025, '571', '2013-09-21', '42', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1026, '571', '2013-09-21', '42', '16', '1', 'CODE188', '1', 180, 180, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1027, '571', '2013-09-21', '42', '4', '1', 'CODE45', '1', 216, 216, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1028, '571', '2013-09-21', '42', '4', '1', 'CODE41', '1', 136, 136, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1029, '571', '2013-09-21', '42', '14', '1', 'CODE66', '2', 20, 40, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1030, '571', '2013-09-21', '42', '14', '1', 'CODE55', '1', 140, 140, 8, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1031, '571', '2013-09-21', '42', '13', '1', 'CODE205', '4', 200, 800, 9, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1032, '571', '2013-09-21', '42', '13', '3', 'CODE197', '1', 280, 280, 10, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1033, '571', '2013-09-21', '42', '13', '3', 'CODE190', '1', 320, 320, 11, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1034, '571', '2013-09-21', '42', '14', '1', 'CODE63', '1', 44, 44, 12, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1035, '572', '2013-09-21', '42', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:56:57'),
(1036, '572', '2013-09-21', '42', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 04:56:57'),
(1037, '573', '2013-09-21', '21', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:04:14'),
(1038, '574', '2013-09-21', '27', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1039, '574', '2013-09-21', '27', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1040, '574', '2013-09-21', '27', '14', '1', 'CODE59', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1041, '574', '2013-09-21', '27', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1042, '575', '2013-09-21', '19', '14', '1', 'CODE66', '3', 20, 60, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:13:33'),
(1043, '576', '2013-09-21', '4', '14', '1', 'CODE66', '2', 20, 40, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:16:03'),
(1044, '577', '2013-09-21', '32', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:16:47'),
(1045, '577', '2013-09-21', '32', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:16:47'),
(1046, '578', '2013-09-21', '32', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:19:17'),
(1047, '579', '2013-09-21', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:46:11'),
(1048, '580', '2013-09-21', '20', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:52:25'),
(1049, '581', '2013-09-21', '35', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1050, '581', '2013-09-21', '35', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1051, '581', '2013-09-21', '35', '14', '1', 'CODE62', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1052, '582', '2013-09-21', '20', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1053, '582', '2013-09-21', '20', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1054, '582', '2013-09-21', '20', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1055, '583', '2013-09-21', '19', '14', '2', 'CODE129', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:23:41'),
(1056, '584', '2013-09-21', '32', '13', '3', 'CODE193', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:26:17'),
(1057, '584', '2013-09-21', '32', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:26:18'),
(1058, '584', '2013-09-21', '32', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:26:18'),
(1059, '585', '2013-09-21', '6', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:30:52'),
(1060, '586', '2013-09-21', '30', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:36:48'),
(1061, '586', '2013-09-21', '30', '14', '1', 'CODE185', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:36:48'),
(1062, '587', '2013-09-21', '30', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:38:25'),
(1063, '588', '2013-09-21', '24', '13', '3', 'CODE202', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:39:38'),
(1064, '588', '2013-09-21', '24', '14', '1', 'CODE208', '1', 160, 160, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:39:38'),
(1065, '588', '2013-09-21', '24', '2', '1', 'CODE1', '3', 240, 720, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(1066, '588', '2013-09-21', '24', '2', '1', 'CODE76', '6', 312, 1872, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(1067, '588', '2013-09-21', '24', '14', '1', 'CODE59', '1', 28, 28, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(1068, '589', '2013-09-21', '17', '13', '1', 'CODE194', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:45:55'),
(1069, '590', '2013-09-21', '15', '14', '1', 'CODE59', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:53:20'),
(1070, '590', '2013-09-21', '15', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:53:21'),
(1071, '590', '2013-09-21', '15', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 06:53:21'),
(1072, '591', '2013-09-21', '25', '14', '1', 'CODE53', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:04:59'),
(1073, '591', '2013-09-21', '25', '13', '1', 'CODE203', '1', 384, 384, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:04:59'),
(1074, '592', '2013-09-21', '28', '2', '1', 'CODE1', '3', 240, 720, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1075, '592', '2013-09-21', '28', '2', '1', 'CODE76', '2', 312, 624, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1076, '592', '2013-09-21', '28', '12', '1', 'CODE40', '2', 208, 416, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1077, '592', '2013-09-21', '28', '14', '1', 'CODE53', '1', 140, 140, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1078, '592', '2013-09-21', '28', '14', '1', 'CODE66', '7', 20, 140, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1079, '593', '2013-09-21', '19', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:15:01'),
(1080, '594', '2013-09-21', '34', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1081, '594', '2013-09-21', '34', '12', '1', 'CODE40', '2', 208, 416, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1082, '594', '2013-09-21', '34', '4', '1', 'CODE41', '2', 136, 272, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1083, '594', '2013-09-21', '34', '13', '1', 'CODE205', '1', 200, 200, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1084, '594', '2013-09-21', '34', '13', '1', 'CODE203', '2', 384, 768, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1085, '594', '2013-09-21', '34', '13', '3', 'CODE204', '1', 200, 200, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:39'),
(1086, '594', '2013-09-21', '34', '12', '1', 'CODE38', '1', 92, 92, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:27:39'),
(1087, '595', '2013-09-21', '20', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(1088, '595', '2013-09-21', '20', '14', '1', 'CODE208', '1', 160, 160, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(1089, '595', '2013-09-21', '20', '14', '1', 'CODE59', '4', 28, 112, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(1090, '596', '2013-09-21', '45', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:38:43'),
(1091, '597', '2013-09-21', '24', '12', '1', 'CODE40', '2', 208, 416, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:39:18'),
(1092, '597', '2013-09-21', '24', '4', '1', 'CODE41', '1', 136, 136, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:39:18'),
(1093, '598', '2013-09-21', '19', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:40:56'),
(1094, '599', '2013-09-21', '33', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1095, '599', '2013-09-21', '33', '2', '1', 'CODE1', '1', 240, 240, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1096, '599', '2013-09-21', '33', '14', '1', 'CODE53', '1', 140, 140, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1097, '599', '2013-09-21', '33', '14', '1', 'CODE59', '2', 28, 56, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1098, '600', '2013-09-21', '29', '14', '1', 'CODE63', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1099, '600', '2013-09-21', '29', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1100, '600', '2013-09-21', '29', '13', '3', 'CODE31', '1', 384, 384, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1101, '600', '2013-09-21', '29', '14', '1', 'CODE208', '1', 160, 160, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1102, '601', '2013-09-21', '29', '13', '3', 'CODE28', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:49:57'),
(1103, '601', '2013-09-21', '29', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:49:57'),
(1104, '602', '2013-09-21', '43', '13', '3', 'CODE193', '4', 320, 1280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:54:08'),
(1105, '603', '2013-09-21', '1', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 07:59:13'),
(1106, '604', '2013-09-21', '5', '2', '1', 'CODE1', '10', 240, 2400, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:10:44'),
(1107, '605', '2013-09-21', '5', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:12:20'),
(1108, '606', '2013-09-21', '4', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:16:40'),
(1109, '607', '2013-09-21', '25', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1110, '607', '2013-09-21', '25', '14', '1', 'CODE53', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1111, '607', '2013-09-21', '25', '2', '1', 'CODE33', '1', 248, 248, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1112, '608', '2013-09-21', '18', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:42:05'),
(1113, '609', '2013-09-21', '28', '2', '1', 'CODE1', '12', 240, 2880, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 08:46:25'),
(1114, '610', '2013-09-21', '19', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-21 09:00:45'),
(1115, '611', '2013-09-22', '2', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 01:15:15'),
(1116, '612', '2013-09-22', '4', '12', '1', 'CODE39', '1', 120, 120, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 01:50:56'),
(1117, '613', '2013-09-22', '16', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 02:34:49'),
(1118, '613', '2013-09-22', '16', '12', '1', 'CODE207', '1', 92, 92, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 02:34:49'),
(1119, '614', '2013-09-22', '13', '14', '2', 'CODE129', '5', 28, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 02:36:11'),
(1120, '615', '2013-09-22', '12', '14', '1', 'CODE187', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 03:26:48'),
(1121, '616', '2013-09-22', '31', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 03:37:30'),
(1122, '617', '2013-09-22', '25', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:06:36'),
(1123, '617', '2013-09-22', '25', '14', '1', 'CODE66', '3', 20, 60, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:06:36'),
(1124, '618', '2013-09-22', '22', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1125, '618', '2013-09-22', '22', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1126, '618', '2013-09-22', '22', '14', '1', 'CODE180', '1', 44, 44, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1127, '619', '2013-09-22', '14', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:53:14'),
(1128, '619', '2013-09-22', '14', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:53:14'),
(1129, '620', '2013-09-22', '25', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 04:54:10'),
(1130, '621', '2013-09-22', '10', '12', '1', 'CODE38', '1', 92, 92, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:35:22'),
(1131, '621', '2013-09-22', '10', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:35:22'),
(1132, '622', '2013-09-22', '18', '12', '1', 'CODE40', '1', 208, 208, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:46:11'),
(1133, '622', '2013-09-22', '18', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:46:11'),
(1134, '623', '2013-09-22', '8', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:58:58'),
(1135, '623', '2013-09-22', '8', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 06:58:58'),
(1136, '624', '2013-09-22', '17', '14', '1', 'CODE183', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 07:09:45'),
(1137, '625', '2013-09-22', '35', '14', '1', 'CODE208', '2', 160, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 08:43:02'),
(1138, '626', '2013-09-22', '29', '13', '1', 'CODE203', '4', 384, 1536, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 08:49:44'),
(1139, '627', '2013-09-22', '23', '2', '1', 'CODE1', '10', 240, 2400, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-22 09:08:20'),
(1140, '628', '2013-09-23', '37', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1141, '628', '2013-09-23', '37', '2', '1', 'CODE33', '1', 248, 248, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1142, '628', '2013-09-23', '37', '14', '2', 'CODE129', '1', 28, 28, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1143, '628', '2013-09-23', '37', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1144, '629', '2013-09-23', '27', '2', '1', 'CODE76', '1', 312, 312, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:55'),
(1145, '629', '2013-09-23', '27', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 00:35:56'),
(1146, '630', '2013-09-23', '20', '14', '1', 'CODE208', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 01:50:44'),
(1147, '630', '2013-09-23', '20', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 01:50:44'),
(1148, '631', '2013-09-23', '33', '13', '1', 'CODE205', '1', 200, 200, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:01:25'),
(1149, '631', '2013-09-23', '33', '14', '1', 'CODE185', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:01:25'),
(1150, '632', '2013-09-23', '13', '14', '1', 'CODE53', '1', 140, 140, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:02:10'),
(1151, '632', '2013-09-23', '13', '14', '1', 'CODE55', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:02:10'),
(1152, '632', '2013-09-23', '13', '12', '1', 'CODE37', '1', 64, 64, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:02:11'),
(1153, '632', '2013-09-23', '13', '14', '2', 'CODE129', '2', 28, 56, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:02:11'),
(1154, '633', '2013-09-23', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:17:06'),
(1155, '634', '2013-09-23', '7', '4', '1', 'CODE41', '1', 136, 136, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:24:28'),
(1156, '635', '2013-09-23', '29', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:50:12'),
(1157, '635', '2013-09-23', '29', '14', '1', 'CODE59', '2', 28, 56, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 02:50:12'),
(1158, '636', '2013-09-23', '24', '2', '1', 'CODE1', '4', 240, 960, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 03:08:13'),
(1159, '636', '2013-09-23', '24', '14', '1', 'CODE66', '4', 20, 80, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 03:08:13'),
(1160, '637', '2013-09-23', '37', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1161, '637', '2013-09-23', '37', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1162, '637', '2013-09-23', '37', '14', '1', 'CODE59', '2', 28, 56, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1163, '638', '2013-09-23', '19', '14', '1', 'CODE208', '1', 160, 160, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:14:23'),
(1164, '639', '2013-09-23', '14', '14', '1', 'CODE185', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:45:13'),
(1165, '640', '2013-09-23', '4', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:51:29'),
(1166, '641', '2013-09-23', '31', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1167, '641', '2013-09-23', '31', '12', '1', 'CODE171', '1', 64, 64, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1168, '641', '2013-09-23', '31', '12', '1', 'CODE39', '1', 120, 120, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:54:50');
INSERT INTO `sell_order_product` (`id`, `invoice_no`, `order_date`, `table_id`, `product_category`, `product_type`, `product_code`, `quantity`, `amount`, `amount_total`, `en_sl`, `user_id`, `invoice_status`, `created`, `modified`) VALUES
(1169, '641', '2013-09-23', '31', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1170, '642', '2013-09-23', '20', '14', '2', 'CODE129', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 05:55:56'),
(1171, '643', '2013-09-23', '4', '14', '2', 'CODE129', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 06:18:50'),
(1172, '644', '2013-09-23', '20', '14', '1', 'CODE53', '2', 140, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 06:20:19'),
(1173, '645', '2013-09-23', '35', '16', '1', 'CODE188', '1', 180, 180, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1174, '645', '2013-09-23', '35', '12', '1', 'CODE38', '1', 92, 92, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1175, '645', '2013-09-23', '35', '14', '1', 'CODE208', '3', 160, 480, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1176, '645', '2013-09-23', '35', '14', '1', 'CODE66', '1', 20, 20, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1177, '646', '2013-09-23', '16', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 07:56:09'),
(1178, '647', '2013-09-23', '18', '4', '1', 'CODE45', '1', 216, 216, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 08:18:35'),
(1179, '647', '2013-09-23', '18', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 08:18:35'),
(1180, '648', '2013-09-23', '20', '14', '1', 'CODE130', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-23 08:22:09'),
(1181, '649', '2013-09-24', '4', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 01:22:23'),
(1182, '650', '2013-09-24', '14', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 01:32:39'),
(1183, '651', '2013-09-24', '19', '12', '1', 'CODE37', '1', 64, 64, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 01:51:26'),
(1184, '652', '2013-09-24', '14', '14', '1', 'CODE59', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 01:53:18'),
(1185, '652', '2013-09-24', '14', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 01:53:18'),
(1186, '653', '2013-09-24', '15', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 02:00:11'),
(1187, '653', '2013-09-24', '15', '14', '1', 'CODE62', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 02:00:11'),
(1188, '654', '2013-09-24', '19', '14', '1', 'CODE183', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 02:52:07'),
(1189, '655', '2013-09-24', '18', '14', '1', 'CODE62', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 02:52:55'),
(1190, '655', '2013-09-24', '18', '14', '1', 'CODE181', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 02:52:55'),
(1191, '656', '2013-09-24', '14', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:09:55'),
(1192, '657', '2013-09-24', '27', '2', '1', 'CODE1', '3', 240, 720, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1193, '657', '2013-09-24', '27', '12', '1', 'CODE40', '2', 208, 416, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1194, '657', '2013-09-24', '27', '14', '1', 'CODE63', '2', 44, 88, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1195, '657', '2013-09-24', '27', '14', '1', 'CODE130', '1', 44, 44, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1196, '658', '2013-09-24', '1', '14', '1', 'CODE59', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:21:52'),
(1197, '659', '2013-09-24', '35', '14', '1', 'CODE180', '1', 44, 44, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1198, '659', '2013-09-24', '35', '14', '1', 'CODE130', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1199, '659', '2013-09-24', '35', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1200, '660', '2013-09-24', '26', '13', '1', 'CODE203', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 03:30:55'),
(1201, '661', '2013-09-24', '32', '14', '1', 'CODE60', '1', 28, 28, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1202, '661', '2013-09-24', '32', '14', '1', 'CODE66', '2', 20, 40, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1203, '661', '2013-09-24', '32', '13', '1', 'CODE203', '1', 384, 384, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1204, '661', '2013-09-24', '32', '2', '1', 'CODE33', '1', 248, 248, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1205, '662', '2013-09-24', '34', '13', '1', 'CODE203', '1', 384, 384, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1206, '662', '2013-09-24', '34', '16', '1', 'CODE188', '1', 180, 180, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1207, '662', '2013-09-24', '34', '12', '1', 'CODE40', '1', 208, 208, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1208, '662', '2013-09-24', '34', '14', '1', 'CODE185', '3', 28, 84, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1209, '662', '2013-09-24', '34', '14', '1', 'CODE59', '1', 28, 28, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1210, '663', '2013-09-24', '29', '2', '1', 'CODE1', '2', 240, 480, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 06:51:26'),
(1211, '663', '2013-09-24', '29', '12', '1', 'CODE40', '1', 208, 208, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 06:51:26'),
(1212, '664', '2013-09-24', '20', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:12:34'),
(1213, '665', '2013-09-24', '24', '13', '3', 'CODE193', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1214, '665', '2013-09-24', '24', '14', '1', 'CODE55', '1', 140, 140, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1215, '665', '2013-09-24', '24', '14', '1', 'CODE66', '1', 20, 20, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1216, '666', '2013-09-24', '19', '14', '1', 'CODE185', '3', 28, 84, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:19:16'),
(1217, '667', '2013-09-24', '28', '13', '3', 'CODE192', '1', 320, 320, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1218, '667', '2013-09-24', '28', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1219, '667', '2013-09-24', '28', '13', '1', 'CODE194', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1220, '668', '2013-09-24', '18', '4', '1', 'CODE41', '1', 136, 136, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1221, '668', '2013-09-24', '18', '12', '1', 'CODE38', '2', 92, 184, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1222, '668', '2013-09-24', '18', '14', '1', 'CODE208', '1', 160, 160, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1223, '668', '2013-09-24', '18', '14', '1', 'CODE59', '4', 28, 112, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1224, '668', '2013-09-24', '18', '14', '1', 'CODE183', '1', 28, 28, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1225, '669', '2013-09-24', '24', '14', '1', 'CODE66', '1', 20, 20, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:33:42'),
(1226, '670', '2013-09-24', '30', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1227, '670', '2013-09-24', '30', '14', '1', 'CODE59', '1', 28, 28, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1228, '670', '2013-09-24', '30', '13', '3', 'CODE190', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1229, '670', '2013-09-24', '30', '2', '1', 'CODE76', '1', 312, 312, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1230, '671', '2013-09-24', '13', '13', '3', 'CODE193', '2', 320, 640, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:14:36'),
(1231, '672', '2013-09-24', '33', '13', '1', 'CODE203', '2', 384, 768, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:24:28'),
(1232, '672', '2013-09-24', '33', '14', '1', 'CODE63', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:24:28'),
(1233, '673', '2013-09-24', '10', '14', '1', 'CODE60', '2', 28, 56, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:31:36'),
(1234, '674', '2013-09-24', '32', '12', '1', 'CODE37', '2', 64, 128, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:32:21'),
(1235, '674', '2013-09-24', '32', '14', '1', 'CODE180', '1', 44, 44, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:32:21'),
(1236, '675', '2013-09-24', '7', '4', '1', 'CODE41', '1', 136, 136, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:39:43'),
(1237, '676', '2013-09-24', '16', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1238, '676', '2013-09-24', '16', '14', '1', 'CODE66', '1', 20, 20, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1239, '676', '2013-09-24', '16', '13', '3', 'CODE192', '1', 320, 320, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1240, '676', '2013-09-24', '16', '13', '3', 'CODE193', '2', 320, 640, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1241, '676', '2013-09-24', '16', '14', '1', 'CODE55', '1', 140, 140, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1242, '677', '2013-09-24', '14', '13', '3', 'CODE196', '1', 280, 280, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:46:54'),
(1243, '677', '2013-09-24', '14', '13', '3', 'CODE190', '1', 320, 320, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:46:54'),
(1244, '678', '2013-09-24', '15', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1245, '678', '2013-09-24', '15', '2', '1', 'CODE1', '2', 240, 480, 2, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1246, '678', '2013-09-24', '15', '12', '1', 'CODE39', '1', 120, 120, 3, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1247, '678', '2013-09-24', '15', '16', '1', 'CODE188', '1', 180, 180, 4, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1248, '678', '2013-09-24', '15', '14', '1', 'CODE54', '1', 140, 140, 5, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1249, '678', '2013-09-24', '15', '14', '1', 'CODE59', '5', 28, 140, 6, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1250, '678', '2013-09-24', '15', '14', '1', 'CODE180', '1', 44, 44, 7, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1251, '678', '2013-09-24', '15', '13', '3', 'CODE193', '1', 320, 320, 8, 'admin', 0, '0000-00-00 00:00:00', '2013-09-24 08:50:41'),
(1252, '679', '2013-10-02', '10', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-10-01 22:57:10'),
(1253, '680', '2013-10-02', '5', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-10-02 03:05:46'),
(1254, '681', '2013-10-05', '5', '2', '1', 'CODE1', '1', 240, 240, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-10-05 03:16:22'),
(1255, '682', '2013-11-24', '5', '2', '1', 'CODE33', '2', 248, 496, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-11-24 06:09:20'),
(1256, '683', '2013-11-24', '5', '2', '1', 'CODE76', '4', 312, 1248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-11-24 06:20:13'),
(1257, '684', '2013-11-26', '5', '2', '1', 'CODE33', '1', 248, 248, 1, 'admin', 0, '0000-00-00 00:00:00', '2013-11-26 01:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `sell_quantity`
--

CREATE TABLE `sell_quantity` (
  `id` bigint(20) NOT NULL,
  `qty_val` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sell_quantity`
--

INSERT INTO `sell_quantity` (`id`, `qty_val`) VALUES
(1, 0.5),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sell_return`
--

CREATE TABLE `sell_return` (
  `id` bigint(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `return_date` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_type` varchar(200) NOT NULL,
  `product_id` varchar(300) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `cash_return` int(11) DEFAULT NULL,
  `en_sl` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_return_temp`
--

CREATE TABLE `sell_return_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_type_id` varchar(100) NOT NULL,
  `product_category_id` varchar(100) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `quantity` double NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sell_temp`
--

CREATE TABLE `sell_temp` (
  `id` bigint(20) NOT NULL,
  `username` varchar(200) NOT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `quantity` double NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `product_type` int(11) NOT NULL COMMENT '1= main item, 2= sub item',
  `order_note` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1= pending, 2= confirmed, 3 =delivered',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sell_temp`
--

INSERT INTO `sell_temp` (`id`, `username`, `table_id`, `product_code`, `product_category`, `quantity`, `p_price`, `product_type`, `order_note`, `status`, `created`) VALUES
(3, 'admin', 10, 'CODE1', '2', 1, '240', 1, '', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` bigint(20) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `station_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `station_id`, `station_name`, `created`, `modified`) VALUES
(1, '1', 'Weater', '2012-01-25 16:01:57', '2012-01-25 02:14:47'),
(2, '2', 'Cash', '2012-01-25 16:07:44', '2012-01-25 01:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1=main item, 2= sub item',
  `product_code` varchar(100) NOT NULL,
  `product_balance` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `product_category`, `product_type`, `product_code`, `product_balance`, `created`, `modified`) VALUES
(1, '10', '2', 'CODE67', 1057, '0000-00-00 00:00:00', '2013-09-05 07:11:29'),
(2, '10', '2', 'CODE69', 23003, '0000-00-00 00:00:00', '2013-09-05 07:11:29'),
(3, '10', '2', 'CODE68', 49805, '0000-00-00 00:00:00', '2013-09-05 07:11:30'),
(4, '15', '1', 'CODE73', 197, '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(5, '15', '1', 'CODE74', 149, '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(6, '15', '1', 'CODE75', 100, '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(7, '10', '2', 'CODE79', 16, '0000-00-00 00:00:00', '2013-09-09 00:25:09'),
(8, '10', '2', 'CODE126', 2, '0000-00-00 00:00:00', '2013-09-09 02:33:26'),
(9, '10', '2', 'CODE98', 1, '0000-00-00 00:00:00', '2013-09-09 04:08:31'),
(10, '10', '2', 'CODE99', 60, '0000-00-00 00:00:00', '2013-09-09 04:10:40'),
(11, '10', '2', 'CODE100', 6, '0000-00-00 00:00:00', '2013-09-09 05:50:26'),
(12, '10', '2', 'CODE101', 6, '0000-00-00 00:00:00', '2013-09-09 05:50:26'),
(13, '10', '2', 'CODE102', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(14, '10', '2', 'CODE103', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(15, '10', '2', 'CODE105', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(16, '10', '2', 'CODE106', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(17, '10', '2', 'CODE107', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(18, '10', '2', 'CODE108', 100, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(19, '10', '2', 'CODE109', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(20, '10', '2', 'CODE110', 5, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(21, '10', '2', 'CODE112', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(22, '10', '2', 'CODE113', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(23, '10', '2', 'CODE114', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(24, '10', '2', 'CODE115', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(25, '10', '2', 'CODE116', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(26, '10', '2', 'CODE117', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(27, '10', '2', 'CODE118', 100, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(28, '10', '2', 'CODE119', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(29, '10', '2', 'CODE120', 4, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(30, '10', '2', 'CODE121', 15, '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(31, '10', '2', 'CODE122', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(32, '10', '2', 'CODE123', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(33, '10', '2', 'CODE124', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(34, '10', '2', 'CODE125', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(35, '10', '2', 'CODE153', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(36, '10', '2', 'CODE154', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(37, '10', '2', 'CODE155', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(38, '10', '2', 'CODE156', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(39, '10', '2', 'CODE157', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(40, '10', '2', 'CODE158', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(41, '10', '2', 'CODE159', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(42, '10', '2', 'CODE160', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(43, '10', '2', 'CODE161', 2, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(44, '10', '2', 'CODE162', 4, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(45, '10', '2', 'CODE163', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(46, '10', '2', 'CODE164', 4, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(47, '10', '2', 'CODE165', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(48, '10', '2', 'CODE145', 3, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(49, '10', '2', 'CODE146', 3, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(50, '10', '2', 'CODE147', 3, '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(51, '10', '2', 'CODE148', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(52, '10', '2', 'CODE149', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(53, '10', '2', 'CODE127', 200, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(54, '10', '2', 'CODE133', 250, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(55, '10', '2', 'CODE134', 500, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(56, '10', '2', 'CODE135', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(57, '10', '2', 'CODE136', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(58, '10', '2', 'CODE137', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(59, '10', '2', 'CODE138', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(60, '10', '2', 'CODE139', 1, '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(61, '10', '2', 'CODE89', 3, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(62, '10', '2', 'CODE93', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(63, '10', '2', 'CODE92', 5, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(64, '10', '2', 'CODE87', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(65, '10', '2', 'CODE88', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(66, '10', '2', 'CODE81', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(67, '10', '2', 'CODE95', 6, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(68, '10', '2', 'CODE96', 2, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(69, '10', '2', 'CODE82', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(70, '10', '2', 'CODE97', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(71, '10', '2', 'CODE94', 1, '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(72, '10', '2', 'CODE150', 4, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(73, '10', '2', 'CODE151', 100, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(74, '10', '2', 'CODE152', 1, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(75, '10', '2', 'CODE90', 1, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(76, '', '2', ' 	shokna chili', 1, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(77, '10', '2', 'CODE142', 2, '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(78, '13', '3', 'CODE34', -5, '0000-00-00 00:00:00', '2013-09-11 04:29:13'),
(79, '14', '1', 'CODE60', 17, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(80, '14', '1', 'CODE62', 62, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(81, '14', '1', 'CODE131', 87, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(82, '14', '1', 'CODE180', 88, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(83, '14', '1', 'CODE130', 95, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(84, '14', '1', 'CODE179', 28, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(85, '14', '1', 'CODE63', 46, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(86, '14', '1', 'CODE175', 12, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(87, '14', '1', 'CODE66', 505, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(88, '14', '1', 'CODE182', 65, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(89, '14', '1', 'CODE181', 108, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(90, '14', '1', 'CODE129', -15, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(91, '14', '1', 'CODE184', 607, '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(92, '', '1', 'pepsi 200ml', 96, '0000-00-00 00:00:00', '2013-09-13 00:11:32'),
(93, '14', '1', 'CODE128', 16, '0000-00-00 00:00:00', '2013-09-13 00:11:32'),
(94, '10', '2', 'CODE72', 1000, '0000-00-00 00:00:00', '2013-11-04 23:11:33'),
(95, '10', '2', 'CODE211', 2334766, '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(96, '10', '2', 'CODE212', 999800, '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(97, '10', '2', 'CODE209', 9993, '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(98, '10', '2', 'CODE210', 9988, '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(99, '2', '1', 'CODE33', -1, '0000-00-00 00:00:00', '2013-11-24 06:08:27'),
(100, '2', '1', 'CODE76', 1, '0000-00-00 00:00:00', '2013-11-24 06:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `stock_in`
--

CREATE TABLE `stock_in` (
  `id` int(11) NOT NULL,
  `stock_in_date` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1=main item, 2= sub item',
  `product_code` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock_in`
--

INSERT INTO `stock_in` (`id`, `stock_in_date`, `product_category`, `product_type`, `product_code`, `quantity`, `created`, `modified`) VALUES
(1, '2013-09-05', '10', '2', 'CODE67', '57', '0000-00-00 00:00:00', '2013-09-05 07:11:29'),
(2, '2013-09-05', '10', '2', 'CODE69', '3', '0000-00-00 00:00:00', '2013-09-05 07:11:29'),
(3, '2013-09-05', '10', '2', 'CODE68', '5', '0000-00-00 00:00:00', '2013-09-05 07:11:29'),
(4, '2013-09-06', '15', '1', 'CODE73', '200', '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(5, '2013-09-06', '15', '1', 'CODE74', '150', '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(6, '2013-09-06', '15', '1', 'CODE75', '100', '0000-00-00 00:00:00', '2013-09-06 00:36:06'),
(7, '2013-09-09', '10', '2', 'CODE79', '10', '0000-00-00 00:00:00', '2013-09-09 00:25:09'),
(8, '2013-09-09', '10', '2', 'CODE126', '1', '0000-00-00 00:00:00', '2013-09-09 02:33:26'),
(9, '2013-09-09', '10', '2', 'CODE98', '1', '0000-00-00 00:00:00', '2013-09-09 04:08:31'),
(10, '2013-09-09', '10', '2', 'CODE99', '48', '0000-00-00 00:00:00', '2013-09-09 04:10:40'),
(11, '2013-09-09', '10', '2', 'CODE100', '6', '0000-00-00 00:00:00', '2013-09-09 05:50:26'),
(12, '2013-09-09', '10', '2', 'CODE101', '6', '0000-00-00 00:00:00', '2013-09-09 05:50:26'),
(13, '2013-09-09', '10', '2', 'CODE102', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(14, '2013-09-09', '10', '2', 'CODE103', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(15, '2013-09-09', '10', '2', 'CODE105', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(16, '2013-09-09', '10', '2', 'CODE106', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(17, '2013-09-09', '10', '2', 'CODE107', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(18, '2013-09-09', '10', '2', 'CODE108', '100', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(19, '2013-09-09', '10', '2', 'CODE109', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(20, '2013-09-09', '10', '2', 'CODE110', '5', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(21, '2013-09-09', '10', '2', 'CODE112', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(22, '2013-09-09', '10', '2', 'CODE113', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(23, '2013-09-09', '10', '2', 'CODE114', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(24, '2013-09-09', '10', '2', 'CODE115', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(25, '2013-09-09', '10', '2', 'CODE116', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(26, '2013-09-09', '10', '2', 'CODE117', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(27, '2013-09-09', '10', '2', 'CODE118', '100', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(28, '2013-09-09', '10', '2', 'CODE119', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(29, '2013-09-09', '10', '2', 'CODE120', '4', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(30, '2013-09-09', '10', '2', 'CODE121', '15', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(31, '2013-09-09', '10', '2', 'CODE122', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:27'),
(32, '2013-09-09', '10', '2', 'CODE123', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(33, '2013-09-09', '10', '2', 'CODE124', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(34, '2013-09-09', '10', '2', 'CODE125', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(35, '2013-09-09', '10', '2', 'CODE153', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(36, '2013-09-09', '10', '2', 'CODE154', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(37, '2013-09-09', '10', '2', 'CODE155', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(38, '2013-09-09', '10', '2', 'CODE156', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(39, '2013-09-09', '10', '2', 'CODE157', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(40, '2013-09-09', '10', '2', 'CODE158', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(41, '2013-09-09', '10', '2', 'CODE159', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(42, '2013-09-09', '10', '2', 'CODE160', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(43, '2013-09-09', '10', '2', 'CODE161', '2', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(44, '2013-09-09', '10', '2', 'CODE162', '4', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(45, '2013-09-09', '10', '2', 'CODE163', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(46, '2013-09-09', '10', '2', 'CODE164', '4', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(47, '2013-09-09', '10', '2', 'CODE165', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(48, '2013-09-09', '10', '2', 'CODE145', '3', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(49, '2013-09-09', '10', '2', 'CODE146', '3', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(50, '2013-09-09', '10', '2', 'CODE147', '3', '0000-00-00 00:00:00', '2013-09-09 05:50:28'),
(51, '2013-09-09', '10', '2', 'CODE148', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(52, '2013-09-09', '10', '2', 'CODE149', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(53, '2013-09-09', '10', '2', 'CODE127', '200', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(54, '2013-09-09', '10', '2', 'CODE133', '250', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(55, '2013-09-09', '10', '2', 'CODE134', '500', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(56, '2013-09-09', '10', '2', 'CODE135', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(57, '2013-09-09', '10', '2', 'CODE136', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(58, '2013-09-09', '10', '2', 'CODE137', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(59, '2013-09-09', '10', '2', 'CODE138', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(60, '2013-09-09', '10', '2', 'CODE139', '1', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(61, '2013-09-09', '10', '2', 'CODE99', '12', '0000-00-00 00:00:00', '2013-09-09 05:50:29'),
(62, '2013-09-09', '10', '2', 'CODE89', '3', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(63, '2013-09-09', '10', '2', 'CODE126', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(64, '2013-09-09', '10', '2', 'CODE93', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(65, '2013-09-09', '10', '2', 'CODE92', '5', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(66, '2013-09-09', '10', '2', 'CODE87', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(67, '2013-09-09', '10', '2', 'CODE88', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(68, '2013-09-09', '10', '2', 'CODE81', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(69, '2013-09-09', '10', '2', 'CODE79', '6', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(70, '2013-09-09', '10', '2', 'CODE95', '6', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(71, '2013-09-09', '10', '2', 'CODE96', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(72, '2013-09-09', '10', '2', 'CODE82', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(73, '2013-09-09', '10', '2', 'CODE97', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(74, '2013-09-09', '10', '2', 'CODE94', '1', '0000-00-00 00:00:00', '2013-09-09 06:56:15'),
(75, '2013-09-09', '10', '2', 'CODE150', '4', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(76, '2013-09-09', '10', '2', 'CODE151', '100', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(77, '2013-09-09', '10', '2', 'CODE152', '1', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(78, '2013-09-09', '10', '2', 'CODE96', '1', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(79, '2013-09-09', '10', '2', 'CODE90', '1', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(80, '2013-09-09', '', '2', ' 	shokna chili', '1', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(81, '2013-09-09', '10', '2', 'CODE142', '2', '0000-00-00 00:00:00', '2013-09-09 07:53:29'),
(82, '2013-09-11', '13', '3', 'CODE34', '5', '0000-00-00 00:00:00', '2013-09-11 04:29:13'),
(83, '2013-09-11', '14', '1', 'CODE60', '82', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(84, '2013-09-11', '14', '1', 'CODE62', '108', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(85, '2013-09-11', '14', '1', 'CODE131', '89', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(86, '2013-09-11', '14', '1', 'CODE180', '53', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(87, '2013-09-11', '14', '1', 'CODE130', '131', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(88, '2013-09-11', '14', '1', 'CODE179', '34', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(89, '2013-09-11', '14', '1', 'CODE63', '81', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(90, '2013-09-11', '14', '1', 'CODE175', '21', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(91, '2013-09-11', '14', '1', 'CODE66', '690', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(92, '2013-09-11', '14', '1', 'CODE182', '65', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(93, '2013-09-11', '14', '1', 'CODE181', '119', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(94, '2013-09-11', '14', '1', 'CODE129', '60', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(95, '2013-09-11', '14', '1', 'CODE184', '29', '0000-00-00 00:00:00', '2013-09-11 05:47:24'),
(96, '2013-09-11', '14', '1', 'CODE184', '579', '0000-00-00 00:00:00', '2013-09-11 05:51:34'),
(97, '2013-09-12', '', '1', 'pepsi 200ml', '96', '0000-00-00 00:00:00', '2013-09-13 00:11:32'),
(98, '2013-09-12', '14', '1', 'CODE128', '24', '0000-00-00 00:00:00', '2013-09-13 00:11:32'),
(99, '2013-09-12', '14', '1', 'CODE180', '96', '0000-00-00 00:00:00', '2013-09-13 00:11:32'),
(100, '2013-11-05', '10', '2', 'CODE67', '1000', '0000-00-00 00:00:00', '2013-11-04 23:11:33'),
(101, '2013-11-05', '10', '2', 'CODE68', '50000', '0000-00-00 00:00:00', '2013-11-04 23:11:33'),
(102, '2013-11-05', '10', '2', 'CODE69', '23000', '0000-00-00 00:00:00', '2013-11-04 23:11:33'),
(103, '2013-11-05', '10', '2', 'CODE72', '1000', '0000-00-00 00:00:00', '2013-11-04 23:11:33'),
(104, '2013-11-05', '10', '2', 'CODE211', '2335566', '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(105, '2013-11-05', '10', '2', 'CODE212', '1000000', '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(106, '2013-11-05', '10', '2', 'CODE209', '10000', '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(107, '2013-11-05', '10', '2', 'CODE210', '10000', '0000-00-00 00:00:00', '2013-11-04 23:14:28'),
(108, '2013-11-24', '2', '1', 'CODE33', '2', '0000-00-00 00:00:00', '2013-11-24 06:08:27'),
(109, '2013-11-24', '2', '1', 'CODE76', '5', '0000-00-00 00:00:00', '2013-11-24 06:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE `stock_out` (
  `id` int(11) NOT NULL,
  `stock_out_date` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1 = main item, 2 = sub item',
  `product_code` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `stock_out`
--

INSERT INTO `stock_out` (`id`, `stock_out_date`, `product_category`, `product_type`, `product_code`, `quantity`, `created`, `modified`) VALUES
(1, '2013-09-06', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-06 00:33:48'),
(2, '2013-09-06', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-06 00:33:48'),
(3, '2013-09-06', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-06 00:39:39'),
(4, '2013-09-06', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-06 00:39:39'),
(5, '2013-09-06', '10', '2', 'CODE71', '1', '0000-00-00 00:00:00', '2013-09-06 00:39:39'),
(6, '2013-09-08', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-08 02:06:56'),
(7, '2013-09-08', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-08 02:07:51'),
(8, '2013-09-08', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-08 02:08:09'),
(9, '2013-09-08', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(10, '2013-09-08', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(11, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(12, '2013-09-08', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-08 02:10:49'),
(13, '2013-09-08', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-08 02:54:36'),
(14, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 02:58:14'),
(15, '2013-09-08', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-08 02:58:14'),
(16, '2013-09-08', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-08 02:59:49'),
(17, '2013-09-08', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-08 03:01:36'),
(18, '2013-09-08', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-08 03:01:36'),
(19, '2013-09-08', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(20, '2013-09-08', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(21, '2013-09-08', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(22, '2013-09-08', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-08 03:05:47'),
(23, '2013-09-08', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-08 03:08:08'),
(24, '2013-09-08', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-08 04:16:55'),
(25, '2013-09-08', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-08 04:19:14'),
(26, '2013-09-08', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-08 04:25:54'),
(27, '2013-09-08', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(28, '2013-09-08', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(29, '2013-09-08', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-08 04:33:36'),
(30, '2013-09-08', '14', '1', 'CODE61', '1', '0000-00-00 00:00:00', '2013-09-08 04:36:21'),
(31, '2013-09-08', '13', '3', 'CODE31', '3', '0000-00-00 00:00:00', '2013-09-08 04:42:22'),
(32, '2013-09-08', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-08 05:16:24'),
(33, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 05:24:11'),
(34, '2013-09-08', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-08 05:38:53'),
(35, '2013-09-08', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-08 05:38:53'),
(36, '2013-09-08', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-08 06:16:59'),
(37, '2013-09-08', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-08 06:38:11'),
(38, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 06:47:54'),
(39, '2013-09-08', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-08 06:57:17'),
(40, '2013-09-08', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-08 07:10:36'),
(41, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 07:13:01'),
(42, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 07:16:10'),
(43, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 07:16:54'),
(44, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 07:23:13'),
(45, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 07:23:13'),
(46, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 07:25:47'),
(47, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 07:25:47'),
(48, '2013-09-08', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-08 07:39:02'),
(49, '2013-09-08', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(50, '2013-09-08', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(51, '2013-09-08', '2', '1', 'CODE76', '2', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(52, '2013-09-08', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(53, '2013-09-08', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(54, '2013-09-08', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-08 07:56:13'),
(55, '2013-09-08', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-08 08:00:05'),
(56, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 08:14:41'),
(57, '2013-09-08', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-08 08:14:41'),
(58, '2013-09-08', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-08 08:24:56'),
(59, '2013-09-08', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-08 08:24:56'),
(60, '2013-09-08', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-08 08:33:09'),
(61, '2013-09-08', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(62, '2013-09-08', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(63, '2013-09-08', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(64, '2013-09-08', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(65, '2013-09-08', '15', '1', 'CODE74', '1', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(66, '2013-09-08', '15', '1', 'CODE73', '2', '0000-00-00 00:00:00', '2013-09-08 09:00:54'),
(67, '2013-09-08', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-08 09:02:06'),
(68, '2013-09-08', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-08 09:02:06'),
(69, '2013-09-08', '15', '1', 'CODE73', '1', '0000-00-00 00:00:00', '2013-09-08 09:05:21'),
(70, '2013-09-09', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-09 00:05:12'),
(71, '2013-09-09', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-09 01:25:33'),
(72, '2013-09-09', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-09 01:32:45'),
(73, '2013-09-09', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-09 01:47:19'),
(74, '2013-09-09', '14', '1', 'CODE61', '1', '0000-00-00 00:00:00', '2013-09-09 01:57:24'),
(75, '2013-09-09', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-09 02:03:22'),
(76, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 02:11:01'),
(77, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 02:45:13'),
(78, '2013-09-09', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-09 03:06:46'),
(79, '2013-09-09', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-09 03:47:33'),
(80, '2013-09-09', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-09 03:48:36'),
(81, '2013-09-09', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-09 04:18:59'),
(82, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 04:37:48'),
(83, '2013-09-09', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-09 04:52:56'),
(84, '2013-09-09', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-09 04:52:56'),
(85, '2013-09-09', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-09 04:54:11'),
(86, '2013-09-09', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-09 05:01:29'),
(87, '2013-09-09', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-09 05:01:29'),
(88, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 05:10:24'),
(89, '2013-09-09', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-09 05:10:24'),
(90, '2013-09-09', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-09 05:16:01'),
(91, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 05:16:01'),
(92, '2013-09-09', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-09 05:23:39'),
(93, '2013-09-09', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-09 05:23:39'),
(94, '2013-09-09', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-09 05:30:47'),
(95, '2013-09-09', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-09 05:44:32'),
(96, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 05:44:32'),
(97, '2013-09-09', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-09 05:56:50'),
(98, '2013-09-09', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-09 05:56:50'),
(99, '2013-09-09', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-09 06:22:01'),
(100, '2013-09-09', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-09 06:22:01'),
(101, '2013-09-09', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-09 06:24:33'),
(102, '2013-09-09', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-09 06:24:33'),
(103, '2013-09-09', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-09 06:28:58'),
(104, '2013-09-09', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-09 06:28:58'),
(105, '2013-09-09', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-09 06:42:17'),
(106, '2013-09-09', '14', '1', 'CODE58', '1', '0000-00-00 00:00:00', '2013-09-09 06:46:10'),
(107, '2013-09-09', '14', '1', 'CODE58', '1', '0000-00-00 00:00:00', '2013-09-09 06:47:22'),
(108, '2013-09-09', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-09 06:49:02'),
(109, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 07:01:58'),
(110, '2013-09-09', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-09 07:07:52'),
(111, '2013-09-09', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-09 07:26:25'),
(112, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 07:26:25'),
(113, '2013-09-09', '14', '1', 'CODE61', '1', '0000-00-00 00:00:00', '2013-09-09 07:43:45'),
(114, '2013-09-09', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-09 07:52:59'),
(115, '2013-09-09', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-09 07:54:19'),
(116, '2013-09-09', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-09 08:10:42'),
(117, '2013-09-09', '2', '1', 'CODE76', '2', '0000-00-00 00:00:00', '2013-09-09 08:13:32'),
(118, '2013-09-09', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-09 08:16:19'),
(119, '2013-09-09', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-09 08:16:19'),
(120, '2013-09-09', '2', '1', 'CODE76', '3', '0000-00-00 00:00:00', '2013-09-09 08:31:40'),
(121, '2013-09-09', '14', '2', 'CODE129', '5', '0000-00-00 00:00:00', '2013-09-09 08:34:33'),
(122, '2013-09-09', '2', '1', 'CODE76', '4', '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(123, '2013-09-09', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(124, '2013-09-09', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-09 08:37:47'),
(125, '2013-09-09', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-09 08:43:24'),
(126, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 08:43:24'),
(127, '2013-09-09', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-09 08:58:52'),
(128, '2013-09-09', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-09 08:58:52'),
(129, '2013-09-10', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-10 01:04:49'),
(130, '2013-09-10', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-10 01:04:49'),
(131, '2013-09-10', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-10 01:10:34'),
(132, '2013-09-10', '14', '1', 'CODE60', '3', '0000-00-00 00:00:00', '2013-09-10 01:10:34'),
(133, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 01:25:20'),
(134, '2013-09-10', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-10 01:28:08'),
(135, '2013-09-10', '14', '1', 'CODE131', '1', '0000-00-00 00:00:00', '2013-09-10 01:28:08'),
(136, '2013-09-10', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-10 01:36:21'),
(137, '2013-09-10', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-10 01:42:46'),
(138, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 01:48:30'),
(139, '2013-09-10', '14', '1', 'CODE128', '1', '0000-00-00 00:00:00', '2013-09-10 01:48:30'),
(140, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 01:58:20'),
(141, '2013-09-10', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-10 02:22:27'),
(142, '2013-09-10', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-10 02:22:27'),
(143, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 02:42:55'),
(144, '2013-09-10', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-10 02:42:55'),
(145, '2013-09-10', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-10 02:51:44'),
(146, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 02:55:21'),
(147, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 02:55:21'),
(148, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 02:56:58'),
(149, '2013-09-10', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-10 03:00:01'),
(150, '2013-09-10', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-10 03:15:52'),
(151, '2013-09-10', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-10 04:53:16'),
(152, '2013-09-10', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-10 05:03:32'),
(153, '2013-09-10', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-10 05:03:32'),
(154, '2013-09-10', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(155, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(156, '2013-09-10', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-10 05:11:05'),
(157, '2013-09-10', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-10 05:13:10'),
(158, '2013-09-10', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-10 05:13:10'),
(159, '2013-09-10', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-10 05:14:25'),
(160, '2013-09-10', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-10 05:39:27'),
(161, '2013-09-10', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-10 05:58:52'),
(162, '2013-09-10', '14', '1', 'CODE130', '3', '0000-00-00 00:00:00', '2013-09-10 05:58:52'),
(163, '2013-09-10', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-10 06:32:08'),
(164, '2013-09-10', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-10 06:36:36'),
(165, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 07:24:27'),
(166, '2013-09-10', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-10 07:24:27'),
(167, '2013-09-10', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(168, '2013-09-10', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(169, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 07:40:37'),
(170, '2013-09-10', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-10 08:03:05'),
(171, '2013-09-10', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-10 08:14:53'),
(172, '2013-09-10', '13', '3', 'CODE30', '2', '0000-00-00 00:00:00', '2013-09-10 08:17:42'),
(173, '2013-09-10', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-10 08:19:01'),
(174, '2013-09-10', '14', '1', 'CODE128', '2', '0000-00-00 00:00:00', '2013-09-10 08:29:45'),
(175, '2013-09-10', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-10 08:29:45'),
(176, '2013-09-11', '14', '1', 'CODE131', '1', '0000-00-00 00:00:00', '2013-09-11 01:31:58'),
(177, '2013-09-11', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-11 02:29:32'),
(178, '2013-09-11', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-11 02:33:06'),
(179, '2013-09-11', '14', '1', 'CODE130', '2', '0000-00-00 00:00:00', '2013-09-11 02:33:06'),
(180, '2013-09-11', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-11 02:34:49'),
(181, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 03:23:46'),
(182, '2013-09-11', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-11 03:25:27'),
(183, '2013-09-11', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-11 04:10:28'),
(184, '2013-09-11', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-11 04:12:01'),
(185, '2013-09-11', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(186, '2013-09-11', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(187, '2013-09-11', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-11 04:44:40'),
(188, '2013-09-11', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-11 04:46:27'),
(189, '2013-09-11', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-11 04:46:27'),
(190, '2013-09-11', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(191, '2013-09-11', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(192, '2013-09-11', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-11 04:54:00'),
(193, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 05:56:42'),
(194, '2013-09-11', '14', '1', 'CODE130', '2', '0000-00-00 00:00:00', '2013-09-11 06:01:55'),
(195, '2013-09-11', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-11 06:33:13'),
(196, '2013-09-11', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-11 06:33:13'),
(197, '2013-09-11', '13', '3', 'CODE30', '2', '0000-00-00 00:00:00', '2013-09-11 06:39:57'),
(198, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 06:41:39'),
(199, '2013-09-11', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-11 07:10:49'),
(200, '2013-09-11', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-11 07:12:47'),
(201, '2013-09-11', '14', '1', 'CODE53', '4', '0000-00-00 00:00:00', '2013-09-11 07:13:20'),
(202, '2013-09-11', '14', '1', 'CODE185', '4', '0000-00-00 00:00:00', '2013-09-11 07:32:00'),
(203, '2013-09-11', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-11 07:37:51'),
(204, '2013-09-11', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-11 07:37:51'),
(205, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 07:48:31'),
(206, '2013-09-11', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-11 07:51:33'),
(207, '2013-09-11', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-11 07:53:10'),
(208, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 08:05:51'),
(209, '2013-09-11', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-11 08:09:45'),
(210, '2013-09-11', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-11 08:17:59'),
(211, '2013-09-11', '2', '1', 'CODE76', '3', '0000-00-00 00:00:00', '2013-09-11 08:38:32'),
(212, '2013-09-11', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-11 08:38:32'),
(213, '2013-09-12', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-12 00:36:06'),
(214, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 00:55:33'),
(215, '2013-09-12', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-12 01:09:14'),
(216, '2013-09-12', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-12 01:09:14'),
(217, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 01:10:42'),
(218, '2013-09-12', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-12 01:29:10'),
(219, '2013-09-12', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-12 01:54:37'),
(220, '2013-09-12', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-12 01:57:20'),
(221, '2013-09-12', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-12 02:06:50'),
(222, '2013-09-12', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-12 02:18:08'),
(223, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 02:28:04'),
(224, '2013-09-12', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-12 02:33:31'),
(225, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 02:36:43'),
(226, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 02:39:37'),
(227, '2013-09-12', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-12 02:47:53'),
(228, '2013-09-12', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-12 02:47:53'),
(229, '2013-09-12', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-12 02:48:18'),
(230, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 04:14:13'),
(231, '2013-09-12', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-12 04:28:32'),
(232, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 04:28:32'),
(233, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 04:31:04'),
(234, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(235, '2013-09-12', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(236, '2013-09-12', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-12 04:33:16'),
(237, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 04:40:48'),
(238, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 04:41:30'),
(239, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 05:32:59'),
(240, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 05:42:44'),
(241, '2013-09-12', '14', '1', 'CODE131', '1', '0000-00-00 00:00:00', '2013-09-12 05:42:44'),
(242, '2013-09-12', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-12 05:45:35'),
(243, '2013-09-12', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-12 05:52:42'),
(244, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 05:52:42'),
(245, '2013-09-12', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-12 05:57:55'),
(246, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 06:21:10'),
(247, '2013-09-12', '13', '3', 'CODE30', '1', '0000-00-00 00:00:00', '2013-09-12 06:35:53'),
(248, '2013-09-12', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-12 06:47:32'),
(249, '2013-09-12', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-12 06:52:13'),
(250, '2013-09-12', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-12 06:52:13'),
(251, '2013-09-12', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-12 06:56:05'),
(252, '2013-09-12', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-12 06:56:05'),
(253, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 07:03:55'),
(254, '2013-09-12', '13', '3', 'CODE30', '2', '0000-00-00 00:00:00', '2013-09-12 07:10:37'),
(255, '2013-09-12', '2', '1', 'CODE33', '2', '0000-00-00 00:00:00', '2013-09-12 07:34:31'),
(256, '2013-09-12', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-12 07:34:31'),
(257, '2013-09-12', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-12 07:39:27'),
(258, '2013-09-12', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-12 08:36:01'),
(259, '2013-09-12', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-12 08:41:02'),
(260, '2013-09-12', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(261, '2013-09-12', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(262, '2013-09-12', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-12 08:45:29'),
(263, '2013-09-12', '13', '3', 'CODE30', '1', '0000-00-00 00:00:00', '2013-09-12 08:55:21'),
(264, '2013-09-12', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-12 08:55:21'),
(265, '2013-09-12', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-12 09:07:25'),
(266, '2013-09-13', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-13 00:45:45'),
(267, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 00:45:45'),
(268, '2013-09-13', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-13 01:05:20'),
(269, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 01:06:38'),
(270, '2013-09-13', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-13 01:17:05'),
(271, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 01:25:10'),
(272, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(273, '2013-09-13', '13', '3', 'CODE32', '1', '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(274, '2013-09-13', '13', '3', 'CODE35', '1', '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(275, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 01:43:10'),
(276, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 01:46:33'),
(277, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 01:46:33'),
(278, '2013-09-13', '14', '1', 'CODE53', '2', '0000-00-00 00:00:00', '2013-09-13 01:47:14'),
(279, '2013-09-13', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-13 01:47:14'),
(280, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 01:54:37'),
(281, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 01:59:19'),
(282, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 02:06:57'),
(283, '2013-09-13', '14', '1', 'CODE66', '4', '0000-00-00 00:00:00', '2013-09-13 02:08:28'),
(284, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(285, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(286, '2013-09-13', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-13 02:11:44'),
(287, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 02:13:49'),
(288, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 02:15:57'),
(289, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 02:15:57'),
(290, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 02:20:07'),
(291, '2013-09-13', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-13 02:25:29'),
(292, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 02:27:46'),
(293, '2013-09-13', '13', '3', 'CODE29', '1', '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(294, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(295, '2013-09-13', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(296, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 02:33:55'),
(297, '2013-09-13', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-13 02:54:20'),
(298, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 02:58:07'),
(299, '2013-09-13', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-13 02:59:07'),
(300, '2013-09-13', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-13 03:00:57'),
(301, '2013-09-13', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-13 03:04:26'),
(302, '2013-09-13', '14', '1', 'CODE60', '5', '0000-00-00 00:00:00', '2013-09-13 03:12:52'),
(303, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(304, '2013-09-13', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(305, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 03:17:35'),
(306, '2013-09-13', '13', '3', 'CODE28', '3', '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(307, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(308, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(309, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 03:27:02'),
(310, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 03:32:11'),
(311, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 03:39:06'),
(312, '2013-09-13', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-13 03:42:40'),
(313, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 03:44:38'),
(314, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 03:45:46'),
(315, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 03:45:46'),
(316, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 03:49:37'),
(317, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 03:49:37'),
(318, '2013-09-13', '13', '3', 'CODE31', '6', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(319, '2013-09-13', '13', '3', 'CODE28', '4', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(320, '2013-09-13', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(321, '2013-09-13', '14', '1', 'CODE180', '3', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(322, '2013-09-13', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(323, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 03:58:47'),
(324, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 04:01:30'),
(325, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(326, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(327, '2013-09-13', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-13 04:19:37'),
(328, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 04:23:33'),
(329, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 04:30:21'),
(330, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 04:30:21'),
(331, '2013-09-13', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-13 04:30:21'),
(332, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(333, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 04:30:22'),
(334, '2013-09-13', '13', '3', 'CODE28', '4', '0000-00-00 00:00:00', '2013-09-13 04:37:31'),
(335, '2013-09-13', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(336, '2013-09-13', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(337, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 04:41:55'),
(338, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 04:47:23'),
(339, '2013-09-13', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-13 04:47:23'),
(340, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(341, '2013-09-13', '13', '3', 'CODE30', '2', '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(342, '2013-09-13', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-13 04:58:35'),
(343, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 05:03:13'),
(344, '2013-09-13', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-13 05:03:13'),
(345, '2013-09-13', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-13 05:03:14'),
(346, '2013-09-13', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-13 05:03:14'),
(347, '2013-09-13', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-13 05:11:30'),
(348, '2013-09-13', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-13 05:11:30'),
(349, '2013-09-13', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-13 05:12:26'),
(350, '2013-09-13', '14', '1', 'CODE54', '2', '0000-00-00 00:00:00', '2013-09-13 05:15:17'),
(351, '2013-09-13', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-13 05:19:27'),
(352, '2013-09-13', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(353, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(354, '2013-09-13', '14', '1', 'CODE62', '3', '0000-00-00 00:00:00', '2013-09-13 05:21:35'),
(355, '2013-09-13', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-13 05:39:27'),
(356, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 05:39:27'),
(357, '2013-09-13', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-13 05:46:10'),
(358, '2013-09-13', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(359, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(360, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(361, '2013-09-13', '14', '1', 'CODE185', '3', '0000-00-00 00:00:00', '2013-09-13 05:54:07'),
(362, '2013-09-13', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-13 05:56:07'),
(363, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 05:56:07'),
(364, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 05:59:08'),
(365, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:01:15'),
(366, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 06:01:15'),
(367, '2013-09-13', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(368, '2013-09-13', '14', '1', 'CODE55', '3', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(369, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(370, '2013-09-13', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(371, '2013-09-13', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(372, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 06:05:11'),
(373, '2013-09-13', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-13 06:06:32'),
(374, '2013-09-13', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-13 06:06:32'),
(375, '2013-09-13', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-13 06:11:03'),
(376, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:11:03'),
(377, '2013-09-13', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-13 06:12:38'),
(378, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:14:48'),
(379, '2013-09-13', '14', '1', 'CODE175', '1', '0000-00-00 00:00:00', '2013-09-13 06:14:48'),
(380, '2013-09-13', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(381, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(382, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:21:08'),
(383, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:24:40'),
(384, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 06:26:17'),
(385, '2013-09-13', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-13 06:28:20'),
(386, '2013-09-13', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-13 06:28:20'),
(387, '2013-09-13', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-13 06:29:36'),
(388, '2013-09-13', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-13 06:29:37'),
(389, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 06:30:49'),
(390, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 06:30:49'),
(391, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 06:35:33'),
(392, '2013-09-13', '13', '3', 'CODE35', '1', '0000-00-00 00:00:00', '2013-09-13 06:35:33'),
(393, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 06:37:22'),
(394, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 06:37:22'),
(395, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 06:38:24'),
(396, '2013-09-13', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-13 06:51:02'),
(397, '2013-09-13', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-13 06:56:42'),
(398, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 06:56:42'),
(399, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 06:58:25'),
(400, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 07:00:26'),
(401, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 07:00:26'),
(402, '2013-09-13', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-13 07:05:15'),
(403, '2013-09-13', '14', '1', 'CODE183', '2', '0000-00-00 00:00:00', '2013-09-13 07:05:15'),
(404, '2013-09-13', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-13 07:06:34'),
(405, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 07:08:18'),
(406, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 07:08:18'),
(407, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 07:09:21'),
(408, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 07:11:02'),
(409, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 07:11:02'),
(410, '2013-09-13', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-13 07:13:14'),
(411, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 07:18:55'),
(412, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 07:20:21'),
(413, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 07:20:21'),
(414, '2013-09-13', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-13 07:27:17'),
(415, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 07:27:18'),
(416, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 07:30:56'),
(417, '2013-09-13', '14', '1', 'CODE128', '1', '0000-00-00 00:00:00', '2013-09-13 07:30:56'),
(418, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 07:30:56'),
(419, '2013-09-13', '14', '1', 'CODE183', '3', '0000-00-00 00:00:00', '2013-09-13 07:32:27'),
(420, '2013-09-13', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-13 07:34:21'),
(421, '2013-09-13', '14', '1', 'CODE183', '3', '0000-00-00 00:00:00', '2013-09-13 07:34:21'),
(422, '2013-09-13', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-13 07:37:20'),
(423, '2013-09-13', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-13 07:49:33'),
(424, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 07:49:33'),
(425, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(426, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(427, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 07:53:12'),
(428, '2013-09-13', '14', '1', 'CODE130', '3', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(429, '2013-09-13', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(430, '2013-09-13', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(431, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(432, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(433, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 07:57:43'),
(434, '2013-09-13', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-13 07:59:58'),
(435, '2013-09-13', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-13 07:59:58'),
(436, '2013-09-13', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(437, '2013-09-13', '12', '1', 'CODE37', '4', '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(438, '2013-09-13', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(439, '2013-09-13', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-13 08:03:09'),
(440, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 08:04:31'),
(441, '2013-09-13', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(442, '2013-09-13', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(443, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 08:09:05'),
(444, '2013-09-13', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-13 08:14:34'),
(445, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 08:14:34'),
(446, '2013-09-13', '14', '1', 'CODE130', '2', '0000-00-00 00:00:00', '2013-09-13 08:14:34'),
(447, '2013-09-13', '12', '1', 'CODE37', '3', '0000-00-00 00:00:00', '2013-09-13 08:18:13'),
(448, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 08:20:05'),
(449, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 08:20:05'),
(450, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 08:21:22'),
(451, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 08:21:23'),
(452, '2013-09-13', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-13 08:27:46'),
(453, '2013-09-13', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-13 08:27:46'),
(454, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 08:28:48'),
(455, '2013-09-13', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-13 08:29:45'),
(456, '2013-09-13', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(457, '2013-09-13', '14', '1', 'CODE184', '1', '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(458, '2013-09-13', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-13 08:38:15'),
(459, '2013-09-13', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-13 08:45:09'),
(460, '2013-09-13', '14', '1', 'CODE66', '8', '0000-00-00 00:00:00', '2013-09-13 08:48:17'),
(461, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 08:51:48'),
(462, '2013-09-13', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-13 08:59:14'),
(463, '2013-09-13', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(464, '2013-09-13', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(465, '2013-09-13', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-13 09:02:58'),
(466, '2013-09-13', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-13 09:06:13'),
(467, '2013-09-13', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-13 09:06:13'),
(468, '2013-09-13', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-13 09:06:14'),
(469, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 09:06:14'),
(470, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 09:08:59'),
(471, '2013-09-13', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-13 09:12:21'),
(472, '2013-09-13', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-13 09:16:18'),
(473, '2013-09-13', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-13 09:21:21'),
(474, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 09:21:21'),
(475, '2013-09-13', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-13 09:24:05'),
(476, '2013-09-13', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(477, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(478, '2013-09-13', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-13 09:24:06'),
(479, '2013-09-13', '12', '1', 'CODE171', '4', '0000-00-00 00:00:00', '2013-09-13 09:25:06'),
(480, '2013-09-13', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-13 09:25:06'),
(481, '2013-09-13', '14', '1', 'CODE54', '3', '0000-00-00 00:00:00', '2013-09-13 09:29:06'),
(482, '2013-09-13', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-13 09:29:06'),
(483, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 09:34:05'),
(484, '2013-09-13', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-13 09:36:52'),
(485, '2013-09-13', '13', '3', 'CODE30', '2', '0000-00-00 00:00:00', '2013-09-13 09:37:41'),
(486, '2013-09-13', '13', '3', 'CODE30', '3', '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(487, '2013-09-13', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(488, '2013-09-13', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-13 09:45:28'),
(489, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 00:27:45'),
(490, '2013-09-14', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(491, '2013-09-14', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(492, '2013-09-14', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(493, '2013-09-14', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(494, '2013-09-14', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-14 00:45:40'),
(495, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 00:52:51'),
(496, '2013-09-14', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-14 00:57:39'),
(497, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 01:08:13'),
(498, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 01:12:05'),
(499, '2013-09-14', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-14 01:14:07'),
(500, '2013-09-14', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-14 01:14:07'),
(501, '2013-09-14', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-14 01:15:56'),
(502, '2013-09-14', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-14 01:34:14'),
(503, '2013-09-14', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-14 01:34:14'),
(504, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 01:36:08'),
(505, '2013-09-14', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-14 01:36:08'),
(506, '2013-09-14', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(507, '2013-09-14', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(508, '2013-09-14', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-14 01:48:47'),
(509, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 01:51:36'),
(510, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 01:56:18'),
(511, '2013-09-14', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-14 01:59:52'),
(512, '2013-09-14', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(513, '2013-09-14', '13', '3', 'CODE34', '2', '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(514, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 02:13:44'),
(515, '2013-09-14', '13', '3', 'CODE29', '1', '0000-00-00 00:00:00', '2013-09-14 02:17:16'),
(516, '2013-09-14', '13', '3', 'CODE35', '1', '0000-00-00 00:00:00', '2013-09-14 02:36:16'),
(517, '2013-09-14', '13', '3', 'CODE32', '3', '0000-00-00 00:00:00', '2013-09-14 02:36:16'),
(518, '2013-09-14', '13', '3', 'CODE30', '3', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(519, '2013-09-14', '13', '3', 'CODE34', '2', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(520, '2013-09-14', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(521, '2013-09-14', '16', '1', 'CODE188', '2', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(522, '2013-09-14', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(523, '2013-09-14', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(524, '2013-09-14', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(525, '2013-09-14', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(526, '2013-09-14', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(527, '2013-09-14', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-14 02:42:16'),
(528, '2013-09-14', '13', '3', 'CODE31', '2', '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(529, '2013-09-14', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(530, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 03:13:54'),
(531, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 03:44:19'),
(532, '2013-09-14', '13', '3', 'CODE31', '10', '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(533, '2013-09-14', '13', '3', 'CODE28', '12', '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(534, '2013-09-14', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(535, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(536, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 04:10:36'),
(537, '2013-09-14', '14', '1', 'CODE66', '4', '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(538, '2013-09-14', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(539, '2013-09-14', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-14 04:32:00'),
(540, '2013-09-14', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-14 04:33:43'),
(541, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 04:33:43'),
(542, '2013-09-14', '14', '1', 'CODE53', '2', '0000-00-00 00:00:00', '2013-09-14 04:54:06'),
(543, '2013-09-14', '13', '1', 'CODE194', '4', '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(544, '2013-09-14', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(545, '2013-09-14', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(546, '2013-09-14', '14', '1', 'CODE57', '2', '0000-00-00 00:00:00', '2013-09-14 04:57:35'),
(547, '2013-09-14', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-14 05:02:46'),
(548, '2013-09-14', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-14 05:04:51');
INSERT INTO `stock_out` (`id`, `stock_out_date`, `product_category`, `product_type`, `product_code`, `quantity`, `created`, `modified`) VALUES
(549, '2013-09-14', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-14 05:06:59'),
(550, '2013-09-14', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-14 05:08:23'),
(551, '2013-09-14', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-14 05:08:23'),
(552, '2013-09-14', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-14 05:30:21'),
(553, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 05:46:56'),
(554, '2013-09-14', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-14 06:04:33'),
(555, '2013-09-14', '14', '1', 'CODE183', '2', '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(556, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(557, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 06:15:01'),
(558, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 06:20:15'),
(559, '2013-09-14', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-14 06:20:15'),
(560, '2013-09-14', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-14 06:23:37'),
(561, '2013-09-14', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-14 06:44:59'),
(562, '2013-09-14', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-14 06:48:36'),
(563, '2013-09-14', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-14 06:48:36'),
(564, '2013-09-14', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-14 06:49:54'),
(565, '2013-09-14', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(566, '2013-09-14', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(567, '2013-09-14', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-14 06:51:50'),
(568, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 07:00:11'),
(569, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 07:05:53'),
(570, '2013-09-14', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-14 07:05:53'),
(571, '2013-09-14', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-14 07:13:12'),
(572, '2013-09-14', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-14 07:13:12'),
(573, '2013-09-14', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(574, '2013-09-14', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(575, '2013-09-14', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(576, '2013-09-14', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-14 07:14:42'),
(577, '2013-09-14', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-14 07:22:03'),
(578, '2013-09-14', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(579, '2013-09-14', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(580, '2013-09-14', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(581, '2013-09-14', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-14 07:23:33'),
(582, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 07:27:13'),
(583, '2013-09-14', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(584, '2013-09-14', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(585, '2013-09-14', '13', '3', 'CODE190', '1', '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(586, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 07:40:30'),
(587, '2013-09-14', '14', '1', 'CODE60', '4', '0000-00-00 00:00:00', '2013-09-14 07:54:37'),
(588, '2013-09-14', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-14 07:55:23'),
(589, '2013-09-14', '13', '3', 'CODE28', '4', '0000-00-00 00:00:00', '2013-09-14 08:10:41'),
(590, '2013-09-14', '13', '3', 'CODE201', '2', '0000-00-00 00:00:00', '2013-09-14 08:10:41'),
(591, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 08:12:26'),
(592, '2013-09-14', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-14 08:12:26'),
(593, '2013-09-14', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(594, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(595, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 08:18:43'),
(596, '2013-09-14', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-14 08:44:41'),
(597, '2013-09-14', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-14 08:45:31'),
(598, '2013-09-14', '13', '1', 'CODE194', '1', '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(599, '2013-09-14', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(600, '2013-09-14', '14', '1', 'CODE57', '1', '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(601, '2013-09-14', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-14 08:48:57'),
(602, '2013-09-14', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(603, '2013-09-14', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(604, '2013-09-14', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-14 08:53:47'),
(605, '2013-09-14', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-14 08:57:48'),
(606, '2013-09-14', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-14 08:58:41'),
(607, '2013-09-14', '13', '1', 'CODE194', '1', '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(608, '2013-09-14', '13', '3', 'CODE78', '2', '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(609, '2013-09-14', '13', '3', 'CODE191', '1', '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(610, '2013-09-14', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(611, '2013-09-14', '13', '3', 'CODE190', '1', '0000-00-00 00:00:00', '2013-09-14 08:59:19'),
(612, '2013-09-14', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-14 09:02:05'),
(613, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 09:04:24'),
(614, '2013-09-14', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-14 09:06:13'),
(615, '2013-09-14', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-14 09:07:37'),
(616, '2013-09-14', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-14 09:07:37'),
(617, '2013-09-15', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-15 01:24:44'),
(618, '2013-09-15', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-15 01:24:44'),
(619, '2013-09-15', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(620, '2013-09-15', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(621, '2013-09-15', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-15 02:09:10'),
(622, '2013-09-15', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-15 03:52:50'),
(623, '2013-09-15', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-15 04:05:59'),
(624, '2013-09-15', '14', '1', 'CODE175', '1', '0000-00-00 00:00:00', '2013-09-15 04:05:59'),
(625, '2013-09-15', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-15 04:16:35'),
(626, '2013-09-15', '14', '1', 'CODE60', '3', '0000-00-00 00:00:00', '2013-09-15 04:19:06'),
(627, '2013-09-15', '13', '3', 'CODE28', '1', '0000-00-00 00:00:00', '2013-09-15 04:21:38'),
(628, '2013-09-15', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-15 04:21:38'),
(629, '2013-09-15', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-15 04:37:05'),
(630, '2013-09-15', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-15 04:51:52'),
(631, '2013-09-15', '16', '1', 'CODE188', '2', '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(632, '2013-09-15', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(633, '2013-09-15', '14', '1', 'CODE59', '7', '0000-00-00 00:00:00', '2013-09-15 05:11:30'),
(634, '2013-09-15', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-15 05:13:55'),
(635, '2013-09-15', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-15 05:25:32'),
(636, '2013-09-15', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-15 05:30:00'),
(637, '2013-09-15', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-15 05:30:00'),
(638, '2013-09-15', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-15 05:31:12'),
(639, '2013-09-15', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-15 05:32:33'),
(640, '2013-09-15', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-15 05:33:41'),
(641, '2013-09-15', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-15 05:36:38'),
(642, '2013-09-15', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-15 05:36:38'),
(643, '2013-09-15', '14', '1', 'CODE128', '3', '0000-00-00 00:00:00', '2013-09-15 05:57:06'),
(644, '2013-09-15', '13', '3', 'CODE193', '3', '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(645, '2013-09-15', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(646, '2013-09-15', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-15 06:02:12'),
(647, '2013-09-15', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-15 06:04:44'),
(648, '2013-09-15', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-15 06:04:44'),
(649, '2013-09-15', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-15 06:10:08'),
(650, '2013-09-15', '14', '2', 'CODE129', '3', '0000-00-00 00:00:00', '2013-09-15 06:10:08'),
(651, '2013-09-15', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-15 06:20:04'),
(652, '2013-09-15', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-15 06:26:31'),
(653, '2013-09-15', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-15 06:30:58'),
(654, '2013-09-15', '13', '3', 'CODE193', '4', '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(655, '2013-09-15', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(656, '2013-09-15', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(657, '2013-09-15', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(658, '2013-09-15', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-15 06:52:59'),
(659, '2013-09-15', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-15 07:03:36'),
(660, '2013-09-15', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-15 07:39:35'),
(661, '2013-09-15', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(662, '2013-09-15', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(663, '2013-09-15', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-15 08:08:43'),
(664, '2013-09-15', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-15 08:09:39'),
(665, '2013-09-15', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-15 08:09:39'),
(666, '2013-09-15', '13', '3', 'CODE189', '2', '0000-00-00 00:00:00', '2013-09-15 08:12:31'),
(667, '2013-09-15', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-15 08:12:31'),
(668, '2013-09-15', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-15 08:25:52'),
(669, '2013-09-15', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-15 08:45:11'),
(670, '2013-09-15', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-15 08:45:11'),
(671, '2013-09-15', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(672, '2013-09-15', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(673, '2013-09-15', '14', '1', 'CODE175', '1', '0000-00-00 00:00:00', '2013-09-15 08:45:12'),
(674, '2013-09-16', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-16 00:46:22'),
(675, '2013-09-16', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-16 00:46:22'),
(676, '2013-09-16', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-16 02:00:25'),
(677, '2013-09-16', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-16 02:05:48'),
(678, '2013-09-16', '14', '1', 'CODE185', '3', '0000-00-00 00:00:00', '2013-09-16 02:34:38'),
(679, '2013-09-16', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-16 02:34:38'),
(680, '2013-09-16', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-16 04:06:30'),
(681, '2013-09-16', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-16 04:25:23'),
(682, '2013-09-16', '14', '1', 'CODE131', '1', '0000-00-00 00:00:00', '2013-09-16 04:25:23'),
(683, '2013-09-16', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-16 04:30:09'),
(684, '2013-09-16', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(685, '2013-09-16', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(686, '2013-09-16', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(687, '2013-09-16', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-16 04:33:50'),
(688, '2013-09-16', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-16 05:06:24'),
(689, '2013-09-16', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-16 05:24:11'),
(690, '2013-09-16', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-16 05:51:19'),
(691, '2013-09-16', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-16 06:03:25'),
(692, '2013-09-16', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-16 06:03:25'),
(693, '2013-09-16', '13', '3', 'CODE192', '2', '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(694, '2013-09-16', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(695, '2013-09-16', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(696, '2013-09-16', '14', '1', 'CODE56', '2', '0000-00-00 00:00:00', '2013-09-16 06:08:33'),
(697, '2013-09-16', '14', '1', 'CODE60', '3', '0000-00-00 00:00:00', '2013-09-16 06:25:40'),
(698, '2013-09-16', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-16 06:56:27'),
(699, '2013-09-16', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-16 06:56:27'),
(700, '2013-09-16', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(701, '2013-09-16', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(702, '2013-09-16', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-16 07:21:46'),
(703, '2013-09-16', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-16 07:26:14'),
(704, '2013-09-16', '14', '2', 'CODE129', '3', '0000-00-00 00:00:00', '2013-09-16 07:37:31'),
(705, '2013-09-16', '14', '1', 'CODE60', '3', '0000-00-00 00:00:00', '2013-09-16 07:58:09'),
(706, '2013-09-16', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-16 08:04:53'),
(707, '2013-09-16', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-16 08:04:53'),
(708, '2013-09-16', '2', '1', 'CODE76', '4', '0000-00-00 00:00:00', '2013-09-16 08:09:00'),
(709, '2013-09-16', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-16 08:09:00'),
(710, '2013-09-16', '13', '3', 'CODE192', '1', '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(711, '2013-09-16', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(712, '2013-09-16', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(713, '2013-09-16', '12', '1', 'CODE171', '2', '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(714, '2013-09-16', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-16 08:12:00'),
(715, '2013-09-16', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(716, '2013-09-16', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(717, '2013-09-16', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-16 08:16:58'),
(718, '2013-09-16', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-16 08:24:31'),
(719, '2013-09-16', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-16 08:24:31'),
(720, '2013-09-16', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(721, '2013-09-16', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(722, '2013-09-16', '14', '1', 'CODE175', '1', '0000-00-00 00:00:00', '2013-09-16 08:35:26'),
(723, '2013-09-16', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-16 08:47:07'),
(724, '2013-09-16', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-16 08:47:08'),
(725, '2013-09-16', '14', '1', 'CODE183', '4', '0000-00-00 00:00:00', '2013-09-16 08:54:50'),
(726, '2013-09-16', '14', '1', 'CODE60', '7', '0000-00-00 00:00:00', '2013-09-16 08:58:00'),
(727, '2013-09-17', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-17 00:36:54'),
(728, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 00:37:54'),
(729, '2013-09-17', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-17 00:37:54'),
(730, '2013-09-17', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-17 01:00:08'),
(731, '2013-09-17', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-17 01:05:56'),
(732, '2013-09-17', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-17 01:40:54'),
(733, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 01:56:17'),
(734, '2013-09-17', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-17 01:56:17'),
(735, '2013-09-17', '14', '1', 'CODE175', '2', '0000-00-00 00:00:00', '2013-09-17 01:57:22'),
(736, '2013-09-17', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(737, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(738, '2013-09-17', '14', '1', 'CODE58', '1', '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(739, '2013-09-17', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-17 02:45:06'),
(740, '2013-09-17', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-17 02:46:39'),
(741, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 03:39:00'),
(742, '2013-09-17', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-17 03:49:09'),
(743, '2013-09-17', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(744, '2013-09-17', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(745, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 04:00:36'),
(746, '2013-09-17', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-17 04:29:45'),
(747, '2013-09-17', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(748, '2013-09-17', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(749, '2013-09-17', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(750, '2013-09-17', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-17 04:30:44'),
(751, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 04:51:47'),
(752, '2013-09-17', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-17 04:54:24'),
(753, '2013-09-17', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-17 04:54:24'),
(754, '2013-09-17', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(755, '2013-09-17', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(756, '2013-09-17', '14', '1', 'CODE57', '1', '0000-00-00 00:00:00', '2013-09-17 04:57:28'),
(757, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 05:47:51'),
(758, '2013-09-17', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-17 05:47:51'),
(759, '2013-09-17', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-17 06:18:47'),
(760, '2013-09-17', '14', '2', 'CODE129', '4', '0000-00-00 00:00:00', '2013-09-17 06:18:47'),
(761, '2013-09-17', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-17 06:32:09'),
(762, '2013-09-17', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-17 06:40:09'),
(763, '2013-09-17', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-17 06:44:05'),
(764, '2013-09-17', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-17 06:44:05'),
(765, '2013-09-17', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-17 06:45:06'),
(766, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 06:48:06'),
(767, '2013-09-17', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-17 06:49:28'),
(768, '2013-09-17', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-17 06:50:56'),
(769, '2013-09-17', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-17 06:52:08'),
(770, '2013-09-17', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-17 06:52:08'),
(771, '2013-09-17', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(772, '2013-09-17', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(773, '2013-09-17', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-17 06:54:05'),
(774, '2013-09-17', '13', '3', 'CODE202', '1', '0000-00-00 00:00:00', '2013-09-17 06:59:32'),
(775, '2013-09-17', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-17 06:59:32'),
(776, '2013-09-17', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-17 07:06:13'),
(777, '2013-09-17', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-17 07:19:30'),
(778, '2013-09-17', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-17 07:19:30'),
(779, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 07:31:58'),
(780, '2013-09-17', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-17 07:38:14'),
(781, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 07:38:14'),
(782, '2013-09-17', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-17 07:40:06'),
(783, '2013-09-17', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-17 07:41:18'),
(784, '2013-09-17', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(785, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(786, '2013-09-17', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(787, '2013-09-17', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-17 07:49:53'),
(788, '2013-09-17', '14', '2', 'CODE129', '4', '0000-00-00 00:00:00', '2013-09-17 09:01:52'),
(789, '2013-09-17', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-17 09:04:32'),
(790, '2013-09-17', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-17 09:04:32'),
(791, '2013-09-17', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-17 09:08:41'),
(792, '2013-09-17', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(793, '2013-09-17', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(794, '2013-09-17', '13', '3', 'CODE202', '1', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(795, '2013-09-17', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(796, '2013-09-17', '14', '1', 'CODE175', '2', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(797, '2013-09-17', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-17 09:10:23'),
(798, '2013-09-19', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-19 01:41:02'),
(799, '2013-09-19', '14', '1', 'CODE62', '3', '0000-00-00 00:00:00', '2013-09-19 01:41:02'),
(800, '2013-09-19', '13', '3', 'CODE192', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(801, '2013-09-19', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(802, '2013-09-19', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(803, '2013-09-19', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(804, '2013-09-19', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(805, '2013-09-19', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(806, '2013-09-19', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-19 01:45:48'),
(807, '2013-09-19', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-19 02:54:43'),
(808, '2013-09-19', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(809, '2013-09-19', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(810, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(811, '2013-09-19', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(812, '2013-09-19', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-19 03:19:04'),
(813, '2013-09-19', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-19 03:32:28'),
(814, '2013-09-19', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-19 03:32:28'),
(815, '2013-09-19', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-19 04:00:04'),
(816, '2013-09-19', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(817, '2013-09-19', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(818, '2013-09-19', '14', '1', 'CODE59', '11', '0000-00-00 00:00:00', '2013-09-19 05:29:40'),
(819, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 05:31:42'),
(820, '2013-09-19', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-19 05:31:42'),
(821, '2013-09-19', '13', '3', 'CODE31', '2', '0000-00-00 00:00:00', '2013-09-19 05:32:29'),
(822, '2013-09-19', '14', '1', 'CODE181', '5', '0000-00-00 00:00:00', '2013-09-19 05:35:13'),
(823, '2013-09-19', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-19 05:35:13'),
(824, '2013-09-19', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-19 05:46:49'),
(825, '2013-09-19', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-19 05:46:49'),
(826, '2013-09-19', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-19 05:48:33'),
(827, '2013-09-19', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-19 05:48:33'),
(828, '2013-09-19', '13', '3', 'CODE28', '4', '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(829, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(830, '2013-09-19', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-19 05:54:50'),
(831, '2013-09-19', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(832, '2013-09-19', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(833, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 05:57:48'),
(834, '2013-09-19', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-19 05:57:49'),
(835, '2013-09-19', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-19 05:57:49'),
(836, '2013-09-19', '13', '3', 'CODE34', '1', '0000-00-00 00:00:00', '2013-09-19 06:11:39'),
(837, '2013-09-19', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-19 06:11:39'),
(838, '2013-09-19', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-19 06:33:07'),
(839, '2013-09-19', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-19 06:47:45'),
(840, '2013-09-19', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-19 06:47:45'),
(841, '2013-09-19', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-19 06:57:12'),
(842, '2013-09-19', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-19 07:32:31'),
(843, '2013-09-19', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-19 07:32:31'),
(844, '2013-09-19', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-19 07:32:32'),
(845, '2013-09-19', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-19 07:34:48'),
(846, '2013-09-19', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(847, '2013-09-19', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(848, '2013-09-19', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:02'),
(849, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(850, '2013-09-19', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(851, '2013-09-19', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-19 07:44:03'),
(852, '2013-09-19', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(853, '2013-09-19', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(854, '2013-09-19', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-19 07:49:49'),
(855, '2013-09-19', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-19 08:01:44'),
(856, '2013-09-19', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-19 08:01:44'),
(857, '2013-09-19', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-19 08:04:15'),
(858, '2013-09-19', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-19 08:04:15'),
(859, '2013-09-19', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(860, '2013-09-19', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(861, '2013-09-19', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-19 08:30:43'),
(862, '2013-09-19', '2', '1', 'CODE76', '4', '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(863, '2013-09-19', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(864, '2013-09-19', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(865, '2013-09-19', '14', '1', 'CODE63', '4', '0000-00-00 00:00:00', '2013-09-19 08:36:30'),
(866, '2013-09-19', '14', '1', 'CODE183', '3', '0000-00-00 00:00:00', '2013-09-19 08:39:01'),
(867, '2013-09-19', '12', '1', 'CODE38', '3', '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(868, '2013-09-19', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(869, '2013-09-19', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(870, '2013-09-19', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-19 08:40:29'),
(871, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 00:22:39'),
(872, '2013-09-20', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-20 02:01:08'),
(873, '2013-09-20', '13', '3', 'CODE196', '2', '0000-00-00 00:00:00', '2013-09-20 02:02:02'),
(874, '2013-09-20', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(875, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 02:02:03'),
(876, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 02:02:44'),
(877, '2013-09-20', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(878, '2013-09-20', '13', '3', 'CODE78', '1', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(879, '2013-09-20', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(880, '2013-09-20', '14', '1', 'CODE55', '2', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(881, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(882, '2013-09-20', '4', '1', 'CODE45', '1', '0000-00-00 00:00:00', '2013-09-20 02:08:36'),
(883, '2013-09-20', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(884, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(885, '2013-09-20', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-20 02:26:51'),
(886, '2013-09-20', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(887, '2013-09-20', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(888, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 02:38:31'),
(889, '2013-09-20', '13', '3', 'CODE192', '1', '0000-00-00 00:00:00', '2013-09-20 03:24:13'),
(890, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 03:24:13'),
(891, '2013-09-20', '13', '3', 'CODE201', '1', '0000-00-00 00:00:00', '2013-09-20 03:42:05'),
(892, '2013-09-20', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-20 03:42:05'),
(893, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 04:20:16'),
(894, '2013-09-20', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-20 04:20:16'),
(895, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 04:21:57'),
(896, '2013-09-20', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-20 04:27:50'),
(897, '2013-09-20', '14', '1', 'CODE179', '4', '0000-00-00 00:00:00', '2013-09-20 04:27:50'),
(898, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 04:30:19'),
(899, '2013-09-20', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-20 04:44:56'),
(900, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 04:44:56'),
(901, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 04:54:48'),
(902, '2013-09-20', '14', '1', 'CODE63', '4', '0000-00-00 00:00:00', '2013-09-20 05:05:24'),
(903, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 05:08:26'),
(904, '2013-09-20', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(905, '2013-09-20', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(906, '2013-09-20', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-20 05:11:21'),
(907, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(908, '2013-09-20', '13', '3', 'CODE204', '1', '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(909, '2013-09-20', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-20 05:14:15'),
(910, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 05:22:02'),
(911, '2013-09-20', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-20 05:22:02'),
(912, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 05:23:58'),
(913, '2013-09-20', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-20 05:23:58'),
(914, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 05:25:27'),
(915, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 05:29:02'),
(916, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 05:46:18'),
(917, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 05:51:14'),
(918, '2013-09-20', '14', '1', 'CODE179', '2', '0000-00-00 00:00:00', '2013-09-20 05:52:35'),
(919, '2013-09-20', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-20 05:52:35'),
(920, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 05:59:39'),
(921, '2013-09-20', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-20 06:11:16'),
(922, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 06:11:16'),
(923, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(924, '2013-09-20', '14', '1', 'CODE53', '2', '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(925, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 06:15:35'),
(926, '2013-09-20', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(927, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(928, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 06:16:19'),
(929, '2013-09-20', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-20 06:26:34'),
(930, '2013-09-20', '14', '1', 'CODE183', '2', '0000-00-00 00:00:00', '2013-09-20 06:27:17'),
(931, '2013-09-20', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-20 06:27:17'),
(932, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 06:41:59'),
(933, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 06:43:29'),
(934, '2013-09-20', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-20 06:43:29'),
(935, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 06:44:51'),
(936, '2013-09-20', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(937, '2013-09-20', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(938, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 06:53:55'),
(939, '2013-09-20', '14', '1', 'CODE128', '2', '0000-00-00 00:00:00', '2013-09-20 06:56:25'),
(940, '2013-09-20', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-20 06:56:25'),
(941, '2013-09-20', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-20 07:00:00'),
(942, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 07:03:19'),
(943, '2013-09-20', '14', '1', 'CODE180', '2', '0000-00-00 00:00:00', '2013-09-20 07:08:27'),
(944, '2013-09-20', '14', '1', 'CODE128', '2', '0000-00-00 00:00:00', '2013-09-20 07:08:27'),
(945, '2013-09-20', '14', '1', 'CODE175', '1', '0000-00-00 00:00:00', '2013-09-20 07:11:04'),
(946, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 07:11:04'),
(947, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 07:12:07'),
(948, '2013-09-20', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-20 07:12:07'),
(949, '2013-09-20', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-20 07:17:50'),
(950, '2013-09-20', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(951, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(952, '2013-09-20', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-20 07:25:37'),
(953, '2013-09-20', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-20 07:31:34'),
(954, '2013-09-20', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(955, '2013-09-20', '13', '1', 'CODE205', '4', '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(956, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 07:33:23'),
(957, '2013-09-20', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(958, '2013-09-20', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(959, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 07:46:16'),
(960, '2013-09-20', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-20 07:51:48'),
(961, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 07:52:54'),
(962, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 07:58:40'),
(963, '2013-09-20', '14', '1', 'CODE183', '2', '0000-00-00 00:00:00', '2013-09-20 07:58:40'),
(964, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 07:59:35'),
(965, '2013-09-20', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-20 07:59:35'),
(966, '2013-09-20', '14', '2', 'CODE129', '4', '0000-00-00 00:00:00', '2013-09-20 08:15:43'),
(967, '2013-09-20', '13', '1', 'CODE205', '2', '0000-00-00 00:00:00', '2013-09-20 08:21:22'),
(968, '2013-09-20', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(969, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(970, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 08:24:44'),
(971, '2013-09-20', '2', '1', 'CODE33', '2', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(972, '2013-09-20', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(973, '2013-09-20', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(974, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(975, '2013-09-20', '14', '1', 'CODE185', '3', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(976, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(977, '2013-09-20', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-20 08:29:11'),
(978, '2013-09-20', '14', '2', 'CODE129', '6', '0000-00-00 00:00:00', '2013-09-20 08:32:30'),
(979, '2013-09-20', '14', '1', 'CODE180', '3', '0000-00-00 00:00:00', '2013-09-20 08:35:17'),
(980, '2013-09-20', '4', '1', 'CODE45', '4', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(981, '2013-09-20', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(982, '2013-09-20', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(983, '2013-09-20', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(984, '2013-09-20', '2', '1', 'CODE76', '2', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(985, '2013-09-20', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(986, '2013-09-20', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-20 08:53:40'),
(987, '2013-09-20', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-20 09:04:23'),
(988, '2013-09-20', '14', '1', 'CODE62', '2', '0000-00-00 00:00:00', '2013-09-20 09:28:35'),
(989, '2013-09-20', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-20 09:28:35'),
(990, '2013-09-20', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(991, '2013-09-20', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(992, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 09:37:48'),
(993, '2013-09-20', '2', '1', 'CODE76', '4', '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(994, '2013-09-20', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(995, '2013-09-20', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(996, '2013-09-20', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(997, '2013-09-20', '14', '1', 'CODE130', '2', '0000-00-00 00:00:00', '2013-09-20 09:46:32'),
(998, '2013-09-20', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(999, '2013-09-20', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(1000, '2013-09-20', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-20 09:50:09'),
(1001, '2013-09-20', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-20 09:51:39'),
(1002, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 00:35:41'),
(1003, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 00:35:41'),
(1004, '2013-09-21', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-21 00:35:42'),
(1005, '2013-09-21', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-21 00:55:36'),
(1006, '2013-09-21', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-21 00:57:23'),
(1007, '2013-09-21', '14', '1', 'CODE66', '4', '0000-00-00 00:00:00', '2013-09-21 00:57:23'),
(1008, '2013-09-21', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-21 00:59:28'),
(1009, '2013-09-21', '14', '1', 'CODE185', '2', '0000-00-00 00:00:00', '2013-09-21 01:09:05'),
(1010, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 01:16:30'),
(1011, '2013-09-21', '14', '1', 'CODE60', '4', '0000-00-00 00:00:00', '2013-09-21 01:27:58'),
(1012, '2013-09-21', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-21 01:35:49'),
(1013, '2013-09-21', '13', '3', 'CODE78', '1', '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1014, '2013-09-21', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1015, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 01:44:16'),
(1016, '2013-09-21', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-21 02:00:32'),
(1017, '2013-09-21', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-21 02:40:15'),
(1018, '2013-09-21', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1019, '2013-09-21', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1020, '2013-09-21', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-21 02:53:12'),
(1021, '2013-09-21', '14', '1', 'CODE130', '2', '0000-00-00 00:00:00', '2013-09-21 04:01:17'),
(1022, '2013-09-21', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-21 04:01:17'),
(1023, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 04:02:22'),
(1024, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 04:09:41'),
(1025, '2013-09-21', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-21 04:14:19'),
(1026, '2013-09-21', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-21 04:31:50'),
(1027, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 04:33:02'),
(1028, '2013-09-21', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1029, '2013-09-21', '14', '1', 'CODE59', '7', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1030, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1031, '2013-09-21', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1032, '2013-09-21', '4', '1', 'CODE45', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1033, '2013-09-21', '4', '1', 'CODE41', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:46'),
(1034, '2013-09-21', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1035, '2013-09-21', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1036, '2013-09-21', '13', '1', 'CODE205', '4', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1037, '2013-09-21', '13', '3', 'CODE197', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1038, '2013-09-21', '13', '3', 'CODE190', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1039, '2013-09-21', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-21 04:51:47'),
(1040, '2013-09-21', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-21 04:56:57'),
(1041, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 04:56:57'),
(1042, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 05:04:14'),
(1043, '2013-09-21', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1044, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1045, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1046, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 05:09:24'),
(1047, '2013-09-21', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-21 05:13:33'),
(1048, '2013-09-21', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-21 05:16:03'),
(1049, '2013-09-21', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-21 05:16:47'),
(1050, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 05:16:47'),
(1051, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 05:19:17'),
(1052, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 05:46:11'),
(1053, '2013-09-21', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-21 05:52:25'),
(1054, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1055, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1056, '2013-09-21', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-21 05:59:47'),
(1057, '2013-09-21', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1058, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1059, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 06:13:38'),
(1060, '2013-09-21', '14', '2', 'CODE129', '3', '0000-00-00 00:00:00', '2013-09-21 06:23:41'),
(1061, '2013-09-21', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-21 06:26:17'),
(1062, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 06:26:18'),
(1063, '2013-09-21', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-21 06:26:18'),
(1064, '2013-09-21', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-21 06:30:52'),
(1065, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 06:36:48'),
(1066, '2013-09-21', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-21 06:36:48'),
(1067, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 06:38:25'),
(1068, '2013-09-21', '13', '3', 'CODE202', '1', '0000-00-00 00:00:00', '2013-09-21 06:39:38'),
(1069, '2013-09-21', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-21 06:39:38'),
(1070, '2013-09-21', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-21 06:39:38'),
(1071, '2013-09-21', '2', '1', 'CODE76', '6', '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(1072, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 06:39:39'),
(1073, '2013-09-21', '13', '1', 'CODE194', '1', '0000-00-00 00:00:00', '2013-09-21 06:45:55'),
(1074, '2013-09-21', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-21 06:53:20'),
(1075, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 06:53:21'),
(1076, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 06:53:21'),
(1077, '2013-09-21', '14', '1', 'CODE53', '2', '0000-00-00 00:00:00', '2013-09-21 07:04:59'),
(1078, '2013-09-21', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-21 07:04:59'),
(1079, '2013-09-21', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1080, '2013-09-21', '2', '1', 'CODE76', '2', '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1081, '2013-09-21', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1082, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1083, '2013-09-21', '14', '1', 'CODE66', '7', '0000-00-00 00:00:00', '2013-09-21 07:08:53'),
(1084, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 07:15:01'),
(1085, '2013-09-21', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1086, '2013-09-21', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1087, '2013-09-21', '4', '1', 'CODE41', '2', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1088, '2013-09-21', '13', '1', 'CODE205', '1', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1089, '2013-09-21', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1090, '2013-09-21', '13', '3', 'CODE204', '1', '0000-00-00 00:00:00', '2013-09-21 07:27:38'),
(1091, '2013-09-21', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-21 07:27:39'),
(1092, '2013-09-21', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(1093, '2013-09-21', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-21 07:29:14');
INSERT INTO `stock_out` (`id`, `stock_out_date`, `product_category`, `product_type`, `product_code`, `quantity`, `created`, `modified`) VALUES
(1094, '2013-09-21', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-21 07:29:14'),
(1095, '2013-09-21', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-21 07:38:43'),
(1096, '2013-09-21', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-21 07:39:18'),
(1097, '2013-09-21', '4', '1', 'CODE41', '1', '0000-00-00 00:00:00', '2013-09-21 07:39:18'),
(1098, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 07:40:56'),
(1099, '2013-09-21', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1100, '2013-09-21', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1101, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1102, '2013-09-21', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-21 07:43:36'),
(1103, '2013-09-21', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1104, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1105, '2013-09-21', '13', '3', 'CODE31', '1', '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1106, '2013-09-21', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-21 07:47:55'),
(1107, '2013-09-21', '13', '3', 'CODE28', '2', '0000-00-00 00:00:00', '2013-09-21 07:49:57'),
(1108, '2013-09-21', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-21 07:49:57'),
(1109, '2013-09-21', '13', '3', 'CODE193', '4', '0000-00-00 00:00:00', '2013-09-21 07:54:08'),
(1110, '2013-09-21', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-21 07:59:13'),
(1111, '2013-09-21', '2', '1', 'CODE1', '10', '0000-00-00 00:00:00', '2013-09-21 08:10:44'),
(1112, '2013-09-21', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-21 08:12:20'),
(1113, '2013-09-21', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-21 08:16:40'),
(1114, '2013-09-21', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1115, '2013-09-21', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1116, '2013-09-21', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-21 08:41:16'),
(1117, '2013-09-21', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-21 08:42:05'),
(1118, '2013-09-21', '2', '1', 'CODE1', '12', '0000-00-00 00:00:00', '2013-09-21 08:46:25'),
(1119, '2013-09-21', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-21 09:00:45'),
(1120, '2013-09-22', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-22 01:15:15'),
(1121, '2013-09-22', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-22 01:50:56'),
(1122, '2013-09-22', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-22 02:34:49'),
(1123, '2013-09-22', '12', '1', 'CODE207', '1', '0000-00-00 00:00:00', '2013-09-22 02:34:49'),
(1124, '2013-09-22', '14', '2', 'CODE129', '5', '0000-00-00 00:00:00', '2013-09-22 02:36:11'),
(1125, '2013-09-22', '14', '1', 'CODE187', '2', '0000-00-00 00:00:00', '2013-09-22 03:26:48'),
(1126, '2013-09-22', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-22 03:37:30'),
(1127, '2013-09-22', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-22 04:06:35'),
(1128, '2013-09-22', '14', '1', 'CODE66', '3', '0000-00-00 00:00:00', '2013-09-22 04:06:36'),
(1129, '2013-09-22', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1130, '2013-09-22', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1131, '2013-09-22', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-22 04:13:45'),
(1132, '2013-09-22', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-22 04:53:14'),
(1133, '2013-09-22', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-22 04:53:14'),
(1134, '2013-09-22', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-22 04:54:10'),
(1135, '2013-09-22', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-22 06:35:22'),
(1136, '2013-09-22', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-22 06:35:22'),
(1137, '2013-09-22', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-22 06:46:10'),
(1138, '2013-09-22', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-22 06:46:11'),
(1139, '2013-09-22', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-22 06:58:58'),
(1140, '2013-09-22', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-22 06:58:58'),
(1141, '2013-09-22', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-22 07:09:45'),
(1142, '2013-09-22', '14', '1', 'CODE208', '2', '0000-00-00 00:00:00', '2013-09-22 08:43:02'),
(1143, '2013-09-22', '13', '1', 'CODE203', '4', '0000-00-00 00:00:00', '2013-09-22 08:49:44'),
(1144, '2013-09-22', '2', '1', 'CODE1', '10', '0000-00-00 00:00:00', '2013-09-22 09:08:20'),
(1145, '2013-09-23', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1146, '2013-09-23', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1147, '2013-09-23', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1148, '2013-09-23', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:14'),
(1149, '2013-09-23', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:55'),
(1150, '2013-09-23', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-23 00:35:55'),
(1151, '2013-09-23', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-23 01:50:44'),
(1152, '2013-09-23', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-23 01:50:44'),
(1153, '2013-09-23', '13', '1', 'CODE205', '1', '0000-00-00 00:00:00', '2013-09-23 02:01:25'),
(1154, '2013-09-23', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-23 02:01:25'),
(1155, '2013-09-23', '14', '1', 'CODE53', '1', '0000-00-00 00:00:00', '2013-09-23 02:02:10'),
(1156, '2013-09-23', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-23 02:02:10'),
(1157, '2013-09-23', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-23 02:02:11'),
(1158, '2013-09-23', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-23 02:02:11'),
(1159, '2013-09-23', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-23 02:17:06'),
(1160, '2013-09-23', '4', '1', 'CODE41', '1', '0000-00-00 00:00:00', '2013-09-23 02:24:28'),
(1161, '2013-09-23', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-23 02:50:12'),
(1162, '2013-09-23', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-23 02:50:12'),
(1163, '2013-09-23', '2', '1', 'CODE1', '4', '0000-00-00 00:00:00', '2013-09-23 03:08:13'),
(1164, '2013-09-23', '14', '1', 'CODE66', '4', '0000-00-00 00:00:00', '2013-09-23 03:08:13'),
(1165, '2013-09-23', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1166, '2013-09-23', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1167, '2013-09-23', '14', '1', 'CODE59', '2', '0000-00-00 00:00:00', '2013-09-23 04:12:24'),
(1168, '2013-09-23', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-23 04:14:23'),
(1169, '2013-09-23', '14', '1', 'CODE185', '1', '0000-00-00 00:00:00', '2013-09-23 04:45:13'),
(1170, '2013-09-23', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-23 04:51:29'),
(1171, '2013-09-23', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1172, '2013-09-23', '12', '1', 'CODE171', '1', '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1173, '2013-09-23', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1174, '2013-09-23', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-23 04:54:50'),
(1175, '2013-09-23', '14', '2', 'CODE129', '2', '0000-00-00 00:00:00', '2013-09-23 05:55:56'),
(1176, '2013-09-23', '14', '2', 'CODE129', '1', '0000-00-00 00:00:00', '2013-09-23 06:18:50'),
(1177, '2013-09-23', '14', '1', 'CODE53', '2', '0000-00-00 00:00:00', '2013-09-23 06:20:19'),
(1178, '2013-09-23', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1179, '2013-09-23', '12', '1', 'CODE38', '1', '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1180, '2013-09-23', '14', '1', 'CODE208', '3', '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1181, '2013-09-23', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-23 07:34:00'),
(1182, '2013-09-23', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-23 07:56:09'),
(1183, '2013-09-23', '4', '1', 'CODE45', '1', '0000-00-00 00:00:00', '2013-09-23 08:18:35'),
(1184, '2013-09-23', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-23 08:18:35'),
(1185, '2013-09-23', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-23 08:22:09'),
(1186, '2013-09-24', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-24 01:22:23'),
(1187, '2013-09-24', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-24 01:32:39'),
(1188, '2013-09-24', '12', '1', 'CODE37', '1', '0000-00-00 00:00:00', '2013-09-24 01:51:26'),
(1189, '2013-09-24', '14', '1', 'CODE59', '3', '0000-00-00 00:00:00', '2013-09-24 01:53:18'),
(1190, '2013-09-24', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-24 01:53:18'),
(1191, '2013-09-24', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-24 02:00:11'),
(1192, '2013-09-24', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-24 02:00:11'),
(1193, '2013-09-24', '14', '1', 'CODE183', '2', '0000-00-00 00:00:00', '2013-09-24 02:52:07'),
(1194, '2013-09-24', '14', '1', 'CODE62', '1', '0000-00-00 00:00:00', '2013-09-24 02:52:55'),
(1195, '2013-09-24', '14', '1', 'CODE181', '1', '0000-00-00 00:00:00', '2013-09-24 02:52:55'),
(1196, '2013-09-24', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-24 03:09:55'),
(1197, '2013-09-24', '2', '1', 'CODE1', '3', '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1198, '2013-09-24', '12', '1', 'CODE40', '2', '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1199, '2013-09-24', '14', '1', 'CODE63', '2', '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1200, '2013-09-24', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-24 03:19:28'),
(1201, '2013-09-24', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-24 03:21:52'),
(1202, '2013-09-24', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1203, '2013-09-24', '14', '1', 'CODE130', '1', '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1204, '2013-09-24', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-24 03:27:47'),
(1205, '2013-09-24', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-24 03:30:55'),
(1206, '2013-09-24', '14', '1', 'CODE60', '1', '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1207, '2013-09-24', '14', '1', 'CODE66', '2', '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1208, '2013-09-24', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1209, '2013-09-24', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-24 04:47:19'),
(1210, '2013-09-24', '13', '1', 'CODE203', '1', '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1211, '2013-09-24', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1212, '2013-09-24', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1213, '2013-09-24', '14', '1', 'CODE185', '3', '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1214, '2013-09-24', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-24 05:43:40'),
(1215, '2013-09-24', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-24 06:51:26'),
(1216, '2013-09-24', '12', '1', 'CODE40', '1', '0000-00-00 00:00:00', '2013-09-24 06:51:26'),
(1217, '2013-09-24', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-24 07:12:34'),
(1218, '2013-09-24', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1219, '2013-09-24', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1220, '2013-09-24', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-24 07:13:45'),
(1221, '2013-09-24', '14', '1', 'CODE185', '3', '0000-00-00 00:00:00', '2013-09-24 07:19:16'),
(1222, '2013-09-24', '13', '3', 'CODE192', '1', '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1223, '2013-09-24', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1224, '2013-09-24', '13', '1', 'CODE194', '1', '0000-00-00 00:00:00', '2013-09-24 07:26:47'),
(1225, '2013-09-24', '4', '1', 'CODE41', '1', '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1226, '2013-09-24', '12', '1', 'CODE38', '2', '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1227, '2013-09-24', '14', '1', 'CODE208', '1', '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1228, '2013-09-24', '14', '1', 'CODE59', '4', '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1229, '2013-09-24', '14', '1', 'CODE183', '1', '0000-00-00 00:00:00', '2013-09-24 07:30:42'),
(1230, '2013-09-24', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-24 07:33:42'),
(1231, '2013-09-24', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1232, '2013-09-24', '14', '1', 'CODE59', '1', '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1233, '2013-09-24', '13', '3', 'CODE190', '1', '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1234, '2013-09-24', '2', '1', 'CODE76', '1', '0000-00-00 00:00:00', '2013-09-24 07:58:59'),
(1235, '2013-09-24', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-24 08:14:36'),
(1236, '2013-09-24', '13', '1', 'CODE203', '2', '0000-00-00 00:00:00', '2013-09-24 08:24:28'),
(1237, '2013-09-24', '14', '1', 'CODE63', '1', '0000-00-00 00:00:00', '2013-09-24 08:24:28'),
(1238, '2013-09-24', '14', '1', 'CODE60', '2', '0000-00-00 00:00:00', '2013-09-24 08:31:36'),
(1239, '2013-09-24', '12', '1', 'CODE37', '2', '0000-00-00 00:00:00', '2013-09-24 08:32:21'),
(1240, '2013-09-24', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-24 08:32:21'),
(1241, '2013-09-24', '4', '1', 'CODE41', '1', '0000-00-00 00:00:00', '2013-09-24 08:39:43'),
(1242, '2013-09-24', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1243, '2013-09-24', '14', '1', 'CODE66', '1', '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1244, '2013-09-24', '13', '3', 'CODE192', '1', '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1245, '2013-09-24', '13', '3', 'CODE193', '2', '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1246, '2013-09-24', '14', '1', 'CODE55', '1', '0000-00-00 00:00:00', '2013-09-24 08:43:20'),
(1247, '2013-09-24', '13', '3', 'CODE196', '1', '0000-00-00 00:00:00', '2013-09-24 08:46:54'),
(1248, '2013-09-24', '13', '3', 'CODE190', '1', '0000-00-00 00:00:00', '2013-09-24 08:46:54'),
(1249, '2013-09-24', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1250, '2013-09-24', '2', '1', 'CODE1', '2', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1251, '2013-09-24', '12', '1', 'CODE39', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1252, '2013-09-24', '16', '1', 'CODE188', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1253, '2013-09-24', '14', '1', 'CODE54', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1254, '2013-09-24', '14', '1', 'CODE59', '5', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1255, '2013-09-24', '14', '1', 'CODE180', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1256, '2013-09-24', '13', '3', 'CODE193', '1', '0000-00-00 00:00:00', '2013-09-24 08:50:40'),
(1257, '2013-10-02', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-10-01 22:57:10'),
(1258, '2013-10-02', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-10-02 03:05:46'),
(1259, '2013-10-05', '2', '1', 'CODE1', '1', '0000-00-00 00:00:00', '2013-10-05 03:16:22'),
(1260, '2013-11-24', '10', '2', 'CODE68', '200', '0000-00-00 00:00:00', '2013-11-24 06:08:27'),
(1261, '2013-11-24', '10', '2', 'CODE210', '2', '0000-00-00 00:00:00', '2013-11-24 06:08:27'),
(1262, '2013-11-24', '10', '2', 'CODE209', '2', '0000-00-00 00:00:00', '2013-11-24 06:08:27'),
(1263, '2013-11-24', '2', '1', 'CODE33', '2', '0000-00-00 00:00:00', '2013-11-24 06:09:20'),
(1264, '2013-11-24', '10', '2', 'CODE211', '800', '0000-00-00 00:00:00', '2013-11-24 06:19:26'),
(1265, '2013-11-24', '10', '2', 'CODE212', '200', '0000-00-00 00:00:00', '2013-11-24 06:19:26'),
(1266, '2013-11-24', '10', '2', 'CODE209', '5', '0000-00-00 00:00:00', '2013-11-24 06:19:26'),
(1267, '2013-11-24', '10', '2', 'CODE210', '10', '0000-00-00 00:00:00', '2013-11-24 06:19:27'),
(1268, '2013-11-24', '2', '1', 'CODE76', '4', '0000-00-00 00:00:00', '2013-11-24 06:20:13'),
(1269, '2013-11-26', '2', '1', 'CODE33', '1', '0000-00-00 00:00:00', '2013-11-26 01:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `stock_temp`
--

CREATE TABLE `stock_temp` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL COMMENT '1 = main item, 2 = sub item',
  `product_code` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplier_id`, `name`, `supplier_type`, `phone`, `fax`, `mobile`, `address`, `email`, `created`, `modified`) VALUES
(7, '', 'White Hen Gourmet', '1', '029886154', '', '01768123355', 'Hs: 21, Rd: 10, Block C, Banani, Dhaka.', '', '2013-09-05 07:09:23', '2013-09-05 07:08:59'),
(8, '', 'Dhaka delight', '1', '', '', '', '', '', '2013-09-06 00:23:15', '2013-09-06 00:22:51'),
(9, '', 'Basar agro food', '1', '9895225', '', '9895228', '', '', '2013-09-09 06:25:05', '2013-09-09 00:24:41'),
(10, '', 'Bhai Bhai Racksin', '1', '', '', '', '', '', '2013-09-09 10:07:50', '2013-09-09 04:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `chalan_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `payment_date` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `bank_id` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) NOT NULL,
  `cheque_no` varchar(100) DEFAULT NULL,
  `cheque_date` varchar(100) DEFAULT NULL,
  `cheque_type` varchar(100) DEFAULT NULL,
  `amount` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_type`
--

CREATE TABLE `supplier_type` (
  `id` bigint(20) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type_name` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier_type`
--

INSERT INTO `supplier_type` (`id`, `type_id`, `type_name`, `created`, `modified`) VALUES
(1, '', 'General Supplier', '2012-02-19 11:59:31', '2012-02-19 03:58:43'),
(2, '', 'Forign', '2012-03-03 10:24:00', '2012-03-03 02:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `table_track`
--

CREATE TABLE `table_track` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `table_id` varchar(200) NOT NULL,
  `order_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate`
--

CREATE TABLE `tax_rate` (
  `id` bigint(20) NOT NULL,
  `tax_id` varchar(100) NOT NULL,
  `tax_ratio` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tax_rate`
--

INSERT INTO `tax_rate` (`id`, `tax_id`, `tax_ratio`, `created`, `modified`) VALUES
(1, '1', 4.5, '2012-01-25 19:28:23', '2012-01-30 03:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `unit_type`
--

CREATE TABLE `unit_type` (
  `id` int(11) NOT NULL,
  `unit_type_id` varchar(100) NOT NULL,
  `unit_type` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `unit_type`
--

INSERT INTO `unit_type` (`id`, `unit_type_id`, `unit_type`, `created`, `modified`) VALUES
(11, '3', 'Palet', '2011-06-27 11:49:41', '2011-06-27 19:49:17'),
(10, '2', 'Piece', '2011-06-27 11:49:30', '2011-06-27 19:49:06'),
(9, '1', 'Boxes', '2011-06-27 11:49:19', '2011-06-27 19:48:55'),
(12, '', 'Packets', '2012-04-25 14:19:14', '2012-04-25 06:18:26'),
(13, '', 'package', '2013-09-02 08:18:22', '2013-09-01 20:17:34'),
(14, '', 'kg', '2013-09-05 05:56:50', '2013-09-05 05:56:26'),
(15, '', 'gm', '2013-09-09 06:52:30', '2013-09-09 00:52:06'),
(16, '', 'Chicken Wings', '2013-09-13 11:36:29', '2013-09-13 05:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `full_name` varchar(300) NOT NULL,
  `station_id` varchar(100) NOT NULL,
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sell_prev` int(11) DEFAULT NULL,
  `sell_user_prev` int(11) DEFAULT NULL,
  `product_prev` int(11) DEFAULT NULL,
  `stock_prev` int(11) DEFAULT NULL,
  `requisition_prev` int(11) DEFAULT NULL,
  `received_delivery_prev` int(11) DEFAULT NULL,
  `customer_prev` int(11) DEFAULT NULL,
  `supplier_prev` int(11) DEFAULT NULL,
  `accounts_prev` int(11) DEFAULT NULL,
  `configuration_prev` int(11) DEFAULT NULL,
  `kitchen_prev` int(11) DEFAULT NULL,
  `superadmin_prev` int(11) DEFAULT NULL,
  `with_table` int(11) DEFAULT NULL,
  `user_sign` varchar(300) NOT NULL,
  `created` varchar(200) DEFAULT NULL,
  `lastvisit` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `superuser` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `full_name`, `station_id`, `activkey`, `create_at`, `sell_prev`, `sell_user_prev`, `product_prev`, `stock_prev`, `requisition_prev`, `received_delivery_prev`, `customer_prev`, `supplier_prev`, `accounts_prev`, `configuration_prev`, `kitchen_prev`, `superadmin_prev`, `with_table`, `user_sign`, `created`, `lastvisit`, `superuser`, `status`) VALUES
(1, 'admin', '$2a$12$KLrv.IDjorQgmoH4urIVdeKeMIuEVROMfhV3HMAAHQz6g65nGTALO', 'darahat42@gmail.com', 'Didarul alam Rahat', '1', '9a24eff8c15a6a141ece27eb6947da0f', '2012-02-23 01:52:12', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', NULL, '0000-00-00 00:00:00', 1, 1),
(2, 'cash', 'e10adc3949ba59abbe56e057f20f883e', 'demo@example.com', 'Cash', '2', '099f825543f7850cc038b90aaff39fac', '2012-02-23 01:52:12', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', NULL, '0000-00-00 00:00:00', 0, 1),
(9, 'weater1', 'adcb76d89d0b8bd82f2263cd9b6b6ab9', 'weater1@yahoo.com', 'Weater 1', '1', '', '2013-09-05 05:33:13', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 1, '', NULL, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_pre`
--

CREATE TABLE `users_pre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_pre`
--

INSERT INTO `users_pre` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kazi Sanchoy Ahmed', 'sanchoy7@gmail.com', NULL, '$2y$10$gph0fH7GLKzqaJHZQb5Z.e4hEqUyXSRJCXZM25dayiJMVs9MCByGa', NULL, '2021-11-02 01:06:50', '2021-11-02 01:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `vat_service_charge_ratio`
--

CREATE TABLE `vat_service_charge_ratio` (
  `id` bigint(20) NOT NULL,
  `vat_ratio` double NOT NULL,
  `service_charge_ratio` double NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vat_service_charge_ratio`
--

INSERT INTO `vat_service_charge_ratio` (`id`, `vat_ratio`, `service_charge_ratio`, `created`, `modified`) VALUES
(1, 15, 10, '0000-00-00 00:00:00', '2012-09-26 23:42:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_receive`
--
ALTER TABLE `account_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_cheque`
--
ALTER TABLE `bank_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_table`
--
ALTER TABLE `cafe_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_bank`
--
ALTER TABLE `cash_in_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_in_hand`
--
ALTER TABLE `cash_in_hand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_temp`
--
ALTER TABLE `cheque_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_name`
--
ALTER TABLE `expense_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoice_track`
--
ALTER TABLE `invoice_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kot_main_truck`
--
ALTER TABLE `kot_main_truck`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `kot_setting`
--
ALTER TABLE `kot_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `kot_setting_product`
--
ALTER TABLE `kot_setting_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kot_setting_temp`
--
ALTER TABLE `kot_setting_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_expense`
--
ALTER TABLE `office_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_setting`
--
ALTER TABLE `package_setting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `package_setting_product`
--
ALTER TABLE `package_setting_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_setting_temp`
--
ALTER TABLE `package_setting_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivd_delivery_temp`
--
ALTER TABLE `receivd_delivery_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_delivery`
--
ALTER TABLE `received_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_delivery_product`
--
ALTER TABLE `received_delivery_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_order`
--
ALTER TABLE `sell_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `sell_order_product`
--
ALTER TABLE `sell_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_quantity`
--
ALTER TABLE `sell_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_return`
--
ALTER TABLE `sell_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_return_temp`
--
ALTER TABLE `sell_return_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_temp`
--
ALTER TABLE `sell_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_in`
--
ALTER TABLE `stock_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_temp`
--
ALTER TABLE `stock_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_type`
--
ALTER TABLE `supplier_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_track`
--
ALTER TABLE `table_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rate`
--
ALTER TABLE `tax_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_type`
--
ALTER TABLE `unit_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `status` (`status`),
  ADD KEY `superuser` (`superuser`);

--
-- Indexes for table `users_pre`
--
ALTER TABLE `users_pre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vat_service_charge_ratio`
--
ALTER TABLE `vat_service_charge_ratio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_receive`
--
ALTER TABLE `account_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_cheque`
--
ALTER TABLE `bank_cheque`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cafe_table`
--
ALTER TABLE `cafe_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cash_in_bank`
--
ALTER TABLE `cash_in_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cash_in_hand`
--
ALTER TABLE `cash_in_hand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cheque_temp`
--
ALTER TABLE `cheque_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_name`
--
ALTER TABLE `expense_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_track`
--
ALTER TABLE `invoice_track`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kot_main_truck`
--
ALTER TABLE `kot_main_truck`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kot_setting`
--
ALTER TABLE `kot_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kot_setting_product`
--
ALTER TABLE `kot_setting_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `kot_setting_temp`
--
ALTER TABLE `kot_setting_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `office_expense`
--
ALTER TABLE `office_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_setting`
--
ALTER TABLE `package_setting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `package_setting_product`
--
ALTER TABLE `package_setting_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package_setting_temp`
--
ALTER TABLE `package_setting_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `receivd_delivery_temp`
--
ALTER TABLE `receivd_delivery_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `received_delivery`
--
ALTER TABLE `received_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `received_delivery_product`
--
ALTER TABLE `received_delivery_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `sell_order`
--
ALTER TABLE `sell_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=685;

--
-- AUTO_INCREMENT for table `sell_order_product`
--
ALTER TABLE `sell_order_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT for table `sell_quantity`
--
ALTER TABLE `sell_quantity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sell_return`
--
ALTER TABLE `sell_return`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_return_temp`
--
ALTER TABLE `sell_return_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sell_temp`
--
ALTER TABLE `sell_temp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `stock_in`
--
ALTER TABLE `stock_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `stock_out`
--
ALTER TABLE `stock_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1270;

--
-- AUTO_INCREMENT for table `stock_temp`
--
ALTER TABLE `stock_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_type`
--
ALTER TABLE `supplier_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_track`
--
ALTER TABLE `table_track`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate`
--
ALTER TABLE `tax_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `unit_type`
--
ALTER TABLE `unit_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_pre`
--
ALTER TABLE `users_pre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vat_service_charge_ratio`
--
ALTER TABLE `vat_service_charge_ratio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
