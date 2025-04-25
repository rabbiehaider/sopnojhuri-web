-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 08:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farabiegroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`Acc_SlNo`, `Acc_Code`, `Acc_Name`, `Acc_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'A0001', 'ecchance', '', 'a', 1, '2024-05-07 18:24:41', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(2, 'A0002', 'Others', '', 'a', 1, '2024-05-08 11:58:11', NULL, NULL, NULL, NULL, '103.159.73.254', 3),
(3, 'A0003', 'Office Food', '', 'a', 1, '2024-05-18 16:56:38', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(4, 'A0004', 'Hazi Abdur Rahim', '', 'a', 1, '2024-05-18 17:22:23', NULL, NULL, NULL, NULL, '103.82.9.15', 1),
(5, 'A0005', 'Faruk advance sallary', '', 'a', 1, '2024-05-22 12:34:52', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(6, 'A0006', 'Office Expense', '', 'a', 1, '2024-05-22 13:42:23', NULL, NULL, NULL, NULL, '5.107.225.106', 1),
(7, 'A0007', 'ekram sub contractor', '', 'a', 1, '2024-06-19 02:41:29', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(8, 'A0008', 'akber sanatory', '', 'a', 1, '2024-06-19 02:43:17', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(9, 'A0009', 'shahid hardware', '', 'a', 1, '2024-06-19 02:44:23', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(10, 'A0010', 'saiful mistri', '', 'a', 1, '2024-06-19 02:50:37', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(11, 'A0011', 'aziber vata', '', 'a', 1, '2024-06-19 02:51:05', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(12, 'A0012', 'milon ciment', '', 'a', 1, '2024-06-19 02:51:33', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(13, 'A0013', 'reza rod', '', 'a', 1, '2024-06-19 02:51:52', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(14, 'A0014', 'van vara mokched', '', 'a', 1, '2024-06-19 02:52:24', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(15, 'A0015', 'ahmed rang mistri', '', 'a', 1, '2024-06-19 02:53:00', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a', 1, '2024-06-19 02:53:35', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(17, 'A0017', 'sakob electronicks', '', 'a', 1, '2024-06-19 02:54:17', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(18, 'A0018', 'tometo', '', 'a', 1, '2024-06-25 15:55:24', NULL, NULL, NULL, NULL, '103.150.64.208', 2),
(19, 'A0019', 'dbbl', '', 'a', 1, '2024-06-25 15:58:25', NULL, NULL, NULL, NULL, '103.150.64.208', 3),
(20, 'A0020', 'nasta bill', '', 'a', 1, '2024-06-26 12:16:44', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(21, 'A0021', 'cash', '', 'a', 1, '2024-09-07 11:37:30', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(22, 'A0022', 'office rent', '', 'a', 8, '2024-09-09 12:38:43', NULL, NULL, NULL, NULL, '202.134.10.142', 5),
(23, 'A0023', 'Entertenment', '', 'a', 8, '2024-09-09 17:08:40', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(24, 'A0024', 'Service', '', 'a', 1, '2024-10-06 14:08:42', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(25, 'A0025', 'internet bills', '', 'a', 14, '2024-10-07 20:01:56', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(26, 'A0026', 'Moshiur Khan', '', 'a', 1, '2024-10-28 12:06:00', NULL, NULL, NULL, NULL, '103.159.73.78', 1),
(27, 'A0027', 'Rakib Khan - Kazi Para', '', 'a', 1, '2024-10-28 12:06:15', NULL, NULL, NULL, NULL, '103.159.73.78', 1),
(28, 'A0028', 'r1', '', 'a', 1, '2024-11-06 16:31:32', NULL, NULL, NULL, NULL, '103.152.106.48', 12),
(29, 'A0029', 'Salary Ad, Saijd', '', 'a', 1, '2024-11-12 13:08:58', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assets`
--

CREATE TABLE `tbl_assets` (
  `as_id` int(11) NOT NULL,
  `as_date` date DEFAULT NULL,
  `as_name` varchar(50) DEFAULT NULL,
  `as_sp_name` varchar(100) DEFAULT NULL,
  `as_qty` int(11) DEFAULT NULL,
  `as_rate` decimal(10,2) DEFAULT NULL,
  `as_amount` decimal(10,2) DEFAULT NULL,
  `buy_or_sale` enum('buy','sale') NOT NULL DEFAULT 'buy',
  `valuation` decimal(20,2) DEFAULT 0.00,
  `unit_valuation` decimal(20,2) DEFAULT 0.00,
  `as_note` text DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_accounts`
--

CREATE TABLE `tbl_bank_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_transactions`
--

CREATE TABLE `tbl_bank_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_SiNo` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_SiNo`, `brand_name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'SopnoJhuri', 'a', NULL, NULL, NULL, NULL, NULL, NULL, '', 1),
(2, 'Exporty Shop', 'a', NULL, NULL, NULL, NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_transactions`
--

CREATE TABLE `tbl_cash_transactions` (
  `Tr_SlNo` int(11) NOT NULL,
  `Tr_Id` varchar(50) NOT NULL,
  `Tr_date` date NOT NULL,
  `Tr_Type` varchar(20) NOT NULL,
  `Tr_account_Type` varchar(50) NOT NULL,
  `Acc_SlID` int(11) NOT NULL,
  `Tr_Description` varchar(255) NOT NULL,
  `In_Amount` decimal(18,2) NOT NULL,
  `Out_Amount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `Category_SlNo` int(11) NOT NULL,
  `Category_Name` varchar(150) NOT NULL,
  `Category_Image` varchar(55) DEFAULT NULL,
  `Category_Icon` varchar(55) DEFAULT NULL,
  `is_home` varchar(55) NOT NULL DEFAULT 'false',
  `route` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` varchar(30) DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`Category_SlNo`, `Category_Name`, `Category_Image`, `Category_Icon`, `is_home`, `route`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'Bags', 'uploads/categories/381891_6749f8d5bcebc.svg', 'uploads/categories/750978_6749f8d5c46e5.svg', 'true', 'bags', 'a', 1, '2024-11-29 23:20:40', 1, '2024-12-01 23:20:55', NULL, NULL, '::1', 1),
(2, 'Cosmetics', 'uploads/categories/532500_6749f993a6054.svg', 'uploads/categories/565276_6749f993a8fa8.svg', 'true', 'cosmetics', 'a', 1, '2024-11-29 23:27:47', 1, '2024-12-01 23:20:49', NULL, NULL, '::1', 1),
(3, 'Jewelry', 'uploads/categories/121946_6749f935c1289.svg', 'uploads/categories/563936_6749f935d06ab.svg', 'true', 'jewelry', 'a', 1, '2024-11-29 23:26:13', 1, '2024-12-01 23:20:43', NULL, NULL, '::1', 1),
(4, 'Phone Accessories', 'uploads/categories/930756_6749fa9ab387b.svg', 'uploads/categories/296460_6749fa9ab64b6.svg', 'true', 'phone-accessories', 'a', 1, '2024-11-29 23:32:10', 1, '2024-12-01 23:20:37', NULL, NULL, '::1', 1),
(5, 'Mens Clothing', 'uploads/categories/489437_6749f9c36caa3.svg', 'uploads/categories/206543_6749f9c36e5b4.svg', 'true', 'mens-clothing', 'a', 1, '2024-11-29 23:28:35', 1, '2024-12-01 23:20:24', NULL, NULL, '::1', 1),
(6, 'Womens Clothing', 'uploads/categories/112687_6749f9f49595c.svg', 'uploads/categories/112029_6749f9f4975a9.svg', 'true', 'womens-clothing', 'a', 1, '2024-11-29 23:29:24', 1, '2024-12-01 23:20:13', NULL, NULL, '::1', 1),
(7, 'Shoes', 'uploads/categories/945161_6749f9553f5ba.svg', 'uploads/categories/593687_6749f95541117.svg', 'true', 'shoes', 'a', 1, '2024-11-29 23:26:45', 1, '2024-12-01 23:20:03', NULL, NULL, '::1', 1),
(8, 'Baby Items', 'uploads/categories/554358_6749fa2f19175.svg', 'uploads/categories/452659_6749fa2f1adb2.svg', 'true', 'baby-items', 'a', 1, '2024-11-29 23:30:23', 1, '2024-12-01 23:19:57', NULL, NULL, '::1', 1),
(9, 'Glasses', 'uploads/categories/493105_6749fa67ddf81.svg', 'uploads/categories/534594_6749fa67dfbdb.svg', 'true', 'glasses', 'a', 1, '2024-11-29 23:31:19', 1, '2024-12-01 23:19:46', NULL, NULL, '::1', 1),
(10, 'Watches', 'uploads/categories/489026_6749fb07ed22d.svg', 'uploads/categories/978213_6749fb07eeede.svg', 'true', 'watches', 'a', 1, '2024-11-29 23:33:59', 1, '2024-12-01 23:19:40', NULL, NULL, '::1', 1),
(11, 'Home & Kitchen', 'uploads/categories/177187_6749fc64082ea.svg', 'uploads/categories/375885_6749fc6409822.svg', 'false', 'home-kitchen', 'a', 1, '2024-11-29 23:39:34', 1, '2024-12-01 23:19:31', NULL, NULL, '::1', 1),
(12, 'Electronics', 'uploads/categories/609127_6749fb352ec13.svg', 'uploads/categories/916636_6749fb35306d1.svg', 'true', 'electronics', 'a', 1, '2024-11-29 23:34:45', 1, '2024-12-01 23:19:09', NULL, NULL, '::1', 1),
(13, 'Outdoor & Travelling', 'uploads/categories/155282_6749fc340bbf9.svg', 'uploads/categories/366289_6749fc3ca0627.svg', 'false', 'outdoor-travelling', 'a', 1, '2024-11-29 23:39:00', 1, '2024-12-01 23:19:02', NULL, NULL, '::1', 1),
(14, 'Sports & Fitness', 'uploads/categories/345755_6749fba9e3f56.svg', 'uploads/categories/971746_6749fba9e5a75.svg', 'false', 'sports-fitness', 'a', 1, '2024-11-29 23:36:41', 1, '2024-12-01 23:18:48', NULL, NULL, '::1', 1),
(15, 'Entertainment Items', 'uploads/categories/749036_6749fbd407377.svg', 'uploads/categories/171706_6749fbd408c55.svg', 'false', 'entertainment-items', 'a', 1, '2024-11-29 23:37:24', 1, '2024-12-01 23:18:35', NULL, NULL, '::1', 1),
(16, 'Automobile Items', 'uploads/categories/720246_6749fbef8bf0e.svg', 'uploads/categories/556441_6749fbef8d53b.svg', 'false', 'automobile-items', 'a', 1, '2024-11-29 23:37:47', 1, '2024-12-01 23:18:19', NULL, NULL, '::1', 1),
(17, 'Office & School Supplies', 'uploads/categories/389619_6749fb735f166.svg', 'uploads/categories/310590_6749fb7360b0f.svg', 'false', 'office-school', 'a', 1, '2024-11-29 23:35:47', 1, '2024-12-01 23:18:05', NULL, NULL, '::1', 1),
(18, 'Groceries', 'uploads/categories/458503_6749fb206204f.svg', 'uploads/categories/906255_6749fb2064bd4.svg', 'true', 'groceries', 'a', 1, '2024-11-29 23:34:24', 1, '2024-12-01 23:17:50', NULL, NULL, '::1', 1),
(19, 'Tools & Home Improvement', 'uploads/categories/386668_6749fc6ed69ea.svg', 'uploads/categories/324724_6749fc6ed861e.svg', 'false', 'tools-home', 'a', 1, '2024-11-29 23:39:58', 1, '2024-12-01 23:17:39', NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cheque`
--

CREATE TABLE `tbl_cheque` (
  `id` int(20) UNSIGNED NOT NULL,
  `cus_id` int(20) DEFAULT NULL,
  `SM_id` int(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `check_no` varchar(250) DEFAULT NULL,
  `check_amount` decimal(18,2) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `check_date` timestamp NULL DEFAULT NULL,
  `remid_date` timestamp NULL DEFAULT NULL,
  `sub_date` timestamp NULL DEFAULT NULL,
  `note` text DEFAULT NULL,
  `check_status` char(5) DEFAULT 'Pe' COMMENT 'Pe =Pending, Pa = Paid',
  `status` char(5) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_SiNo` int(11) NOT NULL,
  `color_name` varchar(100) NOT NULL,
  `status` char(2) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_SiNo`, `color_name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'Black', 'a', 1, '2025-02-15 18:42:33', 1, '2025-02-15 18:46:50', NULL, NULL, '', 1),
(2, 'Red', 'a', 1, '2025-02-15 19:09:10', NULL, NULL, NULL, NULL, '', 1),
(3, 'White', 'a', 1, '2025-02-15 19:09:17', NULL, NULL, NULL, NULL, '', 1),
(4, 'Off-White', 'a', 1, '2025-02-15 19:09:23', NULL, NULL, NULL, NULL, '', 1),
(5, 'Purple', 'a', 1, '2025-02-15 19:09:28', NULL, NULL, NULL, NULL, '', 1),
(6, 'Pink', 'a', 1, '2025-02-15 19:09:32', NULL, NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `Company_SlNo` int(11) NOT NULL,
  `Company_Name` varchar(150) NOT NULL,
  `Repot_Heading` mediumtext NOT NULL,
  `Company_Logo_org` varchar(250) NOT NULL,
  `Company_Logo_thum` varchar(250) NOT NULL,
  `Currency_Name` varchar(50) DEFAULT NULL,
  `SubCurrency_Name` varchar(100) DEFAULT NULL,
  `Currency_Symbol` varchar(10) DEFAULT NULL,
  `InvoiceHeder` varchar(100) NOT NULL DEFAULT 'Sales Invoice',
  `InvoiceNote` text DEFAULT NULL,
  `print_type` int(11) NOT NULL,
  `dueStatus` varchar(5) NOT NULL DEFAULT 'true',
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`Company_SlNo`, `Company_Name`, `Repot_Heading`, `Company_Logo_org`, `Company_Logo_thum`, `Currency_Name`, `SubCurrency_Name`, `Currency_Symbol`, `InvoiceHeder`, `InvoiceNote`, `print_type`, `dueStatus`, `UpdateBy`, `UpdateTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'Farabie Group', '01781-325634\r\nMirpur 10, Dhaka', '', 'uploads/company_profile_thum/_6742203b55056.png', 'BDT', 'Poisha', NULL, 'Sales Invoice', 'Thanks for shopping', 1, 'true', NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `Country_SlNo` int(11) NOT NULL,
  `CountryName` varchar(50) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) NOT NULL,
  `AddTime` datetime NOT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `Customer_SlNo` int(11) NOT NULL,
  `Customer_Code` varchar(50) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `Customer_Type` varchar(50) NOT NULL,
  `Customer_Phone` varchar(50) NOT NULL,
  `Customer_Mobile` varchar(15) NOT NULL,
  `Customer_Email` varchar(50) NOT NULL,
  `Customer_OfficePhone` varchar(50) NOT NULL,
  `Customer_Address` varchar(300) NOT NULL,
  `owner_name` varchar(250) DEFAULT NULL,
  `Country_SlNo` int(11) NOT NULL,
  `area_ID` int(11) NOT NULL,
  `Customer_Web` varchar(50) NOT NULL,
  `Customer_Credit_Limit` decimal(18,2) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_payment`
--

CREATE TABLE `tbl_customer_payment` (
  `CPayment_id` int(11) NOT NULL,
  `CPayment_date` date DEFAULT NULL,
  `CPayment_invoice` varchar(20) DEFAULT NULL,
  `CPayment_customerID` varchar(20) DEFAULT NULL,
  `CPayment_TransactionType` varchar(20) DEFAULT NULL,
  `CPayment_amount` decimal(18,2) DEFAULT NULL,
  `out_amount` float NOT NULL DEFAULT 0,
  `CPayment_Paymentby` varchar(50) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `CPayment_previous_due` float NOT NULL DEFAULT 0,
  `CPayment_notes` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer_payment`
--

INSERT INTO `tbl_customer_payment` (`CPayment_id`, `CPayment_date`, `CPayment_invoice`, `CPayment_customerID`, `CPayment_TransactionType`, `CPayment_amount`, `out_amount`, `CPayment_Paymentby`, `account_id`, `CPayment_previous_due`, `CPayment_notes`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '2024-04-28', '240100001', NULL, 'CP', '100.00', 0, 'cash', NULL, 0, NULL, 'a', 1, '2024-04-28 16:43:58', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, '2024-04-29', 'TR00002', '1', 'CR', '200.00', 0, 'cash', NULL, 1166, 'cash', 'a', 1, '2024-04-29 15:01:57', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, '2024-05-02', 'TR00003', '1', 'CR', '500.00', 0, 'cash', NULL, 1064, '', 'a', 1, '2024-05-02 14:45:02', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(4, '2024-05-13', 'TR00004', '3', 'CR', '2000.00', 0, 'cash', NULL, 5000, 'Md.  Sumon', 'a', 1, '2024-05-13 13:57:02', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(5, '2024-05-18', '240100007', NULL, 'CP', '70.00', 0, 'cash', NULL, 0, NULL, 'a', 1, '2024-05-18 10:34:12', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(6, '2024-05-16', 'TR00006', '11', 'CP', '100000.00', 0, 'cash', NULL, -50000, '', 'a', 1, '2024-05-18 17:16:52', 1, '2024-05-18 17:20:51', NULL, NULL, '103.82.9.15', 1),
(7, '2024-05-22', 'TR00007', '12', 'CR', '10.00', 0, 'cash', NULL, 12, '', 'a', 1, '2024-05-22 13:02:29', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(8, '2024-06-16', 'TR00008', '3', 'CR', '300.00', 0, 'bank', 2, 3000, '', 'a', 1, '2024-06-16 12:17:51', NULL, NULL, NULL, NULL, '114.130.188.243', 1),
(9, '2024-06-18', 'TR00009', '16', 'CR', '1200000.00', 0, 'bank', 1, 1427150, '', 'd', 1, '2024-06-18 04:17:26', NULL, NULL, 1, '2024-06-18 06:15:44', '103.147.166.161', 1),
(10, '2024-06-18', 'TR00010', '16', 'CR', '550000.00', 0, 'bank', 4, 1427150, '', 'a', 1, '2024-06-18 06:16:42', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(11, '2024-07-06', 'TR00011', '24', 'CR', '1166.00', 0, 'cash', NULL, 1166, '', 'a', 1, '2024-07-06 20:17:22', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(12, '2024-07-11', 'TR00012', '26', 'CR', '20000.00', 0, 'cash', NULL, 32060, '', 'a', 1, '2024-07-11 16:37:28', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(13, '2024-08-29', 'TR00013', '31', 'CR', '50.00', 0, 'cash', NULL, 500, 'cash', 'a', 1, '2024-08-29 10:05:59', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(14, '2024-08-29', 'TR00014', '31', 'CR', '50.00', 0, 'cash', NULL, 500, 'cash', 'a', 1, '2024-08-29 10:06:01', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(15, '2024-08-29', 'TR00015', '32', 'CR', '200.00', 0, 'cash', NULL, 400, 'cash payment received', 'a', 1, '2024-08-29 10:19:35', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(16, '2024-08-29', 'TR00016', '31', 'CR', '200.00', 0, 'cash', NULL, 400, 'sdsdsd', 'a', 1, '2024-08-29 10:20:27', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(17, '2024-08-29', 'TR00017', '31', 'CR', '50.00', 0, 'cash', NULL, 1950, 'cash', 'a', 1, '2024-08-29 10:39:43', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(18, '2024-08-29', 'TR00018', '31', 'CR', '50.00', 0, 'cash', NULL, 1950, 'cash', 'a', 1, '2024-08-29 10:39:53', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(19, '2024-08-29', 'TR00019', '31', 'CR', '50.00', 0, 'cash', NULL, 1950, 'cash', 'a', 1, '2024-08-29 10:40:28', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(20, '2024-08-29', 'TR00020', '31', 'CR', '50.00', 0, 'cash', NULL, 1950, 'cash', 'a', 1, '2024-08-29 10:41:48', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(21, '2024-08-29', 'TR00021', '31', 'CR', '50.00', 0, 'cash', NULL, 1750, 'hhhh', 'a', 1, '2024-08-29 10:42:32', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(22, '2024-08-29', 'TR00022', '31', 'CR', '500.00', 0, 'cash', NULL, 1700, 'cash', 'a', 1, '2024-08-29 10:49:58', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(23, '2024-09-04', 'TR00023', '31', 'CR', '50000.00', 0, 'cash', NULL, 1530, '', 'a', 1, '2024-09-04 11:51:31', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(24, '2024-09-04', 'TR00024', '32', 'CR', '100.00', 0, 'cash', NULL, 200, '', 'a', 1, '2024-09-04 13:08:42', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(25, '2024-09-07', 'TR00025', '24', 'CR', '10000.00', 0, 'bank', 7, 30116, 'ণৃসত', 'a', 1, '2024-09-07 13:53:21', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(26, '2024-09-09', 'TR00026', '32', 'CR', '100.00', 0, 'cash', NULL, 100, '', 'a', 8, '2024-09-09 12:49:49', NULL, NULL, NULL, NULL, '202.134.10.142', 1),
(27, '2024-09-10', 'TR00027', '31', 'CR', '150000.00', 0, 'bank', 3, -288470, 'INV301254', 'a', 1, '2024-09-10 12:24:28', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(28, '2024-09-28', 'TR00028', '32', 'CR', '5000.00', 0, 'cash', NULL, 7100, '', 'a', 1, '2024-09-28 15:52:31', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(29, '2024-09-29', 'TR00029', '35', 'CR', '8000.00', 0, 'cash', NULL, 68000, '', 'a', 1, '2024-09-29 16:44:25', NULL, NULL, NULL, NULL, '103.159.73.99', 1),
(30, '2024-09-29', 'TR00030', '35', 'CR', '5000.00', 0, 'cash', NULL, 60000, '', 'a', 1, '2024-09-29 16:44:40', NULL, NULL, NULL, NULL, '103.159.73.99', 1),
(31, '2024-10-03', '240100163', NULL, 'CP', '600.00', 0, 'cash', NULL, 0, NULL, 'a', 1, '2024-10-03 19:59:25', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(32, '2024-10-06', 'TR00032', '35', 'CR', '6400.00', 0, 'cash', NULL, 61400, 'Cash', 'a', 1, '2024-10-06 13:53:22', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(33, '2024-10-06', '240200002', NULL, 'CP', '3300.00', 0, 'cash', NULL, 0, NULL, 'a', 1, '2024-10-06 14:14:24', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(34, '2024-10-06', 'TR00034', '32', 'CR', '8000.00', 0, 'bank', 10, 8000, '', 'a', 1, '2024-10-06 16:35:25', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(35, '2024-10-07', 'TR00035', '39', 'CR', '500.00', 0, 'cash', NULL, 6300, '', 'a', 1, '2024-10-07 14:02:23', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(36, '2024-10-07', 'TR00036', '41', 'CR', '4000.00', 0, 'cash', NULL, 34000, '', 'a', 1, '2024-10-08 11:12:19', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(37, '2024-10-17', 'TR00037', '28', 'CR', '10000.00', 0, 'cash', NULL, 13000, '', 'a', 1, '2024-10-17 11:48:06', NULL, NULL, NULL, NULL, '103.148.179.149', 1),
(38, '2024-10-17', 'TR00038', '28', 'CR', '3000.00', 0, 'cash', NULL, 3000, '', 'a', 1, '2024-10-17 11:48:44', NULL, NULL, NULL, NULL, '103.148.179.149', 1),
(39, '2024-10-18', 'TR00039', '42', 'CR', '100.00', 0, 'cash', NULL, 375, '', 'a', 1, '2024-10-18 20:19:03', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(40, '2024-10-19', 'TR00040', '30', 'CR', '6000.00', 0, 'cash', NULL, -6000, 'clear', 'a', 1, '2024-10-19 13:56:29', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(41, '2024-10-19', 'TR00041', '43', 'CR', '550.00', 0, 'cash', NULL, 550, 'clear', 'a', 1, '2024-10-19 14:08:01', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(42, '2024-10-20', 'TR00042', '33', 'CR', '11000.00', 0, 'cash', NULL, 11900, '', 'a', 1, '2024-10-20 12:37:21', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(43, '2024-10-21', 'TR00043', '32', 'CR', '5000.00', 0, 'cash', NULL, 6320, '', 'a', 1, '2024-10-21 16:46:28', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(44, '2024-10-21', 'TR00044', '44', 'CR', '3000.00', 0, 'cash', NULL, 7525, '', 'a', 1, '2024-10-21 16:54:25', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(45, '2024-10-21', 'TR00045', '44', 'CR', '300.00', 0, 'cash', NULL, 4525, 'cash rohim', 'a', 1, '2024-10-21 18:38:35', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(46, '2024-10-22', 'TR00046', '44', 'CR', '4000.00', 0, 'cash', NULL, 4225, '', 'a', 1, '2024-10-22 16:26:02', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(47, '2024-10-23', 'TR00047', '20', 'CR', '1580.00', 0, 'cash', NULL, 1580, 'baki clear', 'a', 1, '2024-10-23 12:56:37', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(48, '2024-10-25', 'TR00048', '42', 'CR', '120.00', 0, 'cash', NULL, 490, '', 'a', 1, '2024-10-25 17:41:18', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(49, '2024-10-25', 'TR00049', '42', 'CR', '120.00', 0, 'cash', NULL, 520, '', 'a', 1, '2024-10-25 17:55:35', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(50, '2024-10-30', 'TR00050', '42', 'CR', '50.00', 0, 'cash', NULL, 400, 'Discount 5', 'a', 1, '2024-10-30 06:06:05', NULL, NULL, NULL, NULL, '95.185.96.229', 1),
(51, '2024-10-30', 'TR00051', '38', 'CR', '6000.00', 0, 'cash', NULL, 26400, '', 'a', 1, '2024-10-30 16:15:58', NULL, NULL, NULL, NULL, '103.198.132.95', 1),
(52, '2024-10-31', 'TR00052', '46', 'CR', '500.00', 0, 'cash', NULL, 1000, '', 'a', 1, '2024-10-31 13:08:39', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(53, '2024-11-02', '240100237', NULL, 'CP', '2000.00', 0, 'cash', NULL, 0, NULL, 'a', 1, '2024-11-02 06:52:33', NULL, NULL, NULL, NULL, '37.111.212.71', 1),
(54, '2024-11-10', 'TR00054', '47', 'CR', '250.00', 0, 'cash', NULL, 250, '', 'a', 1, '2024-11-10 11:31:27', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(55, '2024-11-11', 'TR00055', '38', 'CR', '10000.00', 0, 'cash', NULL, 20400, '', 'a', 1, '2024-11-11 13:12:14', NULL, NULL, NULL, NULL, '59.152.7.27', 1),
(56, '2024-11-12', 'TR00056', '49', 'CR', '895.00', 0, 'cash', NULL, 1895, 'Alamin', 'a', 1, '2024-11-12 12:37:42', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damage`
--

CREATE TABLE `tbl_damage` (
  `Damage_SlNo` int(11) NOT NULL,
  `Damage_InvoiceNo` varchar(50) NOT NULL,
  `Damage_Date` date NOT NULL,
  `damage_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `Damage_Description` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_damage`
--

INSERT INTO `tbl_damage` (`Damage_SlNo`, `Damage_InvoiceNo`, `Damage_Date`, `damage_amount`, `Damage_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'D0001', '2024-05-27', '21.30', '', 'd', 1, '2024-05-27 17:51:42', NULL, NULL, NULL, NULL, '103.73.196.9', 1),
(2, 'D0002', '2024-09-13', '207475.00', '', 'd', 1, '2024-09-13 11:59:51', NULL, NULL, NULL, NULL, '103.150.64.178', 1),
(3, 'D0003', '2024-09-28', '200.00', '', 'a', 1, '2024-09-28 16:25:55', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(4, 'D0004', '2024-10-27', '1500.00', '', 'a', 1, '2024-10-27 12:26:06', NULL, NULL, NULL, NULL, '59.152.1.197', 1),
(5, 'D0005', '2024-11-12', '500.00', 'fgcc', 'a', 1, '2024-11-12 13:00:32', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damage_details`
--

CREATE TABLE `tbl_damage_details` (
  `DamageDetails_SlNo` int(11) NOT NULL,
  `Damage_SlNo` int(11) NOT NULL,
  `Product_SlNo` int(11) NOT NULL,
  `DamageDetails_DamageQuantity` float NOT NULL,
  `damage_rate` float NOT NULL,
  `damage_amount` float NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_damage_details`
--

INSERT INTO `tbl_damage_details` (`DamageDetails_SlNo`, `Damage_SlNo`, `Product_SlNo`, `DamageDetails_DamageQuantity`, `damage_rate`, `damage_amount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 22, 3, 7.1, 21.3, 'd', 1, '2024-05-27 17:51:42', NULL, NULL, NULL, NULL, '103.73.196.9', 1),
(2, 2, 81, 5, 41495, 207475, 'd', 1, '2024-09-13 11:59:51', NULL, NULL, NULL, NULL, '103.150.64.178', 1),
(3, 3, 99, 2, 100, 200, 'a', 1, '2024-09-28 16:25:55', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(4, 4, 121, 5, 300, 1500, 'a', 1, '2024-10-27 12:26:06', NULL, NULL, NULL, NULL, '59.152.1.197', 1),
(5, 5, 140, 5, 100, 500, 'a', 1, '2024-11-12 13:00:32', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `Department_SlNo` int(11) NOT NULL,
  `Department_Name` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`Department_SlNo`, `Department_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 'Salse', 'a', 1, '2024-05-13 13:49:35', NULL, NULL, NULL, NULL, '103.26.247.138'),
(2, 'marketing', 'a', 1, '2024-06-04 14:29:53', NULL, NULL, NULL, NULL, '103.159.72.85'),
(3, 'H/r', 'a', 1, '2024-06-04 14:30:00', NULL, NULL, NULL, NULL, '103.159.72.85'),
(4, 'admin', 'a', 1, '2024-06-04 14:30:05', NULL, NULL, NULL, NULL, '103.159.72.85'),
(5, 'service', 'a', 1, '2024-06-04 14:30:13', NULL, NULL, NULL, NULL, '103.159.72.85'),
(6, 'accounts', 'a', 1, '2024-06-04 14:30:21', NULL, NULL, NULL, NULL, '103.159.72.85'),
(7, 'Sales', 'a', 1, '2024-06-16 03:41:49', NULL, NULL, NULL, NULL, '103.147.166.161');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `Designation_SlNo` int(11) NOT NULL,
  `Designation_Name` varchar(100) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`Designation_SlNo`, `Designation_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 'DSR', 'a', 1, '2024-05-13 13:49:15', NULL, NULL, NULL, NULL, '103.26.247.138'),
(2, 'manager', 'a', 1, '2024-06-04 14:29:11', NULL, NULL, NULL, NULL, '103.159.72.85'),
(3, 'executive', 'a', 1, '2024-06-04 14:31:05', NULL, NULL, NULL, NULL, '103.159.72.85');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `District_SlNo` int(11) NOT NULL,
  `District_Name` varchar(50) NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`District_SlNo`, `District_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 'Dhaka', 'a', 1, '2024-04-28 16:32:56', 1, '2024-06-18 02:25:51', 1, '2024-05-29 10:46:03', '103.147.166.161'),
(2, 'Dinajpur', 'd', 1, '2024-04-28 16:33:07', NULL, NULL, 1, '2024-05-29 10:45:58', '5.31.196.206'),
(3, 'Jeshore', 'd', 1, '2024-05-15 00:49:32', NULL, NULL, 1, '2024-05-29 10:45:54', '5.31.196.206'),
(4, '', 'd', 1, '2024-05-15 00:49:49', NULL, NULL, 1, '2024-05-29 10:45:50', '5.31.196.206'),
(5, 'RIYADH', 'd', 1, '2024-06-05 15:35:19', NULL, NULL, 1, '2024-11-11 15:24:41', '103.159.73.72'),
(6, 'jiaidho', 'd', 1, '2024-06-19 03:52:38', NULL, NULL, 1, '2024-11-11 15:24:47', '103.159.73.72'),
(7, 'Bhola sadar', 'd', 5, '2024-07-01 12:16:24', NULL, NULL, 1, '2024-11-11 15:24:31', '103.159.73.72'),
(8, 'Rajshahi', 'a', 1, '2024-10-06 12:53:46', 1, '2024-11-11 15:24:25', NULL, NULL, '103.159.73.72'),
(9, 'Bogura Sherpur', 'a', 1, '2024-10-18 20:06:48', 1, '2024-11-11 15:23:50', NULL, NULL, '103.159.73.72'),
(10, 'Pabna', 'a', 1, '2024-10-31 13:05:44', 1, '2024-11-11 15:23:31', NULL, NULL, '103.159.73.72'),
(11, 'Bogura', 'a', 1, '2024-11-05 20:25:50', 1, '2024-11-11 15:23:17', NULL, NULL, '103.159.73.72'),
(12, 'Gazipur', 'a', 1, '2024-11-12 12:10:58', NULL, NULL, NULL, NULL, '202.134.14.143'),
(13, 'hariken', 'a', 1, '2024-11-12 12:11:13', NULL, NULL, NULL, NULL, '202.134.14.143');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `Employee_SlNo` int(11) NOT NULL,
  `Designation_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `Employee_ID` varchar(50) NOT NULL,
  `bio_id` varchar(50) DEFAULT NULL,
  `Employee_Name` varchar(150) NOT NULL,
  `Employee_JoinDate` date NOT NULL,
  `Employee_Gender` varchar(20) NOT NULL,
  `Employee_BirthDate` date NOT NULL,
  `Employee_NID` varchar(50) NOT NULL,
  `Employee_ContactNo` varchar(20) NOT NULL,
  `Employee_Email` varchar(50) NOT NULL,
  `Employee_MaritalStatus` varchar(50) NOT NULL,
  `Employee_FatherName` varchar(150) NOT NULL,
  `Employee_MotherName` varchar(150) NOT NULL,
  `Employee_PrasentAddress` mediumtext NOT NULL,
  `Employee_PermanentAddress` mediumtext NOT NULL,
  `Employee_Pic_org` varchar(250) NOT NULL,
  `Employee_Pic_thum` varchar(250) NOT NULL,
  `salary_range` int(11) NOT NULL,
  `Employee_Reference` mediumtext DEFAULT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`Employee_SlNo`, `Designation_ID`, `Department_ID`, `Employee_ID`, `bio_id`, `Employee_Name`, `Employee_JoinDate`, `Employee_Gender`, `Employee_BirthDate`, `Employee_NID`, `Employee_ContactNo`, `Employee_Email`, `Employee_MaritalStatus`, `Employee_FatherName`, `Employee_MotherName`, `Employee_PrasentAddress`, `Employee_PermanentAddress`, `Employee_Pic_org`, `Employee_Pic_thum`, `salary_range`, `Employee_Reference`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 1, 'E1001', '', 'Md. Faruk', '2024-05-13', 'Male', '2024-05-13', '', '0', '1', 'married', '1', '1', '0', '0', '', '', 18000, '', 'a', 1, '2024-05-13 13:51:26', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(2, 3, 2, 'E1002', '', 'Mehedi hasan', '2024-02-05', 'Male', '2003-03-06', '', '014546', 'p', 'unmarried', 'f', 'm', 'mirpur 10', 'mirpur 10', '', '', 10000, '', 'a', 1, '2024-06-04 14:33:05', 1, '2024-06-04 14:34:17', NULL, NULL, '103.159.72.85', 1),
(3, 3, 7, 'E1003', '1005', 'Milon', '2024-09-13', 'Male', '2024-09-13', '', '01407081993', 'support@anmotorsbd.com', 'unmarried', 'A', 'B', 'Kabirpur,Ashulia,Savar,Dhaka', 'WE', '', '', 15000, '', 'a', 1, '2024-09-13 12:17:01', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(4, 3, 7, 'E1004', '1006', 'IBRAHIM', '2024-09-13', 'Male', '2024-09-13', '', '01407081992', 'support@anmotorsbd.com', 'unmarried', 'A', 'B', 'Kabirpur,Ashulia,Savar,Dhaka', 'WE', '', '', 13000, '', 'a', 1, '2024-09-13 12:18:32', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(5, 2, 6, 'E1005', '1007', 'NASRIN', '2024-09-13', 'Female', '2024-09-13', '', '01407081994', 'support@anmotorsbd.com', 'unmarried', 'A', 'B', 'Kabirpur,Ashulia,Savar,Dhaka', 'WE', '', '', 25000, '', 'a', 1, '2024-09-13 12:19:06', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(6, 2, 6, 'E1006', '', 'jahid', '2024-10-19', 'Male', '2024-10-19', '', '0844467', 'yytt', 'married', '', '', 'buraida', 'bd', '', '', 0, '', '', 1, '2024-10-19 03:24:54', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(7, 2, 1, 'E1007', '1001', 'Ashikur Rahman', '2024-10-29', 'Male', '2024-10-29', '2525252', '019119788555', 'mozammel@gmail.comq', 'married', 'Fatehr', 'Mother', 'Road-3, Block -F, New C Block, Mirpur-01', 'Village- Kalipur, Thana- Patharghata, District- Barguna', '', '', 10000, 'd', 'a', 1, '2024-10-29 13:37:39', 1, '2024-10-29 15:54:01', NULL, NULL, '103.159.73.78', 1),
(8, 1, 6, 'E1008', '', 'aaa', '2024-10-29', 'Male', '2024-10-29', '', '011', '', 'unmarried', '', '', '', '', 'E1008.jpg', 'E1008.jpg', 10000, '', 'a', 1, '2024-10-29 16:00:52', NULL, NULL, NULL, NULL, '103.159.73.78', 1),
(9, 2, 6, 'E1009', '', 'MD Sajid Islam', '2024-09-01', 'Male', '2024-11-12', '.', '.', '.', 'unmarried', '.', '.', '.', '.', '', '', 35000, '.', 'a', 1, '2024-11-12 13:06:58', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment`
--

CREATE TABLE `tbl_employee_payment` (
  `id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `month_id` int(11) NOT NULL,
  `total_payment_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `status` char(2) DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee_payment`
--

INSERT INTO `tbl_employee_payment` (`id`, `payment_date`, `month_id`, `total_payment_amount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '2024-06-04', 1, '33000.00', 'a', 1, '2024-06-04 14:35:09', 1, '2024-07-03 11:25:39', NULL, NULL, '', 1),
(2, '2024-09-04', 2, '31500.00', 'a', 1, '2024-09-04 11:51:46', NULL, NULL, NULL, NULL, '', 1),
(3, '2024-09-13', 2, '51875.00', 'a', 1, '2024-09-13 12:20:19', 11, '2024-09-13 21:04:10', NULL, NULL, '', 6),
(4, '2024-10-06', 6, '21000.00', 'a', 1, '2024-10-06 12:04:53', 1, '2024-10-07 14:33:00', NULL, NULL, '', 1),
(5, '2024-10-02', 7, '23000.00', 'a', 1, '2024-10-19 14:16:18', 1, '2024-10-19 14:18:23', NULL, NULL, '', 1),
(6, '2024-11-12', 4, '76000.00', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payment_details`
--

CREATE TABLE `tbl_employee_payment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `salary` decimal(20,2) NOT NULL DEFAULT 0.00,
  `benefit` decimal(20,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(20,2) NOT NULL DEFAULT 0.00,
  `net_payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `payment` decimal(20,2) NOT NULL DEFAULT 0.00,
  `comment` text DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) UNSIGNED DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) UNSIGNED DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_employee_payment_details`
--

INSERT INTO `tbl_employee_payment_details` (`id`, `payment_id`, `employee_id`, `salary`, `benefit`, `deduction`, `net_payable`, `payment`, `comment`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 1, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 'a', 1, '2024-06-04 14:35:09', 1, '2024-07-03 11:25:39', NULL, NULL, '103.159.72.85', 1),
(2, 1, 2, '10000.00', '5000.00', '0.00', '15000.00', '15000.00', '', 'a', 1, '2024-06-04 14:35:09', 1, '2024-07-03 11:25:39', NULL, NULL, '103.159.72.85', 1),
(3, 2, 1, '18000.00', '5000.00', '1500.00', '21500.00', '21500.00', '', 'a', 1, '2024-09-04 11:51:46', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(4, 2, 2, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-09-04 11:51:46', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(5, 3, 3, '15000.00', '0.00', '375.00', '14625.00', '14625.00', '', 'a', 1, '2024-09-13 12:20:19', 11, '2024-09-13 21:04:10', NULL, NULL, '103.150.64.178', 6),
(6, 3, 4, '13000.00', '0.00', '375.00', '12625.00', '12625.00', '', 'a', 1, '2024-09-13 12:20:19', 11, '2024-09-13 21:04:10', NULL, NULL, '103.150.64.178', 6),
(7, 3, 5, '25000.00', '0.00', '375.00', '24625.00', '24625.00', '', 'a', 1, '2024-09-13 12:20:19', 11, '2024-09-13 21:04:10', NULL, NULL, '103.150.64.178', 6),
(8, 4, 1, '18000.00', '1000.00', '8000.00', '11000.00', '11000.00', '', 'a', 1, '2024-10-06 12:04:53', 1, '2024-10-07 14:33:00', NULL, NULL, '103.184.25.42', 1),
(9, 4, 2, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-10-06 12:04:53', 1, '2024-10-07 14:33:00', NULL, NULL, '103.184.25.42', 1),
(10, 5, 1, '18000.00', '0.00', '5000.00', '13000.00', '13000.00', 'ad', 'a', 1, '2024-10-19 14:16:18', 1, '2024-10-19 14:18:23', NULL, NULL, '202.134.11.237', 1),
(11, 5, 2, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-10-19 14:16:18', 1, '2024-10-19 14:18:23', NULL, NULL, '202.134.11.237', 1),
(12, 6, 1, '18000.00', '0.00', '0.00', '18000.00', '18000.00', '', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(13, 6, 8, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(14, 6, 7, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(15, 6, 9, '35000.00', '1000.00', '8000.00', '28000.00', '28000.00', 'ufh', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(16, 6, 2, '10000.00', '0.00', '0.00', '10000.00', '10000.00', '', 'a', 1, '2024-11-12 13:10:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_head`
--

CREATE TABLE `tbl_expense_head` (
  `id` int(11) NOT NULL,
  `head_name` varchar(100) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `status` enum('a','d') DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_account`
--

CREATE TABLE `tbl_investment_account` (
  `Acc_SlNo` int(11) NOT NULL,
  `Acc_Code` varchar(50) NOT NULL,
  `Acc_Tr_Type` varchar(25) DEFAULT NULL,
  `Acc_Name` varchar(200) NOT NULL,
  `Acc_Type` varchar(50) NOT NULL,
  `Acc_Description` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_investment_account`
--

INSERT INTO `tbl_investment_account` (`Acc_SlNo`, `Acc_Code`, `Acc_Tr_Type`, `Acc_Name`, `Acc_Type`, `Acc_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'I0001', NULL, 'Mozammel Hossain', '', 'test\n', 'a', 1, '2024-04-28 16:39:44', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 'I0002', NULL, 'Cash', '', '', 'a', 8, '2024-09-14 10:29:39', NULL, NULL, NULL, NULL, '103.150.64.177', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_investment_transactions`
--

CREATE TABLE `tbl_investment_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_investment_transactions`
--

INSERT INTO `tbl_investment_transactions` (`transaction_id`, `account_id`, `transaction_date`, `transaction_type`, `amount`, `note`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, '2024-04-28', 'Receive', 14210, 'cash', 1, 1, '2024-04-28 16:40:16', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 2, '2024-09-14', 'Receive', 1000000, '', 1, 8, '2024-09-14 10:29:59', NULL, NULL, NULL, NULL, '103.150.64.177', 5),
(3, 1, '2024-10-22', 'Profit', 14210, '', 1, 1, '2024-10-22 12:47:15', NULL, NULL, NULL, NULL, '103.159.73.88', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_accounts`
--

CREATE TABLE `tbl_loan_accounts` (
  `account_id` int(11) NOT NULL,
  `account_name` varchar(500) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `account_type` varchar(200) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `branch_name` varchar(250) DEFAULT NULL,
  `initial_balance` float NOT NULL,
  `save_date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_loan_accounts`
--

INSERT INTO `tbl_loan_accounts` (`account_id`, `account_name`, `account_number`, `account_type`, `bank_name`, `branch_name`, `initial_balance`, `save_date`, `description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'Alamin Ent.', '08632324567', 'CC', 'IFIC', 'Mirpur', 1000000, '2024-05-25', 'hfuwy', 1, 1, '2024-05-25 14:17:30', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(2, 'Link Up Technology', '256.254.202540', 'Current', 'MTBL', 'Mirpur', 192000, '2024-09-03', '', 1, 1, '2024-09-03 16:00:30', NULL, NULL, NULL, NULL, '103.159.72.118', 6),
(3, 'Arbon Electronics', '123456789', 'RE', 'Brac', 'Kaliakoir', 2000, '2024-09-14', '', 1, 8, '2024-09-14 10:32:20', NULL, NULL, NULL, NULL, '103.150.64.177', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_transactions`
--

CREATE TABLE `tbl_loan_transactions` (
  `transaction_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `amount` float NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_loan_transactions`
--

INSERT INTO `tbl_loan_transactions` (`transaction_id`, `account_id`, `transaction_date`, `transaction_type`, `amount`, `note`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, '2024-05-25', 'Payment', 500000, '', 1, 1, '2024-05-25 14:18:09', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(2, 1, '2024-05-25', 'Interest', 5000, '', 1, 1, '2024-05-25 14:18:37', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(3, 2, '2024-09-03', 'Interest', 63000, '', 1, 1, '2024-09-03 16:01:04', NULL, NULL, NULL, NULL, '103.159.72.118', 6),
(4, 2, '2024-09-03', 'Payment', 7093, '', 1, 1, '2024-09-03 16:01:38', NULL, NULL, NULL, NULL, '103.159.72.118', 6),
(5, 1, '2024-09-09', 'Payment', 5000, '', 1, 8, '2024-09-09 13:05:32', NULL, NULL, NULL, NULL, '202.134.11.234', 1),
(6, 2, '2024-09-09', 'Payment', 50000, '', 1, 8, '2024-09-09 16:51:54', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(7, 2, '2024-09-13', 'Payment', 97000, '', 1, 1, '2024-09-13 12:23:11', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(8, 3, '2024-09-14', 'Receive', 1800000, '', 1, 8, '2024-09-14 10:32:40', NULL, NULL, NULL, NULL, '103.150.64.177', 5),
(9, 1, '2024-09-15', 'Interest', 250000, '', 1, 1, '2024-09-15 20:12:17', NULL, NULL, NULL, NULL, '103.150.64.179', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_month`
--

CREATE TABLE `tbl_month` (
  `month_id` int(11) NOT NULL,
  `month_name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_month`
--

INSERT INTO `tbl_month` (`month_id`, `month_name`) VALUES
(1, 'May-2024'),
(2, 'September-2024'),
(3, 'Invalid date'),
(4, 'November-2024'),
(5, 'December-2024'),
(6, 'January-2025'),
(7, 'October-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outlet`
--

CREATE TABLE `tbl_outlet` (
  `branch_id` int(11) NOT NULL,
  `Branch_name` varchar(250) NOT NULL,
  `Branch_title` varchar(250) NOT NULL,
  `Branch_phone` varchar(15) NOT NULL,
  `Branch_address` mediumtext NOT NULL,
  `Branch_sales` varchar(1) NOT NULL COMMENT 'Wholesales = 1, Retail = 2',
  `add_date` date NOT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_outlet`
--

INSERT INTO `tbl_outlet` (`branch_id`, `Branch_name`, `Branch_title`, `Branch_phone`, `Branch_address`, `Branch_sales`, `add_date`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 'SopnoJhuri', 'SopnoJhuri', '01870-977634', 'Mirpur-2, Dhaka', '', '2023-03-08', 'a', 0, '2023-03-08 23:50:10', 1, '2024-11-30 01:59:04', NULL, NULL, '::1'),
(2, 'Exporty Shop', 'Exporty Shop', '01515-674721', 'Mirpur-2, Dhaka', '2', '0000-00-00', 'a', 1, '2024-11-11 15:06:39', 1, '2024-11-30 01:59:28', NULL, NULL, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `Product_SlNo` int(11) NOT NULL,
  `Product_Code` varchar(50) NOT NULL,
  `Product_Name` varchar(150) NOT NULL,
  `slug` longtext NOT NULL,
  `ProductCategory_ID` int(11) NOT NULL,
  `ProductSubCategory_ID` int(11) NOT NULL,
  `Color_ID` int(11) NOT NULL,
  `Brand_ID` int(11) NOT NULL,
  `Unit_ID` int(11) NOT NULL,
  `size` varchar(11) NOT NULL DEFAULT 'na',
  `vat` float NOT NULL,
  `Product_ReOrederLevel` int(11) NOT NULL,
  `Product_Purchase_Rate` decimal(18,2) NOT NULL,
  `Product_SellingPrice` decimal(18,2) NOT NULL,
  `Product_MinimumSellingPrice` decimal(18,2) NOT NULL,
  `Product_WholesaleRate` decimal(18,2) NOT NULL,
  `Product_PreviousPrice` decimal(18,2) NOT NULL DEFAULT 0.00,
  `one_cartun_equal` varchar(20) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `Product_Description` longtext DEFAULT NULL,
  `is_website` varchar(10) NOT NULL DEFAULT 'true',
  `is_service` varchar(10) NOT NULL DEFAULT 'false',
  `is_featured` varchar(9) NOT NULL DEFAULT 'false',
  `is_offer` varchar(9) NOT NULL DEFAULT 'false',
  `is_arrival` varchar(9) NOT NULL DEFAULT 'false',
  `is_popular` varchar(9) NOT NULL DEFAULT 'false',
  `Video_Url` text DEFAULT NULL,
  `Product_Image` varchar(55) DEFAULT NULL,
  `Product_SizeImage` varchar(55) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`Product_SlNo`, `Product_Code`, `Product_Name`, `slug`, `ProductCategory_ID`, `ProductSubCategory_ID`, `Color_ID`, `Brand_ID`, `Unit_ID`, `size`, `vat`, `Product_ReOrederLevel`, `Product_Purchase_Rate`, `Product_SellingPrice`, `Product_MinimumSellingPrice`, `Product_WholesaleRate`, `Product_PreviousPrice`, `one_cartun_equal`, `short_description`, `Product_Description`, `is_website`, `is_service`, `is_featured`, `is_offer`, `is_arrival`, `is_popular`, `Video_Url`, `Product_Image`, `Product_SizeImage`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'P00001', 'Alu 5kg Bag', '', 1, 1, 1, 1, 1, 'na', 10, 10, '50.00', '60.00', '0.00', '55.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-04-28 16:34:25', NULL, NULL, 1, '2024-05-29 14:00:35', '5.31.196.206', 1),
(2, 'P00002', 'Fan 58 inc', '', 1, 1, 1, 1, 1, 'na', 10, 2, '20.00', '30.00', '0.00', '30.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-04-28 16:35:56', NULL, NULL, 1, '2024-05-29 14:00:39', '5.31.196.206', 1),
(3, 'P00003', 'Burger Big', '', 1, 1, 1, 1, 1, 'na', 0, 3, '100.00', '150.00', '0.00', '140.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-04-28 16:37:01', NULL, NULL, 1, '2024-05-29 14:01:56', '5.31.196.206', 1),
(4, 'P00004', 'Knee Cap M', '', 2, 1, 1, 1, 1, 'na', 0, 0, '300.00', '330.00', '0.00', '330.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-02 14:49:06', NULL, NULL, 1, '2024-05-29 14:01:52', '5.31.196.206', 1),
(5, 'P00005', 'Tv Liverpool 32\"', '', 3, 1, 1, 1, 1, 'na', 0, 1, '82.00', '100.00', '0.00', '90.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 2, '2024-05-07 17:24:55', NULL, NULL, 1, '2024-05-29 14:01:48', '5.31.196.206', 1),
(6, 'P00006', 'Bafle Liverpool 5505', '', 3, 1, 1, 1, 1, 'na', 0, 1, '85.00', '110.00', '0.00', '95.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 2, '2024-05-07 17:25:27', NULL, NULL, 1, '2024-05-29 14:01:44', '5.31.196.206', 1),
(7, 'P00007', 'Tv Liverpool 24\"', '', 3, 1, 1, 1, 1, 'na', 0, 1, '55.00', '70.00', '0.00', '60.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 2, '2024-05-07 17:25:52', NULL, NULL, 1, '2024-05-29 14:01:41', '5.31.196.206', 1),
(8, 'P00008', 'Nebulizer', '', 1, 1, 1, 1, 1, 'na', 0, 12, '1719.00', '1750.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-13 13:37:25', NULL, NULL, 1, '2024-05-29 14:01:37', '5.31.196.206', 1),
(9, 'P00009', 'BP Machine(Digital)', '', 1, 1, 1, 1, 1, 'na', 0, 12, '1655.00', '1750.00', '0.00', '1700.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-13 13:38:07', NULL, NULL, 1, '2024-05-29 14:01:32', '5.31.196.206', 1),
(10, '21ce44200', 'Ballracer', '', 4, 1, 1, 1, 1, 'na', 0, 0, '428.00', '513.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-15 00:44:14', NULL, NULL, 1, '2024-05-29 14:01:28', '5.31.196.206', 1),
(11, 'P00011', 'break pad', '', 4, 1, 1, 1, 1, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-15 12:24:05', NULL, NULL, 1, '2024-05-29 14:01:25', '5.31.196.206', 1),
(12, 'b97000000', 'break pad  rear', '', 4, 1, 1, 1, 1, 'na', 0, 0, '995.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-15 12:27:30', NULL, NULL, 1, '2024-05-29 14:01:21', '5.31.196.206', 1),
(13, 'P00013', 'OPC', '', 5, 1, 1, 1, 1, 'na', 0, 0, '10.00', '12.00', '0.00', '11.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 10:58:38', NULL, NULL, 1, '2024-05-29 14:01:18', '5.31.196.206', 1),
(14, 'P00014', 'Dell 22\'\' Monitor ', '', 6, 1, 1, 1, 1, 'na', 0, 2, '5000.00', '6000.00', '0.00', '5500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 16:55:01', NULL, NULL, 1, '2024-05-29 14:01:14', '5.31.196.206', 1),
(15, 'P00015', 'Dell 19\'\' Monitor', '', 6, 1, 1, 1, 1, 'na', 0, 2, '3000.00', '3500.00', '0.00', '3300.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 16:55:38', NULL, NULL, 1, '2024-05-29 14:01:11', '5.31.196.206', 1),
(16, 'P00016', 'Comtuter Sirvec', '', 1, 1, 1, 1, 1, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 16:56:05', 1, '2024-05-18 16:56:11', 1, '2024-05-29 14:01:07', '5.31.196.206', 1),
(17, 'P00017', 'Scrap HDD', '', 7, 1, 1, 1, 3, 'na', 0, 0, '250.00', '275.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 17:56:57', NULL, NULL, 1, '2024-05-29 14:01:04', '5.31.196.206', 1),
(18, 'P00018', 'scrap Mother Board', '', 8, 1, 1, 1, 3, 'na', 0, 0, '560.00', '580.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 18:00:32', NULL, NULL, 1, '2024-05-29 14:01:00', '5.31.196.206', 1),
(19, 'P00019', 'Scrap Monitor', '', 6, 1, 1, 1, 3, 'na', 0, 0, '200.00', '250.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-18 18:01:04', NULL, NULL, 1, '2024-05-29 14:00:56', '5.31.196.206', 1),
(20, 'P00020', 'drum wheel turning', '', 1, 1, 1, 1, 1, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-22 12:40:35', NULL, NULL, 1, '2024-05-29 14:00:53', '5.31.196.206', 1),
(21, 'P00021', 'head fasing', '', 1, 1, 1, 1, 1, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-22 12:40:59', NULL, NULL, 1, '2024-05-29 14:00:49', '5.31.196.206', 1),
(22, 'P00022', 'Crushed Stone 5-10 MM', '', 9, 1, 1, 1, 4, 'na', 0, 0, '7.10', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-25 12:31:52', NULL, NULL, 1, '2024-05-29 14:00:45', '5.31.196.206', 1),
(23, 'PO01', 'MEN\'S H/S POLO SHIRT', '', 11, 1, 1, 1, 1, 'na', 0, 25, '10.71', '30.00', '0.00', '14.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-29 14:04:23', 1, '2024-05-29 14:05:01', 5, '2024-07-02 10:35:49', '118.179.69.241', 1),
(24, 'PO02', 'MEN\'S F/S POLO SHIRT', '', 11, 1, 1, 1, 1, 'na', 0, 25, '11.00', '16.00', '0.00', '5.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-05-29 14:06:37', NULL, NULL, 5, '2024-07-02 10:36:43', '118.179.69.241', 1),
(25, 'P00025', '400', '', 12, 1, 1, 1, 7, 'na', 0, 76, '1200.00', '1600.00', '0.00', '1500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-04 17:19:32', NULL, NULL, 5, '2024-07-02 10:36:49', '118.179.69.241', 1),
(26, 'P00026', 'al time ban', '', 13, 1, 1, 1, 1, 'na', 0, 10, '25.00', '30.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-04 18:15:39', NULL, NULL, 5, '2024-07-02 10:36:53', '118.179.69.241', 1),
(27, 'P00027', 'pran candy', '', 13, 1, 1, 1, 1, 'na', 0, 0, '10.00', '15.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-04 18:15:56', NULL, NULL, 5, '2024-07-02 10:36:59', '118.179.69.241', 1),
(28, 'P00028', 'chanachur ', '', 13, 1, 1, 1, 1, 'na', 0, 0, '50.00', '60.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-04 18:16:15', NULL, NULL, 5, '2024-07-02 10:37:04', '118.179.69.241', 1),
(29, 'P00029', 'HDD 8TB', '', 7, 1, 1, 1, 8, 'na', 15, 0, '600.00', '800.00', '0.00', '750.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-05 15:37:06', NULL, NULL, 5, '2024-07-02 10:37:09', '118.179.69.241', 1),
(30, 'P00030', 'rs-099', '', 14, 1, 1, 1, 8, 'na', 0, 100, '150.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-05 16:01:36', NULL, NULL, 5, '2024-07-02 10:37:14', '118.179.69.241', 1),
(31, 'P00031', 'Ritu kumar', '', 15, 1, 1, 1, 8, 'na', 0, 10, '4500.00', '7500.00', '0.00', '5500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-08 13:51:40', NULL, NULL, 5, '2024-07-02 10:37:18', '118.179.69.241', 1),
(32, 'Po122', '1/2 Black Stone', '', 9, 1, 1, 1, 11, 'na', 0, 0, '199.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:52:01', NULL, NULL, 5, '2024-07-02 10:37:23', '118.179.69.241', 1),
(33, 'P00033', '3/4 Black ', '', 9, 1, 1, 1, 11, 'na', 0, 0, '176.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:53:44', NULL, NULL, 5, '2024-07-02 10:37:27', '118.179.69.241', 1),
(34, 'P00034', '5/6 Black', '', 9, 1, 1, 1, 11, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:54:31', NULL, NULL, 1, '2024-06-16 11:55:01', '114.130.188.243', 1),
(35, 'P00035', '5/8 Black', '', 9, 1, 1, 1, 11, 'na', 0, 0, '188.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:55:34', NULL, NULL, 5, '2024-07-02 10:37:32', '118.179.69.241', 1),
(36, 'P00036', '1/4 Black', '', 9, 1, 1, 1, 11, 'na', 0, 0, '123.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:56:46', NULL, NULL, 5, '2024-07-02 10:37:36', '118.179.69.241', 1),
(37, 'P00037', '1/4 White ', '', 9, 1, 1, 1, 11, 'na', 0, 0, '88.00', '95.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:57:20', NULL, NULL, 5, '2024-07-02 10:37:42', '118.179.69.241', 1),
(38, 'P00038', '1/2 White', '', 9, 1, 1, 1, 11, 'na', 0, 0, '276.69', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:57:47', NULL, NULL, 5, '2024-07-02 10:37:47', '118.179.69.241', 1),
(39, 'P00039', '5/8 White', '', 9, 1, 1, 1, 11, 'na', 0, 0, '165.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:58:06', NULL, NULL, 5, '2024-07-02 10:37:51', '118.179.69.241', 1),
(40, 'P00040', '3/4 White', '', 9, 1, 1, 1, 11, 'na', 0, 0, '156.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-16 11:58:26', NULL, NULL, 5, '2024-07-02 10:37:55', '118.179.69.241', 1),
(41, 'P00041', 'gel pen', '', 16, 1, 1, 1, 8, 'na', 0, 10, '55.00', '60.00', '0.00', '58.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-25 11:00:12', NULL, NULL, 5, '2024-07-02 10:38:00', '118.179.69.241', 1),
(42, 'P00042', 'h&m', '', 17, 1, 1, 1, 8, 'na', 0, 10, '250.00', '300.00', '0.00', '275.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 12:19:23', NULL, NULL, 5, '2024-07-02 10:38:03', '118.179.69.241', 1),
(43, 'P00043', 'polo', '', 17, 1, 1, 1, 8, 'na', 0, 5, '250.00', '300.00', '0.00', '275.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 12:20:28', NULL, NULL, 5, '2024-07-02 10:38:08', '118.179.69.241', 1),
(44, 'P00044', 'casual shirt / red/ L', '', 18, 1, 1, 1, 8, 'na', 0, 10, '250.00', '500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 16:09:50', NULL, NULL, 5, '2024-07-02 10:38:13', '118.179.69.241', 1),
(45, 'P00045', 'causal/red/m', '', 18, 1, 1, 1, 8, 'na', 0, 10, '250.00', '500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 16:10:18', NULL, NULL, 5, '2024-07-02 10:38:17', '118.179.69.241', 1),
(46, 'P00046', 'casul black/m', '', 18, 1, 1, 1, 8, 'na', 0, 10, '250.00', '500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 16:10:50', NULL, NULL, 5, '2024-07-02 10:38:21', '118.179.69.241', 1),
(47, 'P00047', 'casual /black /l', '', 18, 1, 1, 1, 8, 'na', 0, 10, '250.00', '500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-06-26 16:11:20', NULL, NULL, 5, '2024-07-02 10:38:26', '118.179.69.241', 1),
(48, 'P00048', 'fzs v2 ab', '', 19, 1, 1, 1, 8, 'na', 0, 3, '225000.00', '239000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-01 12:29:19', NULL, NULL, 5, '2024-07-02 10:38:30', '118.179.69.241', 4),
(49, 'P00049', 'v2 head light', '', 20, 1, 1, 1, 8, 'na', 0, 2, '3000.00', '3500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-01 12:30:21', NULL, NULL, 5, '2024-07-02 10:38:35', '118.179.69.241', 4),
(50, 'P00050', 'v3 head light', '', 20, 1, 1, 1, 8, 'na', 0, 2, '5000.00', '5500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-01 12:30:54', NULL, NULL, 5, '2024-07-02 10:36:09', '118.179.69.241', 4),
(51, 'P00051', 'bike fittings', '', 1, 1, 1, 1, 8, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-01 13:14:33', NULL, NULL, 5, '2024-07-02 10:36:03', '118.179.69.241', 4),
(52, 'P00052', 'FZS DD ARMADA BLUE', '', 19, 1, 1, 1, 8, 'na', 0, 3, '232000.00', '239000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:43:07', NULL, NULL, 1, '2024-11-11 15:28:43', '103.159.73.72', 4),
(53, 'P00053', 'FZS DD KNIGHT', '', 19, 1, 1, 1, 8, 'na', 4, 4, '232000.00', '239000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:44:21', NULL, NULL, 1, '2024-11-11 15:28:41', '103.159.73.72', 4),
(54, 'P00054', 'FZS V3 MATT RED', '', 19, 1, 1, 1, 8, 'na', 0, 3, '265000.00', '271000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:45:53', NULL, NULL, 1, '2024-11-11 15:28:40', '103.159.73.72', 4),
(55, 'P00055', 'SALUTO UBS ARMADA BLUE', '', 19, 1, 1, 1, 8, 'na', 0, 2, '152000.00', '158000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:47:14', NULL, NULL, 1, '2024-11-11 15:28:39', '103.159.73.72', 4),
(56, 'P00056', 'BODY COWLING 1 (PAMEL ASSY)', '', 19, 1, 1, 1, 8, 'na', 0, 1, '674.00', '690.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:52:42', NULL, NULL, 1, '2024-11-11 15:28:38', '103.159.73.72', 4),
(57, 'P00057', 'BRAKE PAD KIT', '', 19, 1, 1, 1, 8, 'na', 0, 10, '452.00', '470.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:54:05', NULL, NULL, 1, '2024-11-11 15:28:37', '103.159.73.72', 4),
(58, 'P00058', 'CABLE CLUTCH', '', 22, 1, 1, 1, 8, 'na', 0, 20, '415.20', '430.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 5, '2024-07-02 10:55:05', NULL, NULL, 1, '2024-11-11 15:28:36', '103.159.73.72', 4),
(59, 'P00059', 'SH আইকা ফেবিকল SH ৫০ মিলি', '', 1, 1, 1, 1, 8, 'na', 0, 12, '23.38', '26.00', '0.00', '26.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-06 19:26:52', NULL, NULL, 1, '2024-11-11 15:28:35', '103.159.73.72', 1),
(60, 'P00060', 'SH ১২৫ মিলি ফেবিকল SH ', '', 1, 1, 1, 1, 8, 'na', 0, 0, '53.00', '70.00', '0.00', '58.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-06 19:56:37', NULL, NULL, 1, '2024-11-11 15:28:34', '103.159.73.72', 1),
(61, 'P00061', '185/70R Dunlop', '', 23, 1, 1, 1, 8, 'na', 0, 0, '5000.00', '8000.00', '0.00', '7000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-13 12:56:31', NULL, NULL, 1, '2024-11-11 15:28:31', '103.159.73.72', 1),
(62, 'P00062', '185/70R Apollo', '', 23, 1, 1, 1, 8, 'na', 0, 0, '4000.00', '6000.00', '0.00', '5000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-13 12:57:08', NULL, NULL, 1, '2024-11-11 15:28:30', '103.159.73.72', 1),
(63, 'P00063', '185/70R Yo', '', 23, 1, 1, 1, 8, 'na', 0, 0, '3000.00', '4000.00', '0.00', '3500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-13 12:57:34', NULL, NULL, 1, '2024-11-11 15:28:29', '103.159.73.72', 1),
(64, 'P00064', 'ap-100 ', '', 24, 1, 1, 1, 8, 'na', 0, 0, '10000.00', '12000.00', '0.00', '11000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-13 12:59:11', NULL, NULL, 1, '2024-11-11 15:28:28', '103.159.73.72', 1),
(65, 'P00065', 're100', '', 24, 1, 1, 1, 8, 'na', 0, 0, '5000.00', '6000.00', '0.00', '5500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-07-13 12:59:33', NULL, NULL, 1, '2024-11-11 15:28:26', '103.159.73.72', 1),
(66, 'P00066', 'Ato Battary', '', 24, 1, 1, 1, 8, 'na', 15, 15, '14200.00', '15000.00', '0.00', '14500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-08-01 17:16:12', NULL, NULL, 1, '2024-11-11 15:28:25', '103.159.73.72', 1),
(67, 'P00067', 'Green Energy TV 24\" LED GE-TV24B', '', 25, 1, 1, 1, 8, 'na', 0, 2, '8625.00', '11500.00', '0.00', '9725.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-08-02 14:29:05', NULL, NULL, 1, '2024-11-11 15:28:24', '103.159.73.72', 1),
(68, 'P00068', 'Green Energy TV 24\" LEDSmart Dual Core GE-TV24S', '', 25, 1, 1, 1, 8, 'na', 0, 0, '10575.00', '14100.00', '0.00', '12525.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-08-02 14:36:24', 1, '2024-08-02 14:40:56', 1, '2024-11-11 15:28:21', '103.159.73.72', 1),
(69, 'P00069', 'Passport', '', 26, 1, 1, 1, 8, 'na', 0, 0, '7000.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-08-15 14:59:08', NULL, NULL, 1, '2024-11-11 15:28:21', '103.159.73.72', 1),
(70, 'P00070', 'ABC', '', 27, 1, 1, 1, 8, 'na', 0, 0, '120.00', '150.00', '0.00', '130.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-02 16:28:10', NULL, NULL, 1, '2024-11-11 15:28:19', '103.159.73.72', 1),
(71, 'P00071', 'Mango', '', 25, 1, 1, 1, 8, 'na', 0, 10, '20000.00', '30000.00', '0.00', '24000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 10:02:36', NULL, NULL, 1, '2024-11-11 15:28:18', '103.159.73.72', 1),
(72, 'P00072', 'pulsar', '', 19, 1, 1, 1, 8, 'na', 0, 2, '200000.00', '220000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 10:15:56', NULL, NULL, 1, '2024-11-11 15:28:17', '103.159.73.72', 1),
(73, 'P00073', 'TVS XL100', '', 19, 1, 1, 1, 3, 'na', 0, 10, '100000.00', '120000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 10:31:18', NULL, NULL, 1, '2024-11-11 15:28:16', '103.159.73.72', 1),
(74, 'P00074', 'AA', '', 24, 1, 1, 1, 8, 'na', 0, 2, '133.16', '300.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 10:40:28', NULL, NULL, 1, '2024-11-11 15:28:15', '103.159.73.72', 1),
(75, 'P00075', 'AAA', '', 24, 1, 1, 1, 8, 'na', 0, 1, '26.00', '40.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 10:57:07', NULL, NULL, 1, '2024-11-11 15:28:14', '103.159.73.72', 1),
(76, 'P00076', 'crusher', '', 28, 1, 1, 1, 8, 'na', 0, 0, '0.00', '80000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-04 13:02:31', NULL, NULL, 1, '2024-11-11 15:28:12', '103.159.73.72', 1),
(77, 'P00077', '479-7702', '', 30, 1, 1, 1, 8, 'na', 0, 5, '33000.00', '40000.00', '0.00', '36000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-08 15:01:42', NULL, NULL, 1, '2024-11-11 15:28:10', '103.159.73.72', 1),
(78, 'P00078', 'A6C-GDEL', '', 32, 1, 1, 1, 8, 'na', 0, 0, '25479.00', '33090.00', '0.00', '25480.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 8, '2024-09-09 16:57:58', NULL, NULL, 1, '2024-11-11 15:28:09', '103.159.73.72', 6),
(79, 'P00079', 'B4D-GDEL', '', 32, 1, 1, 1, 8, 'na', 0, 0, '30715.00', '39890.00', '0.00', '30715.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 8, '2024-09-09 16:59:08', NULL, NULL, 1, '2024-11-11 15:28:08', '103.159.73.72', 6),
(80, 'P00080', 'B4D-GDXX', '', 32, 1, 1, 1, 8, 'na', 0, 0, '30485.00', '39590.00', '0.00', '30485.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 8, '2024-09-09 17:00:16', NULL, NULL, 1, '2024-11-11 15:28:07', '103.159.73.72', 6),
(81, 'P00081', 'C4H-GDEH-DD(INV)', '', 32, 1, 1, 1, 8, 'na', 0, 0, '41495.00', '53890.00', '0.00', '41890.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 8, '2024-09-09 17:01:00', NULL, NULL, 1, '2024-11-11 15:28:06', '103.159.73.72', 6),
(82, 'P00082', 'COG-GDXX', '', 32, 1, 1, 1, 8, 'na', 0, 0, '35566.00', '46190.00', '0.00', '35566.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 8, '2024-09-09 17:01:59', NULL, NULL, 1, '2024-11-11 15:28:05', '103.159.73.72', 6),
(83, 'P00083', 'HP 250 G9 Core i5 12tg Gen Laptop', '', 34, 1, 1, 1, 8, 'na', 0, 0, '58500.00', '0.00', '0.00', '60000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-10 11:52:46', 1, '2024-09-11 10:06:24', 1, '2024-11-11 15:28:04', '103.159.73.72', 1),
(84, 'P00084', 'Dressig Table Single', '', 36, 1, 1, 1, 8, 'na', 0, 0, '4400.00', '6600.00', '0.00', '5000.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-13 20:45:09', NULL, NULL, 1, '2024-11-11 15:28:03', '103.159.73.72', 6),
(85, 'P00085', 'Dressing Table Double', '', 36, 1, 1, 1, 8, 'na', 0, 0, '4800.00', '7200.00', '0.00', '5500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-13 20:45:58', NULL, NULL, 1, '2024-11-11 15:28:02', '103.159.73.72', 6),
(86, 'P00086', 'CEMENT', '', 1, 1, 1, 1, 14, 'na', 0, 0, '13.00', '14.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-14 21:35:55', NULL, NULL, 1, '2024-11-11 15:28:00', '103.159.73.72', 1),
(87, 'P00087', 'TILES GULU CHEMCON', '', 1, 1, 1, 1, 14, 'na', 0, 0, '8.00', '9.00', '0.00', '9.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-14 21:36:26', NULL, NULL, 1, '2024-11-11 15:28:00', '103.159.73.72', 1),
(88, 'P00088', 'Pressure Cooker Handi 6.5', '', 33, 1, 1, 1, 8, 'na', 0, 0, '1200.00', '0.00', '0.00', '1200.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-16 19:39:02', NULL, NULL, 1, '2024-11-11 15:27:59', '103.159.73.72', 1),
(89, 'P00089', 'Pressure Cooker Handi 5.5	', '', 33, 1, 1, 1, 8, 'na', 0, 0, '1150.00', '0.00', '0.00', '1150.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-16 19:39:22', 1, '2024-09-16 19:42:48', 1, '2024-11-11 15:27:58', '103.159.73.72', 1),
(90, 'pcm27', '12 Vold27 plate160 Ah', '', 37, 1, 1, 1, 8, 'na', 0, 5, '10000.00', '12000.00', '0.00', '11500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-17 17:12:46', 1, '2024-09-17 17:14:23', 1, '2024-11-11 15:27:56', '103.159.73.72', 1),
(91, 'P00091', 'azmain 25kg LOT 1', '', 39, 1, 1, 1, 16, 'na', 0, 10, '3600.00', '3800.00', '0.00', '3600.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-22 13:21:37', NULL, NULL, 1, '2024-11-11 15:27:55', '103.159.73.72', 1),
(92, 'P00092', '42*1000', '', 40, 1, 1, 1, 3, 'na', 0, 0, '100.00', '120.00', '0.00', '115.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-26 12:08:01', NULL, NULL, 1, '2024-11-11 15:27:53', '103.159.73.72', 1),
(93, 'P00093', '50*1000', '', 41, 1, 1, 1, 3, 'na', 0, 0, '100.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-26 14:43:38', NULL, NULL, 1, '2024-11-11 15:27:53', '103.159.73.72', 1),
(94, 'P00094', '50*1000 china aks z1', '', 42, 1, 1, 1, 3, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-26 15:45:04', NULL, NULL, 1, '2024-11-11 15:27:50', '103.159.73.72', 1),
(95, 'P00095', '50*1000/china/green', '', 41, 1, 1, 1, 3, 'na', 0, 0, '125.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-26 15:45:55', NULL, NULL, 1, '2024-11-11 15:27:47', '103.159.73.72', 1),
(96, 'P00096', 'Gx Pro', '', 43, 1, 1, 1, 8, 'na', 0, 10, '300.00', '500.00', '0.00', '400.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-28 15:41:08', NULL, NULL, 1, '2024-11-11 15:27:46', '103.159.73.72', 1),
(97, 'P00097', 'Gx pro 2', '', 43, 1, 1, 1, 8, 'na', 0, 5, '300.00', '600.00', '0.00', '500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-28 15:41:42', NULL, NULL, 1, '2024-11-11 15:27:45', '103.159.73.72', 1),
(98, 'P00098', '27w micro charger', '', 44, 1, 1, 1, 8, 'na', 0, 10, '200.00', '600.00', '0.00', '500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-28 15:42:25', NULL, NULL, 1, '2024-11-11 15:27:44', '103.159.73.72', 1),
(99, 'P00099', '22w type c charger', '', 44, 1, 1, 1, 8, 'na', 0, 10, '100.00', '300.00', '0.00', '200.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-28 15:43:01', NULL, NULL, 1, '2024-11-11 15:27:43', '103.159.73.72', 1),
(100, 'P00100', '43*1000 Red China j', '', 45, 1, 1, 1, 3, 'na', 0, 0, '45.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-29 12:44:12', NULL, NULL, 1, '2024-11-11 15:27:42', '103.159.73.72', 1),
(101, 'P00101', '46*1000 Red Aks j', '', 45, 1, 1, 1, 3, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-29 12:44:41', NULL, NULL, 1, '2024-11-11 15:27:41', '103.159.73.72', 1),
(102, 'P00102', 'N/A', '', 46, 1, 1, 1, 3, 'na', 0, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-09-30 12:05:44', NULL, NULL, 1, '2024-11-11 15:27:39', '103.159.73.72', 1),
(103, '735685692', 'HP ELITE30', '', 34, 1, 1, 1, 8, 'na', 0, 0, '32000.00', '38000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-02 12:10:46', NULL, NULL, 1, '2024-11-11 15:27:38', '103.159.73.72', 1),
(104, 'P00104', 'lenovo x250', '', 34, 1, 1, 1, 8, 'na', 0, 0, '200.00', '1000.00', '0.00', '800.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-03 20:01:59', NULL, NULL, 1, '2024-11-11 15:27:37', '103.159.73.72', 1),
(105, 'P00105', '8\" Welloo Nose Pliers', '', 47, 1, 1, 1, 8, 'na', 0, 60, '230.00', '240.00', '0.00', '240.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-06 12:48:19', NULL, NULL, 1, '2024-11-11 15:27:36', '103.159.73.72', 1),
(106, 'P00106', '6\" Welloo Cutting Pliers', '', 47, 1, 1, 1, 8, 'na', 0, 60, '190.00', '200.00', '0.00', '200.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-06 12:49:24', 1, '2024-10-06 12:49:42', 1, '2024-11-11 15:27:35', '103.159.73.72', 1),
(107, 'DVT64180', 'Tester Welloo X 600 (L)', '', 48, 1, 1, 1, 8, 'na', 0, 1200, '48.00', '50.00', '0.00', '50.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-07 11:50:49', NULL, NULL, 1, '2024-11-11 15:27:34', '103.159.73.72', 1),
(108, 'DVT64140', 'Tester Welloo X 600 (S)', '', 48, 1, 1, 1, 8, 'na', 0, 2400, '38.00', '40.00', '0.00', '40.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-07 11:56:00', NULL, NULL, 1, '2024-11-11 15:27:33', '103.159.73.72', 1),
(109, 'P00109', 'ac led 03wat', '', 49, 1, 1, 1, 8, 'na', 0, 10, '96.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-07 13:54:41', NULL, NULL, 1, '2024-11-11 15:27:32', '103.159.73.72', 1),
(110, 'P00110', 'Hugo Boss T-Shirt', '', 17, 1, 1, 1, 8, 'na', 0, 20, '1050.00', '1600.00', '0.00', '1600.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-07 19:10:27', 1, '2024-10-07 19:22:15', 1, '2024-11-11 15:27:31', '103.159.73.72', 1),
(111, '300', '305 2', '', 50, 1, 1, 1, 18, 'na', 0, 0, '7.50', '12.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-18 19:58:08', NULL, NULL, 1, '2024-11-11 15:27:30', '103.159.73.72', 1),
(112, '10', '305', '', 50, 1, 1, 1, 18, 'na', 0, 0, '7.50', '13.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-18 20:03:18', NULL, NULL, 1, '2024-11-11 15:27:29', '103.159.73.72', 1),
(113, 'P00113', 'jamdani shari 23456784567', '', 51, 1, 1, 1, 8, 'na', 0, 5, '1200.00', '2000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-19 14:03:50', NULL, NULL, 1, '2024-11-11 15:27:28', '103.159.73.72', 1),
(114, 'P00114', 'h4', '', 53, 1, 1, 1, 8, 'na', 0, 2000, '400.00', '600.00', '0.00', '500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-19 15:48:25', NULL, NULL, 1, '2024-11-11 15:27:26', '103.159.73.72', 1),
(115, 'P00115', '5w', '', 54, 1, 1, 1, 8, 'na', 0, 5, '30.00', '40.00', '0.00', '35.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-20 12:21:05', NULL, NULL, 1, '2024-11-11 15:27:25', '103.159.73.72', 6),
(116, 'P00116', '10 w', '', 54, 1, 1, 1, 8, 'na', 0, 0, '45.00', '60.00', '0.00', '50.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-20 12:22:40', NULL, NULL, 1, '2024-11-11 15:27:24', '103.159.73.72', 6),
(117, 'P00117', 'Crown', '', 55, 1, 1, 1, 14, 'na', 0, 50, '495.00', '505.00', '0.00', '500.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-21 16:34:57', NULL, NULL, 1, '2024-11-11 15:27:23', '103.159.73.72', 1),
(118, '01', 'dspl 40', '', 57, 1, 1, 1, 3, 'na', 0, 10000, '75.00', '58.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 17, '2024-10-22 13:48:27', NULL, NULL, 1, '2024-11-11 15:27:22', '103.159.73.72', 1),
(119, 'P00119', 'potata-788745637', '', 58, 1, 1, 1, 8, 'na', 0, 5, '9.00', '10.00', '0.00', '10.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-23 13:09:35', NULL, NULL, 1, '2024-11-11 15:27:20', '103.159.73.72', 1),
(120, 'P00120', 'nassle coffie-67854345634', '', 59, 1, 1, 1, 8, 'na', 0, 2, '300.00', '500.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-23 13:17:25', NULL, NULL, 1, '2024-11-11 15:27:18', '103.159.73.72', 1),
(121, 'P00121', 'Mac coffie-78675435', '', 59, 1, 1, 1, 8, 'na', 0, 2, '300.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-23 13:17:53', NULL, NULL, 1, '2024-11-11 15:27:17', '103.159.73.72', 1),
(122, '061', '10', '', 50, 1, 1, 1, 18, 'na', 0, 0, '8.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-25 17:38:06', NULL, NULL, 1, '2024-11-11 15:27:16', '103.159.73.72', 1),
(123, '091', '20', '', 50, 1, 1, 1, 18, 'na', 0, 0, '8.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-25 17:39:12', NULL, NULL, 1, '2024-11-11 15:27:15', '103.159.73.72', 1),
(124, 'P00124', '017 2', '', 50, 1, 1, 1, 18, 'na', 0, 0, '5000.00', '4000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-25 18:03:25', NULL, NULL, 1, '2024-11-11 15:27:15', '103.159.73.72', 1),
(125, 'P00125', '017 3', '', 50, 1, 1, 1, 18, 'na', 0, 0, '8.75', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-25 18:03:34', NULL, NULL, 1, '2024-11-11 15:27:14', '103.159.73.72', 1),
(126, 'P00126', '505 6', '', 50, 1, 1, 1, 18, 'na', 0, 0, '500.00', '0.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-25 18:03:48', 1, '2024-10-27 17:49:14', 1, '2024-11-11 15:27:13', '103.159.73.72', 1),
(127, 'P00127', 'Man shirt', '', 60, 1, 1, 1, 8, 'na', 0, 0, '1000.00', '1500.00', '0.00', '1200.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-10-31 18:53:57', NULL, NULL, 1, '2024-11-11 15:27:12', '103.159.73.72', 1),
(128, 'P1', 'আলু', '', 61, 1, 1, 1, 3, 'na', 0, 0, '55.00', '60.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-01 15:22:40', NULL, NULL, 1, '2024-11-11 15:27:11', '103.159.73.72', 7),
(129, 'P00129', 'Jui coconut oil 500mg', '', 62, 1, 1, 1, 8, 'na', 0, 0, '0.00', '270.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-01 16:21:35', 1, '2024-11-01 16:23:16', 1, '2024-11-01 16:25:49', '37.111.212.78', 1),
(130, 'P00130', 'Jui coconut oil 250mg/Exp-01/11/26', '', 62, 1, 1, 1, 8, 'na', 0, 0, '200.00', '270.00', '0.00', '220.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-01 16:27:05', NULL, NULL, 18, '2024-11-01 21:10:01', '103.142.69.56', 1),
(131, 'S002', 'Mojo 250 ml pet (336 x 24)', '', 63, 1, 1, 1, 8, 'na', 0, 24, '16.15', '17.12', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-02 13:31:19', NULL, NULL, 1, '2024-11-11 15:27:10', '103.159.73.72', 1),
(132, 'P00132', '140 gm', '', 66, 1, 1, 1, 8, 'na', 0, 5, '32.60', '35.00', '0.00', '35.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-02 13:34:55', NULL, NULL, 1, '2024-11-11 15:27:09', '103.159.73.72', 12),
(133, 'P00133', 'Man T Shirt', '', 67, 1, 1, 1, 8, 'na', 0, 0, '500.00', '800.00', '0.00', '650.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-03 09:43:14', 1, '2024-11-03 09:43:56', 1, '2024-11-11 15:27:08', '103.159.73.72', 13),
(134, 'P00134', 'KSA TICKET', '', 68, 1, 1, 1, 19, 'na', 0, 0, '50000.00', '52000.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 20, '2024-11-03 14:30:02', NULL, NULL, 1, '2024-11-11 15:27:07', '103.159.73.72', 1),
(135, 'P00135', 'meril soup 250mg (05-11-26)', '', 62, 1, 1, 1, 8, 'na', 0, 0, '40.00', '50.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-05 20:17:28', 1, '2024-11-05 20:18:07', 1, '2024-11-11 15:27:06', '103.159.73.72', 1),
(136, 'P00136', 'xdfdtyug', '', 67, 1, 1, 1, 8, 'na', 0, 0, '0.00', '300.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'true', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'd', 1, '2024-11-06 15:28:44', 1, '2024-11-06 15:29:25', 1, '2024-11-11 15:27:04', '103.159.73.72', 1),
(137, 'P00137', 'Zira Zar', 'zira-zar-67ec1fbd3756a', 18, 1, 1, 1, 1, 'na', 0, 108, '76.00', '86.00', '0.00', '0.00', '0.00', '', NULL, '<h2>Test</h2><ul><li>Test</li><li>Tes</li><li>Test</li></ul>', 'true', 'true', 'false', 'false', 'false', 'false', 'http://localhost:85/product', NULL, NULL, 'a', 1, '2024-11-12 12:18:04', 1, '2025-04-01 23:17:49', NULL, NULL, '::1', 1),
(138, 'P00138', 'Bela ', '', 19, 1, 1, 1, 1, 'na', 0, 144, '80.00', '95.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'a', 1, '2024-11-12 12:18:37', 1, '2025-02-15 16:21:13', NULL, NULL, '::1', 1),
(139, 'P00139', 'Tokjhal', '', 17, 1, 1, 1, 1, 'na', 0, 60, '45.00', '55.00', '0.00', '0.00', '80.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'a', 1, '2024-11-12 12:19:09', 1, '2025-02-15 20:05:04', NULL, NULL, '::1', 1),
(140, '3455454545454', 'Box Canacur', '', 19, 1, 1, 1, 1, 'na', 0, 60, '100.00', '110.00', '0.00', '0.00', '0.00', '', NULL, NULL, 'true', 'false', 'false', 'false', 'false', 'false', NULL, NULL, NULL, 'a', 1, '2024-11-12 12:19:29', 1, '2025-02-15 20:04:55', NULL, NULL, '::1', 1),
(141, 'P00141', 'Testing Pro Products', 'testing-pro-products-680bcc9c67bc5', 18, 1, 1, 1, 1, 'na', 0, 10, '10000.00', '1200.00', '0.00', '0.00', '1500.00', '', NULL, '<h2>Test</h2><ul><li>Test</li><li>Tes</li><li>Test</li></ul>', 'true', 'false', 'false', 'true', 'false', 'false', 'https://www.youtube.com/embed/L2KI8lpS1SY', 'uploads/products/796558_67b0d6e2347d4.jpg', 'uploads/products/sizes/410843_680bbcf126441.png', 'a', 1, '2024-11-12 13:36:32', 1, '2025-04-26 00:00:26', NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_gallery`
--

CREATE TABLE `tbl_product_gallery` (
  `Gallery_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Gallery_Image` longtext NOT NULL,
  `status` char(10) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_inventory`
--

CREATE TABLE `tbl_product_inventory` (
  `inventory_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_quantity` float NOT NULL,
  `purchase_return_quantity` float NOT NULL,
  `sales_quantity` float NOT NULL,
  `sales_return_quantity` float NOT NULL,
  `damage_quantity` float NOT NULL,
  `transfer_from_quantity` float NOT NULL,
  `transfer_to_quantity` float NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_inventory`
--

INSERT INTO `tbl_product_inventory` (`inventory_id`, `product_id`, `purchase_quantity`, `purchase_return_quantity`, `sales_quantity`, `sales_return_quantity`, `damage_quantity`, `transfer_from_quantity`, `transfer_to_quantity`, `branch_id`) VALUES
(1, 3, 200, 5, 7, 0, 0, 0, 0, 1),
(2, 2, 102, 0, 6, 0, 0, 0, 0, 1),
(3, 1, 12, 0, 5, 2, 0, 0, 0, 1),
(4, 4, 5, 0, 1, 0, 0, 0, 0, 1),
(5, 7, 12, 0, 3, 1, 0, 0, 0, 1),
(6, 6, 10, 0, 3, 0, 0, 0, 0, 1),
(7, 5, 10, 0, 0, 0, 0, 0, 0, 1),
(8, 8, 18, 0, 9, 0, 0, 0, 0, 1),
(9, 9, 15, 0, 2, 0, 0, 0, 0, 1),
(10, 10, 90, 0, 9, 0, 0, 0, 0, 1),
(11, 15, 20, 0, 7, 0, 0, 0, 0, 1),
(12, 14, 50, 0, 11, 5, 0, 0, 0, 1),
(13, 17, 20.5, 0, 1, 0, 0, 0, 0, 1),
(14, 22, 55000, 0, 13, 0, 0, 0, 0, 1),
(15, 23, 1050, 0, 0, 0, 0, 0, 0, 1),
(16, 24, 1300, 0, 5, 0, 0, 0, 0, 1),
(17, 25, 10000, 0, 300, 0, 0, 0, 0, 1),
(18, 28, 100, 0, 20, 0, 0, 0, 0, 1),
(19, 27, 100, 0, 40, 0, 0, 0, 0, 1),
(20, 26, 100, 0, 100, 0, 0, 0, 0, 1),
(21, 29, 1, 0, 1, 0, 0, 0, 0, 1),
(22, 30, 100, 0, 20, 0, 0, 0, 0, 1),
(23, 31, 100, 0, 20, 0, 0, 0, 0, 1),
(24, 31, 100, 0, 0, 0, 0, 0, 0, 2),
(25, 40, 114400, 0, 7066, 0, 0, 0, 0, 1),
(26, 37, 46777, 0, 1, 0, 0, 0, 0, 1),
(27, 38, 1018, 0, 1, 0, 0, 0, 0, 1),
(28, 39, 87753, 0, 450, 0, 0, 0, 0, 1),
(29, 36, 677, 0, 0, 0, 0, 0, 0, 1),
(30, 35, 876, 0, 567, 0, 0, 0, 0, 1),
(31, 33, 778, 0, 0, 0, 0, 0, 0, 1),
(32, 32, 678, 0, 0, 0, 0, 0, 0, 1),
(33, 41, 100, 0, 17, 0, 0, 0, 0, 1),
(34, 43, 100, 0, 12, 2, 0, 0, 0, 1),
(35, 42, 100, 0, 10, 1, 0, 0, 0, 1),
(36, 44, 50, 0, 1, 0, 0, 0, 0, 1),
(37, 45, 50, 0, 1, 0, 0, 0, 0, 1),
(38, 46, 50, 0, 16, 0, 0, 20, 0, 1),
(39, 47, 50, 0, 10, 0, 0, 0, 0, 1),
(40, 48, 5, 0, 2, 0, 0, 0, 0, 4),
(41, 49, 5, 0, 0, 0, 0, 0, 0, 4),
(42, 50, 20, 0, 0, 0, 0, 0, 0, 3),
(43, 58, 26, 0, 16, 0, 0, 0, 0, 1),
(44, 57, 20, 0, 15, 0, 0, 0, 0, 1),
(45, 56, 20, 0, 8, 0, 0, 0, 0, 1),
(46, 55, 20, 0, 0, 0, 0, 0, 0, 1),
(47, 59, 1000, 0, 156, 0, 0, 0, 0, 1),
(48, 60, 96, 0, 19, 0, 0, 0, 0, 1),
(49, 65, 10, 0, 5, 0, 0, 0, 0, 1),
(50, 64, 12, 0, 12, 0, 0, 0, 0, 1),
(51, 63, 100, 0, 28, 0, 0, 0, 0, 1),
(52, 62, 50, 0, 4, 1, 0, 0, 0, 1),
(53, 61, 12, 0, 9, 0, 0, 0, 0, 1),
(54, 69, 100, 0, 16, 1, 0, 0, 0, 1),
(55, 67, 20, 0, 6, 0, 0, 0, 0, 1),
(56, 66, 100, 0, 2, 0, 0, 0, 0, 1),
(57, 71, 1, 0, 1, 0, 0, 0, 0, 1),
(58, 72, 101, 0, 13, 0, 0, 0, 0, 1),
(59, 73, 100, 0, 21, 0, 0, 0, 0, 1),
(60, 74, 1502, 0, 112, 0, 0, 0, 0, 1),
(61, 75, 600, 0, 202, 0, 0, 0, 0, 1),
(62, 75, 100, 0, 58, 0, 0, 0, 0, 5),
(63, 60, 20, 0, 0, 0, 0, 0, 0, 5),
(64, 77, 50, 0, 1, 0, 0, 0, 0, 1),
(65, 74, 10, 0, 0, 0, 0, 0, 0, 5),
(66, 82, 11, 0, 2, 0, 0, 1, 0, 6),
(67, 81, 1, 0, 1, 0, 0, 0, 0, 6),
(68, 80, 1, 0, 1, 0, 0, 0, 0, 6),
(69, 79, 1, 0, 1, 0, 0, 0, 0, 6),
(70, 78, 1, 0, 1, 0, 0, 0, 0, 6),
(71, 83, 10, 0, 12, 4, 0, 0, 0, 1),
(72, 82, 10, 0, 11, 0, 0, 0, 1, 1),
(73, 81, 10, 0, 0, 0, 0, 0, 0, 1),
(74, 85, 1, 0, 1, 0, 0, 0, 0, 6),
(75, 84, 2, 0, 2, 0, 0, 0, 0, 6),
(76, 86, 100, 0, 13, 0, 0, 0, 0, 1),
(77, 90, 12, 0, 12, 0, 0, 0, 0, 1),
(78, 91, 282, 20, 20, 0, 0, 0, 0, 1),
(79, 92, 27222, 0, 4610, 0, 0, 0, 0, 1),
(80, 93, 50646, 0, 100, 0, 0, 0, 0, 1),
(81, 99, 100, 0, 10, 0, 2, 0, 0, 1),
(82, 98, 100, 0, 1, 0, 0, 0, 0, 1),
(83, 97, 100, 0, 68, 1, 0, 0, 0, 1),
(84, 96, 1000, 0, 0, 0, 0, 0, 0, 1),
(85, 83, 600, 0, 3, 0, 0, 0, 0, 6),
(86, 100, 50000, 0, 2, 0, 0, 0, 0, 1),
(87, 95, 500000, 0, 25, 0, 0, 0, 0, 1),
(88, 103, 100, 0, 11, 0, 0, 0, 0, 1),
(89, 104, 12, 0, 12, 0, 0, 0, 0, 1),
(90, 106, 300, 0, 183, 30, 0, 60, 0, 1),
(91, 105, 300, 0, 162, 30, 0, 60, 0, 1),
(92, 106, 0, 0, 48, 6, 0, 0, 60, 2),
(93, 105, 0, 0, 48, 6, 0, 0, 60, 2),
(94, 108, 1200, 0, 807, 60, 0, 60, 0, 1),
(95, 107, 1200, 0, 786, 55, 0, 60, 0, 1),
(96, 109, 100, 0, 97, 0, 0, 0, 0, 1),
(97, 110, 150, 0, 62, 0, 0, 5, 0, 1),
(98, 108, 0, 0, 0, 0, 0, 0, 60, 2),
(99, 107, 0, 0, 0, 0, 0, 0, 60, 2),
(100, 112, 556, 0, 80.5, 0, 0, 0, 0, 1),
(101, 111, 550.7, 0, 87, 0, 0, 0, 0, 1),
(102, 113, 200, 0, 8, 1, 0, 10, 0, 1),
(103, 114, 5000, 0, 0, 0, 0, 0, 0, 1),
(104, 115, 100, 0, 20, 0, 0, 0, 0, 6),
(105, 116, 100, 0, 10, 0, 0, 0, 0, 6),
(106, 117, 600, 0, 18, 1, 0, 0, 0, 1),
(107, 118, 5000, 0, 209, 0, 0, 0, 0, 1),
(108, 119, 120, 0, 22, 0, 0, 0, 0, 1),
(109, 121, 400, 0, 128, 1, 5, 10, 0, 1),
(110, 120, 300, 0, 16, 8, 0, 2, 0, 1),
(111, 122, 750, 0, 62, 0, 0, 0, 0, 1),
(112, 123, 10200, 0, 30, 0, 0, 100, 0, 1),
(113, 125, 200, 0, 126, 0, 0, 7, 0, 1),
(114, 116, 100, 0, 1, 0, 0, 0, 0, 1),
(115, 119, 100, 0, 0, 0, 0, 0, 0, 9),
(116, 120, 5, 0, 0, 0, 0, 0, 0, 11),
(117, 121, 2, 0, 0, 0, 0, 0, 0, 11),
(118, 126, 100, 0, 50, 0, 0, 0, 0, 1),
(119, 115, 100, 0, 50, 0, 0, 0, 0, 1),
(120, 127, 21, 1, 9, 0, 0, 0, 0, 1),
(121, 124, 1, 0, 0, 0, 0, 0, 0, 7),
(122, 131, 8164, 0, 32, 0, 0, 0, 0, 1),
(123, 132, 100, 0, 30, 0, 0, 0, 0, 12),
(124, 121, 0, 0, 0, 0, 0, 0, 10, 7),
(125, 120, 0, 0, 0, 0, 0, 0, 2, 7),
(126, 133, 22, 0, 2, 0, 0, 0, 0, 13),
(127, 134, 1, 0, 1, 0, 0, 0, 0, 1),
(128, 135, 50, 0, 50, 2, 0, 0, 0, 1),
(129, 133, 12, 0, 0, 0, 0, 0, 0, 1),
(130, 138, 144, 0, 42, 0, 0, 0, 0, 1),
(131, 139, 108, 0, 76, 2, 0, 0, 0, 1),
(132, 140, 60, 0, 26, 0, 5, 0, 0, 1),
(133, 137, 144, 0, 62, 0, 0, 0, 0, 1),
(134, 141, 100, 0, 0, 0, 0, 0, 0, 1),
(135, 141, 500, 0, 0, 0, 0, 0, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_details`
--

CREATE TABLE `tbl_purchase_details` (
  `PurchaseDetails_SlNo` int(11) NOT NULL,
  `PurchaseMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `PurchaseDetails_TotalQuantity` float NOT NULL,
  `PurchaseDetails_Rate` decimal(18,2) NOT NULL,
  `purchase_cost` decimal(18,2) NOT NULL,
  `PurchaseDetails_Discount` decimal(18,2) NOT NULL,
  `PurchaseDetails_TotalAmount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_details`
--

INSERT INTO `tbl_purchase_details` (`PurchaseDetails_SlNo`, `PurchaseMaster_IDNo`, `Product_IDNo`, `PurchaseDetails_TotalQuantity`, `PurchaseDetails_Rate`, `purchase_cost`, `PurchaseDetails_Discount`, `PurchaseDetails_TotalAmount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 3, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 1, '2024-04-28 16:39:05', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 1, 2, 100, '20.00', '0.00', '0.00', '2000.00', 'a', 1, '2024-04-28 16:39:05', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, 1, 1, 2, '50.00', '0.00', '0.00', '100.00', 'a', 1, '2024-04-28 16:39:05', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(4, 2, 3, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 1, '2024-04-29 15:05:09', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(5, 2, 2, 2, '20.00', '0.00', '0.00', '40.00', 'a', 1, '2024-04-29 15:05:09', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(6, 2, 1, 10, '50.00', '0.00', '0.00', '500.00', 'a', 1, '2024-04-29 15:05:09', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(7, 3, 4, 5, '300.00', '0.00', '0.00', '1500.00', 'a', 1, '2024-05-02 14:49:56', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(8, 4, 7, 12, '55.00', '0.00', '0.00', '660.00', 'a', 2, '2024-05-07 17:32:21', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(9, 4, 6, 10, '85.00', '0.00', '0.00', '850.00', 'a', 2, '2024-05-07 17:32:21', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(10, 4, 5, 10, '82.00', '0.00', '0.00', '820.00', 'a', 2, '2024-05-07 17:32:21', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(11, 5, 8, 18, '1719.00', '0.00', '0.00', '30942.00', 'a', 1, '2024-05-13 13:40:45', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(12, 5, 9, 15, '1655.00', '0.00', '0.00', '24825.00', 'a', 1, '2024-05-13 13:40:45', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(13, 6, 10, 10, '428.00', '0.00', '0.00', '4280.00', 'a', 1, '2024-05-15 00:57:35', NULL, NULL, NULL, NULL, '103.124.251.188', 1),
(14, 7, 10, 80, '428.00', '0.00', '0.00', '34240.00', 'a', 1, '2024-05-18 10:57:27', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(15, 8, 15, 20, '3000.00', '0.00', '0.00', '60000.00', 'a', 1, '2024-05-18 16:58:42', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(16, 8, 14, 50, '5000.00', '0.00', '0.00', '250000.00', 'a', 1, '2024-05-18 16:58:42', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(17, 9, 17, 20.5, '250.00', '0.00', '0.00', '5125.00', 'a', 1, '2024-05-18 17:58:20', NULL, NULL, NULL, NULL, '103.82.9.15', 1),
(18, 10, 22, 55000, '7.10', '0.00', '0.00', '390500.00', 'a', 1, '2024-05-25 12:33:37', NULL, NULL, NULL, NULL, '123.200.30.131', 1),
(19, 11, 23, 1000, '10.00', '0.00', '0.00', '10000.00', 'a', 1, '2024-05-29 14:07:46', NULL, NULL, NULL, NULL, '5.31.196.206', 1),
(20, 11, 24, 1000, '11.00', '0.00', '0.00', '11000.00', 'a', 1, '2024-05-29 14:07:46', NULL, NULL, NULL, NULL, '5.31.196.206', 1),
(21, 12, 23, 50, '25.00', '0.00', '0.00', '1250.00', 'a', 1, '2024-06-03 11:23:07', NULL, NULL, NULL, NULL, '103.159.73.250', 1),
(22, 13, 24, 300, '11.00', '0.00', '0.00', '3300.00', 'a', 1, '2024-06-03 17:54:49', NULL, NULL, NULL, NULL, '59.153.16.193', 1),
(23, 14, 25, 5000, '1200.00', '0.00', '0.00', '6000000.00', 'a', 1, '2024-06-04 17:23:22', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(24, 15, 25, 5000, '1200.00', '0.00', '0.00', '6000000.00', 'a', 1, '2024-06-04 17:24:05', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(25, 16, 28, 100, '50.00', '0.00', '0.00', '5000.00', 'a', 1, '2024-06-04 18:17:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(26, 16, 27, 100, '10.00', '0.00', '0.00', '1000.00', 'a', 1, '2024-06-04 18:17:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(27, 16, 26, 100, '25.00', '0.00', '0.00', '2500.00', 'a', 1, '2024-06-04 18:17:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(28, 17, 29, 1, '600.00', '0.00', '0.00', '600.00', 'a', 1, '2024-06-05 15:39:19', NULL, NULL, NULL, NULL, '46.153.213.147', 1),
(29, 18, 30, 100, '150.00', '0.00', '0.00', '15000.00', 'a', 1, '2024-06-05 16:01:56', NULL, NULL, NULL, NULL, '103.179.124.20', 1),
(30, 19, 31, 100, '4500.00', '0.00', '0.00', '450000.00', 'a', 1, '2024-06-08 13:59:13', NULL, NULL, NULL, NULL, '103.203.93.233', 1),
(31, 20, 31, 100, '4500.00', '0.00', '0.00', '450000.00', 'a', 1, '2024-06-09 17:26:02', NULL, NULL, NULL, NULL, '103.159.72.85', 2),
(32, 21, 40, 5000, '156.00', '0.00', '0.00', '780000.00', 'a', 1, '2024-06-18 03:25:44', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(33, 22, 40, 4300, '156.00', '0.00', '0.00', '670800.00', 'a', 1, '2024-06-18 03:27:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(34, 23, 37, 712, '88.00', '0.00', '0.00', '62656.00', 'd', 1, '2024-06-18 03:30:46', NULL, NULL, 1, '2024-06-19 03:13:48', '103.147.166.161', 1),
(35, 24, 38, 978, '157.00', '0.00', '0.00', '153546.00', 'a', 1, '2024-06-18 03:32:28', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(36, 25, 39, 1423, '165.00', '0.00', '0.00', '234795.00', 'a', 1, '2024-06-18 03:33:56', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(37, 26, 36, 677, '123.00', '0.00', '0.00', '83271.00', 'a', 1, '2024-06-18 03:35:28', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(38, 27, 35, 876, '188.00', '0.00', '0.00', '164688.00', 'a', 1, '2024-06-18 03:36:33', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(39, 28, 33, 778, '176.00', '0.00', '0.00', '136928.00', 'a', 1, '2024-06-18 03:37:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(40, 29, 40, 100000, '156.00', '0.00', '0.00', '15600000.00', 'a', 1, '2024-06-18 05:59:31', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(41, 30, 39, 78000, '165.00', '0.00', '0.00', '12870000.00', 'a', 1, '2024-06-18 06:05:07', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(42, 31, 37, 46000, '88.00', '0.00', '0.00', '4048000.00', 'a', 1, '2024-06-18 06:07:09', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(43, 32, 40, 4600, '156.00', '0.00', '0.00', '717600.00', 'a', 1, '2024-06-19 03:02:44', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(44, 33, 32, 678, '199.00', '0.00', '0.00', '134922.00', 'a', 1, '2024-06-19 03:06:19', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(45, 34, 39, 6777, '165.00', '0.00', '0.00', '1118205.00', 'a', 1, '2024-06-19 03:08:25', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(46, 35, 37, 777, '88.00', '0.00', '0.00', '68376.00', 'a', 1, '2024-06-19 03:37:26', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(47, 36, 40, 500, '156.00', '0.00', '0.00', '78000.00', 'a', 1, '2024-06-19 08:56:06', NULL, NULL, NULL, NULL, '114.130.188.55', 1),
(48, 37, 39, 678, '165.00', '0.00', '0.00', '111870.00', 'a', 1, '2024-06-21 16:16:43', NULL, NULL, NULL, NULL, '114.130.180.194', 1),
(49, 38, 41, 100, '55.00', '0.00', '0.00', '5500.00', 'a', 1, '2024-06-25 11:01:30', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(50, 39, 43, 100, '250.00', '0.00', '0.00', '25000.00', 'a', 1, '2024-06-26 12:22:39', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(51, 39, 42, 100, '250.00', '0.00', '0.00', '25000.00', 'a', 1, '2024-06-26 12:22:39', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(52, 40, 44, 50, '250.00', '0.00', '0.00', '12500.00', 'a', 1, '2024-06-26 16:12:42', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(53, 40, 45, 50, '250.00', '0.00', '0.00', '12500.00', 'a', 1, '2024-06-26 16:12:42', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(54, 40, 46, 50, '250.00', '0.00', '0.00', '12500.00', 'a', 1, '2024-06-26 16:12:42', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(55, 40, 47, 50, '250.00', '0.00', '0.00', '12500.00', 'a', 1, '2024-06-26 16:12:42', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(56, 41, 39, 875, '165.00', '0.00', '0.00', '144375.00', 'a', 1, '2024-06-26 20:39:11', NULL, NULL, NULL, NULL, '114.130.180.140', 1),
(57, 41, 38, 40, '3200.00', '0.00', '0.00', '128000.00', 'a', 1, '2024-06-26 20:39:11', NULL, NULL, NULL, NULL, '114.130.180.140', 1),
(58, 42, 48, 5, '225000.00', '0.00', '0.00', '1125000.00', 'a', 5, '2024-07-01 12:38:30', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(59, 42, 49, 5, '3000.00', '0.00', '0.00', '15000.00', 'a', 5, '2024-07-01 12:38:30', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(60, 43, 50, 20, '5000.00', '0.00', '0.00', '100000.00', 'a', 1, '2024-07-01 13:33:05', NULL, NULL, NULL, NULL, '103.120.223.17', 3),
(61, 44, 58, 20, '420.00', '0.00', '0.00', '8400.00', 'a', 1, '2024-07-02 20:35:36', NULL, NULL, NULL, NULL, '27.123.253.58', 1),
(62, 44, 57, 20, '452.00', '0.00', '0.00', '9040.00', 'a', 1, '2024-07-02 20:35:36', NULL, NULL, NULL, NULL, '27.123.253.58', 1),
(63, 44, 56, 20, '674.00', '0.00', '0.00', '13480.00', 'a', 1, '2024-07-02 20:35:36', NULL, NULL, NULL, NULL, '27.123.253.58', 1),
(64, 44, 55, 20, '152000.00', '0.00', '0.00', '3040000.00', 'a', 1, '2024-07-02 20:35:36', NULL, NULL, NULL, NULL, '27.123.253.58', 1),
(65, 45, 58, 6, '400.00', '0.00', '0.00', '2400.00', 'a', 1, '2024-07-06 18:49:00', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(66, 46, 59, 200, '23.00', '0.00', '0.00', '4600.00', 'a', 1, '2024-07-06 19:27:48', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(67, 47, 59, 400, '23.50', '0.00', '0.00', '9400.00', 'a', 1, '2024-07-06 19:51:05', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(68, 48, 60, 96, '53.00', '0.00', '0.00', '5088.00', 'a', 1, '2024-07-06 19:59:48', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(69, 49, 59, 200, '23.38', '0.00', '0.00', '4676.00', 'a', 1, '2024-07-06 20:28:43', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(70, 50, 59, 200, '23.38', '0.00', '0.00', '4676.00', 'a', 1, '2024-07-06 21:48:37', NULL, NULL, NULL, NULL, '103.25.248.131', 1),
(71, 51, 65, 10, '5000.00', '0.00', '0.00', '50000.00', 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(72, 51, 64, 12, '10000.00', '0.00', '0.00', '120000.00', 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(73, 51, 63, 100, '3000.00', '0.00', '0.00', '300000.00', 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(74, 51, 62, 50, '4000.00', '0.00', '0.00', '200000.00', 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(75, 51, 61, 12, '5000.00', '0.00', '0.00', '60000.00', 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(76, 52, 69, 100, '7000.00', '0.00', '0.00', '700000.00', 'a', 1, '2024-08-15 15:00:36', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(77, 53, 67, 20, '8625.00', '0.00', '0.00', '172500.00', 'a', 1, '2024-08-25 20:36:26', NULL, NULL, NULL, NULL, '103.150.64.177', 1),
(78, 54, 66, 100, '14200.00', '0.00', '0.00', '1420000.00', 'a', 1, '2024-09-04 10:00:25', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(79, 55, 71, 1, '20000.00', '0.00', '0.00', '20000.00', 'a', 1, '2024-09-04 10:03:32', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(80, 56, 72, 100, '200000.00', '0.00', '0.00', '20000000.00', 'a', 1, '2024-09-04 10:16:41', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(81, 57, 73, 100, '100000.00', '0.00', '0.00', '10000000.00', 'a', 1, '2024-09-04 10:32:07', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(82, 58, 74, 500, '200.00', '0.00', '0.00', '100000.00', 'a', 1, '2024-09-04 10:41:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(83, 59, 75, 100, '30.00', '0.00', '0.00', '3000.00', 'a', 1, '2024-09-04 10:57:39', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(84, 60, 75, 300, '30.00', '0.00', '0.00', '9000.00', 'a', 1, '2024-09-04 11:18:24', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(85, 61, 75, 200, '20.00', '0.00', '0.00', '4000.00', 'a', 1, '2024-09-04 12:59:28', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(86, 61, 74, 1000, '100.00', '0.00', '0.00', '100000.00', 'a', 1, '2024-09-04 12:59:28', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(87, 62, 75, 100, '26.00', '0.00', '0.00', '2600.00', 'a', 1, '2024-09-07 11:27:35', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(88, 63, 72, 1, '200000.00', '0.00', '0.00', '200000.00', 'a', 1, '2024-09-07 13:47:38', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(89, 63, 74, 2, '133.16', '0.00', '0.00', '266.32', 'a', 1, '2024-09-07 13:47:38', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(90, 64, 60, 20, '53.00', '0.00', '0.00', '1060.00', 'a', 1, '2024-09-08 14:53:41', NULL, NULL, NULL, NULL, '113.11.122.205', 5),
(91, 65, 77, 50, '33000.00', '0.00', '0.00', '1650000.00', 'a', 1, '2024-09-08 15:03:01', NULL, NULL, NULL, NULL, '103.136.1.58', 1),
(92, 66, 74, 10, '133.16', '0.00', '0.00', '1331.60', 'a', 8, '2024-09-08 20:40:08', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(93, 67, 82, 1, '35566.00', '0.00', '0.00', '35566.00', 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(94, 67, 81, 1, '41495.00', '0.00', '0.00', '41495.00', 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(95, 67, 80, 1, '30485.00', '0.00', '0.00', '30485.00', 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(96, 67, 79, 1, '30715.00', '0.00', '0.00', '30715.00', 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(97, 67, 78, 1, '25479.00', '0.00', '0.00', '25479.00', 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(98, 68, 83, 10, '58500.00', '0.00', '0.00', '585000.00', 'a', 1, '2024-09-10 11:54:04', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(99, 69, 82, 10, '35566.00', '0.00', '0.00', '355660.00', 'a', 1, '2024-09-12 15:39:18', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(100, 69, 81, 10, '41495.00', '0.00', '0.00', '414950.00', 'a', 1, '2024-09-12 15:39:18', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(101, 70, 82, 10, '35566.00', '0.00', '0.00', '355660.00', 'a', 1, '2024-09-13 12:26:50', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(102, 71, 85, 1, '4800.00', '0.00', '0.00', '4800.00', 'a', 1, '2024-09-13 20:47:06', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(103, 71, 84, 2, '4400.00', '0.00', '0.00', '8800.00', 'a', 1, '2024-09-13 20:47:06', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(104, 72, 86, 100, '13.00', '0.00', '0.00', '1300.00', 'a', 1, '2024-09-14 21:38:17', NULL, NULL, NULL, NULL, '178.153.54.139', 1),
(105, 73, 90, 12, '10000.00', '0.00', '0.00', '120000.00', 'a', 1, '2024-09-17 17:14:49', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(106, 74, 91, 280, '3600.00', '0.00', '0.00', '1008000.00', 'a', 1, '2024-09-22 13:24:37', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(107, 75, 91, 2, '3600.00', '0.00', '0.00', '7200.00', 'a', 1, '2024-09-22 14:35:21', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(108, 76, 92, 5000, '100.00', '0.00', '0.00', '500000.00', 'a', 1, '2024-09-26 12:09:30', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(109, 77, 93, 5000, '100.00', '0.00', '0.00', '500000.00', 'a', 1, '2024-09-26 14:45:02', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(110, 78, 99, 100, '100.00', '0.00', '0.00', '10000.00', 'a', 1, '2024-09-28 15:44:59', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(111, 78, 98, 100, '200.00', '0.00', '0.00', '20000.00', 'a', 1, '2024-09-28 15:44:59', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(112, 78, 97, 100, '300.00', '0.00', '0.00', '30000.00', 'a', 1, '2024-09-28 15:44:59', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(113, 78, 96, 1000, '300.00', '0.00', '0.00', '300000.00', 'a', 1, '2024-09-28 15:44:59', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(114, 79, 83, 600, '58500.00', '0.00', '0.00', '35100000.00', 'a', 1, '2024-09-28 17:08:10', NULL, NULL, NULL, NULL, '103.159.73.102', 6),
(115, 80, 100, 50000, '45.00', '0.00', '0.00', '2250000.00', 'a', 1, '2024-09-29 13:45:45', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(116, 81, 92, 22222, '100.00', '0.00', '0.00', '2222200.00', 'a', 1, '2024-09-29 15:43:21', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(117, 81, 95, 500000, '125.00', '0.00', '0.00', '62500000.00', 'a', 1, '2024-09-29 15:43:21', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(118, 81, 93, 45646, '100.00', '0.00', '0.00', '4564600.00', 'a', 1, '2024-09-29 15:43:21', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(119, 82, 103, 100, '32000.00', '0.00', '0.00', '3200000.00', 'a', 1, '2024-10-02 12:11:27', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(120, 83, 104, 5, '500.00', '0.00', '0.00', '2500.00', 'a', 1, '2024-10-04 00:00:59', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(121, 84, 104, 5, '600.00', '0.00', '0.00', '3000.00', 'a', 1, '2024-10-04 00:28:33', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(122, 85, 104, 2, '200.00', '0.00', '0.00', '400.00', 'a', 1, '2024-10-05 13:17:20', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(123, 86, 106, 60, '190.00', '0.00', '0.00', '11400.00', 'a', 1, '2024-10-06 12:51:21', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(124, 86, 105, 60, '230.00', '0.00', '0.00', '13800.00', 'a', 1, '2024-10-06 12:51:21', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(125, 87, 106, 240, '190.00', '0.00', '0.00', '45600.00', 'a', 1, '2024-10-06 13:40:27', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(126, 87, 105, 240, '230.00', '0.00', '0.00', '55200.00', 'a', 1, '2024-10-06 13:40:27', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(127, 88, 108, 1200, '38.00', '0.00', '0.00', '45600.00', 'a', 1, '2024-10-07 11:57:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(128, 88, 107, 1200, '48.00', '0.00', '0.00', '57600.00', 'a', 1, '2024-10-07 11:57:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(129, 89, 109, 100, '96.00', '0.00', '0.00', '9600.00', 'a', 1, '2024-10-07 13:55:17', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(130, 90, 110, 100, '1050.00', '0.00', '0.00', '105000.00', 'a', 1, '2024-10-07 19:15:23', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(131, 91, 110, 50, '1050.00', '0.00', '0.00', '52500.00', 'a', 1, '2024-10-08 12:20:02', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(132, 92, 112, 56, '7.00', '0.00', '0.00', '392.00', 'a', 1, '2024-10-18 20:06:05', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(133, 92, 111, 100, '7.50', '0.00', '0.00', '750.00', 'a', 1, '2024-10-18 20:06:05', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(134, 93, 113, 200, '1200.00', '0.00', '0.00', '240000.00', 'a', 1, '2024-10-19 14:05:08', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(135, 94, 114, 5000, '400.00', '0.00', '0.00', '2000000.00', 'a', 1, '2024-10-19 15:49:11', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(136, 95, 115, 100, '30.00', '0.00', '0.00', '3000.00', 'a', 1, '2024-10-20 12:23:53', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(137, 95, 116, 100, '45.00', '0.00', '0.00', '4500.00', 'a', 1, '2024-10-20 12:23:53', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(138, 96, 117, 600, '495.00', '0.00', '0.00', '297000.00', 'a', 1, '2024-10-21 16:41:09', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(139, 97, 118, 5000, '75.00', '0.00', '0.00', '375000.00', 'a', 17, '2024-10-22 14:03:25', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(140, 98, 119, 100, '9.00', '0.00', '0.00', '900.00', 'a', 1, '2024-10-23 13:10:38', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(141, 99, 119, 10, '9.00', '0.00', '0.00', '90.00', 'a', 1, '2024-10-23 13:14:38', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(142, 100, 121, 200, '300.00', '0.00', '0.00', '60000.00', 'a', 1, '2024-10-23 13:20:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(143, 100, 120, 200, '300.00', '0.00', '0.00', '60000.00', 'a', 1, '2024-10-23 13:20:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(144, 101, 121, 100, '300.00', '0.00', '0.00', '30000.00', 'a', 1, '2024-10-24 12:35:23', NULL, NULL, NULL, NULL, '103.134.61.23', 1),
(145, 101, 120, 100, '300.00', '0.00', '0.00', '30000.00', 'a', 1, '2024-10-24 12:35:23', NULL, NULL, NULL, NULL, '103.134.61.23', 1),
(146, 102, 121, 100, '300.00', '0.00', '0.00', '30000.00', 'a', 1, '2024-10-24 17:41:05', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(147, 102, 119, 10, '9.00', '0.00', '0.00', '90.00', 'a', 1, '2024-10-24 17:41:05', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(148, 103, 112, 500, '7.50', '0.00', '0.00', '3750.00', 'a', 1, '2024-10-25 17:49:20', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(149, 103, 122, 250, '8.00', '0.00', '0.00', '2000.00', 'a', 1, '2024-10-25 17:49:20', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(150, 103, 123, 200, '8.00', '0.00', '0.00', '1600.00', 'a', 1, '2024-10-25 17:49:20', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(151, 103, 111, 450.7, '7.50', '0.00', '0.00', '3380.25', 'a', 1, '2024-10-25 17:49:20', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(152, 104, 125, 200, '8.75', '0.00', '0.00', '1750.00', 'a', 1, '2024-10-25 18:05:45', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(153, 105, 116, 100, '45.00', '0.00', '0.00', '4500.00', 'a', 1, '2024-10-26 17:19:26', NULL, NULL, NULL, NULL, '43.245.140.178', 1),
(154, 106, 119, 100, '9.00', '0.00', '0.00', '900.00', 'a', 1, '2024-10-26 17:25:07', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(157, 107, 120, 3, '300.00', '0.00', '0.00', '900.00', 'a', NULL, NULL, 18, '2024-10-28 12:17:41', NULL, NULL, '103.142.69.56', 11),
(158, 107, 121, 2, '300.00', '0.00', '0.00', '600.00', 'a', NULL, NULL, 18, '2024-10-28 12:17:41', NULL, NULL, '103.142.69.56', 11),
(159, 108, 120, 2, '300.00', '0.00', '0.00', '600.00', 'a', 18, '2024-10-28 12:21:38', NULL, NULL, NULL, NULL, '103.142.69.56', 11),
(160, 109, 123, 10000, '8.00', '0.00', '0.00', '80000.00', 'a', 1, '2024-10-29 15:55:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(161, 109, 122, 500, '8.00', '0.00', '0.00', '4000.00', 'a', 1, '2024-10-29 15:55:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(162, 110, 126, 100, '500.00', '0.00', '0.00', '50000.00', 'a', 1, '2024-10-30 13:32:54', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(163, 111, 115, 100, '30.00', '0.00', '0.00', '3000.00', 'a', 1, '2024-10-31 13:04:02', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(164, 112, 127, 20, '1000.00', '0.00', '0.00', '20000.00', 'a', 1, '2024-10-31 19:02:18', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(165, 113, 124, 1, '5000.00', '0.00', '0.00', '5000.00', 'a', 1, '2024-11-01 15:15:54', NULL, NULL, NULL, NULL, '103.204.210.175', 7),
(166, 114, 127, 1, '1000.00', '0.00', '0.00', '1000.00', 'a', 1, '2024-11-02 07:50:33', NULL, NULL, NULL, NULL, '37.111.212.146', 1),
(167, 115, 131, 8064, '16.15', '0.00', '0.00', '130233.60', 'a', 1, '2024-11-02 13:36:23', NULL, NULL, NULL, NULL, '202.134.10.138', 1),
(168, 116, 132, 100, '32.60', '0.00', '0.00', '3260.00', 'a', 1, '2024-11-02 13:37:16', NULL, NULL, NULL, NULL, '103.159.73.74', 12),
(169, 117, 133, 20, '500.00', '0.00', '0.00', '10000.00', 'a', 1, '2024-11-03 09:45:16', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(170, 118, 133, 2, '500.00', '0.00', '0.00', '1000.00', 'a', 1, '2024-11-03 09:48:52', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(171, 119, 134, 1, '50000.00', '0.00', '0.00', '50000.00', 'a', 20, '2024-11-03 14:32:59', NULL, NULL, NULL, NULL, '114.130.157.23', 1),
(172, 120, 135, 50, '40.00', '0.00', '0.00', '2000.00', 'a', 1, '2024-11-05 20:22:05', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(173, 121, 131, 100, '16.15', '0.00', '0.00', '1615.00', 'a', 1, '2024-11-11 00:01:02', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(174, 121, 133, 12, '500.00', '0.00', '0.00', '6000.00', 'a', 1, '2024-11-11 00:01:02', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(175, 122, 138, 144, '80.00', '0.00', '0.00', '11520.00', 'a', 1, '2024-11-12 12:23:59', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(176, 122, 139, 108, '45.00', '0.00', '0.00', '4860.00', 'a', 1, '2024-11-12 12:23:59', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(177, 122, 140, 60, '100.00', '0.00', '0.00', '6000.00', 'a', 1, '2024-11-12 12:23:59', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(178, 122, 137, 144, '76.00', '0.00', '0.00', '10944.00', 'a', 1, '2024-11-12 12:23:59', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(179, 123, 141, 100, '10000.00', '0.00', '0.00', '1000000.00', 'a', 1, '2024-11-12 13:37:25', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(180, 124, 141, 500, '10000.00', '0.00', '0.00', '5000000.00', 'a', 1, '2024-11-22 18:51:45', NULL, NULL, NULL, NULL, '::1', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_master`
--

CREATE TABLE `tbl_purchase_master` (
  `PurchaseMaster_SlNo` int(11) NOT NULL,
  `Supplier_SlNo` int(11) DEFAULT NULL,
  `supplierType` varchar(20) NOT NULL,
  `supplierName` varchar(191) DEFAULT NULL,
  `supplierMobile` varchar(15) DEFAULT NULL,
  `supplierAddress` varchar(255) DEFAULT NULL,
  `Employee_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `PurchaseMaster_OrderDate` date NOT NULL,
  `PurchaseMaster_PurchaseFor` varchar(50) NOT NULL,
  `PurchaseMaster_Description` longtext NOT NULL,
  `PurchaseMaster_TotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DiscountAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_Tax` decimal(18,2) NOT NULL,
  `PurchaseMaster_Freight` decimal(18,2) NOT NULL,
  `PurchaseMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_PaidAmount` decimal(18,2) NOT NULL,
  `PurchaseMaster_DueAmount` decimal(18,2) NOT NULL,
  `previous_due` float DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_master`
--

INSERT INTO `tbl_purchase_master` (`PurchaseMaster_SlNo`, `Supplier_SlNo`, `supplierType`, `supplierName`, `supplierMobile`, `supplierAddress`, `Employee_SlNo`, `PurchaseMaster_InvoiceNo`, `PurchaseMaster_OrderDate`, `PurchaseMaster_PurchaseFor`, `PurchaseMaster_Description`, `PurchaseMaster_TotalAmount`, `PurchaseMaster_DiscountAmount`, `PurchaseMaster_Tax`, `PurchaseMaster_Freight`, `PurchaseMaster_SubTotalAmount`, `PurchaseMaster_PaidAmount`, `PurchaseMaster_DueAmount`, `previous_due`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, NULL, 'G', 'Cash Supplier', '', '', 0, '24010001', '2024-04-28', '1', '', '14210.00', '100.00', '1210.00', '1000.00', '12100.00', '14210.00', '0.00', 0, 'a', 1, '2024-04-28 16:39:05', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 1, 'retail', NULL, NULL, NULL, 0, '240100002', '2024-04-29', '1', '', '10540.00', '0.00', '0.00', '0.00', '10540.00', '5000.00', '5540.00', 0, 'a', 1, '2024-04-29 15:05:09', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, NULL, 'G', 'Cash Supplier', '', '', 0, '240100003', '2024-05-02', '1', '', '1500.00', '0.00', '0.00', '0.00', '1500.00', '1500.00', '0.00', 0, 'a', 1, '2024-05-02 14:49:56', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(4, 2, 'retail', NULL, NULL, NULL, 0, '240100004', '2024-05-07', '1', '', '2430.00', '0.00', '0.00', '100.00', '2330.00', '1430.00', '1000.00', 0, 'a', 2, '2024-05-07 17:32:21', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(5, 3, 'retail', NULL, NULL, NULL, 0, '240100005', '2024-05-13', '1', '', '55767.00', '0.00', '0.00', '0.00', '55767.00', '55767.00', '0.00', 0, 'a', 1, '2024-05-13 13:40:45', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(6, 4, 'retail', NULL, NULL, NULL, 0, '240100006', '2024-05-15', '1', '', '4280.00', '0.00', '0.00', '0.00', '4280.00', '4280.00', '0.00', 0, 'a', 1, '2024-05-15 00:57:35', NULL, NULL, NULL, NULL, '103.124.251.188', 1),
(7, NULL, 'G', 'Cash Supplier', '', '', 0, '240100007', '2024-05-18', '1', '', '34240.00', '0.00', '0.00', '0.00', '34240.00', '34240.00', '0.00', 0, 'a', 1, '2024-05-18 10:57:27', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(8, 7, 'retail', NULL, NULL, NULL, 0, '240100008', '2024-05-18', '1', '', '310000.00', '0.00', '0.00', '0.00', '310000.00', '20000.00', '290000.00', 0, 'a', 1, '2024-05-18 16:58:42', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(9, NULL, 'G', 'Cash Supplier', 'fdf', '', 0, '240100009', '2024-05-18', '1', '', '5125.00', '0.00', '0.00', '0.00', '5125.00', '5125.00', '0.00', 0, 'a', 1, '2024-05-18 17:58:20', NULL, NULL, NULL, NULL, '103.82.9.15', 1),
(10, 8, 'retail', NULL, NULL, NULL, 0, '240100010', '2024-05-25', '1', '', '390000.00', '500.00', '0.00', '0.00', '390500.00', '300000.00', '90000.00', 0, 'a', 1, '2024-05-25 12:33:37', NULL, NULL, NULL, NULL, '123.200.30.131', 1),
(11, NULL, 'G', 'Cash Supplier', '', '', 0, '240100011', '2024-05-29', '1', '', '21000.00', '0.00', '0.00', '0.00', '21000.00', '21000.00', '0.00', 0, 'a', 1, '2024-05-29 14:07:46', NULL, NULL, NULL, NULL, '5.31.196.206', 1),
(12, 7, 'retail', NULL, NULL, NULL, 0, '240100012', '2024-06-03', '1', '', '1250.00', '0.00', '0.00', '0.00', '1250.00', '290000.00', '-288750.00', 290000, 'a', 1, '2024-06-03 11:23:07', NULL, NULL, NULL, NULL, '103.159.73.250', 1),
(13, NULL, 'G', 'Cash Supplier', '', '', 0, '240100013', '2024-06-03', '1', '', '3300.00', '0.00', '0.00', '0.00', '3300.00', '3300.00', '0.00', 0, 'a', 1, '2024-06-03 17:54:49', NULL, NULL, NULL, NULL, '59.153.16.193', 1),
(14, 10, 'retail', NULL, NULL, NULL, 0, '240100014', '2024-06-04', '1', '', '0.00', '0.00', '0.00', '100.00', '6000000.00', '0.00', '0.00', 600, 'a', 1, '2024-06-04 17:23:22', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(15, 10, 'retail', NULL, NULL, NULL, 0, '240100015', '2024-06-04', '1', '', '6000000.00', '0.00', '0.00', '0.00', '6000000.00', '5000000.00', '1000000.00', 600, 'a', 1, '2024-06-04 17:24:05', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(16, NULL, 'G', 'Cash Supplier', '', '', 0, '240100016', '2024-06-04', '1', '', '8500.00', '0.00', '0.00', '0.00', '8500.00', '8500.00', '0.00', 0, 'a', 1, '2024-06-04 18:17:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(17, NULL, 'G', 'Cash Supplier', '0576277711', 'F', 0, '240100017', '2024-06-05', '1', '', '690.00', '0.00', '90.00', '0.00', '600.00', '690.00', '0.00', 0, 'a', 1, '2024-06-05 15:39:19', NULL, NULL, NULL, NULL, '46.153.213.147', 1),
(18, 10, 'retail', NULL, NULL, NULL, 0, '240100018', '2024-06-05', '1', '', '15000.00', '0.00', '0.00', '0.00', '15000.00', '15000.00', '0.00', 1000600, 'a', 1, '2024-06-05 16:01:56', NULL, NULL, NULL, NULL, '103.179.124.20', 1),
(19, NULL, 'G', 'Cash Supplier', '01', '…', 0, '240100019', '2024-06-08', '1', '', '450000.00', '0.00', '0.00', '0.00', '450000.00', '450000.00', '0.00', 0, 'a', 1, '2024-06-08 13:59:13', NULL, NULL, NULL, NULL, '103.203.93.233', 1),
(20, NULL, 'G', 'k', '01', '.', 0, '24020001', '2024-06-09', '2', '', '450000.00', '0.00', '0.00', '0.00', '450000.00', '450000.00', '0.00', 0, 'a', 1, '2024-06-09 17:26:02', NULL, NULL, NULL, NULL, '103.159.72.85', 2),
(21, 14, 'retail', NULL, NULL, NULL, 0, '240100020', '2024-06-18', '1', 'Site jinaidho', '780000.00', '0.00', '0.00', '0.00', '780000.00', '780000.00', '0.00', 0, 'a', 1, '2024-06-18 03:25:44', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(22, 14, 'retail', NULL, NULL, NULL, 0, '240100021', '2024-06-18', '1', '', '670800.00', '0.00', '0.00', '0.00', '670800.00', '670800.00', '0.00', 0, 'a', 1, '2024-06-18 03:27:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(23, 14, 'retail', NULL, NULL, NULL, 0, '240100022', '2024-06-18', '1', '', '0.00', '0.00', '0.00', '0.00', '62656.00', '0.00', '0.00', 0, 'd', 1, '2024-06-18 03:30:46', NULL, NULL, 1, '2024-06-19 03:13:48', '103.147.166.161', 1),
(24, 14, 'retail', NULL, NULL, NULL, 0, '240100023', '2024-06-18', '1', '', '153546.00', '0.00', '0.00', '0.00', '153546.00', '153546.00', '0.00', 0, 'a', 1, '2024-06-18 03:32:28', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(25, 14, 'retail', NULL, NULL, NULL, 0, '240100024', '2024-06-18', '1', '', '234795.00', '0.00', '0.00', '0.00', '234795.00', '234795.00', '0.00', 0, 'a', 1, '2024-06-18 03:33:56', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(26, 14, 'retail', NULL, NULL, NULL, 0, '240100025', '2024-06-18', '1', '', '83271.00', '0.00', '0.00', '0.00', '83271.00', '83271.00', '0.00', 0, 'a', 1, '2024-06-18 03:35:28', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(27, 14, 'retail', NULL, NULL, NULL, 0, '240100026', '2024-06-18', '1', '', '164688.00', '0.00', '0.00', '0.00', '164688.00', '164688.00', '0.00', 0, 'a', 1, '2024-06-18 03:36:33', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(28, 14, 'retail', NULL, NULL, NULL, 0, '240100027', '2024-06-18', '1', '', '136928.00', '0.00', '0.00', '0.00', '136928.00', '136928.00', '0.00', 0, 'a', 1, '2024-06-18 03:37:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(29, 13, 'retail', NULL, NULL, NULL, 0, '240100028', '2024-06-18', '1', 'Due', '15600000.00', '0.00', '0.00', '0.00', '15600000.00', '0.00', '0.00', 0, 'a', 1, '2024-06-18 05:59:31', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(30, 15, 'retail', NULL, NULL, NULL, 0, '240100029', '2024-06-18', '1', 'Due ', '12870000.00', '0.00', '0.00', '0.00', '12870000.00', '0.00', '12870000.00', 0, 'a', 1, '2024-06-18 06:05:07', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(31, 15, 'retail', NULL, NULL, NULL, 0, '240100030', '2024-06-18', '1', 'Due', '4048000.00', '0.00', '0.00', '0.00', '4048000.00', '0.00', '4048000.00', 12870000, 'a', 1, '2024-06-18 06:07:09', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(32, 16, 'retail', NULL, NULL, NULL, 0, '240100031', '2024-06-19', '1', 'due', '717600.00', '0.00', '0.00', '0.00', '717600.00', '0.00', '717600.00', 1200000, 'a', 1, '2024-06-19 03:02:44', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(33, 14, 'retail', NULL, NULL, NULL, 0, '240100032', '2024-06-19', '1', '', '134922.00', '0.00', '0.00', '0.00', '134922.00', '0.00', '134922.00', 0, 'a', 1, '2024-06-19 03:06:19', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(34, 15, 'retail', NULL, NULL, NULL, 0, '240100033', '2024-06-19', '1', '', '1118205.00', '0.00', '0.00', '0.00', '1118205.00', '0.00', '1118205.00', 16918000, 'a', 1, '2024-06-19 03:08:25', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(35, 12, 'retail', NULL, NULL, NULL, 0, '240100034', '2024-06-19', '1', '', '68376.00', '0.00', '0.00', '0.00', '68376.00', '0.00', '68376.00', 0, 'a', 1, '2024-06-19 03:37:26', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(36, 15, 'retail', NULL, NULL, NULL, 0, '240100035', '2024-06-19', '1', '', '78000.00', '0.00', '0.00', '0.00', '78000.00', '0.00', '78000.00', 18036200, 'a', 1, '2024-06-19 08:56:06', NULL, NULL, NULL, NULL, '114.130.188.55', 1),
(37, 14, 'retail', NULL, NULL, NULL, 0, '240100036', '2024-06-21', '1', '', '111870.00', '0.00', '0.00', '0.00', '111870.00', '0.00', '111870.00', 134922, 'a', 1, '2024-06-21 16:16:43', NULL, NULL, NULL, NULL, '114.130.180.194', 1),
(38, 14, 'retail', NULL, NULL, NULL, 0, '240100037', '2024-06-25', '1', '', '5550.00', '0.00', '0.00', '50.00', '5500.00', '5550.00', '0.00', 246792, 'a', 1, '2024-06-25 11:01:30', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(39, 17, 'retail', NULL, NULL, NULL, 0, '240100038', '2024-06-26', '1', '', '50200.00', '0.00', '0.00', '200.00', '50000.00', '50200.00', '0.00', 5000, 'a', 1, '2024-06-26 12:22:39', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(40, NULL, 'G', 'Cash Supplier', '', '', 0, '240100039', '2024-06-26', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '50000.00', '0.00', 0, 'a', 1, '2024-06-26 16:12:42', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(41, 15, 'retail', NULL, NULL, NULL, 0, '240100040', '2024-06-26', '1', '', '272375.00', '0.00', '0.00', '0.00', '272375.00', '0.00', '272375.00', 18114200, 'a', 1, '2024-06-26 20:39:11', NULL, NULL, NULL, NULL, '114.130.180.140', 1),
(42, 18, 'retail', NULL, NULL, NULL, 0, '24040001', '2024-07-01', '4', '', '1140000.00', '0.00', '0.00', '0.00', '1140000.00', '1140000.00', '0.00', 0, 'a', 5, '2024-07-01 12:38:30', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(43, NULL, 'G', 'Cash Supplier', '', '', 0, '24030001', '2024-07-01', '3', '', '100000.00', '0.00', '0.00', '0.00', '100000.00', '100000.00', '0.00', 0, 'a', 1, '2024-07-01 13:33:05', NULL, NULL, NULL, NULL, '103.120.223.17', 3),
(44, 15, 'retail', NULL, NULL, NULL, 0, '240100041', '2024-07-02', '1', '', '3070920.00', '0.00', '0.00', '0.00', '3070920.00', '3070920.00', '0.00', 18386600, 'a', 1, '2024-07-02 20:35:36', NULL, NULL, NULL, NULL, '27.123.253.58', 1),
(45, NULL, 'G', 'Cash Supplier', '', '', 0, '240100042', '2024-07-06', '1', '', '2400.00', '0.00', '0.00', '0.00', '2400.00', '2400.00', '0.00', 0, 'a', 1, '2024-07-06 18:49:00', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(46, NULL, 'G', 'Cash Supplier', '', '', 0, '240100043', '2024-07-06', '1', '', '4600.00', '0.00', '0.00', '0.00', '4600.00', '4600.00', '0.00', 0, 'a', 1, '2024-07-06 19:27:48', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(47, NULL, 'G', 'Cash Supplier', '', '', 0, '240100044', '2024-07-06', '1', '', '9400.00', '0.00', '0.00', '0.00', '9400.00', '9400.00', '0.00', 0, 'a', 1, '2024-07-06 19:51:05', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(48, NULL, 'G', 'Cash Supplier', '', '', 0, '240100045', '2024-07-06', '1', '', '5088.00', '0.00', '0.00', '0.00', '5088.00', '5088.00', '0.00', 0, 'a', 1, '2024-07-06 19:59:48', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(49, NULL, 'G', 'Cash Supplier', '', '', 0, '240100046', '2024-07-06', '1', '', '4676.00', '0.00', '0.00', '0.00', '4676.00', '4676.00', '0.00', 0, 'a', 1, '2024-07-06 20:28:43', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(50, NULL, 'G', 'Cash Supplier', '', '', 0, '240100047', '2024-07-06', '1', '', '4676.00', '0.00', '0.00', '0.00', '4676.00', '4676.00', '0.00', 0, 'a', 1, '2024-07-06 21:48:37', NULL, NULL, NULL, NULL, '103.25.248.131', 1),
(51, NULL, 'G', 'Cash Supplier', '', '', 0, '240100048', '2024-07-13', '1', '', '730000.00', '0.00', '0.00', '0.00', '730000.00', '730000.00', '0.00', 0, 'a', 1, '2024-07-13 13:00:48', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(52, NULL, 'G', 'Cash Supplier', '', '', 0, '240100049', '2024-08-15', '1', '', '700000.00', '0.00', '0.00', '0.00', '700000.00', '700000.00', '0.00', 0, 'a', 1, '2024-08-15 15:00:36', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(53, NULL, 'G', 'Cash Supplier', '', '', 0, '240100050', '2024-08-25', '1', '', '172500.00', '0.00', '0.00', '0.00', '172500.00', '172500.00', '0.00', 0, 'a', 1, '2024-08-25 20:36:26', NULL, NULL, NULL, NULL, '103.150.64.177', 1),
(54, 10, 'retail', NULL, NULL, NULL, 0, '240100051', '2024-09-04', '1', '', '1420000.00', '0.00', '0.00', '0.00', '1420000.00', '1420000.00', '0.00', 1000600, 'a', 1, '2024-09-04 10:00:25', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(55, NULL, 'G', 'Cash Supplier', '', '', 0, '240100052', '2024-09-04', '1', '', '20000.00', '0.00', '0.00', '0.00', '20000.00', '20000.00', '0.00', 0, 'a', 1, '2024-09-04 10:03:32', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(56, NULL, 'G', 'Cash Supplier', '', '', 0, '240100053', '2024-09-04', '1', '', '20000000.00', '0.00', '0.00', '0.00', '20000000.00', '20000000.00', '0.00', 0, 'a', 1, '2024-09-04 10:16:41', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(57, NULL, 'G', 'Cash Supplier', '', '', 0, '240100054', '2024-09-04', '1', '', '10000000.00', '0.00', '0.00', '0.00', '10000000.00', '10000000.00', '0.00', 0, 'a', 1, '2024-09-04 10:32:07', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(58, NULL, 'G', 'Cash Supplier', '', '', 0, '240100055', '2024-09-04', '1', '', '100000.00', '0.00', '0.00', '0.00', '100000.00', '100000.00', '0.00', 0, 'a', 1, '2024-09-04 10:41:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(59, NULL, 'G', 'Cash Supplier', '', '', 0, '240100056', '2024-09-04', '1', '', '3000.00', '0.00', '0.00', '0.00', '3000.00', '3000.00', '0.00', 0, 'a', 1, '2024-09-04 10:57:39', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(60, NULL, 'G', 'Cash Supplier', '', '', 0, '240100057', '2024-09-04', '1', '', '9000.00', '0.00', '0.00', '0.00', '9000.00', '9000.00', '0.00', 0, 'a', 1, '2024-09-04 11:18:24', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(61, NULL, 'G', 'Cash Supplier', '', '', 0, '240100058', '2024-09-04', '1', '', '104000.00', '0.00', '0.00', '0.00', '104000.00', '104000.00', '0.00', 0, 'a', 1, '2024-09-04 12:59:28', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(62, NULL, 'G', 'Cash Supplier', '', '', 0, '24050001', '2024-09-07', '5', '', '2600.00', '0.00', '0.00', '0.00', '2600.00', '2600.00', '0.00', 0, 'a', 1, '2024-09-07 11:27:35', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(63, 17, 'retail', NULL, NULL, NULL, 0, '240100059', '2024-09-07', '1', '', '200266.32', '0.00', '0.00', '0.00', '200266.32', '200266.32', '0.00', 5000, 'a', 1, '2024-09-07 13:47:38', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(64, 21, 'retail', NULL, NULL, NULL, 0, '240500002', '2024-09-08', '5', '', '1060.00', '0.00', '0.00', '0.00', '1060.00', '0.00', '1060.00', 0, 'a', 1, '2024-09-08 14:53:41', NULL, NULL, NULL, NULL, '113.11.122.205', 5),
(65, 14, 'retail', NULL, NULL, NULL, 0, '240100060', '2024-09-08', '1', '', '1650000.00', '0.00', '0.00', '0.00', '1650000.00', '1650000.00', '0.00', 96792, 'a', 1, '2024-09-08 15:03:01', NULL, NULL, NULL, NULL, '103.136.1.58', 1),
(66, 22, 'retail', NULL, NULL, NULL, 0, '240500003', '2024-09-08', '5', '', '1331.60', '0.00', '0.00', '0.00', '1331.60', '1331.60', '0.00', 0, 'a', 8, '2024-09-08 20:40:08', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(67, NULL, 'G', 'Cash Supplier', '0', '0', 0, '24060001', '2024-09-09', '6', '', '163740.00', '0.00', '0.00', '0.00', '163740.00', '163740.00', '0.00', 0, 'a', 8, '2024-09-09 17:02:57', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(68, 15, 'retail', NULL, NULL, NULL, 0, '240100061', '2024-09-10', '1', '', '585000.00', '0.00', '0.00', '0.00', '585000.00', '585000.00', '0.00', 18386600, 'a', 1, '2024-09-10 11:54:04', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(69, NULL, 'G', 'Cash Supplier', '', '', 0, '240100062', '2024-09-12', '1', '', '770610.00', '0.00', '0.00', '0.00', '770610.00', '770610.00', '0.00', 0, 'a', 1, '2024-09-12 15:39:18', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(70, 23, 'retail', NULL, NULL, NULL, 0, '240600002', '2024-09-13', '6', '', '355660.00', '0.00', '0.00', '0.00', '355660.00', '355660.00', '0.00', 0, 'a', 1, '2024-09-13 12:26:50', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(71, 23, 'retail', NULL, NULL, NULL, 0, '240600003', '2024-09-13', '6', '', '13600.00', '0.00', '0.00', '0.00', '13600.00', '13600.00', '0.00', 0, 'a', 1, '2024-09-13 20:47:06', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(72, NULL, 'G', 'AL MAHI LABIB TRADING & CONTRACTING', '', 'INDUSTRIES', 0, '240100063', '2024-09-14', '1', '', '1300.00', '0.00', '0.00', '0.00', '1300.00', '1300.00', '0.00', 0, 'a', 1, '2024-09-14 21:38:17', NULL, NULL, NULL, NULL, '178.153.54.139', 1),
(73, 13, 'retail', NULL, NULL, NULL, 0, '240100064', '2024-09-17', '1', '', '120000.00', '0.00', '0.00', '0.00', '120000.00', '120000.00', '0.00', 15243000, 'a', 1, '2024-09-17 17:14:49', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(74, 25, 'retail', NULL, NULL, NULL, 0, '240100065', '2024-09-22', '1', '', '1008000.00', '0.00', '0.00', '0.00', '1008000.00', '1008000.00', '0.00', 0, 'a', 1, '2024-09-22 13:24:37', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(75, NULL, 'G', 'Cash Supplier', '', '', 0, '240100066', '2024-09-22', '1', '', '7200.00', '0.00', '0.00', '0.00', '7200.00', '7200.00', '0.00', 0, 'a', 1, '2024-09-22 14:35:21', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(76, 26, 'retail', NULL, NULL, NULL, 0, '240100067', '2024-09-26', '1', 'nothing', '500000.00', '0.00', '0.00', '0.00', '500000.00', '500000.00', '0.00', 0, 'a', 1, '2024-09-26 12:09:30', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(77, 26, 'retail', NULL, NULL, NULL, 0, '240100068', '2024-09-26', '1', '', '500000.00', '0.00', '0.00', '0.00', '500000.00', '500000.00', '0.00', 0, 'a', 1, '2024-09-26 14:45:02', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(78, 0, 'retail', NULL, NULL, NULL, 0, '240100069', '2024-09-28', '1', '', '360000.00', '0.00', '0.00', '0.00', '360000.00', '360000.00', '0.00', 0, 'a', 1, '2024-09-28 15:44:59', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(79, 27, 'retail', NULL, NULL, NULL, 0, '240600004', '2024-09-28', '6', '', '35100000.00', '0.00', '0.00', '0.00', '35100000.00', '35100000.00', '0.00', 0, 'a', 1, '2024-09-28 17:08:10', NULL, NULL, NULL, NULL, '103.159.73.102', 6),
(80, 28, 'retail', NULL, NULL, NULL, 0, '240100070', '2024-09-29', '1', '', '2250000.00', '0.00', '0.00', '0.00', '2250000.00', '2250000.00', '0.00', 0, 'a', 1, '2024-09-29 13:45:45', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(81, 29, 'retail', NULL, NULL, NULL, 0, '240100071', '2024-09-29', '1', '', '69286800.00', '0.00', '0.00', '0.00', '69286800.00', '69286800.00', '0.00', 0, 'a', 1, '2024-09-29 15:43:21', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(82, 31, 'retail', NULL, NULL, NULL, 0, '240100072', '2024-10-02', '1', '', '3200000.00', '0.00', '0.00', '0.00', '3200000.00', '3200000.00', '0.00', 0, 'a', 1, '2024-10-02 12:11:27', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(83, 0, 'retail', NULL, NULL, NULL, 0, '240100073', '2024-10-03', '1', '', '2500.00', '0.00', '0.00', '0.00', '2500.00', '2500.00', '0.00', 0, 'a', 1, '2024-10-04 00:00:59', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(84, NULL, 'G', 'Cash Supplier', '', '', 0, '240100074', '2024-10-04', '1', '', '3000.00', '0.00', '0.00', '0.00', '3000.00', '3000.00', '0.00', 0, 'a', 1, '2024-10-04 00:28:33', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(85, NULL, 'G', 'Cash Supplier', '', '', 0, '240100075', '2024-10-05', '1', '', '440.00', '0.00', '0.00', '40.00', '400.00', '440.00', '0.00', 0, 'a', 1, '2024-10-05 13:17:20', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(86, NULL, 'G', 'Cash Supplier', '0171122334455', '131/2 BCC ROAD', 0, '240100076', '2024-10-06', '1', '', '25200.00', '0.00', '0.00', '0.00', '25200.00', '25200.00', '0.00', 0, 'a', 1, '2024-10-06 12:51:21', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(87, 30, 'retail', NULL, NULL, NULL, 0, '240100077', '2024-10-06', '1', '', '100800.00', '0.00', '0.00', '0.00', '100800.00', '0.00', '100800.00', 0, 'a', 1, '2024-10-06 13:40:27', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(88, NULL, 'G', 'Cash Supplier', '', '', 0, '240100078', '2024-10-07', '1', '', '103280.00', '0.00', '0.00', '80.00', '103200.00', '103280.00', '0.00', 0, 'a', 1, '2024-10-07 11:57:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(89, NULL, 'G', 'Cash Supplier', '', '', 0, '240100079', '2024-10-07', '1', '', '9600.00', '0.00', '0.00', '0.00', '9600.00', '9600.00', '0.00', 0, 'a', 1, '2024-10-07 13:55:17', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(90, NULL, 'G', 'Cash Supplier', '', '', 0, '240100080', '2024-10-07', '1', '', '105000.00', '0.00', '0.00', '0.00', '105000.00', '105000.00', '0.00', 0, 'a', 1, '2024-10-07 19:15:23', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(91, NULL, 'G', 'Cash Supplier', '', '', 0, '240100081', '2024-10-08', '1', '', '52500.00', '0.00', '0.00', '0.00', '52500.00', '52500.00', '0.00', 0, 'a', 1, '2024-10-08 12:20:02', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(92, 30, 'retail', NULL, NULL, NULL, 0, '240100082', '2024-10-18', '1', '', '1142.00', '0.00', '0.00', '0.00', '1142.00', '1142.00', '0.00', 100800, 'a', 1, '2024-10-18 20:06:05', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(93, NULL, 'G', 'Cash Supplier', '', '', 0, '240100083', '2024-10-19', '1', '', '240000.00', '0.00', '0.00', '0.00', '240000.00', '240000.00', '0.00', 0, 'a', 1, '2024-10-19 14:05:08', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(94, 16, 'retail', NULL, NULL, NULL, 0, '240100084', '2024-10-19', '1', '', '2000000.00', '0.00', '0.00', '0.00', '2000000.00', '2000000.00', '0.00', 1917600, 'a', 1, '2024-10-19 15:49:11', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(95, 23, 'retail', NULL, NULL, NULL, 0, '240600005', '2024-10-20', '6', '', '7500.00', '0.00', '0.00', '0.00', '7500.00', '7500.00', '0.00', 0, 'a', 1, '2024-10-20 12:23:53', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(96, 32, 'retail', NULL, NULL, NULL, 0, '240100085', '2024-10-21', '1', '', '297000.00', '0.00', '0.00', '0.00', '297000.00', '297000.00', '0.00', 0, 'a', 1, '2024-10-21 16:41:09', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(97, 33, 'retail', NULL, NULL, NULL, 0, '240100086', '2022-02-24', '1', '', '375000.00', '0.00', '0.00', '0.00', '375000.00', '375000.00', '0.00', 0, 'a', 17, '2024-10-22 14:03:25', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(98, NULL, 'G', 'Cash Supplier', '', '', 0, '240100087', '2024-10-23', '1', '', '900.00', '0.00', '0.00', '0.00', '900.00', '900.00', '0.00', 0, 'a', 1, '2024-10-23 13:10:38', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(99, NULL, 'G', 'Cash Supplier', '', '', 0, '240100088', '2024-10-23', '1', '', '90.00', '0.00', '0.00', '0.00', '90.00', '90.00', '0.00', 0, 'a', 1, '2024-10-23 13:14:38', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(100, 34, 'retail', NULL, NULL, NULL, 0, '240100089', '2024-10-23', '1', '', '120000.00', '0.00', '0.00', '0.00', '120000.00', '120000.00', '0.00', 0, 'a', 1, '2024-10-23 13:20:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(101, 34, 'retail', NULL, NULL, NULL, 0, '240100090', '2024-10-24', '1', '', '60000.00', '0.00', '0.00', '0.00', '60000.00', '20000.00', '40000.00', 0, 'a', 1, '2024-10-24 12:35:23', NULL, NULL, NULL, NULL, '103.134.61.23', 1),
(102, 34, 'retail', NULL, NULL, NULL, 0, '240100091', '2024-10-24', '1', '', '30090.00', '0.00', '0.00', '0.00', '30090.00', '30090.00', '0.00', 20000, 'a', 1, '2024-10-24 17:41:05', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(103, 28, 'retail', NULL, NULL, NULL, 0, '240100092', '2024-10-25', '1', '', '10730.25', '0.00', '0.00', '0.00', '10730.25', '10730.25', '0.00', 0, 'a', 1, '2024-10-25 17:49:20', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(104, NULL, 'G', 'Cash Supplier', '', '', 0, '240100093', '2024-10-25', '1', '', '1750.00', '0.00', '0.00', '0.00', '1750.00', '1750.00', '0.00', 0, 'a', 1, '2024-10-25 18:05:45', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(105, NULL, 'G', 'Cash Supplier', '', '', 0, '240100094', '2024-10-26', '1', '', '4500.00', '0.00', '0.00', '0.00', '4500.00', '4500.00', '0.00', 0, 'a', 1, '2024-10-26 17:19:26', NULL, NULL, NULL, NULL, '43.245.140.178', 1),
(106, NULL, 'G', 'Cash Supplier', '', '', 0, '24090001', '2024-10-26', '9', '', '900.00', '0.00', '0.00', '0.00', '900.00', '900.00', '0.00', 0, 'a', 1, '2024-10-26 17:25:07', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(107, NULL, 'G', 'Cash Supplier', '', '', 0, '240110001', '2024-10-28', '11', '', '1490.00', '10.00', '0.00', '0.00', '1500.00', '1490.00', '0.00', 0, 'a', 18, '2024-10-28 12:16:09', 18, '2024-10-28 12:17:41', NULL, NULL, '103.142.69.56', 11),
(108, NULL, 'G', 'Cash Supplier', '', '', 0, '2401100002', '2024-10-28', '11', '', '505.00', '100.00', '5.00', '0.00', '600.00', '505.00', '0.00', 0, 'a', 18, '2024-10-28 12:21:38', NULL, NULL, NULL, NULL, '103.142.69.56', 11),
(109, 35, 'retail', NULL, NULL, NULL, 0, '240100095', '2024-10-29', '1', '', '84000.00', '0.00', '0.00', '0.00', '84000.00', '84000.00', '0.00', 0, 'a', 1, '2024-10-29 15:55:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(110, NULL, 'G', 'Cash Supplier', '', '', 0, '240100096', '2024-10-30', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '50000.00', '0.00', 0, 'a', 1, '2024-10-30 13:32:54', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(111, 25, 'retail', NULL, NULL, NULL, 0, '240100097', '2024-10-31', '1', '', '3000.00', '0.00', '0.00', '0.00', '3000.00', '3000.00', '0.00', -72000, 'a', 1, '2024-10-31 13:04:02', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(112, NULL, 'G', 'Cash Supplier', '', '', 0, '240100098', '2024-10-31', '1', '', '20500.00', '0.00', '0.00', '500.00', '20000.00', '20500.00', '0.00', 0, 'a', 1, '2024-10-31 19:02:18', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(113, NULL, 'G', 'Rahamat ', '01715280004', 'Narail ', 0, '24070001', '2024-11-01', '7', '', '5141.70', '10.00', '149.70', '2.00', '5000.00', '5141.70', '0.00', 0, 'a', 1, '2024-11-01 15:15:54', NULL, NULL, NULL, NULL, '103.204.210.175', 7),
(114, NULL, 'G', 'Cash Supplier', '', '', 0, '240100099', '2024-11-02', '1', '', '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', 0, 'a', 1, '2024-11-02 07:50:33', NULL, NULL, NULL, NULL, '37.111.212.146', 1),
(115, 36, 'retail', NULL, NULL, NULL, 0, '240100100', '2024-11-02', '1', '', '0.00', '0.00', '0.00', '0.00', '130233.60', '0.00', '0.00', 0, 'a', 1, '2024-11-02 13:36:23', NULL, NULL, NULL, NULL, '202.134.10.138', 1),
(116, 37, 'retail', NULL, NULL, NULL, 0, '240120001', '2024-11-02', '12', '', '3260.00', '0.00', '0.00', '0.00', '3260.00', '3260.00', '0.00', 0, 'a', 1, '2024-11-02 13:37:16', NULL, NULL, NULL, NULL, '103.159.73.74', 12),
(117, NULL, 'G', 'Cash Supplier', '', '', 0, '240130001', '2024-11-03', '13', '', '10000.00', '0.00', '0.00', '0.00', '10000.00', '10000.00', '0.00', 0, 'a', 1, '2024-11-03 09:45:16', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(118, NULL, 'G', 'Rahmat Khan', '01715280004', '', 0, '2401300002', '2024-11-03', '13', '', '0.00', '100.00', '0.00', '0.00', '1000.00', '0.00', '0.00', 0, 'a', 1, '2024-11-03 09:48:52', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(119, 36, 'retail', NULL, NULL, NULL, 0, '240100101', '2024-11-03', '1', '', '50000.00', '0.00', '0.00', '0.00', '50000.00', '50000.00', '0.00', 0, 'a', 20, '2024-11-03 14:32:59', NULL, NULL, NULL, NULL, '114.130.157.23', 1),
(120, NULL, 'G', 'Cash Supplier', '01713800439', '', 0, '240100102', '2024-11-05', '1', '', '2000.00', '0.00', '0.00', '0.00', '2000.00', '2000.00', '0.00', 0, 'a', 1, '2024-11-05 20:22:05', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(121, 35, 'retail', NULL, NULL, NULL, 0, '240100103', '2024-11-10', '1', '', '7615.00', '0.00', '0.00', '0.00', '7615.00', '7615.00', '0.00', 0, 'a', 1, '2024-11-11 00:01:02', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(122, 38, 'retail', NULL, NULL, NULL, 0, '240100104', '2024-11-12', '1', '', '33324.00', '0.00', '0.00', '0.00', '33324.00', '0.00', '33324.00', 0, 'a', 1, '2024-11-12 12:23:59', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(123, 39, 'retail', NULL, NULL, NULL, 0, '240100105', '2024-11-12', '1', '', '1000000.00', '0.00', '0.00', '0.00', '1000000.00', '1000000.00', '0.00', 20000, 'a', 1, '2024-11-12 13:37:25', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(124, 40, 'retail', NULL, NULL, NULL, 0, '240140001', '2024-11-22', '14', 'Testing Notes', '5000000.00', '0.00', '0.00', '0.00', '5000000.00', '5000000.00', '0.00', 0, 'a', 1, '2024-11-22 18:51:45', NULL, NULL, NULL, NULL, '::1', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_return`
--

CREATE TABLE `tbl_purchase_return` (
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseMaster_InvoiceNo` varchar(50) NOT NULL,
  `Supplier_IDdNo` int(11) DEFAULT NULL,
  `PurchaseReturn_ReturnDate` date NOT NULL,
  `PurchaseReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `PurchaseReturn_Description` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_return`
--

INSERT INTO `tbl_purchase_return` (`PurchaseReturn_SlNo`, `PurchaseMaster_InvoiceNo`, `Supplier_IDdNo`, `PurchaseReturn_ReturnDate`, `PurchaseReturn_ReturnAmount`, `PurchaseReturn_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '24010001', NULL, '2024-04-28', '500.00', '', 'a', 1, '2024-04-28 16:40:44', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, '240100065', 25, '2024-09-22', '72000.00', 'jiwrjtr', 'a', 1, '2024-09-22 14:39:13', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(3, '240100099', NULL, '2024-11-02', '1000.00', '', 'a', 1, '2024-11-02 07:58:18', NULL, NULL, NULL, NULL, '37.111.212.146', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_return_details`
--

CREATE TABLE `tbl_purchase_return_details` (
  `PurchaseReturnDetails_SlNo` int(11) NOT NULL,
  `PurchaseReturn_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `PurchaseReturnDetails_ReturnQuantity` float NOT NULL,
  `PurchaseReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(100) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchase_return_details`
--

INSERT INTO `tbl_purchase_return_details` (`PurchaseReturnDetails_SlNo`, `PurchaseReturn_SlNo`, `PurchaseReturnDetailsProduct_SlNo`, `PurchaseReturnDetails_ReturnQuantity`, `PurchaseReturnDetails_ReturnAmount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 3, 5, '500.00', 'a', 1, '2024-04-28 16:40:44', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 2, 91, 20, '72000.00', 'a', 1, '2024-09-22 14:39:13', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(3, 3, 127, 1, '1000.00', 'a', 1, '2024-11-02 07:58:18', NULL, NULL, NULL, NULL, '37.111.212.146', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_details`
--

CREATE TABLE `tbl_quotation_details` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_Freight` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quotation_details`
--

INSERT INTO `tbl_quotation_details` (`SaleDetails_SlNo`, `SaleMaster_IDNo`, `Product_IDNo`, `SaleDetails_TotalQuantity`, `SaleDetails_Rate`, `SaleDetails_Discount`, `SaleDetails_Tax`, `SaleDetails_Freight`, `SaleDetails_TotalAmount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 5, 6, '100.00', '0.00', '0.00', '0.00', '600.00', 'a', 1, '2024-05-18 10:35:58', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(3, 2, 21, 2, '200.00', '0.00', '0.00', '0.00', '400.00', 'a', 1, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, '', 1),
(4, 3, 20, 1, '500.00', '0.00', '0.00', '0.00', '500.00', 'a', 1, '2024-05-22 12:59:27', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(5, 3, 19, 1, '250.00', '0.00', '0.00', '0.00', '250.00', 'a', 1, '2024-05-22 12:59:27', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(6, 4, 29, 12, '800.00', '0.00', '0.00', '0.00', '9600.00', 'a', 1, '2024-06-29 11:24:57', NULL, NULL, NULL, NULL, '103.153.155.12', 1),
(7, 4, 37, 12, '95.00', '0.00', '0.00', '0.00', '1140.00', 'a', 1, '2024-06-29 11:24:57', NULL, NULL, NULL, NULL, '103.153.155.12', 1),
(8, 4, 43, 14, '300.00', '0.00', '0.00', '0.00', '4200.00', 'a', 1, '2024-06-29 11:24:57', NULL, NULL, NULL, NULL, '103.153.155.12', 1),
(9, 5, 54, 9, '271000.00', '0.00', '0.00', '0.00', '2439000.00', 'a', 1, '2024-08-14 14:58:47', NULL, NULL, NULL, NULL, '59.152.5.12', 4),
(10, 6, 64, 10, '12000.00', '0.00', '0.00', '0.00', '120000.00', 'a', 1, '2024-08-14 15:01:11', NULL, NULL, NULL, NULL, '59.152.5.12', 4),
(11, 7, 65, 2, '6000.00', '0.00', '0.00', '0.00', '12000.00', 'a', 1, '2024-08-15 15:23:39', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(12, 7, 69, 3, '21000.00', '0.00', '0.00', '0.00', '63000.00', 'a', 1, '2024-08-15 15:23:39', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(13, 7, 68, 2, '14100.00', '0.00', '0.00', '0.00', '28200.00', 'a', 1, '2024-08-15 15:23:39', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(14, 8, 66, 100, '15000.00', '0.00', '0.00', '0.00', '1500000.00', 'a', 1, '2024-08-31 12:57:41', NULL, NULL, NULL, NULL, '59.152.4.249', 1),
(15, 8, 67, 100, '11500.00', '0.00', '0.00', '0.00', '1150000.00', 'a', 1, '2024-08-31 12:57:41', NULL, NULL, NULL, NULL, '59.152.4.249', 1),
(16, 8, 69, 1000, '120.00', '0.00', '0.00', '0.00', '120000.00', 'a', 1, '2024-08-31 12:57:41', NULL, NULL, NULL, NULL, '59.152.4.249', 1),
(17, 9, 76, 200, '80000.00', '0.00', '0.00', '0.00', '16000000.00', 'a', 1, '2024-09-04 13:12:53', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(18, 10, 64, 1, '12000.00', '0.00', '0.00', '0.00', '12000.00', 'a', 1, '2024-09-04 15:53:00', NULL, NULL, NULL, NULL, '103.7.123.254', 1),
(19, 10, 66, 1, '16000.00', '0.00', '0.00', '0.00', '16000.00', 'a', 1, '2024-09-04 15:53:00', NULL, NULL, NULL, NULL, '103.7.123.254', 1),
(20, 10, 72, 1, '220000.00', '0.00', '0.00', '0.00', '220000.00', 'a', 1, '2024-09-04 15:53:00', NULL, NULL, NULL, NULL, '103.7.123.254', 1),
(21, 10, 75, 1, '40.00', '0.00', '0.00', '0.00', '40.00', 'a', 1, '2024-09-04 15:53:00', NULL, NULL, NULL, NULL, '103.7.123.254', 1),
(22, 11, 83, 2, '10000.00', '0.00', '0.00', '0.00', '20000.00', 'a', 1, '2024-09-12 15:51:55', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(23, 12, 77, 10, '40000.00', '0.00', '0.00', '0.00', '400000.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(24, 12, 75, 9, '40.00', '0.00', '0.00', '0.00', '360.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(25, 12, 70, 9, '150.00', '0.00', '0.00', '0.00', '1350.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(26, 12, 79, 6, '39890.00', '0.00', '0.00', '0.00', '239340.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(27, 12, 82, 3, '46190.00', '0.00', '0.00', '0.00', '138570.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(28, 13, 80, 2, '39590.00', '0.00', '0.00', '0.00', '79180.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(29, 13, 79, 2, '39890.00', '0.00', '0.00', '0.00', '79780.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(30, 13, 78, 1, '33090.00', '0.00', '0.00', '0.00', '33090.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(31, 13, 81, 1, '53890.00', '0.00', '0.00', '0.00', '53890.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(32, 13, 82, 1, '46190.00', '0.00', '0.00', '0.00', '46190.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(33, 14, 82, 10, '46190.00', '0.00', '0.00', '0.00', '461900.00', 'a', 11, '2024-09-13 21:02:01', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(34, 15, 88, 6, '1250.00', '0.00', '0.00', '0.00', '7500.00', 'a', 1, '2024-09-16 19:43:43', NULL, NULL, NULL, NULL, '103.150.64.179', 1),
(35, 15, 89, 6, '1150.00', '0.00', '0.00', '0.00', '6900.00', 'a', 1, '2024-09-16 19:43:43', NULL, NULL, NULL, NULL, '103.150.64.179', 1),
(36, 16, 80, 1, '39590.00', '0.00', '0.00', '0.00', '39590.00', 'a', 1, '2024-09-17 16:29:19', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(37, 16, 84, 1, '6600.00', '0.00', '0.00', '0.00', '6600.00', 'a', 1, '2024-09-17 16:29:19', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(38, 16, 82, 1, '46190.00', '0.00', '0.00', '0.00', '46190.00', 'a', 1, '2024-09-17 16:29:19', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(39, 16, 86, 1, '14.00', '0.00', '0.00', '0.00', '14.00', 'a', 1, '2024-09-17 16:29:19', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(40, 17, 89, 1, '0.00', '0.00', '0.00', '0.00', '0.00', 'a', 1, '2024-09-19 13:47:39', NULL, NULL, NULL, NULL, '37.111.214.137', 6),
(41, 17, 88, 1, '300.00', '0.00', '0.00', '0.00', '300.00', 'a', 1, '2024-09-19 13:47:39', NULL, NULL, NULL, NULL, '37.111.214.137', 6),
(42, 18, 91, 1, '3800.00', '0.00', '0.00', '0.00', '3800.00', 'a', 1, '2024-09-22 15:02:56', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(43, 19, 98, 1, '400.00', '0.00', '0.00', '0.00', '400.00', 'a', 1, '2024-10-02 16:57:59', NULL, NULL, NULL, NULL, '116.58.203.145', 4),
(44, 19, 101, 1, '300.00', '0.00', '0.00', '0.00', '300.00', 'a', 1, '2024-10-02 16:57:59', NULL, NULL, NULL, NULL, '116.58.203.145', 4),
(45, 19, 103, 1, '38000.00', '0.00', '0.00', '0.00', '38000.00', 'a', 1, '2024-10-02 16:57:59', NULL, NULL, NULL, NULL, '116.58.203.145', 4),
(46, 20, 105, 12, '240.00', '0.00', '0.00', '0.00', '2880.00', 'a', 1, '2024-10-06 16:32:29', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(47, 20, 106, 12, '200.00', '0.00', '0.00', '0.00', '2400.00', 'a', 1, '2024-10-06 16:32:29', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(48, 21, 112, 1, '13.00', '0.00', '0.00', '0.00', '13.00', 'a', 1, '2024-10-19 15:40:37', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(49, 21, 113, 1, '2000.00', '0.00', '0.00', '0.00', '2000.00', 'a', 1, '2024-10-19 15:40:37', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(50, 22, 110, 2, '1600.00', '0.00', '0.00', '0.00', '3200.00', 'a', 1, '2024-10-26 17:30:37', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(51, 22, 113, 1, '2000.00', '0.00', '0.00', '0.00', '2000.00', 'a', 1, '2024-10-26 17:30:37', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(52, 22, 114, 3, '600.00', '0.00', '0.00', '0.00', '1800.00', 'a', 1, '2024-10-26 17:30:37', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(53, 22, 117, 2, '505.00', '0.00', '0.00', '0.00', '1010.00', 'a', 1, '2024-10-26 17:30:37', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(54, 23, 125, 1, '600.00', '0.00', '0.00', '0.00', '600.00', 'a', 1, '2024-10-29 14:28:55', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(55, 23, 126, 1, '400.00', '0.00', '0.00', '0.00', '400.00', 'a', 1, '2024-10-29 14:28:55', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(56, 24, 119, 1, '10.00', '0.00', '0.00', '0.00', '10.00', 'a', 1, '2024-10-29 14:33:46', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(57, 25, 132, 1, '35.00', '0.00', '0.00', '0.00', '35.00', 'a', 1, '2024-11-11 14:59:09', NULL, NULL, NULL, NULL, '116.58.205.66', 1),
(58, 25, 134, 1, '52000.00', '0.00', '0.00', '0.00', '52000.00', 'a', 1, '2024-11-11 14:59:09', NULL, NULL, NULL, NULL, '116.58.205.66', 1),
(59, 26, 137, 3, '86.00', '0.00', '0.00', '0.00', '258.00', 'a', 1, '2024-11-12 13:25:56', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(60, 26, 140, 2, '110.00', '0.00', '0.00', '0.00', '220.00', 'a', 1, '2024-11-12 13:25:56', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(61, 26, 139, 10, '55.00', '0.00', '0.00', '0.00', '550.00', 'a', 1, '2024-11-12 13:25:56', NULL, NULL, NULL, NULL, '103.159.73.81', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_master`
--

CREATE TABLE `tbl_quotation_master` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SalseCustomer_IDNo` int(11) DEFAULT NULL,
  `customerType` varchar(20) NOT NULL,
  `SaleMaster_customer_name` varchar(500) DEFAULT NULL,
  `SaleMaster_customer_mobile` varchar(50) DEFAULT NULL,
  `SaleMaster_customer_address` varchar(1000) DEFAULT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` text DEFAULT NULL,
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) NOT NULL,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quotation_master`
--

INSERT INTO `tbl_quotation_master` (`SaleMaster_SlNo`, `SaleMaster_InvoiceNo`, `SalseCustomer_IDNo`, `customerType`, `SaleMaster_customer_name`, `SaleMaster_customer_mobile`, `SaleMaster_customer_address`, `SaleMaster_SaleDate`, `SaleMaster_Description`, `SaleMaster_TotalSaleAmount`, `SaleMaster_TotalDiscountAmount`, `SaleMaster_TaxAmount`, `SaleMaster_Freight`, `SaleMaster_SubTotalAmount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'Q-202400001', NULL, 'G', 'Cash Customer', '', '', '2024-05-18', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', 'a', 1, '2024-05-18 10:35:58', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(2, 'Q-202400002', NULL, 'G', '', '', '', '2024-05-22', NULL, '400.00', '0.00', '0.00', '0.00', '400.00', 'a', 1, '2024-05-22 12:58:25', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(3, 'Q-202400003', NULL, 'G', 'Cash Customer', '', '', '2024-05-22', NULL, '750.00', '0.00', '0.00', '0.00', '750.00', 'a', 1, '2024-05-22 12:59:27', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(4, 'Q-202400004', 19, 'retail', NULL, NULL, NULL, '2024-06-29', NULL, '14940.00', '0.00', '0.00', '0.00', '14940.00', 'a', 1, '2024-06-29 11:24:57', NULL, NULL, NULL, NULL, '103.153.155.12', 1),
(5, 'Q-202400005', NULL, 'G', 'Cash Customer', '', '', '2024-08-14', NULL, '2439000.00', '0.00', '0.00', '0.00', '2439000.00', 'a', 1, '2024-08-14 14:58:47', NULL, NULL, NULL, NULL, '59.152.5.12', 4),
(6, 'Q-202400006', NULL, 'G', 'Lokman', '8996434323', 'Gazipur', '2024-08-14', NULL, '120000.00', '0.00', '0.00', '0.00', '120000.00', 'a', 1, '2024-08-14 15:01:11', NULL, NULL, NULL, NULL, '59.152.5.12', 4),
(7, 'Q-202400007', 29, 'retail', NULL, NULL, NULL, '2024-08-15', NULL, '103200.00', '0.00', '0.00', '0.00', '103200.00', 'a', 1, '2024-08-15 15:23:39', NULL, NULL, NULL, NULL, '103.92.161.17', 1),
(8, 'Q-202400008', 32, 'retail', NULL, NULL, NULL, '2024-08-31', NULL, '2770000.00', '0.00', '0.00', '0.00', '2770000.00', 'a', 1, '2024-08-31 12:57:41', NULL, NULL, NULL, NULL, '59.152.4.249', 1),
(9, 'Q-202400009', NULL, 'G', 'Cash Customer', '', '', '2024-09-04', NULL, '16000000.00', '0.00', '0.00', '0.00', '16000000.00', 'a', 1, '2024-09-04 13:12:53', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(10, 'Q-202400010', 28, 'retail', NULL, NULL, NULL, '2024-09-04', NULL, '248040.00', '0.00', '0.00', '0.00', '248040.00', 'a', 1, '2024-09-04 15:53:00', NULL, NULL, NULL, NULL, '103.7.123.254', 1),
(11, 'Q-202400011', 29, 'retail', NULL, NULL, NULL, '2024-09-12', NULL, '20000.00', '0.00', '0.00', '0.00', '20000.00', 'a', 1, '2024-09-12 15:51:55', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(12, 'Q-202400012', 29, 'retail', NULL, NULL, NULL, '2024-09-12', NULL, '779620.00', '0.00', '0.00', '0.00', '779620.00', 'a', 1, '2024-09-12 19:10:03', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(13, 'Q-202400013', 33, 'wholesale', NULL, NULL, NULL, '2024-09-13', NULL, '224940.10', '67189.90', '0.00', '0.00', '292130.00', 'a', 1, '2024-09-13 12:31:22', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(14, 'Q-202400014', NULL, 'G', 'Cash Customer', '', '', '2024-09-13', NULL, '346425.00', '115475.00', '0.00', '0.00', '461900.00', 'a', 11, '2024-09-13 21:02:01', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(15, 'Q-202400015', NULL, 'G', 'Cash Customer', '0', 'Chakrabti, Kashimpur,Gazipur', '2024-09-16', NULL, '14400.00', '0.00', '0.00', '0.00', '14400.00', 'a', 1, '2024-09-16 19:43:43', NULL, NULL, NULL, NULL, '103.150.64.179', 1),
(16, 'Q-202400016', 26, 'retail', NULL, NULL, NULL, '2024-09-17', NULL, '92394.00', '0.00', '0.00', '0.00', '92394.00', 'a', 1, '2024-09-17 16:29:19', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(17, 'Q-202400017', NULL, 'G', 'Cash Customer', '', '', '2024-09-19', NULL, '300.00', '0.00', '0.00', '0.00', '300.00', 'a', 1, '2024-09-19 13:47:39', NULL, NULL, NULL, NULL, '37.111.214.137', 6),
(18, 'Q-202400018', NULL, 'G', 'Cash Customer', '', '', '2024-09-22', NULL, '3800.00', '0.00', '0.00', '0.00', '3800.00', 'a', 1, '2024-09-22 15:02:56', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(19, 'Q-202400019', 22, 'retail', NULL, NULL, NULL, '2024-10-02', NULL, '38700.00', '0.00', '0.00', '0.00', '38700.00', 'a', 1, '2024-10-02 16:57:59', NULL, NULL, NULL, NULL, '116.58.203.145', 4),
(20, 'Q-202400020', 37, 'wholesale', NULL, NULL, NULL, '2024-10-06', NULL, '5280.00', '0.00', '0.00', '0.00', '5280.00', 'a', 1, '2024-10-06 16:32:29', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(21, 'Q-202400021', 38, 'retail', NULL, NULL, NULL, '2024-10-19', NULL, '2013.00', '0.00', '0.00', '0.00', '2013.00', 'a', 1, '2024-10-19 15:40:37', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(22, 'Q-202400022', NULL, 'G', 'Cash Customer', '', '', '2024-10-26', NULL, '8010.00', '0.00', '0.00', '0.00', '8010.00', 'a', 1, '2024-10-26 17:30:37', NULL, NULL, NULL, NULL, '43.245.140.178', 9),
(23, 'Q-202400023', 45, 'retail', NULL, NULL, NULL, '2024-10-29', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', 'a', 1, '2024-10-29 14:28:55', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(24, 'Q-202400024', 37, 'wholesale', NULL, NULL, NULL, '2024-10-29', NULL, '10.00', '0.00', '0.00', '0.00', '10.00', 'a', 1, '2024-10-29 14:33:46', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(25, 'Q-202400025', 37, 'wholesale', NULL, NULL, NULL, '2024-11-11', NULL, '52035.00', '0.00', '0.00', '0.00', '52035.00', 'a', 1, '2024-11-11 14:59:09', NULL, NULL, NULL, NULL, '116.58.205.66', 1),
(26, 'Q-202400026', 50, 'retail', NULL, NULL, NULL, '2024-11-12', NULL, '1028.00', '0.00', '0.00', '0.00', '1028.00', 'a', 1, '2024-11-12 13:25:56', NULL, NULL, NULL, NULL, '103.159.73.81', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_details`
--

CREATE TABLE `tbl_sale_details` (
  `SaleDetails_SlNo` int(11) NOT NULL,
  `SaleMaster_IDNo` int(11) NOT NULL,
  `Product_IDNo` int(11) NOT NULL,
  `SaleDetails_TotalQuantity` float NOT NULL,
  `Purchase_Rate` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Rate` decimal(18,2) NOT NULL,
  `SaleDetails_Discount` decimal(18,2) NOT NULL,
  `Discount_amount` decimal(18,2) DEFAULT NULL,
  `SaleDetails_Tax` decimal(18,2) NOT NULL,
  `SaleDetails_TotalAmount` decimal(18,2) NOT NULL,
  `is_service` varchar(5) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sale_details`
--

INSERT INTO `tbl_sale_details` (`SaleDetails_SlNo`, `SaleMaster_IDNo`, `Product_IDNo`, `SaleDetails_TotalQuantity`, `Purchase_Rate`, `SaleDetails_Rate`, `SaleDetails_Discount`, `Discount_amount`, `SaleDetails_Tax`, `SaleDetails_TotalAmount`, `is_service`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 1, 2, '50.00', '60.00', '0.00', NULL, '10.00', '120.00', 'false', 'a', 1, '2024-04-28 16:42:24', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 1, 2, 2, '20.00', '30.00', '0.00', NULL, '10.00', '60.00', 'false', 'a', 1, '2024-04-28 16:42:24', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, 1, 3, 2, '100.00', '150.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-04-28 16:42:24', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(4, 2, 3, 1, '100.00', '150.00', '0.00', NULL, '0.00', '150.00', 'false', 'a', 1, '2024-04-29 14:59:54', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(5, 2, 2, 2, '20.00', '30.00', '0.00', NULL, '10.00', '60.00', 'false', 'a', 1, '2024-04-29 14:59:54', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(6, 3, 2, 2, '20.00', '30.00', '0.00', NULL, '10.00', '60.00', 'false', 'a', 1, '2024-04-29 16:55:51', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(7, 3, 1, 2, '50.00', '60.00', '0.00', NULL, '10.00', '120.00', 'false', 'a', 1, '2024-04-29 16:55:51', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(8, 3, 3, 2, '100.00', '150.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-04-29 16:55:51', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(9, 4, 3, 2, '100.00', '150.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-05-02 14:44:17', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(10, 5, 4, 1, '300.00', '330.00', '0.00', NULL, '0.00', '330.00', 'false', 'a', 1, '2024-05-02 14:50:15', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(11, 6, 7, 2, '55.00', '70.00', '0.00', NULL, '0.00', '140.00', 'false', 'a', 1, '2024-05-07 17:37:27', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(12, 6, 6, 1, '85.00', '110.00', '0.00', NULL, '0.00', '110.00', 'false', 'a', 1, '2024-05-07 17:37:27', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(13, 7, 7, 1, '55.00', '70.00', '0.00', NULL, '0.00', '70.00', 'false', 'a', 1, '2024-05-07 18:27:51', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(14, 8, 9, 2, '1655.00', '1750.00', '0.00', NULL, '0.00', '3500.00', 'false', 'a', 1, '2024-05-13 13:53:10', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(15, 8, 8, 2, '1719.00', '1750.00', '0.00', NULL, '0.00', '3500.00', 'false', 'a', 1, '2024-05-13 13:53:10', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(16, 9, 8, 4, '1719.00', '1750.00', '0.00', NULL, '0.00', '7000.00', 'false', 'a', 1, '2024-05-13 13:55:12', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(17, 10, 10, 2, '428.00', '513.00', '0.00', NULL, '0.00', '1026.00', 'false', 'a', 1, '2024-05-15 01:01:31', NULL, NULL, NULL, NULL, '103.124.251.188', 1),
(18, 11, 10, 5, '428.00', '513.00', '0.00', NULL, '0.00', '2565.00', 'false', 'a', 1, '2024-05-16 20:33:00', NULL, NULL, NULL, NULL, '103.144.201.97', 1),
(19, 12, 15, 5, '3000.00', '3500.00', '0.00', NULL, '0.00', '17500.00', 'false', 'a', 1, '2024-05-18 17:00:43', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(20, 12, 14, 10, '5000.00', '6000.00', '0.00', NULL, '0.00', '60000.00', 'false', 'a', 1, '2024-05-18 17:00:43', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(21, 12, 16, 1, '0.00', '500.00', '0.00', NULL, '0.00', '500.00', 'true', 'a', 1, '2024-05-18 17:00:43', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(23, 13, 17, 1, '250.00', '275.00', '0.00', NULL, '0.00', '275.00', 'false', 'a', NULL, NULL, 1, '2024-05-20 14:50:00', NULL, NULL, '103.159.73.254', 1),
(24, 14, 14, 1, '5000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-05-22 11:31:43', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(25, 15, 1, 1, '50.00', '60.00', '0.00', NULL, '10.00', '60.00', 'false', 'a', 1, '2024-05-22 12:39:34', NULL, NULL, NULL, NULL, '103.135.209.240', 1),
(26, 16, 20, 2, '0.00', '500.00', '0.00', NULL, '0.00', '1000.00', 'true', 'a', 1, '2024-05-22 12:42:12', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(27, 16, 21, 1, '0.00', '1000.00', '0.00', NULL, '0.00', '1000.00', 'true', 'a', 1, '2024-05-22 12:42:12', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(28, 17, 20, 1, '0.00', '200.00', '0.00', NULL, '0.00', '200.00', 'true', 'a', 1, '2024-05-22 12:44:07', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(29, 17, 21, 2, '0.00', '100.00', '0.00', NULL, '0.00', '200.00', 'true', 'a', 1, '2024-05-22 12:44:07', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(30, 18, 21, 1, '0.00', '100.00', '0.00', NULL, '0.00', '100.00', 'true', 'a', 1, '2024-05-22 12:50:56', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(31, 19, 21, 1, '0.00', '12.00', '0.00', NULL, '0.00', '12.00', 'true', 'a', 1, '2024-05-22 12:55:05', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(32, 20, 15, 2, '3000.00', '3500.00', '0.00', NULL, '0.00', '7000.00', 'false', 'a', 1, '2024-05-22 16:34:28', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(33, 21, 20, 10, '0.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'true', 'a', 1, '2024-05-25 14:05:27', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(34, 21, 22, 12, '7.10', '120.00', '0.00', NULL, '0.00', '1440.00', 'false', 'a', 1, '2024-05-25 14:05:27', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(35, 22, 22, 1, '7.10', '12000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-05-26 11:56:53', NULL, NULL, NULL, NULL, '103.92.160.197', 1),
(36, 23, 20, 2, '0.00', '300.00', '0.00', NULL, '0.00', '600.00', 'true', 'a', 1, '2024-05-27 13:36:46', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(37, 23, 6, 2, '85.00', '110.00', '0.00', NULL, '0.00', '220.00', 'false', 'a', 1, '2024-05-27 13:36:46', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(38, 24, 8, 2, '1719.00', '1750.00', '0.00', NULL, '0.00', '3500.00', 'false', 'a', 1, '2024-05-27 13:37:49', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(39, 25, 10, 2, '428.00', '513.00', '0.00', NULL, '0.00', '1026.00', 'false', 'a', 1, '2024-05-27 13:45:51', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(40, 25, 8, 1, '1719.00', '1750.00', '0.00', NULL, '0.00', '1750.00', 'false', 'a', 1, '2024-05-27 13:45:51', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(41, 26, 21, 5, '0.00', '656.00', '0.00', NULL, '0.00', '3280.00', 'true', 'a', 1, '2024-05-29 10:39:57', NULL, NULL, NULL, NULL, '5.31.196.206', 1),
(42, 27, 25, 300, '1200.00', '1600.00', '0.00', NULL, '0.00', '480000.00', 'false', 'a', 1, '2024-06-04 17:28:43', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(43, 28, 28, 10, '50.00', '60.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-06-04 18:18:49', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(44, 28, 26, 100, '25.00', '30.00', '0.00', NULL, '0.00', '3000.00', 'false', 'a', 1, '2024-06-04 18:18:49', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(45, 28, 27, 10, '10.00', '15.00', '0.00', NULL, '0.00', '150.00', 'false', 'a', 1, '2024-06-04 18:18:49', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(46, 29, 27, 10, '10.00', '15.00', '0.00', NULL, '0.00', '150.00', 'false', 'a', 1, '2024-06-04 18:33:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(47, 29, 28, 10, '50.00', '60.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-06-04 18:33:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(48, 30, 27, 10, '10.00', '15.00', '0.00', NULL, '0.00', '150.00', 'false', 'a', 1, '2024-06-04 18:34:26', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(50, 31, 29, 1, '600.00', '650.00', '0.00', NULL, '15.00', '650.00', 'false', 'a', NULL, NULL, 1, '2024-06-06 21:06:07', NULL, NULL, '46.153.213.147', 1),
(51, 32, 27, 1, '10.00', '15.00', '0.00', NULL, '0.00', '15.00', 'false', 'a', 1, '2024-06-08 13:20:17', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(52, 33, 27, 1, '10.00', '15.00', '0.00', NULL, '0.00', '15.00', 'false', 'a', 1, '2024-06-08 13:20:28', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(53, 34, 27, 1, '10.00', '15.00', '0.00', NULL, '0.00', '15.00', 'false', 'a', 1, '2024-06-08 13:21:26', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(55, 35, 30, 20, '150.00', '5500.00', '0.00', NULL, '0.00', '110000.00', 'false', 'a', NULL, NULL, 1, '2024-06-08 14:03:50', NULL, NULL, '103.203.93.233', 1),
(56, 35, 31, 20, '4500.00', '7500.00', '0.00', NULL, '0.00', '150000.00', 'false', 'a', NULL, NULL, 1, '2024-06-08 14:03:50', NULL, NULL, '103.203.93.233', 1),
(57, 36, 40, 6500, '156.00', '208.00', '0.00', NULL, '0.00', '1352000.00', 'false', 'a', 1, '2024-06-18 04:00:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(60, 37, 39, 450, '165.00', '167.00', '0.00', NULL, '0.00', '75150.00', 'false', 'a', NULL, NULL, 1, '2024-06-18 05:44:55', NULL, NULL, '103.147.166.161', 1),
(61, 38, 40, 566, '156.00', '200.00', '0.00', NULL, '0.00', '113200.00', 'false', 'a', 1, '2024-06-19 03:54:14', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(62, 39, 35, 567, '188.00', '202.00', '0.00', NULL, '0.00', '114534.00', 'false', 'a', 1, '2024-06-19 03:56:48', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(63, 40, 43, 10, '250.00', '300.00', '0.00', NULL, '0.00', '3000.00', 'false', 'a', 1, '2024-06-26 12:27:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(64, 40, 42, 5, '250.00', '300.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-06-26 12:27:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(65, 41, 27, 7, '10.00', '15.00', '0.00', NULL, '0.00', '105.00', 'false', 'a', 1, '2024-06-26 15:25:03', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(66, 42, 24, 5, '11.00', '200.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-06-26 15:50:11', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(67, 42, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-26 15:50:11', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(68, 43, 44, 1, '250.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-06-26 16:16:53', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(69, 44, 46, 1, '250.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-06-26 20:17:23', NULL, NULL, NULL, NULL, '103.216.58.98', 1),
(70, 44, 38, 1, '157.00', '160.00', '0.00', NULL, '0.00', '160.00', 'false', 'a', 1, '2024-06-26 20:17:23', NULL, NULL, NULL, NULL, '103.216.58.98', 1),
(71, 44, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-26 20:17:23', NULL, NULL, NULL, NULL, '103.216.58.98', 1),
(72, 44, 37, 1, '88.00', '95.00', '0.00', NULL, '0.00', '95.00', 'false', 'a', 1, '2024-06-26 20:17:23', NULL, NULL, NULL, NULL, '103.216.58.98', 1),
(73, 45, 43, 2, '250.00', '300.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-06-26 20:50:14', NULL, NULL, NULL, NULL, '103.99.183.69', 1),
(74, 46, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-27 17:04:25', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(75, 47, 41, 11, '55.00', '60.00', '0.00', NULL, '0.00', '660.00', 'false', 'a', 1, '2024-06-27 17:08:20', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(76, 48, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-27 17:08:45', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(77, 49, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-27 17:10:54', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(78, 50, 41, 1, '55.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-06-27 17:11:41', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(79, 51, 45, 1, '250.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-06-29 11:05:27', NULL, NULL, NULL, NULL, '118.179.49.34', 1),
(80, 52, 47, 10, '250.00', '500.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-06-29 15:44:24', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(81, 53, 46, 10, '250.00', '500.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-06-29 16:00:04', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(82, 54, 42, 5, '250.00', '275.00', '0.00', NULL, '0.00', '1375.00', 'false', 'a', 1, '2024-06-29 16:52:21', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(83, 55, 46, 5, '250.00', '500.00', '0.00', NULL, '0.00', '2500.00', 'false', 'a', 1, '2024-06-29 19:50:39', NULL, NULL, NULL, NULL, '118.179.49.34', 1),
(85, 56, 48, 1, '225000.00', '234000.00', '0.00', NULL, '0.00', '234000.00', 'false', 'a', NULL, NULL, 5, '2024-07-01 13:15:09', NULL, NULL, '118.179.69.241', 4),
(86, 56, 51, 1, '0.00', '5000.00', '0.00', NULL, '0.00', '5000.00', 'true', 'a', NULL, NULL, 5, '2024-07-01 13:15:09', NULL, NULL, '118.179.69.241', 4),
(87, 57, 48, 1, '225000.00', '234000.00', '0.00', NULL, '0.00', '234000.00', 'false', 'a', 5, '2024-07-01 13:24:57', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(88, 58, 57, 1, '452.00', '470.00', '0.00', NULL, '0.00', '470.00', 'false', 'a', 1, '2024-07-03 11:47:24', NULL, NULL, NULL, NULL, '116.206.253.166', 1),
(89, 59, 58, 1, '420.00', '430.00', '0.00', NULL, '0.00', '430.00', 'false', 'a', 1, '2024-07-04 20:02:41', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(90, 60, 58, 2, '415.20', '430.00', '0.00', NULL, '0.00', '860.00', 'false', 'a', 1, '2024-07-06 19:37:05', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(91, 60, 59, 20, '23.00', '26.00', '0.00', NULL, '0.00', '520.00', 'false', 'a', 1, '2024-07-06 19:37:05', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(92, 61, 59, 20, '23.00', '26.00', '0.00', NULL, '0.00', '520.00', 'false', 'a', 1, '2024-07-06 19:40:59', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(93, 61, 58, 2, '415.20', '430.00', '0.00', NULL, '0.00', '860.00', 'false', 'a', 1, '2024-07-06 19:40:59', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(94, 62, 59, 20, '23.00', '26.00', '0.00', NULL, '0.00', '520.00', 'false', 'a', 1, '2024-07-06 19:41:49', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(95, 63, 59, 20, '23.00', '26.00', '0.00', NULL, '0.00', '520.00', 'false', 'a', 1, '2024-07-06 19:43:37', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(100, 64, 59, 20, '23.38', '26.00', '0.00', NULL, '0.00', '520.00', 'false', 'a', NULL, NULL, 1, '2024-07-06 20:07:15', NULL, NULL, '103.25.250.130', 1),
(101, 64, 60, 12, '53.00', '58.00', '0.00', NULL, '0.00', '696.00', 'false', 'a', NULL, NULL, 1, '2024-07-06 20:07:15', NULL, NULL, '103.25.250.130', 1),
(102, 65, 60, 1, '53.00', '58.00', '0.00', NULL, '0.00', '58.00', 'false', 'a', 1, '2024-07-06 22:06:59', NULL, NULL, NULL, NULL, '103.25.248.130', 1),
(103, 66, 57, 9, '452.00', '470.00', '0.00', NULL, '0.00', '4230.00', 'false', 'a', 1, '2024-07-11 16:28:00', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(104, 66, 58, 1, '415.20', '430.00', '0.00', NULL, '0.00', '430.00', 'false', 'a', 1, '2024-07-11 16:28:00', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(105, 67, 59, 46, '23.38', '600.00', '0.00', NULL, '0.00', '27600.00', 'false', 'a', 1, '2024-07-11 16:32:30', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(106, 67, 58, 6, '415.20', '430.00', '0.00', NULL, '0.00', '2580.00', 'false', 'a', 1, '2024-07-11 16:32:30', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(107, 68, 57, 4, '452.00', '470.00', '0.00', NULL, '0.00', '1880.00', 'false', 'a', 1, '2024-07-11 16:33:45', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(108, 69, 59, 4, '23.38', '26.00', '0.00', NULL, '0.00', '104.00', 'false', 'a', 1, '2024-07-11 16:40:09', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(109, 70, 62, 2, '4000.00', '6000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-07-13 13:01:44', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(110, 71, 64, 2, '10000.00', '12000.00', '0.00', NULL, '0.00', '24000.00', 'false', 'a', 1, '2024-07-15 16:37:57', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(111, 72, 57, 1, '452.00', '470.00', '0.00', NULL, '0.00', '470.00', 'false', 'a', 1, '2024-07-25 13:54:46', NULL, NULL, NULL, NULL, '103.159.72.94', 1),
(112, 73, 60, 3, '53.00', '58.00', '0.00', NULL, '0.00', '174.00', 'false', 'a', 1, '2024-07-28 12:44:17', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(113, 73, 56, 2, '674.00', '690.00', '0.00', NULL, '0.00', '1380.00', 'false', 'a', 1, '2024-07-28 12:44:17', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(114, 73, 64, 2, '10000.00', '12000.00', '0.00', NULL, '0.00', '24000.00', 'false', 'a', 1, '2024-07-28 12:44:17', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(115, 74, 61, 2, '5000.00', '8000.00', '0.00', NULL, '0.00', '16000.00', 'false', 'a', 1, '2024-07-28 12:48:10', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(116, 74, 64, 3, '10000.00', '12000.00', '0.00', NULL, '0.00', '36000.00', 'false', 'a', 1, '2024-07-28 12:48:10', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(117, 75, 65, 2, '5000.00', '6000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-07-29 11:47:15', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(118, 76, 64, 2, '10000.00', '12000.00', '0.00', NULL, '0.00', '24000.00', 'false', 'a', 1, '2024-07-29 11:51:06', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(119, 77, 63, 3, '3000.00', '4000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-07-29 11:52:25', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(120, 78, 63, 2, '3000.00', '4000.00', '0.00', NULL, '0.00', '8000.00', 'false', 'a', 1, '2024-07-29 11:53:49', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(121, 79, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-07-29 11:56:02', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(122, 80, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-07-29 11:58:39', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(123, 80, 61, 1, '5000.00', '8000.00', '0.00', NULL, '0.00', '8000.00', 'false', 'a', 1, '2024-07-29 11:58:39', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(124, 81, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-07-29 12:06:31', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(125, 81, 61, 1, '5000.00', '8000.00', '0.00', NULL, '0.00', '8000.00', 'false', 'a', 1, '2024-07-29 12:06:31', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(126, 82, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-07-30 00:16:13', NULL, NULL, NULL, NULL, '38.68.134.35', 1),
(127, 83, 62, 1, '4000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-07-31 23:11:40', NULL, NULL, NULL, NULL, '23.157.40.26', 1),
(128, 84, 56, 1, '674.00', '690.00', '0.00', NULL, '0.00', '690.00', 'false', 'a', 1, '2024-08-01 16:27:52', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(130, 86, 63, 7, '3000.00', '3500.00', '0.00', NULL, '0.00', '24500.00', 'false', 'a', 1, '2024-08-01 16:56:33', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(131, 87, 59, 2, '23.38', '26.00', '0.00', NULL, '0.00', '52.00', 'false', 'a', 1, '2024-08-01 17:02:55', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(132, 85, 64, 1, '10000.00', '12000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', NULL, NULL, 1, '2024-08-01 17:04:49', NULL, NULL, '37.111.243.41', 1),
(133, 88, 61, 4, '5000.00', '8000.00', '0.00', NULL, '0.00', '32000.00', 'false', 'a', 1, '2024-08-02 01:07:41', NULL, NULL, NULL, NULL, '37.111.243.254', 1),
(135, 89, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', NULL, NULL, 1, '2024-08-13 20:23:16', NULL, NULL, '103.204.210.88', 1),
(136, 90, 64, 2, '10000.00', '12000.00', '0.00', NULL, '0.00', '24000.00', 'false', 'a', 1, '2024-08-17 06:50:26', NULL, NULL, NULL, NULL, '103.175.242.47', 1),
(137, 90, 63, 10, '3000.00', '4000.00', '0.00', NULL, '0.00', '40000.00', 'false', 'a', 1, '2024-08-17 06:50:26', NULL, NULL, NULL, NULL, '103.175.242.47', 1),
(138, 90, 56, 5, '674.00', '690.00', '0.00', NULL, '0.00', '3450.00', 'false', 'a', 1, '2024-08-17 06:50:26', NULL, NULL, NULL, NULL, '103.175.242.47', 1),
(139, 91, 67, 2, '8625.00', '9725.00', '0.00', NULL, '0.00', '19450.00', 'false', 'a', 1, '2024-08-25 20:37:39', NULL, NULL, NULL, NULL, '103.150.64.177', 1),
(140, 92, 69, 2, '7000.00', '50.00', '0.00', NULL, '0.00', '100.00', 'false', 'a', 1, '2024-08-28 19:36:16', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(141, 93, 67, 1, '8625.00', '11500.00', '0.00', NULL, '0.00', '11500.00', 'false', 'a', 1, '2024-08-28 19:37:44', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(142, 94, 69, 1, '7000.00', '50.00', '0.00', NULL, '0.00', '50.00', 'false', 'a', 1, '2024-08-28 19:40:01', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(143, 95, 69, 1, '7000.00', '50.00', '0.00', NULL, '0.00', '50.00', 'false', 'a', 1, '2024-08-28 19:40:13', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(144, 96, 69, 1, '7000.00', '5.00', '0.00', NULL, '0.00', '5.00', 'false', 'a', 1, '2024-08-29 09:58:03', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(145, 97, 69, 1, '7000.00', '5.00', '0.00', NULL, '0.00', '5.00', 'false', 'a', 1, '2024-08-29 10:01:00', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(146, 98, 69, 1, '7000.00', '5.00', '0.00', NULL, '0.00', '5.00', 'false', 'a', 1, '2024-08-29 10:03:03', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(147, 99, 69, 1, '7000.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-08-29 10:18:59', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(148, 100, 67, 1, '8625.00', '11500.00', '0.00', NULL, '0.00', '11500.00', 'false', 'a', 1, '2024-08-29 10:21:34', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(149, 101, 69, 1, '7000.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-08-29 10:35:16', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(151, 102, 69, 1, '7000.00', '200.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', NULL, NULL, 1, '2024-08-31 10:50:58', NULL, NULL, '103.177.122.234', 1),
(152, 102, 63, 1, '3000.00', '4000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', NULL, NULL, 1, '2024-08-31 10:50:58', NULL, NULL, '103.177.122.234', 1),
(153, 102, 59, 1, '23.38', '26.00', '0.00', NULL, '0.00', '26.00', 'false', 'a', NULL, NULL, 1, '2024-08-31 10:50:58', NULL, NULL, '103.177.122.234', 1),
(154, 103, 58, 1, '415.20', '430.00', '0.00', NULL, '0.00', '430.00', 'false', 'a', 1, '2024-08-31 15:48:30', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(155, 104, 65, 1, '5000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-08-31 15:51:01', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(156, 105, 65, 1, '5000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-08-31 15:51:12', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(157, 106, 67, 1, '8625.00', '11500.00', '0.00', NULL, '0.00', '11500.00', 'false', 'a', 1, '2024-09-01 17:21:57', NULL, NULL, NULL, NULL, '103.159.72.66', 1),
(158, 107, 69, 1, '7000.00', '200.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', 1, '2024-09-01 17:22:55', NULL, NULL, NULL, NULL, '103.159.72.66', 1),
(159, 108, 69, 5, '7000.00', '100.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-09-02 16:32:08', NULL, NULL, NULL, NULL, '103.159.72.69', 1),
(160, 109, 59, 1, '23.38', '26.00', '0.00', NULL, '0.00', '26.00', 'false', 'a', 1, '2024-09-04 09:57:07', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(161, 110, 59, 1, '23.38', '26.00', '0.00', NULL, '0.00', '26.00', 'false', 'a', 1, '2024-09-04 09:58:09', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(162, 110, 58, 1, '415.20', '430.00', '0.00', NULL, '0.00', '430.00', 'false', 'a', 1, '2024-09-04 09:58:09', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(163, 111, 71, 1, '20000.00', '30000.00', '0.00', NULL, '0.00', '30000.00', 'false', 'a', 1, '2024-09-04 10:06:22', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(164, 111, 62, 1, '4000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-09-04 10:06:22', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(165, 112, 67, 1, '8625.00', '11500.00', '0.00', NULL, '0.00', '11500.00', 'false', 'a', 1, '2024-09-04 10:10:45', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(166, 113, 72, 1, '200000.00', '220000.00', '0.00', NULL, '0.00', '220000.00', 'false', 'a', 1, '2024-09-04 10:18:04', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(167, 114, 72, 1, '200000.00', '220000.00', '0.00', NULL, '0.00', '220000.00', 'false', 'a', 1, '2024-09-04 10:29:23', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(168, 115, 73, 1, '100000.00', '120000.00', '0.00', NULL, '0.00', '120000.00', 'false', 'a', 1, '2024-09-04 10:32:56', NULL, NULL, NULL, NULL, '103.159.72.115', 1),
(169, 116, 73, 1, '100000.00', '120000.00', '0.00', NULL, '0.00', '120000.00', 'false', 'a', 1, '2024-09-04 10:39:16', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(170, 117, 74, 1, '200.00', '300.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-09-04 10:41:43', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(171, 118, 74, 1, '200.00', '300.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-09-04 10:49:44', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(172, 119, 75, 2, '30.00', '40.00', '0.00', NULL, '0.00', '80.00', 'false', 'a', 1, '2024-09-04 10:58:25', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(173, 120, 75, 2, '30.00', '40.00', '0.00', NULL, '0.00', '80.00', 'false', 'a', 1, '2024-09-04 10:58:32', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(174, 121, 75, 2, '30.00', '40.00', '0.00', NULL, '0.00', '80.00', 'false', 'a', 1, '2024-09-04 11:08:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(175, 122, 74, 2, '200.00', '300.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-09-04 11:13:04', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(176, 123, 75, 2, '30.00', '40.00', '0.00', NULL, '0.00', '80.00', 'false', 'a', 1, '2024-09-04 11:15:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(177, 124, 75, 2, '30.00', '40.00', '0.00', NULL, '0.00', '80.00', 'false', 'a', 1, '2024-09-04 11:19:09', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(178, 125, 75, 90, '30.00', '40.00', '0.00', NULL, '0.00', '3600.00', 'false', 'a', 1, '2024-09-04 11:51:25', NULL, NULL, NULL, NULL, '103.49.203.110', 1),
(179, 126, 76, 1, '0.00', '100000.00', '0.00', NULL, '0.00', '100000.00', 'true', 'a', 1, '2024-09-04 13:03:36', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(180, 127, 76, 100, '0.00', '80000.00', '0.00', NULL, '0.00', '8000000.00', 'true', 'a', 1, '2024-09-05 17:55:16', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(181, 127, 75, 100, '26.00', '40.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-09-05 17:55:16', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(182, 127, 74, 100, '133.16', '300.00', '0.00', NULL, '0.00', '30000.00', 'false', 'a', 1, '2024-09-05 17:55:16', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(183, 128, 76, 10, '0.00', '80000.00', '0.00', NULL, '0.00', '800000.00', 'true', 'a', 1, '2024-09-07 11:26:19', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(184, 129, 75, 10, '26.00', '40.00', '0.00', NULL, '0.00', '400.00', 'false', 'a', 1, '2024-09-07 11:28:49', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(185, 130, 66, 2, '14200.00', '15000.00', '0.00', NULL, '15.00', '30000.00', 'false', 'a', 1, '2024-09-07 13:27:33', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(186, 130, 60, 2, '53.00', '58.00', '0.00', NULL, '0.00', '116.00', 'false', 'a', 1, '2024-09-07 13:27:33', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(187, 131, 76, 1, '0.00', '80000.00', '0.00', NULL, '0.00', '80000.00', 'true', 'a', 1, '2024-09-07 13:34:14', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(188, 132, 75, 8, '26.00', '40.00', '0.00', NULL, '0.00', '320.00', 'false', 'a', 1, '2024-09-07 18:32:09', NULL, NULL, NULL, NULL, '202.134.9.136', 5),
(189, 133, 75, 10, '26.00', '40.00', '0.00', NULL, '0.00', '400.00', 'false', 'a', 1, '2024-09-07 18:34:08', NULL, NULL, NULL, NULL, '202.134.9.136', 5),
(193, 134, 59, 1, '23.38', '26.00', '0.00', NULL, '0.00', '26.00', 'false', 'a', NULL, NULL, 1, '2024-09-08 12:27:28', NULL, NULL, '113.11.122.205', 1),
(194, 134, 60, 1, '53.00', '58.00', '0.00', NULL, '0.00', '58.00', 'false', 'a', NULL, NULL, 1, '2024-09-08 12:27:28', NULL, NULL, '113.11.122.205', 1),
(195, 134, 61, 1, '5000.00', '7000.00', '0.00', NULL, '0.00', '7000.00', 'false', 'a', NULL, NULL, 1, '2024-09-08 12:27:28', NULL, NULL, '113.11.122.205', 1),
(196, 135, 73, 1, '100000.00', '120000.00', '0.00', NULL, '0.00', '120000.00', 'false', 'a', 1, '2024-09-08 12:32:09', NULL, NULL, NULL, NULL, '113.11.122.205', 1),
(197, 135, 65, 1, '5000.00', '6000.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-09-08 12:32:09', NULL, NULL, NULL, NULL, '113.11.122.205', 1),
(198, 136, 77, 1, '33000.00', '40000.00', '0.00', NULL, '0.00', '40000.00', 'false', 'a', 1, '2024-09-08 15:05:41', NULL, NULL, NULL, NULL, '103.136.1.58', 1),
(199, 137, 75, 20, '26.00', '40.00', '0.00', NULL, '0.00', '800.00', 'false', 'a', 8, '2024-09-08 20:41:11', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(200, 138, 75, 10, '26.00', '40.00', '0.00', NULL, '0.00', '400.00', 'false', 'a', 8, '2024-09-08 21:50:46', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(201, 139, 75, 1, '26.00', '40.00', '0.00', NULL, '0.00', '40.00', 'false', 'a', 1, '2024-09-09 16:35:45', NULL, NULL, NULL, NULL, '103.155.184.150', 1),
(202, 140, 82, 1, '35566.00', '35566.00', '0.00', NULL, '0.00', '35566.00', 'false', 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(203, 140, 81, 1, '41495.00', '41890.00', '0.00', NULL, '0.00', '41890.00', 'false', 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(204, 140, 80, 1, '30485.00', '30485.00', '0.00', NULL, '0.00', '30485.00', 'false', 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(205, 140, 79, 1, '30715.00', '30715.00', '0.00', NULL, '0.00', '30715.00', 'false', 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(206, 140, 78, 1, '25479.00', '25480.00', '0.00', NULL, '0.00', '25480.00', 'false', 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(207, 141, 73, 7, '100000.00', '120000.00', '0.00', NULL, '0.00', '840000.00', 'false', 'a', 1, '2024-09-10 11:46:53', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(208, 142, 83, 4, '58500.00', '60000.00', '0.00', NULL, '0.00', '240000.00', 'false', 'a', 1, '2024-09-10 12:01:56', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(209, 143, 83, 1, '58500.00', '750.00', '0.00', NULL, '0.00', '750.00', 'false', 'a', 1, '2024-09-12 11:34:30', NULL, NULL, NULL, NULL, '103.191.98.194', 1),
(210, 143, 76, 1, '0.00', '5000.00', '0.00', NULL, '0.00', '5000.00', 'true', 'a', 1, '2024-09-12 11:34:30', NULL, NULL, NULL, NULL, '103.191.98.194', 1),
(211, 144, 83, 1, '58500.00', '1000.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-09-12 13:04:20', NULL, NULL, NULL, NULL, '103.77.63.39', 1),
(212, 145, 82, 10, '35566.00', '46190.00', '0.00', NULL, '0.00', '461900.00', 'false', 'a', 1, '2024-09-12 15:40:24', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(213, 145, 76, 1, '0.00', '80000.00', '0.00', NULL, '0.00', '80000.00', 'true', 'a', 1, '2024-09-12 15:40:24', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(216, 147, 72, 10, '200000.00', '220000.00', '0.00', NULL, '0.00', '2200000.00', 'false', 'a', 1, '2024-09-12 18:44:17', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(217, 147, 83, 3, '58500.00', '1000.00', '0.00', NULL, '0.00', '3000.00', 'false', 'a', 1, '2024-09-12 18:44:17', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(218, 148, 82, 1, '35566.00', '46190.00', '0.00', NULL, '0.00', '46190.00', 'false', 'a', 1, '2024-09-13 12:27:54', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(219, 149, 85, 1, '4800.00', '4800.00', '0.00', NULL, '0.00', '4800.00', 'false', 'a', 1, '2024-09-13 20:50:42', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(220, 149, 84, 2, '4400.00', '4400.00', '0.00', NULL, '0.00', '8800.00', 'false', 'a', 1, '2024-09-13 20:50:42', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(221, 150, 76, 1, '0.00', '80000.00', '0.00', NULL, '0.00', '80000.00', 'true', 'a', 11, '2024-09-13 21:02:22', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(222, 151, 74, 8, '133.16', '300.00', '0.00', NULL, '0.00', '2400.00', 'false', 'a', 1, '2024-09-14 15:02:48', NULL, NULL, NULL, NULL, '37.111.203.102', 1),
(223, 146, 73, 10, '100000.00', '120000.00', '0.00', NULL, '0.00', '1200000.00', 'false', 'a', NULL, NULL, 1, '2024-09-15 17:01:27', NULL, NULL, '42.0.7.237', 1),
(224, 146, 83, 2, '58500.00', '2000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', NULL, NULL, 1, '2024-09-15 17:01:27', NULL, NULL, '42.0.7.237', 1),
(225, 152, 76, 1, '0.00', '80000.00', '0.00', NULL, '0.00', '80000.00', 'true', 'a', 1, '2024-09-16 19:51:58', NULL, NULL, NULL, NULL, '103.150.64.179', 7),
(226, 153, 75, 1, '26.00', '40.00', '0.00', NULL, '0.00', '40.00', 'false', 'a', 1, '2024-09-17 14:24:33', NULL, NULL, NULL, NULL, '37.111.206.75', 1),
(227, 154, 86, 1, '13.00', '20.00', '0.00', NULL, '0.00', '20.00', 'false', 'a', 1, '2024-09-17 14:30:03', NULL, NULL, NULL, NULL, '37.111.206.75', 1),
(228, 155, 83, 1, '58500.00', '1200.00', '0.00', NULL, '0.00', '1200.00', 'false', 'a', 1, '2024-09-17 17:16:54', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(229, 155, 72, 1, '200000.00', '220000.00', '0.00', NULL, '0.00', '220000.00', 'false', 'a', 1, '2024-09-17 17:16:54', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(230, 155, 73, 1, '100000.00', '120000.00', '0.00', NULL, '0.00', '120000.00', 'false', 'a', 1, '2024-09-17 17:16:54', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(231, 156, 90, 1, '10000.00', '12000.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-09-18 10:47:33', NULL, NULL, NULL, NULL, '146.70.46.30', 1),
(232, 157, 90, 1, '10000.00', '13000.00', '0.00', NULL, '0.00', '13000.00', 'false', 'a', 1, '2024-09-19 13:37:55', NULL, NULL, NULL, NULL, '202.181.16.13', 1),
(233, 158, 90, 2, '10000.00', '12000.00', '0.00', NULL, '0.00', '24000.00', 'false', 'a', 1, '2024-09-20 06:12:25', NULL, NULL, NULL, NULL, '103.78.254.137', 1),
(234, 158, 86, 10, '13.00', '14.00', '0.00', NULL, '0.00', '140.00', 'false', 'a', 1, '2024-09-20 06:12:25', NULL, NULL, NULL, NULL, '103.78.254.137', 1),
(235, 158, 82, 1, '35566.00', '46190.00', '0.00', NULL, '0.00', '46190.00', 'false', 'a', 1, '2024-09-20 06:12:25', NULL, NULL, NULL, NULL, '103.78.254.137', 1),
(236, 159, 90, 8, '10000.00', '12000.00', '0.00', NULL, '0.00', '96000.00', 'false', 'a', 1, '2024-09-22 12:25:19', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(237, 160, 86, 2, '13.00', '14.00', '0.00', NULL, '0.00', '28.00', 'false', 'a', 1, '2024-09-22 12:26:32', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(238, 161, 91, 10, '3600.00', '3600.00', '0.00', NULL, '0.00', '36000.00', 'false', 'a', 1, '2024-09-22 13:30:36', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(239, 162, 91, 5, '3600.00', '3600.00', '0.00', NULL, '0.00', '18000.00', 'false', 'a', 1, '2024-09-22 13:36:40', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(240, 163, 91, 2, '3600.00', '3800.00', '0.00', NULL, '0.00', '7600.00', 'false', 'a', 1, '2024-09-22 14:29:33', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(241, 164, 91, 2, '3600.00', '3800.00', '0.00', NULL, '0.00', '7600.00', 'false', 'a', 1, '2024-09-22 14:30:33', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(242, 165, 91, 1, '3600.00', '3800.00', '0.00', NULL, '0.00', '3800.00', 'false', 'a', 1, '2024-09-22 14:56:11', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(243, 166, 92, 3000, '100.00', '120.00', '0.00', NULL, '0.00', '360000.00', 'false', 'a', 1, '2024-09-26 12:11:38', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(244, 167, 92, 1500, '100.00', '120.00', '0.00', NULL, '0.00', '180000.00', 'false', 'a', 1, '2024-09-26 12:15:53', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(245, 168, 99, 10, '100.00', '300.00', '0.00', NULL, '0.00', '3000.00', 'false', 'a', 1, '2024-09-28 15:46:53', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(246, 168, 97, 10, '300.00', '600.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-09-28 15:46:53', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(247, 169, 98, 1, '200.00', '600.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-09-28 17:02:22', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(248, 170, 83, 3, '58500.00', '28000.00', '0.00', NULL, '0.00', '84000.00', 'false', 'a', 1, '2024-09-28 17:09:07', NULL, NULL, NULL, NULL, '103.159.73.102', 6),
(249, 171, 92, 100, '100.00', '115.00', '0.00', NULL, '0.00', '11500.00', 'false', 'a', 1, '2024-09-29 12:52:59', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(250, 172, 93, 100, '100.00', '120.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-09-29 12:55:49', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(251, 172, 92, 10, '100.00', '120.00', '0.00', NULL, '0.00', '1200.00', 'false', 'a', 1, '2024-09-29 12:55:49', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(252, 172, 97, 45, '300.00', '600.00', '0.00', NULL, '0.00', '27000.00', 'false', 'a', 1, '2024-09-29 12:55:49', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(253, 173, 95, 20, '0.00', '50.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-09-29 16:08:37', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(254, 174, 97, 10, '300.00', '600.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-09-29 16:43:56', NULL, NULL, NULL, NULL, '103.159.73.99', 1),
(255, 175, 103, 1, '32000.00', '38000.00', '0.00', NULL, '0.00', '38000.00', 'false', 'a', 1, '2024-10-02 12:12:40', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(256, 176, 103, 1, '32000.00', '38000.00', '0.00', NULL, '0.00', '38000.00', 'false', 'a', 1, '2024-10-02 12:14:50', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(257, 177, 97, 3, '300.00', '600.00', '0.00', NULL, '0.00', '1800.00', 'false', 'a', 1, '2024-10-03 19:58:47', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(258, 178, 104, 4, '500.00', '1000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-10-04 00:02:02', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(259, 179, 100, 2, '45.00', '200.00', '0.00', NULL, '0.00', '400.00', 'false', 'a', 1, '2024-10-04 18:40:48', NULL, NULL, NULL, NULL, '103.213.237.113', 1),
(260, 179, 95, 5, '125.00', '250.00', '0.00', NULL, '0.00', '1250.00', 'false', 'a', 1, '2024-10-04 18:40:48', NULL, NULL, NULL, NULL, '103.213.237.113', 1),
(261, 180, 104, 1, '583.33', '1000.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-04 19:10:58', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(262, 181, 104, 5, '583.33', '1000.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-10-05 13:15:20', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(263, 182, 104, 2, '200.00', '300.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-10-05 13:17:58', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(264, 183, 106, 60, '190.00', '200.00', '0.00', NULL, '0.00', '12000.00', 'false', 'a', 1, '2024-10-06 12:56:18', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(265, 183, 105, 60, '230.00', '240.00', '0.00', NULL, '0.00', '14400.00', 'false', 'a', 1, '2024-10-06 12:56:18', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(268, 185, 106, 24, '190.00', '200.00', '0.00', NULL, '0.00', '4800.00', 'false', 'a', 1, '2024-10-06 14:04:57', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(269, 185, 105, 24, '230.00', '240.00', '0.00', NULL, '0.00', '5760.00', 'false', 'a', 1, '2024-10-06 14:04:57', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(270, 186, 106, 24, '190.00', '250.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-10-06 14:07:09', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(271, 186, 105, 24, '230.00', '300.00', '0.00', NULL, '0.00', '7200.00', 'false', 'a', 1, '2024-10-06 14:07:09', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(272, 184, 105, 60, '230.00', '240.00', '0.00', NULL, '0.00', '14400.00', 'false', 'a', NULL, NULL, 1, '2024-10-06 14:20:17', NULL, NULL, '103.185.224.24', 1),
(273, 184, 106, 80, '190.00', '200.00', '0.00', NULL, '0.00', '16000.00', 'false', 'a', NULL, NULL, 1, '2024-10-06 14:20:17', NULL, NULL, '103.185.224.24', 1),
(274, 187, 106, 20, '190.00', '200.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-10-06 16:30:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(275, 187, 105, 20, '230.00', '240.00', '0.00', NULL, '0.00', '4800.00', 'false', 'a', 1, '2024-10-06 16:30:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(276, 188, 106, 12, '190.00', '200.00', '0.00', NULL, '0.00', '2400.00', 'false', 'a', 1, '2024-10-06 23:09:29', NULL, NULL, NULL, NULL, '103.60.175.40', 1),
(277, 188, 105, 12, '230.00', '240.00', '0.00', NULL, '0.00', '2880.00', 'false', 'a', 1, '2024-10-06 23:09:29', NULL, NULL, NULL, NULL, '103.60.175.40', 1),
(278, 189, 108, 600, '38.00', '42.00', '0.00', NULL, '0.00', '25200.00', 'false', 'a', 1, '2024-10-07 12:06:50', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(279, 189, 107, 600, '48.00', '52.00', '0.00', NULL, '0.00', '31200.00', 'false', 'a', 1, '2024-10-07 12:06:50', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(280, 190, 109, 10, '96.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-07 13:55:42', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(281, 191, 108, 100, '38.00', '40.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-10-07 14:01:41', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(282, 191, 107, 100, '48.00', '50.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-10-07 14:01:41', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(283, 192, 109, 50, '96.00', '90.00', '0.00', NULL, '0.00', '4500.00', 'false', 'a', 1, '2024-10-07 14:29:25', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(284, 192, 105, 10, '230.00', '240.00', '0.00', NULL, '0.00', '2400.00', 'false', 'a', 1, '2024-10-07 14:29:25', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(285, 193, 109, 1, '96.00', '200.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', 1, '2024-10-07 18:26:56', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(286, 194, 103, 2, '32000.00', '38000.00', '0.00', NULL, '0.00', '76000.00', 'false', 'a', 1, '2024-10-07 18:58:08', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(287, 195, 110, 5, '1050.00', '300.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-10-07 19:20:14', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(288, 196, 110, 3, '1050.00', '1950.00', '0.00', NULL, '0.00', '5850.00', 'false', 'a', 1, '2024-10-07 19:25:09', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(289, 197, 110, 10, '1050.00', '1600.00', '0.00', NULL, '0.00', '16000.00', 'false', 'a', 1, '2024-10-08 11:03:39', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(290, 197, 108, 1, '38.00', '40.00', '0.00', NULL, '0.00', '40.00', 'false', 'a', 1, '2024-10-08 11:03:39', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(293, 198, 110, 20, '1050.00', '1600.00', '0.00', NULL, '0.00', '32000.00', 'false', 'a', NULL, NULL, 1, '2024-10-08 11:11:34', NULL, NULL, '59.152.6.83', 1),
(294, 198, 109, 10, '96.00', '200.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', NULL, NULL, 1, '2024-10-08 11:11:34', NULL, NULL, '59.152.6.83', 1),
(295, 199, 106, 10, '190.00', '200.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-10-08 11:13:50', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(296, 200, 110, 1, '1050.00', '1600.00', '0.00', NULL, '0.00', '1600.00', 'false', 'a', 1, '2024-10-08 11:40:31', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(297, 200, 107, 1, '48.00', '50.00', '0.00', NULL, '0.00', '50.00', 'false', 'a', 1, '2024-10-08 11:40:31', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(298, 200, 106, 1, '190.00', '200.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', 1, '2024-10-08 11:40:31', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(299, 201, 110, 11, '1050.00', '1600.00', '0.00', NULL, '0.00', '17600.00', 'false', 'a', 1, '2024-10-08 12:21:12', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(300, 202, 110, 1, '1050.00', '1600.00', '0.00', NULL, '0.00', '1600.00', 'false', 'a', 1, '2024-10-08 13:35:45', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(301, 203, 110, 1, '1050.00', '1600.00', '0.00', NULL, '0.00', '1600.00', 'false', 'a', 1, '2024-10-08 13:36:16', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(302, 204, 110, 2, '1050.00', '1600.00', '0.00', NULL, '0.00', '3200.00', 'false', 'a', 1, '2024-10-12 11:16:00', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(303, 204, 109, 1, '96.00', '100.00', '0.00', NULL, '0.00', '100.00', 'false', 'a', 1, '2024-10-12 11:16:00', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(304, 205, 110, 1, '1050.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-10-12 11:17:22', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(305, 205, 108, 11, '38.00', '40.00', '0.00', NULL, '0.00', '440.00', 'false', 'a', 1, '2024-10-12 11:17:22', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(306, 206, 109, 20, '96.00', '8.00', '0.00', NULL, '0.00', '160.00', 'false', 'a', 1, '2024-10-18 00:12:21', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(307, 206, 108, 35, '38.00', '9.00', '0.00', NULL, '0.00', '315.00', 'false', 'a', 1, '2024-10-18 00:12:21', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(308, 207, 109, 5, '96.00', '9.00', '0.00', NULL, '0.00', '45.00', 'false', 'a', 1, '2024-10-18 00:14:30', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(309, 207, 107, 10, '48.00', '50.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-10-18 00:14:30', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(310, 208, 112, 25, '7.00', '12.00', '0.00', NULL, '0.00', '300.00', 'false', 'a', 1, '2024-10-18 20:09:55', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(311, 208, 111, 17, '7.50', '12.00', '0.00', NULL, '0.00', '204.00', 'false', 'a', 1, '2024-10-18 20:09:55', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(312, 209, 111, 23, '7.50', '12.00', '0.00', NULL, '0.00', '276.00', 'false', 'a', 1, '2024-10-18 20:15:22', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(313, 209, 112, 23, '7.00', '13.00', '0.00', NULL, '0.00', '299.00', 'false', 'a', 1, '2024-10-18 20:15:22', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(314, 210, 112, 5, '7.00', '13.00', '0.00', NULL, '0.00', '65.00', 'false', 'a', 1, '2024-10-18 20:21:14', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(315, 211, 113, 2, '1200.00', '1800.00', '0.00', NULL, '0.00', '3600.00', 'false', 'a', 1, '2024-10-19 14:06:58', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(316, 212, 113, 1, '1200.00', '2000.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-10-19 14:10:09', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(317, 213, 112, 1, '7.00', '10.00', '0.00', NULL, '0.00', '10.00', 'false', 'a', 1, '2024-10-19 15:39:19', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(318, 214, 58, 2, '415.20', '430.00', '0.00', NULL, '0.00', '860.00', 'false', 'a', 1, '2024-10-19 15:44:36', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(319, 215, 116, 10, '45.00', '60.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-10-20 12:35:22', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(320, 215, 115, 20, '30.00', '40.00', '0.00', NULL, '0.00', '800.00', 'false', 'a', 1, '2024-10-20 12:35:22', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(321, 216, 103, 6, '32000.00', '38000.00', '0.00', NULL, '0.00', '228000.00', 'false', 'a', 1, '2024-10-20 12:47:27', NULL, NULL, NULL, NULL, '59.152.1.226', 1),
(322, 217, 103, 1, '32000.00', '38000.00', '0.00', NULL, '0.00', '38000.00', 'false', 'a', 1, '2024-10-20 14:15:49', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(323, 218, 108, 30, '38.00', '40.00', '0.00', NULL, '0.00', '1200.00', 'false', 'a', 1, '2024-10-20 14:26:52', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(324, 218, 110, 1, '1050.00', '1600.00', '0.00', NULL, '0.00', '1600.00', 'false', 'a', 1, '2024-10-20 14:26:52', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(326, 219, 112, 1, '7.00', '13.00', '0.00', NULL, '0.00', '13.00', 'false', 'a', NULL, NULL, 1, '2024-10-20 15:09:38', NULL, NULL, '103.159.73.88', 1),
(327, 220, 113, 1, '1200.00', '2000.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-10-20 15:21:07', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(328, 221, 111, 24, '7.50', '12.00', '0.00', NULL, '0.00', '288.00', 'false', 'a', 1, '2024-10-20 22:46:16', NULL, NULL, NULL, NULL, '114.130.186.107', 1),
(329, 221, 110, 6, '1050.00', '1600.00', '0.00', NULL, '0.00', '9600.00', 'false', 'a', 1, '2024-10-20 22:46:16', NULL, NULL, NULL, NULL, '114.130.186.107', 1),
(330, 222, 113, 1, '1200.00', '1800.00', '0.00', NULL, '0.00', '1800.00', 'false', 'a', 1, '2024-10-21 14:57:44', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(331, 223, 117, 2, '495.00', '510.00', '0.00', NULL, '0.00', '1020.00', 'false', 'a', 1, '2024-10-21 16:44:17', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(332, 224, 117, 8, '495.00', '505.00', '0.00', NULL, '0.00', '4040.00', 'false', 'a', 1, '2024-10-21 16:45:30', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(333, 225, 117, 5, '495.00', '505.00', '0.00', NULL, '0.00', '2525.00', 'false', 'a', 1, '2024-10-21 16:53:52', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(334, 226, 117, 1, '495.00', '505.00', '0.00', NULL, '0.00', '505.00', 'false', 'a', 1, '2024-10-21 18:00:27', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(335, 226, 111, 1, '7.50', '12.00', '0.00', NULL, '0.00', '12.00', 'false', 'a', 1, '2024-10-21 18:00:27', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(336, 227, 118, 200, '75.00', '58.00', '0.00', NULL, '0.00', '11600.00', 'false', 'a', 1, '2024-10-22 17:52:09', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(338, 228, 118, 9, '75.00', '58.00', '0.00', NULL, '0.00', '522.00', 'false', 'a', NULL, NULL, 1, '2024-10-23 12:49:37', NULL, NULL, '202.134.10.132', 1),
(339, 229, 113, 1, '1200.00', '2000.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-10-23 12:53:54', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(340, 229, 111, 2, '7.50', '12.00', '0.00', NULL, '0.00', '24.00', 'false', 'a', 1, '2024-10-23 12:53:54', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(341, 229, 107, 20, '48.00', '50.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-23 12:53:54', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(342, 230, 108, 30, '38.00', '40.00', '0.00', NULL, '0.00', '1200.00', 'false', 'a', 1, '2024-10-23 12:55:28', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(343, 231, 119, 2, '9.00', '10.00', '0.00', NULL, '0.00', '20.00', 'false', 'a', 1, '2024-10-23 13:12:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(344, 232, 121, 2, '300.00', '500.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-23 13:21:22', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(345, 232, 120, 2, '300.00', '500.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-23 13:21:22', NULL, NULL, NULL, NULL, '202.134.10.132', 1);
INSERT INTO `tbl_sale_details` (`SaleDetails_SlNo`, `SaleMaster_IDNo`, `Product_IDNo`, `SaleDetails_TotalQuantity`, `Purchase_Rate`, `SaleDetails_Rate`, `SaleDetails_Discount`, `Discount_amount`, `SaleDetails_Tax`, `SaleDetails_TotalAmount`, `is_service`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(346, 233, 121, 10, '300.00', '500.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-10-24 15:27:11', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(347, 234, 121, 88, '300.00', '500.00', '0.00', NULL, '0.00', '44000.00', 'false', 'a', 1, '2024-10-24 17:41:42', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(348, 235, 112, 13.5, '7.50', '13.00', '0.00', NULL, '0.00', '175.50', 'false', 'a', 1, '2024-10-25 17:53:02', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(349, 236, 122, 50, '8.00', '9.00', '0.00', NULL, '0.00', '450.00', 'false', 'a', 1, '2024-10-25 17:54:49', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(350, 237, 125, 23, '8.75', '14.00', '0.00', NULL, '0.00', '322.00', 'false', 'a', 1, '2024-10-25 18:08:03', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(351, 238, 121, 10, '300.00', '500.00', '0.00', NULL, '0.00', '5000.00', 'false', 'a', 1, '2024-10-27 12:20:22', NULL, NULL, NULL, NULL, '59.152.1.197', 1),
(352, 238, 119, 20, '9.00', '10.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', 1, '2024-10-27 12:20:22', NULL, NULL, NULL, NULL, '59.152.1.197', 1),
(353, 239, 125, 100, '8.75', '100.00', '0.00', NULL, '0.00', '10000.00', 'false', 'a', 1, '2024-10-27 17:09:13', NULL, NULL, NULL, NULL, '103.159.73.80', 1),
(354, 240, 123, 10, '8.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-28 14:09:21', NULL, NULL, NULL, NULL, '103.112.65.26', 1),
(355, 241, 107, 55, '48.00', '50.00', '0.00', NULL, '0.00', '2750.00', 'false', 'a', 1, '2024-10-28 14:22:11', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(356, 241, 120, 12, '300.00', '500.00', '0.00', NULL, '0.00', '6000.00', 'false', 'a', 1, '2024-10-28 14:22:11', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(357, 242, 117, 1, '495.00', '550.00', '0.00', NULL, '0.00', '550.00', 'false', 'a', 1, '2024-10-29 12:47:11', NULL, NULL, NULL, NULL, '103.120.221.14', 1),
(358, 243, 117, 1, '495.00', '505.00', '0.00', NULL, '0.00', '505.00', 'false', 'a', 1, '2024-10-29 14:32:59', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(359, 244, 123, 20, '8.00', '120.00', '0.00', NULL, '0.00', '2400.00', 'false', 'a', 1, '2024-10-29 15:59:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(360, 245, 111, 20, '7.50', '12.00', '0.00', NULL, '0.00', '240.00', 'false', 'a', 1, '2024-10-30 06:09:06', NULL, NULL, NULL, NULL, '95.185.96.229', 1),
(361, 246, 126, 10, '500.00', '100.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-10-30 13:34:15', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(362, 247, 116, 1, '45.00', '60.00', '0.00', NULL, '0.00', '60.00', 'false', 'a', 1, '2024-10-30 16:10:20', NULL, NULL, NULL, NULL, '103.198.132.95', 1),
(363, 248, 121, 1, '300.00', '450.00', '0.00', NULL, '0.00', '450.00', 'false', 'a', 1, '2024-10-31 12:57:56', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(364, 249, 115, 50, '30.00', '40.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-10-31 13:08:07', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(365, 250, 120, 1, '300.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-10-31 17:16:51', NULL, NULL, NULL, NULL, '103.204.211.177', 1),
(366, 251, 127, 1, '1000.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-10-31 19:04:19', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(367, 252, 121, 2, '300.00', '400.00', '0.00', NULL, '0.00', '800.00', 'false', 'a', 1, '2024-10-31 19:06:26', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(368, 253, 127, 1, '1000.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-10-31 21:15:57', NULL, NULL, NULL, NULL, '37.111.206.110', 1),
(369, 254, 113, 2, '1200.00', '2000.00', '0.00', NULL, '0.00', '4000.00', 'false', 'a', 1, '2024-11-02 06:50:27', NULL, NULL, NULL, NULL, '37.111.212.71', 1),
(370, 255, 132, 30, '32.60', '35.00', '0.00', NULL, '0.00', '1050.00', 'false', 'a', 1, '2024-11-02 13:40:48', NULL, NULL, NULL, NULL, '103.159.73.74', 12),
(371, 256, 131, 12, '16.15', '17.12', '0.00', NULL, '0.00', '205.44', 'false', 'a', 1, '2024-11-02 13:43:01', NULL, NULL, NULL, NULL, '202.134.10.138', 1),
(372, 257, 127, 1, '1000.00', '1500.00', '0.00', NULL, '0.00', '1500.00', 'false', 'a', 1, '2024-11-02 18:59:20', NULL, NULL, NULL, NULL, '119.73.101.72', 1),
(373, 257, 121, 14, '300.00', '15.00', '0.00', NULL, '0.00', '210.00', 'false', 'a', 1, '2024-11-02 18:59:20', NULL, NULL, NULL, NULL, '119.73.101.72', 1),
(374, 258, 133, 2, '500.00', '800.00', '0.00', NULL, '0.00', '1600.00', 'false', 'a', 1, '2024-11-03 09:51:42', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(375, 259, 134, 1, '50000.00', '52000.00', '0.00', NULL, '0.00', '52000.00', 'false', 'a', 20, '2024-11-03 14:35:04', NULL, NULL, NULL, NULL, '114.130.157.23', 1),
(376, 260, 131, 20, '16.15', '17.12', '0.00', NULL, '0.00', '342.40', 'false', 'a', 1, '2024-11-03 15:45:57', NULL, NULL, NULL, NULL, '103.200.94.65', 1),
(377, 260, 126, 10, '500.00', '200.00', '0.00', NULL, '0.00', '2000.00', 'false', 'a', 1, '2024-11-03 15:45:57', NULL, NULL, NULL, NULL, '103.200.94.65', 1),
(378, 261, 120, 1, '300.00', '500.00', '0.00', NULL, '0.00', '500.00', 'false', 'a', 1, '2024-11-04 10:07:32', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(379, 262, 125, 2, '8.75', '20.00', '0.00', NULL, '0.00', '40.00', 'false', 'a', 1, '2024-11-04 16:55:21', NULL, NULL, NULL, NULL, '103.58.73.62', 1),
(380, 263, 125, 1, '8.75', '1200.00', '0.00', NULL, '0.00', '1200.00', 'false', 'a', 1, '2024-11-05 12:55:21', NULL, NULL, NULL, NULL, '103.159.170.10', 1),
(381, 264, 135, 12, '40.00', '50.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-11-05 20:28:22', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(382, 265, 135, 12, '40.00', '50.00', '0.00', NULL, '0.00', '600.00', 'false', 'a', 1, '2024-11-05 20:28:41', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(383, 266, 135, 5, '40.00', '50.00', '0.00', NULL, '0.00', '250.00', 'false', 'a', 1, '2024-11-05 20:29:17', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(384, 267, 136, 2, '0.00', '300.00', '0.00', NULL, '0.00', '600.00', 'true', 'a', 1, '2024-11-06 15:29:54', NULL, NULL, NULL, NULL, '116.204.154.34', 1),
(385, 268, 136, 1, '0.00', '300.00', '0.00', NULL, '0.00', '300.00', 'true', 'a', 1, '2024-11-06 15:31:29', NULL, NULL, NULL, NULL, '116.204.154.34', 1),
(386, 269, 136, 2, '0.00', '300.00', '0.00', NULL, '0.00', '600.00', 'true', 'a', 1, '2024-11-06 15:36:13', NULL, NULL, NULL, NULL, '116.204.154.34', 9),
(387, 270, 135, 20, '40.00', '50.00', '0.00', NULL, '0.00', '1000.00', 'false', 'a', 1, '2024-11-07 15:11:08', NULL, NULL, NULL, NULL, '103.152.106.49', 1),
(388, 270, 127, 5, '1000.00', '1500.00', '0.00', NULL, '0.00', '7500.00', 'false', 'a', 1, '2024-11-07 15:11:08', NULL, NULL, NULL, NULL, '103.152.106.49', 1),
(389, 270, 126, 30, '500.00', '130.00', '0.00', NULL, '0.00', '3900.00', 'false', 'a', 1, '2024-11-07 15:11:08', NULL, NULL, NULL, NULL, '103.152.106.49', 1),
(390, 271, 135, 1, '40.00', '50.00', '0.00', NULL, '0.00', '50.00', 'false', 'a', 1, '2024-11-09 13:19:36', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(391, 271, 121, 1, '300.00', '200.00', '0.00', NULL, '0.00', '200.00', 'false', 'a', 1, '2024-11-09 13:19:36', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(392, 272, 127, 1, '1000.00', '1250.00', '0.00', NULL, '0.00', '1250.00', 'false', 'a', 1, '2024-11-10 11:20:42', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(393, 273, 122, 12, '8.00', '10.00', '0.00', NULL, '0.00', '120.00', 'false', 'a', 1, '2024-11-10 23:51:44', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(394, 273, 112, 12, '7.50', '13.00', '0.00', NULL, '0.00', '156.00', 'false', 'a', 1, '2024-11-10 23:51:44', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(395, 274, 140, 1, '100.00', '110.00', '0.00', NULL, '0.00', '110.00', 'false', 'a', 22, '2024-11-12 12:28:07', NULL, NULL, NULL, NULL, '103.25.248.128', 1),
(396, 274, 139, 12, '45.00', '52.00', '0.00', NULL, '0.00', '624.00', 'false', 'a', 22, '2024-11-12 12:28:07', NULL, NULL, NULL, NULL, '103.25.248.128', 1),
(399, 275, 137, 14, '76.00', '86.00', '0.00', NULL, '0.00', '1204.00', 'false', 'a', NULL, NULL, 1, '2024-11-12 12:33:07', NULL, NULL, '202.134.14.143', 1),
(400, 275, 140, 12, '100.00', '110.00', '0.00', NULL, '0.00', '1320.00', 'false', 'a', NULL, NULL, 1, '2024-11-12 12:33:07', NULL, NULL, '202.134.14.143', 1),
(401, 276, 139, 12, '45.00', '55.00', '0.00', NULL, '0.00', '660.00', 'false', 'a', 1, '2024-11-12 12:36:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(402, 276, 138, 13, '80.00', '95.00', '0.00', NULL, '0.00', '1235.00', 'false', 'a', 1, '2024-11-12 12:36:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(403, 277, 140, 12, '100.00', '110.00', '0.00', NULL, '0.00', '1320.00', 'false', 'a', 1, '2024-11-12 12:42:18', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(404, 277, 138, 12, '80.00', '95.00', '0.00', NULL, '0.00', '1140.00', 'false', 'a', 1, '2024-11-12 12:42:18', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(405, 278, 139, 12, '45.00', '55.00', '0.00', NULL, '0.00', '660.00', 'false', 'a', 1, '2024-11-12 12:44:23', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(406, 279, 137, 10, '76.00', '86.00', '0.00', NULL, '0.00', '860.00', 'false', 'a', 1, '2024-11-12 12:44:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(408, 281, 137, 25, '76.00', '86.00', '0.00', NULL, '0.00', '2150.00', 'false', 'a', 1, '2024-11-12 12:51:34', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(410, 282, 137, 3, '76.00', '86.00', '0.00', NULL, '0.00', '258.00', 'false', 'a', NULL, NULL, 1, '2024-11-12 13:16:01', NULL, NULL, '202.134.14.143', 1),
(411, 280, 139, 8, '45.00', '55.00', '0.00', NULL, '0.00', '440.00', 'false', 'a', NULL, NULL, 1, '2024-11-12 13:16:39', NULL, NULL, '202.134.14.143', 1),
(412, 283, 139, 10, '45.00', '55.00', '0.00', NULL, '0.00', '550.00', 'false', 'a', 1, '2024-11-12 13:17:37', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(413, 284, 138, 15, '80.00', '95.00', '0.00', NULL, '0.00', '1425.00', 'false', 'a', 1, '2024-11-12 13:20:07', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(414, 285, 137, 10, '76.00', '86.00', '0.00', NULL, '0.00', '860.00', 'false', 'a', 1, '2024-11-12 13:21:51', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(415, 285, 138, 2, '80.00', '95.00', '0.00', NULL, '0.00', '190.00', 'false', 'a', 1, '2024-11-12 13:21:51', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(416, 285, 139, 2, '45.00', '55.00', '0.00', NULL, '0.00', '110.00', 'false', 'a', 1, '2024-11-12 13:21:51', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(417, 286, 140, 1, '100.00', '110.00', '0.00', NULL, '0.00', '110.00', 'false', 'a', 1, '2024-11-12 13:29:54', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(418, 287, 139, 20, '45.00', '55.00', '0.00', NULL, '0.00', '1100.00', 'false', 'a', 1, '2024-11-22 23:20:55', NULL, NULL, NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_master`
--

CREATE TABLE `tbl_sale_master` (
  `SaleMaster_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SalseCustomer_IDNo` int(11) DEFAULT NULL,
  `customerType` varchar(15) NOT NULL,
  `customerName` varchar(191) DEFAULT NULL,
  `customerMobile` varchar(15) DEFAULT NULL,
  `customerAddress` varchar(191) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `SaleMaster_SaleDate` date NOT NULL,
  `SaleMaster_Description` text DEFAULT NULL,
  `SaleMaster_SaleType` varchar(50) DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL,
  `SaleMaster_TotalSaleAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TotalDiscountAmount` decimal(18,2) NOT NULL,
  `SaleMaster_TaxAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Freight` decimal(18,2) DEFAULT 0.00,
  `SaleMaster_SubTotalAmount` decimal(18,2) NOT NULL,
  `cashPaid` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bankPaid` decimal(18,2) NOT NULL DEFAULT 0.00,
  `SaleMaster_PaidAmount` decimal(18,2) NOT NULL,
  `SaleMaster_DueAmount` decimal(18,2) NOT NULL,
  `SaleMaster_Previous_Due` double(18,2) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sale_master`
--

INSERT INTO `tbl_sale_master` (`SaleMaster_SlNo`, `SaleMaster_InvoiceNo`, `SalseCustomer_IDNo`, `customerType`, `customerName`, `customerMobile`, `customerAddress`, `employee_id`, `SaleMaster_SaleDate`, `SaleMaster_Description`, `SaleMaster_SaleType`, `accountId`, `SaleMaster_TotalSaleAmount`, `SaleMaster_TotalDiscountAmount`, `SaleMaster_TaxAmount`, `SaleMaster_Freight`, `SaleMaster_SubTotalAmount`, `cashPaid`, `bankPaid`, `SaleMaster_PaidAmount`, `SaleMaster_DueAmount`, `SaleMaster_Previous_Due`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '240100001', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-04-28', '', 'retail', NULL, '450.00', '48.00', '18.00', '0.00', '480.00', '450.00', '0.00', '450.00', '0.00', 0.00, 'a', 1, '2024-04-28 16:42:24', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, '240100002', 1, 'retail', NULL, NULL, NULL, NULL, '2024-04-29', '', 'retail', NULL, '216.00', '0.00', '6.00', '0.00', '210.00', '50.00', '0.00', '50.00', '166.00', 1000.00, 'a', 1, '2024-04-29 14:59:54', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, '240100003', 1, 'retail', NULL, NULL, NULL, NULL, '2024-04-29', 'test invoice', 'retail', NULL, '498.00', '0.00', '18.00', '0.00', '480.00', '400.00', '0.00', '400.00', '98.00', 966.00, 'a', 1, '2024-04-29 16:55:51', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(4, '240100004', 2, 'retail', NULL, NULL, NULL, NULL, '2024-05-02', '', 'retail', NULL, '300.00', '0.00', '0.00', '0.00', '300.00', '300.00', '0.00', '300.00', '0.00', 0.00, 'a', 1, '2024-05-02 14:44:17', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(5, '240100005', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-02', '', 'retail', NULL, '330.00', '0.00', '0.00', '0.00', '330.00', '330.00', '0.00', '330.00', '0.00', 0.00, 'a', 1, '2024-05-02 14:50:15', NULL, NULL, NULL, NULL, '103.120.222.143', 1),
(6, '240100006', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-07', '', 'retail', NULL, '250.00', '0.00', '0.00', '0.00', '250.00', '250.00', '0.00', '250.00', '0.00', 0.00, 'a', 1, '2024-05-07 17:37:27', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(7, '240100007', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-07', '', 'retail', NULL, '65.00', '5.00', '0.00', '0.00', '70.00', '65.00', '0.00', '65.00', '0.00', 0.00, 'a', 1, '2024-05-07 18:27:51', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(8, '240100008', 3, 'retail', NULL, NULL, NULL, 1, '2024-05-13', '', 'retail', NULL, '7000.00', '0.00', '0.00', '0.00', '7000.00', '7000.00', '0.00', '7000.00', '0.00', 0.00, 'a', 1, '2024-05-13 13:53:10', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(9, '240100009', 3, 'retail', NULL, NULL, NULL, 1, '2024-05-13', '', 'retail', NULL, '7000.00', '0.00', '0.00', '0.00', '7000.00', '2000.00', '0.00', '2000.00', '5000.00', 0.00, 'a', 1, '2024-05-13 13:55:12', NULL, NULL, NULL, NULL, '103.26.247.138', 1),
(10, '240100010', 4, 'retail', NULL, NULL, NULL, NULL, '2024-05-15', '', 'retail', NULL, '0.00', '0.00', '0.00', '0.00', '1026.00', '1026.00', '0.00', '1026.00', '0.00', 0.00, 'a', 1, '2024-05-15 01:01:31', NULL, NULL, NULL, NULL, '103.124.251.188', 1),
(11, '240100011', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-16', '', 'retail', NULL, '2565.00', '0.00', '0.00', '0.00', '2565.00', '2565.00', '0.00', '2565.00', '0.00', 0.00, 'a', 1, '2024-05-16 20:33:00', NULL, NULL, NULL, NULL, '103.144.201.97', 1),
(12, '240100012', 11, 'retail', NULL, NULL, NULL, NULL, '2024-05-18', '', 'retail', NULL, '78000.00', '0.00', '0.00', '0.00', '78000.00', '28000.00', '0.00', '28000.00', '50000.00', 0.00, 'a', 1, '2024-05-18 17:00:43', NULL, NULL, NULL, NULL, '202.134.9.155', 1),
(13, '240100013', 6, 'retail', NULL, NULL, NULL, NULL, '2024-05-20', 'test note', 'retail', NULL, '275.00', '0.00', '0.00', '0.00', '275.00', '275.00', '0.00', '275.00', '0.00', 0.00, 'a', 1, '2024-05-20 14:09:43', 1, '2024-05-20 14:50:00', NULL, NULL, '103.159.73.254', 1),
(14, '240100014', 7, 'retail', NULL, NULL, NULL, NULL, '2024-05-22', '', 'retail', NULL, '6000.00', '0.00', '0.00', '0.00', '6000.00', '250.00', '0.00', '250.00', '5750.00', 0.00, 'a', 1, '2024-05-22 11:31:43', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(15, '240100015', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-22', '', 'retail', NULL, '66.00', '0.00', '6.00', '0.00', '60.00', '66.00', '0.00', '66.00', '0.00', 0.00, 'a', 1, '2024-05-22 12:39:34', NULL, NULL, NULL, NULL, '103.135.209.240', 1),
(16, '240100016', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-22', '', 'retail', NULL, '2000.00', '0.00', '0.00', '0.00', '2000.00', '2000.00', '0.00', '2000.00', '0.00', 0.00, 'a', 1, '2024-05-22 12:42:12', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(17, '240100017', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-22', '', 'retail', NULL, '400.00', '0.00', '0.00', '0.00', '400.00', '400.00', '0.00', '400.00', '0.00', 0.00, 'a', 1, '2024-05-22 12:44:07', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(18, '240100018', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-22', 'fgfghfg', 'retail', NULL, '100.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '100.00', '0.00', 0.00, 'a', 1, '2024-05-22 12:50:56', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(19, '240100019', 12, 'retail', NULL, NULL, NULL, NULL, '2024-05-22', '', 'retail', NULL, '12.00', '0.00', '0.00', '0.00', '12.00', '0.00', '0.00', '0.00', '12.00', 0.00, 'a', 1, '2024-05-22 12:55:05', NULL, NULL, NULL, NULL, '92.96.213.180', 1),
(20, '240100020', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-22', '', 'retail', NULL, '7000.00', '0.00', '0.00', '0.00', '7000.00', '7000.00', '0.00', '7000.00', '0.00', 0.00, 'a', 1, '2024-05-22 16:34:28', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(21, '240100021', 13, 'retail', NULL, NULL, NULL, NULL, '2024-05-25', '', 'retail', NULL, '2440.00', '0.00', '0.00', '0.00', '2440.00', '2000.00', '0.00', '2000.00', '440.00', 0.00, 'a', 1, '2024-05-25 14:05:27', NULL, NULL, NULL, NULL, '58.145.187.240', 1),
(22, '240100022', NULL, 'G', 'Cash Customer', 'arnob', 'j', NULL, '2024-05-26', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-05-26 11:56:53', NULL, NULL, NULL, NULL, '103.92.160.197', 1),
(23, '240100023', 6, 'retail', NULL, NULL, NULL, NULL, '2024-05-27', '', 'retail', NULL, '820.00', '0.00', '0.00', '0.00', '820.00', '820.00', '0.00', '820.00', '0.00', 0.00, 'a', 1, '2024-05-27 13:36:46', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(24, '240100024', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-05-27', '', 'retail', NULL, '3500.00', '0.00', '0.00', '0.00', '3500.00', '3500.00', '0.00', '3500.00', '0.00', 0.00, 'a', 1, '2024-05-27 13:37:49', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(25, '240100025', 7, 'retail', NULL, NULL, NULL, NULL, '2024-05-27', '', 'retail', NULL, '2776.00', '0.00', '0.00', '0.00', '2776.00', '2776.00', '0.00', '2776.00', '0.00', 5750.00, 'a', 1, '2024-05-27 13:45:51', NULL, NULL, NULL, NULL, '103.112.52.69', 1),
(26, '240100026', 1, 'retail', NULL, NULL, NULL, NULL, '2024-05-28', '', 'retail', NULL, '3280.00', '0.00', '0.00', '0.00', '3280.00', '3280.00', '0.00', '3280.00', '0.00', 564.00, 'a', 1, '2024-05-29 10:39:57', NULL, NULL, NULL, NULL, '5.31.196.206', 1),
(27, '240100027', 1, 'retail', NULL, NULL, NULL, NULL, '2024-06-04', '', 'retail', NULL, '480000.00', '0.00', '0.00', '0.00', '480000.00', '285000.00', '0.00', '285000.00', '195000.00', 564.00, 'a', 1, '2024-06-04 17:28:43', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(28, '240100028', 6, 'retail', NULL, NULL, NULL, NULL, '2024-06-04', '', 'retail', NULL, '3750.00', '0.00', '0.00', '0.00', '3750.00', '2000.00', '0.00', '2000.00', '1750.00', 0.00, 'a', 1, '2024-06-04 18:18:49', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(29, '240100029', NULL, 'G', '', '', '', NULL, '2024-06-04', '', 'retail', NULL, '750.00', '0.00', '0.00', '0.00', '750.00', '750.00', '0.00', '750.00', '0.00', 0.00, 'a', 1, '2024-06-04 18:33:01', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(30, '240100030', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-04', '', 'retail', NULL, '150.00', '0.00', '0.00', '0.00', '150.00', '150.00', '0.00', '150.00', '0.00', 0.00, 'a', 1, '2024-06-04 18:34:26', NULL, NULL, NULL, NULL, '103.84.36.101', 1),
(31, '240100031', 14, 'retail', NULL, NULL, NULL, NULL, '2024-06-05', '', 'retail', NULL, '747.50', '0.00', '97.50', '0.00', '650.00', '747.50', '0.00', '747.50', '0.00', 0.00, 'a', 1, '2024-06-05 15:41:13', 1, '2024-06-06 21:06:07', NULL, NULL, '46.153.213.147', 1),
(32, '240100032', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-08', '', 'retail', NULL, '15.00', '0.00', '0.00', '0.00', '15.00', '15.00', '0.00', '15.00', '0.00', 0.00, 'a', 1, '2024-06-08 13:20:17', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(33, '240100033', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-08', '', 'retail', NULL, '15.00', '0.00', '0.00', '0.00', '15.00', '15.00', '0.00', '15.00', '0.00', 0.00, 'a', 1, '2024-06-08 13:20:28', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(34, '240100034', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-08', '', 'retail', NULL, '15.00', '0.00', '0.00', '0.00', '15.00', '15.00', '0.00', '15.00', '0.00', 0.00, 'a', 1, '2024-06-08 13:21:26', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(35, '240100035', 15, 'retail', NULL, NULL, NULL, NULL, '2024-06-08', '', 'retail', NULL, '260000.00', '0.00', '0.00', '0.00', '260000.00', '260000.00', '0.00', '260000.00', '0.00', 0.00, 'a', 1, '2024-06-08 14:02:31', 1, '2024-06-08 14:03:50', NULL, NULL, '103.203.93.233', 1),
(36, '240100036', 16, 'retail', NULL, NULL, NULL, 1, '2024-06-18', '', 'retail', NULL, '1352000.00', '0.00', '0.00', '0.00', '1352000.00', '0.00', '0.00', '0.00', '0.00', 0.00, 'a', 1, '2024-06-18 04:00:45', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(37, '240100037', 16, 'retail', NULL, NULL, NULL, 1, '2024-06-18', 'Due', 'retail', NULL, '75150.00', '0.00', '0.00', '0.00', '75150.00', '0.00', '0.00', '0.00', '0.00', 1352000.00, 'a', 1, '2024-06-18 04:04:20', 1, '2024-06-18 05:44:55', NULL, NULL, '103.147.166.161', 1),
(38, '240100038', 17, 'retail', NULL, NULL, NULL, NULL, '2024-06-19', '', 'retail', NULL, '113200.00', '0.00', '0.00', '0.00', '113200.00', '0.00', '0.00', '0.00', '113200.00', 16789000.00, 'a', 1, '2024-06-19 03:54:14', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(39, '240100039', 17, 'retail', NULL, NULL, NULL, 2, '2024-05-26', '', 'retail', NULL, '114534.00', '0.00', '0.00', '0.00', '114534.00', '0.00', '0.00', '0.00', '114534.00', 16902200.00, 'a', 1, '2024-06-19 03:56:48', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(40, '240100040', 18, 'retail', NULL, NULL, NULL, NULL, '2024-06-26', '', 'retail', NULL, '4498.00', '2.00', '0.00', '0.00', '4500.00', '4498.00', '0.00', '4498.00', '0.00', 0.00, 'a', 1, '2024-06-26 12:27:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(41, '240100041', 18, 'retail', NULL, NULL, NULL, NULL, '2024-06-26', '', 'retail', NULL, '99.75', '5.25', '0.00', '0.00', '105.00', '99.75', '0.00', '99.75', '0.00', -900.00, 'a', 1, '2024-06-26 15:25:03', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(42, '240100042', 19, 'retail', NULL, NULL, NULL, NULL, '2024-06-26', '', 'retail', NULL, '1060.00', '0.00', '0.00', '0.00', '1060.00', '1060.00', '0.00', '1060.00', '0.00', 0.00, 'a', 1, '2024-06-26 15:50:11', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(43, '240100043', 20, 'retail', NULL, NULL, NULL, NULL, '2024-06-26', '', 'retail', NULL, '450.00', '50.00', '0.00', '0.00', '500.00', '450.00', '0.00', '450.00', '0.00', 0.00, 'a', 1, '2024-06-26 16:16:53', NULL, NULL, NULL, NULL, '119.30.32.160', 1),
(44, '240100044', NULL, 'G', 'Cash Customer', '', '', 2, '2024-06-26', '', 'retail', NULL, '815.00', '0.00', '0.00', '0.00', '815.00', '815.00', '0.00', '815.00', '0.00', 0.00, 'a', 1, '2024-06-26 20:17:23', NULL, NULL, NULL, NULL, '103.216.58.98', 1),
(45, '240100045', 19, 'retail', NULL, NULL, NULL, NULL, '2024-06-26', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '600.00', '0.00', '600.00', '0.00', 0.00, 'a', 1, '2024-06-26 20:50:14', NULL, NULL, NULL, NULL, '103.99.183.69', 1),
(46, '240100046', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-27', '', 'retail', NULL, '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '60.00', '0.00', 0.00, 'a', 1, '2024-06-27 17:04:25', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(47, '240100047', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-27', '', 'retail', NULL, '660.00', '0.00', '0.00', '0.00', '660.00', '660.00', '0.00', '660.00', '0.00', 0.00, 'a', 1, '2024-06-27 17:08:20', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(48, '240100048', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-27', '', 'retail', NULL, '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '60.00', '0.00', 0.00, 'a', 1, '2024-06-27 17:08:45', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(49, '240100049', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-27', '', 'retail', NULL, '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '60.00', '0.00', 0.00, 'a', 1, '2024-06-27 17:10:54', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(50, '240100050', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-27', '', 'retail', NULL, '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '60.00', '0.00', 0.00, 'a', 1, '2024-06-27 17:11:41', NULL, NULL, NULL, NULL, '114.130.156.19', 1),
(51, '240100051', NULL, 'G', 'Cash Customer', '', '', 2, '2024-06-29', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '500.00', '0.00', '500.00', '0.00', 0.00, 'a', 1, '2024-06-29 11:05:27', NULL, NULL, NULL, NULL, '118.179.49.34', 1),
(52, '240100052', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-29', '', 'retail', NULL, '5000.00', '0.00', '0.00', '0.00', '5000.00', '5000.00', '0.00', '5000.00', '0.00', 0.00, 'a', 1, '2024-06-29 15:44:24', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(53, '240100053', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-06-29', '', 'retail', NULL, '4800.00', '200.00', '0.00', '0.00', '5000.00', '4800.00', '0.00', '4800.00', '0.00', 0.00, 'a', 1, '2024-06-29 16:00:04', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(54, '240100054', 8, 'retail', NULL, NULL, NULL, 2, '2024-06-29', '', 'wholesale', NULL, '1375.00', '0.00', '0.00', '0.00', '1375.00', '1375.00', '0.00', '1375.00', '0.00', 0.00, 'a', 1, '2024-06-29 16:52:21', NULL, NULL, NULL, NULL, '103.120.223.17', 1),
(55, '240100055', 14, 'retail', NULL, NULL, NULL, NULL, '2024-06-29', '', 'retail', NULL, '1250.00', '1250.00', '0.00', '0.00', '2500.00', '1250.00', '0.00', '1250.00', '0.00', 0.00, 'a', 1, '2024-06-29 19:50:39', NULL, NULL, NULL, NULL, '118.179.49.34', 1),
(56, '240400001', 22, 'retail', NULL, NULL, NULL, NULL, '2024-07-01', '', 'retail', NULL, '238000.00', '1000.00', '0.00', '0.00', '239000.00', '238000.00', '0.00', '238000.00', '0.00', 0.00, 'a', 5, '2024-07-01 13:12:26', 5, '2024-07-01 13:15:09', NULL, NULL, '118.179.69.241', 4),
(57, '240400002', 23, 'retail', NULL, NULL, NULL, NULL, '2024-07-01', '', 'retail', NULL, '233500.00', '500.00', '0.00', '0.00', '234000.00', '233500.00', '0.00', '233500.00', '0.00', 0.00, 'a', 5, '2024-07-01 13:24:57', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(58, '240100056', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-03', '', 'retail', NULL, '470.00', '0.00', '0.00', '0.00', '470.00', '470.00', '0.00', '470.00', '0.00', 0.00, 'a', 1, '2024-07-03 11:47:24', NULL, NULL, NULL, NULL, '116.206.253.166', 1),
(59, '240100057', 17, 'retail', NULL, NULL, NULL, NULL, '2024-07-04', '', 'retail', NULL, '430.00', '0.00', '0.00', '0.00', '430.00', '430.00', '0.00', '430.00', '0.00', 17016734.00, 'a', 1, '2024-07-04 20:02:41', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(60, '240100058', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-06', '', 'retail', NULL, '1380.00', '0.00', '0.00', '0.00', '1380.00', '1380.00', '0.00', '1380.00', '0.00', 0.00, 'a', 1, '2024-07-06 19:37:05', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(61, '240100059', 20, 'retail', NULL, NULL, NULL, NULL, '2024-07-06', '', 'retail', NULL, '1380.00', '0.00', '0.00', '0.00', '1380.00', '500.00', '0.00', '500.00', '880.00', 0.00, 'a', 1, '2024-07-06 19:40:59', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(62, '240100060', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-06', '', 'retail', NULL, '520.00', '0.00', '0.00', '0.00', '520.00', '520.00', '0.00', '520.00', '0.00', 0.00, 'a', 1, '2024-07-06 19:41:49', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(63, '240100061', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-06', '', 'retail', NULL, '520.00', '0.00', '0.00', '0.00', '520.00', '520.00', '0.00', '520.00', '0.00', 0.00, 'a', 1, '2024-07-06 19:43:37', NULL, NULL, NULL, NULL, '103.25.250.130', 1),
(64, '240100062', 24, 'retail', NULL, NULL, NULL, NULL, '2024-07-06', '', 'retail', NULL, '1166.00', '50.00', '0.00', '0.00', '1216.00', '0.00', '0.00', '0.00', '1166.00', 0.00, 'a', 1, '2024-07-06 20:03:34', 1, '2024-07-06 20:07:15', NULL, NULL, '103.25.250.130', 1),
(65, '240100063', 25, 'retail', NULL, NULL, NULL, NULL, '2024-07-06', '', 'retail', NULL, '58.00', '0.00', '0.00', '0.00', '58.00', '5.00', '0.00', '5.00', '53.00', 0.00, 'a', 1, '2024-07-06 22:06:59', NULL, NULL, NULL, NULL, '103.25.248.130', 1),
(66, '240100064', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-11', '', 'retail', NULL, '4660.00', '0.00', '0.00', '0.00', '4660.00', '4660.00', '0.00', '4660.00', '0.00', 0.00, 'a', 1, '2024-07-11 16:28:00', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(67, '240100065', 26, 'retail', NULL, NULL, NULL, NULL, '2024-07-11', '', 'retail', NULL, '30180.00', '0.00', '0.00', '0.00', '30180.00', '0.00', '0.00', '0.00', '30180.00', 0.00, 'a', 1, '2024-07-11 16:32:30', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(68, '240100066', 26, 'retail', NULL, NULL, NULL, NULL, '2024-07-11', '', 'retail', NULL, '1880.00', '0.00', '0.00', '0.00', '1880.00', '0.00', '0.00', '0.00', '0.00', 30180.00, 'a', 1, '2024-07-11 16:33:45', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(69, '240100067', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-11', '', 'retail', NULL, '104.00', '0.00', '0.00', '0.00', '104.00', '104.00', '0.00', '104.00', '0.00', 0.00, 'a', 1, '2024-07-11 16:40:09', NULL, NULL, NULL, NULL, '103.144.161.215', 1),
(70, '240100068', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-13', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-07-13 13:01:44', NULL, NULL, NULL, NULL, '103.166.24.246', 1),
(71, '240100069', 18, 'retail', NULL, NULL, NULL, NULL, '2024-07-15', '', 'retail', NULL, '24000.00', '0.00', '0.00', '0.00', '24000.00', '24000.00', '0.00', '24000.00', '0.00', -900.00, 'a', 1, '2024-07-15 16:37:57', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(72, '240100070', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-25', '', 'retail', NULL, '470.00', '0.00', '0.00', '0.00', '470.00', '470.00', '0.00', '470.00', '0.00', 0.00, 'a', 1, '2024-07-25 13:54:46', NULL, NULL, NULL, NULL, '103.159.72.94', 1),
(73, '240100071', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-28', '', 'retail', NULL, '25554.00', '0.00', '0.00', '0.00', '25554.00', '25554.00', '0.00', '25554.00', '0.00', 0.00, 'a', 1, '2024-07-28 12:44:17', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(74, '240100072', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-28', '', 'retail', NULL, '52000.00', '0.00', '0.00', '0.00', '52000.00', '52000.00', '0.00', '52000.00', '0.00', 0.00, 'a', 1, '2024-07-28 12:48:10', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(75, '240100073', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-29', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-07-29 11:47:15', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(76, '240100074', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-07-29', '', 'retail', NULL, '24000.00', '0.00', '0.00', '0.00', '24000.00', '24000.00', '0.00', '24000.00', '0.00', 0.00, 'a', 1, '2024-07-29 11:51:06', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(77, '240100075', 27, 'retail', NULL, NULL, NULL, NULL, '2024-07-29', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-07-29 11:52:25', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(78, '240100076', 13, 'retail', NULL, NULL, NULL, NULL, '2024-07-29', '', 'retail', NULL, '8000.00', '0.00', '0.00', '0.00', '8000.00', '8000.00', '0.00', '8000.00', '0.00', 0.00, 'a', 1, '2024-07-29 11:53:49', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(79, '240100077', 27, 'retail', NULL, NULL, NULL, NULL, '2024-07-29', '', 'retail', NULL, '4000.00', '0.00', '0.00', '0.00', '4000.00', '1000.00', '0.00', '1000.00', '3000.00', 0.00, 'a', 1, '2024-07-29 11:56:02', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(80, '240100078', 28, 'retail', NULL, NULL, NULL, NULL, '2024-07-29', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '6000.00', '0.00', '6000.00', '6000.00', 0.00, 'a', 1, '2024-07-29 11:58:39', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(81, '240100079', 28, 'retail', NULL, NULL, NULL, NULL, '2024-07-29', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '5000.00', '0.00', '5000.00', '7000.00', 0.00, 'a', 1, '2024-07-29 12:06:31', NULL, NULL, NULL, NULL, '103.174.189.2', 1),
(82, '240100080', 29, 'retail', NULL, NULL, NULL, NULL, '2024-07-30', '', 'retail', NULL, '4000.00', '0.00', '0.00', '0.00', '4000.00', '4000.00', '0.00', '4000.00', '0.00', 0.00, 'a', 1, '2024-07-30 00:16:13', NULL, NULL, NULL, NULL, '38.68.134.35', 1),
(83, '240100081', 30, 'retail', NULL, NULL, NULL, NULL, '2024-07-31', '', 'retail', NULL, '6000.00', '0.00', '0.00', '0.00', '6000.00', '6000.00', '0.00', '6000.00', '0.00', 0.00, 'a', 1, '2024-07-31 23:11:40', NULL, NULL, NULL, NULL, '23.157.40.26', 1),
(84, '240100082', 27, 'retail', NULL, NULL, NULL, NULL, '2024-08-01', '', 'retail', NULL, '600.30', '89.70', '0.00', '0.00', '690.00', '600.30', '0.00', '600.30', '0.00', 3000.00, 'a', 1, '2024-08-01 16:27:52', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(85, '240100083', 24, 'retail', NULL, NULL, NULL, NULL, '2024-08-01', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-08-01 16:50:36', 1, '2024-08-01 17:04:49', NULL, NULL, '37.111.243.41', 1),
(86, '240100084', 5, 'retail', NULL, NULL, NULL, NULL, '2024-08-01', '', 'wholesale', NULL, '24000.00', '500.00', '0.00', '0.00', '24500.00', '24000.00', '0.00', '24000.00', '0.00', 0.00, 'a', 1, '2024-08-01 16:56:33', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(87, '240100085', 5, 'retail', NULL, NULL, NULL, NULL, '2024-08-01', '', 'wholesale', NULL, '52.00', '0.00', '0.00', '0.00', '52.00', '52.00', '0.00', '52.00', '0.00', 0.00, 'a', 1, '2024-08-01 17:02:55', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(88, '240100086', 31, 'retail', NULL, NULL, NULL, 2, '2024-08-02', '', 'retail', NULL, '32000.00', '0.00', '0.00', '0.00', '32000.00', '32000.00', '0.00', '32000.00', '0.00', 0.00, 'a', 1, '2024-08-02 01:07:41', NULL, NULL, NULL, NULL, '37.111.243.254', 1),
(89, '240100087', 31, 'retail', NULL, NULL, NULL, 1, '2024-08-13', '', 'retail', NULL, '4000.00', '0.00', '0.00', '0.00', '4000.00', '4000.00', '0.00', '4000.00', '0.00', 0.00, 'a', 1, '2024-08-13 20:21:49', 1, '2024-08-13 20:23:16', NULL, NULL, '103.204.210.88', 1),
(90, '240100088', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-17', '', 'retail', NULL, '67450.00', '0.00', '0.00', '0.00', '67450.00', '67450.00', '0.00', '67450.00', '0.00', 0.00, 'a', 1, '2024-08-17 06:50:26', NULL, NULL, NULL, NULL, '103.175.242.47', 1),
(91, '240100089', 8, 'retail', NULL, NULL, NULL, NULL, '2024-08-25', '', 'wholesale', NULL, '19000.00', '450.00', '0.00', '0.00', '19450.00', '19000.00', '0.00', '19000.00', '0.00', 0.00, 'a', 1, '2024-08-25 20:37:39', NULL, NULL, NULL, NULL, '103.150.64.177', 1),
(92, '240100090', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-28', '', 'retail', NULL, '100.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '100.00', '0.00', 0.00, 'a', 1, '2024-08-28 19:36:16', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(93, '240100091', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-28', '', 'retail', NULL, '11500.00', '0.00', '0.00', '0.00', '11500.00', '11500.00', '0.00', '11500.00', '0.00', 0.00, 'a', 1, '2024-08-28 19:37:44', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(94, '240100092', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-08-28', '', 'retail', NULL, '50.00', '0.00', '0.00', '0.00', '50.00', '50.00', '0.00', '50.00', '0.00', 0.00, 'a', 1, '2024-08-28 19:40:01', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(95, '240100093', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-08-28', '', 'retail', NULL, '50.00', '0.00', '0.00', '0.00', '50.00', '50.00', '0.00', '50.00', '0.00', 0.00, 'a', 1, '2024-08-28 19:40:13', NULL, NULL, NULL, NULL, '103.159.72.93', 1),
(96, '240100094', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '5.00', '0.00', '0.00', '0.00', '5.00', '5.00', '0.00', '5.00', '0.00', 0.00, 'a', 1, '2024-08-29 09:58:03', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(97, '240100095', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '5.00', '0.00', '0.00', '0.00', '5.00', '5.00', '0.00', '5.00', '0.00', 0.00, 'a', 1, '2024-08-29 10:01:00', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(98, '240100096', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '5.00', '0.00', '0.00', '0.00', '5.00', '5.00', '0.00', '5.00', '0.00', 0.00, 'a', 1, '2024-08-29 10:03:03', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(99, '240100097', 32, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '100.00', '0.00', '100.00', '400.00', 0.00, 'a', 1, '2024-08-29 10:18:59', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(100, '240100098', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '11500.00', '0.00', '0.00', '0.00', '11500.00', '10000.00', '0.00', '10000.00', '1500.00', 200.00, 'a', 1, '2024-08-29 10:21:34', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(101, '240100099', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '250.00', '0.00', '250.00', '250.00', 1700.00, 'a', 1, '2024-08-29 10:35:16', NULL, NULL, NULL, NULL, '103.159.72.76', 1),
(102, '240100100', 31, 'retail', NULL, NULL, NULL, NULL, '2024-08-29', '', 'retail', NULL, '4226.00', '0.00', '0.00', '0.00', '4226.00', '4226.00', '0.00', '4226.00', '0.00', 1200.00, 'a', 1, '2024-08-29 10:51:04', 1, '2024-08-31 10:50:58', NULL, NULL, '103.177.122.234', 1),
(103, '240100101', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-08-31', '', 'retail', NULL, '430.00', '0.00', '0.00', '0.00', '430.00', '430.00', '0.00', '430.00', '0.00', 0.00, 'a', 1, '2024-08-31 15:48:30', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(104, '240100102', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-08-31', '', 'retail', NULL, '5995.00', '5.00', '0.00', '0.00', '6000.00', '5995.00', '0.00', '5995.00', '0.00', 0.00, 'a', 1, '2024-08-31 15:51:01', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(105, '240100103', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-08-31', '', 'retail', NULL, '5995.00', '5.00', '0.00', '0.00', '6000.00', '5995.00', '0.00', '5995.00', '0.00', 0.00, 'a', 1, '2024-08-31 15:51:12', NULL, NULL, NULL, NULL, '203.76.220.97', 1),
(106, '240100104', 32, 'retail', NULL, NULL, NULL, NULL, '2024-09-01', '', 'retail', NULL, '11500.00', '0.00', '0.00', '0.00', '11500.00', '11500.00', '0.00', '11500.00', '0.00', 200.00, 'a', 1, '2024-09-01 17:21:57', NULL, NULL, NULL, NULL, '103.159.72.66', 1),
(107, '240100105', 31, 'retail', NULL, NULL, NULL, NULL, '2024-09-01', '', 'retail', NULL, '200.00', '0.00', '0.00', '0.00', '200.00', '0.00', '0.00', '0.00', '200.00', 1200.00, 'a', 1, '2024-09-01 17:22:55', NULL, NULL, NULL, NULL, '103.159.72.66', 1),
(108, '240100106', NULL, 'G', 'Cash Customer', '', '', 2, '2024-09-02', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '500.00', '0.00', '500.00', '0.00', 0.00, 'a', 1, '2024-09-02 16:32:08', NULL, NULL, NULL, NULL, '103.159.72.69', 1),
(109, '240100107', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '23.40', '2.60', '0.00', '0.00', '26.00', '23.40', '0.00', '23.40', '0.00', 0.00, 'a', 1, '2024-09-04 09:57:07', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(110, '240100108', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '364.80', '91.20', '0.00', '0.00', '456.00', '364.80', '0.00', '364.80', '0.00', 0.00, 'a', 1, '2024-09-04 09:58:09', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(111, '240100109', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '6000.00', '30000.00', '0.00', '0.00', '36000.00', '6000.00', '0.00', '6000.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:06:22', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(112, '240100110', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '11500.00', '0.00', '0.00', '0.00', '11500.00', '11500.00', '0.00', '11500.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:10:45', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(113, '240100111', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '218000.00', '2000.00', '0.00', '0.00', '220000.00', '218000.00', '0.00', '218000.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:18:04', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(114, '240100112', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '219000.00', '1000.00', '0.00', '0.00', '220000.00', '219000.00', '0.00', '219000.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:29:23', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(115, '240100113', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '119000.00', '1000.00', '0.00', '0.00', '120000.00', '119000.00', '0.00', '119000.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:32:56', NULL, NULL, NULL, NULL, '103.159.72.115', 1),
(116, '240100114', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '120000.00', '0.00', '0.00', '0.00', '120000.00', '120000.00', '0.00', '120000.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:39:16', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(117, '240100115', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '290.00', '10.00', '0.00', '0.00', '300.00', '290.00', '0.00', '290.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:41:43', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(118, '240100116', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '300.00', '0.00', '0.00', '0.00', '300.00', '300.00', '0.00', '300.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:49:44', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(119, '240100117', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '79.00', '1.00', '0.00', '0.00', '80.00', '79.00', '0.00', '79.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:58:25', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(120, '240100118', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '79.00', '1.00', '0.00', '0.00', '80.00', '79.00', '0.00', '79.00', '0.00', 0.00, 'a', 1, '2024-09-04 10:58:32', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(121, '240100119', 31, 'retail', NULL, NULL, NULL, NULL, '2024-09-04', '', 'retail', NULL, '80.00', '0.00', '0.00', '0.00', '80.00', '50.00', '0.00', '50.00', '30.00', 1400.00, 'a', 1, '2024-09-04 11:08:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(122, '240100120', 31, 'retail', NULL, NULL, NULL, NULL, '2024-09-04', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '500.00', '0.00', '500.00', '100.00', 1430.00, 'a', 1, '2024-09-04 11:13:04', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(123, '240100121', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '70.00', '10.00', '0.00', '0.00', '80.00', '70.00', '0.00', '70.00', '0.00', 0.00, 'a', 1, '2024-09-04 11:15:03', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(124, '240100122', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '70.00', '10.00', '0.00', '0.00', '80.00', '70.00', '0.00', '70.00', '0.00', 0.00, 'a', 1, '2024-09-04 11:19:09', NULL, NULL, NULL, NULL, '103.159.72.102', 1),
(125, '240100123', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '3600.00', '0.00', '0.00', '0.00', '3600.00', '3600.00', '0.00', '3600.00', '0.00', 0.00, 'a', 1, '2024-09-04 11:51:25', NULL, NULL, NULL, NULL, '103.49.203.110', 1),
(126, '240100124', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-04', '', 'retail', NULL, '100000.00', '0.00', '0.00', '0.00', '100000.00', '100000.00', '0.00', '100000.00', '0.00', 0.00, 'a', 1, '2024-09-04 13:03:36', NULL, NULL, NULL, NULL, '103.253.47.102', 1),
(127, '240100125', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-05', '', 'retail', NULL, '8034000.00', '0.00', '0.00', '0.00', '8034000.00', '8034000.00', '0.00', '8034000.00', '0.00', 0.00, 'a', 1, '2024-09-05 17:55:16', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(128, '240500001', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-07', '', 'retail', NULL, '800000.00', '0.00', '0.00', '0.00', '800000.00', '800000.00', '0.00', '800000.00', '0.00', 0.00, 'a', 1, '2024-09-07 11:26:19', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(129, '240500002', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-07', '', 'retail', NULL, '400.00', '0.00', '0.00', '0.00', '400.00', '400.00', '0.00', '400.00', '0.00', 0.00, 'a', 1, '2024-09-07 11:28:49', NULL, NULL, NULL, NULL, '103.49.203.110', 5),
(130, '240100126', 24, 'retail', NULL, NULL, NULL, NULL, '2024-09-07', '', 'retail', NULL, '30116.00', '0.00', '0.00', '0.00', '30116.00', '0.00', '0.00', '0.00', '30116.00', 0.00, 'a', 1, '2024-09-07 13:27:33', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(131, '240100127', 19, 'retail', NULL, NULL, NULL, NULL, '2024-09-07', '', 'retail', NULL, '80000.00', '0.00', '0.00', '0.00', '80000.00', '80000.00', '0.00', '80000.00', '0.00', 0.00, 'a', 1, '2024-09-07 13:34:14', NULL, NULL, NULL, NULL, '103.174.189.163', 1),
(132, '240500003', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-07', '', 'retail', NULL, '320.00', '0.00', '0.00', '0.00', '320.00', '320.00', '0.00', '320.00', '0.00', 0.00, 'a', 1, '2024-09-07 18:32:09', NULL, NULL, NULL, NULL, '202.134.9.136', 5),
(133, '240500004', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-07', '', 'retail', NULL, '378.00', '40.00', '18.00', '0.00', '400.00', '378.00', '0.00', '378.00', '0.00', 0.00, 'a', 1, '2024-09-07 18:34:08', NULL, NULL, NULL, NULL, '202.134.9.136', 5),
(134, '240100128', 8, 'retail', NULL, NULL, NULL, NULL, '2024-09-08', '', 'wholesale', NULL, '7084.00', '0.00', '0.00', '0.00', '7084.00', '5000.00', '0.00', '5000.00', '2084.00', 0.00, 'a', 1, '2024-09-08 12:27:05', 1, '2024-09-08 12:27:28', NULL, NULL, '113.11.122.205', 1),
(135, '240100129', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-08', 'receive by Bank', 'retail', NULL, '126000.00', '0.00', '0.00', '0.00', '126000.00', '126000.00', '0.00', '126000.00', '0.00', 0.00, 'a', 1, '2024-09-08 12:32:09', NULL, NULL, NULL, NULL, '113.11.122.205', 1),
(136, '240100130', 27, 'retail', NULL, NULL, NULL, NULL, '2024-09-08', '', 'retail', NULL, '40000.00', '0.00', '0.00', '0.00', '40000.00', '20000.00', '0.00', '20000.00', '20000.00', 3000.00, 'a', 1, '2024-09-08 15:05:41', NULL, NULL, NULL, NULL, '103.136.1.58', 1),
(137, '240500005', NULL, 'G', 'Anik', '01632863445', 'Savar', NULL, '2024-09-08', '', 'retail', NULL, '800.00', '0.00', '0.00', '0.00', '800.00', '800.00', '0.00', '800.00', '0.00', 0.00, 'a', 8, '2024-09-08 20:41:11', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(138, '240500006', NULL, 'G', 'Anik', '01632863445', 'Kabirpur,Savar.Dhaka', NULL, '2024-09-08', '', 'retail', NULL, '385.00', '15.00', '0.00', '0.00', '400.00', '385.00', '0.00', '385.00', '0.00', 0.00, 'a', 8, '2024-09-08 21:50:46', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(139, '240100131', 19, 'retail', NULL, NULL, NULL, NULL, '2024-09-09', '', 'retail', NULL, '40.00', '0.00', '0.00', '0.00', '40.00', '40.00', '0.00', '40.00', '0.00', 0.00, 'a', 1, '2024-09-09 16:35:45', NULL, NULL, NULL, NULL, '103.155.184.150', 1),
(140, '240600001', 33, 'retail', NULL, NULL, NULL, NULL, '2024-09-09', '', 'wholesale', NULL, '164136.00', '0.00', '0.00', '0.00', '164136.00', '164136.00', '0.00', '164136.00', '0.00', 0.00, 'a', 8, '2024-09-09 17:05:28', NULL, NULL, NULL, NULL, '103.150.64.182', 6),
(141, '240100132', 30, 'retail', NULL, NULL, NULL, NULL, '2024-09-10', '', 'retail', NULL, '840000.00', '0.00', '0.00', '0.00', '840000.00', '840000.00', '0.00', '840000.00', '0.00', 0.00, 'a', 1, '2024-09-10 11:46:53', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(142, '240100133', 31, 'retail', NULL, NULL, NULL, NULL, '2024-09-10', '', 'retail', NULL, '258000.00', '0.00', '18000.00', '0.00', '240000.00', '258000.00', '0.00', '258000.00', '0.00', -48470.00, 'a', 1, '2024-09-10 12:01:56', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(143, '240100134', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-12', '', 'retail', NULL, '5750.00', '0.00', '0.00', '0.00', '5750.00', '5750.00', '0.00', '5750.00', '0.00', 0.00, 'a', 1, '2024-09-12 11:34:30', NULL, NULL, NULL, NULL, '103.191.98.194', 1),
(144, '240100135', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-12', '', 'retail', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '1000.00', '0.00', 0.00, 'a', 1, '2024-09-12 13:04:20', NULL, NULL, NULL, NULL, '103.77.63.39', 1),
(145, '240100136', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-12', '', 'retail', NULL, '541900.00', '0.00', '0.00', '0.00', '541900.00', '541900.00', '0.00', '541900.00', '0.00', 0.00, 'a', 1, '2024-09-12 15:40:24', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(146, '240100137', 31, 'retail', NULL, NULL, NULL, 1, '2024-09-01', '', 'retail', NULL, '1204000.00', '0.00', '0.00', '0.00', '1204000.00', '1204000.00', '0.00', '1204000.00', '0.00', -438470.00, 'a', 1, '2024-09-12 15:54:10', 1, '2024-09-15 17:01:27', NULL, NULL, '42.0.7.237', 1),
(147, '240100138', 29, 'retail', NULL, NULL, NULL, NULL, '2024-09-12', '', 'retail', NULL, '2203000.00', '0.00', '0.00', '0.00', '2203000.00', '2203000.00', '0.00', '2203000.00', '0.00', 0.00, 'a', 1, '2024-09-12 18:44:17', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(148, '240600002', 34, 'retail', NULL, NULL, NULL, NULL, '2024-09-13', '', 'retail', NULL, '39690.00', '6500.00', '0.00', '0.00', '46190.00', '30000.00', '0.00', '30000.00', '9690.00', 0.00, 'a', 1, '2024-09-13 12:27:54', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(149, '240600003', 33, 'retail', NULL, NULL, NULL, NULL, '2024-09-13', '', 'wholesale', NULL, '13600.00', '0.00', '0.00', '0.00', '13600.00', '1700.00', '0.00', '1700.00', '11900.00', 0.00, 'a', 1, '2024-09-13 20:50:42', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(150, '240500007', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-13', '', 'retail', NULL, '80000.00', '0.00', '0.00', '0.00', '80000.00', '80000.00', '0.00', '80000.00', '0.00', 0.00, 'a', 11, '2024-09-13 21:02:22', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(151, '240100139', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-14', '', 'retail', NULL, '2400.00', '0.00', '0.00', '0.00', '2400.00', '2400.00', '0.00', '2400.00', '0.00', 0.00, 'a', 1, '2024-09-14 15:02:48', NULL, NULL, NULL, NULL, '37.111.203.102', 1),
(152, '240700001', NULL, 'G', 'Cash Customer', '0', '0', NULL, '2024-09-16', '', 'retail', NULL, '80000.00', '0.00', '0.00', '0.00', '80000.00', '80000.00', '0.00', '80000.00', '0.00', 0.00, 'a', 1, '2024-09-16 19:51:58', NULL, NULL, NULL, NULL, '103.150.64.179', 7),
(153, '240100140', 27, 'retail', NULL, NULL, NULL, NULL, '2024-09-17', '', 'retail', NULL, '40.00', '0.00', '0.00', '0.00', '40.00', '40.00', '0.00', '40.00', '0.00', 23000.00, 'a', 1, '2024-09-17 14:24:33', NULL, NULL, NULL, NULL, '37.111.206.75', 1),
(154, '240100141', 27, 'retail', NULL, NULL, NULL, NULL, '2024-09-17', '', 'retail', NULL, '20.00', '0.00', '0.00', '0.00', '20.00', '20.00', '0.00', '20.00', '0.00', 23000.00, 'a', 1, '2024-09-17 14:30:03', NULL, NULL, NULL, NULL, '37.111.206.75', 1),
(155, '240100142', 26, 'retail', NULL, NULL, NULL, NULL, '2024-09-17', '', 'retail', NULL, '341200.00', '0.00', '0.00', '0.00', '341200.00', '341200.00', '0.00', '341200.00', '0.00', 12060.00, 'a', 1, '2024-09-17 17:16:54', NULL, NULL, NULL, NULL, '37.111.206.133', 1),
(156, '240100143', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-18', '', 'retail', NULL, '12000.00', '0.00', '0.00', '0.00', '12000.00', '12000.00', '0.00', '12000.00', '0.00', 0.00, 'a', 1, '2024-09-18 10:47:33', NULL, NULL, NULL, NULL, '146.70.46.30', 1),
(157, '240100144', 27, 'retail', NULL, NULL, NULL, NULL, '2024-09-19', '', 'retail', NULL, '13000.00', '0.00', '0.00', '0.00', '13000.00', '10000.00', '0.00', '10000.00', '3000.00', 23000.00, 'a', 1, '2024-09-19 13:37:55', NULL, NULL, NULL, NULL, '202.181.16.13', 1),
(158, '240100145', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-20', '', 'retail', NULL, '69626.70', '703.30', '0.00', '0.00', '70330.00', '69626.70', '0.00', '69626.70', '0.00', 0.00, 'a', 1, '2024-09-20 06:12:25', NULL, NULL, NULL, NULL, '103.78.254.137', 1),
(159, '240100146', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-22', '', 'retail', NULL, '96000.00', '0.00', '0.00', '0.00', '96000.00', '96000.00', '0.00', '96000.00', '0.00', 0.00, 'a', 1, '2024-09-22 12:25:19', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(160, '240100147', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-22', '', 'retail', NULL, '28.00', '0.00', '0.00', '0.00', '28.00', '28.00', '0.00', '28.00', '0.00', 0.00, 'a', 1, '2024-09-22 12:26:32', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(161, '240100148', 35, 'retail', NULL, NULL, NULL, NULL, '2024-09-22', '', 'wholesale', NULL, '36000.00', '0.00', '0.00', '0.00', '36000.00', '10000.00', '0.00', '10000.00', '26000.00', 30000.00, 'a', 1, '2024-09-22 13:30:36', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(162, '240100149', 35, 'retail', NULL, NULL, NULL, NULL, '2024-09-22', '', 'wholesale', NULL, '18000.00', '0.00', '0.00', '0.00', '18000.00', '6000.00', '0.00', '6000.00', '12000.00', 56000.00, 'a', 1, '2024-09-22 13:36:40', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(163, '240100150', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-22', '', 'retail', NULL, '7600.00', '0.00', '0.00', '0.00', '7600.00', '7600.00', '0.00', '7600.00', '0.00', 0.00, 'a', 1, '2024-09-22 14:29:33', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(164, '240100151', 32, 'retail', NULL, NULL, NULL, NULL, '2024-09-22', '', 'retail', NULL, '7600.00', '0.00', '0.00', '0.00', '7600.00', '0.00', '0.00', '0.00', '7600.00', -500.00, 'a', 1, '2024-09-22 14:30:33', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(165, '240100152', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-09-22', '', 'retail', NULL, '3800.00', '0.00', '0.00', '0.00', '3800.00', '3800.00', '0.00', '3800.00', '0.00', 0.00, 'a', 1, '2024-09-22 14:56:11', NULL, NULL, NULL, NULL, '202.86.219.96', 1),
(166, '240100153', NULL, 'G', 'jk', '014855', 'll', NULL, '2024-09-26', 'saie', 'retail', NULL, '360000.00', '0.00', '0.00', '0.00', '360000.00', '360000.00', '0.00', '360000.00', '0.00', 0.00, 'a', 1, '2024-09-26 12:11:38', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(167, '240100154', 30, 'retail', NULL, NULL, NULL, NULL, '2024-09-26', '', 'retail', NULL, '180000.00', '0.00', '0.00', '0.00', '180000.00', '180000.00', '0.00', '180000.00', '0.00', -6000.00, 'a', 1, '2024-09-26 12:15:53', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(168, '240100155', 0, 'retail', NULL, NULL, NULL, NULL, '2024-09-28', '', 'retail', NULL, '9000.00', '0.00', '0.00', '0.00', '9000.00', '9000.00', '0.00', '9000.00', '0.00', 0.00, 'a', 1, '2024-09-28 15:46:53', NULL, NULL, NULL, NULL, '103.120.222.10', 1),
(169, '240100156', 0, 'retail', NULL, NULL, NULL, NULL, '2024-09-28', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '600.00', '0.00', '600.00', '0.00', 0.00, 'a', 1, '2024-09-28 17:02:22', NULL, NULL, NULL, NULL, '103.159.73.102', 1),
(170, '240600004', 36, 'retail', NULL, NULL, NULL, NULL, '2024-09-28', '', 'retail', NULL, '84000.00', '0.00', '0.00', '0.00', '84000.00', '84000.00', '0.00', '84000.00', '0.00', 0.00, 'a', 1, '2024-09-28 17:09:07', NULL, NULL, NULL, NULL, '103.159.73.102', 6),
(171, '240100157', NULL, 'G', 'aa', '01', 'dd', NULL, '2024-09-29', '', 'wholesale', NULL, '11500.00', '0.00', '0.00', '0.00', '11500.00', '11500.00', '0.00', '11500.00', '0.00', 0.00, 'a', 1, '2024-09-29 12:52:59', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(172, '240100158', NULL, 'G', 'Cash Customer', '2', '2', NULL, '2024-09-29', '', 'retail', NULL, '40200.00', '0.00', '0.00', '0.00', '40200.00', '40200.00', '0.00', '40200.00', '0.00', 0.00, 'a', 1, '2024-09-29 12:55:49', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(173, '240100159', 30, 'retail', NULL, NULL, NULL, NULL, '2024-09-29', '', 'retail', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '1000.00', '0.00', -6000.00, 'a', 1, '2024-09-29 16:08:37', NULL, NULL, NULL, NULL, '103.159.170.30', 1),
(174, '240100160', 32, 'retail', NULL, NULL, NULL, NULL, '2024-09-29', '', 'retail', NULL, '6000.00', '0.00', '0.00', '0.00', '6000.00', '500.00', '0.00', '500.00', '5500.00', 2100.00, 'a', 1, '2024-09-29 16:43:56', NULL, NULL, NULL, NULL, '103.159.73.99', 1),
(175, '240100161', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-02', '', 'retail', NULL, '38000.00', '0.00', '0.00', '0.00', '38000.00', '38000.00', '0.00', '38000.00', '0.00', 0.00, 'a', 1, '2024-10-02 12:12:40', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(176, '240100162', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-02', '', 'retail', NULL, '38000.00', '0.00', '0.00', '0.00', '38000.00', '38000.00', '0.00', '38000.00', '0.00', 0.00, 'a', 1, '2024-10-02 12:14:50', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(177, '240100163', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-03', '', 'retail', NULL, '1800.00', '0.00', '0.00', '0.00', '1800.00', '1800.00', '0.00', '1800.00', '0.00', 0.00, 'a', 1, '2024-10-03 19:58:47', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(178, '240100164', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-04', '', 'retail', NULL, '4000.00', '0.00', '0.00', '0.00', '4000.00', '4000.00', '0.00', '4000.00', '0.00', 0.00, 'a', 1, '2024-10-04 00:02:02', NULL, NULL, NULL, NULL, '160.20.117.139', 1),
(179, '240100165', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-04', '', 'retail', NULL, '1650.00', '0.00', '0.00', '0.00', '1650.00', '1650.00', '0.00', '1650.00', '0.00', 0.00, 'a', 1, '2024-10-04 18:40:48', NULL, NULL, NULL, NULL, '103.213.237.113', 1),
(180, '240100166', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-04', '', 'retail', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '1000.00', '0.00', 0.00, 'a', 1, '2024-10-04 19:10:58', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(181, '240100167', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-05', '', 'retail', NULL, '5000.00', '0.00', '0.00', '0.00', '5000.00', '5000.00', '0.00', '5000.00', '0.00', 0.00, 'a', 1, '2024-10-05 13:15:20', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(182, '240100168', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-05', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '600.00', '0.00', '600.00', '0.00', 0.00, 'a', 1, '2024-10-05 13:17:58', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(183, '240100169', 37, 'retail', NULL, NULL, NULL, NULL, '2024-10-06', 'Afzal Transport Booking', 'wholesale', NULL, '26480.00', '0.00', '0.00', '80.00', '26400.00', '26480.00', '0.00', '26480.00', '0.00', 0.00, 'a', 1, '2024-10-06 12:56:18', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(184, '240100170', 35, 'retail', NULL, NULL, NULL, NULL, '2024-10-06', '', 'wholesale', NULL, '30400.00', '0.00', '0.00', '0.00', '30400.00', '30400.00', '0.00', '30400.00', '0.00', 55000.00, 'a', 1, '2024-10-06 13:46:47', 1, '2024-10-06 14:20:17', NULL, NULL, '103.185.224.24', 1),
(185, '240200001', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-06', '', 'retail', NULL, '10500.00', '60.00', '0.00', '0.00', '10560.00', '10500.00', '0.00', '10500.00', '0.00', 0.00, 'a', 1, '2024-10-06 14:04:57', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(186, '240200002', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-06', '', 'retail', NULL, '13200.00', '0.00', '0.00', '0.00', '13200.00', '13200.00', '0.00', '13200.00', '0.00', 0.00, 'a', 1, '2024-10-06 14:07:09', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(187, '240100171', 32, 'retail', NULL, NULL, NULL, 1, '2024-10-06', '', 'retail', NULL, '8800.00', '0.00', '0.00', '0.00', '8800.00', '8400.00', '0.00', '8400.00', '400.00', 7600.00, 'a', 1, '2024-10-06 16:30:39', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(188, '240100172', 32, 'retail', NULL, NULL, NULL, 1, '2024-10-06', '', 'retail', NULL, '5280.00', '0.00', '0.00', '0.00', '5280.00', '3000.00', '0.00', '3000.00', '2280.00', 0.00, 'a', 1, '2024-10-06 23:09:29', NULL, NULL, NULL, NULL, '103.60.175.40', 1),
(189, '240100173', 38, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '56400.00', '200.00', '0.00', '200.00', '56400.00', '30000.00', '0.00', '30000.00', '26400.00', 0.00, 'a', 1, '2024-10-07 12:06:50', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(190, '240100174', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-07', '', 'retail', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '1000.00', '0.00', 0.00, 'a', 1, '2024-10-07 13:55:42', NULL, NULL, NULL, NULL, '103.10.194.7', 1);
INSERT INTO `tbl_sale_master` (`SaleMaster_SlNo`, `SaleMaster_InvoiceNo`, `SalseCustomer_IDNo`, `customerType`, `customerName`, `customerMobile`, `customerAddress`, `employee_id`, `SaleMaster_SaleDate`, `SaleMaster_Description`, `SaleMaster_SaleType`, `accountId`, `SaleMaster_TotalSaleAmount`, `SaleMaster_TotalDiscountAmount`, `SaleMaster_TaxAmount`, `SaleMaster_Freight`, `SaleMaster_SubTotalAmount`, `cashPaid`, `bankPaid`, `SaleMaster_PaidAmount`, `SaleMaster_DueAmount`, `SaleMaster_Previous_Due`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(191, '240100175', 39, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'wholesale', NULL, '9000.00', '0.00', '0.00', '0.00', '9000.00', '2700.00', '0.00', '2700.00', '6300.00', 0.00, 'a', 1, '2024-10-07 14:01:41', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(192, '240100176', 38, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '6900.00', '0.00', '0.00', '0.00', '6900.00', '6900.00', '0.00', '6900.00', '0.00', 26400.00, 'a', 1, '2024-10-07 14:29:25', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(193, '240100177', 27, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '200.00', '0.00', '0.00', '0.00', '200.00', '200.00', '0.00', '200.00', '0.00', 26000.00, 'a', 1, '2024-10-07 18:26:56', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(194, '240100178', 31, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '76000.00', '0.00', '0.00', '0.00', '76000.00', '0.00', '0.00', '0.00', '76000.00', -438470.00, 'a', 1, '2024-10-07 18:58:08', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(195, '240100179', 40, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '1500.00', '0.00', '0.00', '0.00', '1500.00', '1500.00', '0.00', '1500.00', '0.00', 0.00, 'a', 1, '2024-10-07 19:20:14', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(196, '240100180', 40, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '4680.00', '1170.00', '0.00', '0.00', '5850.00', '4680.00', '0.00', '4680.00', '0.00', 0.00, 'a', 1, '2024-10-07 19:25:09', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(197, '240100181', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-07', 'payment next day', 'retail', NULL, '16040.00', '0.00', '0.00', '0.00', '16040.00', '16040.00', '0.00', '16040.00', '0.00', 0.00, 'a', 1, '2024-10-08 11:03:39', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(198, '240100182', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '34000.00', '0.00', '0.00', '0.00', '34000.00', '0.00', '0.00', '0.00', '34000.00', 0.00, 'a', 1, '2024-10-08 11:10:43', 1, '2024-10-08 11:11:34', NULL, NULL, '59.152.6.83', 1),
(199, '240100183', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-07', '', 'retail', NULL, '2000.00', '0.00', '0.00', '0.00', '2000.00', '2000.00', '0.00', '2000.00', '0.00', 30000.00, 'a', 1, '2024-10-08 11:13:50', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(200, '240100184', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-07', '', 'retail', NULL, '1850.00', '0.00', '0.00', '0.00', '1850.00', '1850.00', '0.00', '1850.00', '0.00', 0.00, 'a', 1, '2024-10-08 11:40:31', NULL, NULL, NULL, NULL, '59.152.6.83', 1),
(201, '240100185', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-08', '', 'retail', NULL, '17600.00', '0.00', '0.00', '0.00', '17600.00', '17600.00', '0.00', '17600.00', '0.00', 0.00, 'a', 1, '2024-10-08 12:21:12', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(202, '240100186', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-08', '', 'retail', NULL, '1600.00', '0.00', '0.00', '0.00', '1600.00', '1000.00', '0.00', '1000.00', '600.00', 30000.00, 'a', 1, '2024-10-08 13:35:45', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(203, '240100187', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-08', '', 'retail', NULL, '1600.00', '0.00', '0.00', '0.00', '1600.00', '1000.00', '0.00', '1000.00', '600.00', 30600.00, 'a', 1, '2024-10-08 13:36:16', NULL, NULL, NULL, NULL, '103.159.73.93', 1),
(204, '240100188', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-11', '', 'retail', NULL, '3300.00', '0.00', '0.00', '0.00', '3300.00', '3300.00', '0.00', '3300.00', '0.00', 31200.00, 'a', 1, '2024-10-12 11:16:00', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(205, '240100189', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-11', '', 'retail', NULL, '1940.00', '0.00', '0.00', '0.00', '1940.00', '40.00', '0.00', '40.00', '1900.00', 31200.00, 'a', 1, '2024-10-12 11:17:22', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(206, '240100190', NULL, 'G', 'Cash Customer', '', '', 1, '2024-10-17', '', 'retail', NULL, '0.00', '0.00', '0.00', '0.00', '475.00', '0.00', '0.00', '0.00', '0.00', 0.00, 'a', 1, '2024-10-18 00:12:21', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(207, '240100191', 40, 'retail', NULL, NULL, NULL, NULL, '2024-10-17', '', 'retail', NULL, '545.00', '0.00', '0.00', '0.00', '545.00', '200.00', '0.00', '200.00', '345.00', 0.00, 'a', 1, '2024-10-18 00:14:30', NULL, NULL, NULL, NULL, '95.185.114.36', 1),
(208, '240100192', 42, 'retail', NULL, NULL, NULL, NULL, '2024-10-18', '', 'retail', NULL, '498.96', '5.04', '0.00', '0.00', '504.00', '498.96', '0.00', '498.96', '0.00', 0.00, 'a', 1, '2024-10-18 20:09:55', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(209, '240100193', 42, 'retail', NULL, NULL, NULL, NULL, '2024-10-18', '', 'retail', NULL, '575.00', '0.00', '0.00', '0.00', '575.00', '200.00', '0.00', '200.00', '375.00', 0.00, 'a', 1, '2024-10-18 20:15:22', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(210, '240100194', 42, 'retail', NULL, NULL, NULL, NULL, '2024-10-18', '', 'retail', NULL, '65.00', '0.00', '0.00', '0.00', '65.00', '150.00', '0.00', '150.00', '-85.00', 275.00, 'a', 1, '2024-10-18 20:21:14', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(211, '240100195', 43, 'retail', NULL, NULL, NULL, NULL, '2024-10-19', '', 'retail', NULL, '3550.00', '50.00', '0.00', '0.00', '3600.00', '3000.00', '0.00', '3000.00', '550.00', 0.00, 'a', 1, '2024-10-19 14:06:58', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(212, '240100196', 43, 'retail', NULL, NULL, NULL, NULL, '2024-10-19', '', 'retail', NULL, '2000.00', '0.00', '0.00', '0.00', '2000.00', '2000.00', '0.00', '2000.00', '0.00', 0.00, 'a', 1, '2024-10-19 14:10:09', NULL, NULL, NULL, NULL, '202.134.11.237', 1),
(213, '240100197', 27, 'retail', NULL, NULL, NULL, NULL, '2024-10-19', '', 'retail', NULL, '10.00', '0.00', '0.00', '0.00', '10.00', '10.00', '0.00', '10.00', '0.00', 26000.00, 'a', 1, '2024-10-19 15:39:19', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(214, '240100198', 31, 'retail', NULL, NULL, NULL, NULL, '2024-10-19', '', 'retail', NULL, '860.00', '0.00', '0.00', '0.00', '860.00', '860.00', '0.00', '860.00', '0.00', -362470.00, 'a', 1, '2024-10-19 15:44:36', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(215, '240600005', 34, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', NULL, '1400.00', '0.00', '0.00', '0.00', '1400.00', '1000.00', '0.00', '1000.00', '400.00', 9690.00, 'a', 1, '2024-10-20 12:35:22', NULL, NULL, NULL, NULL, '59.152.1.226', 6),
(216, '240100199', 31, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', NULL, '228000.00', '0.00', '0.00', '0.00', '228000.00', '228000.00', '0.00', '228000.00', '0.00', -362470.00, 'a', 1, '2024-10-20 12:47:27', NULL, NULL, NULL, NULL, '59.152.1.226', 1),
(217, '240100200', 43, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', NULL, '38000.00', '0.00', '0.00', '0.00', '38000.00', '38000.00', '0.00', '38000.00', '0.00', 0.00, 'a', 1, '2024-10-20 14:15:49', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(218, '240100201', 3, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', NULL, '2800.00', '0.00', '0.00', '0.00', '2800.00', '1000.00', '0.00', '1000.00', '1800.00', 10700.00, 'a', 1, '2024-10-20 14:26:52', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(219, '240100202', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-20', '', 'retail', 1, '13.00', '0.00', '0.00', '0.00', '13.00', '5.00', '8.00', '13.00', '0.00', 0.00, 'a', 1, '2024-10-20 15:08:57', 1, '2024-10-20 15:09:38', NULL, NULL, '103.159.73.88', 1),
(220, '240100203', 42, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', 1, '2000.00', '0.00', '0.00', '0.00', '2000.00', '1500.00', '200.00', '1700.00', '300.00', 190.00, 'a', 1, '2024-10-20 15:21:07', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(221, '240100204', 0, 'retail', NULL, NULL, NULL, NULL, '2024-10-20', '', 'retail', 1, '9888.00', '0.00', '0.00', '0.00', '9888.00', '3000.00', '5000.00', '8000.00', '1888.00', 0.00, 'a', 1, '2024-10-20 22:46:16', NULL, NULL, NULL, NULL, '114.130.186.107', 1),
(222, '240100205', 32, 'retail', NULL, NULL, NULL, NULL, '2024-10-21', '', 'retail', NULL, '1800.00', '0.00', '0.00', '0.00', '1800.00', '1800.00', '0.00', '1800.00', '0.00', 2280.00, 'a', 1, '2024-10-21 14:57:44', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(223, '240100206', NULL, 'G', 'Cash Customer', '4567', 'hg', NULL, '2024-10-21', '', 'wholesale', NULL, '1020.00', '0.00', '0.00', '0.00', '1020.00', '1020.00', '0.00', '1020.00', '0.00', 0.00, 'a', 1, '2024-10-21 16:44:17', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(224, '240100207', 32, 'retail', NULL, NULL, NULL, NULL, '2024-10-21', '', 'retail', NULL, '4040.00', '0.00', '0.00', '0.00', '4040.00', '0.00', '0.00', '0.00', '4040.00', 2280.00, 'a', 1, '2024-10-21 16:45:30', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(225, '240100208', 44, 'retail', NULL, NULL, NULL, NULL, '2024-10-21', '', 'retail', NULL, '2525.00', '0.00', '0.00', '0.00', '2525.00', '0.00', '0.00', '0.00', '2525.00', 5000.00, 'a', 1, '2024-10-21 16:53:52', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(226, '240100209', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-21', '', 'retail', NULL, '517.00', '0.00', '0.00', '0.00', '517.00', '517.00', '0.00', '517.00', '0.00', 0.00, 'a', 1, '2024-10-21 18:00:27', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(227, '240100210', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-22', '', 'retail', NULL, '11600.00', '0.00', '0.00', '0.00', '11600.00', '11600.00', '0.00', '11600.00', '0.00', 0.00, 'a', 1, '2024-10-22 17:52:09', NULL, NULL, NULL, NULL, '103.159.73.88', 1),
(228, '240100211', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-23', '', 'retail', NULL, '522.00', '0.00', '0.00', '0.00', '522.00', '522.00', '0.00', '522.00', '0.00', 0.00, 'a', 1, '2024-10-23 12:47:18', 1, '2024-10-23 12:49:37', NULL, NULL, '202.134.10.132', 1),
(229, '240100212', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-23', '', 'retail', NULL, '3000.00', '24.00', '0.00', '0.00', '3024.00', '3000.00', '0.00', '3000.00', '0.00', 0.00, 'a', 1, '2024-10-23 12:53:54', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(230, '240100213', 20, 'retail', NULL, NULL, NULL, NULL, '2024-10-23', '', 'retail', NULL, '1200.00', '0.00', '0.00', '0.00', '1200.00', '500.00', '0.00', '500.00', '700.00', 880.00, 'a', 1, '2024-10-23 12:55:28', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(231, '240100214', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-23', '', 'retail', NULL, '20.00', '0.00', '0.00', '0.00', '20.00', '20.00', '0.00', '20.00', '0.00', 0.00, 'a', 1, '2024-10-23 13:12:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(232, '240100215', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-23', '', 'retail', NULL, '2000.00', '0.00', '0.00', '0.00', '2000.00', '2000.00', '0.00', '2000.00', '0.00', 0.00, 'a', 1, '2024-10-23 13:21:22', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(233, '240100216', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-24', '', 'retail', NULL, '5500.00', '0.00', '0.00', '500.00', '5000.00', '5500.00', '0.00', '5500.00', '0.00', 0.00, 'a', 1, '2024-10-24 15:27:11', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(234, '240100217', 44, 'retail', NULL, NULL, NULL, NULL, '2024-10-24', '', 'retail', NULL, '44000.00', '0.00', '0.00', '0.00', '44000.00', '44000.00', '0.00', '44000.00', '0.00', 225.00, 'a', 1, '2024-10-24 17:41:42', NULL, NULL, NULL, NULL, '103.159.73.86', 1),
(235, '240100218', 42, 'retail', NULL, NULL, NULL, 1, '2024-10-25', '', 'retail', NULL, '175.50', '0.00', '0.00', '0.00', '175.50', '175.50', '0.00', '175.50', '0.00', 370.00, 'a', 1, '2024-10-25 17:53:02', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(236, '240100219', 42, 'retail', NULL, NULL, NULL, 2, '2024-10-25', '', 'retail', NULL, '450.00', '0.00', '0.00', '0.00', '450.00', '300.00', '0.00', '300.00', '150.00', 370.00, 'a', 1, '2024-10-25 17:54:49', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(237, '240100220', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-25', '', 'retail', NULL, '310.00', '12.00', '0.00', '0.00', '322.00', '310.00', '0.00', '310.00', '0.00', 0.00, 'a', 1, '2024-10-25 18:08:03', NULL, NULL, NULL, NULL, '151.255.40.184', 1),
(238, '240100221', 43, 'retail', NULL, NULL, NULL, NULL, '2024-10-27', '', 'retail', NULL, '5200.00', '0.00', '0.00', '0.00', '5200.00', '5200.00', '0.00', '5200.00', '0.00', 0.00, 'a', 1, '2024-10-27 12:20:22', NULL, NULL, NULL, NULL, '59.152.1.197', 1),
(239, '240100222', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-27', '', 'retail', NULL, '10000.00', '0.00', '0.00', '0.00', '10000.00', '10000.00', '0.00', '10000.00', '0.00', 0.00, 'a', 1, '2024-10-27 17:09:13', NULL, NULL, NULL, NULL, '103.159.73.80', 1),
(240, '240100223', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-28', '', 'retail', NULL, '1000.00', '0.00', '0.00', '0.00', '1000.00', '1000.00', '0.00', '1000.00', '0.00', 0.00, 'a', 1, '2024-10-28 14:09:21', NULL, NULL, NULL, NULL, '103.112.65.26', 1),
(241, '240100224', 44, 'retail', NULL, NULL, NULL, NULL, '2024-10-28', '', 'retail', NULL, '8750.00', '0.00', '0.00', '0.00', '8750.00', '8750.00', '0.00', '8750.00', '0.00', 225.00, 'a', 1, '2024-10-28 14:22:11', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(242, '240100225', 30, 'retail', NULL, NULL, NULL, NULL, '2024-10-29', '', 'retail', NULL, '550.00', '0.00', '0.00', '0.00', '550.00', '550.00', '0.00', '550.00', '0.00', -12000.00, 'a', 1, '2024-10-29 12:47:11', NULL, NULL, NULL, NULL, '103.120.221.14', 1),
(243, '240100226', 32, 'retail', NULL, NULL, NULL, NULL, '2024-10-29', 'qhjgjk   dbjk23hf23hfjk23hti34t ', 'retail', NULL, '505.00', '0.00', '0.00', '0.00', '505.00', '505.00', '0.00', '505.00', '0.00', 1320.00, 'a', 1, '2024-10-29 14:32:59', NULL, NULL, NULL, NULL, '202.181.16.28', 1),
(244, '240100227', 45, 'retail', NULL, NULL, NULL, NULL, '2024-10-29', '', 'retail', NULL, '2400.00', '0.00', '0.00', '0.00', '2400.00', '2400.00', '0.00', '2400.00', '0.00', 0.00, 'a', 1, '2024-10-29 15:59:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(245, '240100228', 42, 'retail', NULL, NULL, NULL, 8, '2024-10-30', '', 'retail', NULL, '228.00', '12.00', '0.00', '0.00', '240.00', '228.00', '0.00', '228.00', '0.00', 350.00, 'a', 1, '2024-10-30 06:09:06', NULL, NULL, NULL, NULL, '95.185.96.229', 1),
(246, '240100229', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-30', '', 'retail', NULL, '1300.00', '0.00', '200.00', '100.00', '1000.00', '1300.00', '0.00', '1300.00', '0.00', 0.00, 'a', 1, '2024-10-30 13:34:15', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(247, '240100230', 38, 'retail', NULL, NULL, NULL, NULL, '2024-10-30', '', 'retail', NULL, '60.00', '0.00', '0.00', '0.00', '60.00', '60.00', '0.00', '60.00', '0.00', 26400.00, 'a', 1, '2024-10-30 16:10:20', NULL, NULL, NULL, NULL, '103.198.132.95', 1),
(248, '240100231', 42, 'retail', NULL, NULL, NULL, NULL, '2024-10-31', '', 'retail', NULL, '450.00', '0.00', '0.00', '0.00', '450.00', '450.00', '0.00', '450.00', '0.00', 350.00, 'a', 1, '2024-10-31 12:57:56', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(249, '240100232', 46, 'retail', NULL, NULL, NULL, NULL, '2024-10-31', '', 'retail', NULL, '2000.00', '0.00', '0.00', '0.00', '2000.00', '1000.00', '0.00', '1000.00', '1000.00', 0.00, 'a', 1, '2024-10-31 13:08:07', NULL, NULL, NULL, NULL, '103.159.73.75', 1),
(250, '240100233', 41, 'retail', NULL, NULL, NULL, NULL, '2024-10-31', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '500.00', '0.00', '500.00', '0.00', 32700.00, 'a', 1, '2024-10-31 17:16:51', NULL, NULL, NULL, NULL, '103.204.211.177', 1),
(251, '240100234', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-31', '', 'retail', NULL, '1425.00', '75.00', '0.00', '0.00', '1500.00', '1425.00', '0.00', '1425.00', '0.00', 0.00, 'a', 1, '2024-10-31 19:04:19', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(252, '240100235', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-31', '', 'retail', NULL, '800.00', '0.00', '0.00', '0.00', '800.00', '800.00', '0.00', '800.00', '0.00', 0.00, 'a', 1, '2024-10-31 19:06:26', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(253, '240100236', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-10-31', '', 'retail', NULL, '1425.00', '75.00', '0.00', '0.00', '1500.00', '1425.00', '0.00', '1425.00', '0.00', 0.00, 'a', 1, '2024-10-31 21:15:57', NULL, NULL, NULL, NULL, '37.111.206.110', 1),
(254, '240100237', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-02', '', 'retail', NULL, '4000.00', '0.00', '0.00', '0.00', '4000.00', '4000.00', '0.00', '4000.00', '0.00', 0.00, 'a', 1, '2024-11-02 06:50:27', NULL, NULL, NULL, NULL, '37.111.212.71', 1),
(255, '2401200001', NULL, 'G', 'Cash Customer', '5765', 'ghvjh', NULL, '2024-11-02', '', 'wholesale', NULL, '1050.00', '0.00', '0.00', '0.00', '1050.00', '1050.00', '0.00', '1050.00', '0.00', 0.00, 'a', 1, '2024-11-02 13:40:48', NULL, NULL, NULL, NULL, '103.159.73.74', 12),
(256, '240100238', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-02', '', 'retail', NULL, '205.44', '0.00', '0.00', '0.00', '205.44', '205.44', '0.00', '205.44', '0.00', 0.00, 'a', 1, '2024-11-02 13:43:01', NULL, NULL, NULL, NULL, '202.134.10.138', 1),
(257, '240100239', 44, 'retail', NULL, NULL, NULL, NULL, '2024-11-02', '', 'retail', NULL, '1710.00', '0.00', '0.00', '0.00', '1710.00', '1710.00', '0.00', '1710.00', '0.00', -4025.00, 'a', 1, '2024-11-02 18:59:20', NULL, NULL, NULL, NULL, '119.73.101.72', 1),
(258, '2401300001', NULL, 'G', 'Cash Customer', '01715280004', '', NULL, '2024-11-03', '', 'retail', NULL, '1440.00', '160.00', '0.00', '0.00', '1600.00', '1440.00', '0.00', '1440.00', '0.00', 0.00, 'a', 1, '2024-11-03 09:51:42', NULL, NULL, NULL, NULL, '103.239.253.118', 13),
(259, '240100240', 46, 'retail', NULL, NULL, NULL, NULL, '2024-11-03', '', 'retail', NULL, '52000.00', '0.00', '0.00', '0.00', '52000.00', '52000.00', '0.00', '52000.00', '0.00', 500.00, 'a', 20, '2024-11-03 14:35:04', NULL, NULL, NULL, NULL, '114.130.157.23', 1),
(260, '240100241', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-03', '', 'retail', NULL, '2342.40', '0.00', '0.00', '0.00', '2342.40', '2342.40', '0.00', '2342.40', '0.00', 0.00, 'a', 1, '2024-11-03 15:45:57', NULL, NULL, NULL, NULL, '103.200.94.65', 1),
(261, '240100242', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-04', '', 'retail', NULL, '500.00', '0.00', '0.00', '0.00', '500.00', '500.00', '0.00', '500.00', '0.00', 0.00, 'a', 1, '2024-11-04 10:07:32', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(262, '240100243', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-04', '', 'retail', NULL, '40.00', '0.00', '0.00', '0.00', '40.00', '40.00', '0.00', '40.00', '0.00', 0.00, 'a', 1, '2024-11-04 16:55:21', NULL, NULL, NULL, NULL, '103.58.73.62', 1),
(263, '240100244', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-05', '', 'retail', NULL, '1200.00', '0.00', '0.00', '0.00', '1200.00', '1200.00', '0.00', '1200.00', '0.00', 0.00, 'a', 1, '2024-11-05 12:55:21', NULL, NULL, NULL, NULL, '103.159.170.10', 1),
(264, '240100245', 47, 'retail', NULL, NULL, NULL, NULL, '2024-11-05', '', 'retail', NULL, '0.00', '50.00', '0.00', '0.00', '600.00', '0.00', '0.00', '0.00', '0.00', 0.00, 'a', 1, '2024-11-05 20:28:22', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(265, '240100246', 47, 'retail', NULL, NULL, NULL, NULL, '2024-11-05', '', 'retail', NULL, '0.00', '50.00', '0.00', '0.00', '600.00', '0.00', '0.00', '0.00', '0.00', 0.00, 'a', 1, '2024-11-05 20:28:41', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(266, '240100247', 47, 'retail', NULL, NULL, NULL, NULL, '2024-11-05', '', 'retail', NULL, '250.00', '0.00', '0.00', '0.00', '250.00', '0.00', '0.00', '0.00', '250.00', 0.00, 'a', 1, '2024-11-05 20:29:17', NULL, NULL, NULL, NULL, '37.111.212.160', 1),
(267, '240100248', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-06', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '600.00', '0.00', '600.00', '0.00', 0.00, 'a', 1, '2024-11-06 15:29:54', NULL, NULL, NULL, NULL, '116.204.154.34', 1),
(268, '240100249', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-06', '', 'retail', NULL, '300.00', '0.00', '0.00', '0.00', '300.00', '300.00', '0.00', '300.00', '0.00', 0.00, 'a', 1, '2024-11-06 15:31:29', NULL, NULL, NULL, NULL, '116.204.154.34', 1),
(269, '240900001', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-06', '', 'retail', NULL, '600.00', '0.00', '0.00', '0.00', '600.00', '600.00', '0.00', '600.00', '0.00', 0.00, 'a', 1, '2024-11-06 15:36:13', NULL, NULL, NULL, NULL, '116.204.154.34', 9),
(270, '240100250', 44, 'retail', NULL, NULL, NULL, NULL, '2024-11-07', '', 'retail', NULL, '12400.00', '0.00', '0.00', '0.00', '12400.00', '12400.00', '0.00', '12400.00', '0.00', -4025.00, 'a', 1, '2024-11-07 15:11:08', NULL, NULL, NULL, NULL, '103.152.106.49', 1),
(271, '240100251', NULL, 'G', 'Cash Customer', '', '', NULL, '2024-11-09', '', 'retail', NULL, '240.00', '10.00', '0.00', '0.00', '250.00', '240.00', '0.00', '240.00', '0.00', 0.00, 'a', 1, '2024-11-09 13:19:36', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(272, '240100252', 46, 'retail', NULL, NULL, NULL, NULL, '2024-11-10', '', 'retail', NULL, '1250.00', '0.00', '0.00', '0.00', '1250.00', '500.00', '0.00', '500.00', '750.00', 500.00, 'a', 1, '2024-11-10 11:20:42', NULL, NULL, NULL, NULL, '103.159.73.65', 1),
(273, '240100253', 42, 'retail', NULL, NULL, NULL, 7, '2024-11-10', '', 'retail', 2, '270.00', '6.00', '0.00', '0.00', '276.00', '200.00', '70.00', '270.00', '0.00', -100.00, 'a', 1, '2024-11-10 23:51:44', NULL, NULL, NULL, NULL, '51.252.135.251', 1),
(274, '240100254', 48, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '730.00', '4.00', '0.00', '0.00', '734.00', '730.00', '0.00', '730.00', '0.00', 0.00, 'a', 22, '2024-11-12 12:28:07', NULL, NULL, NULL, NULL, '103.25.248.128', 1),
(275, '240100255', 49, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '2524.00', '0.00', '0.00', '0.00', '2524.00', '2524.00', '0.00', '2524.00', '0.00', 0.00, 'a', 1, '2024-11-12 12:32:12', 1, '2024-11-12 12:33:07', NULL, NULL, '202.134.14.143', 1),
(276, '240100256', 49, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '1895.00', '0.00', '0.00', '0.00', '1895.00', '0.00', '0.00', '0.00', '1895.00', 0.00, 'a', 1, '2024-11-12 12:36:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(277, '240100257', 48, 'retail', NULL, NULL, NULL, 7, '2024-11-12', '', 'retail', NULL, '2460.00', '0.00', '0.00', '0.00', '2460.00', '2460.00', '0.00', '2460.00', '0.00', 0.00, 'a', 1, '2024-11-12 12:42:18', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(278, '240100258', 49, 'retail', NULL, NULL, NULL, 7, '2024-11-12', '', 'retail', NULL, '660.00', '0.00', '0.00', '0.00', '660.00', '660.00', '0.00', '660.00', '0.00', 1000.00, 'a', 1, '2024-11-12 12:44:23', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(279, '240100259', 47, 'retail', NULL, NULL, NULL, 7, '2024-11-12', '', 'retail', NULL, '860.00', '0.00', '0.00', '0.00', '860.00', '860.00', '0.00', '860.00', '0.00', -100.00, 'a', 1, '2024-11-12 12:44:39', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(280, '240100260', 44, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', 'ghghgh', 'retail', NULL, '440.00', '0.00', '0.00', '0.00', '440.00', '440.00', '0.00', '440.00', '0.00', -4025.00, 'a', 1, '2024-11-12 12:44:55', 1, '2024-11-12 13:16:39', NULL, NULL, '202.134.14.143', 1),
(281, '240100261', 45, 'retail', NULL, NULL, NULL, 7, '2024-11-12', '', 'retail', NULL, '2150.00', '0.00', '0.00', '0.00', '2150.00', '2150.00', '0.00', '2150.00', '0.00', 0.00, 'a', 1, '2024-11-12 12:51:34', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(282, '240100262', 40, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '258.00', '0.00', '0.00', '0.00', '258.00', '258.00', '0.00', '258.00', '0.00', 345.00, 'a', 1, '2024-11-12 12:51:47', 1, '2024-11-12 13:16:01', NULL, NULL, '202.134.14.143', 1),
(283, '240100263', NULL, 'G', 'Cash Customer', '12344', 'ffff', NULL, '2024-11-12', 'rrryytrty', 'retail', NULL, '550.00', '0.00', '0.00', '0.00', '550.00', '550.00', '0.00', '550.00', '0.00', 0.00, 'a', 1, '2024-11-12 13:17:37', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(284, '240100264', 50, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '1425.00', '0.00', '0.00', '0.00', '1425.00', '1425.00', '0.00', '1425.00', '0.00', 0.00, 'a', 1, '2024-11-12 13:20:07', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(285, '240100265', 50, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '1160.00', '0.00', '0.00', '0.00', '1160.00', '1160.00', '0.00', '1160.00', '0.00', 0.00, 'a', 1, '2024-11-12 13:21:51', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(286, '240100266', 38, 'retail', NULL, NULL, NULL, NULL, '2024-11-12', '', 'retail', NULL, '110.00', '0.00', '0.00', '0.00', '110.00', '110.00', '0.00', '110.00', '0.00', 10400.00, 'a', 1, '2024-11-12 13:29:54', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(287, '240100267', 50, 'retail', NULL, NULL, NULL, 8, '2024-11-22', 'Test Invocie', 'retail', NULL, '1100.00', '0.00', '0.00', '0.00', '1100.00', '1100.00', '0.00', '1100.00', '0.00', 0.00, 'a', 1, '2024-11-22 23:20:55', NULL, NULL, NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_return`
--

CREATE TABLE `tbl_sale_return` (
  `SaleReturn_SlNo` int(11) NOT NULL,
  `SaleMaster_InvoiceNo` varchar(50) NOT NULL,
  `SaleReturn_ReturnDate` date NOT NULL,
  `SaleReturn_ReturnAmount` decimal(18,2) NOT NULL,
  `SaleReturn_Description` varchar(300) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(50) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(100) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sale_return`
--

INSERT INTO `tbl_sale_return` (`SaleReturn_SlNo`, `SaleMaster_InvoiceNo`, `SaleReturn_ReturnDate`, `SaleReturn_ReturnAmount`, `SaleReturn_Description`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '240100001', '2024-04-28', '100.00', '', 'a', 1, '2024-04-28 16:43:58', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, '240100007', '2024-05-18', '70.00', '', 'a', 1, '2024-05-18 10:34:12', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(3, '240100012', '2024-05-18', '30000.00', '', 'a', 1, '2024-05-18 17:52:17', NULL, NULL, NULL, NULL, '103.82.9.15', 1),
(4, '240100040', '2024-06-26', '900.00', '', 'a', 1, '2024-06-26 12:28:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(5, '240100133', '2024-09-10', '240000.00', 'Customers not accepted', 'a', 1, '2024-09-10 12:04:58', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(6, '240100081', '2024-09-12', '6000.00', '', 'a', 1, '2024-09-12 15:58:47', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(7, '240100097', '2024-09-12', '500.00', '', 'a', 1, '2024-09-12 19:06:39', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(8, '240100163', '2024-10-03', '600.00', '', 'a', 1, '2024-10-03 19:59:25', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(9, '240200002', '2024-10-06', '3300.00', '', 'a', 1, '2024-10-06 14:14:24', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(10, '240100169', '2024-10-07', '13200.00', '', 'a', 1, '2024-10-07 11:47:24', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(11, '240100175', '2024-10-07', '4500.00', '', 'a', 1, '2024-10-07 14:05:20', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(12, '240100189', '2024-10-11', '400.00', '', 'a', 1, '2024-10-12 11:39:30', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(13, '240100224', '2024-10-28', '4250.00', '', 'a', 1, '2024-10-28 14:23:04', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(14, '240100225', '2024-10-29', '550.00', '', 'a', 1, '2024-10-29 12:48:37', NULL, NULL, NULL, NULL, '103.120.221.14', 1),
(15, '240100231', '2024-10-31', '450.00', 'other', 'a', 1, '2024-10-31 19:15:26', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(16, '240100237', '2024-11-02', '2000.00', '', 'a', 1, '2024-11-02 06:52:33', NULL, NULL, NULL, NULL, '37.111.212.71', 1),
(17, '240100247', '2024-11-11', '100.00', 'damage purpose', 'a', 1, '2024-11-11 13:09:50', NULL, NULL, NULL, NULL, '59.152.7.27', 1),
(18, '240100258', '2024-11-12', '110.00', 'ghchcg', 'a', 1, '2024-11-12 12:56:16', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sale_return_details`
--

CREATE TABLE `tbl_sale_return_details` (
  `SaleReturnDetails_SlNo` int(11) NOT NULL,
  `SaleReturn_IdNo` int(11) NOT NULL,
  `SaleReturnDetailsProduct_SlNo` int(11) NOT NULL,
  `SaleReturnDetails_ReturnQuantity` float NOT NULL,
  `SaleReturnDetails_ReturnAmount` decimal(18,2) NOT NULL,
  `status` varchar(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sale_return_details`
--

INSERT INTO `tbl_sale_return_details` (`SaleReturnDetails_SlNo`, `SaleReturn_IdNo`, `SaleReturnDetailsProduct_SlNo`, `SaleReturnDetails_ReturnQuantity`, `SaleReturnDetails_ReturnAmount`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 1, 2, '100.00', 'a', 1, '2024-04-28 16:43:58', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, 2, 7, 1, '70.00', 'a', 1, '2024-05-18 10:34:12', NULL, NULL, NULL, NULL, '103.134.59.53', 1),
(3, 3, 14, 5, '30000.00', 'a', 1, '2024-05-18 17:52:17', NULL, NULL, NULL, NULL, '103.82.9.15', 1),
(4, 4, 43, 2, '600.00', 'a', 1, '2024-06-26 12:28:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(5, 4, 42, 1, '300.00', 'a', 1, '2024-06-26 12:28:06', NULL, NULL, NULL, NULL, '103.159.72.85', 1),
(6, 5, 83, 4, '240000.00', 'a', 1, '2024-09-10 12:04:58', NULL, NULL, NULL, NULL, '103.73.197.72', 1),
(7, 6, 62, 1, '6000.00', 'a', 1, '2024-09-12 15:58:47', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(8, 7, 69, 1, '500.00', 'a', 1, '2024-09-12 19:06:39', NULL, NULL, NULL, NULL, '103.196.234.153', 1),
(9, 8, 97, 1, '600.00', 'a', 1, '2024-10-03 19:59:25', NULL, NULL, NULL, NULL, '103.210.59.102', 1),
(10, 9, 106, 6, '1500.00', 'a', 1, '2024-10-06 14:14:24', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(11, 9, 105, 6, '1800.00', 'a', 1, '2024-10-06 14:14:24', NULL, NULL, NULL, NULL, '103.185.224.24', 2),
(12, 10, 106, 30, '6000.00', 'a', 1, '2024-10-07 11:47:24', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(13, 10, 105, 30, '7200.00', 'a', 1, '2024-10-07 11:47:24', NULL, NULL, NULL, NULL, '103.185.224.24', 1),
(14, 11, 108, 50, '2000.00', 'a', 1, '2024-10-07 14:05:20', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(15, 11, 107, 50, '2500.00', 'a', 1, '2024-10-07 14:05:20', NULL, NULL, NULL, NULL, '103.10.194.7', 1),
(16, 12, 108, 10, '400.00', 'a', 1, '2024-10-12 11:39:30', NULL, NULL, NULL, NULL, '103.159.73.90', 1),
(17, 13, 107, 5, '250.00', 'a', 1, '2024-10-28 14:23:04', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(18, 13, 120, 8, '4000.00', 'a', 1, '2024-10-28 14:23:04', NULL, NULL, NULL, NULL, '103.252.224.122', 1),
(19, 14, 117, 1, '550.00', 'a', 1, '2024-10-29 12:48:37', NULL, NULL, NULL, NULL, '103.120.221.14', 1),
(20, 15, 121, 1, '450.00', 'a', 1, '2024-10-31 19:15:26', NULL, NULL, NULL, NULL, '37.111.206.157', 1),
(21, 16, 113, 1, '2000.00', 'a', 1, '2024-11-02 06:52:33', NULL, NULL, NULL, NULL, '37.111.212.71', 1),
(22, 17, 135, 2, '100.00', 'a', 1, '2024-11-11 13:09:50', NULL, NULL, NULL, NULL, '59.152.7.27', 1),
(23, 18, 139, 2, '110.00', 'a', 1, '2024-11-12 12:56:16', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `row_id` int(11) NOT NULL,
  `number` varchar(30) NOT NULL,
  `sms_text` varchar(500) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sms`
--

INSERT INTO `tbl_sms` (`row_id`, `number`, `sms_text`, `sent_by`, `sent_datetime`) VALUES
(1, '01864516297', 'hello ', 1, '2024-08-28 06:50:38'),
(2, '01864516297', 'Hello Al amin', 1, '2024-08-28 06:50:44'),
(3, '01911978897', 'আমার সোনার বাংলা', 1, '2024-08-28 06:51:42'),
(4, '01864516297', 'আমার সোনার বাংলা', 1, '2024-08-28 06:51:42'),
(5, '01911978897', 'আমার সোনার বাংলা', 1, '2024-08-28 06:53:22'),
(6, '01864516297', 'আমার সোনার বাংলা', 1, '2024-08-28 06:53:22'),
(7, '01864516297', 'Hello Al amin', 1, '2024-08-28 06:53:28'),
(8, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:07:55'),
(9, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:11:36'),
(10, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:11:44'),
(11, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:12:17'),
(12, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:25:39'),
(13, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:26:24'),
(14, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:27:11'),
(15, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:27:43'),
(16, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:29:39'),
(17, '01864516297', 'Hello Al amin', 1, '2024-08-28 07:30:46'),
(18, '01864516297', 'Hello  Bro', 1, '2024-08-28 07:31:06'),
(19, '01911978897', 'amar desh er name Bangladesh', 1, '2024-08-28 07:31:44'),
(20, '01864516297', 'Hello  Bro', 1, '2024-08-28 07:34:04'),
(21, '01911978897', 'Hello sir', 1, '2024-08-28 07:41:09'),
(22, '01864516297', 'Hi Sir', 1, '2024-08-29 09:56:29'),
(23, '01864516297', 'Test Message', 1, '2024-08-31 11:24:27'),
(24, '01864516297', 'Hi Hira', 1, '2024-09-04 11:11:47'),
(25, '01864516297', 'Hi Hira', 1, '2024-09-04 11:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `sms_enabled` varchar(50) NOT NULL DEFAULT 'false',
  `api_key` varchar(500) DEFAULT NULL,
  `sms_type` varchar(50) NOT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `bulk_url` varchar(1000) DEFAULT NULL,
  `url_2` varchar(1000) DEFAULT NULL,
  `bulk_url_2` varchar(1000) DEFAULT NULL,
  `sender_id` varchar(200) DEFAULT NULL,
  `sender_id_2` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`sms_enabled`, `api_key`, `sms_type`, `url`, `bulk_url`, `url_2`, `bulk_url_2`, `sender_id`, `sender_id_2`, `user_id`, `password`, `country_code`, `sender_name`, `sender_phone`) VALUES
('false', 'ZD1KYN9BLE588V7', 'unicode', 'https://api.mimsms.com/api/SmsSending/SMS', 'https://api.mimsms.com/api/SmsSending/DSMS', 'http://mshastra.com/sendurl.aspx', 'http://mshastra.com/sendurlcomma.aspx', '8809617621100', 'BigTech Ltd', '20102047', 'BTL@432', '+880', 'Link-UpTech', '01911-978897');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `SubCategory_SlNo` int(11) NOT NULL,
  `Category_SlNo` int(1) NOT NULL,
  `SubCategory_Name` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` varchar(30) DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`SubCategory_SlNo`, `Category_SlNo`, `SubCategory_Name`, `route`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 1, 'Bags', 'bags', 'a', 1, '2024-11-29 23:43:45', 1, '2024-12-01 23:25:26', NULL, NULL, '::1', 1),
(2, 1, 'Purse', 'purse', 'a', 1, '2024-11-29 23:44:03', 1, '2024-12-01 23:25:35', NULL, NULL, '::1', 1),
(3, 1, 'Backpack', 'backpack', 'a', 1, '2024-11-29 23:44:31', 1, '2024-12-01 23:25:41', NULL, NULL, '::1', 1),
(4, 1, 'Toty Bags', 'toty-bags', 'a', 1, '2024-11-29 23:44:39', 1, '2024-12-01 23:25:52', NULL, NULL, '::1', 1),
(5, 1, 'Wallet', 'wallet', 'a', 1, '2024-11-29 23:44:50', 1, '2024-12-01 23:25:59', NULL, NULL, '::1', 1),
(6, 1, 'Travel Bag', 'travel-bag', 'a', 1, '2024-11-29 23:44:58', 1, '2024-12-01 23:26:07', 1, '2025-02-22 00:41:19', '::1', 1),
(7, 1, 'Crossbody Bag', 'crossbody-bag', 'a', 1, '2024-11-29 23:45:07', 1, '2024-12-01 23:26:19', NULL, NULL, '::1', 1),
(8, 1, 'Laptop Bag', 'laptop-bag', 'a', 1, '2024-11-29 23:45:16', 1, '2024-12-01 23:26:29', NULL, NULL, '::1', 1),
(9, 1, 'Gift Box', 'gift-box', 'd', 1, '2024-11-29 23:45:42', 1, '2024-12-01 23:26:42', 1, '2025-02-22 00:41:12', '::1', 1),
(10, 1, 'Money Bag', 'money-bag', 'a', 1, '2024-11-29 23:45:55', 1, '2024-12-01 23:26:52', NULL, NULL, '::1', 1),
(11, 1, 'Hand Bag', 'hand-bag', 'a', 1, '2024-11-29 23:46:12', 1, '2024-12-01 23:27:07', NULL, NULL, '::1', 1),
(12, 3, 'Bracelet', 'bracelet', 'a', 1, '2024-11-29 23:48:02', 1, '2024-12-01 23:27:14', NULL, NULL, '::1', 1),
(13, 3, 'Earrings', 'earrings', 'a', 1, '2024-11-29 23:48:17', 1, '2024-12-01 23:27:22', NULL, NULL, '::1', 1),
(14, 3, 'Jewelry Case', 'jewelry-case', 'a', 1, '2024-11-29 23:48:26', 1, '2024-12-01 23:27:32', NULL, NULL, '::1', 1),
(15, 3, 'Necklace', 'necklace', 'a', 1, '2024-11-29 23:48:41', 1, '2024-12-01 23:27:39', NULL, NULL, '::1', 1),
(16, 3, 'Bridal Jewelry', 'bridal-jewelry', 'a', 1, '2024-11-29 23:49:04', 1, '2024-12-01 23:27:50', NULL, NULL, '::1', 1),
(17, 3, 'Crown', 'crown', 'a', 1, '2024-11-29 23:49:16', 1, '2024-12-01 23:27:55', NULL, NULL, '::1', 1),
(18, 3, 'Pendant', 'pendant', 'a', 1, '2024-11-29 23:49:25', 1, '2024-12-01 23:28:03', NULL, NULL, '::1', 1),
(19, 3, 'Bangle', 'bangle', 'a', 1, '2024-11-29 23:49:31', 1, '2024-12-01 23:28:08', NULL, NULL, '::1', 1),
(20, 3, 'Ring', 'ring', 'a', 1, '2024-11-29 23:49:36', 1, '2024-12-01 23:28:13', NULL, NULL, '::1', 1),
(21, 3, 'Anklet', 'anklet', 'a', 1, '2024-11-29 23:49:42', 1, '2024-12-01 23:28:18', NULL, NULL, '::1', 1),
(22, 3, 'Taira', 'taira', 'a', 1, '2024-11-29 23:49:51', 1, '2024-12-01 23:28:23', NULL, NULL, '::1', 1),
(23, 3, 'Belly Chain', 'belly-chain', 'a', 1, '2024-11-29 23:50:01', 1, '2024-12-01 23:28:30', NULL, NULL, '::1', 1),
(24, 3, 'Jewelry Box', 'jewelry-box', 'a', 1, '2024-11-29 23:50:15', 1, '2024-12-01 23:28:47', NULL, NULL, '::1', 1),
(25, 3, 'Pin Brooch', 'pin-brooch', 'a', 1, '2024-11-29 23:50:27', 1, '2024-12-01 23:28:59', NULL, NULL, '::1', 1),
(26, 3, 'Fashion Jewelry', 'fashion-jewelry', 'a', 1, '2024-11-29 23:50:56', NULL, NULL, NULL, NULL, '::1', 1),
(27, 7, 'Men Shoes', 'men-shoes', 'a', 1, '2024-11-29 23:52:36', NULL, NULL, NULL, NULL, '::1', 1),
(28, 7, 'Men Boot', 'men-boot', 'a', 1, '2024-11-29 23:52:55', NULL, NULL, NULL, NULL, '::1', 1),
(29, 7, 'Ladies Shoes', 'ladies-shoes', 'a', 1, '2024-11-29 23:53:16', NULL, NULL, NULL, NULL, '::1', 1),
(30, 7, 'Ladies Boot', 'ladies-boot', 'a', 1, '2024-11-29 23:53:33', NULL, NULL, NULL, NULL, '::1', 1),
(31, 7, 'High Heels', 'high-heels', 'a', 1, '2024-11-29 23:54:01', NULL, NULL, NULL, NULL, '::1', 1),
(32, 7, 'Formal Shoes', 'formal-shoes', 'a', 1, '2024-11-29 23:54:23', NULL, NULL, NULL, NULL, '::1', 1),
(33, 7, 'Sandals', 'sandals', 'a', 1, '2024-11-29 23:54:42', NULL, NULL, NULL, NULL, '::1', 1),
(34, 7, 'Running Shoes', 'running-shoes', 'a', 1, '2024-11-29 23:55:08', NULL, NULL, NULL, NULL, '::1', 1),
(35, 7, 'Casual Shoes', 'casual-shoes', 'a', 1, '2024-11-29 23:55:31', NULL, NULL, NULL, NULL, '::1', 1),
(36, 7, 'Loafers', 'loafers', 'a', 1, '2024-11-29 23:55:49', NULL, NULL, NULL, NULL, '::1', 1),
(37, 7, 'Sports Shoe', 'sports-shoes', 'a', 1, '2024-11-29 23:56:14', NULL, NULL, NULL, NULL, '::1', 1),
(38, 7, 'Baby Shoes', 'baby-shoes', 'a', 1, '2024-11-29 23:56:31', NULL, NULL, NULL, NULL, '::1', 1),
(39, 7, 'Low Top Shoes', 'low-top-shoes', 'a', 1, '2024-11-29 23:57:00', NULL, NULL, NULL, NULL, '::1', 1),
(40, 7, 'Rain Boot', 'rain-boot', 'a', 1, '2024-11-29 23:57:14', NULL, NULL, NULL, NULL, '::1', 1),
(41, 7, 'Football Shoes', 'football-shoes', 'a', 1, '2024-11-29 23:57:33', NULL, NULL, NULL, NULL, '::1', 1),
(42, 7, 'Slippers', 'slippers', 'a', 1, '2024-11-29 23:57:52', NULL, NULL, NULL, NULL, '::1', 1),
(43, 2, 'Eye Shadow', 'eye-shadow', 'a', 1, '2024-11-29 23:59:34', NULL, NULL, NULL, NULL, '::1', 1),
(44, 2, 'Eyeliner', 'eyeliner', 'a', 1, '2024-11-30 00:00:05', NULL, NULL, NULL, NULL, '::1', 1),
(45, 2, 'Face Powder', 'face-powder', 'a', 1, '2024-11-30 00:00:26', NULL, NULL, NULL, NULL, '::1', 1),
(46, 2, 'Makeup Remover', 'makeup-remover', 'a', 1, '2024-11-30 00:00:53', NULL, NULL, NULL, NULL, '::1', 1),
(47, 2, 'Eye Brushes', 'eye-brushes', 'a', 1, '2024-11-30 00:01:33', NULL, NULL, NULL, NULL, '::1', 1),
(48, 2, 'Hair Removal', 'hair-removal', 'a', 1, '2024-11-30 00:02:03', NULL, NULL, NULL, NULL, '::1', 1),
(49, 2, 'Mirror', 'mirror', 'a', 1, '2024-11-30 00:02:18', NULL, NULL, NULL, NULL, '::1', 1),
(50, 2, 'Teeth Whitening', 'teeth-whitening', 'a', 1, '2024-11-30 00:02:40', NULL, NULL, NULL, NULL, '::1', 1),
(51, 2, 'Nail Polish', 'nail-polish', 'a', 1, '2024-11-30 00:05:06', NULL, NULL, NULL, NULL, '::1', 1),
(52, 2, 'Lip Gloss', 'lip-gloos', 'a', 1, '2024-11-30 00:05:24', NULL, NULL, NULL, NULL, '::1', 1),
(53, 2, 'Lip Liner', 'lip-liner', 'a', 1, '2024-11-30 00:05:53', NULL, NULL, NULL, NULL, '::1', 1),
(54, 2, 'Lipstick', 'lipstick', 'a', 1, '2024-11-30 00:06:15', NULL, NULL, NULL, NULL, '::1', 1),
(55, 2, 'Anti Hair Loss', 'anti-hair-loss', 'a', 1, '2024-11-30 00:06:44', NULL, NULL, NULL, NULL, '::1', 1),
(56, 2, 'Hair Spray', 'hair-spray', 'a', 1, '2024-11-30 00:07:23', NULL, NULL, NULL, NULL, '::1', 1),
(57, 2, 'Hair Dryer', 'hair-dryer', 'a', 1, '2024-11-30 00:08:01', NULL, NULL, NULL, NULL, '::1', 1),
(58, 2, 'Hair Oil', 'hair-oil', 'a', 1, '2024-11-30 00:08:34', NULL, NULL, NULL, NULL, '::1', 1),
(59, 2, 'Shower Gel', 'shower-gel', 'a', 1, '2024-11-30 00:08:54', NULL, NULL, NULL, NULL, '::1', 1),
(60, 2, 'Candles', 'candles', 'a', 1, '2024-11-30 00:10:18', NULL, NULL, NULL, NULL, '::1', 1),
(61, 2, 'Lotion', 'lotion', 'a', 1, '2024-11-30 00:10:49', NULL, NULL, NULL, NULL, '::1', 1),
(62, 2, 'Perfume', 'perfume', 'a', 1, '2024-11-30 00:11:10', NULL, NULL, NULL, NULL, '::1', 1),
(63, 2, 'Perfume Set', 'perfume-set', 'a', 1, '2024-11-30 00:12:19', NULL, NULL, NULL, NULL, '::1', 1),
(64, 2, 'Deodorant', 'deodorant', 'a', 1, '2024-11-30 00:12:54', NULL, NULL, NULL, NULL, '::1', 1),
(65, 2, 'Soap', 'soap', 'a', 1, '2024-11-30 00:13:21', NULL, NULL, NULL, NULL, '::1', 1),
(66, 2, 'Body Wash', 'body-wash', 'a', 1, '2024-11-30 00:13:37', NULL, NULL, NULL, NULL, '::1', 1),
(67, 2, 'Hair Conditioner', 'hair-conditioner', 'a', 1, '2024-11-30 00:14:02', NULL, NULL, NULL, NULL, '::1', 1),
(68, 2, 'Toner', 'toner', 'a', 1, '2024-11-30 00:14:16', NULL, NULL, NULL, NULL, '::1', 1),
(69, 2, 'Facial Mask', 'facial-mask', 'a', 1, '2024-11-30 00:14:31', NULL, NULL, NULL, NULL, '::1', 1),
(70, 2, 'Face Moisturizer', 'face-moisturizer', 'a', 1, '2024-11-30 00:15:14', NULL, NULL, NULL, NULL, '::1', 1),
(71, 2, 'Face Serum', 'face-serum', 'a', 1, '2024-11-30 00:15:35', 1, '2024-12-01 23:36:25', NULL, NULL, '::1', 1),
(72, 2, 'Sunscreen', 'sunscreen', 'a', 1, '2024-11-30 00:15:55', 1, '2024-12-01 23:36:33', NULL, NULL, '::1', 1),
(73, 5, 'Casual Pants For Men', 'casual-pants', 'a', 1, '2024-11-30 00:17:10', 1, '2024-11-30 00:40:33', NULL, NULL, '::1', 1),
(74, 5, 'Mens Jeans Pant', 'mens-jeans-pant', 'a', 1, '2024-11-30 00:17:37', 1, '2024-11-30 00:36:38', NULL, NULL, '::1', 1),
(75, 5, 'Men Suit', 'men-suit', 'a', 1, '2024-11-30 00:17:54', 1, '2024-11-30 00:36:51', NULL, NULL, '::1', 1),
(76, 5, 'Leather Jackets For Men', 'leather-jackets-men', 'a', 1, '2024-11-30 00:18:34', NULL, NULL, NULL, NULL, '::1', 1),
(77, 5, 'Trouser', 'trouser', 'a', 1, '2024-11-30 00:18:48', NULL, NULL, NULL, NULL, '::1', 1),
(78, 5, 'Shirt', 'shirt', 'a', 1, '2024-11-30 00:19:03', NULL, NULL, NULL, NULL, '::1', 1),
(79, 5, 'Shorts', 'shorts', 'a', 1, '2024-11-30 00:19:14', NULL, NULL, NULL, NULL, '::1', 1),
(80, 5, 'Tie Clip', 'tie-clip', 'a', 1, '2024-11-30 00:19:30', NULL, NULL, NULL, NULL, '::1', 1),
(81, 5, 'Mens Sweater', 'mens-sweater', 'a', 1, '2024-11-30 00:19:48', NULL, NULL, NULL, NULL, '::1', 1),
(82, 5, 'Boxers', 'boxers', 'a', 1, '2024-11-30 00:20:02', NULL, NULL, NULL, NULL, '::1', 1),
(83, 5, 'Mens Hat', 'mens-hat', 'a', 1, '2024-11-30 00:20:19', NULL, NULL, NULL, NULL, '::1', 1),
(84, 5, 'Leather Gloves', 'leather-gloves', 'a', 1, '2024-11-30 00:20:36', NULL, NULL, NULL, NULL, '::1', 1),
(85, 5, 'Men Sweatpants', 'men-sweatpants', 'a', 1, '2024-11-30 00:21:13', NULL, NULL, NULL, NULL, '::1', 1),
(86, 5, 'Socks', 'socks', 'a', 1, '2024-11-30 00:21:28', NULL, NULL, NULL, NULL, '::1', 1),
(87, 5, 'Tie', 'tie', 'a', 1, '2024-11-30 00:21:37', NULL, NULL, NULL, NULL, '::1', 1),
(88, 5, 'Bow Ties', 'bow-ties', 'a', 1, '2024-11-30 00:22:00', NULL, NULL, NULL, NULL, '::1', 1),
(89, 5, 'Gloves', 'gloves', 'a', 1, '2024-11-30 00:22:12', 1, '2024-11-30 00:37:06', NULL, NULL, '::1', 1),
(90, 6, 'Hoodies & Sweatshirts', 'hoodies-sweatshirts', 'a', 1, '2024-11-30 00:23:18', 1, '2024-11-30 00:37:32', NULL, NULL, '::1', 1),
(91, 6, 'Womens Suits Blazers', 'womens-suits-blazers', 'a', 1, '2024-11-30 00:25:08', NULL, NULL, NULL, NULL, '::1', 1),
(92, 6, 'Bodysuits', 'bodysuits', 'a', 1, '2024-11-30 00:25:23', NULL, NULL, NULL, NULL, '::1', 1),
(93, 6, 'Coats Jackets', 'coats-jackets', 'a', 1, '2024-11-30 00:25:50', NULL, NULL, NULL, NULL, '::1', 1),
(94, 6, 'Swimwear', 'swimwear', 'a', 1, '2024-11-30 00:26:07', NULL, NULL, NULL, NULL, '::1', 1),
(95, 6, 'Bikini Set', 'bikini-set', 'a', 1, '2024-11-30 00:26:27', NULL, NULL, NULL, NULL, '::1', 1),
(96, 6, 'Skirt', 'skirt', 'a', 1, '2024-11-30 00:26:38', NULL, NULL, NULL, NULL, '::1', 1),
(97, 6, 'Womens Jeans', 'womens-jeans', 'a', 1, '2024-11-30 00:27:10', NULL, NULL, NULL, NULL, '::1', 1),
(98, 6, 'Wedding Dresses', 'wedding-dresses', 'a', 1, '2024-11-30 00:27:31', NULL, NULL, NULL, NULL, '::1', 1),
(99, 6, 'Prom Dresses', 'prom-dresses', 'a', 1, '2024-11-30 00:27:45', NULL, NULL, NULL, NULL, '::1', 1),
(100, 6, 'Evening Dresses', 'evening-dresses', 'a', 1, '2024-11-30 00:28:02', NULL, NULL, NULL, NULL, '::1', 1),
(101, 6, 'Cosplay Costumes', 'cosplay-costumes', 'a', 1, '2024-11-30 00:28:30', NULL, NULL, NULL, NULL, '::1', 1),
(102, 6, 'Bra', 'bra', 'a', 1, '2024-11-30 00:28:40', NULL, NULL, NULL, NULL, '::1', 1),
(103, 6, 'Panties', 'panties', 'a', 1, '2024-11-30 00:28:52', NULL, NULL, NULL, NULL, '::1', 1),
(104, 6, 'Women Socks', 'women-socks', 'a', 1, '2024-11-30 00:29:14', NULL, NULL, NULL, NULL, '::1', 1),
(105, 6, 'Bucket Hats', 'bucket-hats', 'a', 1, '2024-11-30 00:29:42', NULL, NULL, NULL, NULL, '::1', 1),
(106, 6, 'Belts', 'belts', 'a', 1, '2024-11-30 00:29:54', 1, '2024-11-30 00:37:40', NULL, NULL, '::1', 1),
(107, 8, 'Baby Bottle', 'baby-bottle', 'a', 1, '2024-11-30 00:30:32', 1, '2024-11-30 00:37:48', NULL, NULL, '::1', 1),
(108, 8, 'Diapers', 'diapers', 'a', 1, '2024-11-30 00:30:54', NULL, NULL, NULL, NULL, '::1', 1),
(109, 8, 'Potty & Washing', 'potty-washing', 'a', 1, '2024-11-30 00:31:33', NULL, NULL, NULL, NULL, '::1', 1),
(110, 8, 'Water Toys', 'water-toys', 'a', 1, '2024-11-30 00:31:50', NULL, NULL, NULL, NULL, '::1', 1),
(111, 8, 'Remote Control Toys', 'remote-control-toys', 'a', 1, '2024-11-30 00:32:10', NULL, NULL, NULL, NULL, '::1', 1),
(112, 8, 'Baby Gift Set', 'baby-gift-set', 'a', 1, '2024-11-30 00:32:28', NULL, NULL, NULL, NULL, '::1', 1),
(113, 8, 'Baby Dress', 'baby-dress', 'a', 1, '2024-11-30 00:32:40', NULL, NULL, NULL, NULL, '::1', 1),
(114, 8, 'Baby Socks', 'baby-socks', 'a', 1, '2024-11-30 00:32:57', NULL, NULL, NULL, NULL, '::1', 1),
(115, 8, 'Baby Swimsuit', 'baby-swimsuit', 'a', 1, '2024-11-30 00:33:26', NULL, NULL, NULL, NULL, '::1', 1),
(116, 8, 'Baby Jacket', 'baby-jacket', 'a', 1, '2024-11-30 00:33:49', NULL, NULL, NULL, NULL, '::1', 1),
(117, 8, 'Baby Skirt', 'baby-skirt', 'a', 1, '2024-11-30 00:34:01', NULL, NULL, NULL, NULL, '::1', 1),
(118, 8, 'Baby Sweater', 'baby-sweater', 'a', 1, '2024-11-30 00:34:18', NULL, NULL, NULL, NULL, '::1', 1),
(119, 8, 'Baby Shoes', 'baby-shoes', 'a', 1, '2024-11-30 00:34:51', NULL, NULL, NULL, NULL, '::1', 1),
(120, 8, 'Baby Sports Shoes', 'baby-sports-shoes', 'a', 1, '2024-11-30 00:35:12', 1, '2024-11-30 00:42:30', NULL, NULL, '::1', 1),
(121, 9, 'Sunglasses', 'sunglasses', 'a', 1, '2024-11-30 00:42:48', 1, '2024-11-30 00:43:34', NULL, NULL, '::1', 1),
(122, 9, 'Women Sunglasses', 'women-sunglasses', 'a', 1, '2024-11-30 00:42:56', 1, '2024-11-30 00:43:27', NULL, NULL, '::1', 1),
(123, 9, 'Baby Sunglasses', 'baby-sunglasses', 'a', 1, '2024-11-30 00:43:18', NULL, NULL, NULL, NULL, '::1', 1),
(124, 9, 'Party Sunglasses', 'party-sunglasses', 'a', 1, '2024-11-30 00:43:43', NULL, NULL, NULL, NULL, '::1', 1),
(125, 9, 'Goggles', 'goggles', 'a', 1, '2024-11-30 00:43:54', 1, '2024-11-30 00:44:01', NULL, NULL, '::1', 1),
(126, 9, 'Reading Glasses', 'reading-glasses', 'a', 1, '2024-11-30 00:44:13', NULL, NULL, NULL, NULL, '::1', 1),
(127, 17, 'Ceiling Fan', 'ceiling-fan', 'a', 1, '2024-11-30 00:45:23', NULL, NULL, NULL, NULL, '::1', 1),
(128, 17, 'Electric Blanket', 'electric-blanket', 'a', 1, '2024-11-30 00:46:17', NULL, NULL, NULL, NULL, '::1', 1),
(129, 17, 'Fan', 'fan', 'a', 1, '2024-11-30 00:46:29', NULL, NULL, NULL, NULL, '::1', 1),
(130, 17, 'Heater', 'heater', 'a', 1, '2024-11-30 00:46:36', NULL, NULL, NULL, NULL, '::1', 1),
(131, 17, 'Air Conditioner', 'air-conditioner', 'a', 1, '2024-11-30 00:46:56', NULL, NULL, NULL, NULL, '::1', 1),
(132, 17, 'Smart Home', 'smar-home', 'a', 1, '2024-11-30 00:47:15', NULL, NULL, NULL, NULL, '::1', 1),
(133, 17, 'LED Screen', 'led-screen', 'a', 1, '2024-11-30 00:48:00', NULL, NULL, NULL, NULL, '::1', 1),
(134, 17, 'Solar Panel', 'solar-panel', 'a', 1, '2024-11-30 00:48:26', NULL, NULL, NULL, NULL, '::1', 1),
(135, 17, 'Voltage Converter', 'voltage-converter', 'a', 1, '2024-11-30 00:48:56', NULL, NULL, NULL, NULL, '::1', 1),
(136, 17, 'Dust Protection', 'dust-protection', 'a', 1, '2024-11-30 00:49:18', NULL, NULL, NULL, NULL, '::1', 1),
(137, 17, 'Pillow', 'pillow', 'a', 1, '2024-11-30 00:49:28', NULL, NULL, NULL, NULL, '::1', 1),
(138, 17, 'Umbrella', 'umbrella', 'a', 1, '2024-11-30 00:49:41', NULL, NULL, NULL, NULL, '::1', 1),
(139, 17, 'Calculator', 'calculator', 'a', 1, '2024-11-30 00:49:58', NULL, NULL, NULL, NULL, '::1', 1),
(140, 17, 'Compass', 'compass', 'a', 1, '2024-11-30 00:50:12', NULL, NULL, NULL, NULL, '::1', 1),
(141, 17, 'Digital Pen', 'digital-pen', 'a', 1, '2024-11-30 00:50:32', NULL, NULL, NULL, NULL, '::1', 1),
(142, 17, 'Kindle', 'kindle', 'a', 1, '2024-11-30 00:50:49', NULL, NULL, NULL, NULL, '::1', 1),
(143, 17, 'Erasers', 'erasers', 'a', 1, '2024-11-30 00:51:04', NULL, NULL, NULL, NULL, '::1', 1),
(144, 17, 'Tape', 'tape', 'a', 1, '2024-11-30 00:51:14', NULL, NULL, NULL, NULL, '::1', 1),
(145, 17, 'Whiteboard', 'whiteboard', 'a', 1, '2024-11-30 00:51:30', NULL, NULL, NULL, NULL, '::1', 1),
(146, 17, 'Scissors', 'scissors', 'a', 1, '2024-11-30 00:51:57', NULL, NULL, NULL, NULL, '::1', 1),
(147, 17, 'Projector', 'projector', 'a', 1, '2024-11-30 00:52:18', NULL, NULL, NULL, NULL, '::1', 1),
(148, 17, 'Diary', 'diary', 'a', 1, '2024-11-30 00:52:30', NULL, NULL, NULL, NULL, '::1', 1),
(149, 17, 'Wrapping Paper', 'wrapping-paper', 'a', 1, '2024-11-30 00:52:48', NULL, NULL, NULL, NULL, '::1', 1),
(150, 17, 'Laminating Paper', 'laminating-paper', 'a', 1, '2024-11-30 00:53:19', NULL, NULL, NULL, NULL, '::1', 1),
(151, 4, 'Headphones', 'headphones', 'a', 1, '2024-11-30 00:54:36', 1, '2024-11-30 00:57:27', NULL, NULL, '::1', 1),
(152, 4, 'Adapter', 'adapter', 'a', 1, '2024-11-30 00:54:53', 1, '2024-11-30 00:58:07', NULL, NULL, '::1', 1),
(153, 4, 'Back Cover', 'back-cover', 'a', 1, '2024-11-30 00:55:09', 1, '2024-11-30 00:58:37', NULL, NULL, '::1', 1),
(154, 4, 'Protector', 'protector', 'a', 1, '2024-11-30 00:56:03', 1, '2024-11-30 00:59:07', NULL, NULL, '::1', 1),
(155, 4, 'Battery', 'battery', 'a', 1, '2024-11-30 00:56:18', 1, '2024-11-30 00:59:27', NULL, NULL, '::1', 1),
(156, 4, 'Powerbank', 'powerbank', 'a', 1, '2024-11-30 00:56:29', 1, '2024-11-30 00:59:41', NULL, NULL, '::1', 1),
(157, 4, 'Cables', 'cables', 'a', 1, '2024-11-30 00:58:14', NULL, NULL, NULL, NULL, '::1', 1),
(158, 4, 'Charger', 'charger', 'a', 1, '2024-11-30 01:00:38', NULL, NULL, NULL, NULL, '::1', 1),
(159, 4, 'Airbuds', 'airbuds', 'a', 1, '2024-11-30 01:00:48', NULL, NULL, NULL, NULL, '::1', 1),
(160, 14, 'Snowboard', 'snowboard', 'a', 1, '2024-11-30 01:01:50', NULL, NULL, NULL, NULL, '::1', 1),
(161, 14, 'Jet Ski', 'jet-ski', 'a', 1, '2024-11-30 01:02:12', NULL, NULL, NULL, NULL, '::1', 1),
(162, 14, 'Swimming', 'swimming', 'a', 1, '2024-11-30 01:02:27', NULL, NULL, NULL, NULL, '::1', 1),
(163, 14, 'Fishing Rod', 'fishing-rod', 'a', 1, '2024-11-30 01:03:03', NULL, NULL, NULL, NULL, '::1', 1),
(164, 14, 'Grills & BBQ Equipment', 'grills-bbq-equipment', 'a', 1, '2024-11-30 01:04:31', NULL, NULL, NULL, NULL, '::1', 1),
(165, 14, 'Luggage Lock', 'luggage-lock', 'a', 1, '2024-11-30 01:05:00', NULL, NULL, NULL, NULL, '::1', 1),
(166, 14, 'Yoga', 'yoga', 'a', 1, '2024-11-30 01:05:13', NULL, NULL, NULL, NULL, '::1', 1),
(167, 14, 'Tent', 'tent', 'a', 1, '2024-11-30 01:05:23', NULL, NULL, NULL, NULL, '::1', 1),
(168, 15, 'Gopro', 'gorpo', 'a', 1, '2024-11-30 01:06:29', NULL, NULL, NULL, NULL, '::1', 1),
(169, 15, 'Camera', 'camera', 'a', 1, '2024-11-30 01:06:46', NULL, NULL, NULL, NULL, '::1', 1),
(170, 15, 'Travel Bags', 'travel-bags', 'a', 1, '2024-11-30 01:06:59', NULL, NULL, NULL, NULL, '::1', 1),
(171, 15, 'Travel Luggage', 'travel-luggage', 'a', 1, '2024-11-30 01:07:24', NULL, NULL, NULL, NULL, '::1', 1),
(172, 15, 'Travel Pillow', 'travel-pillow', 'a', 1, '2024-11-30 01:07:43', NULL, NULL, NULL, NULL, '::1', 1),
(173, 15, 'Beanbags', 'beanbags', 'd', 1, '2024-11-30 01:07:59', NULL, NULL, 1, '2025-02-22 00:41:06', '::1', 1),
(174, 15, 'Popcorn Maker', 'popcorn-maker', 'a', 1, '2024-11-30 01:09:08', NULL, NULL, NULL, NULL, '::1', 1),
(175, 15, 'Virtual Reality', 'virtual-reality', 'a', 1, '2024-11-30 01:09:25', NULL, NULL, NULL, NULL, '::1', 1),
(176, 15, 'Bluetooth Speakers', 'bluetooth-speakers', 'a', 1, '2024-11-30 01:10:11', 1, '2024-11-30 01:10:28', NULL, NULL, '::1', 1),
(177, 10, 'Watch', 'watch', 'a', 1, '2024-11-30 01:11:27', NULL, NULL, NULL, NULL, '::1', 1),
(178, 10, 'Womens Watch', 'womens-watch', 'a', 1, '2024-11-30 01:11:56', NULL, NULL, NULL, NULL, '::1', 1),
(179, 10, 'Mens Watches', 'mens-watches', 'a', 1, '2024-11-30 01:12:15', NULL, NULL, NULL, NULL, '::1', 1),
(180, 10, 'Smart Watch', 'smart-watch', 'a', 1, '2024-11-30 01:12:40', NULL, NULL, NULL, NULL, '::1', 1),
(181, 10, 'Apple Watch', 'apple-watch', 'a', 1, '2024-11-30 01:12:58', NULL, NULL, NULL, NULL, '::1', 1),
(182, 10, 'Fit Band', 'fit-band', 'a', 1, '2024-11-30 01:13:11', NULL, NULL, NULL, NULL, '::1', 1),
(183, 16, 'Automobile', 'automobile', 'a', 1, '2024-11-30 01:13:58', NULL, NULL, NULL, NULL, '::1', 1),
(184, 16, 'Interior Accessories', 'interior-accessories', 'a', 1, '2024-11-30 01:14:29', NULL, NULL, NULL, NULL, '::1', 1),
(185, 16, 'Car Accessories', 'car-accessories', 'a', 1, '2024-11-30 01:14:49', NULL, NULL, NULL, NULL, '::1', 1),
(186, 16, 'Car Audio', 'car-audio', 'a', 1, '2024-11-30 01:15:05', NULL, NULL, NULL, NULL, '::1', 1),
(187, 16, 'Motorcycle Accessories', 'motorcycle-accessories', 'a', 1, '2024-11-30 01:15:52', NULL, NULL, NULL, NULL, '::1', 1),
(188, 16, 'Car Kit', 'car-kit', 'a', 1, '2024-11-30 01:16:02', NULL, NULL, NULL, NULL, '::1', 1),
(189, 18, 'Breakfast', 'breakfast', 'a', 1, '2024-11-30 01:16:49', NULL, NULL, NULL, NULL, '::1', 1),
(190, 18, 'Laundry & Household', 'laundry-household', 'a', 1, '2024-11-30 01:17:12', NULL, NULL, NULL, NULL, '::1', 1),
(191, 18, 'Cat', 'cat', 'a', 1, '2024-11-30 01:17:22', NULL, NULL, NULL, NULL, '::1', 1),
(192, 18, 'Cat Bag', 'cat-bag', 'a', 1, '2024-11-30 01:17:34', NULL, NULL, NULL, NULL, '::1', 1),
(193, 18, 'Dog', 'dog', 'a', 1, '2024-11-30 01:17:47', NULL, NULL, NULL, NULL, '::1', 1),
(194, 18, 'Fish', 'fish', 'a', 1, '2024-11-30 01:17:51', NULL, NULL, NULL, NULL, '::1', 1),
(195, 18, 'Bird', 'bird', 'a', 1, '2024-11-30 01:17:59', NULL, NULL, NULL, NULL, '::1', 1),
(196, 18, 'Small Pet', 'small-pet', 'a', 1, '2024-11-30 01:18:20', NULL, NULL, NULL, NULL, '::1', 1),
(197, 13, 'Fishing Reel', 'fishing-reel', 'a', 1, '2024-11-30 01:19:07', NULL, NULL, NULL, NULL, '::1', 1),
(198, 13, 'Fishing', 'fishing', 'a', 1, '2024-11-30 01:19:12', NULL, NULL, NULL, NULL, '::1', 1),
(199, 13, 'Fishing Line', 'fishing-line', 'a', 1, '2024-11-30 01:19:27', NULL, NULL, NULL, NULL, '::1', 1),
(200, 13, 'Fishing Rod', 'fishing-rod', 'a', 1, '2024-11-30 01:19:39', NULL, NULL, NULL, NULL, '::1', 1),
(201, 13, 'Sportswear', 'sportswear', 'a', 1, '2024-11-30 01:20:02', NULL, NULL, NULL, NULL, '::1', 1),
(202, 13, 'Sports Bag', 'sports-bag', 'a', 1, '2024-11-30 01:20:17', NULL, NULL, NULL, NULL, '::1', 1),
(203, 13, 'Sport Accessories', 'sport-accessories', 'a', 1, '2024-11-30 01:20:45', NULL, NULL, NULL, NULL, '::1', 1),
(204, 13, 'Camping & Hiking', 'camping-hiking', 'a', 1, '2024-11-30 01:21:05', NULL, NULL, NULL, NULL, '::1', 1),
(205, 13, 'Hunting', 'hunting', 'a', 1, '2024-11-30 01:21:25', NULL, NULL, NULL, NULL, '::1', 1),
(206, 13, 'Fitness & Bodybuilding', 'fitness-bodybuilding', 'a', 1, '2024-11-30 01:21:50', NULL, NULL, NULL, NULL, '::1', 1),
(207, 13, 'Skiing & Snowboarding', 'skiing-snowboarding', 'a', 1, '2024-11-30 01:22:35', NULL, NULL, NULL, NULL, '::1', 1),
(208, 12, 'Electronics', 'electronics', 'a', 1, '2024-11-30 01:23:13', NULL, NULL, NULL, NULL, '::1', 1),
(209, 12, 'Camera', 'camera', 'a', 1, '2024-11-30 01:23:24', NULL, NULL, NULL, NULL, '::1', 1),
(210, 12, 'Mobile Accessories', 'mobile-accessories', 'a', 1, '2024-11-30 01:23:42', NULL, NULL, NULL, NULL, '::1', 1),
(211, 12, 'Computer Accessories', 'computer-accessories', 'a', 1, '2024-11-30 01:24:02', NULL, NULL, NULL, NULL, '::1', 1),
(212, 12, 'Gps & Navigation', 'gps-navigation', 'a', 1, '2024-11-30 01:24:26', NULL, NULL, NULL, NULL, '::1', 1),
(213, 12, 'Speaker', 'speaker', 'a', 1, '2024-11-30 01:24:38', NULL, NULL, NULL, NULL, '::1', 1),
(214, 12, 'Security & Surveillance', 'security-surveillance', 'a', 1, '2024-11-30 01:25:16', NULL, NULL, NULL, NULL, '::1', 1),
(215, 11, 'Medical Supplies & Equipment', 'medical-equipment', 'a', 1, '2024-11-30 01:26:50', NULL, NULL, NULL, NULL, '::1', 1),
(216, 11, 'Household Supplies', 'household-suppliers', 'a', 1, '2024-11-30 01:27:14', NULL, NULL, NULL, NULL, '::1', 1),
(217, 11, 'Oral Care', 'oral-care', 'a', 1, '2024-11-30 01:27:25', NULL, NULL, NULL, NULL, '::1', 1),
(218, 11, 'Personal Care', 'personal-care', 'a', 1, '2024-11-30 01:27:39', NULL, NULL, NULL, NULL, '::1', 1),
(219, 11, 'Sexual Wellness ', 'sexual-wellness', 'a', 1, '2024-11-30 01:28:06', NULL, NULL, NULL, NULL, '::1', 1),
(220, 11, 'Health Nutrition', 'health-nutrition', 'a', 1, '2024-11-30 01:28:23', NULL, NULL, NULL, NULL, '::1', 1),
(221, 11, 'Vision Care', 'vision-care', 'a', 1, '2024-11-30 01:28:38', NULL, NULL, NULL, NULL, '::1', 1),
(222, 11, 'Vitamins & Dietary Supplements', 'vitamins-dietary-supplements', 'a', 1, '2024-11-30 01:29:34', NULL, NULL, NULL, NULL, '::1', 1),
(223, 11, 'Kitchen', 'kitchen', 'a', 1, '2024-11-30 01:29:47', NULL, NULL, NULL, NULL, '::1', 1),
(224, 11, 'Dining', 'dining', 'a', 1, '2024-11-30 01:30:00', NULL, NULL, NULL, NULL, '::1', 1),
(225, 11, 'Bedding', 'bedding', 'a', 1, '2024-11-30 01:30:06', NULL, NULL, NULL, NULL, '::1', 1),
(226, 11, 'Bath', 'bath', 'a', 1, '2024-11-30 01:30:16', NULL, NULL, NULL, NULL, '::1', 1),
(227, 11, 'Furniture', 'furniture', 'a', 1, '2024-11-30 01:30:23', NULL, NULL, NULL, NULL, '::1', 1),
(228, 11, 'Wall Art', 'wall-art', 'a', 1, '2024-11-30 01:30:35', NULL, NULL, NULL, NULL, '::1', 1),
(229, 19, 'Event & Party Supplies', 'event-party-supplies', 'a', 1, '2024-11-30 01:31:31', NULL, NULL, NULL, NULL, '::1', 1),
(230, 19, 'Heating Cooling & Air Quality', 'heating-cooling-air-quality', 'a', 1, '2024-11-30 01:32:06', NULL, NULL, NULL, NULL, '::1', 1),
(231, 19, 'Storage Organizers', 'storage-organizers', 'a', 1, '2024-11-30 01:33:08', NULL, NULL, NULL, NULL, '::1', 1),
(232, 19, 'Smart Home Appliances', 'smart-home-appliances', 'a', 1, '2024-11-30 01:33:28', NULL, NULL, NULL, NULL, '::1', 1),
(233, 19, 'Kitchen & Bath Fixtures', 'kitchen-bath-fixtures', 'a', 1, '2024-11-30 01:33:49', 1, '2024-12-02 22:40:31', NULL, NULL, '::1', 1),
(234, 19, 'Light Bulbs', 'light-bulbd', 'a', 1, '2024-11-30 01:33:59', NULL, NULL, NULL, NULL, '::1', 1),
(235, 19, 'Lighting & Ceiling Fans', 'lighting-ceiling-fans', 'a', 1, '2024-11-30 01:34:14', 1, '2024-12-02 22:40:11', NULL, NULL, '::1', 1),
(236, 19, 'Measuring & Layout Tools', 'measuring-layout-tools', 'a', 1, '2024-11-30 01:34:36', 1, '2024-12-02 22:39:34', NULL, NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `Supplier_SlNo` int(11) NOT NULL,
  `Supplier_Code` varchar(50) NOT NULL,
  `Supplier_Name` varchar(150) NOT NULL,
  `Supplier_Type` varchar(50) NOT NULL DEFAULT 'retail',
  `Supplier_Phone` varchar(50) NOT NULL,
  `Supplier_Mobile` varchar(15) NOT NULL,
  `Supplier_Email` varchar(50) NOT NULL,
  `Supplier_OfficePhone` varchar(50) NOT NULL,
  `Supplier_Address` varchar(255) DEFAULT NULL,
  `contact_person` varchar(250) DEFAULT NULL,
  `District_SlNo` int(11) NOT NULL,
  `Supplier_Web` varchar(150) NOT NULL,
  `previous_due` decimal(18,2) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`Supplier_SlNo`, `Supplier_Code`, `Supplier_Name`, `Supplier_Type`, `Supplier_Phone`, `Supplier_Mobile`, `Supplier_Email`, `Supplier_OfficePhone`, `Supplier_Address`, `contact_person`, `District_SlNo`, `Supplier_Web`, `previous_due`, `image_name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'S00001', 'Mamun Enterprise', 'N', '', '01611990022', '', '', 'Mogbazaar, Dhaka', NULL, 0, '', '0.00', NULL, 'd', 1, '2024-04-29 15:05:09', NULL, NULL, 1, '2024-05-29 14:12:56', '5.31.196.206', 1),
(2, 'S00002', 'Liverpool', 'retail', '', '906423120', '', '', 'Bokasa', 'Mamun', 0, '', '0.00', NULL, 'd', 2, '2024-05-07 17:26:48', 2, '2024-05-07 17:32:21', 1, '2024-05-29 14:12:53', '5.31.196.206', 1),
(3, 'S00003', 'RFL Getwell', 'N', '', '01215', '', '', 'Dhaka', NULL, 0, '', '0.00', NULL, 'd', 1, '2024-05-13 13:40:45', NULL, NULL, 1, '2024-05-29 14:12:50', '5.31.196.206', 1),
(4, 'S00004', 'Ak auto', 'retail', '', '0150000000', '', '', 'Rn road', '', 0, '', '0.00', NULL, 'd', 1, '2024-05-15 00:55:48', 1, '2024-05-15 00:57:35', 1, '2024-05-29 14:12:46', '5.31.196.206', 1),
(5, 'S00005', 'anamul', 'retail', '', '0179999999', '', '', 'rn road', 'anamul', 0, '', '0.00', NULL, 'd', 1, '2024-05-15 12:08:53', NULL, NULL, 1, '2024-05-29 14:12:43', '5.31.196.206', 1),
(6, 'S00006', 'abdullah trading', 'retail', '', '01356565665', '', '', 'rn road', '', 0, '', '0.00', NULL, 'd', 1, '2024-05-15 16:03:38', NULL, NULL, 1, '2024-05-29 14:12:40', '5.31.196.206', 1),
(7, 'S00007', 'Xyz', 'N', '', '01755555555', '', '', 'mirpur', 'gvfnhg', 0, '', '0.00', NULL, 'a', 1, '2024-05-18 16:58:42', 1, '2024-06-03 11:23:07', 1, '2024-05-29 14:12:36', '103.159.73.250', 1),
(8, 'S00008', 'Juel', 'retail', '', '1234566', '', '', 'saflsfj', 'JUel', 0, '', '0.00', NULL, 'd', 1, '2024-05-25 12:32:28', 1, '2024-05-25 12:33:37', 1, '2024-05-29 14:12:31', '5.31.196.206', 1),
(9, 'S00009', 'KGW', 'retail', '', '--', '--', '', 'UAE', 'Mr. Humayun Kabir', 0, '', '5000.00', NULL, 'a', 1, '2024-05-29 14:14:06', 1, '2024-05-29 14:16:47', NULL, NULL, '5.31.196.206', 1),
(10, 'S00010', 'Cash Supplier', 'retail', '', '01', '', '', '…', 'tajul islam', 0, '', '600.00', NULL, 'a', 1, '2024-06-04 17:20:56', 1, '2024-09-04 10:00:25', NULL, NULL, '114.130.188.243', 1),
(11, 'S00011', 'Ms Mou Traders', 'retail', '', '01711162540', 'hjhgg@gmail.com', '', 'Sonamasjid, shibgang, Chapainowabgang', 'Mr Afzal ', 0, '', '12500.00', NULL, 'a', 1, '2024-06-16 12:05:10', NULL, NULL, NULL, NULL, '114.130.188.243', 1),
(12, 'S00012', 'Mr abuul ', 'retail', '', '017112345679', '', '', 'Buurimari, patgram', 'Mr abul ', 0, '', '0.00', NULL, 'a', 1, '2024-06-18 03:20:30', 1, '2024-06-19 03:37:26', NULL, NULL, '103.147.166.161', 1),
(13, 'S00013', 'Jamil shake', 'retail', '', '017653225677', '', '', 'Burimari,patgram', 'Jamil shake', 0, '', '0.00', NULL, 'a', 1, '2024-06-18 03:21:43', 1, '2024-06-18 05:59:31', NULL, NULL, '103.147.166.161', 1),
(14, 'S00014', 'Mahtab brothers', 'retail', '', '014224667887', '', '', 'Sonamasjid, shibgong', 'Mahtab ', 0, '', '0.00', NULL, 'a', 1, '2024-06-18 03:22:38', 1, '2024-06-25 11:01:30', NULL, NULL, '103.147.166.161', 1),
(15, 'S00015', 'Mr Sawon ', 'N', '', '01711543678', '', '', 'Banglabandha, ponchogor', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-06-18 06:05:07', 1, '2024-07-02 20:35:36', NULL, NULL, '103.147.166.161', 1),
(16, 'S00016', 'bokkar traders', 'retail', '', '01711234567', '', '', 'sonamasjid', 'mr bokkar', 0, '', '1200000.00', NULL, 'a', 1, '2024-06-19 02:58:47', 1, '2024-06-19 03:02:44', NULL, NULL, '103.147.166.161', 1),
(17, 'S00017', 'rifat fasion', 'retail', '', '014', '', '', 'mirpur', 'rifat', 0, '', '5000.00', NULL, 'a', 1, '2024-06-26 12:21:47', 1, '2024-06-26 12:22:39', NULL, NULL, '103.159.72.85', 1),
(18, 'S00018', 'ACI M,OTORS LTD', 'retail', '', '01324432848', '0', '', 'BARISHAL', 'SHAJJAD SHAMRAT', 0, '', '0.00', NULL, 'a', 5, '2024-07-01 12:24:25', 5, '2024-07-01 12:38:30', NULL, NULL, '118.179.69.241', 4),
(19, 'S00019', 'grey parts', 'retail', '', '01711037565', '', '', 'dhaka', 'rubel', 0, '', '0.00', NULL, 'a', 5, '2024-07-01 12:25:10', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(20, 'S00020', 'Green', 'retail', '', '01718282329as', '0', '', 'Dhaka', 'Omit', 0, '', '0.00', NULL, 'a', 1, '2024-08-01 17:07:07', NULL, NULL, NULL, NULL, '37.111.243.41', 1),
(21, 'S00021', 'ABC', 'N', '', '', '', '', 'Dhaka', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-09-08 14:53:41', NULL, NULL, NULL, NULL, '113.11.122.205', 5),
(22, 'S00022', 'Walton', 'retail', '', '01232863445', '', '', 'Kaliakoir', '-', 0, '', '0.00', NULL, 'a', 8, '2024-09-08 20:35:16', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(23, 'S00023', 'wALTON', 'N', '', '1', '', '', '0', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-09-13 12:26:50', NULL, NULL, NULL, NULL, '103.150.64.178', 6),
(24, 'S00024', 'CHEMCON CONSTRUCTION CHEMICALS', 'retail', '', '455754', '', '', 'INDUSTRIES AREA', '', 0, '', '0.00', NULL, 'd', 1, '2024-09-14 21:40:33', NULL, NULL, 1, '2024-09-14 21:41:11', '178.153.54.139', 1),
(25, 'S00025', 'salman auto', 'retail', '', '01987543467', '', '', 'shantahar', 'bellal hazi', 0, '', '0.00', NULL, 'a', 1, '2024-09-22 13:23:13', NULL, NULL, NULL, NULL, '202.134.11.236', 1),
(26, 'S00026', 'aks', 'N', '', '01478965421', '', '', 'kl', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-09-26 12:09:30', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(27, 'S00027', '', 'N', '', '', '', '', '', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-09-28 17:08:10', NULL, NULL, NULL, NULL, '103.159.73.102', 6),
(28, 'S00028', 'china', 'retail', '', '0000', '', '', '', '', 0, '', '0.00', NULL, 'a', 1, '2024-09-29 13:42:47', 1, '2024-09-29 13:43:13', NULL, NULL, '103.159.171.134', 1),
(29, 'S00029', 'rfl', 'retail', '', '564', '', '', '', '', 0, '', '0.00', NULL, 'a', 1, '2024-09-29 13:43:30', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(30, 'S00030', 'anower', 'retail', '', '463', '', '', '', '', 0, '', '0.00', NULL, 'a', 1, '2024-09-29 13:43:41', NULL, NULL, NULL, NULL, '103.159.171.134', 1),
(31, 'S00031', '', 'N', '', '', '', '', '', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-10-02 12:11:27', NULL, NULL, NULL, NULL, '103.159.73.97', 1),
(32, 'S00032', 'Crown', 'N', '', '01709631649', '', '', 'Gulshan 2', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-10-21 16:41:09', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(33, 'S00033', 'dspl 40', 'retail', '', '018471030400', '', '', '', 'rsm018', 0, '', '0.00', NULL, 'a', 17, '2024-10-22 13:54:36', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(34, 'S00034', 'mac bangladesh ltd', 'N', '', '855645765', '', '', 'ghjhdfvdsbdgnnty', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-10-23 13:20:51', NULL, NULL, NULL, NULL, '202.134.10.132', 1),
(35, 'S00035', 'FACtory', 'N', '', '0144', '', '', 'fc', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-10-29 15:55:33', NULL, NULL, NULL, NULL, '202.134.11.250', 1),
(36, 'S00036', 'Akij food', 'retail', '', '01997628264', '', '', '', 'kasem', 0, '', '0.00', NULL, 'a', 1, '2024-11-02 13:33:46', NULL, NULL, NULL, NULL, '202.134.10.138', 1),
(37, 'S00037', 'yfuhgh', 'N', '', '7657', '', '', 'ghfyug', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-11-02 13:37:16', NULL, NULL, NULL, NULL, '103.159.73.74', 12),
(38, 'S00038', 'Ab Food And', 'retail', '', '2132', '', '', 'Kacpur', 'Johir ', 0, '', '0.00', NULL, 'a', 1, '2024-11-12 12:13:01', NULL, NULL, NULL, NULL, '202.134.14.143', 1),
(39, 'S00039', 'SAGOR', 'retail', '', '1234', '', '', 'AAAAA', 'TTTTT', 0, '', '20000.00', NULL, 'a', 1, '2024-11-12 13:34:17', NULL, NULL, NULL, NULL, '103.159.73.81', 1),
(40, 'S00040', 'Lalon Hossain', 'N', '', '01781325634', '', '', 'Test Address', NULL, 0, '', '0.00', NULL, 'a', 1, '2024-11-22 18:51:45', NULL, NULL, NULL, NULL, '::1', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier_payment`
--

CREATE TABLE `tbl_supplier_payment` (
  `SPayment_id` int(11) NOT NULL,
  `SPayment_date` date DEFAULT NULL,
  `SPayment_invoice` varchar(20) DEFAULT NULL,
  `SPayment_customerID` int(11) DEFAULT NULL,
  `SPayment_TransactionType` varchar(25) DEFAULT NULL,
  `SPayment_amount` decimal(18,2) DEFAULT NULL,
  `SPayment_Paymentby` varchar(20) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `SPayment_notes` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `Addby` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplier_payment`
--

INSERT INTO `tbl_supplier_payment` (`SPayment_id`, `SPayment_date`, `SPayment_invoice`, `SPayment_customerID`, `SPayment_TransactionType`, `SPayment_amount`, `SPayment_Paymentby`, `account_id`, `SPayment_notes`, `status`, `Addby`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, '2024-04-28', '24010001', 0, 'CR', '500.00', 'cash', NULL, NULL, 'a', 1, '2024-04-28 16:40:44', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(2, '2024-04-29', 'TR00002', 1, 'CP', '2000.00', 'cash', NULL, 'Cash  Nazrul', 'a', 1, '2024-04-29 15:07:24', NULL, NULL, NULL, NULL, '103.159.73.251', 1),
(3, '2024-05-25', 'TR00003', 8, 'CP', '50000.00', 'bank', 2, '', 'a', 1, '2024-05-25 12:35:31', NULL, NULL, NULL, NULL, '123.200.30.131', 1),
(4, '2024-06-18', 'TR00004', 14, 'CP', '2200000.00', 'bank', 1, '', 'd', 1, '2024-06-18 03:51:02', NULL, NULL, 1, '2024-06-18 06:22:51', '103.147.166.161', 1),
(5, '2024-06-19', 'TR00005', 13, 'CP', '200000.00', 'bank', 4, '', 'a', 1, '2024-06-19 03:22:37', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(6, '2024-06-19', 'TR00006', 13, 'CP', '157000.00', 'bank', 4, '', 'a', 1, '2024-06-19 03:25:48', NULL, NULL, NULL, NULL, '103.147.166.161', 1),
(7, '2024-06-26', 'TR00007', 14, 'CP', '150000.00', 'bank', 5, '', 'a', 1, '2024-06-26 20:46:46', NULL, NULL, NULL, NULL, '114.130.180.140', 1),
(8, '2024-10-07', 'TR00008', 11, 'CP', '200000.00', 'bank', 4, 'cash', 'a', 1, '2024-10-07 18:49:14', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(9, '2024-10-18', 'TR00009', 15, 'CP', '5000.00', 'cash', NULL, '', 'a', 1, '2024-10-18 20:25:14', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(10, '2024-10-19', 'TR00010', 30, 'CP', '10000.00', 'cash', NULL, '', 'a', 1, '2024-10-19 03:19:58', NULL, NULL, NULL, NULL, '151.255.47.137', 1),
(11, '2024-10-24', 'TR00011', 34, 'CP', '20000.00', 'cash', NULL, '', 'a', 1, '2024-10-24 12:35:41', NULL, NULL, NULL, NULL, '103.134.61.23', 1),
(12, '2024-11-02', '240100099', 0, 'CR', '1000.00', 'cash', NULL, NULL, 'a', 1, '2024-11-02 07:58:18', NULL, NULL, NULL, NULL, '37.111.212.146', 1),
(13, '2024-11-12', 'TR00013', 38, 'CP', '3000.00', 'cash', NULL, '', 'a', 1, '2024-11-12 12:26:13', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_details`
--

CREATE TABLE `tbl_transfer_details` (
  `transferdetails_id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `purchase_rate` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transfer_details`
--

INSERT INTO `tbl_transfer_details` (`transferdetails_id`, `transfer_id`, `product_id`, `quantity`, `purchase_rate`, `total`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 1, 46, 20, '250.00', '5000.00', 'p', 1, '2024-06-29 15:34:19', NULL, NULL, NULL, NULL, '103.120.223.17'),
(2, 2, 82, 1, '35566.00', '35566.00', 'a', 1, '2024-09-13 12:33:13', 1, '2024-09-13 12:34:11', NULL, NULL, '103.150.64.178'),
(3, 3, 106, 60, '190.00', '11400.00', 'a', 1, '2024-10-06 13:59:49', 1, '2024-10-06 14:03:28', NULL, NULL, '103.185.224.24'),
(4, 3, 105, 60, '230.00', '13800.00', 'a', 1, '2024-10-06 13:59:49', 1, '2024-10-06 14:03:28', NULL, NULL, '103.185.224.24'),
(5, 4, 108, 60, '38.00', '2280.00', 'a', 1, '2024-10-08 16:44:31', 1, '2024-10-08 16:45:51', NULL, NULL, '103.185.224.24'),
(6, 4, 107, 60, '48.00', '2880.00', 'a', 1, '2024-10-08 16:44:31', 1, '2024-10-08 16:45:51', NULL, NULL, '103.185.224.24'),
(7, 5, 113, 10, '1200.00', '12000.00', 'p', 1, '2024-10-20 15:34:19', NULL, NULL, NULL, NULL, '103.159.73.88'),
(8, 5, 110, 5, '1050.00', '5250.00', 'p', 1, '2024-10-20 15:34:19', NULL, NULL, NULL, NULL, '103.159.73.88'),
(9, 6, 125, 7, '8.75', '61.25', 'p', 1, '2024-10-25 18:16:26', NULL, NULL, NULL, NULL, '151.255.40.184'),
(10, 7, 123, 100, '8.00', '800.00', 'p', 1, '2024-10-29 20:46:35', NULL, NULL, NULL, NULL, '103.231.162.27'),
(11, 8, 121, 10, '300.00', '3000.00', 'a', 1, '2024-11-02 19:04:49', 1, '2024-11-02 19:05:56', NULL, NULL, '119.73.101.72'),
(12, 8, 120, 2, '300.00', '600.00', 'a', 1, '2024-11-02 19:04:49', 1, '2024-11-02 19:05:56', NULL, NULL, '119.73.101.72');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer_master`
--

CREATE TABLE `tbl_transfer_master` (
  `transfer_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_by` int(11) NOT NULL,
  `receivedBy` int(11) DEFAULT NULL,
  `transfer_from` int(11) NOT NULL,
  `transfer_to` int(11) NOT NULL,
  `total_amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `note` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transfer_master`
--

INSERT INTO `tbl_transfer_master` (`transfer_id`, `transfer_date`, `transfer_by`, `receivedBy`, `transfer_from`, `transfer_to`, `total_amount`, `note`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, '2024-06-29', 1, NULL, 1, 2, '5000.00', '', 'p', 1, '2024-06-29 15:34:19', NULL, NULL, NULL, NULL, '103.120.223.17'),
(2, '2024-09-13', 3, 1, 6, 1, '35566.00', '', 'a', 1, '2024-09-13 12:33:13', 1, '2024-09-13 12:34:11', NULL, NULL, '103.150.64.178'),
(3, '2024-10-06', 1, 1, 1, 2, '25200.00', '', 'a', 1, '2024-10-06 13:59:49', 1, '2024-10-06 14:03:28', NULL, NULL, '103.185.224.24'),
(4, '2024-10-08', 2, 1, 1, 2, '5160.00', '', 'a', 1, '2024-10-08 16:44:31', 1, '2024-10-08 16:45:51', NULL, NULL, '103.185.224.24'),
(5, '2024-10-20', 1, NULL, 1, 3, '17250.00', '', 'p', 1, '2024-10-20 15:34:19', NULL, NULL, NULL, NULL, '103.159.73.88'),
(6, '2024-10-25', 2, NULL, 1, 2, '61.25', '', 'p', 1, '2024-10-25 18:16:26', NULL, NULL, NULL, NULL, '151.255.40.184'),
(7, '2024-10-29', 1, NULL, 1, 3, '800.00', '', 'p', 1, '2024-10-29 20:46:35', NULL, NULL, NULL, NULL, '103.231.162.27'),
(8, '2024-11-02', 7, 1, 1, 7, '3600.00', '', 'a', 1, '2024-11-02 19:04:49', 1, '2024-11-02 19:05:56', NULL, NULL, '119.73.101.72');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `Unit_SlNo` int(11) NOT NULL,
  `Unit_Name` varchar(150) NOT NULL,
  `status` char(1) NOT NULL,
  `AddBy` int(11) NOT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`Unit_SlNo`, `Unit_Name`, `status`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`) VALUES
(1, 'Pcs', 'a', 1, '2024-06-05 15:36:20', 1, '2024-06-25 10:59:38', 1, '2024-06-16 11:48:09', '103.159.72.85');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `User_SlNo` int(11) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `FullName` varchar(150) NOT NULL,
  `User_Name` varchar(150) NOT NULL,
  `UserEmail` varchar(200) NOT NULL,
  `userBranch_id` int(11) NOT NULL,
  `User_Password` varchar(50) NOT NULL,
  `UserType` varchar(50) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'a',
  `verifycode` int(11) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `AddBy` int(11) DEFAULT NULL,
  `AddTime` datetime DEFAULT NULL,
  `UpdateBy` int(11) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `DeletedBy` int(11) DEFAULT NULL,
  `DeletedTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`User_SlNo`, `User_ID`, `FullName`, `User_Name`, `UserEmail`, `userBranch_id`, `User_Password`, `UserType`, `status`, `verifycode`, `image_name`, `AddBy`, `AddTime`, `UpdateBy`, `UpdateTime`, `DeletedBy`, `DeletedTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'U0001', 'Admin', '14102', 'admin@host.com', 1, 'c4ca4238a0b923820dcc509a6f75849b', 'm', 'a', 1, 'uploads/users/Admin_680bab57e033f.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '', 1),
(2, 'U0002', 'Mohammed Mobarak', 'mubarak1122', 'mubarak@gmail.com', 1, 'd7821dc61f55f150cf3cf35e45ff8b27', 'u', 'a', 0, NULL, 1, '2024-05-07 17:21:52', NULL, NULL, NULL, NULL, '102.223.130.118', 1),
(3, 'U0003', 'arnob', 'arnob', 'Mondol@gmail.com', 1, 'd484a3fde40e65e19c2799b9b529c82e', 'e', 'a', 0, NULL, 1, '2024-05-13 14:03:34', 1, '2024-09-26 16:12:15', NULL, NULL, '103.159.73.102', 1),
(4, 'U0004', 'zihan', 'zihan', 'mohammadzihan67bd@gmail.com', 1, '21d70af5872ce9d00e343dc11bd47437', 'u', 'a', 0, NULL, 1, '2024-06-29 20:03:19', NULL, NULL, NULL, NULL, '118.179.49.34', 1),
(5, 'U0005', 'Gr Shaon', 'shaon', 'grshaon@yahoo.com', 4, '81dc9bdb52d04dc20036dbd8313ed055', 'a', 'a', 0, NULL, 1, '2024-07-01 12:14:38', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(6, 'U0006', 'Md naim', 'naim', 'naim@yahoo.com', 4, '81dc9bdb52d04dc20036dbd8313ed055', 'u', 'a', 0, NULL, 5, '2024-07-01 12:34:17', NULL, NULL, NULL, NULL, '118.179.69.241', 4),
(7, 'U0007', 'Tanjir', 'Tanjir', 'tanjir@gmai.com', 2, 'e10adc3949ba59abbe56e057f20f883e', 'e', 'a', 0, NULL, 1, '2024-07-15 22:23:43', NULL, NULL, NULL, NULL, '103.96.105.128', 2),
(8, 'U0008', 'onik', 'onik', 'onik@yahoo', 5, 'eabd8ce9404507aa8c22714d3f5eada9', 'a', 'a', 0, NULL, 1, '2024-08-28 09:58:06', NULL, NULL, NULL, NULL, '103.159.72.93', 5),
(9, 'U0009', 'gjy', 'hossain', 'naimul@gmail.com', 8, 'c4ca4238a0b923820dcc509a6f75849b', 'u', 'a', 0, NULL, 1, '2024-09-09 16:56:02', 1, '2024-09-28 16:05:51', NULL, NULL, '103.120.222.10', 8),
(10, 'U0010', 'jk', 'user', '', 1, 'e10adc3949ba59abbe56e057f20f883e', 'u', 'p', 0, NULL, 1, '2024-09-12 16:04:38', 1, '2024-09-26 16:44:35', NULL, NULL, '103.159.73.102', 1),
(11, 'U0011', 'Mahamudul Hasan Anik', 'anik', 'support@anmotorsbd.com', 5, '27ef4eda9bbabcfc5dda671de9f2f91f', 'a', 'a', 0, NULL, 1, '2024-09-13 21:00:48', NULL, NULL, NULL, NULL, '103.150.64.178', 5),
(12, 'U0012', 'Naimul', 'naimul', 'naimul@gmail.com', 8, 'e10adc3949ba59abbe56e057f20f883e', 'u', 'a', 0, NULL, 1, '2024-09-28 16:01:10', NULL, NULL, NULL, NULL, '103.120.222.10', 8),
(13, 'U0013', 'Naimul', 'naimul1', 'naimul@gmail.com', 8, '202cb962ac59075b964b07152d234b70', 'u', 'a', 0, NULL, 1, '2024-09-28 16:03:12', NULL, NULL, NULL, NULL, '103.120.222.10', 8),
(14, 'U0014', 'Zia', 'zia', 'zia@gmail.com', 1, 'e10adc3949ba59abbe56e057f20f883e', 'a', 'a', 0, NULL, 1, '2024-10-07 19:39:40', NULL, NULL, NULL, NULL, '103.116.167.227', 1),
(15, 'U0015', 'Harun or rosid', 'harun', 'folonagro2020@gmail.com', 1, '25f9e794323b453885f5181f1b624d0b', 'u', 'd', 0, NULL, 1, '2024-10-08 13:00:20', 1, '2024-10-09 13:16:14', 1, '2024-10-09 13:16:28', '43.231.22.16', 1),
(16, 'U0016', 'Nazim uddin', 'nazim', 'nezam369756@gmail.com', 1, 'd93591bdf7860e1e4ee2fca799911215', 'u', 'a', 0, NULL, 1, '2024-10-19 16:02:07', NULL, NULL, NULL, NULL, '59.152.2.225', 1),
(17, 'U0017', 'mothbaria steel ', 'mothbaria', 'mothbaiasteel@gmail.com', 1, 'd7ea7cb6398ac7cd568a1dcdb7cdf5e7', 'a', 'a', 0, NULL, 1, '2024-10-22 12:58:32', NULL, NULL, NULL, NULL, '103.241.195.34', 1),
(18, 'U0018', 'Amitav Roy', 'amitav', 'amitavroy@gmail.com', 11, '81dc9bdb52d04dc20036dbd8313ed055', 'a', 'a', 0, NULL, 1, '2024-10-23 11:25:20', 1, '2024-10-23 11:25:28', NULL, NULL, '103.159.73.86', 11),
(19, 'U0019', 'arman', 'arman ', 'gaziparves98@gmail.com', 12, 'cdf6581cb7aca4b7e19ef136c6e601a5', 'u', 'a', 0, NULL, 1, '2024-10-27 19:47:52', NULL, NULL, NULL, NULL, '103.148.179.149', 12),
(20, 'U0020', 'Mahfuj', 'mahfuj', 'tripexpertbd@gmial.com', 1, 'bfb2c35a605bb24b3394a121b4ba8b15', 'u', 'a', 0, NULL, 1, '2024-11-03 14:18:10', NULL, NULL, NULL, NULL, '202.134.10.142', 1),
(21, 'U0021', 'Biddut Bhai', 'biddut', 'biddut@gmail.com', 14, 'c4ca4238a0b923820dcc509a6f75849b', 'u', 'a', 0, NULL, 1, '2024-11-11 15:07:33', 21, '2024-11-11 15:08:37', NULL, NULL, '103.159.73.72', 14),
(22, 'U0022', 'Sajid', 'Sajid', 'sakilazafor2001@gmail.com', 1, '604f14b0e6add4189764555fa83503e9', 'u', 'a', 0, NULL, 1, '2024-11-12 12:02:11', NULL, NULL, NULL, NULL, '202.134.14.143', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access`
--

CREATE TABLE `tbl_user_access` (
  `access_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access` text NOT NULL,
  `AddBy` int(11) NOT NULL,
  `AddTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_access`
--

INSERT INTO `tbl_user_access` (`access_id`, `user_id`, `access`, `AddBy`, `AddTime`) VALUES
(1, 2, '[\"sales\\/product\",\"sales\\/service\",\"salesrecord\",\"currentStock\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"companyProfile\",\"graph\",\"sales\"]', 1, '2024-10-12 21:46:37'),
(2, 3, '[\"sales\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\"]', 1, '2024-05-13 14:04:44'),
(3, 6, '[\"sales\"]', 5, '2024-07-01 12:34:59'),
(4, 9, '[\"sales\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"cashTransaction\",\"bank_transactions\",\"customerPaymentPage\",\"supplierPayment\",\"cash_view\",\"account\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"graph\"]', 1, '2024-09-28 16:04:57'),
(5, 16, '[\"sales\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transaction_report\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"companyProfile\",\"user\",\"database_backup\",\"graph\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"cash_view\",\"loan_view\",\"loan_ledger\",\"cashTransaction\",\"bank_transactions\",\"customerPaymentPage\",\"supplierPayment\",\"account\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"loan_transactions\"]', 1, '2024-10-27 19:38:02'),
(6, 19, '[\"sales\",\"salesReturn\",\"currentStock\",\"quotation\"]', 1, '2024-10-27 19:48:21'),
(7, 20, '[\"sales\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\"]', 1, '2024-11-06 16:24:04'),
(8, 21, '[\"sales\",\"salesReturn\",\"salesrecord\",\"currentStock\",\"quotation\",\"cashTransaction\",\"bank_transactions\",\"customerPaymentPage\",\"supplierPayment\",\"cash_view\",\"account\",\"bank_accounts\",\"check\\/entry\",\"check\\/list\",\"check\\/reminder\\/list\",\"check\\/pending\\/list\",\"check\\/dis\\/list\",\"check\\/paid\\/list\",\"salesinvoice\",\"returnList\",\"sale_return_details\",\"customerDue\",\"customerPaymentReport\",\"customer_payment_history\",\"customerlist\",\"price_list\",\"quotation_invoice_report\",\"quotation_record\",\"TransactionReport\",\"bank_transaction_report\",\"cash_ledger\",\"bank_ledger\",\"cashStatment\",\"balance_sheet\",\"BalanceSheet\",\"profitLoss\",\"day_book\",\"purchase\",\"purchaseReturns\",\"purchaseRecord\",\"AssetsEntry\",\"salary_payment\",\"employee\",\"emplists\\/all\",\"emplists\\/active\",\"emplists\\/deactive\",\"designation\",\"depertment\",\"month\",\"salary_payment_report\",\"loan_transactions\",\"loan_view\",\"loan_transaction_report\",\"loan_ledger\",\"loan_accounts\",\"investment_transactions\",\"investment_view\",\"investment_transaction_report\",\"investment_ledger\",\"investment_accounts\",\"assets_report\",\"purchaseInvoice\",\"supplierDue\",\"supplierPaymentReport\",\"supplierList\",\"returnsList\",\"purchase_return_details\",\"reorder_list\",\"sms\",\"product\",\"productlist\",\"product_ledger\",\"damageEntry\",\"damageList\",\"product_transfer\",\"transfer_list\",\"received_list\",\"customer\",\"supplier\",\"category\",\"unit\",\"area\",\"database_backup\",\"graph\"]', 1, '2024-11-11 15:20:53'),
(9, 22, '[\"sales\",\"salesReturn\",\"currentStock\",\"salesinvoice\",\"customerDue\",\"cashTransaction\",\"customerPaymentPage\",\"customerlist\",\"salesrecord\",\"quotation\",\"returnList\",\"sale_return_details\",\"customerPaymentReport\",\"customer_payment_history\",\"price_list\",\"product\",\"productlist\"]', 1, '2024-11-12 12:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_activity`
--

CREATE TABLE `tbl_user_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT 'a',
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_activity`
--

INSERT INTO `tbl_user_activity` (`id`, `user_id`, `ip_address`, `login_time`, `logout_time`, `status`, `branch_id`) VALUES
(1, 1, '103.159.73.251', '2024-04-28 15:33:15', '2024-04-28 15:33:24', 'a', 1),
(2, 1, '103.159.73.251', '2024-04-28 15:44:07', '2024-04-28 15:49:00', 'a', 1),
(3, 1, '103.159.73.251', '2024-04-28 15:47:50', '2024-04-28 15:49:05', 'a', 1),
(4, 1, '103.159.73.251', '2024-04-28 16:00:40', '2024-04-28 17:58:16', 'a', 1),
(5, 1, '103.159.73.251', '2024-04-28 16:32:26', NULL, 'a', 1),
(6, 1, '103.144.201.97', '2024-04-28 22:36:41', NULL, 'a', 1),
(7, 1, '103.159.73.251', '2024-04-29 14:39:57', NULL, 'a', 1),
(8, 1, '103.159.73.251', '2024-04-29 16:54:34', NULL, 'a', 1),
(9, 1, '103.159.73.251', '2024-04-30 10:05:11', NULL, 'a', 1),
(10, 1, '103.144.201.97', '2024-04-30 22:27:05', NULL, 'a', 1),
(11, 1, '103.144.201.97', '2024-05-01 18:59:12', NULL, 'a', 1),
(12, 1, '202.134.14.159', '2024-05-02 13:11:08', NULL, 'a', 1),
(13, 1, '103.120.222.143', '2024-05-02 14:43:50', '2024-05-02 15:43:31', 'a', 1),
(14, 1, '103.159.73.254', '2024-05-04 15:19:12', NULL, 'a', 1),
(15, 1, '103.159.73.254', '2024-05-04 16:32:21', NULL, 'a', 1),
(16, 1, '103.159.73.254', '2024-05-04 16:43:30', NULL, 'a', 1),
(17, 1, '103.159.73.254', '2024-05-04 16:44:37', NULL, 'a', 1),
(18, 1, '103.159.73.254', '2024-05-04 18:14:55', NULL, 'a', 1),
(19, 1, '103.159.73.254', '2024-05-05 13:10:27', NULL, 'a', 1),
(20, 1, '103.159.73.254', '2024-05-05 14:32:23', NULL, 'a', 1),
(21, 1, '103.159.73.254', '2024-05-05 16:05:41', '2024-05-05 16:05:46', 'a', 1),
(22, 1, '103.159.73.254', '2024-05-06 10:33:05', '2024-05-06 10:35:16', 'a', 1),
(23, 1, '103.159.73.254', '2024-05-06 10:50:54', '2024-05-06 10:51:45', 'a', 1),
(24, 1, '103.159.73.254', '2024-05-06 11:07:40', '2024-05-06 12:31:38', 'a', 1),
(25, 1, '103.159.73.254', '2024-05-07 11:05:04', NULL, 'a', 1),
(26, 1, '103.159.73.254', '2024-05-07 16:53:55', NULL, 'a', 1),
(27, 1, '102.223.130.118', '2024-05-07 17:18:02', '2024-05-07 17:23:37', 'a', 1),
(28, 2, '102.223.130.118', '2024-05-07 17:23:57', '2024-05-07 17:35:06', 'a', 1),
(29, 1, '102.223.130.118', '2024-05-07 17:35:18', NULL, 'a', 1),
(30, 1, '103.159.73.249', '2024-05-07 17:40:36', NULL, 'a', 1),
(31, 1, '103.144.201.97', '2024-05-07 23:05:55', NULL, 'a', 1),
(32, 1, '149.202.98.189', '2024-05-08 09:54:01', NULL, 'a', 1),
(33, 1, '103.159.73.254', '2024-05-08 11:55:24', '2024-05-08 12:02:10', 'a', 1),
(34, 1, '103.159.73.254', '2024-05-08 12:55:13', NULL, 'a', 1),
(35, 1, '103.159.73.254', '2024-05-08 12:55:14', NULL, 'a', 1),
(36, 1, '43.250.81.250', '2024-05-09 09:45:50', '2024-05-09 09:50:16', 'a', 1),
(37, 1, '103.159.73.251', '2024-05-09 15:12:10', NULL, 'a', 1),
(38, 1, '149.202.98.186', '2024-05-09 16:31:38', NULL, 'a', 1),
(39, 1, '103.144.201.97', '2024-05-11 14:38:21', NULL, 'a', 1),
(40, 1, '103.196.234.153', '2024-05-12 17:41:38', NULL, 'a', 1),
(41, 1, '103.26.247.138', '2024-05-13 13:35:01', '2024-05-13 14:05:02', 'a', 1),
(42, 1, '37.111.247.48', '2024-05-13 14:00:34', NULL, 'a', 1),
(43, 3, '103.26.247.138', '2024-05-13 14:05:15', '2024-05-13 14:09:24', 'a', 1),
(44, 1, '103.26.247.138', '2024-05-13 14:09:32', NULL, 'a', 1),
(45, 1, '103.144.201.97', '2024-05-13 19:16:33', NULL, 'a', 1),
(46, 1, '103.144.201.97', '2024-05-14 16:05:56', NULL, 'a', 1),
(47, 1, '103.159.73.254', '2024-05-14 16:27:03', '2024-05-14 16:28:09', 'a', 1),
(48, 1, '103.159.73.254', '2024-05-14 16:48:46', NULL, 'a', 1),
(49, 1, '103.124.251.188', '2024-05-15 00:23:52', NULL, 'a', 1),
(50, 1, '103.124.251.188', '2024-05-15 00:24:41', NULL, 'a', 1),
(51, 1, '103.124.251.188', '2024-05-15 00:24:48', '2024-05-15 01:23:58', 'a', 1),
(52, 1, '103.124.251.188', '2024-05-15 00:30:20', '2024-05-15 01:31:08', 'a', 1),
(53, 1, '103.180.105.2', '2024-05-15 11:21:29', NULL, 'a', 1),
(54, 1, '103.180.105.2', '2024-05-15 11:22:37', NULL, 'a', 1),
(55, 1, '103.180.105.2', '2024-05-15 11:23:27', NULL, 'a', 1),
(56, 1, '103.180.105.2', '2024-05-15 11:23:40', NULL, 'a', 1),
(57, 1, '103.180.105.2', '2024-05-15 11:24:16', NULL, 'a', 1),
(58, 1, '103.180.105.2', '2024-05-15 11:30:15', NULL, 'a', 1),
(59, 1, '103.159.73.254', '2024-05-15 12:47:24', NULL, 'a', 1),
(60, 1, '103.180.105.2', '2024-05-15 14:36:54', NULL, 'a', 1),
(61, 1, '103.126.217.160', '2024-05-15 16:32:45', NULL, 'a', 1),
(62, 1, '103.126.217.160', '2024-05-15 16:32:54', '2024-05-15 16:50:11', 'a', 1),
(63, 1, '103.144.201.97', '2024-05-15 22:05:16', NULL, 'a', 1),
(64, 1, '103.159.73.254', '2024-05-16 14:08:49', NULL, 'a', 1),
(65, 1, '103.159.73.254', '2024-05-16 14:08:58', NULL, 'a', 1),
(66, 1, '103.159.73.254', '2024-05-16 14:09:30', NULL, 'a', 1),
(67, 1, '103.29.124.124', '2024-05-16 14:25:01', NULL, 'a', 1),
(68, 1, '103.159.73.254', '2024-05-16 18:57:12', '2024-05-16 21:15:23', 'a', 1),
(69, 1, '120.50.176.208', '2024-05-16 19:32:17', NULL, 'a', 1),
(70, 1, '103.144.201.97', '2024-05-16 20:32:40', NULL, 'a', 1),
(71, 1, '144.48.115.57', '2024-05-17 00:48:16', NULL, 'a', 1),
(72, 1, '144.48.115.57', '2024-05-17 18:01:06', NULL, 'a', 1),
(73, 1, '103.67.158.253', '2024-05-17 19:50:19', NULL, 'a', 1),
(74, 1, '42.0.7.232', '2024-05-17 21:24:58', NULL, 'a', 1),
(75, 1, '103.159.73.254', '2024-05-18 09:49:44', NULL, 'a', 1),
(76, 1, '103.134.59.53', '2024-05-18 10:30:42', NULL, 'a', 1),
(77, 1, '103.144.201.97', '2024-05-18 12:20:50', NULL, 'a', 1),
(78, 1, '103.96.107.98', '2024-05-18 16:33:14', NULL, 'a', 1),
(79, 1, '103.96.107.98', '2024-05-18 16:34:52', NULL, 'a', 1),
(80, 1, '110.76.129.150', '2024-05-18 18:07:13', NULL, 'a', 1),
(81, 1, '103.159.73.251', '2024-05-18 18:29:22', NULL, 'a', 1),
(82, 1, '45.118.63.50', '2024-05-19 05:17:08', NULL, 'a', 1),
(83, 1, '103.82.9.20', '2024-05-19 12:53:52', NULL, 'a', 1),
(84, 1, '103.144.201.97', '2024-05-19 13:38:02', NULL, 'a', 1),
(85, 1, '203.153.60.115', '2024-05-19 20:44:48', NULL, 'a', 1),
(86, 1, '116.58.200.1', '2024-05-19 22:35:19', NULL, 'a', 1),
(87, 1, '103.159.73.254', '2024-05-20 10:08:33', '2024-05-20 15:18:03', 'a', 1),
(88, 1, '103.159.73.254', '2024-05-20 10:48:41', '2024-05-20 10:49:39', 'a', 1),
(89, 1, '203.202.253.27', '2024-05-20 11:52:25', NULL, 'a', 1),
(90, 1, '103.159.73.254', '2024-05-20 13:01:58', '2024-05-20 13:02:26', 'a', 1),
(91, 1, '103.159.73.254', '2024-05-20 13:14:18', NULL, 'a', 1),
(92, 1, '103.82.9.19', '2024-05-20 13:58:52', NULL, 'a', 1),
(93, 1, '103.159.73.254', '2024-05-20 14:08:55', '2024-05-20 14:50:17', 'a', 1),
(94, 1, '103.159.73.254', '2024-05-20 14:50:22', NULL, 'a', 1),
(95, 1, '103.159.73.254', '2024-05-21 12:44:01', NULL, 'a', 1),
(96, 1, '103.159.73.254', '2024-05-21 12:59:29', NULL, 'a', 1),
(97, 1, '103.159.73.254', '2024-05-21 14:42:11', NULL, 'a', 1),
(98, 1, '103.159.73.254', '2024-05-21 23:04:56', NULL, 'a', 1),
(99, 1, '103.159.73.251', '2024-05-22 09:28:06', NULL, 'a', 1),
(100, 1, '103.159.73.251', '2024-05-22 11:31:06', NULL, 'a', 1),
(101, 1, '92.96.213.180', '2024-05-22 12:27:41', '2024-05-22 14:03:06', 'a', 1),
(102, 1, '103.135.209.240', '2024-05-22 12:36:05', NULL, 'a', 1),
(103, 1, '103.135.209.240', '2024-05-22 12:36:09', NULL, 'a', 1),
(104, 1, '103.135.209.240', '2024-05-22 12:36:13', NULL, 'a', 1),
(105, 1, '5.107.225.106', '2024-05-22 13:40:52', NULL, 'a', 1),
(106, 1, '103.159.73.251', '2024-05-22 16:33:58', '2024-05-22 16:36:46', 'a', 1),
(107, 1, '103.203.93.233', '2024-05-22 16:45:17', NULL, 'a', 1),
(108, 1, '103.159.73.254', '2024-05-23 12:28:05', NULL, 'a', 1),
(109, 1, '103.159.73.254', '2024-05-23 16:40:21', NULL, 'a', 1),
(110, 1, '103.159.73.254', '2024-05-23 19:55:58', NULL, 'a', 1),
(111, 1, '103.49.115.78', '2024-05-23 20:28:28', NULL, 'a', 1),
(112, 1, '118.179.56.133', '2024-05-23 23:52:53', '2024-05-23 23:56:16', 'a', 1),
(113, 1, '103.127.0.80', '2024-05-24 20:00:32', '2024-05-24 20:15:17', 'a', 1),
(114, 1, '103.159.73.250', '2024-05-25 10:20:46', NULL, 'a', 1),
(115, 1, '103.120.45.51', '2024-05-25 10:21:47', NULL, 'a', 1),
(116, 1, '103.159.73.250', '2024-05-25 11:24:25', NULL, 'a', 1),
(117, 1, '123.200.30.131', '2024-05-25 12:26:52', NULL, 'a', 1),
(118, 1, '103.135.209.240', '2024-05-25 13:01:24', '2024-05-25 14:24:33', 'a', 1),
(119, 1, '58.145.187.240', '2024-05-25 13:48:14', NULL, 'a', 1),
(122, 1, '103.142.80.96', '2024-05-26 09:45:22', NULL, 'a', 1),
(123, 1, '103.159.73.254', '2024-05-26 10:46:38', '2024-05-26 10:47:44', 'a', 1),
(124, 1, '103.92.161.0', '2024-05-26 11:49:59', NULL, 'a', 1),
(127, 1, '103.73.196.9', '2024-05-26 19:16:23', NULL, 'a', 1),
(128, 1, '103.73.196.9', '2024-05-26 19:16:41', NULL, 'a', 1),
(129, 1, '103.25.251.245', '2024-05-27 12:42:55', NULL, 'a', 1),
(130, 1, '103.25.251.245', '2024-05-27 12:43:12', NULL, 'a', 1),
(131, 1, '103.25.251.245', '2024-05-27 12:43:19', NULL, 'a', 1),
(132, 1, '103.25.251.245', '2024-05-27 12:43:26', NULL, 'a', 1),
(133, 1, '103.180.105.2', '2024-05-27 12:46:06', NULL, 'a', 1),
(134, 1, '103.180.105.2', '2024-05-27 12:47:54', NULL, 'a', 1),
(135, 1, '103.180.105.2', '2024-05-27 12:48:24', NULL, 'a', 1),
(136, 1, '103.112.52.69', '2024-05-27 13:34:27', '2024-05-27 13:43:52', 'a', 1),
(137, 1, '103.112.52.69', '2024-05-27 13:44:40', NULL, 'a', 1),
(139, 1, '103.159.73.250', '2024-05-28 16:03:59', '2024-05-28 16:04:09', 'a', 1),
(140, 1, '5.31.196.206', '2024-05-29 10:38:08', '2024-05-29 11:16:46', 'a', 1),
(141, 1, '5.31.196.206', '2024-05-29 11:17:02', '2024-05-29 13:55:23', 'a', 1),
(142, 1, '5.31.196.206', '2024-05-29 13:55:40', '2024-05-29 14:19:00', 'a', 1),
(143, 1, '5.31.196.206', '2024-05-29 14:19:06', '2024-05-29 14:20:18', 'a', 1),
(144, 1, '5.31.196.206', '2024-05-29 14:20:27', NULL, 'a', 1),
(145, 1, '5.31.196.206', '2024-05-29 14:23:24', NULL, 'a', 1),
(146, 1, '103.159.73.250', '2024-05-29 14:46:07', NULL, 'a', 1),
(147, 1, '103.159.73.250', '2024-05-29 14:46:10', NULL, 'a', 1),
(148, 1, '103.159.73.250', '2024-05-29 17:33:45', NULL, 'a', 1),
(149, 1, '103.159.73.250', '2024-05-30 16:30:08', NULL, 'a', 1),
(150, 1, '114.31.16.224', '2024-05-31 17:47:43', NULL, 'a', 1),
(151, 1, '103.159.73.250', '2024-06-01 12:34:52', NULL, 'a', 1),
(152, 1, '103.92.161.64', '2024-06-02 17:22:58', NULL, 'a', 1),
(153, 1, '103.159.73.250', '2024-06-03 11:10:31', NULL, 'a', 1),
(154, 1, '103.110.78.198', '2024-06-03 12:23:32', NULL, 'a', 1),
(155, 1, '59.152.3.95', '2024-06-03 12:40:26', NULL, 'a', 1),
(156, 1, '103.159.73.250', '2024-06-03 15:14:01', NULL, 'a', 1),
(157, 1, '59.153.16.193', '2024-06-03 17:46:54', NULL, 'a', 1),
(158, 1, '103.159.72.85', '2024-06-04 14:24:46', NULL, 'a', 1),
(159, 1, '103.159.72.85', '2024-06-04 17:13:17', NULL, 'a', 1),
(160, 1, '103.84.36.101', '2024-06-04 18:13:03', NULL, 'a', 1),
(161, 1, '103.172.114.44', '2024-06-04 18:50:39', NULL, 'a', 1),
(162, 1, '103.159.72.85', '2024-06-05 15:23:42', NULL, 'a', 1),
(163, 1, '46.153.213.147', '2024-06-05 15:33:48', NULL, 'a', 1),
(164, 1, '103.179.124.20', '2024-06-05 15:53:18', NULL, 'a', 1),
(165, 1, '46.153.213.147', '2024-06-05 20:37:04', NULL, 'a', 1),
(166, 1, '103.159.72.85', '2024-06-06 11:41:33', NULL, 'a', 1),
(167, 1, '103.159.72.85', '2024-06-06 11:42:37', NULL, 'a', 1),
(168, 1, '103.159.72.85', '2024-06-06 11:58:46', '2024-11-22 18:29:43', 'a', 1),
(169, 1, '103.159.72.85', '2024-06-06 12:58:36', '2025-02-07 21:32:06', 'a', 1),
(170, 1, '103.159.72.85', '2024-06-06 13:00:37', NULL, 'a', 1),
(171, 1, '37.111.206.168', '2024-06-06 14:25:30', NULL, 'a', 1),
(172, 1, '103.133.203.241', '2024-06-06 17:58:37', NULL, 'a', 1),
(173, 1, '46.153.213.147', '2024-06-06 21:04:22', NULL, 'a', 1),
(174, 1, '103.159.72.85', '2024-06-07 11:37:47', NULL, 'a', 1),
(175, 1, '103.159.72.85', '2024-06-08 13:20:04', NULL, 'a', 1),
(176, 1, '103.203.93.233', '2024-06-08 13:42:51', NULL, 'a', 1),
(177, 1, '114.130.185.27', '2024-06-08 15:27:10', NULL, 'a', 1),
(178, 1, '103.159.72.85', '2024-06-09 11:55:28', NULL, 'a', 1),
(179, 1, '27.147.202.24', '2024-06-09 11:55:44', NULL, 'a', 1),
(180, 1, '103.120.222.142', '2024-06-10 12:32:32', NULL, 'a', 1),
(181, 1, '27.147.202.24', '2024-06-10 14:05:35', '2024-06-10 17:22:10', 'a', 1),
(182, 1, '103.159.72.85', '2024-06-10 15:38:12', NULL, 'a', 1),
(183, 1, '103.60.175.13', '2024-06-10 15:47:48', NULL, 'a', 1),
(184, 1, '103.60.175.13', '2024-06-10 16:18:02', NULL, 'a', 1),
(185, 1, '103.159.72.85', '2024-06-10 17:22:15', NULL, 'a', 1),
(186, 1, '103.67.158.117', '2024-06-11 16:38:37', NULL, 'a', 1),
(187, 1, '113.11.122.216', '2024-06-11 17:05:50', NULL, 'a', 1),
(188, 1, '113.11.122.219', '2024-06-14 18:00:02', NULL, 'a', 1),
(189, 1, '202.86.218.171', '2024-06-14 18:00:52', NULL, 'a', 1),
(190, 1, '103.242.21.65', '2024-06-15 11:27:49', NULL, 'a', 1),
(191, 1, '37.111.228.13', '2024-06-15 11:30:16', NULL, 'a', 1),
(192, 1, '114.130.188.105', '2024-06-15 19:29:10', '2024-06-16 04:16:05', 'a', 1),
(193, 1, '114.130.188.105', '2024-06-15 19:39:43', NULL, 'a', 1),
(194, 1, '37.111.246.98', '2024-06-16 01:07:07', NULL, 'a', 1),
(195, 1, '103.147.166.161', '2024-06-16 04:17:47', NULL, 'a', 1),
(196, 1, '114.130.188.243', '2024-06-16 11:44:09', NULL, 'a', 1),
(197, 1, '103.147.166.161', '2024-06-18 02:10:38', NULL, 'a', 1),
(198, 1, '37.111.242.109', '2024-06-19 00:17:37', NULL, 'a', 1),
(199, 1, '37.111.242.109', '2024-06-19 00:21:21', NULL, 'a', 1),
(200, 1, '37.111.242.109', '2024-06-19 00:28:11', NULL, 'a', 1),
(201, 1, '103.147.166.161', '2024-06-19 00:33:25', NULL, 'a', 1),
(202, 1, '103.147.166.161', '2024-06-19 02:34:32', NULL, 'a', 1),
(203, 1, '114.130.180.194', '2024-06-21 16:14:18', NULL, 'a', 1),
(204, 1, '202.86.216.221', '2024-06-22 18:41:43', NULL, 'a', 1),
(205, 1, '113.11.122.218', '2024-06-23 15:07:49', NULL, 'a', 1),
(206, 1, '114.130.180.127', '2024-06-24 00:03:40', NULL, 'a', 1),
(207, 1, '103.159.72.85', '2024-06-24 11:12:09', NULL, 'a', 1),
(208, 1, '103.147.166.168', '2024-06-24 11:56:32', NULL, 'a', 1),
(209, 1, '113.11.122.218', '2024-06-24 18:58:34', NULL, 'a', 1),
(210, 1, '202.181.16.72', '2024-06-25 08:32:44', NULL, 'a', 1),
(211, 1, '202.181.16.72', '2024-06-25 08:34:12', NULL, 'a', 1),
(212, 1, '103.159.72.85', '2024-06-25 10:58:05', '2024-06-25 11:13:40', 'a', 1),
(213, 1, '103.150.64.208', '2024-06-25 15:47:24', NULL, 'a', 1),
(214, 1, '103.150.64.208', '2024-06-25 15:48:09', NULL, 'a', 1),
(215, 1, '163.53.183.70', '2024-06-25 16:39:25', NULL, 'a', 1),
(216, 1, '59.152.2.70', '2024-06-25 17:17:31', NULL, 'a', 1),
(217, 1, '103.229.45.4', '2024-06-26 12:07:16', NULL, 'a', 1),
(218, 1, '103.159.72.85', '2024-06-26 12:15:06', NULL, 'a', 1),
(219, 1, '103.159.72.85', '2024-06-26 15:23:37', '2024-06-26 17:00:06', 'a', 1),
(220, 1, '119.30.32.160', '2024-06-26 15:27:50', '2024-06-26 16:24:36', 'a', 1),
(221, 1, '37.111.225.98', '2024-06-26 16:17:28', '2024-06-26 23:08:41', 'a', 1),
(222, 3, '119.30.32.160', '2024-06-26 16:24:46', '2024-06-26 17:25:24', 'a', 1),
(223, 1, '103.130.112.240', '2024-06-26 17:25:27', NULL, 'a', 1),
(224, 1, '103.159.72.85', '2024-06-26 17:38:54', NULL, 'a', 1),
(225, 1, '103.216.58.98', '2024-06-26 20:07:51', NULL, 'a', 1),
(226, 1, '114.130.180.140', '2024-06-26 20:23:39', NULL, 'a', 1),
(227, 1, '103.99.183.69', '2024-06-26 20:48:41', NULL, 'a', 1),
(228, 1, '103.74.230.142', '2024-06-27 15:08:37', NULL, 'a', 1),
(229, 1, '103.113.225.241', '2024-06-27 16:48:38', NULL, 'a', 1),
(230, 1, '103.113.225.241', '2024-06-27 16:50:09', NULL, 'a', 1),
(231, 1, '114.130.156.19', '2024-06-27 17:03:09', NULL, 'a', 1),
(232, 1, '114.130.156.19', '2024-06-27 17:03:26', NULL, 'a', 1),
(233, 1, '37.111.200.218', '2024-06-27 20:24:07', NULL, 'a', 1),
(234, 1, '103.73.46.247', '2024-06-28 13:53:40', NULL, 'a', 1),
(235, 1, '103.60.175.226', '2024-06-28 18:23:44', NULL, 'a', 1),
(236, 1, '118.179.49.34', '2024-06-29 11:01:48', NULL, 'a', 1),
(237, 1, '103.153.155.12', '2024-06-29 11:20:41', NULL, 'a', 1),
(238, 1, '103.159.72.85', '2024-06-29 12:18:23', NULL, 'a', 1),
(239, 1, '103.120.223.17', '2024-06-29 15:30:03', NULL, 'a', 1),
(240, 1, '103.120.223.17', '2024-06-29 15:30:03', '2024-06-29 17:08:31', 'a', 1),
(241, 1, '103.120.223.17', '2024-06-29 16:51:05', NULL, 'a', 1),
(242, 1, '103.120.223.17', '2024-06-29 17:09:49', NULL, 'a', 1),
(243, 1, '118.179.49.34', '2024-06-29 18:47:18', '2024-06-29 20:03:22', 'a', 1),
(244, 4, '118.179.49.34', '2024-06-29 20:03:28', '2024-06-29 20:03:38', 'a', 1),
(245, 1, '118.179.49.34', '2024-06-29 20:03:40', '2024-06-29 20:09:05', 'a', 1),
(246, 4, '118.179.49.34', '2024-06-29 20:09:18', '2024-06-29 20:13:55', 'a', 1),
(247, 1, '118.179.49.34', '2024-06-29 20:13:56', NULL, 'a', 1),
(248, 1, '103.120.223.17', '2024-06-30 11:44:10', NULL, 'a', 1),
(249, 1, '114.130.156.175', '2024-06-30 16:08:02', NULL, 'a', 1),
(250, 1, '103.113.225.241', '2024-06-30 16:25:04', NULL, 'a', 1),
(251, 1, '118.179.69.241', '2024-07-01 12:05:07', '2024-07-01 12:14:49', 'a', 1),
(252, 5, '118.179.69.241', '2024-07-01 12:15:52', '2024-07-01 13:22:19', 'a', 4),
(253, 5, '118.179.69.241', '2024-07-01 13:22:43', NULL, 'a', 4),
(254, 1, '103.120.223.17', '2024-07-01 13:30:05', NULL, 'a', 1),
(255, 1, '103.159.72.85', '2024-07-01 16:44:30', NULL, 'a', 1),
(256, 1, '103.159.72.85', '2024-07-01 16:55:36', NULL, 'a', 1),
(257, 5, '118.179.69.241', '2024-07-02 10:34:36', NULL, 'a', 4),
(258, 1, '103.159.72.85', '2024-07-02 11:39:32', NULL, 'a', 1),
(259, 1, '103.159.72.85', '2024-07-02 11:46:22', NULL, 'a', 1),
(260, 1, '103.159.72.85', '2024-07-02 16:32:25', NULL, 'a', 1),
(261, 1, '103.179.124.120', '2024-07-02 16:36:17', NULL, 'a', 1),
(262, 1, '27.123.253.58', '2024-07-02 20:33:24', NULL, 'a', 1),
(263, 1, '103.159.72.116', '2024-07-03 09:38:23', NULL, 'a', 1),
(264, 1, '116.206.253.166', '2024-07-03 11:41:21', NULL, 'a', 1),
(265, 1, '103.159.72.85', '2024-07-04 14:30:52', '2024-07-04 15:38:18', 'a', 1),
(266, 1, '103.159.72.85', '2024-07-04 20:02:12', NULL, 'a', 1),
(267, 1, '103.25.250.130', '2024-07-06 18:47:37', NULL, 'a', 1),
(268, 1, '103.25.250.130', '2024-07-06 19:21:13', '2024-07-06 21:49:33', 'a', 1),
(269, 1, '103.159.72.85', '2024-07-09 09:35:23', NULL, 'a', 1),
(270, 1, '103.159.72.85', '2024-07-09 17:54:07', NULL, 'a', 1),
(271, 1, '103.96.105.128', '2024-07-10 20:18:15', NULL, 'a', 1),
(272, 1, '103.144.161.215', '2024-07-11 15:52:20', NULL, 'a', 1),
(273, 1, '103.144.161.215', '2024-07-11 16:25:41', NULL, 'a', 1),
(274, 1, '103.166.24.246', '2024-07-13 12:48:17', NULL, 'a', 1),
(275, 1, '103.166.24.246', '2024-07-13 12:48:56', NULL, 'a', 1),
(276, 1, '103.166.24.246', '2024-07-13 12:54:40', '2024-07-13 14:13:18', 'a', 1),
(277, 1, '103.166.24.246', '2024-07-13 13:54:02', '2024-07-13 13:57:41', 'a', 1),
(278, 1, '103.159.73.88', '2024-07-15 16:35:11', NULL, 'a', 1),
(279, 1, '103.93.32.13', '2024-07-15 18:55:15', NULL, 'a', 1),
(280, 1, '103.137.229.132', '2024-07-15 19:22:30', '2024-07-15 19:23:10', 'a', 1),
(281, 1, '103.96.105.128', '2024-07-15 22:20:48', NULL, 'a', 1),
(282, 1, '103.137.229.132', '2024-07-16 15:31:37', NULL, 'a', 1),
(283, 1, '114.130.191.8', '2024-07-16 16:58:12', NULL, 'a', 1),
(285, 7, '103.159.73.91', '2024-07-18 17:00:13', '2024-07-18 17:01:52', 'a', 2),
(286, 1, '103.159.72.94', '2024-07-25 13:52:08', NULL, 'a', 1),
(287, 1, '220.152.115.163', '2024-07-26 18:52:10', NULL, 'a', 1),
(288, 1, '103.174.189.2', '2024-07-28 12:37:22', '2024-07-28 12:46:32', 'a', 1),
(289, 1, '103.174.189.2', '2024-07-28 12:47:30', '2024-07-28 12:54:20', 'a', 1),
(290, 1, '103.174.189.2', '2024-07-29 11:46:28', NULL, 'a', 1),
(291, 1, '103.174.189.2', '2024-07-29 11:50:02', NULL, 'a', 1),
(292, 1, '103.174.189.2', '2024-07-29 11:50:04', NULL, 'a', 1),
(293, 1, '103.174.189.2', '2024-07-29 11:50:07', NULL, 'a', 1),
(294, 1, '103.174.189.2', '2024-07-29 12:01:22', NULL, 'a', 1),
(295, 1, '103.174.189.2', '2024-07-29 12:03:40', NULL, 'a', 1),
(296, 1, '104.28.240.85', '2024-07-29 23:09:22', NULL, 'a', 1),
(297, 1, '104.28.208.84', '2024-07-29 23:09:42', NULL, 'a', 1),
(298, 1, '104.28.208.84', '2024-07-29 23:09:45', NULL, 'a', 1),
(299, 1, '38.91.100.44', '2024-07-30 00:10:36', NULL, 'a', 1),
(300, 1, '38.68.134.35', '2024-07-30 00:12:58', NULL, 'a', 1),
(301, 1, '38.68.134.35', '2024-07-30 00:16:53', NULL, 'a', 1),
(302, 1, '38.68.134.35', '2024-07-30 00:17:43', NULL, 'a', 1),
(303, 1, '38.68.134.35', '2024-07-30 00:18:20', NULL, 'a', 1),
(304, 1, '38.68.134.35', '2024-07-30 20:57:06', NULL, 'a', 1),
(305, 1, '38.68.134.35', '2024-07-30 20:58:04', NULL, 'a', 1),
(306, 1, '38.68.134.35', '2024-07-30 20:58:18', NULL, 'a', 1),
(307, 1, '38.68.134.35', '2024-07-30 20:58:51', NULL, 'a', 1),
(308, 1, '23.157.40.26', '2024-07-31 23:09:27', NULL, 'a', 1),
(309, 1, '185.239.174.66', '2024-08-01 11:21:08', NULL, 'a', 1),
(310, 1, '103.174.189.2', '2024-08-01 14:39:38', NULL, 'a', 1),
(311, 1, '37.111.243.19', '2024-08-01 15:08:57', NULL, 'a', 1),
(312, 1, '37.111.243.41', '2024-08-01 16:22:52', '2024-08-01 17:25:28', 'a', 1),
(313, 1, '103.229.83.214', '2024-08-01 18:35:12', NULL, 'a', 1),
(314, 1, '37.111.243.254', '2024-08-02 00:19:20', NULL, 'a', 1),
(315, 1, '37.111.247.146', '2024-08-02 14:19:45', NULL, 'a', 1),
(316, 1, '37.111.232.137', '2024-08-07 16:20:35', NULL, 'a', 1),
(317, 1, '103.174.189.2', '2024-08-08 17:10:39', NULL, 'a', 1),
(318, 1, '103.174.189.2', '2024-08-10 09:40:43', NULL, 'a', 1),
(319, 1, '103.174.189.2', '2024-08-10 11:16:33', NULL, 'a', 1),
(320, 1, '103.174.189.2', '2024-08-10 12:08:39', '2024-08-10 12:11:02', 'a', 1),
(321, 1, '103.96.105.131', '2024-08-10 23:19:28', '2024-08-10 23:21:01', 'a', 1),
(322, 1, '103.96.105.131', '2024-08-10 23:21:45', '2024-08-10 23:24:37', 'a', 1),
(323, 1, '103.96.104.223', '2024-08-13 19:10:36', '2024-08-13 19:10:59', 'a', 1),
(324, 1, '103.204.210.88', '2024-08-13 20:19:44', '2024-08-13 20:30:34', 'a', 1),
(325, 1, '59.152.5.12', '2024-08-14 14:39:18', NULL, 'a', 1),
(326, 1, '103.92.161.17', '2024-08-15 14:52:56', NULL, 'a', 1),
(327, 1, '103.174.189.2', '2024-08-15 15:43:57', '2024-08-15 15:47:02', 'a', 1),
(328, 1, '103.174.189.2', '2024-08-15 15:47:34', '2024-08-15 15:48:32', 'a', 1),
(329, 1, '103.174.189.7', '2024-08-15 17:30:29', NULL, 'a', 1),
(330, 1, '103.175.242.47', '2024-08-17 06:48:07', NULL, 'a', 1),
(331, 1, '103.174.189.2', '2024-08-19 11:54:43', NULL, 'a', 1),
(332, 1, '86.167.222.212', '2024-08-19 19:49:01', NULL, 'a', 1),
(333, 1, '202.181.16.160', '2024-08-21 14:14:04', NULL, 'a', 1),
(334, 1, '103.253.44.19', '2024-08-24 16:28:04', NULL, 'a', 1),
(335, 1, '103.141.71.45', '2024-08-25 14:07:55', NULL, 'a', 1),
(336, 1, '103.150.64.177', '2024-08-25 20:33:57', NULL, 'a', 1),
(337, 1, '37.120.141.90', '2024-08-26 17:15:58', NULL, 'a', 1),
(338, 1, '202.86.216.230', '2024-08-26 20:03:04', NULL, 'a', 1),
(339, 1, '144.48.115.61', '2024-08-26 20:58:05', NULL, 'a', 1),
(340, 1, '202.181.16.42', '2024-08-27 19:58:49', NULL, 'a', 1),
(341, 1, '202.134.10.129', '2024-08-27 22:47:26', NULL, 'a', 1),
(342, 1, '103.159.72.93', '2024-08-28 09:50:04', NULL, 'a', 1),
(343, 1, '103.159.72.93', '2024-08-28 09:50:18', NULL, 'a', 1),
(344, 1, '59.152.2.147', '2024-08-28 15:51:21', NULL, 'a', 1),
(345, 1, '103.166.187.114', '2024-08-28 16:26:41', '2024-08-28 16:38:28', 'a', 1),
(346, 1, '103.159.72.93', '2024-08-28 16:49:00', NULL, 'a', 1),
(347, 1, '103.166.187.114', '2024-08-28 17:09:44', NULL, 'a', 1),
(348, 1, '202.181.16.161', '2024-08-28 18:38:13', '2024-08-28 19:10:51', 'a', 1),
(349, 1, '103.159.72.93', '2024-08-28 18:47:28', NULL, 'a', 1),
(350, 1, '103.159.72.93', '2024-08-28 19:42:34', NULL, 'a', 1),
(351, 1, '37.111.243.94', '2024-08-28 21:28:58', NULL, 'a', 1),
(352, 1, '103.159.72.76', '2024-08-29 09:54:01', NULL, 'a', 1),
(353, 1, '59.153.103.195', '2024-08-29 13:04:26', '2024-08-29 13:11:18', 'a', 1),
(354, 1, '103.177.122.234', '2024-08-31 10:48:01', NULL, 'a', 1),
(355, 1, '103.159.72.87', '2024-08-31 10:57:33', NULL, 'a', 1),
(356, 1, '59.152.4.249', '2024-08-31 12:42:38', NULL, 'a', 1),
(357, 1, '103.159.72.87', '2024-08-31 12:47:51', NULL, 'a', 1),
(358, 1, '202.134.10.129', '2024-08-31 14:10:29', NULL, 'a', 1),
(359, 1, '203.76.220.97', '2024-08-31 15:44:20', '2024-08-31 15:55:38', 'a', 1),
(360, 1, '203.76.220.97', '2024-08-31 15:57:35', NULL, 'a', 1),
(361, 1, '37.111.212.189', '2024-09-01 13:23:12', NULL, 'a', 1),
(362, 1, '103.159.72.66', '2024-09-01 15:30:53', NULL, 'a', 1),
(363, 1, '103.159.72.66', '2024-09-01 17:21:44', '2024-09-01 17:23:03', 'a', 1),
(364, 1, '103.159.72.66', '2024-09-01 17:24:17', '2024-09-01 17:25:04', 'a', 1),
(365, 1, '103.159.72.69', '2024-09-02 11:22:15', NULL, 'a', 1),
(366, 1, '103.159.72.69', '2024-09-02 11:55:01', NULL, 'a', 1),
(367, 1, '103.159.72.69', '2024-09-02 13:18:49', NULL, 'a', 1),
(368, 1, '103.159.72.69', '2024-09-02 13:59:51', NULL, 'a', 1),
(369, 1, '103.159.72.69', '2024-09-02 14:33:34', NULL, 'a', 1),
(370, 1, '103.159.72.69', '2024-09-02 16:25:13', NULL, 'a', 1),
(371, 1, '103.96.104.223', '2024-09-02 22:16:34', '2024-09-02 22:16:45', 'a', 1),
(372, 1, '103.96.104.223', '2024-09-02 22:17:12', NULL, 'a', 1),
(373, 1, '103.96.104.223', '2024-09-02 22:25:13', NULL, 'a', 1),
(374, 1, '103.100.232.15', '2024-09-03 14:10:11', NULL, 'a', 1),
(375, 1, '103.100.232.15', '2024-09-03 14:10:23', NULL, 'a', 1),
(376, 1, '103.159.72.118', '2024-09-03 15:57:00', NULL, 'a', 1),
(377, 1, '103.159.72.118', '2024-09-03 18:08:53', NULL, 'a', 1),
(378, 1, '103.159.72.96', '2024-09-04 09:52:44', NULL, 'a', 1),
(379, 1, '103.159.72.102', '2024-09-04 09:55:56', NULL, 'a', 1),
(380, 1, '103.159.72.102', '2024-09-04 10:14:53', NULL, 'a', 1),
(381, 1, '103.159.72.102', '2024-09-04 11:06:39', '2024-09-04 11:17:35', 'a', 1),
(382, 1, '103.49.203.110', '2024-09-04 11:48:12', '2024-09-04 12:00:38', 'a', 1),
(383, 1, '103.159.72.102', '2024-09-04 11:55:51', NULL, 'a', 1),
(384, 1, '103.204.247.2', '2024-09-04 12:34:48', NULL, 'a', 1),
(385, 1, '103.253.47.102', '2024-09-04 12:53:33', NULL, 'a', 1),
(386, 1, '116.204.143.168', '2024-09-04 12:56:27', NULL, 'a', 1),
(387, 1, '103.159.72.102', '2024-09-04 13:22:26', NULL, 'a', 1),
(388, 1, '103.7.123.254', '2024-09-04 17:30:10', NULL, 'a', 1),
(389, 1, '202.181.16.41', '2024-09-05 08:55:12', NULL, 'a', 1),
(390, 1, '103.174.189.163', '2024-09-05 17:54:38', NULL, 'a', 1),
(391, 1, '103.126.149.185', '2024-09-06 23:12:48', NULL, 'a', 1),
(392, 1, '103.49.203.110', '2024-09-07 11:04:55', NULL, 'a', 1),
(393, 1, '103.49.203.110', '2024-09-07 11:23:57', NULL, 'a', 1),
(394, 1, '103.174.189.163', '2024-09-07 13:18:57', NULL, 'a', 1),
(395, 1, '103.174.189.163', '2024-09-08 11:13:19', NULL, 'a', 1),
(396, 1, '103.248.236.22', '2024-09-08 11:50:11', NULL, 'a', 1),
(397, 1, '113.11.122.205', '2024-09-08 12:22:07', NULL, 'a', 1),
(398, 1, '103.174.189.163', '2024-09-08 12:23:55', NULL, 'a', 1),
(399, 1, '103.136.1.58', '2024-09-08 14:48:13', NULL, 'a', 1),
(400, 1, '182.48.73.203', '2024-09-08 17:28:07', NULL, 'a', 1),
(401, 1, '43.250.81.50', '2024-09-08 19:43:48', NULL, 'a', 1),
(402, 8, '103.150.64.178', '2024-09-08 20:33:48', NULL, 'a', 5),
(403, 1, '103.174.189.163', '2024-09-09 09:50:45', NULL, 'a', 1),
(404, 1, '103.174.189.163', '2024-09-09 10:11:38', NULL, 'a', 1),
(405, 8, '103.150.64.182', '2024-09-09 12:22:32', NULL, 'a', 5),
(406, 1, '118.179.18.106', '2024-09-09 12:30:39', NULL, 'a', 1),
(407, 1, '114.130.70.58', '2024-09-09 14:58:09', NULL, 'a', 1),
(408, 1, '37.111.201.69', '2024-09-09 16:27:48', NULL, 'a', 1),
(409, 1, '182.48.73.203', '2024-09-09 17:43:14', NULL, 'a', 1),
(410, 1, '103.174.189.163', '2024-09-10 10:28:08', NULL, 'a', 1),
(411, 1, '103.73.197.72', '2024-09-10 11:41:29', NULL, 'a', 1),
(412, 1, '113.11.122.205', '2024-09-10 13:45:26', NULL, 'a', 1),
(413, 1, '103.174.189.163', '2024-09-10 16:06:43', NULL, 'a', 1),
(414, 1, '113.21.228.226', '2024-09-10 18:17:48', NULL, 'a', 1),
(415, 1, '103.96.104.223', '2024-09-10 23:16:58', NULL, 'a', 1),
(416, 1, '103.174.189.163', '2024-09-11 09:58:54', NULL, 'a', 1),
(417, 1, '103.174.189.163', '2024-09-11 10:28:38', NULL, 'a', 1),
(418, 1, '104.28.234.54', '2024-09-11 23:40:50', NULL, 'a', 1),
(419, 1, '103.174.189.163', '2024-09-12 10:40:12', '2024-09-12 10:40:47', 'a', 1),
(420, 1, '103.191.98.194', '2024-09-12 11:31:00', NULL, 'a', 1),
(421, 1, '103.77.63.39', '2024-09-12 13:03:40', NULL, 'a', 1),
(422, 1, '103.74.230.56', '2024-09-12 14:50:23', '2024-09-12 14:51:13', 'a', 1),
(423, 1, '103.74.230.56', '2024-09-12 14:52:22', NULL, 'a', 1),
(424, 1, '103.196.234.153', '2024-09-12 15:36:23', NULL, 'a', 1),
(425, 1, '103.150.64.178', '2024-09-13 11:59:22', '2024-09-13 21:00:53', 'a', 1),
(426, 1, '103.202.222.51', '2024-09-13 12:15:46', NULL, 'a', 1),
(427, 1, '202.134.10.139', '2024-09-13 17:31:40', NULL, 'a', 1),
(428, 11, '103.150.64.178', '2024-09-13 21:01:02', NULL, 'a', 5),
(429, 1, '103.96.104.223', '2024-09-13 23:39:56', NULL, 'a', 1),
(430, 8, '103.150.64.177', '2024-09-14 10:26:08', NULL, 'a', 5),
(431, 1, '103.174.189.163', '2024-09-14 10:53:41', NULL, 'a', 1),
(432, 1, '103.174.189.163', '2024-09-14 14:52:13', NULL, 'a', 1),
(433, 1, '37.111.203.102', '2024-09-14 14:59:57', NULL, 'a', 1),
(434, 1, '103.77.63.47', '2024-09-14 21:08:02', NULL, 'a', 1),
(435, 1, '178.153.54.139', '2024-09-14 21:08:39', NULL, 'a', 1),
(436, 1, '178.153.54.139', '2024-09-14 21:28:09', NULL, 'a', 1),
(437, 1, '104.28.202.58', '2024-09-15 00:51:25', NULL, 'a', 1),
(438, 1, '103.171.69.69', '2024-09-15 13:44:04', NULL, 'a', 1),
(439, 1, '42.0.7.237', '2024-09-15 16:52:24', NULL, 'a', 1),
(440, 1, '103.150.64.179', '2024-09-15 20:09:50', NULL, 'a', 1),
(441, 1, '103.150.64.179', '2024-09-16 10:16:06', NULL, 'a', 1),
(442, 1, '103.150.64.179', '2024-09-16 10:16:06', '2024-09-16 10:16:12', 'a', 1),
(443, 1, '103.150.64.179', '2024-09-16 10:16:46', NULL, 'a', 1),
(444, 1, '59.152.1.48', '2024-09-16 16:36:22', NULL, 'a', 1),
(445, 1, '103.150.64.179', '2024-09-16 18:04:44', NULL, 'a', 1),
(446, 1, '103.96.104.223', '2024-09-16 22:58:38', NULL, 'a', 1),
(447, 1, '180.148.212.54', '2024-09-17 12:58:36', NULL, 'a', 1),
(448, 1, '37.111.206.75', '2024-09-17 14:21:37', NULL, 'a', 1),
(449, 1, '37.111.206.75', '2024-09-17 14:22:31', NULL, 'a', 1),
(450, 1, '37.111.206.75', '2024-09-17 14:22:37', '2024-09-17 14:30:52', 'a', 1),
(451, 1, '103.202.222.48', '2024-09-17 14:42:53', NULL, 'a', 1),
(452, 1, '103.202.222.48', '2024-09-17 14:43:06', NULL, 'a', 1),
(453, 1, '37.111.206.24', '2024-09-17 14:43:23', NULL, 'a', 1),
(454, 1, '103.174.189.163', '2024-09-17 17:32:03', NULL, 'a', 1),
(455, 1, '103.134.61.21', '2024-09-17 23:49:13', NULL, 'a', 1),
(456, 1, '103.174.189.163', '2024-09-18 09:48:16', NULL, 'a', 1),
(457, 1, '103.174.189.163', '2024-09-18 10:16:43', '2024-09-18 10:46:16', 'a', 1),
(458, 1, '146.70.46.30', '2024-09-18 10:46:48', NULL, 'a', 1),
(459, 1, '103.113.225.250', '2024-09-18 11:00:24', NULL, 'a', 1),
(460, 1, '103.174.189.163', '2024-09-18 11:02:26', NULL, 'a', 1),
(461, 1, '27.147.191.221', '2024-09-18 14:01:02', NULL, 'a', 1),
(462, 1, '202.134.9.128', '2024-09-18 15:17:17', NULL, 'a', 1),
(463, 1, '103.174.189.163', '2024-09-19 09:37:38', NULL, 'a', 1),
(464, 1, '103.150.64.179', '2024-09-19 11:02:52', NULL, 'a', 1),
(465, 1, '103.150.64.179', '2024-09-19 11:02:57', NULL, 'a', 1),
(466, 1, '103.150.64.179', '2024-09-19 11:03:17', NULL, 'a', 1),
(467, 1, '103.150.64.179', '2024-09-19 11:05:22', NULL, 'a', 1),
(468, 1, '202.181.16.12', '2024-09-19 13:35:00', NULL, 'a', 1),
(469, 1, '103.159.73.102', '2024-09-19 15:44:13', NULL, 'a', 1),
(470, 1, '103.78.254.137', '2024-09-20 06:05:26', NULL, 'a', 1),
(471, 1, '175.41.46.102', '2024-09-20 19:32:12', NULL, 'a', 1),
(472, 1, '103.159.73.102', '2024-09-21 11:26:15', NULL, 'a', 1),
(473, 1, '202.134.11.234', '2024-09-21 15:11:25', NULL, 'a', 1),
(474, 1, '103.155.184.133', '2024-09-21 17:30:56', NULL, 'a', 1),
(475, 1, '103.159.73.102', '2024-09-22 12:14:23', NULL, 'a', 1),
(476, 1, '103.159.73.102', '2024-09-22 12:24:23', NULL, 'a', 1),
(477, 1, '202.134.11.236', '2024-09-22 13:07:47', NULL, 'a', 1),
(478, 1, '202.134.11.236', '2024-09-22 13:16:09', NULL, 'a', 1),
(479, 1, '103.159.73.102', '2024-09-22 13:39:33', NULL, 'a', 1),
(480, 1, '202.86.219.204', '2024-09-22 14:11:27', NULL, 'a', 1),
(481, 1, '202.86.219.185', '2024-09-22 15:11:14', NULL, 'a', 1),
(482, 1, '103.159.73.102', '2024-09-23 11:23:01', NULL, 'a', 1),
(483, 1, '103.159.73.102', '2024-09-23 12:00:19', NULL, 'a', 1),
(484, 1, '42.0.7.240', '2024-09-24 12:09:05', NULL, 'a', 1),
(485, 1, '103.120.222.121', '2024-09-24 15:02:51', NULL, 'a', 1),
(486, 1, '103.120.222.121', '2024-09-24 15:02:57', NULL, 'a', 1),
(487, 1, '103.120.222.121', '2024-09-24 15:03:43', NULL, 'a', 1),
(488, 1, '37.211.50.45', '2024-09-24 20:03:19', NULL, 'a', 1),
(489, 1, '103.159.73.102', '2024-09-25 14:03:00', NULL, 'a', 1),
(490, 1, '103.159.73.102', '2024-09-25 17:46:05', NULL, 'a', 1),
(491, 1, '103.159.171.134', '2024-09-25 19:59:31', NULL, 'a', 1),
(492, 1, '103.159.171.134', '2024-09-26 10:51:48', NULL, 'a', 1),
(493, 1, '103.159.73.102', '2024-09-26 14:08:45', '2024-09-26 16:13:07', 'a', 1),
(494, 1, '103.159.73.102', '2024-09-26 16:10:21', NULL, 'a', 1),
(495, 1, '103.159.73.102', '2024-09-26 17:29:40', '2024-09-26 17:50:11', 'a', 1),
(496, 1, '103.159.73.102', '2024-09-26 20:03:20', '2024-09-26 20:04:19', 'a', 1),
(497, 1, '103.159.73.102', '2024-09-26 20:41:35', NULL, 'a', 1),
(498, 1, '103.159.73.102', '2024-09-28 13:41:47', '2024-09-28 15:19:59', 'a', 1),
(499, 1, '103.159.73.102', '2024-09-28 14:39:53', NULL, 'a', 1),
(500, 1, '103.159.73.102', '2024-09-28 15:20:06', NULL, 'a', 1),
(501, 1, '103.159.73.102', '2024-09-28 15:21:32', NULL, 'a', 1),
(502, 1, '103.120.222.10', '2024-09-28 15:22:00', '2024-09-28 16:03:25', 'a', 1),
(503, 12, '103.120.222.10', '2024-09-28 16:02:31', NULL, 'a', 8),
(504, 12, '103.120.222.10', '2024-09-28 16:03:30', NULL, 'a', 8),
(505, 13, '103.120.222.10', '2024-09-28 16:03:34', '2024-09-28 16:03:45', 'a', 8),
(506, 1, '103.120.222.10', '2024-09-28 16:03:59', NULL, 'a', 1),
(507, 9, '103.120.222.10', '2024-09-28 16:05:22', NULL, 'a', 1),
(508, 7, '103.159.73.102', '2024-09-28 16:20:29', NULL, 'a', 2),
(509, 1, '103.159.73.102', '2024-09-28 16:46:56', NULL, 'a', 1),
(510, 1, '103.159.73.102', '2024-09-28 16:58:33', NULL, 'a', 1),
(511, 1, '103.159.73.102', '2024-09-28 17:41:08', NULL, 'a', 1),
(512, 1, '103.159.73.99', '2024-09-29 09:55:07', NULL, 'a', 1),
(513, 1, '103.159.171.134', '2024-09-29 12:42:25', NULL, 'a', 1),
(514, 1, '103.159.73.99', '2024-09-29 16:40:20', NULL, 'a', 1),
(515, 1, '103.159.170.30', '2024-09-30 11:44:51', NULL, 'a', 1),
(516, 1, '103.159.170.30', '2024-09-30 13:00:49', NULL, 'a', 1),
(517, 1, '103.159.73.99', '2024-09-30 14:56:28', NULL, 'a', 1),
(518, 7, '149.202.98.187', '2024-10-01 09:39:58', '2024-10-01 09:40:42', 'a', 2),
(519, 7, '149.202.98.187', '2024-10-01 09:41:31', NULL, 'a', 2),
(520, 1, '103.159.73.97', '2024-10-01 10:58:09', '2024-10-01 13:21:22', 'a', 1),
(521, 1, '202.134.10.137', '2024-10-01 12:24:19', NULL, 'a', 1),
(522, 1, '103.159.73.97', '2024-10-01 13:21:33', NULL, 'a', 1),
(523, 1, '103.204.246.31', '2024-10-01 16:40:54', NULL, 'a', 1),
(524, 1, '103.204.246.31', '2024-10-01 16:40:54', NULL, 'a', 1),
(525, 1, '103.204.246.31', '2024-10-01 16:40:54', NULL, 'a', 1),
(526, 1, '103.204.246.31', '2024-10-01 16:40:54', NULL, 'a', 1),
(527, 1, '103.159.73.97', '2024-10-02 12:01:35', '2024-10-02 12:34:59', 'a', 1),
(528, 1, '103.159.73.97', '2024-10-02 12:24:43', NULL, 'a', 1),
(529, 1, '103.159.73.97', '2024-10-02 12:35:09', NULL, 'a', 1),
(530, 1, '103.159.73.97', '2024-10-02 12:43:15', NULL, 'a', 1),
(531, 1, '116.58.203.145', '2024-10-02 16:38:51', NULL, 'a', 1),
(532, 1, '103.159.73.93', '2024-10-03 16:30:28', NULL, 'a', 1),
(533, 1, '103.159.73.93', '2024-10-03 17:09:45', NULL, 'a', 1),
(534, 1, '103.210.59.102', '2024-10-03 17:32:19', NULL, 'a', 1),
(535, 1, '103.210.59.102', '2024-10-03 19:52:02', NULL, 'a', 1),
(536, 1, '103.159.73.93', '2024-10-03 21:31:44', NULL, 'a', 1),
(537, 1, '51.195.223.213', '2024-10-03 21:34:45', NULL, 'a', 1),
(538, 1, '51.195.223.213', '2024-10-03 21:42:04', NULL, 'a', 1),
(539, 1, '160.20.117.139', '2024-10-03 23:45:46', NULL, 'a', 1),
(540, 1, '5.31.250.91', '2024-10-04 02:58:31', NULL, 'a', 1),
(541, 1, '43.231.22.19', '2024-10-04 10:59:11', NULL, 'a', 1),
(542, 1, '37.111.239.91', '2024-10-04 12:08:46', NULL, 'a', 1),
(543, 1, '103.213.237.113', '2024-10-04 18:39:16', NULL, 'a', 1),
(544, 1, '103.210.59.102', '2024-10-04 19:10:24', NULL, 'a', 1),
(545, 1, '103.159.73.93', '2024-10-05 12:33:56', NULL, 'a', 1),
(546, 1, '103.159.73.93', '2024-10-05 12:39:12', NULL, 'a', 1),
(547, 1, '103.159.73.93', '2024-10-05 13:08:49', NULL, 'a', 1),
(548, 1, '103.210.59.102', '2024-10-05 13:14:29', NULL, 'a', 1),
(549, 1, '103.210.59.102', '2024-10-05 13:18:29', NULL, 'a', 1),
(550, 1, '103.159.73.93', '2024-10-05 13:28:33', NULL, 'a', 1),
(551, 1, '103.159.73.93', '2024-10-05 17:54:55', NULL, 'a', 1),
(552, 1, '103.159.73.93', '2024-10-05 18:02:58', NULL, 'a', 1),
(553, 1, '114.130.70.59', '2024-10-06 10:44:32', NULL, 'a', 1),
(554, 1, '103.184.25.42', '2024-10-06 12:04:04', NULL, 'a', 1),
(555, 1, '103.185.224.24', '2024-10-06 12:40:15', '2024-10-06 15:25:14', 'a', 1),
(556, 1, '103.185.224.24', '2024-10-06 13:57:25', NULL, 'a', 1),
(557, 1, '103.185.224.24', '2024-10-06 15:55:03', '2024-10-06 17:56:14', 'a', 1),
(558, 1, '103.159.73.93', '2024-10-07 10:53:23', NULL, 'a', 1),
(559, 1, '103.185.224.24', '2024-10-07 11:46:33', NULL, 'a', 1),
(560, 1, '103.10.194.7', '2024-10-07 13:48:06', NULL, 'a', 1),
(561, 1, '103.116.167.227', '2024-10-07 18:17:08', '2024-10-07 18:21:21', 'a', 1),
(562, 1, '103.116.167.227', '2024-10-07 18:22:12', '2024-10-07 19:42:40', 'a', 1),
(563, 14, '103.116.167.227', '2024-10-07 19:43:25', '2024-10-07 20:18:17', 'a', 1),
(564, 1, '103.159.73.93', '2024-10-08 10:53:56', NULL, 'a', 1),
(565, 1, '103.159.73.93', '2024-10-08 11:59:42', NULL, 'a', 1),
(566, 1, '103.204.211.129', '2024-10-08 12:33:15', NULL, 'a', 1),
(567, 1, '103.159.73.93', '2024-10-08 12:58:25', '2024-10-08 13:01:26', 'a', 1),
(568, 15, '103.159.73.93', '2024-10-08 13:01:44', NULL, 'a', 1),
(569, 15, '103.159.73.93', '2024-10-08 13:09:59', NULL, 'a', 1),
(570, 1, '103.185.224.24', '2024-10-08 16:37:48', NULL, 'a', 1),
(571, 1, '103.159.73.93', '2024-10-09 09:45:09', NULL, 'a', 1),
(572, 1, '103.159.73.93', '2024-10-09 10:30:02', NULL, 'a', 1),
(573, 15, '37.111.220.229', '2024-10-09 10:54:35', NULL, 'a', 1),
(574, 15, '37.111.220.229', '2024-10-09 10:58:04', '2024-10-09 10:58:50', 'a', 1),
(575, 15, '37.111.220.229', '2024-10-09 10:58:52', NULL, 'a', 1),
(576, 15, '37.111.220.229', '2024-10-09 11:00:07', '2024-10-09 11:47:08', 'a', 1),
(577, 1, '103.159.73.93', '2024-10-09 11:44:06', NULL, 'a', 1),
(578, 15, '37.111.220.229', '2024-10-09 11:47:10', NULL, 'a', 1),
(579, 15, '37.111.220.229', '2024-10-09 11:48:45', NULL, 'a', 1),
(580, 1, '43.231.22.16', '2024-10-09 13:14:05', NULL, 'a', 1),
(581, 1, '43.245.122.44', '2024-10-11 14:28:42', NULL, 'a', 1),
(582, 1, '103.159.73.90', '2024-10-12 10:34:15', NULL, 'a', 1),
(583, 1, '103.159.73.90', '2024-10-12 11:14:24', NULL, 'a', 1),
(584, 1, '103.74.230.56', '2024-10-12 12:30:14', NULL, 'a', 1),
(585, 1, '103.159.73.90', '2024-10-12 12:50:17', NULL, 'a', 1),
(586, 1, '103.77.63.39', '2024-10-12 21:40:41', NULL, 'a', 1),
(587, 1, '103.159.73.90', '2024-10-14 18:20:59', NULL, 'a', 1),
(588, 1, '103.159.73.90', '2024-10-15 11:38:14', NULL, 'a', 1),
(589, 1, '103.185.224.24', '2024-10-15 16:51:27', NULL, 'a', 1),
(590, 1, '103.159.73.90', '2024-10-15 17:25:58', NULL, 'a', 1),
(591, 1, '103.159.73.90', '2024-10-15 17:31:55', NULL, 'a', 1),
(592, 1, '103.136.204.4', '2024-10-16 13:15:12', NULL, 'a', 1),
(593, 1, '103.159.73.90', '2024-10-17 09:51:20', NULL, 'a', 1),
(594, 1, '103.148.179.149', '2024-10-17 11:44:22', NULL, 'a', 1),
(595, 1, '103.148.179.149', '2024-10-17 12:11:48', NULL, 'a', 1),
(596, 1, '103.148.179.149', '2024-10-17 12:12:51', NULL, 'a', 1),
(597, 1, '103.243.238.255', '2024-10-17 14:55:23', NULL, 'a', 1),
(598, 1, '103.159.73.90', '2024-10-17 17:27:32', NULL, 'a', 1),
(599, 1, '103.180.55.225', '2024-10-17 17:43:26', NULL, 'a', 1),
(600, 1, '144.48.115.60', '2024-10-17 22:07:25', NULL, 'a', 1),
(601, 1, '95.185.114.36', '2024-10-18 00:08:22', NULL, 'a', 1),
(602, 1, '43.231.79.114', '2024-10-18 18:57:19', NULL, 'a', 1),
(603, 1, '151.255.39.229', '2024-10-18 19:27:39', NULL, 'a', 1),
(604, 1, '103.159.73.88', '2024-10-19 10:15:44', NULL, 'a', 1),
(605, 1, '103.159.73.88', '2024-10-19 11:53:53', NULL, 'a', 1),
(606, 1, '103.189.158.200', '2024-10-19 12:08:15', NULL, 'a', 1),
(607, 1, '202.134.11.237', '2024-10-19 13:49:15', NULL, 'a', 1),
(608, 1, '58.145.186.220', '2024-10-19 14:09:52', NULL, 'a', 1),
(609, 1, '103.159.73.88', '2024-10-19 15:35:25', '2024-10-19 16:02:51', 'a', 1),
(610, 16, '59.152.2.225', '2024-10-19 16:03:03', '2024-10-19 16:03:49', 'a', 1),
(611, 1, '59.152.2.225', '2024-10-19 16:03:57', '2024-10-19 16:04:46', 'a', 1),
(612, 16, '59.152.2.225', '2024-10-19 16:04:56', '2024-10-19 16:05:31', 'a', 1),
(613, 1, '59.152.2.225', '2024-10-19 16:05:38', NULL, 'a', 1),
(614, 7, '103.159.73.88', '2024-10-20 10:07:46', NULL, 'a', 2),
(615, 7, '103.159.73.88', '2024-10-20 10:07:48', NULL, 'a', 2),
(616, 1, '103.159.73.88', '2024-10-20 12:11:07', '2024-10-20 15:55:12', 'a', 1),
(617, 1, '59.152.1.226', '2024-10-20 12:16:44', NULL, 'a', 1),
(618, 1, '103.159.73.88', '2024-10-20 14:51:10', '2024-10-20 16:07:52', 'a', 1),
(619, 1, '103.159.73.88', '2024-10-20 15:33:29', NULL, 'a', 1),
(620, 1, '103.159.73.88', '2024-10-20 15:57:34', '2024-10-20 16:12:09', 'a', 1),
(621, 1, '103.159.73.88', '2024-10-20 16:08:00', '2024-10-20 16:08:11', 'a', 1),
(622, 1, '103.159.73.88', '2024-10-20 16:08:20', '2024-10-20 16:09:32', 'a', 1),
(623, 1, '103.159.73.88', '2024-10-20 16:09:37', '2024-10-20 16:10:00', 'a', 1),
(624, 1, '103.159.73.88', '2024-10-20 16:10:33', '2024-10-20 16:11:12', 'a', 1),
(625, 1, '103.159.73.88', '2024-10-20 16:11:16', '2024-10-20 17:55:05', 'a', 1),
(626, 1, '103.159.73.88', '2024-10-20 16:12:20', '2024-10-20 16:12:51', 'a', 1),
(627, 1, '103.159.73.88', '2024-10-20 16:12:57', NULL, 'a', 1),
(628, 1, '103.159.73.88', '2024-10-20 17:55:12', '2024-10-20 17:57:29', 'a', 1),
(629, 1, '103.159.73.88', '2024-10-20 17:57:35', '2024-10-20 17:57:39', 'a', 1),
(630, 1, '103.159.73.88', '2024-10-20 17:57:44', NULL, 'a', 1),
(631, 1, '103.134.61.23', '2024-10-20 18:33:25', NULL, 'a', 1),
(632, 1, '103.166.41.22', '2024-10-20 18:47:17', '2024-10-20 18:49:51', 'a', 1),
(633, 1, '103.25.81.79', '2024-10-20 19:55:10', NULL, 'a', 1),
(634, 1, '114.130.186.107', '2024-10-20 22:41:52', NULL, 'a', 1),
(635, 1, '103.159.73.88', '2024-10-21 09:37:37', '2024-10-21 09:51:34', 'a', 1),
(636, 1, '103.159.73.88', '2024-10-21 12:49:54', '2024-10-21 17:47:12', 'a', 1),
(637, 1, '103.159.73.88', '2024-10-21 12:52:18', NULL, 'a', 1),
(638, 1, '103.148.179.149', '2024-10-21 16:14:47', NULL, 'a', 1),
(639, 1, '103.159.73.88', '2024-10-21 17:47:23', NULL, 'a', 1),
(640, 1, '103.241.195.34', '2024-10-22 12:23:09', '2024-10-22 12:59:01', 'a', 1),
(641, 1, '103.159.73.88', '2024-10-22 12:46:18', NULL, 'a', 1),
(642, 17, '103.241.195.34', '2024-10-22 12:59:36', NULL, 'a', 1),
(643, 1, '103.159.73.88', '2024-10-22 15:26:51', NULL, 'a', 1),
(644, 1, '103.159.73.88', '2024-10-22 16:25:21', NULL, 'a', 1),
(645, 1, '103.138.227.116', '2024-10-22 17:25:29', NULL, 'a', 1),
(646, 1, '103.232.103.3', '2024-10-23 08:42:26', NULL, 'a', 1),
(647, 1, '103.159.73.86', '2024-10-23 11:06:32', '2024-10-23 11:25:32', 'a', 1),
(648, 18, '103.159.73.86', '2024-10-23 11:26:38', NULL, 'a', 11),
(649, 1, '103.159.73.86', '2024-10-23 11:28:35', NULL, 'a', 1),
(650, 18, '103.142.69.56', '2024-10-23 11:37:40', NULL, 'a', 11),
(651, 18, '103.142.69.56', '2024-10-23 11:41:24', NULL, 'a', 11),
(652, 1, '103.159.73.86', '2024-10-23 12:12:50', NULL, 'a', 1),
(653, 1, '103.159.73.86', '2024-10-23 12:12:55', NULL, 'a', 1),
(654, 1, '103.159.73.86', '2024-10-23 12:46:15', NULL, 'a', 1),
(655, 1, '202.134.10.132', '2024-10-23 12:46:23', NULL, 'a', 1),
(656, 1, '103.159.73.86', '2024-10-23 13:46:23', NULL, 'a', 1),
(657, 1, '103.148.179.148', '2024-10-23 15:05:40', NULL, 'a', 1),
(658, 1, '202.134.10.132', '2024-10-23 16:27:43', NULL, 'a', 1),
(659, 1, '151.255.43.164', '2024-10-23 16:41:34', NULL, 'a', 1),
(660, 18, '103.142.69.56', '2024-10-24 09:30:46', '2024-10-24 09:36:01', 'a', 11),
(661, 18, '103.142.69.56', '2024-10-24 09:36:03', NULL, 'a', 11),
(662, 7, '103.159.73.86', '2024-10-24 10:00:59', '2024-10-24 10:01:33', 'a', 2),
(663, 1, '103.159.73.86', '2024-10-24 10:07:29', NULL, 'a', 1),
(664, 1, '103.134.61.23', '2024-10-24 12:24:25', NULL, 'a', 1),
(665, 1, '103.159.73.86', '2024-10-24 17:40:05', NULL, 'a', 1),
(666, 18, '103.142.69.56', '2024-10-24 19:30:46', NULL, 'a', 11),
(667, 18, '103.142.69.56', '2024-10-24 19:39:15', NULL, 'a', 11),
(668, 18, '103.142.69.56', '2024-10-24 20:23:02', NULL, 'a', 11),
(669, 1, '103.148.179.149', '2024-10-25 01:51:50', NULL, 'a', 1),
(670, 1, '58.145.186.233', '2024-10-25 01:52:11', NULL, 'a', 1),
(671, 1, '103.41.115.27', '2024-10-25 03:31:09', NULL, 'a', 1),
(672, 1, '151.255.40.184', '2024-10-25 16:19:09', NULL, 'a', 1),
(673, 1, '103.232.103.3', '2024-10-26 09:05:11', NULL, 'a', 1),
(674, 1, '103.159.73.82', '2024-10-26 13:49:58', NULL, 'a', 1),
(675, 1, '103.159.73.82', '2024-10-26 14:33:15', NULL, 'a', 1),
(676, 1, '103.73.46.227', '2024-10-26 17:12:57', NULL, 'a', 1),
(677, 1, '103.159.73.82', '2024-10-26 17:49:38', NULL, 'a', 1),
(678, 18, '103.142.69.56', '2024-10-26 21:42:31', NULL, 'a', 11),
(679, 1, '103.159.73.80', '2024-10-27 09:31:49', NULL, 'a', 1),
(680, 1, '103.159.73.80', '2024-10-27 09:43:31', NULL, 'a', 1),
(681, 1, '59.152.1.197', '2024-10-27 12:03:41', NULL, 'a', 1),
(682, 1, '59.152.1.197', '2024-10-27 12:05:38', NULL, 'a', 1),
(683, 1, '103.159.73.80', '2024-10-27 15:41:48', '2024-10-27 17:04:14', 'a', 1),
(684, 1, '103.60.175.24', '2024-10-27 16:12:15', NULL, 'a', 1),
(685, 1, '43.231.79.114', '2024-10-27 16:54:57', '2024-10-27 17:32:34', 'a', 1),
(686, 1, '103.159.73.80', '2024-10-27 17:04:17', NULL, 'a', 1),
(687, 1, '103.148.179.149', '2024-10-27 19:23:07', NULL, 'a', 1),
(688, 1, '103.148.179.149', '2024-10-27 19:23:19', NULL, 'a', 1),
(689, 1, '103.159.73.80', '2024-10-27 19:44:55', NULL, 'a', 1),
(690, 1, '103.139.9.23', '2024-10-27 22:40:40', NULL, 'a', 1),
(691, 1, '103.139.9.23', '2024-10-27 22:41:45', NULL, 'a', 1),
(692, 1, '103.126.219.206', '2024-10-27 23:45:06', NULL, 'a', 1),
(693, 1, '59.152.3.107', '2024-10-28 09:29:15', NULL, 'a', 1),
(694, 18, '103.142.69.56', '2024-10-28 11:14:46', NULL, 'a', 11),
(695, 1, '103.159.73.78', '2024-10-28 12:05:26', NULL, 'a', 1),
(696, 1, '103.159.73.78', '2024-10-28 12:14:47', NULL, 'a', 1),
(697, 18, '103.159.73.78', '2024-10-28 12:42:58', NULL, 'a', 11),
(698, 18, '103.159.73.78', '2024-10-28 12:47:20', NULL, 'a', 11),
(699, 1, '103.139.9.23', '2024-10-28 13:20:31', NULL, 'a', 1),
(700, 1, '103.112.65.26', '2024-10-28 14:06:46', NULL, 'a', 1),
(701, 1, '45.120.114.175', '2024-10-28 14:24:59', NULL, 'a', 1),
(702, 1, '58.145.187.221', '2024-10-28 20:39:05', NULL, 'a', 1),
(703, 1, '103.120.221.14', '2024-10-29 12:41:40', NULL, 'a', 1),
(704, 1, '103.159.73.78', '2024-10-29 13:34:18', NULL, 'a', 1),
(705, 1, '103.159.73.78', '2024-10-29 15:29:42', NULL, 'a', 1),
(706, 1, '202.134.11.250', '2024-10-29 15:39:22', NULL, 'a', 1),
(707, 1, '202.134.8.194', '2024-10-29 15:48:04', NULL, 'a', 1),
(708, 1, '103.159.73.78', '2024-10-29 15:55:41', '2024-10-29 15:57:32', 'a', 1),
(709, 1, '103.231.162.27', '2024-10-29 20:45:17', NULL, 'a', 1),
(710, 1, '103.106.239.54', '2024-10-29 20:57:29', NULL, 'a', 1),
(711, 1, '95.186.142.156', '2024-10-30 06:04:21', NULL, 'a', 1),
(712, 1, '103.159.73.75', '2024-10-30 10:23:41', NULL, 'a', 1),
(713, 1, '103.159.73.75', '2024-10-30 13:01:08', NULL, 'a', 1),
(714, 1, '103.198.132.95', '2024-10-30 16:03:43', NULL, 'a', 1),
(715, 1, '103.159.73.75', '2024-10-30 17:14:41', NULL, 'a', 1),
(716, 1, '103.159.73.75', '2024-10-31 12:54:00', '2024-10-31 17:29:48', 'a', 1),
(717, 18, '103.142.69.56', '2024-10-31 14:40:44', '2024-10-31 15:06:39', 'a', 11),
(718, 1, '103.159.73.75', '2024-10-31 14:41:50', NULL, 'a', 1),
(719, 1, '37.111.206.110', '2024-10-31 14:55:29', NULL, 'a', 1),
(720, 18, '103.142.69.56', '2024-10-31 15:06:44', NULL, 'a', 11),
(721, 1, '37.111.206.64', '2024-10-31 15:13:08', NULL, 'a', 1),
(722, 1, '37.111.206.64', '2024-10-31 16:02:12', NULL, 'a', 1),
(723, 1, '103.159.73.75', '2024-10-31 17:19:47', '2024-10-31 17:20:28', 'a', 1),
(724, 1, '37.111.206.157', '2024-10-31 18:35:47', NULL, 'a', 1),
(725, 1, '103.204.211.177', '2024-10-31 18:38:01', NULL, 'a', 1),
(726, 1, '103.159.73.75', '2024-10-31 18:55:51', NULL, 'a', 1),
(727, 1, '37.111.206.157', '2024-10-31 19:26:11', NULL, 'a', 1),
(728, 1, '37.111.206.110', '2024-10-31 21:08:33', NULL, 'a', 1),
(729, 1, '37.111.206.110', '2024-10-31 21:15:21', NULL, 'a', 1),
(730, 1, '37.111.206.6', '2024-10-31 21:30:28', NULL, 'a', 1),
(731, 1, '37.111.206.6', '2024-10-31 21:31:42', NULL, 'a', 1),
(732, 1, '37.111.212.167', '2024-11-01 04:35:27', NULL, 'a', 1),
(733, 1, '37.111.212.167', '2024-11-01 04:35:27', NULL, 'a', 1),
(734, 1, '37.111.212.167', '2024-11-01 04:46:03', NULL, 'a', 1),
(735, 1, '37.111.212.167', '2024-11-01 07:56:56', NULL, 'a', 1),
(736, 1, '37.111.212.168', '2024-11-01 09:03:23', NULL, 'a', 1),
(737, 1, '37.111.212.33', '2024-11-01 09:04:33', NULL, 'a', 1),
(738, 1, '37.111.212.111', '2024-11-01 09:44:07', NULL, 'a', 1),
(739, 1, '37.111.212.111', '2024-11-01 09:44:41', NULL, 'a', 1),
(740, 1, '103.204.211.177', '2024-11-01 11:41:48', NULL, 'a', 1),
(741, 1, '103.204.210.175', '2024-11-01 15:04:56', NULL, 'a', 1),
(742, 18, '103.142.69.56', '2024-11-01 21:09:42', NULL, 'a', 11),
(743, 1, '37.111.212.146', '2024-11-02 07:28:26', NULL, 'a', 1),
(744, 1, '37.111.212.146', '2024-11-02 07:32:18', NULL, 'a', 1),
(745, 1, '103.159.73.74', '2024-11-02 13:19:52', NULL, 'a', 1),
(746, 1, '202.134.10.138', '2024-11-02 13:23:12', NULL, 'a', 1),
(747, 1, '103.159.73.74', '2024-11-02 14:05:26', NULL, 'a', 1),
(748, 1, '103.159.73.74', '2024-11-02 14:07:55', NULL, 'a', 1),
(749, 1, '103.159.73.74', '2024-11-02 14:28:46', NULL, 'a', 1),
(750, 1, '103.159.73.74', '2024-11-02 14:48:55', NULL, 'a', 1),
(751, 1, '103.159.73.74', '2024-11-02 14:54:25', NULL, 'a', 1),
(752, 1, '103.159.73.74', '2024-11-02 15:32:46', NULL, 'a', 1),
(753, 1, '119.73.101.72', '2024-11-02 18:57:17', NULL, 'a', 1),
(754, 1, '37.111.206.185', '2024-11-02 23:49:18', NULL, 'a', 1),
(755, 1, '103.239.253.118', '2024-11-03 09:36:59', NULL, 'a', 1),
(756, 1, '103.146.10.149', '2024-11-03 12:19:12', NULL, 'a', 1),
(757, 1, '202.134.10.142', '2024-11-03 14:15:37', NULL, 'a', 1),
(758, 20, '114.130.157.23', '2024-11-03 14:21:41', NULL, 'a', 1),
(759, 1, '202.134.10.142', '2024-11-03 14:23:01', NULL, 'a', 1),
(760, 1, '119.73.101.72', '2024-11-03 14:56:16', NULL, 'a', 1),
(761, 1, '103.200.94.65', '2024-11-03 15:45:06', NULL, 'a', 1),
(762, 1, '59.153.103.143', '2024-11-03 17:27:58', NULL, 'a', 1),
(763, 1, '202.134.10.142', '2024-11-03 17:44:12', NULL, 'a', 1),
(764, 1, '103.159.73.65', '2024-11-04 10:06:08', NULL, 'a', 1),
(765, 1, '103.159.73.65', '2024-11-04 10:17:10', NULL, 'a', 1),
(766, 1, '103.159.73.65', '2024-11-04 15:04:49', NULL, 'a', 1),
(767, 1, '103.150.254.66', '2024-11-04 16:27:17', NULL, 'a', 1),
(768, 1, '37.111.212.45', '2024-11-04 16:50:48', NULL, 'a', 1),
(769, 1, '103.58.73.62', '2024-11-04 16:50:55', NULL, 'a', 1);
INSERT INTO `tbl_user_activity` (`id`, `user_id`, `ip_address`, `login_time`, `logout_time`, `status`, `branch_id`) VALUES
(770, 1, '37.111.206.75', '2024-11-04 22:12:10', NULL, 'a', 1),
(771, 1, '37.111.206.75', '2024-11-04 22:13:39', NULL, 'a', 1),
(772, 20, '43.245.141.50', '2024-11-05 07:28:08', NULL, 'a', 1),
(773, 1, '103.159.73.65', '2024-11-05 11:44:09', NULL, 'a', 1),
(774, 1, '103.159.170.10', '2024-11-05 12:04:15', NULL, 'a', 1),
(775, 1, '103.134.61.23', '2024-11-05 12:25:13', NULL, 'a', 1),
(776, 1, '103.159.170.10', '2024-11-05 13:06:58', NULL, 'a', 1),
(777, 1, '103.134.61.23', '2024-11-05 13:30:38', NULL, 'a', 1),
(778, 1, '103.159.73.65', '2024-11-05 15:43:50', NULL, 'a', 1),
(779, 1, '37.111.212.217', '2024-11-05 17:21:15', NULL, 'a', 1),
(780, 1, '37.111.212.160', '2024-11-05 20:15:11', NULL, 'a', 1),
(781, 1, '37.111.212.217', '2024-11-06 06:44:35', NULL, 'a', 1),
(782, 1, '103.152.106.48', '2024-11-06 15:02:36', NULL, 'a', 1),
(783, 1, '116.204.154.34', '2024-11-06 15:27:50', NULL, 'a', 1),
(784, 1, '116.204.154.34', '2024-11-06 16:23:19', NULL, 'a', 1),
(785, 1, '103.159.73.65', '2024-11-07 12:51:34', NULL, 'a', 1),
(786, 1, '103.152.106.49', '2024-11-07 13:34:40', NULL, 'a', 1),
(787, 1, '103.159.73.65', '2024-11-07 16:33:06', NULL, 'a', 1),
(788, 20, '103.167.190.2', '2024-11-07 22:37:08', NULL, 'a', 1),
(789, 1, '103.159.73.65', '2024-11-09 10:11:11', NULL, 'a', 1),
(790, 1, '103.159.73.65', '2024-11-09 13:13:52', NULL, 'a', 1),
(791, 1, '45.120.96.96', '2024-11-09 13:45:58', '2024-11-09 13:51:38', 'a', 1),
(792, 1, '59.152.2.109', '2024-11-09 13:59:43', NULL, 'a', 1),
(793, 1, '103.159.73.65', '2024-11-09 15:23:05', NULL, 'a', 1),
(794, 1, '103.159.73.65', '2024-11-10 11:15:37', NULL, 'a', 1),
(795, 1, '103.159.73.65', '2024-11-10 11:44:34', NULL, 'a', 1),
(796, 1, '103.137.229.132', '2024-11-10 14:45:50', '2024-11-10 14:48:17', 'a', 1),
(797, 1, '51.252.151.243', '2024-11-10 22:59:31', NULL, 'a', 1),
(798, 1, '51.252.135.251', '2024-11-10 23:58:24', NULL, 'a', 1),
(799, 1, '51.252.135.251', '2024-11-10 23:58:35', NULL, 'a', 1),
(800, 1, '59.152.7.27', '2024-11-11 12:57:58', NULL, 'a', 1),
(801, 1, '103.159.73.72', '2024-11-11 14:53:54', '2024-11-11 15:07:58', 'a', 1),
(802, 21, '103.159.73.72', '2024-11-11 15:08:06', '2024-11-11 15:09:14', 'a', 14),
(803, 21, '103.159.73.72', '2024-11-11 15:09:23', '2024-11-11 15:10:03', 'a', 14),
(804, 1, '103.159.73.72', '2024-11-11 15:10:13', '2024-11-11 15:20:58', 'a', 1),
(805, 21, '103.159.73.72', '2024-11-11 15:21:07', '2024-11-11 15:22:02', 'a', 14),
(806, 1, '103.159.73.72', '2024-11-11 15:22:13', '2024-11-11 16:00:54', 'a', 1),
(807, 1, '103.159.73.72', '2024-11-11 16:01:05', NULL, 'a', 1),
(808, 1, '37.111.202.119', '2024-11-12 00:37:45', NULL, 'a', 1),
(809, 1, '103.159.73.81', '2024-11-12 11:18:16', NULL, 'a', 1),
(810, 1, '103.159.73.81', '2024-11-12 11:18:24', NULL, 'a', 1),
(811, 1, '103.159.73.81', '2024-11-12 11:21:28', NULL, 'a', 1),
(812, 1, '202.134.14.143', '2024-11-12 11:57:48', NULL, 'a', 1),
(813, 1, '103.31.154.226', '2024-11-12 11:59:07', NULL, 'a', 1),
(814, 1, '202.134.14.143', '2024-11-12 11:59:22', NULL, 'a', 1),
(815, 1, '202.134.14.143', '2024-11-12 11:59:32', NULL, 'a', 1),
(816, 1, '202.134.14.143', '2024-11-12 12:00:42', NULL, 'a', 1),
(817, 22, '103.25.248.128', '2024-11-12 12:07:30', NULL, 'a', 1),
(818, 1, '103.159.73.81', '2024-11-12 13:12:31', NULL, 'a', 1),
(819, 1, '37.111.202.119', '2024-11-12 14:14:34', NULL, 'a', 1),
(820, 1, '36.255.81.223', '2024-11-12 14:52:45', NULL, 'a', 1),
(821, 1, '103.159.73.81', '2024-11-12 16:36:56', NULL, 'a', 1),
(822, 1, '51.252.199.198', '2024-11-12 19:30:03', NULL, 'a', 1),
(823, 1, '103.159.73.82', '2024-11-13 10:12:20', NULL, 'a', 1),
(824, 1, '202.134.13.137', '2024-11-13 10:55:58', NULL, 'a', 1),
(825, 1, '103.159.73.82', '2024-11-13 13:43:54', NULL, 'a', 1),
(826, 1, '51.252.203.142', '2024-11-14 01:24:26', NULL, 'a', 1),
(827, 1, '103.159.73.82', '2024-11-14 10:20:28', '2024-11-14 10:37:11', 'a', 1),
(828, 1, '103.159.73.82', '2024-11-14 10:51:55', NULL, 'a', 1),
(829, 21, '103.159.73.82', '2024-11-14 11:59:07', '2024-11-14 12:33:30', 'a', 14),
(830, 1, '103.159.73.82', '2024-11-14 12:33:42', NULL, 'a', 1),
(831, 1, '::1', '2024-11-22 18:29:47', '2024-11-22 22:16:52', 'a', 1),
(832, 1, '::1', '2024-11-22 22:16:57', '2024-11-22 23:26:56', 'a', 1),
(833, 1, '::1', '2024-11-22 23:26:59', '2024-11-22 23:42:19', 'a', 1),
(834, 1, '::1', '2024-11-22 23:45:29', '2024-11-22 23:45:31', 'a', 1),
(835, 1, '::1', '2024-11-22 23:45:37', '2024-11-22 23:45:39', 'a', 1),
(836, 1, '::1', '2024-11-22 23:46:08', NULL, 'a', 1),
(837, 1, '::1', '2024-11-22 23:47:28', '2024-11-22 23:47:32', 'a', 1),
(838, 1, '::1', '2024-11-22 23:54:03', '2024-11-22 23:54:37', 'a', 1),
(839, 1, '::1', '2024-11-22 23:54:40', '2024-11-22 23:54:59', 'a', 1),
(840, 1, '::1', '2024-11-23 00:08:24', '2024-11-23 00:09:34', 'a', 1),
(841, 1, '::1', '2024-11-23 00:09:40', '2024-11-23 00:10:01', 'a', 1),
(842, 1, '::1', '2024-11-23 00:10:04', '2024-11-23 00:10:08', 'a', 1),
(843, 1, '::1', '2024-11-23 00:11:24', '2024-11-23 01:33:07', 'a', 1),
(844, 1, '::1', '2024-11-23 01:35:46', NULL, 'a', 1),
(845, 1, '::1', '2024-11-24 00:17:13', '2024-11-24 00:23:40', 'a', 1),
(846, 1, '::1', '2024-11-24 00:23:47', '2024-11-24 00:23:50', 'a', 1),
(847, 1, '::1', '2024-11-24 00:23:55', '2024-11-24 00:23:59', 'a', 1),
(848, 1, '::1', '2024-11-24 00:24:32', '2024-11-24 00:24:37', 'a', 1),
(849, 1, '::1', '2024-11-24 00:24:42', '2024-11-24 00:24:45', 'a', 1),
(850, 1, '::1', '2024-11-24 00:31:03', '2024-11-24 00:48:38', 'a', 1),
(851, 1, '::1', '2024-11-28 23:07:30', '2024-11-28 23:44:25', 'a', 1),
(852, 1, '::1', '2024-11-29 00:12:15', '2024-11-29 00:43:07', 'a', 1),
(853, 1, '::1', '2024-11-29 16:37:08', '2024-11-29 16:39:31', 'a', 1),
(854, 1, '::1', '2024-11-29 17:01:01', '2024-11-29 17:01:06', 'a', 1),
(855, 1, '::1', '2024-11-29 17:02:37', '2024-11-29 17:02:40', 'a', 1),
(856, 1, '::1', '2024-11-29 17:08:02', '2024-11-29 17:08:41', 'a', 1),
(857, 1, '::1', '2024-11-29 17:08:46', '2024-11-29 17:09:09', 'a', 1),
(858, 1, '::1', '2024-11-29 17:09:11', '2024-11-29 17:09:18', 'a', 1),
(859, 1, '::1', '2024-11-29 17:09:42', '2024-11-29 17:15:31', 'a', 1),
(860, 1, '::1', '2024-11-29 17:15:35', '2024-11-29 22:06:07', 'a', 1),
(861, 1, '::1', '2024-11-29 22:07:28', NULL, 'a', 1),
(862, 1, '::1', '2024-11-29 22:53:59', '2024-11-30 02:05:14', 'a', 1),
(863, 1, '::1', '2024-11-30 02:05:19', '2024-11-30 02:07:15', 'a', 1),
(864, 1, '::1', '2024-11-30 02:07:19', '2024-11-30 02:07:23', 'a', 1),
(865, 1, '::1', '2024-11-30 02:07:42', '2024-11-30 02:12:14', 'a', 1),
(866, 1, '::1', '2024-12-01 23:10:51', NULL, 'a', 1),
(867, 1, '::1', '2024-12-02 22:38:41', NULL, 'a', 1),
(868, 1, '::1', '2025-02-07 21:32:50', '2025-02-07 21:33:49', 'a', 1),
(869, 1, '::1', '2025-02-07 21:33:52', '2025-02-07 23:42:26', 'a', 1),
(870, 1, '::1', '2025-02-14 21:09:16', NULL, 'a', 1),
(871, 1, '::1', '2025-02-15 12:47:26', '2025-02-16 00:59:08', 'a', 1),
(872, 1, '::1', '2025-02-18 01:06:51', NULL, 'a', 1),
(873, 1, '::1', '2025-02-21 23:03:46', NULL, 'a', 1),
(874, 1, '::1', '2025-02-22 21:32:44', NULL, 'a', 1),
(875, 1, '::1', '2025-02-22 22:14:13', NULL, 'a', 1),
(876, 1, '::1', '2025-03-07 15:02:38', NULL, 'a', 1),
(877, 1, '::1', '2025-03-30 17:26:14', '2025-03-30 22:58:58', 'a', 1),
(878, 1, '::1', '2025-03-31 22:32:51', NULL, 'a', 1),
(879, 1, '::1', '2025-04-01 19:47:21', '2025-04-01 22:13:27', 'a', 1),
(880, 1, '::1', '2025-04-01 22:15:04', NULL, 'a', 1),
(881, 1, '::1', '2025-04-02 22:49:30', NULL, 'a', 1),
(882, 1, '::1', '2025-04-25 18:10:56', NULL, 'a', 1),
(883, 1, '::1', '2025-04-25 18:37:09', '2025-04-25 21:33:52', 'a', 1),
(884, 1, '::1', '2025-04-25 21:33:55', NULL, 'a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_website_profile`
--

CREATE TABLE `tbl_website_profile` (
  `Website_SlNo` int(11) NOT NULL,
  `Website_Name` varchar(255) NOT NULL,
  `Website_Mobile` varchar(15) NOT NULL,
  `Website_Email` varchar(250) NOT NULL,
  `Software_Url` varchar(250) DEFAULT NULL,
  `Website_Address` text DEFAULT NULL,
  `Opening_Day` varchar(250) DEFAULT NULL,
  `Website_TagLine` text DEFAULT NULL,
  `Short_Details` text NOT NULL,
  `Facebook_Url` text DEFAULT NULL,
  `Instragram_Url` text DEFAULT NULL,
  `Youtube_Url` text DEFAULT NULL,
  `Header_Logo` varchar(255) DEFAULT NULL,
  `Footer_Logo` varchar(255) DEFAULT NULL,
  `Mobile_Logo` varchar(255) DEFAULT NULL,
  `Fav_Logo` varchar(255) DEFAULT NULL,
  `Developed_By` varchar(255) DEFAULT NULL,
  `Developer_Url` text DEFAULT NULL,
  `UpdateBy` varchar(100) DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `last_update_ip` varchar(45) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_website_profile`
--

INSERT INTO `tbl_website_profile` (`Website_SlNo`, `Website_Name`, `Website_Mobile`, `Website_Email`, `Software_Url`, `Website_Address`, `Opening_Day`, `Website_TagLine`, `Short_Details`, `Facebook_Url`, `Instragram_Url`, `Youtube_Url`, `Header_Logo`, `Footer_Logo`, `Mobile_Logo`, `Fav_Logo`, `Developed_By`, `Developer_Url`, `UpdateBy`, `UpdateTime`, `last_update_ip`, `branch_id`) VALUES
(1, 'SopnoJhuri', '01515674721', 'sopnojhuribd@gmail.com', 'http://localhost:85/', 'Mirpur-10, Dhaka', 'Saturday – Friday: 9AM to 10PM', 'Shop. Smile. Repeat.', 'SopnoJhuri – Explore a wide range of quality products, from essentials to unique finds, all in one place. Shop now and bring your dreams to life!', 'https://www.facebook.com/sopnojhuribd/', 'https://www.instagram.com/sopnojhuri/', 'https://www.youtube.com/@sopnojhuri', 'uploads/websites/772408_67b8afc6762c8.png', 'uploads/websites/570339_67b8afc676726.png', 'uploads/websites/994244_67b04e0416fbb.png', 'uploads/websites/808868_67b04e0418562.png', 'FARABiE IT', 'https://www.mlalonhossain.com', '1', '2025-04-25 21:34:55', '::1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  ADD PRIMARY KEY (`as_id`),
  ADD KEY `as_date` (`as_date`),
  ADD KEY `status` (`status`),
  ADD KEY `branchid` (`branch_id`);

--
-- Indexes for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_SiNo`),
  ADD KEY `status` (`status`),
  ADD KEY `brand_branchid` (`branch_id`);

--
-- Indexes for table `tbl_cash_transactions`
--
ALTER TABLE `tbl_cash_transactions`
  ADD PRIMARY KEY (`Tr_SlNo`),
  ADD KEY `Tr_SlNo` (`Tr_SlNo`),
  ADD KEY `Tr_Id` (`Tr_Id`),
  ADD KEY `Tr_date` (`Tr_date`),
  ADD KEY `Tr_Type` (`Tr_Type`),
  ADD KEY `Acc_SlID` (`Acc_SlID`),
  ADD KEY `status` (`status`),
  ADD KEY `Tr_branchid` (`branch_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`Category_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `category_branchid` (`branch_id`);

--
-- Indexes for table `tbl_cheque`
--
ALTER TABLE `tbl_cheque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `SM_id` (`SM_id`),
  ADD KEY `date` (`date`),
  ADD KEY `remid_date` (`remid_date`),
  ADD KEY `check_status` (`check_status`),
  ADD KEY `status` (`status`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_SiNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`Company_SlNo`),
  ADD KEY `print_type` (`print_type`),
  ADD KEY `company_BrunchId` (`branch_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`Country_SlNo`),
  ADD KEY `Status` (`status`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`Customer_SlNo`),
  ADD KEY `Customer_Code` (`Customer_Code`),
  ADD KEY `Customer_Mobile` (`Customer_Mobile`),
  ADD KEY `Customer_Type` (`Customer_Type`),
  ADD KEY `Country_SlNo` (`Country_SlNo`),
  ADD KEY `area_ID` (`area_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Customer_brunchid` (`branch_id`);

--
-- Indexes for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  ADD PRIMARY KEY (`CPayment_id`),
  ADD KEY `CPayment_date` (`CPayment_date`),
  ADD KEY `CPayment_invoice` (`CPayment_invoice`),
  ADD KEY `CPayment_customerID` (`CPayment_customerID`),
  ADD KEY `CPayment_TransactionType` (`CPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `CPayment_brunchid` (`branch_id`),
  ADD KEY `CPayment_status` (`status`);

--
-- Indexes for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  ADD PRIMARY KEY (`Damage_SlNo`),
  ADD KEY `Damage_InvoiceNo` (`Damage_InvoiceNo`),
  ADD KEY `Damage_Date` (`Damage_Date`),
  ADD KEY `status` (`status`),
  ADD KEY `Damage_brunchid` (`branch_id`);

--
-- Indexes for table `tbl_damage_details`
--
ALTER TABLE `tbl_damage_details`
  ADD PRIMARY KEY (`DamageDetails_SlNo`),
  ADD KEY `Damage_SlNo` (`Damage_SlNo`),
  ADD KEY `Product_SlNo` (`Product_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`Department_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`Designation_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`District_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`Employee_SlNo`),
  ADD KEY `Designation_ID` (`Designation_ID`),
  ADD KEY `Department_ID` (`Department_ID`),
  ADD KEY `Employee_ID` (`Employee_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Employee_brinchid` (`branch_id`);

--
-- Indexes for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_date` (`payment_date`),
  ADD KEY `month_id` (`month_id`),
  ADD KEY `status` (`status`),
  ADD KEY `paymentBranch_id` (`branch_id`),
  ADD KEY `saved_by` (`AddBy`);

--
-- Indexes for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `payment_id` (`payment_id`) USING BTREE,
  ADD KEY `employee_id` (`employee_id`) USING BTREE,
  ADD KEY `saved_by` (`AddBy`) USING BTREE;

--
-- Indexes for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  ADD PRIMARY KEY (`Acc_SlNo`),
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `Acc_Code` (`Acc_Code`) USING BTREE;

--
-- Indexes for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`AddBy`) USING BTREE,
  ADD KEY `account_id` (`account_id`) USING BTREE;

--
-- Indexes for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `save_date` (`save_date`),
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `transaction_date` (`transaction_date`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `status` (`status`),
  ADD KEY `saved_by` (`AddBy`) USING BTREE;

--
-- Indexes for table `tbl_month`
--
ALTER TABLE `tbl_month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `tbl_outlet`
--
ALTER TABLE `tbl_outlet`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`Product_SlNo`),
  ADD UNIQUE KEY `Product_Code` (`Product_Code`),
  ADD KEY `ProductCategory_ID` (`ProductCategory_ID`),
  ADD KEY `is_service` (`is_service`),
  ADD KEY `Unit_ID` (`Unit_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Product_branchid` (`branch_id`),
  ADD KEY `ProductSubCategory_ID` (`ProductSubCategory_ID`),
  ADD KEY `Color_ID` (`Color_ID`),
  ADD KEY `Brand_ID` (`Brand_ID`);

--
-- Indexes for table `tbl_product_gallery`
--
ALTER TABLE `tbl_product_gallery`
  ADD PRIMARY KEY (`Gallery_ID`),
  ADD KEY `status` (`status`),
  ADD KEY `Gallery_ID` (`Gallery_ID`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `tbl_product_inventory`
--
ALTER TABLE `tbl_product_inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transfer_from_quantity` (`transfer_from_quantity`),
  ADD KEY `transfer_to_quantity` (`transfer_to_quantity`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_purchase_details`
--
ALTER TABLE `tbl_purchase_details`
  ADD PRIMARY KEY (`PurchaseDetails_SlNo`),
  ADD KEY `PurchaseMaster_IDNo` (`PurchaseMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `PurchaseDetails_branchID` (`branch_id`);

--
-- Indexes for table `tbl_purchase_master`
--
ALTER TABLE `tbl_purchase_master`
  ADD PRIMARY KEY (`PurchaseMaster_SlNo`),
  ADD KEY `Supplier_SlNo` (`Supplier_SlNo`),
  ADD KEY `Employee_SlNo` (`Employee_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `PurchaseMaster_OrderDate` (`PurchaseMaster_OrderDate`),
  ADD KEY `status` (`status`),
  ADD KEY `PurchaseMaster_BranchID` (`branch_id`);

--
-- Indexes for table `tbl_purchase_return`
--
ALTER TABLE `tbl_purchase_return`
  ADD PRIMARY KEY (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseMaster_InvoiceNo` (`PurchaseMaster_InvoiceNo`),
  ADD KEY `Supplier_IDdNo` (`Supplier_IDdNo`),
  ADD KEY `PurchaseReturn_ReturnDate` (`PurchaseReturn_ReturnDate`),
  ADD KEY `Status` (`status`),
  ADD KEY `PurchaseReturn_brunchID` (`branch_id`);

--
-- Indexes for table `tbl_purchase_return_details`
--
ALTER TABLE `tbl_purchase_return_details`
  ADD PRIMARY KEY (`PurchaseReturnDetails_SlNo`),
  ADD KEY `PurchaseReturn_SlNo` (`PurchaseReturn_SlNo`),
  ADD KEY `PurchaseReturnDetailsProduct_SlNo` (`PurchaseReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `PurchaseReturnDetails_brachid` (`branch_id`);

--
-- Indexes for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleDetails_BranchId` (`branch_id`);

--
-- Indexes for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleMaster_branchid` (`branch_id`);

--
-- Indexes for table `tbl_sale_details`
--
ALTER TABLE `tbl_sale_details`
  ADD PRIMARY KEY (`SaleDetails_SlNo`),
  ADD KEY `SaleMaster_IDNo` (`SaleMaster_IDNo`),
  ADD KEY `Product_IDNo` (`Product_IDNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleDetails_BranchId` (`branch_id`);

--
-- Indexes for table `tbl_sale_master`
--
ALTER TABLE `tbl_sale_master`
  ADD PRIMARY KEY (`SaleMaster_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SalseCustomer_IDNo` (`SalseCustomer_IDNo`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `SaleMaster_SaleDate` (`SaleMaster_SaleDate`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleMaster_branchid` (`branch_id`);

--
-- Indexes for table `tbl_sale_return`
--
ALTER TABLE `tbl_sale_return`
  ADD PRIMARY KEY (`SaleReturn_SlNo`),
  ADD KEY `SaleMaster_InvoiceNo` (`SaleMaster_InvoiceNo`),
  ADD KEY `SaleReturn_ReturnDate` (`SaleReturn_ReturnDate`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleReturn_brunchId` (`branch_id`);

--
-- Indexes for table `tbl_sale_return_details`
--
ALTER TABLE `tbl_sale_return_details`
  ADD PRIMARY KEY (`SaleReturnDetails_SlNo`),
  ADD KEY `SaleReturn_IdNo` (`SaleReturn_IdNo`),
  ADD KEY `SaleReturnDetailsProduct_SlNo` (`SaleReturnDetailsProduct_SlNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `SaleReturnDetails_brunchID` (`branch_id`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`SubCategory_SlNo`),
  ADD KEY `status` (`status`),
  ADD KEY `category_branchid` (`branch_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`Supplier_SlNo`),
  ADD KEY `Supplier_Code` (`Supplier_Code`),
  ADD KEY `Supplier_Mobile` (`Supplier_Mobile`),
  ADD KEY `District_SlNo` (`District_SlNo`),
  ADD KEY `Status` (`status`),
  ADD KEY `Supplier_brinchid` (`branch_id`);

--
-- Indexes for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  ADD PRIMARY KEY (`SPayment_id`),
  ADD KEY `SPayment_date` (`SPayment_date`),
  ADD KEY `SPayment_invoice` (`SPayment_invoice`),
  ADD KEY `SPayment_customerID` (`SPayment_customerID`),
  ADD KEY `SPayment_TransactionType` (`SPayment_TransactionType`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `SPayment_brunchid` (`branch_id`),
  ADD KEY `SPayment_status` (`status`);

--
-- Indexes for table `tbl_transfer_details`
--
ALTER TABLE `tbl_transfer_details`
  ADD PRIMARY KEY (`transferdetails_id`),
  ADD KEY `transfer_id` (`transfer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tbl_transfer_master`
--
ALTER TABLE `tbl_transfer_master`
  ADD PRIMARY KEY (`transfer_id`),
  ADD KEY `transfer_date` (`transfer_date`),
  ADD KEY `transfer_from` (`transfer_from`),
  ADD KEY `transfer_to` (`transfer_to`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`Unit_SlNo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`User_SlNo`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `User_Name` (`User_Name`),
  ADD KEY `User_Password` (`User_Password`),
  ADD KEY `UserType` (`UserType`),
  ADD KEY `status` (`status`),
  ADD KEY `Brunch_ID` (`branch_id`);

--
-- Indexes for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `tbl_website_profile`
--
ALTER TABLE `tbl_website_profile`
  ADD PRIMARY KEY (`Website_SlNo`),
  ADD KEY `branch_id` (`branch_id`) USING BTREE,
  ADD KEY `Website_SlNo` (`Website_SlNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_assets`
--
ALTER TABLE `tbl_assets`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_accounts`
--
ALTER TABLE `tbl_bank_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_transactions`
--
ALTER TABLE `tbl_bank_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_SiNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cash_transactions`
--
ALTER TABLE `tbl_cash_transactions`
  MODIFY `Tr_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `Category_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_cheque`
--
ALTER TABLE `tbl_cheque`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_SiNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `Company_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `Country_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `Customer_SlNo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_payment`
--
ALTER TABLE `tbl_customer_payment`
  MODIFY `CPayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_damage`
--
ALTER TABLE `tbl_damage`
  MODIFY `Damage_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_damage_details`
--
ALTER TABLE `tbl_damage_details`
  MODIFY `DamageDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `Department_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `Designation_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `District_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `Employee_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_employee_payment`
--
ALTER TABLE `tbl_employee_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_employee_payment_details`
--
ALTER TABLE `tbl_employee_payment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_expense_head`
--
ALTER TABLE `tbl_expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_investment_account`
--
ALTER TABLE `tbl_investment_account`
  MODIFY `Acc_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_investment_transactions`
--
ALTER TABLE `tbl_investment_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_loan_accounts`
--
ALTER TABLE `tbl_loan_accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_loan_transactions`
--
ALTER TABLE `tbl_loan_transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_month`
--
ALTER TABLE `tbl_month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_outlet`
--
ALTER TABLE `tbl_outlet`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `Product_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tbl_product_gallery`
--
ALTER TABLE `tbl_product_gallery`
  MODIFY `Gallery_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product_inventory`
--
ALTER TABLE `tbl_product_inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_purchase_details`
--
ALTER TABLE `tbl_purchase_details`
  MODIFY `PurchaseDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `tbl_purchase_master`
--
ALTER TABLE `tbl_purchase_master`
  MODIFY `PurchaseMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tbl_purchase_return`
--
ALTER TABLE `tbl_purchase_return`
  MODIFY `PurchaseReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_purchase_return_details`
--
ALTER TABLE `tbl_purchase_return_details`
  MODIFY `PurchaseReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_quotation_details`
--
ALTER TABLE `tbl_quotation_details`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_quotation_master`
--
ALTER TABLE `tbl_quotation_master`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_sale_details`
--
ALTER TABLE `tbl_sale_details`
  MODIFY `SaleDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `tbl_sale_master`
--
ALTER TABLE `tbl_sale_master`
  MODIFY `SaleMaster_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `tbl_sale_return`
--
ALTER TABLE `tbl_sale_return`
  MODIFY `SaleReturn_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_sale_return_details`
--
ALTER TABLE `tbl_sale_return_details`
  MODIFY `SaleReturnDetails_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `SubCategory_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `Supplier_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_supplier_payment`
--
ALTER TABLE `tbl_supplier_payment`
  MODIFY `SPayment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_transfer_details`
--
ALTER TABLE `tbl_transfer_details`
  MODIFY `transferdetails_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_transfer_master`
--
ALTER TABLE `tbl_transfer_master`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `Unit_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `User_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user_activity`
--
ALTER TABLE `tbl_user_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- AUTO_INCREMENT for table `tbl_website_profile`
--
ALTER TABLE `tbl_website_profile`
  MODIFY `Website_SlNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
