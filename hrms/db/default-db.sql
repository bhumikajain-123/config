-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2024 at 12:40 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_ams_ihrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_docs_status_list`
--

CREATE TABLE `indoadmin` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('superadmin','admin','Joined','Offered','Resign','OfferRejected','assets','salary','Pending') COLLATE utf8_unicode_ci NOT NULL,
  `verticalHead` enum('all','College Sales','corporate training','IT manpower','telecom manpower','corporate office','enterprise','assets','salary','none') COLLATE utf8_unicode_ci DEFAULT 'none',
  `company` set('all','Indovision Service Pvt Ltd','Indovision Consultancy Pvt Ltd','samsung','vodafone','none') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firebase_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_app` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 -> Allow, 0 -> Disallow',
  `resetKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imei_number` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_detail` text COLLATE utf8_unicode_ci,
  `version_name` float DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=yes,0=no',
  `last_login` datetime DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `indoadmin`
--

INSERT INTO `indoadmin` (`id`, `indo_code`, `user_type`, `verticalHead`, `company`, `username`, `password`, `fullName`, `emailid`, `mobile_number`, `api_key`, `firebase_token`, `allow_app`, `resetKey`, `imei_number`, `device_detail`, `version_name`, `force_logout`, `last_login`, `update_datetime`, `update_by`) VALUES
(6366, 'SUP001', 'superadmin', 'none', 'none', 'ivsdevteam', '2d108c43299ec5f32b30aebd010c37b8', 'IVS Dev Team', 'ivsdevmail@gmail.com', '9958845564', 'ivsdevteam', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);



CREATE TABLE `all_docs_status_list` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` tinyint(1) DEFAULT NULL,
  `pancard` tinyint(1) DEFAULT NULL,
  `aadharcard` tinyint(1) DEFAULT NULL,
  `passport` tinyint(1) DEFAULT NULL,
  `passport_back` tinyint(1) DEFAULT NULL,
  `esicdoc` tinyint(1) DEFAULT NULL,
  `mediclaimdoc` tinyint(1) DEFAULT NULL,
  `certificate` tinyint(1) DEFAULT NULL,
  `emp_1oth_marksheet` tinyint(1) DEFAULT NULL,
  `emp_10th_certificate` tinyint(1) DEFAULT NULL,
  `emp_12th_Marksheet` tinyint(1) DEFAULT NULL,
  `emp_12th_certificate` tinyint(1) DEFAULT NULL,
  `gradu_1st` tinyint(1) DEFAULT NULL,
  `gradu_2nd` tinyint(1) DEFAULT NULL,
  `gradu_3rd` tinyint(1) DEFAULT NULL,
  `gradu_4th` tinyint(1) DEFAULT NULL,
  `gradu_5th` tinyint(1) DEFAULT NULL,
  `gradu_6th` tinyint(1) DEFAULT NULL,
  `gradu_7th` tinyint(1) DEFAULT NULL,
  `gradu_8th` tinyint(1) DEFAULT NULL,
  `graduateCertificate` tinyint(1) DEFAULT NULL,
  `postGradu_1st` tinyint(1) DEFAULT NULL,
  `postGradu_2nd` tinyint(1) DEFAULT NULL,
  `postGradu_3rd` tinyint(1) DEFAULT NULL,
  `postGradu_4th` tinyint(1) DEFAULT NULL,
  `postGradu_5th` tinyint(1) DEFAULT NULL,
  `postGradu_6th` tinyint(1) DEFAULT NULL,
  `postGradu_7th` tinyint(1) DEFAULT NULL,
  `postGradu_8th` tinyint(1) DEFAULT NULL,
  `postgradCertificate` tinyint(1) DEFAULT NULL,
  `appointment` tinyint(1) DEFAULT NULL,
  `salarySlip` tinyint(1) DEFAULT NULL,
  `releavingLetter` tinyint(1) DEFAULT NULL,
  `prevAppLetter` tinyint(1) DEFAULT NULL,
  `prevSalSlip` tinyint(1) DEFAULT NULL,
  `prevReleavLetter` tinyint(1) DEFAULT NULL,
  `cancelCheque` tinyint(1) DEFAULT NULL,
  `passbook` tinyint(1) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mailStatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_info`
--

CREATE TABLE `assets_info` (
  `aid` int(11) NOT NULL,
  `company_id` int(11) NOT NULL COMMENT 'use primary of master_companies_info',
  `projectName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ssitCode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `asseType` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `assetName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `serialNo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `assetOwner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `assetValue` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('assigned','pending','rejected','Inventory','disabled','Sold Out') COLLATE utf8_unicode_ci NOT NULL,
  `asset_condition` enum('Working','Not Working') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Working',
  `disableReason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disableRemarks` text COLLATE utf8_unicode_ci NOT NULL,
  `attachMail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disableDate` date NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_location`
--

CREATE TABLE `assets_location` (
  `id` int(11) NOT NULL,
  `fk_warehouse_id` int(11) DEFAULT NULL,
  `fk_asset_id` int(11) NOT NULL,
  `action` enum('Asset In','Asset Out','Return Request Rejected') COLLATE utf8_unicode_ci NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_order_info`
--

CREATE TABLE `assets_order_info` (
  `ao_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL COMMENT 'use primary of master_companies_info',
  `asseType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `projectName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `doneby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordercompletion_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `completemarkedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_users_info`
--

CREATE TABLE `assets_users_info` (
  `au_id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userEmailid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userContactNum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_user_location` longtext COLLATE utf8_unicode_ci COMMENT 'It is location of asset where given to user',
  `remarks` text COLLATE utf8_unicode_ci,
  `user_acceptance` date DEFAULT NULL COMMENT 'If null, user has not accepted and if date , user has accepted',
  `user_acceptance_mail_count` int(11) NOT NULL DEFAULT '0',
  `assign_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assignDate` date DEFAULT NULL,
  `releaseRequestDate` date DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `releaseNote` text COLLATE utf8_unicode_ci,
  `receiver_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approvedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets_view`
--

CREATE TABLE `assets_view` (
  `au_id` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `indo_code` varchar(50) DEFAULT NULL,
  `userEmailid` varchar(255) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `asset_user_location` longtext,
  `assignDate` date DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `releaseRequestDate` date DEFAULT NULL,
  `user_acceptance` date DEFAULT NULL,
  `user_acceptance_mail_count` int(11) DEFAULT NULL,
  `projectName` varchar(255) DEFAULT NULL,
  `asseType` varchar(100) DEFAULT NULL,
  `ssitCode` varchar(100) DEFAULT NULL,
  `assetName` varchar(100) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `serialNo` varchar(100) DEFAULT NULL,
  `assetOwner` varchar(100) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `asset_condition` varchar(11) DEFAULT NULL,
  `disableDate` date DEFAULT NULL,
  `disableReason` varchar(255) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `description` mediumtext,
  `create_by` varchar(50) DEFAULT NULL,
  `asset_user_company_id` int(11) DEFAULT NULL,
  `empType` enum('Joined','Offered','OfferRejected','Pending','Resign','disabled') DEFAULT NULL,
  `visible_indo_code` varchar(50) DEFAULT NULL,
  `base_location` varchar(255) DEFAULT NULL,
  `asset_type_name` varchar(255) DEFAULT NULL,
  `asset_company_name` varchar(255) DEFAULT NULL,
  `asset_user_company_name` varchar(255) DEFAULT NULL,
  `warehouse_name` varchar(255) DEFAULT NULL,
  `warehouse_address` tinytext,
  `circle_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asset_specification_data`
--

CREATE TABLE `asset_specification_data` (
  `id` int(11) NOT NULL,
  `fk_asset_id` int(20) NOT NULL,
  `fk_asset_specidifcation_label_id` int(20) NOT NULL,
  `data` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_specification_labels`
--

CREATE TABLE `asset_specification_labels` (
  `id` int(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_asset_type_id` int(11) NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_settings`
--

CREATE TABLE `attendance_settings` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attendance_marker` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL,
  `create_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bta_btr`
--

CREATE TABLE `bta_btr` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_bta_id` int(11) DEFAULT NULL,
  `trip_report` text COLLATE utf8_unicode_ci,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `action_datetime` datetime DEFAULT NULL,
  `action_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_remark` tinytext COLLATE utf8_unicode_ci,
  `fk_status_id` int(11) DEFAULT NULL COMMENT 'id from rom_master_expense_status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bta_settings`
--

CREATE TABLE `bta_settings` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `setting_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_pms_cycle`
--

CREATE TABLE `child_pms_cycle` (
  `child_cycle_id` int(11) NOT NULL,
  `parent_cycle_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `cycle_start_date` date NOT NULL,
  `cycle_end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=draft,1=publish,2=active,3=completed,4=appraisal	',
  `default_approvers` tinyint(1) NOT NULL COMMENT '0=Not Gen , 1=Gen ',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clra_documents`
--

CREATE TABLE `clra_documents` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Form A','Form B','Form C','Form D','Clearance Mail','Clearance Excel') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clra_documents_v2`
--

CREATE TABLE `clra_documents_v2` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Form A','Form B','Form C','Form D','Clearance Mail','Clearance Excel') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cntrct_ms_contract`
--

CREATE TABLE `cntrct_ms_contract` (
  `id` int(10) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'C-''created_year''\r\n/(3 letters of 	empIdPrefix)(mc_id)(table: master_companies_info)\r\n/abbr(cntrct_ms_third_party)(PRV => private)\r\n/serial_no.(starting from year)',
  `fk_company_id` int(11) NOT NULL COMMENT 'mc_id of table master_companies_info	',
  `fk_third_party_id` int(11) DEFAULT NULL COMMENT 'unique_id from cntrct_ms_master_third_party',
  `fk_projects_id` int(11) DEFAULT NULL COMMENT 'unique_id from cntrct_ms_master_projects',
  `fk_category_id` int(11) DEFAULT NULL COMMENT 'unique_id from cntrct_ms_master_category',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_ref_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `emails` text COLLATE utf8_unicode_ci NOT NULL,
  `sms_mobile` text COLLATE utf8_unicode_ci,
  `reminder` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'before 1month\r\n{1: daily,\r\n2: weekly,\r\n3: once,}\r\nafter 1 month{\r\n4: daily,\r\n5: weekly,\r\n6: once,}\r\n',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(10) DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '0: expired, \r\n1: open, \r\n2:renewed, \r\n3: closed',
  `history_date` date DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>not in log; 0=>in log	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cntrct_ms_master_category`
--

CREATE TABLE `cntrct_ms_master_category` (
  `id` int(30) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_company_id` int(11) NOT NULL COMMENT 'mc_id of table master_companies_info',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>Active; 0=>Inactive',
  `log_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>not in log; 0=>in log'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cntrct_ms_master_projects`
--

CREATE TABLE `cntrct_ms_master_projects` (
  `id` int(30) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_company_id` int(11) NOT NULL COMMENT 'mc_id of table master_companies_info',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>Active; 0=>Inactive',
  `log_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>not in log; 0=>in log'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cntrct_ms_master_third_party`
--

CREATE TABLE `cntrct_ms_master_third_party` (
  `id` int(30) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_company_id` int(11) NOT NULL COMMENT 'mc_id of table master_companies_info',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `abbr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_mobile_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>Active; 0=>Inactive',
  `log_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>not in log; 0=>in log'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `code_errors_log`
--

CREATE TABLE `code_errors_log` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `message` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `line_number` int(11) NOT NULL,
  `context` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=not resolved,1=resolved',
  `faced_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `resolved_by` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `close_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `close_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `close_datetime` datetime NOT NULL,
  `resolved_datetime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies_ihrms_modules`
--

CREATE TABLE `companies_ihrms_modules` (
  `id` int(11) NOT NULL,
  `fk_agency_id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL COMMENT 'id from ihrms_modules table',
  `days_limit` int(11) DEFAULT NULL COMMENT 'E.g Apply Expense Days Limit, Leave Apply Days Limit',
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Keep record of active modules for a agency/company.';

-- --------------------------------------------------------

--
-- Table structure for table `companies_leavesquota_settings`
--

CREATE TABLE `companies_leavesquota_settings` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `add_type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL COMMENT '0=will add manually,1=will add automatically',
  `yearly_leaves` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'will in array format $leaveid=>leave',
  `add_interval` enum('1','2','3','4') COLLATE utf8_unicode_ci NOT NULL COMMENT '1=monthly,2=quarterly,3=half yearly,4=yearly',
  `credit_type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL COMMENT '0=In the starting of interval,1=In the end of interval',
  `start_month` int(11) DEFAULT NULL,
  `end_month` int(11) DEFAULT NULL,
  `rh_status` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `rh_quota` float DEFAULT NULL,
  `leave_notify_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies_policies_info`
--

CREATE TABLE `companies_policies_info` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `policy_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=not deleted,0=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies_work_shift`
--

CREATE TABLE `companies_work_shift` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `shift_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Not default, 1=Default',
  `from_time` time NOT NULL,
  `to_time` time NOT NULL,
  `allow_late_minutes` int(11) NOT NULL,
  `allow_late_days` int(11) NOT NULL,
  `day_q1_time` time NOT NULL,
  `day_q1_deduction` float NOT NULL,
  `day_q2_time` time NOT NULL,
  `day_q2_deduction` float NOT NULL,
  `day_q3_time` time NOT NULL,
  `day_q3_deduction` float NOT NULL,
  `day_q4_time` time NOT NULL,
  `day_q4_deduction` float NOT NULL,
  `attendance_deduction_days` float NOT NULL,
  `attendance_deduction_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 = every day,2 = Group Late Days',
  `group_days` int(11) NOT NULL,
  `deduction_settings` int(11) NOT NULL COMMENT '1=optional,2=mandatory',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companywise_salary_breakup`
--

CREATE TABLE `companywise_salary_breakup` (
  `breakup_Id` int(11) NOT NULL,
  `template_Id` int(11) NOT NULL,
  `breakup_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breakup_Status` enum('formula','fixed','percentage') COLLATE utf8_unicode_ci NOT NULL,
  `fixed_Value` int(11) NOT NULL,
  `formula_Value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage_Value` float NOT NULL,
  `dependent_Field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breakup_Type` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_By` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_attendance_register`
--

CREATE TABLE `compliance_attendance_register` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `month` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `emp_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_outpar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `position_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `new_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `workman_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_or_husband_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relay_or_set_work_circle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `in_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `out_time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `date_01` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_02` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_03` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_04` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_05` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_06` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_07` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_08` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_09` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_10` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_11` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_12` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_13` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_14` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_15` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_16` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_17` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_18` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_19` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_20` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_21` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_22` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_23` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_24` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_25` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_26` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_27` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_28` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_29` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_30` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_31` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holidays` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `days_summary` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hours` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `register_keeper_signature` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_groups`
--

CREATE TABLE `compliance_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_group_type_id` int(11) DEFAULT NULL COMMENT '(id from compliance_group_types)',
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_group_companies`
--

CREATE TABLE `compliance_group_companies` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) DEFAULT NULL COMMENT '(id from compliance_groups)',
  `fk_company_id` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_group_types`
--

CREATE TABLE `compliance_group_types` (
  `id` int(11) NOT NULL,
  `group_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_loan_recoveries_register`
--

CREATE TABLE `compliance_loan_recoveries_register` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `recovery_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `particulars` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `date_of_damage` date NOT NULL,
  `amount` int(11) NOT NULL,
  `whether_show_cause_issued` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `explanation_heard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_installments` int(11) NOT NULL,
  `first_month_year` date NOT NULL,
  `last_month_year` date NOT NULL,
  `complete_recovery_date` date NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_wages_register`
--

CREATE TABLE `compliance_wages_register` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `emp_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_outpar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `workman_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `workmen_register_id` int(11) NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `esic_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uan_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wages_rate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `worked_days` int(11) NOT NULL,
  `work_units` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_hours` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `basic` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `special_allowances` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `basic_arrear` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `daily_allowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_payment` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hra` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `conveyance_allowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bonus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `medical` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lta` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `others` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `arrear_salary` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `provident_fund` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `arrear_pf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `esic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `society` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pt_tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lwf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `income_tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `insurance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arrear_salary_deduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `other_deductions_if_any` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `others_total_deduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recoveries` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_deduction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net_payment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `employer_pf` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `employee_bank_transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` date NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` date NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compliance_workmen_register`
--

CREATE TABLE `compliance_workmen_register` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `emp_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fcm_outpar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `workman_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `workman_surname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `fathers_or_spouse_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `local_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `education_level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `category_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `employment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `uan_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pan_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `esic_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lwf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aadhaar_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_ifsc_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_book_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exit_date` date DEFAULT NULL,
  `exit_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identification_mark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `signature` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cronjobs_execution_time`
--

CREATE TABLE `cronjobs_execution_time` (
  `id` int(11) NOT NULL,
  `cronjob_name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cronjobs_info`
--

CREATE TABLE `cronjobs_info` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `cc_mails` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `start_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_report_settings`
--

CREATE TABLE `dashboard_report_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_company_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `emails` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emails_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_frequency` enum('daily','weekly','monthly') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'daily',
  `day` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_history`
--

CREATE TABLE `data_history` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data_before_update` text COLLATE utf8_unicode_ci NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_achievements`
--

CREATE TABLE `emp_achievements` (
  `achievement_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `uploaded_certificate` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Active,1=De-Active',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `approve_status` tinyint(1) NOT NULL COMMENT '0=Not-Approve,1=Approve',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_adminmenus_info`
--

CREATE TABLE `emp_adminmenus_info` (
  `am_id` int(11) NOT NULL,
  `adm_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `recruiter_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `m_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is related to emp_menus_info table',
  `agencyid` int(11) NOT NULL COMMENT 'This is the ma_id from master_agencies_info table',
  `company_id` text COLLATE utf8_unicode_ci COMMENT 'This is related to master_companies_info table',
  `department_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'This is related to master_departments_info table',
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_appraisal_info`
--

CREATE TABLE `emp_appraisal_info` (
  `appraisal_id` int(11) NOT NULL,
  `fk_child_pms_id` int(11) NOT NULL,
  `indo_code` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `self_appraisal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `self_appraisal_description` text COLLATE utf8_unicode_ci NOT NULL,
  `manager_appraisal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manager_appraisal_description` text COLLATE utf8_unicode_ci NOT NULL,
  `hr_appraisal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `manager_submit_status` tinyint(1) NOT NULL COMMENT '0=Not Submit,1=Submit',
  `status` tinyint(1) NOT NULL COMMENT '0=Not Approved,1=Approved',
  `submit_status` int(11) NOT NULL COMMENT '1=submit,0=Not submit',
  `increment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `increment_percentage` int(11) NOT NULL,
  `created_by` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_arrearsalary_info`
--

CREATE TABLE `emp_arrearsalary_info` (
  `sl_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salary_month` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Arrear due month',
  `paid_month` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Month in which arrear is paid',
  `category` enum('abe','fcm','outpar','other') COLLATE utf8_unicode_ci NOT NULL,
  `attendance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `arr_days` int(11) NOT NULL COMMENT 'arrear days',
  `holdDays` int(11) NOT NULL,
  `leave_sanction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leave_without_pay` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `daily_allowance` int(11) DEFAULT NULL,
  `hra` int(11) NOT NULL,
  `cca` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `conveyance_allowance` int(11) NOT NULL,
  `books_periodicals` int(11) DEFAULT NULL,
  `washing_allowance` int(11) NOT NULL,
  `food_allowance` int(11) DEFAULT NULL,
  `vehicle_remb` int(11) DEFAULT NULL,
  `other_allowance` int(11) DEFAULT NULL,
  `mobile_allowance` int(11) DEFAULT NULL,
  `LTA` int(11) DEFAULT NULL,
  `specialAllowance` int(11) DEFAULT NULL,
  `lwa` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) DEFAULT NULL,
  `attendance_bonus` int(11) DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL,
  `cityCompensatoryAllowance` int(11) NOT NULL,
  `variable_allowance` int(11) DEFAULT NULL,
  `laptopRent` int(11) NOT NULL,
  `laptop_security` int(11) DEFAULT NULL,
  `tkRent` int(11) DEFAULT NULL COMMENT 'toolkit rent',
  `sktRent` int(11) DEFAULT NULL COMMENT 'safety kit rent',
  `arr_basic` int(11) DEFAULT NULL,
  `arr_daily_allowance` float DEFAULT NULL,
  `arr_hra` int(11) DEFAULT NULL,
  `arr_cca` int(11) DEFAULT NULL,
  `arr_variable_allowance` int(11) DEFAULT NULL,
  `arr_coneyance` int(11) DEFAULT NULL,
  `arr_books_periodicals` int(11) DEFAULT NULL,
  `arr_washing_allowance` int(11) DEFAULT NULL,
  `arr_food_allowance` int(11) DEFAULT NULL,
  `arr_vehicle_remb` int(11) NOT NULL,
  `arr_other_allowance` int(11) NOT NULL,
  `arr_mobile_allowance` int(11) NOT NULL,
  `arr_spl_allowance` int(11) NOT NULL,
  `arr_lwa` int(11) DEFAULT NULL,
  `arr_lta` int(11) NOT NULL,
  `arr_bonus` int(11) NOT NULL,
  `arr_overtime` int(11) DEFAULT NULL,
  `arr_laptop_charges` int(11) NOT NULL,
  `arr_toolkit_charges` int(11) NOT NULL,
  `arr_safetykit_charges` int(11) NOT NULL,
  `arr_medical` int(11) NOT NULL,
  `arr_pf` int(11) NOT NULL,
  `arr_esic` int(11) NOT NULL,
  `arrear_employer_pf` int(11) DEFAULT NULL,
  `arrear_employer_pf_admin_charges` int(11) DEFAULT NULL,
  `arrear_employer_esic` int(11) NOT NULL,
  `arrear_lwf` int(11) NOT NULL,
  `arrear_employer_lwf` int(11) DEFAULT NULL,
  `actual_gross` int(11) NOT NULL,
  `emp_provident_fund` int(11) NOT NULL,
  `esic` int(11) NOT NULL,
  `professional_tax` int(11) DEFAULT NULL,
  `income_tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `income_tax_calculated` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=IT calculated,0=IT not calculated',
  `LWF` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mediclaim` int(11) DEFAULT NULL,
  `canteen` int(11) NOT NULL DEFAULT '0',
  `uniform` int(11) DEFAULT NULL,
  `admin_charges` int(11) DEFAULT NULL,
  `food_lodging` int(11) DEFAULT NULL,
  `transportation_charges` float(10,2) DEFAULT NULL,
  `arrear_food_lodging` int(11) DEFAULT NULL,
  `transaction_charge` int(11) DEFAULT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `other_deduction` int(11) DEFAULT NULL,
  `total_deduction` int(11) NOT NULL,
  `hold_salary` int(11) NOT NULL,
  `monthly_net` int(11) NOT NULL,
  `paid_salary` int(11) DEFAULT NULL,
  `monthly_net_before_IT` int(11) DEFAULT NULL,
  `employer_providentFund` int(11) DEFAULT NULL,
  `employer_pf_admin_charges` int(11) DEFAULT NULL,
  `employer_ESIC` int(11) DEFAULT NULL,
  `employer_lwf` int(11) DEFAULT '0',
  `employer_total_deduction` int(11) DEFAULT NULL,
  `gratuity` float(9,2) DEFAULT NULL,
  `monthly_ctc` int(11) DEFAULT NULL,
  `invoice` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_cal_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','confirmed','hold','Arrear Paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_arrear_attendance`
--

CREATE TABLE `emp_arrear_attendance` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `attendance_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_01` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_02` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_03` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_04` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_05` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_06` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_07` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_08` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_09` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_10` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_11` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_12` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_13` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_14` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_15` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_16` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_17` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_18` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_19` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_20` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_21` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_22` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_23` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_24` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_25` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_26` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_27` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_28` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_29` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_30` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_31` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_present_days` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_approved_leaves` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_lwp` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_absent` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_CL` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `total_SL` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'SL = Sick Leave',
  `total_EL` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `total_OD` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'OD =  Business Leave',
  `total_CO` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'CO = comp off',
  `total_weekoff` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `total_P` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'total present days only',
  `total_holidays` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=draft,1=locked',
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance_image_permission`
--

CREATE TABLE `emp_attendance_image_permission` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `manual_attendance` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `permission` int(11) NOT NULL DEFAULT '0' COMMENT '1 => Allowed, 0 => Denied',
  `image_store_option` int(11) DEFAULT '0' COMMENT '0=> Denied,1=>ALL, 2 => First & Last ',
  `update_date` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance_info`
--

CREATE TABLE `emp_attendance_info` (
  `sa_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joining_status` tinyint(1) NOT NULL,
  `positioncode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `newcode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preAttendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `finalpreattendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `predifference` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `from1to20of_lastmonth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `from1to20of_currentmonth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currentattendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currentBillableDays` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `salary_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_status` tinyint(1) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_auto_geo_log`
--

CREATE TABLE `emp_auto_geo_log` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_time` datetime NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL COMMENT '1 => OK, 2=> GPS OFF, 3=> No Internet',
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_bankdetails_info`
--

CREATE TABLE `emp_bankdetails_info` (
  `bid` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankAddress` text COLLATE utf8_unicode_ci,
  `accountHolderName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accountNumber` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancelCheque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passbook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infoCompleted` tinyint(1) DEFAULT '0',
  `updateDatesAr` text COLLATE utf8_unicode_ci,
  `updateUsersAr` text COLLATE utf8_unicode_ci,
  `lastUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_blacklist`
--

CREATE TABLE `emp_blacklist` (
  `id` int(11) NOT NULL,
  `emp_code` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pancard_number` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci,
  `company_id` int(11) DEFAULT NULL,
  `blacklisted_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blacklisted_date` datetime NOT NULL,
  `unblock_reason` text COLLATE utf8_unicode_ci,
  `unblocked_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unblock_date` datetime NOT NULL,
  `create_datetime` datetime NOT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('blacklist','unblock') COLLATE utf8_unicode_ci DEFAULT 'blacklist'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_blacklisted_mails`
--

CREATE TABLE `emp_blacklisted_mails` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_compoff_info`
--

CREATE TABLE `emp_compoff_info` (
  `compoff_id` int(11) NOT NULL,
  `indo_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `compoff_date` date DEFAULT NULL,
  `comments` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `manager_emailid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `managerRemark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `applydatetime` datetime NOT NULL,
  `applyby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approveddate` datetime NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_contract_probation_logs`
--

CREATE TABLE `emp_contract_probation_logs` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `extended_days` int(11) DEFAULT NULL,
  `letter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_ctcdetails_info`
--

CREATE TABLE `emp_ctcdetails_info` (
  `ctc_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stateName` int(11) DEFAULT '1' COMMENT 'id from master_circles_info table ',
  `category` enum('ABE','fcm','outpar','other','contract') COLLATE utf8_unicode_ci DEFAULT NULL,
  `skill_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basic` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daily_allowance` float DEFAULT NULL,
  `hra` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laptopOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `laptopRent` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `lapSecurityIns` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lapSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lapsecurityDedcution` tinyint(1) DEFAULT NULL,
  `tkOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `tkRent` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tkSecurityIns` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tkSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tksecurityDedcution` tinyint(1) DEFAULT NULL,
  `sktOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `sktRent` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sktSecurityIns` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sktSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sktsecurityDedcution` tinyint(1) DEFAULT NULL,
  `mobileOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `mobileRent` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileSecurityIns` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilesecurityDedcution` tinyint(1) DEFAULT NULL,
  `conveyance_allowance` float DEFAULT NULL,
  `books_periodicals` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `washing_allowance` float DEFAULT NULL,
  `food_allowance` float DEFAULT NULL,
  `transportation_charges` float(10,2) DEFAULT NULL,
  `vehicle_remb` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_allowance` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bonus` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attendance_bonus` float DEFAULT NULL,
  `cityCompensatoryAllowance` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `medical_allowance` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_allowance` float DEFAULT NULL,
  `Lta` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialAllowance` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `lwa` float NOT NULL DEFAULT '0',
  `gross_salary` float DEFAULT NULL,
  `lwf` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ESIC` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `mediclaim` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `canteen` float NOT NULL DEFAULT '0',
  `uniform` float DEFAULT NULL,
  `emp_provident_fund` float DEFAULT NULL,
  `PF_flag` tinyint(1) DEFAULT NULL COMMENT '0=Fixed , 1=variable,2=new fixed,3=new variable',
  `professional_tax` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `transaction_charge` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `tds` float DEFAULT NULL,
  `other_deduction` float DEFAULT NULL,
  `admin_charges` float DEFAULT NULL,
  `netSalary` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employer_ESIC` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `employer_lwf` float DEFAULT '0',
  `employer_providentFund` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_encashment` float DEFAULT NULL,
  `gratuity` int(11) DEFAULT NULL,
  `annual_bonus` float DEFAULT NULL,
  `yearly_variable` float DEFAULT '0',
  `monthly_ctc` float DEFAULT NULL,
  `poValue` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0',
  `remarks` text COLLATE utf8_unicode_ci,
  `increment_applicable_from` date DEFAULT NULL,
  `status` enum('Confirmed','Pending','Rejected') COLLATE utf8_unicode_ci DEFAULT NULL,
  `offeredBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offeredDate` date DEFAULT NULL,
  `confirmedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmedDate` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastUpdate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_ctcmonthly_info`
--

CREATE TABLE `emp_ctcmonthly_info` (
  `ctc_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `stateName` int(11) NOT NULL DEFAULT '1' COMMENT 'id from master_circles_info table ',
  `category` enum('fcm','outpar','other','ABE','contract') COLLATE utf8_unicode_ci NOT NULL,
  `skill_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `basic` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `daily_allowance` float DEFAULT NULL,
  `hra` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `laptopOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `laptopRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `lapSecurityIns` int(10) NOT NULL DEFAULT '0',
  `lapSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `lapsecurityDedcution` tinyint(1) NOT NULL,
  `tkOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `tkRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tkSecurityIns` int(10) NOT NULL DEFAULT '0',
  `tkSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `tksecurityDedcution` tinyint(1) NOT NULL,
  `sktOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `sktRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sktSecurityIns` int(10) NOT NULL DEFAULT '0',
  `sktSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `sktsecurityDedcution` tinyint(1) NOT NULL,
  `mobileOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `mobileRent` int(10) NOT NULL DEFAULT '0',
  `mobileSecurityIns` int(10) NOT NULL DEFAULT '0',
  `mobileSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `mobilesecurityDedcution` tinyint(1) NOT NULL,
  `conveyance_allowance` float NOT NULL,
  `books_periodicals` int(11) NOT NULL,
  `washing_allowance` int(11) NOT NULL,
  `food_allowance` float DEFAULT NULL,
  `transportation_charges` float(10,2) DEFAULT NULL,
  `vehicle_remb` int(11) NOT NULL,
  `other_allowance` int(11) NOT NULL,
  `bonus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `attendance_bonus` float DEFAULT NULL,
  `cityCompensatoryAllowance` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `medical_allowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_allowance` float NOT NULL,
  `Lta` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lwa` float NOT NULL DEFAULT '0',
  `gross_salary` float NOT NULL,
  `lwf` int(11) NOT NULL,
  `ESIC` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `mediclaim` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `canteen` float NOT NULL DEFAULT '0',
  `uniform` float DEFAULT NULL,
  `emp_provident_fund` float NOT NULL,
  `PF_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Fix , 1=variable.',
  `professional_tax` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `transaction_charge` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `tds` float NOT NULL,
  `other_deduction` float NOT NULL,
  `netSalary` int(10) NOT NULL,
  `employer_ESIC` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `employer_lwf` float DEFAULT '0',
  `employer_providentFund` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leave_encashment` float NOT NULL,
  `gratuity` float DEFAULT NULL,
  `annual_bonus` float DEFAULT NULL,
  `specialAllowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `admin_charges` float NOT NULL,
  `yearly_variable` float NOT NULL DEFAULT '0',
  `monthly_ctc` float NOT NULL,
  `poValue` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL COMMENT 'date when ctc save in this table',
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_dailyattendance_info`
--

CREATE TABLE `emp_dailyattendance_info` (
  `atten_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `agencyid` int(11) NOT NULL COMMENT 'use primary of master_agencies_info',
  `companyid` int(11) NOT NULL COMMENT 'use primary of master_companies_info',
  `punchTime` text COLLATE utf8_unicode_ci NOT NULL,
  `workingHrs` float DEFAULT NULL,
  `overtime` float DEFAULT NULL,
  `latitude` text COLLATE utf8_unicode_ci NOT NULL,
  `longitude` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci,
  `lastUpdate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `lastUpdateBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mispunch` int(11) NOT NULL COMMENT 'mispunch = leavestatus request status',
  `approvedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_dependents_info`
--

CREATE TABLE `emp_dependents_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_age` int(11) NOT NULL,
  `dependent_dob` date NOT NULL,
  `aadhar_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `aadhar_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dependent_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dependent_address` text COLLATE utf8_unicode_ci NOT NULL,
  `pf_share` float NOT NULL,
  `pf_guardian_name_address` text COLLATE utf8_unicode_ci NOT NULL,
  `nominee` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employer_info`
--

CREATE TABLE `emp_employer_info` (
  `empl_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `panNum` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updateAr` text COLLATE utf8_unicode_ci NOT NULL,
  `dateAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_expenselist_info`
--

CREATE TABLE `emp_expenselist_info` (
  `expl_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expense_date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `expense_description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `exp_doc` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_expense_info`
--

CREATE TABLE `emp_expense_info` (
  `exp_id` int(11) NOT NULL,
  `indo_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resourceName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `expense_start_date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `expense_end_date` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `expense_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SIEL_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `docSubType` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handoverPersonName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `handoverPersonNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `handoverPersoneMail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `docateNum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `appDocs` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `submitted_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_expense_status_info`
--

CREATE TABLE `emp_expense_status_info` (
  `st_id` int(11) NOT NULL,
  `current_status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exp_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `emp_submitted` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `courier_received` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `courier_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `verification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verification_status` tinyint(1) NOT NULL,
  `verification_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `stage2_submit_customer_submit` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `stage2_customer_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `stage2_customer_confirmation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stage2_confirm_status` tinyint(1) NOT NULL,
  `stage2_customer_confirmRemarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `stage3_invoice_submit` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `stage3_invoiceNum` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stage3_invoice_remark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `stage3_rfaconfirmation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stage3_confirm_status` tinyint(1) NOT NULL,
  `stage3_rfaNum` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rfagenerated_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `sendforpayment` tinyint(1) NOT NULL,
  `paymentdone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `payment_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `closeremark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_expother_info`
--

CREATE TABLE `emp_expother_info` (
  `ot_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `ref_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exp_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `to_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) NOT NULL,
  `ot_deduction_amt` int(11) NOT NULL,
  `ot_deduction_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `ot_final_total` int(11) NOT NULL,
  `ot_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_exp_conveyancefood_info`
--

CREATE TABLE `emp_exp_conveyancefood_info` (
  `cf_id` int(11) NOT NULL,
  `exp_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `conFo_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `from_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from_pincode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `from_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `to_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_pincode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `to_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `travel_mode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `own_car_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `intime` time NOT NULL,
  `outTime` time NOT NULL,
  `kms` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rsPerkms` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `locConey_cost` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `foodBillCheck` tinyint(1) NOT NULL,
  `lunchDinner` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `foodBill` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cf_deduction_amt` int(11) NOT NULL,
  `cf_deduction_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `cf_final_total` int(11) NOT NULL,
  `cf_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cf_foodDoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_exp_hotel_info`
--

CREATE TABLE `emp_exp_hotel_info` (
  `hid` int(15) NOT NULL,
  `td_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `ref_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkin_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_category` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pincode` int(11) NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `hotel_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daily_allowance` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `he_deduction_amt` int(11) NOT NULL COMMENT 'hotel expense deduction amount',
  `he_deduction_remark` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'hotel expense remarks',
  `he_final_total` int(11) NOT NULL COMMENT 'hotel expense after deduction amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_exp_localconveyance_info`
--

CREATE TABLE `emp_exp_localconveyance_info` (
  `lc_id` int(11) NOT NULL,
  `exp_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `expDate` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `fromAdd_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `from_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_pincode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fromAdd_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `toAdd_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `to_pincode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `toAdd_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` text COLLATE utf8_unicode_ci NOT NULL,
  `travel_mode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `own_car_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `inTime` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `outTime` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `kms` int(11) NOT NULL,
  `rate` text COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lc_deduction_amt` int(11) NOT NULL,
  `lc_deduction_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `lc_final_total` int(11) NOT NULL,
  `lc_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_exp_tourda_info`
--

CREATE TABLE `emp_exp_tourda_info` (
  `td_id` int(11) NOT NULL,
  `exp_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rfa_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tour_expDate` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `tourFrom_address` text COLLATE utf8_unicode_ci NOT NULL,
  `tourFrom_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourFrom_region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourFrom_zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tourFrom_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_purpose` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_travelmode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `own_car_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_intime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_outTime` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_kms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tripcost` int(11) NOT NULL,
  `dadays` int(11) NOT NULL,
  `daily_allowance_rate` int(11) NOT NULL,
  `daily_allowance` int(11) NOT NULL,
  `tourTo_cost` float NOT NULL,
  `td_deduction_amt` int(11) NOT NULL,
  `td_deduction_remark` text COLLATE utf8_unicode_ci NOT NULL,
  `td_final_total` int(11) NOT NULL,
  `tourTo_remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `tourTo_doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updateDatesAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updateUsersAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_final_attendance`
--

CREATE TABLE `emp_final_attendance` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `attendance_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_01` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_02` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_03` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_04` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_05` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_06` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_07` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_08` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_09` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_10` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_11` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_12` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_13` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_14` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_15` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_16` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_17` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_18` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_19` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_20` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_21` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_22` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_23` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_24` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_25` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_26` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_27` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_28` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_29` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_30` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date_31` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_present_days` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `overtime` float DEFAULT NULL,
  `late_penalty` float NOT NULL,
  `adjusted_late_penalty` float DEFAULT NULL,
  `total_present_days_after_penalty` float NOT NULL,
  `total_approved_leaves` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_lwp` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_absent` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `total_CL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_SL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_EL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_OD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_CO` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_weekoff` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_P` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_holidays` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_rh` float DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=draft,1=locked',
  `late_penalty_status` tinyint(4) NOT NULL COMMENT '0=pending for apply,1=applied',
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_accounts_clearance_info`
--

CREATE TABLE `emp_fnf_accounts_clearance_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `travel_advance` float NOT NULL,
  `salary_advance` float NOT NULL,
  `other_advance` float NOT NULL,
  `loans` float NOT NULL,
  `salary_hold` float NOT NULL,
  `last_payable_salary` float NOT NULL,
  `any_other_payable` float NOT NULL,
  `total_paid_recovered` float NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` tinytext COLLATE utf8_unicode_ci,
  `document` tinytext COLLATE utf8_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_datetime` datetime NOT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_administration_clearance_info`
--

CREATE TABLE `emp_fnf_administration_clearance_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `keys_return` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `calculator_sationary` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_simcard_return` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idcard_access_card_return` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `any_other` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `recover_amount` float NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` tinytext COLLATE utf8_unicode_ci,
  `document` tinytext COLLATE utf8_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_datetime` datetime NOT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_handover_takeover_info`
--

CREATE TABLE `emp_fnf_handover_takeover_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'handover employee indo code',
  `takeover_employee_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `takeover_employee_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `takeover_employee_department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `takeover_employee_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `files_name` text COLLATE utf8_unicode_ci NOT NULL,
  `files_details` text COLLATE utf8_unicode_ci NOT NULL,
  `computer_files_name` text COLLATE utf8_unicode_ci NOT NULL,
  `computer_files_details` text COLLATE utf8_unicode_ci NOT NULL,
  `inhand_progress_activities` text COLLATE utf8_unicode_ci NOT NULL,
  `inhand_progress_activities_details` text COLLATE utf8_unicode_ci NOT NULL,
  `pending_activities` text COLLATE utf8_unicode_ci NOT NULL,
  `pending_activities_details` text COLLATE utf8_unicode_ci NOT NULL,
  `specific_attention_activities` text COLLATE utf8_unicode_ci NOT NULL,
  `specific_attention_activities_details` text COLLATE utf8_unicode_ci NOT NULL,
  `handover_employee_remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `takeover_employee_remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `handover_employee_ipaddress` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `takeover_employee_ipaddress` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `handover_datetime` datetime NOT NULL,
  `takeover_datetime` datetime NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_hod_clearance_info`
--

CREATE TABLE `emp_fnf_hod_clearance_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `manager_accept_reject` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `accept_reject_remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `vendor_clearance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `handover_complete` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `manager_feedback_form` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `notice_period_served` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `notice_pay_recovery_days` float NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL COMMENT 'remarks at the time of clearance',
  `action_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` tinytext COLLATE utf8_unicode_ci,
  `document` tinytext COLLATE utf8_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_datetime` datetime NOT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_hr_clearance_info`
--

CREATE TABLE `emp_fnf_hr_clearance_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `assets_return` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `notice_period_days` float NOT NULL,
  `balance_leaves` float NOT NULL,
  `served_notice_period_days` float NOT NULL,
  `remaing_notice_period` float NOT NULL,
  `waiveoff_mode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `waiveoff` float NOT NULL,
  `payable_days` float NOT NULL,
  `last_payable_salary` float NOT NULL,
  `notice_period_buy_back` float NOT NULL,
  `bonus` float NOT NULL,
  `amount` float NOT NULL COMMENT 'this is HR department amount',
  `admin_recovery_amount` float NOT NULL,
  `it_recovery_amount` float NOT NULL,
  `account_recovery_amount` float NOT NULL,
  `other_remarks` text COLLATE utf8_unicode_ci,
  `other_amount` text COLLATE utf8_unicode_ci,
  `final_amount` float NOT NULL COMMENT 'this is the sum of all departments amount',
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ndc_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` tinytext COLLATE utf8_unicode_ci,
  `document` tinytext COLLATE utf8_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_datetime` datetime NOT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_it_clearance_info`
--

CREATE TABLE `emp_fnf_it_clearance_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `assets_return_status` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `all_assets_confirmation` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `laptop_file_password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `other_harware_return` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email_blocked_forwarded` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recover_amount` float NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` tinytext COLLATE utf8_unicode_ci,
  `document` tinytext COLLATE utf8_unicode_ci,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action_datetime` datetime NOT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_manager_feedback_info`
--

CREATE TABLE `emp_fnf_manager_feedback_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `manager_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setback_arising` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `worthwhile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `need_replacement` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `replacement_lavel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employee_strength` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `employee_weekness` tinyint(4) NOT NULL,
  `trained_tobe_specialist` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `trained_tobe_specialist_description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `down_company` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `feedback_datetime` datetime NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_fnf_reminder_info`
--

CREATE TABLE `emp_fnf_reminder_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `head_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `send_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reminder_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This will keep record of reminder send to each department  for submit feedback';

-- --------------------------------------------------------

--
-- Table structure for table `emp_geolocation_info`
--

CREATE TABLE `emp_geolocation_info` (
  `gl_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deactivated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deactivated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_geo_distance_matrix`
--

CREATE TABLE `emp_geo_distance_matrix` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `source_address` text COLLATE utf8_unicode_ci NOT NULL,
  `destination_address` text COLLATE utf8_unicode_ci NOT NULL,
  `estimated_distance` bigint(20) NOT NULL COMMENT 'In Meteres',
  `estimated_distance_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estimated_time` bigint(20) NOT NULL COMMENT 'In Seconds',
  `estimated_time_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attendance_date` date NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_hiring_info`
--

CREATE TABLE `emp_hiring_info` (
  `hi_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL COMMENT 'This is the company id from master_companies_info to whom hiring data to be shared',
  `vertical_id` int(11) NOT NULL COMMENT 'This is the md_id from master_departments_info',
  `candidate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abe_id` int(11) NOT NULL COMMENT 'abe_id from master_abecategory_info table',
  `status` int(11) NOT NULL,
  `remark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `interview_date` date NOT NULL,
  `interviewer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circle` int(11) NOT NULL,
  `location_applied_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currently_based_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_exp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` int(11) NOT NULL COMMENT 'agency id from master_agencies_info table (This is the agency who is sending data for hiring)',
  `current_ctc` int(11) NOT NULL,
  `hike_in_percent` int(11) NOT NULL,
  `expected_ctc` int(11) NOT NULL,
  `notice_period` int(11) NOT NULL,
  `dateof_upload` date NOT NULL,
  `dateof_cv_shared` date NOT NULL,
  `cvfeedback_date` date NOT NULL COMMENT 'CV Feedback Received Date',
  `offer_date` date NOT NULL,
  `offer_acceptance_date` date NOT NULL,
  `dateof_joining` date NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `alternate_mobile_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agency_remark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `recruiter_empcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_from` int(11) NOT NULL COMMENT 'This is related to master_hiringreference table',
  `reference_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `laptop` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3' COMMENT '1 = Asset manage by own, 2 = Asset provided by company, 3 = Asset not required',
  `safetykit` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3' COMMENT '1 = Asset manage by own, 2 = Asset provided by company, 3 = Asset not required',
  `resume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateAr` text COLLATE utf8_unicode_ci NOT NULL,
  `updatebyAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdated` date NOT NULL,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_hiring_info1`
--

CREATE TABLE `emp_hiring_info1` (
  `hi_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL COMMENT 'This is the company id from master_companies_info to whom hiring data to be shared',
  `vertical_id` int(11) NOT NULL COMMENT 'This is the md_id from master_departments_info',
  `candidate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abe_id` int(11) NOT NULL COMMENT 'abe_id from master_abecategory_info table',
  `status` int(11) NOT NULL,
  `remark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `interview_date` datetime NOT NULL,
  `interviewer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `circle` int(11) NOT NULL,
  `position_applied_for` int(11) DEFAULT NULL,
  `location_applied_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currently_based_at` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_exp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `source` int(11) NOT NULL COMMENT 'agency id from master_agencies_info table (This is the agency who is sending data for hiring)',
  `current_ctc` int(11) NOT NULL,
  `hike_in_percent` int(11) NOT NULL,
  `expected_ctc` int(11) NOT NULL,
  `notice_period` int(11) NOT NULL,
  `dateof_upload` date NOT NULL,
  `dateof_cv_shared` date NOT NULL,
  `cvfeedback_date` date NOT NULL COMMENT 'CV Feedback Received Date',
  `offer_date` date NOT NULL,
  `offer_acceptance_date` date NOT NULL,
  `dateof_joining` date NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `alternate_mobile_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agency_remark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `recruiter_empcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'This is related to master_hiringreference table',
  `reference_remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `laptop` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3' COMMENT '1 = Asset manage by own, 2 = Asset provided by company, 3 = Asset not required',
  `safetykit` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3' COMMENT '1 = Asset manage by own, 2 = Asset provided by company, 3 = Asset not required',
  `resume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateAr` text COLLATE utf8_unicode_ci,
  `updatebyAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdated` date NOT NULL,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_holidays_info`
--

CREATE TABLE `emp_holidays_info` (
  `id` int(11) NOT NULL COMMENT 'holiday id',
  `company_id` int(11) NOT NULL,
  `circle_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('Fixed','Restricted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Fixed',
  `date` date NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `definedby` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_ihrmsapp_info`
--

CREATE TABLE `emp_ihrmsapp_info` (
  `id` int(11) NOT NULL,
  `os_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `force_to_update` tinyint(1) NOT NULL COMMENT '1=yes force to update, 0=no force to update',
  `force_logout` tinyint(1) NOT NULL DEFAULT '0',
  `released_date` date NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=active,0=inactive',
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emp_ihrmsapp_info`
--

INSERT INTO `emp_ihrmsapp_info` (`id`, `os_type`, `version`, `file_name`, `force_to_update`, `force_logout`, `released_date`, `status`, `create_date`, `create_by`) VALUES
(1, 'ANDROID', 1, 'hrms.apk', 1, 0, '2018-08-07', 1, '2018-08-07 12:00:56', 'sup001'),
(2, 'ANDROID', 2, 'ihrms-v2.apk', 0, 0, '2018-08-10', 1, '2018-08-10 12:52:16', 'sup001'),
(3, 'ANDROID', 3, 'ihrms-v3.apk', 0, 0, '2018-08-20', 1, '2018-08-20 18:26:00', 'sup001'),
(6, 'ANDROID', 4, 'ihrms-v4.apk', 0, 0, '2018-08-30', 1, '2018-08-30 14:00:00', 'sup001'),
(7, 'ANDROID', 5, 'ihrms-v5.apk', 0, 0, '2018-10-01', 1, '2018-10-01 17:00:00', 'sup001'),
(8, 'ANDROID', 6, 'ihrms-v6.apk', 0, 0, '2019-06-12', 1, '2019-06-12 00:00:00', 'sup001'),
(9, 'ANDROID', 5, 'ihrms-v7.apk', 0, 0, '2019-10-01', 1, '2019-10-01 14:50:52', 'sup001'),
(10, 'ANDROID', 5, 'ihrms-v7.apk', 0, 0, '2020-03-16', 1, '2020-03-16 14:50:52', 'sup001'),
(11, 'ANDROID', 10, 'Redirect to Google Play Store', 0, 0, '2020-10-28', 1, '2020-10-28 09:56:15', 'sup001'),
(12, 'ANDROID', 14, 'Redirect to Google Play Store', 0, 0, '2020-10-28', 1, '2021-04-28 09:56:15', 'sup001'),
(13, 'ANDROID', 15, 'Redirect to Google Play Store', 0, 0, '2021-10-14', 1, '2021-10-14 09:56:15', 'sup001');

-- --------------------------------------------------------

--
-- Table structure for table `emp_leavequota_info`
--

CREATE TABLE `emp_leavequota_info` (
  `lq_id` int(11) NOT NULL,
  `agencyid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lt_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'lt_id from master_leavetype_info',
  `leaves` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leavesTaked` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0,0,0,0,0,0',
  `lastIncreaseDate` date DEFAULT NULL COMMENT 'Here will the date on which all employees leave quota increase',
  `lastIncreaseLeaves` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alloteddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `allotedby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave_info`
--

CREATE TABLE `emp_leave_info` (
  `leave_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lt_id` int(11) NOT NULL COMMENT 'Leave Type id from emp_leavetype_info',
  `duration_id` int(11) NOT NULL COMMENT 'duration id from master_duration_info table',
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `leave_period` float DEFAULT NULL,
  `comments` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `manager_emailid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `managerRemark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `approveddate` datetime NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applydatetime` datetime NOT NULL,
  `applyby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_leave_quota_info`
--

CREATE TABLE `emp_leave_quota_info` (
  `lq_id` int(11) NOT NULL,
  `agencyid` int(11) NOT NULL,
  `companyid` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `lt_id` int(11) NOT NULL COMMENT 'lt_id from master_leavetype_info',
  `carray_over` float(9,2) DEFAULT NULL COMMENT 'leaves of previous year',
  `jan` float(9,2) DEFAULT NULL,
  `feb` float(9,2) DEFAULT NULL,
  `mar` float(9,2) DEFAULT NULL,
  `apr` float(9,2) DEFAULT NULL,
  `may` float(9,2) DEFAULT NULL,
  `jun` float(9,2) DEFAULT NULL,
  `jul` float(9,2) DEFAULT NULL,
  `aug` float(9,2) DEFAULT NULL,
  `sep` float(9,2) DEFAULT NULL,
  `oct` float(9,2) DEFAULT NULL,
  `nov` float(9,2) DEFAULT NULL,
  `dec` float(9,2) DEFAULT NULL,
  `total` float(9,2) DEFAULT NULL,
  `taken` float(9,2) DEFAULT NULL,
  `encashment` float(9,2) DEFAULT NULL,
  `final` float(9,2) DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_loan_lists`
--

CREATE TABLE `emp_loan_lists` (
  `id` int(11) NOT NULL,
  `emp_code` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `apply_date` datetime DEFAULT NULL,
  `department` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `interest_rate` int(11) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `unpaid_amount` decimal(10,2) DEFAULT NULL,
  `installment_type` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installments` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'loan tenure',
  `paid_installments` int(11) DEFAULT NULL,
  `pending_installments` int(11) DEFAULT NULL,
  `loan_type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `monthly_emi` decimal(10,2) NOT NULL,
  `total_interest_amount` decimal(10,2) DEFAULT NULL,
  `loan_transfer_date` datetime DEFAULT NULL,
  `approve_by` varchar(55) COLLATE utf8_unicode_ci NOT NULL COMMENT 'admin  id',
  `approver_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'admin name',
  `approver_remark` text COLLATE utf8_unicode_ci COMMENT 'admin remark',
  `approve_datetime` datetime DEFAULT NULL COMMENT 'admin approve date',
  `approval_status` enum('Pending','Approved','Rejected','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `fin_approver_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fin_approver_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fin_approver_status` enum('Pending','Approved','Rejected','') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `fin_approver_date` datetime NOT NULL,
  `fin_approver_remark` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recovery_status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `company_id` int(11) DEFAULT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime NOT NULL,
  `updated_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_login_logout_log`
--

CREATE TABLE `emp_login_logout_log` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_datetime` datetime DEFAULT NULL,
  `ip_address` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_location` tinytext COLLATE utf8_unicode_ci,
  `logout_datetime` datetime DEFAULT NULL,
  `logout_location` tinytext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_log_templeaves_info`
--

CREATE TABLE `emp_log_templeaves_info` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `leave_id` int(11) NOT NULL COMMENT 'already applied leave id from emp_leave_info table',
  `lt_id` int(11) NOT NULL COMMENT 'leave type id',
  `duration_id` float DEFAULT NULL,
  `leave_period` float DEFAULT NULL,
  `date` date NOT NULL,
  `crud_flage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `applied_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `applied_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This is a temporary table used by admin/superadmin for employees leaves';

-- --------------------------------------------------------

--
-- Table structure for table `emp_mailslog_info`
--

CREATE TABLE `emp_mailslog_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `send_to` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `cc_mails` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `mail_body` text COLLATE utf8_unicode_ci NOT NULL,
  `send_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_menus_info`
--

CREATE TABLE `emp_menus_info` (
  `m_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_min_salary_info`
--

CREATE TABLE `emp_min_salary_info` (
  `min_sal_id` int(11) NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `wef_from` date NOT NULL,
  `wef_to` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unskilled` int(10) NOT NULL,
  `semi_skilled` int(10) NOT NULL,
  `skilled` int(10) NOT NULL,
  `hilghly_skilled` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_mispunch_info`
--

CREATE TABLE `emp_mispunch_info` (
  `mp_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `atten_id` int(11) NOT NULL,
  `mispunch_date` date DEFAULT NULL,
  `oldpunch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newpunch` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `manager_emailid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `managerRemark` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `applydatetime` datetime NOT NULL,
  `applyby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approveddate` datetime NOT NULL,
  `approvedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_monthly_roster`
--

CREATE TABLE `emp_monthly_roster` (
  `id` int(11) NOT NULL,
  `indo_code` text COLLATE utf8_unicode_ci,
  `companyName` int(11) DEFAULT NULL,
  `verticalName` int(11) NOT NULL,
  `date_01` text COLLATE utf8_unicode_ci,
  `date_02` text COLLATE utf8_unicode_ci,
  `date_03` text COLLATE utf8_unicode_ci,
  `date_04` text COLLATE utf8_unicode_ci,
  `date_05` text COLLATE utf8_unicode_ci,
  `date_06` text COLLATE utf8_unicode_ci,
  `date_07` text COLLATE utf8_unicode_ci,
  `date_08` text COLLATE utf8_unicode_ci,
  `date_09` text COLLATE utf8_unicode_ci,
  `date_10` text COLLATE utf8_unicode_ci,
  `date_11` text COLLATE utf8_unicode_ci,
  `date_12` text COLLATE utf8_unicode_ci,
  `date_13` text COLLATE utf8_unicode_ci,
  `date_14` text COLLATE utf8_unicode_ci,
  `date_15` text COLLATE utf8_unicode_ci,
  `date_16` text COLLATE utf8_unicode_ci,
  `date_17` text COLLATE utf8_unicode_ci,
  `date_18` text COLLATE utf8_unicode_ci,
  `date_19` text COLLATE utf8_unicode_ci,
  `date_20` text COLLATE utf8_unicode_ci,
  `date_21` text COLLATE utf8_unicode_ci,
  `date_22` text COLLATE utf8_unicode_ci,
  `date_23` text COLLATE utf8_unicode_ci,
  `date_24` text COLLATE utf8_unicode_ci,
  `date_25` text COLLATE utf8_unicode_ci,
  `date_26` text COLLATE utf8_unicode_ci,
  `date_27` text COLLATE utf8_unicode_ci,
  `date_28` text COLLATE utf8_unicode_ci,
  `date_29` text COLLATE utf8_unicode_ci,
  `date_30` text COLLATE utf8_unicode_ci,
  `date_31` text COLLATE utf8_unicode_ci,
  `month` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `create_by` text COLLATE utf8_unicode_ci,
  `create_date` date DEFAULT NULL,
  `update_by` text COLLATE utf8_unicode_ci,
  `update_date` date DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_morecompanies_info`
--

CREATE TABLE `emp_morecompanies_info` (
  `mc_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `employerNameList` text COLLATE utf8_unicode_ci NOT NULL,
  `jobStartDateList` text COLLATE utf8_unicode_ci NOT NULL,
  `jobEndDateList` text COLLATE utf8_unicode_ci NOT NULL,
  `experienceList` text COLLATE utf8_unicode_ci NOT NULL,
  `designationList` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responsibilitiesList` text COLLATE utf8_unicode_ci NOT NULL,
  `projectsList` text COLLATE utf8_unicode_ci NOT NULL,
  `useTechList` text COLLATE utf8_unicode_ci NOT NULL,
  `appointmentList` text COLLATE utf8_unicode_ci NOT NULL,
  `salarySlipList` text COLLATE utf8_unicode_ci NOT NULL,
  `releavingLetterList` text COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_offerappointment_info`
--

CREATE TABLE `emp_offerappointment_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'OFFER, APPOINTMENT',
  `created_date` datetime NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `released_date` datetime DEFAULT NULL,
  `released_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_accepted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>Pending, 1=>Accepted',
  `accepted_date` datetime DEFAULT NULL,
  `offered_document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accepted_document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_offererd_assets_info`
--

CREATE TABLE `emp_offererd_assets_info` (
  `oa_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `laptopOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `laptopRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `lapSecurityIns` int(10) NOT NULL DEFAULT '0',
  `lapSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `lapsecurityDedcution` tinyint(1) NOT NULL,
  `tkOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `tkRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tkSecurityIns` int(10) NOT NULL DEFAULT '0',
  `tkSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `tksecurityDedcution` tinyint(1) NOT NULL,
  `sktOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `sktRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sktSecurityIns` int(10) NOT NULL DEFAULT '0',
  `sktSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `sktsecurityDedcution` tinyint(1) NOT NULL,
  `mobileOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `mobileRent` int(10) NOT NULL DEFAULT '0',
  `mobileSecurityIns` int(10) NOT NULL DEFAULT '0',
  `mobileSecurityTotalAmt` int(10) NOT NULL DEFAULT '0',
  `mobilesecurityDedcution` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_personal_info`
--

CREATE TABLE `emp_personal_info` (
  `emp_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rom_empcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empl_id` int(11) NOT NULL COMMENT 'employer id from emp_employer_info',
  `reg_id` int(11) DEFAULT NULL COMMENT 'workmen registered id from table emp_workmenRegister_info',
  `agencyid` int(11) NOT NULL DEFAULT '1' COMMENT 'use primary of master_agencies_info',
  `companyName` int(11) NOT NULL COMMENT 'company ids from master_companies_info',
  `working_shift_id` int(11) DEFAULT NULL,
  `verticalName` int(11) NOT NULL COMMENT 'get department id from master_departments_info',
  `empType` enum('Joined','Offered','OfferRejected','Pending','Resign','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Offered',
  `position_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `positionRole` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prime_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_circle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `circle_name` int(11) NOT NULL COMMENT 'get circle id from master_circles_info',
  `city_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offered_date` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `offered_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expected_joining_date` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `contract_probation_days` int(11) DEFAULT NULL,
  `contract_probation_completed` enum('Yes','No','Review') COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_joiningdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `official_email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `married_status` tinyint(1) NOT NULL DEFAULT '0',
  `fatherName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uan_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pancard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pancard_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadharcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport_back` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mediclaimdoc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esicdoc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `current_address` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') COLLATE utf8_unicode_ci DEFAULT NULL,
  `pledgedoc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `another_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportingMgrName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportingMgrContact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reportingMgrEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `infoCompleted` tinyint(1) NOT NULL DEFAULT '0',
  `punchType` int(11) NOT NULL DEFAULT '1' COMMENT '1=> Single Location, 2=> Three Location, 3=> No Limit',
  `remark` text COLLATE utf8_unicode_ci,
  `updateDatesAr` text COLLATE utf8_unicode_ci,
  `updateUsersAr` text COLLATE utf8_unicode_ci,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `geo_tracking_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=geo tracking active,0=geo tracking inactive',
  `office_location_id` int(11) DEFAULT NULL,
  `working_location_id` int(11) DEFAULT NULL,
  `working_location_address` text COLLATE utf8_unicode_ci,
  `contact_person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms_condition` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_pms_timesheet`
--

CREATE TABLE `emp_pms_timesheet` (
  `timesheet_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kra_id` int(11) NOT NULL,
  `task_done` float NOT NULL,
  `task_date` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `submit_status` tinyint(1) NOT NULL COMMENT '0=Not Submit,1= Submit',
  `manager_emailid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_principalemployer_info`
--

CREATE TABLE `emp_principalemployer_info` (
  `pempl_id` int(11) NOT NULL,
  `empl_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `panNum` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(21) COLLATE utf8_unicode_ci NOT NULL,
  `updateAr` text COLLATE utf8_unicode_ci NOT NULL,
  `dateAr` text COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_probation_contract_review`
--

CREATE TABLE `emp_probation_contract_review` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` enum('Review','Reporting Manager Review','Employee Self Review','Confirmed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` tinytext COLLATE utf8_unicode_ci,
  `result` enum('Accept','Reject','Extend') COLLATE utf8_unicode_ci DEFAULT NULL,
  `extend_days` int(11) DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_profile`
--

CREATE TABLE `emp_profile` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_division_id` int(11) NOT NULL,
  `fk_metro_city_id` int(11) NOT NULL,
  `fk_station_type_id` int(11) NOT NULL,
  `fk_designation_id` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_qualification_info`
--

CREATE TABLE `emp_qualification_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_1oth_boardName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_1oth_schoolName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_1oth_yrf` date DEFAULT NULL,
  `emp_1oth_yrt` date DEFAULT NULL,
  `emp_1oth_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_12th_boardName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_12th_schoolName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_12th_yrf` date DEFAULT NULL,
  `emp_12th_yrt` date DEFAULT NULL,
  `emp_12th_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradUniName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradColgName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradyrf` date DEFAULT NULL,
  `gradyrt` date DEFAULT NULL,
  `gradClsType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGraduation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradUniName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradColgName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradyrf` date DEFAULT NULL,
  `postGradyrt` date DEFAULT NULL,
  `postGradclsType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificateName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificate` text COLLATE utf8_unicode_ci,
  `instituteBoard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certificateInstitute` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certiFromDate` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certitoDate` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `certiclsType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_1oth_marksheet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_10th_certificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_12th_Marksheet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_12th_certificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_1st` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_2nd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_3rd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_4th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_5th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_6th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_7th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gradu_8th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `graduateCertificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_1st` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_2nd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_3rd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_4th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_5th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_6th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_7th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postGradu_8th` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postgradCertificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infoCompleted` tinyint(1) DEFAULT '0',
  `updateDatesAr` text COLLATE utf8_unicode_ci,
  `updateUsersAr` text COLLATE utf8_unicode_ci,
  `lastUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_relieving_info`
--

CREATE TABLE `emp_relieving_info` (
  `relieving_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Not Send,1=Send',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `send_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `send_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_resign_info`
--

CREATE TABLE `emp_resign_info` (
  `re_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmpName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `resignDate` date NOT NULL,
  `lastWorkDate` date NOT NULL,
  `supervisorName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supervisorEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsDetails` text COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `agree` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `requestedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salaryattendance_info`
--

CREATE TABLE `emp_salaryattendance_info` (
  `sa_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joining_status` tinyint(1) NOT NULL,
  `positioncode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `newcode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `preAttendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `finalpreattendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `predifference` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `from1to20of_lastmonth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `from1to20of_currentmonth` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currentattendance` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `currentBillableDays` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `salary_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_status` tinyint(1) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_increment_log`
--

CREATE TABLE `emp_salary_increment_log` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `increment_month` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `percent_increment` float NOT NULL,
  `fix_increment` float NOT NULL,
  `old_ctc` float NOT NULL,
  `new_ctc` float NOT NULL,
  `old_designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_designation` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `increment_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `increment_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_info`
--

CREATE TABLE `emp_salary_info` (
  `sl_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salary_month` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `fk_department_id` int(11) DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prime_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_circle_id` int(11) DEFAULT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_bank_id` int(11) DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uan_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` enum('abe','fcm','outpar','other') COLLATE utf8_unicode_ci NOT NULL,
  `salary_days` int(11) NOT NULL COMMENT 'No. of days on which company is calculating salary of employees',
  `attendance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_hours` float(9,2) DEFAULT NULL,
  `arr_days` int(11) NOT NULL COMMENT 'arrear days',
  `holdDays` int(11) NOT NULL,
  `leave_sanction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leave_without_pay` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `daily_allowance` int(11) DEFAULT NULL,
  `hra` int(11) NOT NULL,
  `cca` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `conveyance_allowance` int(11) NOT NULL,
  `books_periodicals` int(11) DEFAULT NULL,
  `washing_allowance` int(11) NOT NULL,
  `food_allowance` int(11) DEFAULT NULL,
  `vehicle_remb` int(11) DEFAULT NULL,
  `other_allowance` int(11) DEFAULT NULL,
  `mobile_allowance` int(11) DEFAULT NULL,
  `LTA` int(11) DEFAULT NULL,
  `specialAllowance` int(11) DEFAULT NULL,
  `lwa` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) DEFAULT NULL,
  `attendance_bonus` int(11) DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL,
  `cityCompensatoryAllowance` int(11) NOT NULL,
  `variable_allowance` int(11) DEFAULT NULL,
  `laptopRent` int(11) NOT NULL,
  `laptop_security` int(11) DEFAULT NULL,
  `tkRent` int(11) DEFAULT NULL COMMENT 'toolkit rent',
  `sktRent` int(11) DEFAULT NULL COMMENT 'safety kit rent',
  `incentive` float(9,2) DEFAULT NULL,
  `arr_basic` int(11) DEFAULT NULL,
  `arr_daily_allowance` float DEFAULT NULL,
  `arr_hra` int(11) DEFAULT NULL,
  `arr_cca` int(11) DEFAULT NULL,
  `arr_variable_allowance` int(11) DEFAULT NULL,
  `arr_coneyance` int(11) DEFAULT NULL,
  `arr_books_periodicals` int(11) DEFAULT NULL,
  `arr_washing_allowance` int(11) DEFAULT NULL,
  `arr_food_allowance` int(11) DEFAULT NULL,
  `arr_vehicle_remb` int(11) NOT NULL,
  `arr_other_allowance` int(11) NOT NULL,
  `arr_mobile_allowance` int(11) NOT NULL,
  `arr_spl_allowance` int(11) NOT NULL,
  `arr_lwa` int(11) DEFAULT NULL,
  `arr_lta` int(11) NOT NULL,
  `arr_bonus` int(11) NOT NULL,
  `arr_overtime` int(11) DEFAULT NULL,
  `arr_laptop_charges` int(11) NOT NULL,
  `arr_toolkit_charges` int(11) NOT NULL,
  `arr_safetykit_charges` int(11) NOT NULL,
  `arr_medical` int(11) NOT NULL,
  `actual_gross` int(11) NOT NULL,
  `emp_provident_fund` int(11) NOT NULL,
  `arr_pf` int(11) NOT NULL,
  `esic` int(11) NOT NULL,
  `arr_esic` int(11) NOT NULL,
  `professional_tax` int(11) DEFAULT NULL,
  `income_tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `income_tax_calculated` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=IT calculated,0=IT not calculated',
  `LWF` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `arrear_lwf` int(11) NOT NULL,
  `arrear_employer_lwf` int(11) DEFAULT NULL,
  `mediclaim` int(11) DEFAULT NULL,
  `canteen` int(11) NOT NULL DEFAULT '0',
  `uniform` int(11) DEFAULT NULL,
  `admin_charges` int(11) DEFAULT NULL,
  `food_lodging` int(11) DEFAULT NULL,
  `transportation_charges` float(10,2) DEFAULT NULL,
  `arrear_food_lodging` int(11) DEFAULT NULL,
  `transaction_charge` int(11) DEFAULT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `other_deduction` int(11) DEFAULT NULL,
  `total_deduction` int(11) NOT NULL,
  `hold_salary` int(11) NOT NULL,
  `monthly_net` int(11) NOT NULL,
  `paid_salary` int(11) DEFAULT NULL,
  `bank_transferred_amount` float DEFAULT NULL,
  `monthly_net_before_IT` int(11) DEFAULT NULL,
  `employer_providentFund` int(11) DEFAULT NULL,
  `employer_pf_admin_charges` int(11) DEFAULT NULL,
  `arrear_employer_pf` int(11) DEFAULT NULL,
  `arrear_employer_pf_admin_charges` int(11) DEFAULT NULL,
  `employer_ESIC` int(11) DEFAULT NULL,
  `employer_lwf` int(11) DEFAULT '0',
  `arrear_employer_esic` int(11) NOT NULL,
  `employer_total_deduction` int(11) DEFAULT NULL,
  `gratuity` float(9,2) DEFAULT NULL,
  `monthly_ctc` int(11) DEFAULT NULL,
  `invoice` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_cal_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','confirmed','hold') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` enum('Locked','Partial-Paid','Paid') COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_reference_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_survey_info`
--

CREATE TABLE `emp_survey_info` (
  `sv_id` int(11) NOT NULL,
  `indo_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `jobLavel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `answers` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `suggestions` text COLLATE utf8_unicode_ci NOT NULL,
  `submitDate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `submittedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_tasktime_info`
--

CREATE TABLE `emp_tasktime_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `task` text COLLATE utf8_unicode_ci NOT NULL,
  `taskdate` date NOT NULL,
  `manager_emailid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_taxdeclaration_documents_info`
--

CREATE TABLE `emp_taxdeclaration_documents_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `exemption_current_yr_uploaded_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `exemption_current_yr_uploaded_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `exemption_1yr_uploaded_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `exemption_1yr_uploaded_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `exemption_2yr_uploaded_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `exemption_2yr_uploaded_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `exemption_3yr_uploaded_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `exemption_3yr_uploaded_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_april_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_april_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_may_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_may_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_june_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_june_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_july_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_july_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_august_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_august_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_september_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_september_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_october_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_october_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_november_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_november_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_december_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_december_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_january_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_january_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_february_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_february_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `rent_march_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `rent_march_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `bank_evidence_document` text COLLATE utf8_unicode_ci NOT NULL,
  `bank_evidence_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `possession_evidence_document` text COLLATE utf8_unicode_ci NOT NULL,
  `possession_evidence_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `house_rent_allowance_document` text COLLATE utf8_unicode_ci NOT NULL,
  `house_rent_allowance_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `landlord_pancard_document` text COLLATE utf8_unicode_ci NOT NULL,
  `landlord_pancard_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `leave_travel_concession_document` text COLLATE utf8_unicode_ci NOT NULL,
  `leave_travel_concession_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `lender_pancard_document` text COLLATE utf8_unicode_ci NOT NULL,
  `lender_pancard_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `education_expense_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `education_expense_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `elss_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `elss_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `fixed_deposit_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `fixed_deposit_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `insurance_premium_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `insurance_premium_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `mutualfund_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `mutualfund_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `nsc_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `nsc_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `ppf_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `ppf_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `stampduty_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `stampduty_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `sukanya_samriddhi_account_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `sukanya_samriddhi_account_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `ulip_attached_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `ulip_attached_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `home_loan_principal_paid_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `home_loan_principal_paid_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `pension_plan_80ccc_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `pension_plan_80ccc_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `national_pension_system_80ccd_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `national_pension_system_80ccd_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `mediclaim_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `mediclaim_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `mediclaim_parents_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `mediclaim_parents_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `medical_treatment_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `medical_treatment_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `medical_treatment_80ddb_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `medical_treatment_80ddb_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `interest_on_education_loan_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `interest_on_education_loan_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `physical_disabilities_attached_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `physical_disabilities_attached_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `books_and_periodicals_exemption_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `books_and_periodicals_exemption_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `vehical_reimbursement_exemption_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `vehical_reimbursement_exemption_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `mobile_allowance_exemption_documents` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile_allowance_exemption_documents_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `signatue_of_employee` text COLLATE utf8_unicode_ci NOT NULL,
  `signatue_of_employee_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `all_document_verification` tinyint(1) NOT NULL COMMENT '0=Not Verify,1=Verify',
  `status` tinyint(1) NOT NULL COMMENT '0=activate,1=de-activate',
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_taxdeducation_info`
--

CREATE TABLE `emp_taxdeducation_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pancard_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` int(50) NOT NULL,
  `financial_year` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `april` int(10) NOT NULL,
  `may` int(10) NOT NULL,
  `june` int(10) NOT NULL,
  `july` int(10) NOT NULL,
  `august` int(10) NOT NULL,
  `september` int(10) NOT NULL,
  `october` int(10) NOT NULL,
  `november` int(10) NOT NULL,
  `december` int(10) NOT NULL,
  `january` int(10) NOT NULL,
  `february` int(10) NOT NULL,
  `march` int(10) NOT NULL,
  `total_calculated_tax` int(255) NOT NULL,
  `version` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `calculated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `calculated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_tax_calculation_history`
--

CREATE TABLE `emp_tax_calculation_history` (
  `calculation_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` int(11) NOT NULL,
  `emp_calculation_data` text COLLATE utf8_unicode_ci NOT NULL,
  `calculated_based_on` enum('on verification','on emp declaration') COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_tax_regime`
--

CREATE TABLE `emp_tax_regime` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financial_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_regime_id` int(11) DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_templeaves_info`
--

CREATE TABLE `emp_templeaves_info` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `leave_id` int(11) NOT NULL COMMENT 'already applied leave id from emp_leave_info table',
  `lt_id` int(11) NOT NULL COMMENT 'leave type id',
  `duration_id` float DEFAULT NULL,
  `leave_period` float DEFAULT NULL,
  `date` date NOT NULL,
  `crud_flage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `applied_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `applied_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This is a temporary table used by admin/superadmin for employees leaves';

-- --------------------------------------------------------

--
-- Table structure for table `emp_tempsalary_info`
--

CREATE TABLE `emp_tempsalary_info` (
  `sl_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `old_indocode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_month` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `fk_department_id` int(11) DEFAULT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prime_department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_circle_id` int(11) DEFAULT NULL,
  `base_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_bank_id` int(11) DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pf_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uan_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esic_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` enum('abe','fcm','outpar','other') COLLATE utf8_unicode_ci NOT NULL,
  `salary_days` int(11) NOT NULL COMMENT 'No. of days on which company is calculating salary of employees',
  `attendance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `overtime_hours` float(9,2) DEFAULT NULL,
  `arr_days` int(11) NOT NULL COMMENT 'arrear days',
  `holdDays` int(11) NOT NULL,
  `leave_sanction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leave_without_pay` int(11) NOT NULL,
  `gross_salary` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `daily_allowance` int(11) DEFAULT NULL,
  `hra` int(11) NOT NULL,
  `cca` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `conveyance_allowance` int(11) NOT NULL,
  `books_periodicals` int(11) DEFAULT NULL,
  `washing_allowance` int(11) NOT NULL,
  `food_allowance` int(11) DEFAULT NULL,
  `vehicle_remb` int(11) DEFAULT NULL,
  `other_allowance` int(11) DEFAULT NULL,
  `mobile_allowance` int(11) DEFAULT NULL,
  `LTA` int(11) DEFAULT NULL,
  `specialAllowance` int(11) DEFAULT NULL,
  `lwa` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) DEFAULT NULL,
  `attendance_bonus` int(11) DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL,
  `cityCompensatoryAllowance` int(11) NOT NULL,
  `variable_allowance` int(11) DEFAULT NULL,
  `laptopRent` int(11) NOT NULL,
  `laptop_security` int(11) DEFAULT NULL,
  `tkRent` int(11) DEFAULT NULL COMMENT 'toolkit rent',
  `sktRent` int(11) DEFAULT NULL COMMENT 'safety kit rent',
  `incentive` float(9,2) DEFAULT NULL,
  `arr_basic` int(11) DEFAULT NULL,
  `arr_daily_allowance` float DEFAULT NULL,
  `arr_hra` int(11) DEFAULT NULL,
  `arr_cca` int(11) DEFAULT NULL,
  `arr_variable_allowance` int(11) DEFAULT NULL,
  `arr_coneyance` int(11) DEFAULT NULL,
  `arr_books_periodicals` int(11) DEFAULT NULL,
  `arr_washing_allowance` int(11) DEFAULT NULL,
  `arr_food_allowance` int(11) DEFAULT NULL,
  `arr_vehicle_remb` int(11) NOT NULL,
  `arr_other_allowance` int(11) NOT NULL,
  `arr_mobile_allowance` int(11) NOT NULL,
  `arr_spl_allowance` int(11) NOT NULL,
  `arr_lwa` int(11) DEFAULT NULL,
  `arr_lta` int(11) NOT NULL,
  `arr_bonus` int(11) NOT NULL,
  `arr_overtime` int(11) DEFAULT NULL,
  `arr_laptop_charges` int(11) NOT NULL,
  `arr_toolkit_charges` int(11) NOT NULL,
  `arr_safetykit_charges` int(11) NOT NULL,
  `arr_medical` int(11) NOT NULL,
  `actual_gross` int(11) NOT NULL,
  `emp_provident_fund` int(11) NOT NULL,
  `arr_pf` int(11) NOT NULL,
  `esic` int(11) NOT NULL,
  `arr_esic` int(11) NOT NULL,
  `professional_tax` int(11) DEFAULT NULL,
  `income_tax` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `income_tax_calculated` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=IT calculated,0=IT not calculated',
  `LWF` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `arrear_lwf` int(11) NOT NULL,
  `arrear_employer_lwf` int(11) DEFAULT NULL,
  `mediclaim` int(11) DEFAULT NULL,
  `canteen` int(11) NOT NULL DEFAULT '0',
  `uniform` int(11) DEFAULT NULL,
  `admin_charges` int(11) DEFAULT NULL,
  `food_lodging` int(11) DEFAULT NULL,
  `transportation_charges` float(10,2) DEFAULT NULL,
  `arrear_food_lodging` int(11) DEFAULT NULL,
  `transaction_charge` int(11) DEFAULT NULL,
  `advance_salary` int(11) DEFAULT NULL,
  `other_deduction` int(11) DEFAULT NULL,
  `total_deduction` int(11) NOT NULL,
  `hold_salary` int(11) NOT NULL,
  `monthly_net` int(11) NOT NULL,
  `paid_salary` int(11) DEFAULT NULL,
  `bank_transferred_amount` float DEFAULT NULL,
  `monthly_net_before_IT` int(11) DEFAULT NULL,
  `employer_providentFund` int(11) DEFAULT NULL,
  `employer_pf_admin_charges` int(11) DEFAULT NULL,
  `arrear_employer_pf` int(11) DEFAULT NULL,
  `arrear_employer_pf_admin_charges` int(11) DEFAULT NULL,
  `employer_ESIC` int(11) DEFAULT NULL,
  `employer_lwf` int(11) DEFAULT '0',
  `arrear_employer_esic` int(11) NOT NULL,
  `employer_total_deduction` int(11) DEFAULT NULL,
  `gratuity` float(9,2) DEFAULT NULL,
  `monthly_ctc` int(11) DEFAULT NULL,
  `invoice` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_cal_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` enum('pending','confirmed','hold') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` enum('Locked','Partial-Paid','Paid') COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `customer_reference_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='check points & after done that move data to emp_salary_info';

-- --------------------------------------------------------

--
-- Table structure for table `emp_temp_increment_salary`
--

CREATE TABLE `emp_temp_increment_salary` (
  `ctc_id` int(11) NOT NULL,
  `indo_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `stateName` int(11) NOT NULL DEFAULT '1' COMMENT 'id from master_circles_info table ',
  `category` enum('ABE','fcm','outpar','other','contract') COLLATE utf8_unicode_ci NOT NULL,
  `skill_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `basic` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `daily_allowance` float(9,2) DEFAULT NULL,
  `hra` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `laptopOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `laptopRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `lapSecurityIns` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `lapSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `lapsecurityDedcution` tinyint(1) NOT NULL,
  `tkOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `tkRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tkSecurityIns` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `tkSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `tksecurityDedcution` tinyint(1) NOT NULL,
  `sktOwner` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `sktRent` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sktSecurityIns` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `sktSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `sktsecurityDedcution` tinyint(1) NOT NULL,
  `mobileOwner` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `mobileRent` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `mobileSecurityIns` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `mobileSecurityTotalAmt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `mobilesecurityDedcution` tinyint(1) NOT NULL,
  `conveyance_allowance` float NOT NULL,
  `books_periodicals` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `washing_allowance` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `food_allowance` float(9,2) DEFAULT NULL,
  `transportation_charges` float(9,2) DEFAULT NULL,
  `lwa` float(9,2) DEFAULT NULL,
  `canteen` float(9,2) DEFAULT NULL,
  `uniform` float(9,2) DEFAULT NULL,
  `employer_lwf` float(9,2) DEFAULT NULL,
  `attendance_bonus` float(9,2) DEFAULT NULL,
  `vehicle_remb` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `other_allowance` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `bonus` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cityCompensatoryAllowance` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `medical_allowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_allowance` float NOT NULL,
  `Lta` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gross_salary` float NOT NULL,
  `lwf` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ESIC` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `mediclaim` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'N/A',
  `emp_provident_fund` float NOT NULL,
  `PF_flag` tinyint(1) NOT NULL COMMENT '0=Fix , 1=variable.',
  `professional_tax` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `transaction_charge` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `tds` float NOT NULL,
  `other_deduction` float NOT NULL,
  `admin_charges` float NOT NULL,
  `netSalary` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `employer_ESIC` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `employer_providentFund` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `leave_encashment` float DEFAULT NULL,
  `gratuity` int(11) NOT NULL,
  `annual_bonus` float DEFAULT NULL,
  `specialAllowance` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `yearly_variable` float NOT NULL DEFAULT '0',
  `monthly_ctc` float NOT NULL,
  `poValue` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Confirmed','Pending','Rejected','old') COLLATE utf8_unicode_ci NOT NULL,
  `offeredBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `offeredDate` date NOT NULL,
  `confirmedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmedDate` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_uploaded_documents_info`
--

CREATE TABLE `emp_uploaded_documents_info` (
  `upload_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=activate,1=de-activate,2=Locked',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `	emp_usersdevice_info`
--

CREATE TABLE `	emp_usersdevice_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `imei_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `device_details` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_workexp_info`
--

CREATE TABLE `emp_workexp_info` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `freshExp` tinyint(1) DEFAULT '1',
  `employerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobStartDate` date DEFAULT NULL,
  `jobFinishDate` date DEFAULT NULL,
  `experience` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsibilities` text COLLATE utf8_unicode_ci,
  `projects` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useTech` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appointment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salarySlip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releavingLetter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevEmployerName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevJobStartDate` date DEFAULT NULL,
  `prevJobEndDate` date DEFAULT NULL,
  `preExp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevDesig` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevResp` text COLLATE utf8_unicode_ci,
  `projInPrevComp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `techInprevComp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevAppLetter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevSalSlip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prevReleavLetter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addmorecompanies` tinyint(1) DEFAULT NULL,
  `infoCompleted` tinyint(1) DEFAULT '0',
  `updateDatesAr` text COLLATE utf8_unicode_ci,
  `updateUsersAr` text COLLATE utf8_unicode_ci,
  `lastUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_workmenregister_info`
--

CREATE TABLE `emp_workmenregister_info` (
  `wr_id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `esic_documents`
--

CREATE TABLE `esic_documents` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Challan','Contribution PDF Sheet','Contribution Excel Sheet') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `esic_documents_v2`
--

CREATE TABLE `esic_documents_v2` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Challan','Contribution PDF Sheet','Contribution Excel Sheet') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `esic_monthly_table`
--

CREATE TABLE `esic_monthly_table` (
  `esic_id` int(11) NOT NULL,
  `esic_period` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `esic_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attendance` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `actual_gross` int(11) NOT NULL,
  `reason_code` int(11) NOT NULL,
  `lwd` date NOT NULL,
  `calculated_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `calculated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_settings`
--

CREATE TABLE `expense_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_link`
--

CREATE TABLE `external_link` (
  `link_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= will show on user & admin dashboard.',
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_16_info`
--

CREATE TABLE `form_16_info` (
  `form_id` int(11) NOT NULL,
  `indo_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `companyName` int(11) NOT NULL,
  `financial_year` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `form_16_pdf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `form_16_part_a_pdf` text COLLATE utf8_unicode_ci NOT NULL,
  `generate_status` tinyint(1) NOT NULL COMMENT '0= Not generated , 1 = Generated',
  `send_status` tinyint(1) NOT NULL COMMENT '0= Not send , 1 = send',
  `send_datetime` datetime DEFAULT NULL,
  `visible_status` tinyint(1) NOT NULL COMMENT '0=not visible,1=visible',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_urn`
--

CREATE TABLE `generate_urn` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `reference_number` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approver_status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT '3' COMMENT '1=Approved,2=Rejected,3=Pending,4=Uploaded',
  `third_party_approver_status` int(11) DEFAULT NULL,
  `document_locked_status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unlocked',
  `year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_code` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `document_name` text COLLATE utf8_unicode_ci,
  `purpose` text COLLATE utf8_unicode_ci,
  `approver_name` varchar(44) COLLATE utf8_unicode_ci NOT NULL,
  `third_party_approver_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `third_party_approver_id` int(11) DEFAULT NULL,
  `approver_type` int(11) DEFAULT NULL,
  `approver_code` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `output_type_id` int(11) DEFAULT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `third_party_remarks` tinytext COLLATE utf8_unicode_ci,
  `emp_code` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `emp_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `third_party_action_date` datetime DEFAULT NULL,
  `created_by` varchar(44) COLLATE utf8_unicode_ci NOT NULL,
  `action_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hiring_forms`
--

CREATE TABLE `hiring_forms` (
  `id` int(11) NOT NULL,
  `file_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `create_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hsm_master_documents_types`
--

CREATE TABLE `hsm_master_documents_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hsm_mobile_otp`
--

CREATE TABLE `hsm_mobile_otp` (
  `id` int(11) NOT NULL,
  `mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ihrms_modules`
--

CREATE TABLE `ihrms_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ihrms_modules`
--

INSERT INTO `ihrms_modules` (`id`, `name`, `description`, `create_datetime`, `create_by`, `update_datetime`, `update_by`, `status`) VALUES
(1, 'Romsons Expense', 'In this module there is a restrictions on expense based on designation & circle/metro city wise.', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 0),
(2, 'Romsons Event', 'In this module travel plan & expected budget is pre-approved by reporting manager.', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(3, 'Joined Employees list', 'Joined Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(4, 'Offered Employees list', 'Offered Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(5, 'Pending For Offer Employees list', 'Pending For Offer Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(6, 'Offered Employees list', 'Offered Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(7, 'Resigned Employees list', 'Resigned Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(8, 'Pending Resings Employees list', 'Pending Resings Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(9, 'Offer Rejected Employees list', 'Offer Rejected Employees list', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(10, 'CTC Calculator', 'CTC Calculator', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(11, 'Add New Employee', 'Add New Employee', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(12, 'View Uploaded Certificate', 'View Uploaded Certificate', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(13, 'View Appointments Letters', 'View Appointments Letters', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(14, 'Probation Period Employees List', 'Probation Period Employees List', '2019-11-14 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(15, 'Romsons Leave', 'Apply Casual Leave, Paid Leve, Business Trip.', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(16, 'Attendance Management', 'Attendance Management', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(17, 'Profile', 'In Mobile Application Profile Module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(18, 'Time Sheet\r\n', 'Time Sheet Module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(19, 'Assets management', 'Assets management Module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(20, 'Dependents System', 'Dependents System Module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(21, 'Ticket', 'Ticket Module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(22, 'Salary', 'Salary module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(23, 'Staff Management', 'Staff Management module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(24, 'Notification', 'Notification module', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(25, 'Holiday List', 'Holiday List', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(26, 'Punch', 'Punch attendance', '2019-12-23 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(27, 'WFH', 'WFH', '2021-01-14 12:16:44', 'sup001', '0000-00-00 00:00:00', '', 1),
(28, 'Visitor', 'Visitor', '2021-01-14 12:16:44', 'sup001', '0000-00-00 00:00:00', '', 1),
(29, 'Warehouse', 'Warehouse', '2021-03-17 18:13:20', 'sup001', '0000-00-00 00:00:00', '', 1),
(30, 'URN', 'URN:- Documents', '2021-06-01 18:13:20', 'sup001', '0000-00-00 00:00:00', '', 1),
(31, 'Staff Attendance', 'Staff Attendance', '2021-06-23 18:13:20', 'sup001', '0000-00-00 00:00:00', '', 1),
(32, 'iVisitors', 'iVisitors', '2022-02-21 18:13:20', 'sup001', '2022-02-21 18:13:20', '', 1),
(33, 'Contract Reminders', 'Contract Reminders it is also known as reminders management module', '2022-04-25 12:50:59', 'sup001', '0000-00-00 00:00:00', '', 1),
(34, 'Medical Checkup', 'Medical Checkup', '2022-04-25 12:50:59', 'sup001', '0000-00-00 00:00:00', '', 1),
(35, 'External Link', 'This module helps to keep recored of important extneral links', '2022-04-25 12:50:59', 'sup001', '0000-00-00 00:00:00', '', 1),
(36, 'Loan management', 'Loan management', '2022-04-25 12:50:59', 'sup001', '0000-00-00 00:00:00', '', 1),
(37, 'Shift management', 'Shift management', '2022-04-25 12:50:59', 'sup001', '0000-00-00 00:00:00', '', 1),
(38, 'Invoice', 'Invoice management', '2024-05-16 11:50:59', 'sup001', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ihrms_settings`
--

CREATE TABLE `ihrms_settings` (
  `id` int(11) NOT NULL,
  `set_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `set_value` text COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ihrms_settings`
--

INSERT INTO `ihrms_settings` (`id`, `set_key`, `set_value`, `create_datetime`, `create_by`, `update_datetime`, `update_by`, `status`) VALUES
(1, 'company_logo', 'hrms-logo-25-01-2022-11-06-58-1919075122.jpg', '2021-12-17 17:55:10', 'sup001', '2022-01-25 11:06:58', 'sup001', '1'),
(2, 'login_type', '1', '2021-12-17 17:57:00', 'sup001', '2023-06-09 12:53:34', 'sup001', '1');

-- --------------------------------------------------------

--
-- Table structure for table `income_tax_final_deducation_sheet`
--

CREATE TABLE `income_tax_final_deducation_sheet` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'not in use',
  `pancard_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'not in use',
  `company_name` int(50) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `april` int(10) NOT NULL,
  `may` int(10) NOT NULL,
  `june` int(10) NOT NULL,
  `july` int(10) NOT NULL,
  `august` int(10) NOT NULL,
  `september` int(10) NOT NULL,
  `october` int(10) NOT NULL,
  `november` int(10) NOT NULL,
  `december` int(10) NOT NULL,
  `january` int(10) NOT NULL,
  `february` int(10) NOT NULL,
  `march` int(10) NOT NULL,
  `total_calculated_tax` int(255) NOT NULL,
  `total_deducted_tax` int(255) NOT NULL,
  `net_payable_tax` int(255) NOT NULL,
  `submitted_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `submitted_date` date NOT NULL,
  `calculated_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `calculated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indoadmin`
--


-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` int(11) NOT NULL,
  `hi_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remark` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interviewer` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interview_date` datetime DEFAULT NULL,
  `assigned_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `it_computation_send_mail_history`
--

CREATE TABLE `it_computation_send_mail_history` (
  `send_id` int(11) NOT NULL,
  `salary_month` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `attached_file` text COLLATE utf8_unicode_ci NOT NULL,
  `send_status` tinyint(1) NOT NULL COMMENT '0=Not Send 1= Send',
  `email_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `send_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `send_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_approver_setting`
--

CREATE TABLE `loan_approver_setting` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `approver_code` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approver_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment_details`
--

CREATE TABLE `loan_payment_details` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `installment_pay_id` int(11) DEFAULT NULL,
  `principal` int(11) DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT NULL COMMENT 'installment',
  `paid_interest` int(11) DEFAULT NULL,
  `paid_principal` int(11) DEFAULT NULL,
  `loan_outstanding` decimal(10,2) DEFAULT NULL,
  `pay_datetime` datetime DEFAULT NULL,
  `paid_by` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(55) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE `log_info` (
  `log_id` int(11) NOT NULL,
  `tbl_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `row_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sql_query` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lwf_documents_v2`
--

CREATE TABLE `lwf_documents_v2` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) DEFAULT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type` enum('LWF Challan','Letter','Payment Receipt') COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lwf_monthly_table`
--

CREATE TABLE `lwf_monthly_table` (
  `lwf_id` int(11) NOT NULL,
  `lwf_period` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `resource_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `joining_date` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `base_location` int(11) NOT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `monthly_gross` int(11) NOT NULL,
  `lwf_employee` float NOT NULL,
  `lwf_employer` float NOT NULL,
  `total` float NOT NULL,
  `last_working_date` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_track_dashboard_report_settings`
--

CREATE TABLE `mail_track_dashboard_report_settings` (
  `id` int(11) NOT NULL,
  `fk_dashboard_report_settings_id` int(11) NOT NULL COMMENT 'This is id of table "dashboard_report_settings"',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_abecategory_info`
--

CREATE TABLE `master_abecategory_info` (
  `abe_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastupdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_agencies_info`
--

CREATE TABLE `master_agencies_info` (
  `ma_id` int(11) NOT NULL,
  `ma_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cin` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Corporate Identity Number (CIN)',
  `roc` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Registrar of Company (RoC)',
  `registration_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `doi` varchar(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Date of Incorporation (DD/MM/YYYY)',
  `gst_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_approver_type`
--

CREATE TABLE `master_approver_type` (
  `id` int(11) NOT NULL,
  `approver_type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_assets_types`
--

CREATE TABLE `master_assets_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `life_in_months` int(11) NOT NULL,
  `drate_per_year` float DEFAULT NULL COMMENT 'percentage depreciation rate',
  `residual` float DEFAULT NULL COMMENT 'percentage depreciation rate',
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=delete,1=live'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_banks_info`
--

CREATE TABLE `master_banks_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_banks_info`
--

INSERT INTO `master_banks_info` (`id`, `name`, `create_date`, `create_by`, `update_date`, `update_by`, `status`) VALUES
(1, 'Abhyudaya Co-Operative Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(2, 'Allahabad Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(3, 'Andhra Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(4, 'Axis Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(5, 'Bandhan Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(6, 'Bank of Baroda', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(7, 'Bank of India', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(8, 'Bank of Maharashtra', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(9, 'Bank of Tokyo-Mitsubishi', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(10, 'Canara Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(11, 'Central Bank of India', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(12, 'Citi Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(13, 'City Union Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(14, 'Corporation Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(15, 'DBS Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(16, 'DCB Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(17, 'Deutsche Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(18, 'Dhanlaxmi Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(19, 'Federal Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(20, 'HDFC Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(21, 'HSBC Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(22, 'ICICI Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(23, 'IDBI Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(24, 'IDFC Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(25, 'Indian Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(26, 'Indian Overseas Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(27, 'IndusInd Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(28, 'Jammu & Kashmir Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(29, 'Karnataka Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(30, 'Karur Vysya Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(31, 'Kotak Mahindra Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(32, 'Oriental Bank of Commerce', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(33, 'Punjab & Maharashtra Co-Operative Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(34, 'Punjab & Sind Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(35, 'Punjab National Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(36, 'RBL Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(37, 'Saraswat Co-Operative Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(38, 'South Indian Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(39, 'Standard Chartered Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(40, 'State Bank of Hyderabad', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(41, 'State Bank of India', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(42, 'State Bank of Mysore', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(43, 'Syndicate Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(44, 'Tamilnad Mercantile Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(45, 'Thane Janata Sahakari  Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(46, 'UCO Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(47, 'Union Bank of India', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(48, 'United Bank of India', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(49, 'Vijaya Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(50, 'Yes Bank', '0000-00-00 00:00:00', '', NULL, NULL, 1),
(51, 'Dena Bank', '2019-07-22 00:00:00', '', NULL, NULL, 1),
(52, 'Pragathi Krishna Gramin Bank', '2020-08-12 14:54:18', 'sup001', '2020-08-12 14:54:18', 'sup001', 1),
(53, 'Fino payments bank', '2022-01-24 14:03:19', 'SUP001', NULL, NULL, 1),
(54, 'Paytm Payments Bank', '2022-01-24 14:03:19', 'SUP001', NULL, NULL, 1),
(55, 'Bihar Gramin Bank', '2022-01-24 14:03:19', 'SUP001', NULL, NULL, 1),
(56, 'AU Small Finance Bank', '2022-01-24 14:03:19', 'SUP001', NULL, NULL, 1),
(57, 'Airtel Payments Bank', '2022-02-09 14:03:19', 'SUP001', NULL, NULL, 1),
(58, 'Ujjivan Small Finance Bank', '2022-02-09 14:03:19', 'SUP001', NULL, NULL, 1),
(59, 'TamilNadu Garma Bank', '2022-03-11 14:03:19', 'SUP001', NULL, NULL, 1),
(60, 'Sarva Haryana Gramin Bank', '2022-04-29 11:50:00', 'SUP001', NULL, NULL, 1),
(61, 'Purvanchal Gramin Bank', '2022-05-05 11:50:00', 'SUP001', NULL, NULL, 1),
(62, 'India Post Payment Bank', '2022-07-15 14:34:26', 'SUP001', '2022-07-15 14:34:26', 'SUP001', 1),
(63, 'Baroda Rajasthan Kshetriya Gramin Bank', '2022-07-18 14:34:26', 'SUP001', '2022-07-18 14:34:26', 'SUP001', 1),
(64, 'Uttar Bihar Gramin Bank', '2023-05-31 14:33:45', 'SUP001', '2023-05-31 14:33:45', 'SUP001', 1),
(65, 'Aryavart Bank', '2023-06-16 12:03:45', 'SUP001', '2023-06-16 12:03:45', 'SUP001', 1),
(66, 'Suryodaybank', '2023-06-30 16:03:45', 'SUP001', '2023-06-30 16:03:45', 'SUP001', 1),
(67, 'Sarva U.P.Gramin Bank', '2023-09-19 16:03:45', 'SUP001', '2023-09-19 16:03:45', 'SUP001', 1),
(68, 'The Gujarat State Co-Operative Bank Ltd', '2023-09-29 11:03:08', 'SUP001', NULL, NULL, 1),
(69, 'Equitas Small Finance Bank Ltd', '2023-10-10 11:03:08', 'SUP001', NULL, NULL, 1),
(70, 'State Bank of Bikaner & Jaipur', '2024-01-25 11:44:00', 'SUP001', NULL, NULL, 1),
(71, 'Purvanchal Bank', '2024-06-03 11:44:00', 'SUP001', NULL, NULL, 1),
(72, 'The Ahmedabad Dist. CO-OP. Bank Ltd.', '2024-06-06 11:44:00', 'SUP001', NULL, NULL, 1),
(73, 'Baroda U.P Bank', '2024-06-10 11:44:00', 'SUP001', NULL, NULL, 1),
(74, 'Madhya Bihar Gramin Bank', '2024-08-01 11:44:00', 'SUP001', NULL, NULL, 1),
(75, 'The Lakshmi Vilas Bank Ltd', '2024-08-17 12:42:57', 'SUP001', NULL, NULL, 1),
(76, 'Prathama U.P. Gramin Bank', '2024-10-01 12:22:00', 'SUP001', NULL, NULL, 1),
(77, 'Madhyanchal Gramin Bank', '2024-10-29 12:22:00', 'SUP001', NULL, NULL, 1),
(78, 'Rajasthan Marudhara Gramin Bank', '2024-11-29 14:22:00', 'SUP001', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_branch_info`
--

CREATE TABLE `master_branch_info` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_category_info`
--

CREATE TABLE `master_category_info` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Active,1=De-Active',
  `created_by` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_certification_name_info`
--

CREATE TABLE `master_certification_name_info` (
  `name_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Active,1=De-Active',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_certification_type_info`
--

CREATE TABLE `master_certification_type_info` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Active,1=De-Active',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_circles_info`
--

CREATE TABLE `master_circles_info` (
  `mcr_id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `circle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_circles_info`
--

INSERT INTO `master_circles_info` (`mcr_id`, `agency_id`, `company_id`, `circle_name`, `addedby`, `added_date`) VALUES
(1, 1, 1, 'Andhra Pradesh', '', '2017-12-27 10:40:52'),
(2, 1, 1, 'Assam', '', '2017-12-27 10:40:52'),
(3, 1, 1, 'Bihar', '', '2017-12-27 10:40:53'),
(4, 1, 1, 'Chhattisgarh', '', '2017-12-27 10:40:53'),
(5, 1, 1, 'Chennai', '', '2017-12-27 10:40:53'),
(6, 1, 1, 'Delhi', '', '2017-12-27 10:40:53'),
(7, 1, 1, 'Delhi NHQ', '', '2017-12-27 10:40:53'),
(8, 1, 1, 'Goa', '', '2017-12-27 10:40:53'),
(9, 1, 1, 'Gujarat', '', '2017-12-27 10:40:53'),
(10, 1, 1, 'Guwahati', '', '2017-12-27 10:40:53'),
(11, 1, 1, 'Haryana', '', '2017-12-27 10:40:53'),
(12, 1, 1, 'Himachal Pradesh', '', '2017-12-27 10:40:53'),
(13, 1, 1, 'Jammu', '', '2017-12-27 10:40:53'),
(14, 1, 1, 'Kashmir', '', '2017-12-27 10:40:53'),
(15, 1, 1, 'Jharkhand', '', '2017-12-27 10:40:53'),
(16, 1, 1, 'Karnataka', '', '2017-12-27 10:40:53'),
(17, 1, 1, 'Kerala', '', '2017-12-27 10:40:53'),
(18, 1, 1, 'Kolkata', '', '2017-12-27 10:40:53'),
(19, 1, 1, 'Madhya Pradesh', '', '2017-12-27 10:40:53'),
(20, 1, 1, 'Maharashtra', '', '2017-12-27 10:40:53'),
(21, 1, 1, 'Manipur', '', '2017-12-27 10:40:53'),
(22, 1, 1, 'Mizoram', '', '2017-12-27 10:40:53'),
(23, 1, 1, 'Mumbai', '', '2017-12-27 10:40:53'),
(24, 1, 1, 'Mumbai NHQ', '', '2017-12-27 10:40:53'),
(25, 1, 1, 'North East', '', '2017-12-27 10:40:53'),
(26, 1, 1, 'Odisha', '', '2017-12-27 10:40:53'),
(27, 1, 1, 'Punjab', '', '2017-12-27 10:40:53'),
(28, 1, 1, 'Rajasthan', '', '2017-12-27 10:40:53'),
(29, 1, 1, 'Srinagar', '', '2017-12-27 10:40:53'),
(30, 1, 1, 'Tamil Nadu', '', '2017-12-27 10:40:53'),
(31, 1, 1, 'Telangana', '', '2017-12-27 10:40:53'),
(32, 1, 1, 'Uttar Pradesh (East)', '', '2017-12-27 10:40:53'),
(33, 1, 1, 'Uttar Pradesh (West)', '', '2017-12-27 10:40:53'),
(34, 1, 1, 'Uttarakhand', '', '2017-12-27 10:40:53'),
(35, 1, 1, 'West Bengal', '', '2017-12-27 10:40:53'),
(36, 1, 1, 'Central', 'Aayush', '2018-11-23 08:52:37'),
(37, 1, 1, 'Chandigarh', 'Aayush', '2018-11-23 08:55:10'),
(38, 1, 1, 'Dadra & Nagar Haweli', 'Aayush', '2018-11-23 08:58:10'),
(39, 1, 1, 'Nagaland', 'Aayush', '2018-11-23 09:01:29'),
(40, 1, 1, 'Tripura', 'Aayush', '2018-11-23 09:08:29'),
(41, 1, 1, 'Meghalaya', 'Aayush', '2018-11-23 09:11:22'),
(42, 1, 1, 'Arunanchal Pradesh', 'Aayush', '2018-11-23 09:11:58'),
(43, 1, 1, 'Sikkim', 'Aayush', '2018-11-23 09:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `master_committee`
--

CREATE TABLE `master_committee` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_committee_member`
--

CREATE TABLE `master_committee_member` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `committee_id` int(11) NOT NULL,
  `emp_code` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `deactivate_datetime` datetime DEFAULT NULL,
  `deactivate_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_companies_departments_info`
--

CREATE TABLE `master_companies_departments_info` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL COMMENT 'id from master_departments_info table',
  `fnf_clearance_required` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `head_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `deactivate_datetime` datetime DEFAULT NULL,
  `deactivate_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_companies_info`
--

CREATE TABLE `master_companies_info` (
  `mc_id` int(11) NOT NULL,
  `ma_id` int(11) NOT NULL,
  `mc_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `work_nature` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `cin` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Corporate Identity Number (CIN)',
  `roc` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Registrar of Company (RoC)',
  `registration_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `doi` varchar(15) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Date of Incorporation (DD/MM/YYYY)',
  `gst_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `emailid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hr_default_email_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empIdPrefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary_method` int(11) NOT NULL,
  `salay_fix_days` int(11) DEFAULT NULL,
  `fix_sub_method` enum('1','2') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1=working days salary calculation for resigns, 2 = checking notice period for resigns and calendar day method for resigns/new joinees',
  `companylogo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `signature` text COLLATE utf8_unicode_ci NOT NULL,
  `icard_template` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salary_slip_template` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `financial_year` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `auto_attendance_remider` tinyint(1) NOT NULL DEFAULT '0',
  `notify_mispunch` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `bank_payment_prefix` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_company_template`
--

CREATE TABLE `master_company_template` (
  `template_Id` int(11) NOT NULL,
  `company_Id` int(11) NOT NULL,
  `template_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_By` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_ctcstructure_info`
--

CREATE TABLE `master_ctcstructure_info` (
  `id` int(11) NOT NULL,
  `component_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_ctc_component_status_info`
--

CREATE TABLE `master_ctc_component_status_info` (
  `id` int(11) NOT NULL,
  `status_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_departments_info`
--

CREATE TABLE `master_departments_info` (
  `md_id` int(11) NOT NULL,
  `md_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_abbr` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_departments_info`
--

INSERT INTO `master_departments_info` (`md_id`, `md_name`, `department_abbr`, `lastUpdate`, `lastUpdatedBy`, `status`) VALUES
(1, 'College Sale', 'DCS', '2021-04-13 15:00:10', '', 1),
(2, 'Corporate Training', 'DCT', '2021-04-13 15:00:20', '', 1),
(3, 'IT Manpower', 'DIM', '2021-04-13 15:00:30', '', 1),
(4, 'Telecom Manpower', 'DTM', '2021-04-13 15:00:35', '', 1),
(5, 'Corporate Office', 'DCO', '2021-04-13 15:00:44', '', 1),
(6, 'Enterprise Sale', 'DES', '2021-04-13 15:00:49', '', 1),
(7, 'DDUGKY', 'DDU', '2021-04-13 15:00:54', '', 1),
(8, 'Retail', 'DRE', '2021-04-13 15:00:57', '', 1),
(9, 'Project Consulting', 'DPC', '2021-04-13 15:01:03', '', 1),
(10, 'Industrial', 'DIN', '2021-04-13 15:01:07', '', 1),
(11, 'Human Resources (HR)', 'DHR', '2022-05-25 15:04:03', 'EC-098', 1),
(12, 'Accounts', 'FIN', '2021-07-09 10:46:31', 'EC-098', 1),
(13, 'Information Technology (IT)', 'DIT', '2021-04-13 15:01:23', 'EC-098', 1),
(14, 'Administration', 'DAD', '2021-05-20 14:04:19', '2021-05-20 11:34:19', 1),
(15, 'Project Operations', 'DPO', '2021-07-20 14:04:19', 'SUP001', 1),
(16, 'UPSDM', 'UPS', '2023-01-02 21:56:03', 'SUP001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_designations_info`
--

CREATE TABLE `master_designations_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duties` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `skills_qualification_needed` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `experience_needed` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `any_other_specific_criteria` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `min_salary` float NOT NULL,
  `max_salary` float NOT NULL,
  `reporting_designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=live,0=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_designations_info`
--

INSERT INTO `master_designations_info` (`id`, `name`, `duties`, `skills_qualification_needed`, `experience_needed`, `any_other_specific_criteria`, `min_salary`, `max_salary`, `reporting_designation`, `create_by`, `create_datetime`, `update_by`, `update_datetime`, `status`) VALUES
(1, 'Sales & Marketing Head', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(2, 'Technical Head', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(3, 'Accounts Manager', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(4, 'Purchase', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(5, 'Field Executive', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(6, 'Team Leader Sales & Marketing', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(7, 'Engineer Sales', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(8, 'Engineer Mechnical', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(9, 'Office boy', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(10, 'HR Manager', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(11, 'Admin Manager', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(12, 'Mechnical Designer', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(13, 'Project Head', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(14, 'Helper', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(15, 'Electrician', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(16, 'Office Co-ordinater', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(17, 'Engineer Application', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(18, 'Junior Engineer Sales', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(20, 'Senior Engineer Sales', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(21, 'Senior Application Engineer', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(22, 'Junior Application Engineer', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(23, 'Production Manager', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(24, 'Supervisor', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(25, 'Account Assistant', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(26, 'Store Assistant', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(27, 'Sales Coordinator', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(28, 'Director', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(29, 'Senior Electrician', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(30, 'Junior Electrician', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(31, 'Designer', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(32, 'Production Incharge', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(33, 'Sales Executive', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(34, 'Store Incharge', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(35, 'Office Executive', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(36, 'Accountant', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(37, 'Trainee', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(38, 'Intern', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 1),
(39, 'Android Developer', '', '', '', '', 0, 0, '', 'sup001', '2019-10-21 00:00:00', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_divisions`
--

CREATE TABLE `master_divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_duration_info`
--

CREATE TABLE `master_duration_info` (
  `id` int(11) NOT NULL,
  `duration_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `day_duration` float DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_duration_info`
--

INSERT INTO `master_duration_info` (`id`, `duration_name`, `day_duration`, `description`, `create_date`, `create_by`, `update_date`, `update_by`, `status`) VALUES
(1, 'First Half Day', 0.5, 'This is fist half day of the company working day of the company', '2018-06-29 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(2, 'Second Half Day', 0.5, 'This is second half day of the company working day of the company', '2018-06-29 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(3, 'Full Day', 1, 'This is full day of the company working day of the company.', '2018-06-29 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(4, 'Other', NULL, 'This will use when an employee takes more than one day e.g 1.5,2.5 6.5 day etc.', '2018-06-29 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(5, 'First Quarter', 0.25, 'First Quarter (10:00 AM To 12:00 PM)', '2021-03-31 13:12:32', 'sup001', '0000-00-00 00:00:00', '', 1),
(6, 'Three-quarters', 0.75, 'First Quarter (10:00 AM To 12:00 PM)', '2021-03-31 13:12:32', 'sup001', '0000-00-00 00:00:00', '', 1),
(7, 'Last Quarter', 0.25, 'Last Quarter', '2024-02-03 16:11:54', 'sup001', '2024-02-03 16:11:54', 'sup001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_expense_locations`
--

CREATE TABLE `master_expense_locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_expense_types`
--

CREATE TABLE `master_expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_exp_tourda_rate_info`
--

CREATE TABLE `master_exp_tourda_rate_info` (
  `id` int(11) NOT NULL,
  `daily_allowance_rate` int(11) NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_hiringreference_info`
--

CREATE TABLE `master_hiringreference_info` (
  `hr_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_hiringstatus_info`
--

CREATE TABLE `master_hiringstatus_info` (
  `hs_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_installment_type`
--

CREATE TABLE `master_installment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `divisor` int(11) DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_leavestatus_info`
--

CREATE TABLE `master_leavestatus_info` (
  `ls_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_leavestatus_info`
--

INSERT INTO `master_leavestatus_info` (`ls_id`, `name`) VALUES
(1, 'Pending'),
(2, 'Cancelled'),
(3, 'Approved'),
(4, 'Rejected'),
(5, 'Taken');

-- --------------------------------------------------------

--
-- Table structure for table `master_leavetype_info`
--

CREATE TABLE `master_leavetype_info` (
  `lt_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_leavetype_info`
--

INSERT INTO `master_leavetype_info` (`lt_id`, `name`, `short_name`, `lastUpdated`, `lastUpdatedBy`, `status`) VALUES
(1, 'Casual Leave', 'CL', '2018-09-25 10:37:39', 'indosuperadmin', 1),
(2, 'Sick Leave', 'SL', '2018-09-25 10:37:48', 'indosuperadmin', 1),
(3, 'Comp Off', 'CO', '2018-09-25 10:38:00', 'indosuperadmin', 1),
(4, 'Business Trip', 'OD', '2018-09-25 10:38:10', 'indosuperadmin', 1),
(5, 'Leave Without Pay', 'LWP', '2018-09-25 10:38:19', 'indosuperadmin', 1),
(6, 'Paid Leave', 'EL', '2018-09-25 10:38:25', 'indosuperadmin', 1),
(7, 'Restricted/Floating', 'RH', '2021-04-28 09:19:25', 'indosuperadmin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_loan_category`
--

CREATE TABLE `master_loan_category` (
  `id` int(11) NOT NULL,
  `loan_type` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_loan_category`
--

INSERT INTO `master_loan_category` (`id`, `loan_type`, `created_date`, `created_by`, `status`) VALUES
(1, 'Car Loan', '2021-12-06 00:00:00', 'sup001', 1),
(2, 'Home Loan', '2021-12-06 00:00:00', 'sup001', 1),
(3, 'Soft Loan', '2021-12-06 00:00:00', 'sup001', 1),
(4, 'Personal Loan', '2021-12-06 00:00:00', 'sup001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_locations`
--

CREATE TABLE `master_locations` (
  `id` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tehsil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_dateime` datetime DEFAULT NULL,
  `update_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive','Pending For Review') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_lwf_info`
--

CREATE TABLE `master_lwf_info` (
  `lwf_id` int(11) NOT NULL,
  `base_location` int(11) NOT NULL,
  `lwf_employee` float NOT NULL,
  `lwf_employer` float NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=activate,1=de-activate',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_metro_cities`
--

CREATE TABLE `master_metro_cities` (
  `id` int(11) NOT NULL,
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_metro_types`
--

CREATE TABLE `master_metro_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_min_wage_info`
--

CREATE TABLE `master_min_wage_info` (
  `wage_id` int(11) NOT NULL,
  `mcr_id` int(11) DEFAULT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `unskd_per_day` double NOT NULL,
  `unskd_per_month` double NOT NULL,
  `semiskd_per_day` double NOT NULL,
  `semiskd_per_month` double NOT NULL,
  `skd_per_day` double NOT NULL,
  `skd_per_month` double NOT NULL,
  `highskd_per_day` double NOT NULL,
  `highskd_per_month` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_min_wage_info`
--

INSERT INTO `master_min_wage_info` (`wage_id`, `mcr_id`, `region`, `from_date`, `to_date`, `unskd_per_day`, `unskd_per_month`, `semiskd_per_day`, `semiskd_per_month`, `skd_per_day`, `skd_per_month`, `highskd_per_day`, `highskd_per_month`, `status`, `created_by`, `created_date`) VALUES
(1, 36, 'A', '2018-10-01', '2018-03-31', 355, 9230, 389, 10114, 422, 10972, 467, 12142, 1, 'Abhay', '2019-04-29 14:43:21'),
(2, 36, 'B', '2018-10-01', '2018-03-31', 324, 8424, 357, 9282, 389, 10114, 434, 11284, 1, 'Abhay', '2019-04-29 14:44:31'),
(3, 36, 'C', '2018-10-01', '2018-03-31', 321, 8346, 328, 8528, 356, 9256, 389, 10114, 1, 'Abhay', '2019-04-29 14:45:54'),
(4, 1, 'South', '2018-10-01', '2019-03-31', 328.93, 8552.25, 377.66, 9819.25, 462.94, 12036.5, 577.46, 15013.95, 1, 'Abhay', '2019-04-29 14:23:33'),
(5, 2, 'East', '2017-05-13', '2018-05-31', 288.46, 7500, 334.62, 8700, 403.85, 10500, 530.77, 13800, 1, 'Abhay', '2019-02-21 12:24:50'),
(6, 3, 'East', '2018-10-01', '2019-03-31', 257, 6682, 268, 6968, 325, 8450, 396, 10296, 1, 'Abhay', '2019-03-25 17:04:42'),
(7, 37, 'North', '2018-10-01', '2019-03-31', 376, 9774, 382, 9924, 393.23, 10224, 417.26, 10849, 1, 'Abhay', '2019-07-05 10:30:42'),
(8, 4, 'Central', '2018-10-01', '2019-03-31', 333, 8660, 358, 9310, 388, 10090, 418, 10870, 1, 'Abhay', '2019-03-25 17:06:08'),
(9, 38, '', '2018-04-01', '2019-09-30', 294.1, 7646.6, 302.1, 7854.6, 310.1, 8062.6, 0, 0, 1, 'Abhay', '2019-12-03 16:15:40'),
(10, 6, 'North', '2018-11-01', '2019-10-21', 538, 14000, 592, 15400, 652, 16962, 0, 0, 1, 'Abhay', '2019-11-04 15:26:08'),
(11, 8, 'West', '2018-10-01', '2019-03-31', 328, 8528, 386, 10036, 441, 11466, 0, 0, 1, 'Abhay', '2019-07-05 10:32:12'),
(12, 9, 'West', '2018-10-01', '2019-03-31', 312.2, 8117.2, 320.2, 8325.2, 329.2, 8559.2, 0, 0, 1, 'Abhay', '2019-04-29 14:24:55'),
(13, 11, 'North', '2018-07-01', '2018-12-31', 328.52, 8541.52, 344.95, 8968.7, 380.3, 9887.8, 419.28, 10901.28, 1, 'Abhay', '2019-02-21 12:08:13'),
(14, 12, 'North', '2018-04-01', '2019-03-31', 225, 6750, 240.55, 7217, 269.17, 8075, 282.12, 8464, 1, 'Abhay', '2019-09-27 16:55:17'),
(15, 13, 'North', '2017-11-01', '0000-00-00', 225, 5850, 325, 8450, 350, 9100, 400, 10400, 1, 'Anoop Kumar', '2022-10-29 10:33:05'),
(16, 15, 'East', '2018-10-01', '2019-03-31', 239.04, 6215.11, 250.42, 6511.07, 330.1, 8582.78, 381.33, 9914.59, 1, 'Abhay', '2019-07-05 10:34:31'),
(17, 16, 'South', '2018-04-01', '2019-03-31', 471.92, 12270, 516.5, 13429, 565.54, 14704, 619.46, 16106, 1, 'Abhay', '2019-03-25 17:07:31'),
(18, 17, 'South', '2018-04-01', '2019-01-31', 407.1538462, 10586, 431.3846154, 11216, 439.4615385, 11426, 447.5384615, 11636, 1, 'Abhay', '2019-04-29 14:29:25'),
(19, 19, 'Central', '2018-10-01', '2019-03-31', 283.65, 7375, 316.62, 8232, 369.62, 9610, 419.62, 10910, 1, 'Abhay', '2019-07-05 10:36:49'),
(20, 20, 'West', '2018-07-01', '2018-12-31', 349.13, 9077.25, 365.28, 9497.25, 381.43, 9917.25, 0, 0, 1, 'Super Admin', '2019-02-15 14:06:32'),
(21, 22, 'East', '2016-04-01', '2018-09-30', 270, 8100, 300, 9000, 370, 11100, 460, 13800, 1, 'Abhay', '2019-04-29 14:31:58'),
(22, 39, 'East', '2012-06-15', '2019-05-31', 115, 3450, 125, 3750, 135, 4050, 145, 4350, 1, 'Abhay', '2019-08-05 15:48:26'),
(23, 26, 'East', '2018-10-30', '2019-03-31', 280, 7280, 320, 8320, 370, 9620, 430, 11180, 1, 'Abhay', '2019-07-05 10:54:36'),
(24, 27, 'North', '2018-09-01', '2019-02-28', 311.12, 8077.71, 341.12, 8857.71, 375.62, 9754.71, 415.32, 10786.71, 1, 'Abhay', '2019-07-05 10:55:54'),
(25, 28, 'North', '2018-01-01', '2019-04-30', 213, 5538, 223, 5798, 233, 6058, 283, 7358, 1, 'Abhay', '2019-09-27 16:58:56'),
(26, 30, 'South', '2017-04-01', '2018-03-31', 245.38, 6380, 248.62, 6464, 249.81, 6495, 261.81, 6807, 1, 'Abhay', '2019-03-25 17:08:59'),
(27, 31, 'South', '2018-04-01', '2018-09-30', 337.26, 8768.8, 368.8, 9588.8, 376.57, 9790.8, 408.68, 10625.8, 1, 'Abhay', '2019-02-01 12:12:15'),
(28, 40, 'East', '2018-04-01', '2019-03-31', 217.35, 5651, 238.46, 6200, 266.65, 6933, 0, 0, 1, 'Abhay', '2019-07-05 10:57:04'),
(29, 32, 'North', '2018-10-01', '2019-03-31', 296.21, 7701.46, 324.73, 8442.98, 363.75, 9457.5, 0, 0, 1, 'Abhay', '2019-04-29 14:35:36'),
(30, 34, 'North', '2018-10-01', '2019-03-31', 260.58, 6775, 279, 7255, 297.5, 7735, 328.65, 8545, 1, 'Abhay', '2019-04-29 14:38:56'),
(31, 35, 'East', '2018-07-01', '2018-12-31', 299.0384615, 7775, 329, 8554, 361.8846154, 9409, 398.0384615, 10349, 1, 'Abhay', '2019-02-21 11:35:39'),
(32, 41, 'North-East', '2018-04-01', '2018-09-30', 196, 5096, 208, 5408, 220, 5720, 244, 6344, 1, 'Abhay', '2019-04-29 14:39:58'),
(33, 42, 'North-East', '2016-04-01', '0000-00-00', 200, 6000, 210, 6300, 220, 6600, 0, 0, 1, 'Anoop Kumar', '2023-08-19 10:55:16'),
(34, 21, 'North-East', '2016-12-01', '0000-00-00', 225, 6750, 248, 7440, 273, 8190, 0, 0, 0, 'Aayush Rathi', '2018-11-26 11:58:00'),
(35, 43, 'North-East', '2017-09-15', '0000-00-00', 300, 7800, 320, 8320, 335, 8710, 365, 9490, 1, 'Anoop Kumar', '2022-11-29 16:21:04'),
(36, 14, 'North', '2017-11-01', '0000-00-00', 225, 5850, 325, 8450, 350, 9100, 400, 10400, 1, 'Anoop Kumar', '2022-10-29 10:35:11'),
(37, 31, 'South', '2018-10-01', '2019-03-31', 339.23, 8820, 370.77, 9640, 378.54, 9842, 410.65, 10677, 1, 'Abhay', '2019-04-29 14:33:13'),
(38, 20, 'West', '2019-01-01', '2019-06-30', 367.66, 9559.2, 383.82, 9979.2, 399.97, 10399.2, 0, 0, 1, 'Abhay', '2019-08-05 15:51:14'),
(39, 35, 'East', '2019-01-01', '2019-06-30', 308, 8005, 339, 8806, 373, 9687, 410, 10655, 1, 'Abhay', '2019-08-05 15:58:23'),
(40, 11, 'North', '2019-01-01', '2019-06-30', 339.51, 8827.4, 356.49, 9268.75, 393.03, 10218.79, 433.31, 11266.23, 1, 'Abhay', '2019-09-27 17:03:44'),
(41, 2, 'East', '2018-06-01', '2019-05-31', 254.91, 7647.3, 297.4, 8922, 371.75, 11152.5, 477.98, 14339.4, 1, 'Abhay', '2020-03-04 11:31:39'),
(42, 3, 'East', '2019-04-01', '2019-09-30', 268, 6968, 279, 7254, 340, 8840, 415, 10790, 1, 'Abhay', '2019-10-24 14:27:06'),
(43, 4, 'Central', '2019-04-01', '2019-09-30', 343.08, 8920, 368.08, 9570, 398.08, 10350, 428.08, 11130, 1, 'Abhay', '2019-10-24 14:31:06'),
(44, 16, 'South', '2019-04-01', '2020-03-31', 479.42, 12465.03, 523.99, 13623.81, 573.02, 14898.47, 626.95, 16300.6, 1, 'Abhay', '2020-03-24 14:13:11'),
(45, 30, 'South', '2019-04-01', '2020-03-31', 342.12, 8895, 346.38, 9006, 347.96, 9047, 363.81, 9459, 1, 'Abhay', '2020-03-24 14:15:11'),
(46, 1, 'South', '2019-04-01', '2019-09-30', 350.02, 9100.4, 366.09, 9518.4, 373.86, 9720.4, 405.98, 10555.4, 1, 'Abhay', '2019-10-24 14:24:36'),
(47, 9, 'West', '2019-04-01', '2019-09-30', 315.9, 8213.4, 323.9, 8421.4, 332.9, 8655.4, 0, 0, 1, 'Abhay', '2019-10-24 14:37:08'),
(48, 17, 'South', '2019-02-01', '2019-06-30', 409.15, 10638, 425.31, 11058, 441.46, 11478, 449.54, 11688, 1, 'Abhay', '2019-09-27 17:07:00'),
(49, 22, 'East', '2018-10-01', '0000-00-00', 380, 11400, 420, 12600, 520, 15600, 640, 19200, 1, 'Anoop Kumar', '2023-07-19 15:44:39'),
(50, 31, 'South', '2019-04-01', '2019-09-30', 366.02, 9516.4, 382.09, 9934.4, 389.86, 10136.4, 421.98, 10971.4, 1, 'Abhay', '2019-10-24 14:42:04'),
(51, 32, 'North', '2019-04-01', '2019-09-30', 308.18, 8012.73, 339, 8814, 379.73, 9873.08, 0, 0, 1, 'Abhay', '2019-10-24 14:43:44'),
(52, 33, 'North', '2019-04-01', '2019-09-30', 308.18, 8012.73, 339, 8814, 379.73, 9873.08, 0, 0, 1, 'Abhay', '2019-10-24 14:44:54'),
(53, 34, 'North', '2019-04-01', '2019-09-30', 320.42, 8331, 343.23, 8924, 366.08, 9518, 404.62, 10520, 1, 'Abhay', '2019-10-24 14:47:26'),
(54, 41, 'North-East', '2018-10-01', '2019-03-31', 300, 7800, 340, 8840, 380, 9880, 420, 10920, 1, 'Abhay', '2019-12-03 16:21:33'),
(55, 36, 'A', '2019-04-01', '2019-09-30', 584, 15184, 645, 16770, 710, 18460, 772, 20072, 1, 'Abhay', '2019-10-24 14:18:57'),
(56, 36, 'B', '2019-04-01', '2019-09-30', 487, 12662, 551, 14326, 645, 16770, 710, 18460, 1, 'Abhay', '2019-10-24 14:20:11'),
(57, 36, 'C', '2019-04-01', '2019-09-30', 390, 10140, 457, 11882, 551, 14326, 645, 16770, 1, 'Abhay', '2019-10-24 14:22:21'),
(58, 5, 'South', '2019-04-01', '2020-03-31', 342.12, 8895, 346.38, 9006, 347.96, 9047, 363.81, 9459, 1, 'Abhay', '2020-03-24 14:16:09'),
(59, 7, 'North', '2018-11-01', '2019-10-21', 538, 14000, 592, 15400, 652, 16962, 0, 0, 1, 'Abhay', '2019-11-04 15:27:25'),
(60, 10, 'East', '2018-06-01', '2019-05-31', 254.91, 7647.3, 297.4, 8922, 371.75, 11152.5, 477.98, 14339.4, 1, 'Abhay', '2020-03-04 11:32:49'),
(61, 18, 'East', '2019-01-01', '2019-06-30', 308, 8005, 339, 8806, 373, 9687, 410, 10655, 1, 'Abhay', '2019-08-05 15:59:49'),
(62, 23, 'West', '2019-01-01', '2019-06-30', 367.66, 9559.2, 383.82, 9979.2, 399.97, 10399.2, 0, 0, 1, 'Abhay', '2019-08-05 15:55:10'),
(63, 24, 'West', '2019-01-01', '2019-06-30', 367.66, 9559.2, 383.82, 9979.2, 399.97, 10399.2, 0, 0, 1, 'Abhay', '2019-08-05 15:56:24'),
(64, 29, 'North', '2017-11-01', '0000-00-00', 225, 5850, 325, 8450, 350, 9100, 400, 10400, 0, 'Abhay', '2019-04-29 14:57:02'),
(65, 37, 'North', '2019-04-01', '2019-09-30', 386, 10047, 396, 10297, 412, 10722, 428, 11122, 1, 'Abhay', '2019-12-03 16:13:31'),
(66, 8, 'West', '2019-04-01', '2019-09-30', 340, 8840, 398, 10348, 453, 11778, 0, 0, 1, 'Abhay', '2019-12-03 16:17:07'),
(67, 15, 'East', '2019-04-01', '2019-09-30', 249.84, 6495.76, 261.73, 6805.08, 345.01, 8970.33, 398.55, 10362.28, 1, 'Abhay', '2019-10-30 10:34:54'),
(68, 19, 'Central', '2019-04-01', '2019-09-30', 296, 7700, 329, 8557, 382, 9935, 432, 11235, 1, 'Abhay', '2019-10-24 14:38:46'),
(69, 26, 'East', '2019-04-01', '2019-09-30', 286.3, 7443.8, 326.3, 8483.8, 376.3, 9783.8, 436.3, 11343.8, 1, 'Abhay', '2019-12-03 16:19:56'),
(70, 27, 'North', '2019-03-01', '2019-08-31', 325.53, 8451.95, 355.53, 9231.95, 390.03, 10128.95, 429.73, 11160.95, 1, 'Abhay', '2019-11-04 15:12:34'),
(71, 40, 'East', '2019-04-01', '2020-03-31', 226.54, 5890, 248.58, 6463, 277.96, 7227, 0, 0, 1, 'Abhay', '2020-07-28 11:35:16'),
(72, 39, 'East', '2019-06-01', '0000-00-00', 176, 5280, 210, 6300, 235, 7050, 0, 0, 0, 'Abhay', '2019-08-05 15:48:26'),
(73, 20, 'West', '2019-07-24', '2019-12-31', 385.42, 10021, 417.54, 10856, 447.38, 11632, 0, 0, 1, 'Abhay', '2020-03-04 11:35:22'),
(74, 23, 'West', '2019-07-24', '2019-12-31', 385.42, 10021, 417.54, 10856, 447.38, 11632, 0, 0, 1, 'Abhay', '2020-03-04 11:36:30'),
(75, 24, 'West', '2019-07-24', '2019-12-31', 385.42, 10021, 417.54, 10856, 447.38, 11632, 0, 0, 1, 'Abhay', '2020-03-04 11:37:21'),
(76, 35, 'East', '2019-07-01', '2019-12-31', 315, 8177, 346, 8996, 381, 9895, 419, 10884, 1, 'Abhay', '2020-03-04 11:39:48'),
(77, 18, 'East', '2019-07-01', '2019-12-31', 315, 8177, 346, 8996, 381, 9895, 419, 10884, 1, 'Abhay', '2020-03-04 11:40:49'),
(78, 12, 'North', '2019-04-01', '2020-03-31', 250, 7500, 265.55, 7967, 294.17, 8825, 307.12, 9214, 1, 'Abhay', '2020-07-31 09:57:30'),
(79, 28, 'North', '2019-05-01', '2020-06-30', 225, 5850, 237, 6162, 249, 6474, 299, 7774, 1, 'Abhay', '2021-08-26 15:05:57'),
(80, 11, 'North', '2019-07-01', '2019-12-31', 347.09, 9024.24, 364.44, 9475.43, 401.79, 10446.65, 442.98, 11517.45, 1, 'Abhay', '2020-10-08 11:41:57'),
(81, 17, 'South', '2019-07-01', '2019-11-30', 415.15, 10794, 431.31, 11214, 447.46, 11634, 455.54, 11844, 1, 'Abhay', '2020-03-04 11:42:36'),
(82, 36, 'A', '2019-10-01', '2020-03-31', 603, 15678, 666, 17316, 733, 19058, 797, 20722, 1, 'Abhay', '2020-05-29 13:39:20'),
(83, 36, 'B', '2019-10-01', '2020-03-31', 503, 13078, 569, 14794, 666, 17316, 733, 19058, 1, 'Abhay', '2020-05-29 13:40:11'),
(84, 36, 'C', '2019-10-01', '2020-03-31', 403, 10478, 472, 12272, 569, 14794, 666, 17316, 1, 'Abhay', '2020-05-29 13:41:20'),
(85, 1, 'South', '2019-10-01', '2020-03-31', 359.37, 9343.6, 375.45, 9761.6, 383.22, 9963.6, 415.33, 10798.6, 1, 'Abhay', '2020-05-29 13:43:02'),
(86, 3, 'East', '2019-10-01', '2020-03-31', 277, 7202, 289, 7514, 352, 9152, 429, 11154, 1, 'Abhay', '2020-05-29 12:52:46'),
(87, 4, 'Central', '2019-10-01', '2020-03-31', 350.77, 9120, 375.77, 9770, 405.77, 10550, 435.77, 11330, 1, 'Abhay', '2020-05-29 12:54:13'),
(88, 9, 'West', '2019-10-01', '2020-03-31', 318.4, 8278.4, 326.4, 8486.4, 335.4, 8720.4, 0, 0, 1, 'Abhay', '2020-05-29 12:57:31'),
(89, 19, 'Central', '2019-10-01', '2020-03-31', 306, 7950, 339, 8807, 392, 10185, 442, 11485, 1, 'Abhay', '2020-05-29 13:00:53'),
(90, 31, 'South', '2019-10-01', '2020-03-31', 376.6, 9791.6, 392.68, 10209.6, 400.45, 10411.6, 432.56, 11246.6, 1, 'Abhay', '2020-05-29 13:56:31'),
(91, 32, 'North', '2019-10-01', '2020-03-31', 318.42, 8278.94, 350.26, 9106.83, 392.35, 10201.09, 0, 0, 1, 'Abhay', '2020-05-29 13:11:06'),
(92, 33, 'North', '2019-10-01', '2020-03-31', 318.42, 8278.94, 350.26, 9106.83, 392.35, 10201.09, 0, 0, 1, 'Abhay', '2020-05-29 13:12:24'),
(93, 34, 'North', '2019-10-01', '2020-03-31', 328.12, 8531, 350.92, 9124, 373.77, 9718, 412.31, 10720, 1, 'Abhay', '2020-05-29 13:13:50'),
(94, 15, 'East', '2019-10-24', '2020-03-31', 274.81, 7145.06, 287.9, 7485.4, 379.51, 9867.26, 438.39, 11398.14, 1, 'Abhay', '2020-10-08 11:44:33'),
(95, 27, 'North', '2019-09-01', '2020-02-29', 338.05, 8776.83, 368.05, 9556.83, 402.55, 10453.83, 442.25, 11485.83, 1, 'Abhay', '2021-12-27 16:14:50'),
(96, 6, 'North', '2019-10-22', '2020-03-31', 571, 14842, 629, 16341, 692, 17991, 0, 0, 1, 'Abhay', '2020-12-18 10:14:37'),
(97, 7, 'North', '2019-10-22', '2020-03-31', 571, 14842, 629, 16341, 692, 17991, 0, 0, 1, 'Abhay', '2020-12-18 10:15:48'),
(98, 37, 'North', '2019-10-01', '2020-03-31', 401, 10425, 411, 10675, 427, 11100, 442, 11500, 1, 'Abhay', '2021-03-01 11:52:45'),
(99, 38, '', '2019-10-01', '2020-03-31', 310.4, 8070.4, 318.4, 8278.4, 326.4, 8486.4, 0, 0, 1, 'Abhay', '2020-07-28 11:30:28'),
(100, 8, 'West', '2019-10-01', '2020-03-31', 350, 9100, 408, 10608, 463, 12038, 0, 0, 1, 'Abhay', '2020-05-29 12:56:16'),
(101, 26, 'East', '2019-10-01', '2020-03-31', 298, 7748, 338, 8788, 388, 10088, 448, 11648, 1, 'Abhay', '2020-07-28 11:34:13'),
(102, 41, 'North-East', '2019-04-01', '2019-09-30', 314, 8164, 356, 9256, 398, 10348, 439, 11414, 1, 'Abhay', '2020-03-04 11:45:04'),
(103, 2, 'East', '2019-06-01', '2019-11-30', 272.02, 8160.6, 317.35, 9520.6, 396.7, 11901, 510.03, 15300.9, 1, 'Abhay', '2020-07-28 11:27:15'),
(104, 10, 'East', '2019-06-01', '2019-11-30', 272.02, 8160.6, 317.35, 9520.6, 396.7, 11901, 510.03, 15300.9, 1, 'Abhay', '2020-07-28 11:28:23'),
(105, 20, 'West', '2020-01-01', '2020-06-30', 414.42, 10775, 446.54, 11610, 476.38, 12386, 0, 0, 1, 'Abhay', '2020-09-03 14:48:27'),
(106, 23, 'West', '2020-01-01', '2020-06-30', 414.42, 10775, 446.54, 11610, 476.38, 12386, 0, 0, 1, 'Abhay', '2020-09-03 14:46:01'),
(107, 24, 'West', '2020-01-01', '2020-06-30', 414.42, 10775, 446.54, 11610, 476.38, 12386, 0, 0, 1, 'Abhay', '2020-09-03 14:47:00'),
(108, 35, 'East', '2020-01-01', '2020-06-30', 321, 8349, 353, 9185, 389, 10104, 427, 11113, 1, 'Abhay', '2020-07-28 11:36:52'),
(109, 18, 'East', '2020-01-01', '2020-06-30', 321, 8349, 353, 9185, 389, 10104, 427, 11113, 1, 'Abhay', '2020-07-28 11:37:56'),
(110, 17, 'South', '2019-12-01', '2019-12-31', 443.31, 11526, 451.38, 11736, 459.46, 11946, 467.54, 12156, 1, 'Abhay', '2020-03-24 18:00:09'),
(111, 41, 'North-East', '2019-10-01', '2020-03-31', 324, 8424, 368, 9568, 411, 10686, 454, 11804, 1, 'Abhay', '2020-07-28 11:39:21'),
(112, 17, 'South', '2020-01-01', '2020-04-30', 445.31, 11578, 453.38, 11788, 461.46, 11998, 469.54, 12208, 1, 'Abhay', '2020-07-28 11:32:08'),
(113, 16, 'South', '2020-04-01', '2021-03-31', 495, 12882.63, 540, 14041.41, 589, 15316.07, 643, 16718.2, 1, 'Abhay', '2021-04-24 11:57:20'),
(114, 30, 'South', '2020-04-01', '2021-03-31', 360.81, 9381, 365.08, 9492, 366.65, 9533, 382.5, 9945, 1, 'Abhay', '2021-04-24 11:57:20'),
(115, 5, 'South', '2020-04-01', '2021-03-31', 360.81, 9381, 365.08, 9492, 366.65, 9533, 382.5, 9945, 1, 'Abhay', '2021-04-24 11:57:20'),
(116, 3, 'East', '2020-04-01', '2020-09-30', 287, 7462, 299, 7774, 364, 9464, 444, 11544, 1, 'Abhay', '2020-10-20 15:20:08'),
(117, 4, 'Central', '2020-04-01', '2020-09-30', 360.77, 9380, 385.77, 10030, 415.77, 10810, 445.77, 11590, 1, 'Abhay', '2020-10-20 15:21:19'),
(118, 8, 'West', '2020-04-01', '2020-09-30', 362, 9412, 420, 10920, 475, 12350, 0, 0, 1, 'Abhay', '2021-04-24 11:57:20'),
(119, 9, 'West', '2020-04-01', '2020-09-30', 332.5, 8645, 340.5, 8853, 349.5, 9087, 0, 0, 1, 'Abhay', '2020-10-20 15:22:25'),
(120, 19, 'Central', '2020-04-01', '2020-09-30', 318, 8275, 351, 9132, 404, 10510, 454, 11810, 1, 'Abhay', '2020-10-20 15:23:29'),
(121, 32, 'North', '2020-04-01', '2020-09-30', 331.73, 8625, 364.9, 9487.5, 408.75, 10627.5, 0, 0, 1, 'Abhay', '2020-10-20 15:25:52'),
(122, 33, 'North', '2020-04-01', '2020-09-30', 331.73, 8625, 364.9, 9487.5, 408.75, 10627.5, 0, 0, 1, 'Abhay', '2020-10-20 15:26:50'),
(123, 34, 'North', '2020-04-01', '2020-09-30', 338.12, 8791, 360.92, 9384, 383.77, 9978, 422.31, 10980, 1, 'Abhay', '2020-10-20 15:28:15'),
(124, 36, 'A', '2020-04-01', '2020-09-30', 629, 16354, 695, 18070, 764, 19864, 831, 21606, 1, 'Abhay', '2020-10-20 15:14:48'),
(125, 36, 'B', '2020-04-01', '2020-09-30', 525, 13650, 593, 15418, 695, 18070, 764, 19864, 1, 'Abhay', '2020-10-20 15:15:41'),
(126, 36, 'C', '2020-04-01', '2020-09-30', 420, 10920, 492, 12792, 593, 15418, 695, 18070, 1, 'Abhay', '2020-10-20 15:16:48'),
(127, 1, 'South', '2020-04-01', '2020-09-30', 371.43, 9657.2, 387.51, 10075.2, 395.28, 10277.2, 427.39, 11112.2, 1, 'Abhay', '2020-10-20 15:19:04'),
(128, 31, 'South', '2020-04-01', '2020-09-30', 391.38, 10176, 407.46, 10594, 415.23, 10796, 447.35, 11631, 1, 'Abhay', '2020-10-20 15:24:44'),
(129, 2, 'East', '2019-12-01', '2020-05-31', 282.38, 8471.4, 329.45, 9883.6, 411.82, 12354.6, 529.47, 15884.1, 1, 'Abhay', '2020-12-09 10:56:32'),
(130, 10, 'East', '2019-12-01', '2020-05-31', 282.38, 8471.4, 329.45, 9883.6, 411.82, 12354.6, 529.47, 15884.1, 1, 'Abhay', '2020-12-09 10:58:32'),
(131, 38, '', '2020-04-01', '2020-09-30', 324.5, 8437, 332.5, 8645, 340.5, 8853, 0, 0, 1, 'Abhay', '2021-06-01 13:39:22'),
(132, 17, 'South', '2020-05-01', '2020-08-31', 447.31, 11630, 455.38, 11840, 463.46, 12050, 471.54, 12260, 1, 'Abhay', '2020-12-09 11:17:50'),
(133, 26, 'East', '2020-04-01', '2020-09-30', 303.4, 7888.4, 343.4, 8928.4, 393.4, 10228.4, 453.4, 11788.4, 1, 'Abhay', '2020-10-22 10:35:11'),
(134, 40, 'East', '2020-04-01', '2021-03-31', 227.65, 5919, 249.81, 6495, 279.35, 7263, 0, 0, 1, 'Abhay', '2021-06-28 10:37:09'),
(135, 35, 'East', '2020-07-01', '2020-12-31', 329, 8550, 362, 9406, 398, 10347, 438, 11380, 1, 'Abhay', '2021-02-01 14:58:15'),
(136, 18, 'East', '2020-07-01', '2020-12-31', 329, 8550, 362, 9406, 398, 10347, 438, 11380, 1, 'Abhay', '2021-02-01 14:57:27'),
(137, 41, 'North-East', '2020-04-01', '2020-09-30', 338, 8788, 383, 9958, 428, 11128, 473, 12298, 1, 'Abhay', '2020-12-09 11:26:25'),
(138, 12, 'North', '2020-04-01', '2021-03-31', 275, 8250, 290.55, 8717, 319.17, 9575, 332.12, 9964, 1, 'Abhay', '2021-09-29 17:25:28'),
(139, 23, 'West', '2020-07-01', '2020-12-31', 421.42, 10957, 453.54, 11792, 483.38, 12568, 0, 0, 1, 'Abhay', '2021-03-01 11:57:20'),
(140, 24, 'West', '2020-07-01', '2020-12-31', 421.42, 10957, 453.54, 11792, 483.38, 12568, 0, 0, 1, 'Abhay', '2021-03-01 11:57:20'),
(141, 20, 'West', '2020-07-01', '2020-12-31', 421.42, 10957, 453.54, 11792, 483.38, 12568, 0, 0, 1, 'Abhay', '2021-03-01 11:57:20'),
(142, 11, 'North', '2020-01-01', '2020-06-30', 358.42, 9319.12, 376.34, 9785.05, 414.92, 10788.01, 457.45, 11893.79, 1, 'Abhay', '2020-12-09 11:08:47'),
(143, 15, 'East', '2020-04-01', '2020-09-30', 295.8, 7690.8, 309.89, 8057.14, 408.5, 10621, 471.88, 12268.88, 1, 'Abhay', '2020-12-09 11:11:03'),
(144, 36, 'A', '2020-10-01', '2021-03-31', 639, 16614, 707, 18382, 777, 20202, 845, 21970, 1, 'Abhay', '2021-04-24 11:57:20'),
(145, 36, 'B', '2020-10-01', '2021-03-31', 534, 13884, 603, 15678, 707, 18382, 777, 20202, 1, 'Abhay', '2021-04-24 11:57:20'),
(146, 36, 'C', '2020-10-01', '2021-03-31', 427, 11102, 500, 13000, 603, 15678, 707, 18382, 1, 'Abhay', '2021-04-24 11:57:20'),
(147, 1, 'South', '2020-10-01', '2021-03-31', 377.58, 9817.2, 393.66, 10235.2, 401.43, 10437.2, 433.55, 11272.2, 1, 'Abhay', '2021-06-01 13:38:20'),
(148, 3, 'East', '2020-10-01', '2021-03-31', 292, 7592, 304, 7904, 370, 9620, 451, 11726, 1, 'Abhay', '2021-04-24 11:57:20'),
(149, 4, 'Central', '2020-10-01', '2021-03-31', 364.62, 9480, 389.62, 10130, 419.62, 10910, 449.62, 11690, 1, 'Abhay', '2021-04-24 11:57:20'),
(150, 9, 'West', '2020-10-01', '2021-03-31', 332.2, 8637.2, 340.2, 8845.2, 349.2, 9079.2, 0, 0, 1, 'Abhay', '2021-04-24 11:57:20'),
(151, 19, 'Central', '2020-10-01', '2021-03-31', 323, 8400, 356, 9257, 409, 10635, 459, 11935, 1, 'Abhay', '2021-04-24 11:57:20'),
(152, 31, 'South', '2020-10-01', '2021-03-31', 398.04, 10349, 414.12, 10767, 421.88, 10969, 454, 11804, 1, 'Abhay', '2021-04-24 11:57:20'),
(153, 32, 'North', '2020-10-01', '2021-03-31', 336.85, 8758, 370.53, 9634, 415.04, 10791, 0, 0, 1, 'Abhay', '2021-05-20 10:37:23'),
(154, 33, 'North', '2020-10-01', '2021-03-31', 336.85, 8758, 370.53, 9634, 415.04, 10791, 0, 0, 1, 'Abhay', '2021-05-20 10:38:18'),
(155, 34, 'North', '2020-10-01', '2021-03-31', 341.96, 8891, 364.77, 9484, 387.62, 10078, 426.15, 11080, 1, 'Abhay', '2021-04-24 11:57:20'),
(156, 26, 'East', '2020-10-01', '2021-03-31', 308.05, 8009.3, 348.05, 9049.3, 398.05, 10349.3, 458.05, 11909.3, 1, 'Abhay', '2021-06-01 13:40:28'),
(157, 2, 'East', '2020-06-01', '2021-05-31', 287.73, 8631.9, 335.69, 10070.8, 419.63, 12588.9, 539.5, 16185, 1, 'Abhay', '2021-09-29 17:21:37'),
(158, 10, 'East', '2020-06-01', '2021-05-31', 287.73, 8631.9, 335.69, 10070.8, 419.63, 12588.9, 539.5, 16185, 1, 'Abhay', '2021-09-29 15:09:27'),
(159, 11, 'North', '2020-07-01', '2020-12-31', 363.78, 9458.2, 381.96, 9931.08, 421.12, 10949.01, 464.28, 12071.29, 1, 'Abhay', '2021-06-17 14:16:25'),
(160, 15, 'East', '2020-10-01', '2021-03-31', 300.36, 7809.36, 314.67, 8181.42, 414.8, 10784.8, 479.16, 12458.16, 1, 'Abhay', '2021-04-24 11:57:20'),
(161, 17, 'South', '2020-09-01', '2021-03-31', 449.31, 11682, 457.38, 11892, 465.46, 12102, 473.54, 12312, 1, 'Abhay', '2021-04-24 11:57:20'),
(162, 41, 'North-East', '2020-10-01', '2021-03-31', 343, 8918, 389, 10114, 435, 11310, 480, 12480, 1, 'Abhay', '2022-05-26 11:17:17'),
(163, 6, 'North', '2020-10-01', '2021-03-31', 596, 15492, 657, 17069, 723, 18797, 0, 0, 1, 'Abhay', '2021-06-24 15:51:26'),
(164, 7, 'North', '2020-10-01', '2021-03-31', 596, 15492, 657, 17069, 723, 18797, 0, 0, 1, 'Abhay', '2021-06-24 15:52:23'),
(165, 18, 'East', '2021-01-01', '2021-06-30', 338, 8779, 371, 9658, 409, 10624, 449, 11686, 1, 'Abhay', '2021-07-29 12:38:10'),
(166, 35, 'East', '2021-01-01', '2021-06-30', 338, 8779, 371, 9658, 409, 10624, 449, 11686, 1, 'Abhay', '2021-07-29 12:39:00'),
(167, 37, 'North', '2020-04-01', '2020-09-30', 413, 10747, 423, 10997, 439, 11422, 455, 11822, 1, 'Abhay', '2022-05-25 15:54:12'),
(168, 23, 'West', '2021-01-01', '2021-06-30', 427.42, 11113, 459.54, 11948, 489.38, 12724, 0, 0, 1, 'Abhay', '2021-08-26 15:02:36'),
(169, 24, 'West', '2021-01-01', '2021-06-30', 427.42, 11113, 459.54, 11948, 489.38, 12724, 0, 0, 1, 'Abhay', '2021-08-26 15:03:23'),
(170, 20, 'West', '2021-01-01', '2021-06-30', 427.42, 11113, 459.54, 11948, 489.38, 12724, 0, 0, 1, 'Abhay', '2021-08-26 15:04:17'),
(171, 36, 'A', '2021-04-01', '2021-09-30', 645, 16770, 714, 18564, 784, 20384, 853, 22178, 1, 'Abhay', '2021-10-28 14:21:06'),
(172, 36, 'B', '2021-04-01', '2021-09-30', 539, 14014, 609, 15834, 714, 18564, 784, 20384, 1, 'Abhay', '2021-10-28 14:21:06'),
(173, 36, 'C', '2021-04-01', '2021-09-30', 431, 11206, 505, 13130, 609, 15834, 714, 18564, 1, 'Abhay', '2021-10-28 14:47:54'),
(174, 3, 'East', '2021-04-01', '2021-09-30', 304, 7904, 316, 8216, 385, 10010, 470, 12220, 1, 'Abhay', '2021-10-28 14:21:06'),
(175, 4, 'Central', '2021-04-01', '2021-09-30', 374, 9720, 399, 10370, 429, 11150, 459, 11930, 1, 'Abhay', '2021-10-28 14:21:06'),
(176, 8, 'West', '2020-10-01', '2021-03-31', 367, 9542, 425, 11050, 480, 12480, 0, 0, 1, 'Abhay', '2021-10-28 14:34:36'),
(177, 9, 'West', '2021-04-01', '2021-09-30', 348.2, 9053.2, 356.2, 9261.2, 365.2, 9495.2, 0, 0, 1, 'Abhay', '2021-10-28 14:21:06'),
(178, 15, 'East', '2021-04-01', '2021-09-30', 311.33, 8094.63, 326.16, 8480.2, 429.95, 11178.61, 496.65, 12912.95, 1, 'Abhay', '2021-10-28 14:21:06'),
(179, 16, 'South', '2021-04-01', '2022-03-31', 512, 13311.03, 557, 14469.81, 606, 15744.47, 659, 17146.6, 1, 'Abhay', '2022-04-26 15:15:41'),
(180, 17, 'South', '2021-02-01', '2021-05-31', 455.31, 11838, 463.38, 12048, 471.46, 12258, 479.54, 12468, 1, 'Abhay', '2021-07-29 12:36:43'),
(181, 19, 'Central', '2021-04-01', '2021-09-30', 335, 8700, 368, 9557, 421, 10935, 471, 12235, 1, 'Abhay', '2021-10-28 14:21:06'),
(182, 30, 'South', '2021-04-01', '2022-03-31', 375.77, 9770, 380.04, 9881, 381.62, 9922, 397.46, 10334, 1, 'Abhay', '2022-04-26 15:18:30'),
(183, 5, 'South', '2021-04-01', '2022-03-31', 375.77, 9770, 380.04, 9881, 381.62, 9922, 397.46, 10334, 1, 'Abhay', '2022-04-26 15:25:36'),
(184, 31, 'South', '2021-04-01', '2021-09-30', 421.15, 10950, 437.23, 11368, 445, 11570, 477.12, 12405, 1, 'Abhay', '2021-10-28 14:21:06'),
(185, 34, 'North', '2021-04-01', '2021-09-30', 351.19, 9131, 374, 9724, 396.85, 10318, 435.38, 11320, 1, 'Abhay', '2021-10-28 14:21:06'),
(186, 32, 'North', '2021-04-01', '2021-09-30', 349, 9078, 384, 9985, 430, 11185, 0, 0, 1, 'Abhay', '2021-10-28 14:21:06'),
(187, 33, 'North', '2021-04-01', '2021-09-30', 349, 9078, 384, 9985, 430, 11185, 0, 0, 1, 'Abhay', '2021-10-28 14:21:06'),
(188, 1, 'South', '2021-04-01', '2021-09-30', 392.6, 10207.6, 408.68, 10625.6, 416.45, 10827.6, 448.56, 11662.6, 1, 'Abhay', '2021-10-28 14:21:06'),
(189, 38, '', '2021-04-01', '2021-09-30', 340.2, 8845.2, 348.2, 9053.2, 356.2, 9261.2, 0, 0, 1, 'Anoop Kumar', '2023-02-23 10:30:51'),
(190, 26, 'East', '2021-04-01', '2021-09-30', 311, 8086, 351, 9126, 401, 10426, 461, 11986, 1, 'Abhay', '2021-11-29 14:37:17'),
(191, 11, 'North', '2021-01-01', '2021-06-30', 373.22, 9703.68, 391.88, 10188.83, 432.05, 11233.18, 476.33, 12384.59, 1, 'Abhay', '2021-09-29 17:23:25'),
(192, 6, 'North', '2021-04-01', '2021-09-30', 612, 15908, 675, 17537, 742, 19291, 0, 0, 1, 'Abhay', '2021-11-29 14:31:56'),
(193, 7, 'North', '2021-04-01', '2021-09-30', 612, 15908, 675, 17537, 742, 19291, 0, 0, 1, 'Abhay', '2021-11-29 14:32:41'),
(194, 40, 'East', '2021-04-01', '2021-09-30', 238.81, 6209, 262, 6812, 293, 7618, 0, 0, 1, 'Abhay', '2021-12-27 16:18:45'),
(195, 17, 'South', '2021-06-01', '2021-09-30', 463.31, 12046, 471.38, 12256, 479.46, 12466, 487.54, 12676, 1, 'Abhay', '2021-12-27 16:12:54'),
(196, 18, 'East', '2021-07-01', '2021-12-31', 342, 8904, 377, 9795, 414, 10775, 456, 11851, 1, 'Abhay', '2022-02-25 12:01:30'),
(197, 35, 'East', '2021-07-01', '2021-12-31', 342, 8904, 377, 9795, 414, 10775, 456, 11851, 1, 'Abhay', '2022-02-25 12:02:07'),
(198, 23, 'West', '2021-07-01', '2021-12-31', 440.42, 11451, 472.54, 12286, 502.38, 13062, 0, 0, 1, 'Abhay', '2022-02-25 11:57:42'),
(199, 24, 'West', '2021-07-01', '2021-12-31', 440.42, 11451, 472.54, 12286, 502.38, 13062, 0, 0, 1, 'Abhay', '2022-02-25 11:58:27'),
(200, 20, 'West', '2021-07-01', '2021-12-31', 440.42, 11451, 472.54, 12286, 502.38, 13062, 0, 0, 1, 'Abhay', '2022-02-25 11:59:15'),
(201, 28, 'North', '2020-07-01', '0000-00-00', 252, 6552, 264, 6864, 276, 7176, 326, 8476, 1, 'Anoop Kumar', '2022-08-01 11:25:55'),
(202, 2, 'East', '2021-06-01', '0000-00-00', 298.21, 8946.3, 347.92, 10437.7, 434.92, 13047.6, 559.16, 16774.8, 1, 'Anoop Kumar', '2022-07-07 14:49:51'),
(203, 11, 'North', '2021-07-01', '2021-12-31', 377.04, 9803.24, 395.89, 10293.36, 436.47, 11348.43, 481.21, 12511.65, 1, 'Abhay', '2022-04-26 15:08:52'),
(204, 12, 'North', '2021-04-01', '2022-03-31', 300, 9000, 316.99, 9510, 348.21, 10446, 362.34, 10870, 1, 'Anoop Kumar', '2022-07-07 14:46:38'),
(205, 1, 'South', '2021-10-01', '2022-03-31', 403.68, 10495.6, 419.75, 10913.6, 427.52, 11115.6, 459.64, 11950.6, 1, 'Abhay', '2022-04-26 14:11:20'),
(206, 3, 'East', '2021-10-01', '2022-03-31', 306, 7956, 318, 8268, 388, 10088, 474, 12324, 1, 'Abhay', '2022-04-26 14:15:50'),
(207, 4, 'Central', '2021-10-01', '2022-03-31', 377, 9800, 402, 10450, 432, 11230, 462, 12010, 1, 'Abhay', '2022-04-26 14:17:02'),
(208, 9, 'West', '2021-10-01', '2022-03-31', 348, 9048, 356, 9256, 365, 9490, 0, 0, 1, 'Abhay', '2022-04-26 14:29:40'),
(209, 15, 'East', '2021-10-01', '2022-03-31', 314.96, 8188.95, 329.96, 8579.02, 434.96, 11308.86, 502.44, 13063.41, 1, 'Abhay', '2022-04-26 15:10:05'),
(210, 19, 'Central', '2021-10-01', '2022-03-31', 338, 8800, 371, 9657, 424, 11035, 474, 12335, 1, 'Abhay', '2022-04-26 15:17:17'),
(211, 31, 'South', '2021-10-01', '2022-03-31', 421.15, 10950, 437.23, 11368, 445, 11570, 477.12, 12405, 1, 'Abhay', '2022-04-26 15:19:33'),
(212, 32, 'North', '2021-10-01', '2022-03-31', 353.23, 9184, 389, 10102.29, 435.23, 11316.16, 0, 0, 1, 'Abhay', '2022-04-26 15:20:34'),
(213, 33, 'North', '2021-10-01', '2022-03-31', 353.23, 9184, 389, 10102.29, 435.23, 11316.16, 0, 0, 1, 'Abhay', '2022-04-26 15:21:33'),
(214, 34, 'North', '2021-10-01', '2022-03-31', 354.27, 9211, 377.08, 9804, 399.92, 10398, 438.46, 11400, 1, 'Abhay', '2022-04-26 15:23:45'),
(215, 6, 'North', '2021-10-01', '2022-03-31', 618, 16064, 681, 17693, 749, 19473, 0, 0, 1, 'Abhay', '2022-05-25 16:00:28'),
(216, 7, 'North', '2021-10-01', '2022-03-31', 618, 16064, 681, 17693, 749, 19473, 0, 0, 1, 'Abhay', '2022-05-25 16:01:50'),
(217, 8, 'West', '2021-04-01', '2021-09-30', 378, 9828, 436, 11336, 491, 12766, 0, 0, 1, 'Abhay', '2021-11-29 14:35:34'),
(218, 8, 'West', '2021-10-01', '2022-03-31', 382, 9932, 440, 11440, 495, 12870, 0, 0, 1, 'Abhay', '2022-05-25 16:04:04'),
(219, 26, 'East', '2021-10-01', '2022-03-31', 315, 8190, 355, 9230, 405, 10530, 465, 12090, 1, 'Abhay', '2022-05-03 15:23:30'),
(220, 10, 'East', '2021-06-01', '0000-00-00', 298.21, 8946.3, 347.92, 10437.7, 434.92, 13047.6, 559.16, 16774.8, 0, 'Abhay', '2021-09-29 15:09:38'),
(221, 36, 'A', '2021-10-01', '2022-03-31', 654, 17004, 724, 18824, 795, 20670, 864, 22464, 1, 'Abhay', '2022-04-26 14:53:48'),
(222, 36, 'B', '2021-10-01', '2022-03-31', 546, 14196, 617, 16042, 724, 18824, 795, 20670, 1, 'Abhay', '2022-04-26 15:04:38'),
(223, 36, 'C', '2021-10-01', '2022-03-31', 437, 11362, 512, 13312, 617, 16042, 724, 18824, 1, 'Abhay', '2022-04-26 15:07:20'),
(224, 17, 'South', '2021-10-01', '2022-01-31', 467.31, 12150, 475.38, 12360, 483.46, 12570, 491.54, 12780, 1, 'Abhay', '2022-04-26 15:40:47'),
(225, 27, 'North', '2020-09-01', '2021-02-28', 353.56, 9192.72, 383.56, 9972.72, 418.06, 10869.72, 457.75, 11901.72, 1, 'Anoop Kumar', '2022-11-29 16:18:27'),
(226, 40, 'East', '2021-10-01', '2022-03-31', 242.85, 6314, 266.42, 6927, 297.96, 7747, 0, 0, 1, 'Anoop Kumar', '2023-07-19 15:46:20'),
(227, 23, 'West', '2022-01-01', '2022-06-30', 454.42, 11815, 486.54, 12650, 516.38, 13426, 0, 0, 1, 'Anoop Kumar', '2023-08-28 16:02:50'),
(228, 24, 'West', '2022-01-01', '2022-06-30', 454.42, 11815, 486.54, 12650, 516.38, 13426, 0, 0, 1, 'Anoop Kumar', '2023-08-28 16:03:43'),
(229, 20, 'West', '2022-01-01', '2022-06-30', 454.42, 11815, 486.54, 12650, 516.38, 13426, 0, 0, 1, 'Anoop Kumar', '2022-08-25 14:24:43'),
(230, 18, 'East', '2022-01-01', '2022-06-30', 342, 8904, 377, 9795, 414, 10775, 456, 11851, 0, 'Abhay', '2022-02-25 12:01:30'),
(231, 35, 'East', '2022-01-01', '2022-06-30', 342, 8904, 377, 9795, 414, 10775, 456, 11851, 1, 'Anoop Kumar', '2022-08-01 11:27:41'),
(232, 1, 'South', '2022-04-01', '2022-09-30', 415.98, 10815.6, 432.06, 11233.6, 439.83, 11435.6, 471.95, 12270.6, 1, 'Anoop Kumar', '2022-10-29 10:17:05'),
(233, 3, 'East', '2022-04-01', '2022-09-30', 318, 8268, 330, 8580, 403, 10478, 492, 12792, 1, 'Anoop Kumar', '2022-09-27 15:01:57'),
(234, 4, 'Central', '2022-04-01', '2022-09-30', 387, 10060, 412, 10710, 442, 11490, 472, 12270, 1, 'Anoop Kumar', '2022-10-29 10:24:23'),
(235, 9, 'West', '2022-04-01', '2022-09-30', 359.3, 9341.8, 367.3, 9549.8, 376.3, 9783.8, 0, 0, 1, 'Anoop Kumar', '2022-10-29 10:30:25'),
(236, 36, 'A', '2022-04-01', '2022-09-30', 663, 17238, 734, 19084, 806, 20956, 876, 22776, 0, 'Abhay', '2022-04-26 14:53:48'),
(237, 36, 'B', '2022-04-01', '2022-09-30', 553, 14378, 625, 16250, 734, 19084, 806, 20956, 0, 'Abhay', '2022-04-26 15:04:38'),
(238, 36, 'C', '2022-04-01', '2022-09-30', 443, 11518, 519, 13494, 625, 16250, 734, 19084, 0, 'Abhay', '2022-04-26 15:07:20'),
(239, 11, 'North', '2022-01-01', '2022-06-30', 388.42, 10098.88, 407.84, 10603.78, 449.64, 11690.67, 495.73, 12888.97, 1, 'Anoop Kumar', '2022-11-03 16:55:09'),
(240, 15, 'East', '2022-04-01', '2022-09-30', 326.86, 8498.33, 342.43, 8903.13, 451.39, 11736.12, 521.42, 13556.95, 1, 'Anoop Kumar', '2022-10-29 10:37:26'),
(241, 16, 'South', '2022-04-01', '2023-03-31', 531.58, 13821.03, 576.14, 14979.81, 625.17, 16254.47, 679.1, 17656.6, 1, 'Anoop Kumar', '2023-02-23 10:32:35'),
(242, 19, 'Central', '2022-04-01', '2022-09-30', 351, 9125, 384, 9982, 437, 11360, 487, 12660, 1, 'Anoop Kumar', '2022-10-29 10:45:41'),
(243, 30, 'South', '2022-04-01', '2023-03-31', 388.23, 10094, 392.5, 10205, 394.08, 10246, 409.92, 10658, 1, 'Anoop Kumar', '2023-04-14 17:03:53'),
(244, 31, 'South', '2022-04-01', '2022-09-30', 429.04, 11155, 445.12, 11573, 452.88, 11775, 485, 12610, 1, 'Anoop Kumar', '2022-10-29 10:52:32'),
(245, 32, 'North', '2022-04-01', '2022-09-30', 366.54, 9530, 403.19, 10483, 451.65, 11743, 0, 0, 1, 'Anoop Kumar', '2022-10-29 10:53:56'),
(246, 33, 'North', '2022-04-01', '2022-09-30', 366.54, 9530, 403.19, 10483, 451.65, 11743, 0, 0, 1, 'Anoop Kumar', '2022-10-29 10:55:03'),
(247, 34, 'North', '2022-04-01', '2022-09-30', 364.27, 9471, 387.08, 10064, 409.92, 10658, 448.46, 11660, 1, 'Anoop Kumar', '2022-10-29 10:57:04'),
(248, 5, 'South', '2022-04-01', '2023-03-31', 388.23, 10094, 392.5, 10205, 394.08, 10246, 409.92, 10658, 0, 'Abhay', '2022-04-26 15:25:36'),
(249, 17, 'South', '2022-02-01', '0000-00-00', 471.31, 12254, 479.38, 12464, 487.46, 12674, 495.54, 12884, 1, 'Anoop Kumar', '2022-08-01 11:49:55'),
(250, 26, 'East', '2022-04-01', '2022-09-30', 326, 8476, 366, 9516, 416, 10816, 476, 12376, 1, 'Anoop Kumar', '2022-10-29 10:48:12'),
(251, 37, 'North', '2022-04-01', '2022-09-30', 458, 11895, 467, 12145, 483, 12570, 499, 12970, 1, 'Anoop Kumar', '2022-11-29 16:15:22'),
(252, 6, 'North', '2022-04-01', '2022-09-30', 635, 16506, 700, 18187, 770, 20019, 0, 0, 1, 'Anoop Kumar', '2022-10-29 10:26:48'),
(253, 7, 'North', '2022-04-01', '2022-09-30', 635, 16506, 700, 18187, 770, 20019, 0, 0, 1, 'Anoop Kumar', '2022-10-29 10:27:47'),
(254, 8, 'West', '2022-04-01', '2022-09-30', 395, 10270, 453, 11778, 508, 13208, 0, 0, 1, 'Anoop Kumar', '2023-01-25 10:33:21'),
(255, 41, 'North-East', '2022-04-01', '2022-09-30', 373, 9698, 423, 10998, 473, 12298, 522, 13572, 1, 'Anoop Kumar', '2022-11-29 16:17:04'),
(256, 12, 'North', '2022-04-01', '2023-03-31', 350, 10500, 369.93, 11098, 406.37, 12191, 422.87, 12686, 1, 'Anoop Kumar', '2023-08-19 11:55:11'),
(257, 2, 'East', '2021-12-01', '0000-00-00', 308.2, 9246.1, 358.14, 10744.3, 447.7, 13430.85, 575.52, 17265.55, 1, 'Anoop Kumar', '2023-12-27 14:17:58'),
(258, 28, 'North', '2021-07-01', '0000-00-00', 259, 6734, 271, 7046, 283, 7358, 333, 8658, 1, 'Anoop Kumar', '2022-08-01 11:28:19'),
(259, 35, 'East', '2022-07-01', '2022-12-31', 355, 9239, 391, 10163, 430, 11180, 473, 12297, 1, 'Anoop Kumar', '2023-01-25 10:35:09'),
(260, 28, 'North', '2021-07-01', '2022-07-31', 259, 6734, 271, 7046, 283, 7358, 333, 8658, 1, 'Anoop Kumar', '2024-04-23 10:37:18'),
(261, 17, 'South', '2022-07-01', '0000-00-00', 493.23, 12824, 501.31, 13034, 509.38, 13244, 517.46, 13454, 1, 'Anoop Kumar', '2023-02-23 10:33:27'),
(262, 20, 'West', '2022-07-01', '2022-12-31', 466.42, 12127, 498.54, 12962, 528.38, 13738, 0, 0, 1, 'Anoop Kumar', '2023-02-23 10:29:13'),
(263, 3, 'East', '2022-09-01', '2022-12-31', 366, 9516, 380, 9880, 463, 12038, 566, 14716, 1, 'Anoop Kumar', '2022-10-29 10:22:04'),
(264, 1, 'South', '2022-10-01', '2023-03-31', 419.69, 10912, 433.5, 11271, 441.88, 11489, 481.77, 12526, 1, 'Anoop Kumar', '2023-04-14 16:39:02'),
(265, 3, 'East', '2022-10-01', '2023-03-31', 373, 9698, 388, 10088, 472, 12272, 577, 15002, 1, 'Anoop Kumar', '2023-04-19 17:39:36'),
(266, 4, 'Central', '2022-10-01', '2023-03-31', 393.08, 10220, 418.08, 10870, 448.08, 11650, 478.08, 12430, 1, 'Anoop Kumar', '2023-04-14 16:41:03'),
(267, 6, 'North', '2022-10-01', '2023-03-31', 646, 16792, 712, 18499, 783, 20357, 0, 0, 1, 'Anoop Kumar', '2023-04-21 10:17:02'),
(268, 7, 'North', '2022-10-01', '2023-03-31', 646, 16792, 712, 18499, 783, 20357, 0, 0, 1, 'Anoop Kumar', '2023-04-21 10:18:51'),
(269, 9, 'West', '2022-10-01', '2023-03-31', 363.3, 9445.8, 371.3, 9653.8, 380.3, 9887.8, 0, 0, 1, 'Anoop Kumar', '2023-04-14 16:47:27'),
(270, 13, 'North', '2022-10-01', '2023-03-31', 311, 8086, 400, 10400, 483, 12558, 552, 14352, 0, 'Anoop Kumar', '2022-10-29 10:33:05'),
(271, 14, 'North', '2022-10-01', '2022-03-31', 311, 8086, 400, 10400, 483, 12558, 552, 14352, 0, 'Anoop Kumar', '2022-10-29 10:35:11'),
(272, 15, 'East', '2022-01-01', '2023-03-31', 334.14, 8687.68, 350.06, 9101.5, 461.45, 11997.6, 533.04, 13858.99, 1, 'Anoop Kumar', '2022-10-29 11:05:27'),
(273, 19, 'Central', '2022-10-01', '2023-10-31', 359, 9325, 392, 10182, 445, 11560, 495, 12860, 1, 'Anoop Kumar', '2023-04-14 16:54:03'),
(274, 26, 'East', '2022-10-01', '2023-03-31', 333, 8658, 373, 9698, 423, 10998, 483, 12558, 1, 'Anoop Kumar', '2023-04-14 16:57:21'),
(275, 31, 'South', '2022-10-01', '2023-03-31', 444.58, 11559, 452.96, 11777, 460.75, 11979.6, 492.85, 12814, 1, 'Anoop Kumar', '2023-04-14 17:00:13'),
(276, 32, 'North', '2022-10-01', '2023-03-31', 374.73, 9743, 412.19, 10717, 461.73, 12005, 0, 0, 1, 'Anoop Kumar', '2023-04-14 17:01:31'),
(277, 33, 'North', '2022-10-01', '2023-03-31', 374.73, 9743, 412.19, 10717, 461.73, 12005, 0, 0, 1, 'Anoop Kumar', '2023-04-14 17:02:27'),
(278, 34, 'North', '2022-10-01', '2022-03-31', 370.42, 9631, 393.23, 10224, 416.08, 10818, 454.62, 11820, 1, 'Anoop Kumar', '2023-04-19 17:37:39'),
(279, 15, 'East', '2022-10-01', '2023-03-31', 334.14, 8687.68, 350.06, 9101.5, 461.45, 11997.6, 533.04, 13858.99, 1, 'Anoop Kumar', '2023-04-14 16:49:27'),
(280, 11, 'North', '2022-07-01', '2022-12-31', 393.97, 10243.28, 413.67, 10755.4, 456.07, 11857.83, 502.82, 13073.26, 1, 'Anoop Kumar', '2023-04-27 10:59:13'),
(281, 37, 'North', '2022-10-01', '2023-03-31', 486, 12623, 495, 12873, 511, 13298, 527, 13698, 1, 'Anoop Kumar', '2024-04-23 10:54:46'),
(282, 41, 'North-East', '2022-10-01', '2023-03-31', 381, 9906, 432, 11232, 483, 12558, 534, 13884, 1, 'Anoop Kumar', '2024-05-22 16:25:46'),
(283, 27, 'North', '2023-10-01', '2023-03-31', 381.06, 9907.68, 411.06, 10687.68, 445.56, 11584.68, 485.26, 12616.68, 1, 'Anoop Kumar', '2022-11-29 16:18:52'),
(284, 27, 'North', '2022-10-01', '2023-03-31', 381.06, 9907.68, 411.06, 10687.68, 445.56, 11584.68, 485.26, 12616.68, 1, 'Anoop Kumar', '2022-11-29 16:19:23'),
(285, 27, 'North', '2022-09-01', '2023-03-31', 381.06, 9907.68, 411.06, 10687.68, 445.56, 11584.68, 485.26, 12616.68, 1, 'Anoop Kumar', '2023-05-18 10:11:15'),
(286, 43, 'North-East', '2022-07-11', '0000-00-00', 500, 13000, 520, 13520, 535, 13910, 565, 14690, 0, 'Anoop Kumar', '2022-11-29 16:21:04'),
(287, 8, 'West', '2022-10-01', '2023-03-31', 402, 10452, 460, 11960, 515, 13390, 0, 0, 1, 'Anoop Kumar', '2023-07-19 15:41:52'),
(288, 35, 'East', '2023-01-01', '2023-06-30', 376, 9784, 414, 10763, 455, 11840, 501, 13023, 1, 'Anoop Kumar', '2023-08-19 11:53:39'),
(289, 20, 'West', '2023-01-01', '2023-06-30', 479.42, 12465, 511.54, 13300, 541.38, 14076, 0, 0, 1, 'Anoop Kumar', '2023-08-19 11:52:07'),
(290, 38, '', '2022-10-01', '2023-03-31', 355.3, 9237.8, 363.3, 9445.8, 371.3, 9653.8, 0, 0, 1, 'Anoop Kumar', '2023-10-23 10:45:22'),
(291, 16, 'South', '2023-04-01', '2024-03-31', 555, 14424.63, 599.36, 15583.41, 648.39, 16858.07, 702.32, 18260.2, 1, 'Anoop Kumar', '2024-04-23 10:33:28'),
(292, 17, 'South', '2022-12-01', '2023-03-31', 503.23, 13084, 511.31, 13294, 519.38, 13504, 535.54, 13924, 1, 'Anoop Kumar', '2023-08-28 16:00:05'),
(293, 1, 'South', '2023-04-01', '2023-09-30', 426.12, 11079.2, 457.66, 11899.2, 465.43, 12101.2, 497.55, 12936.2, 1, 'Anoop Kumar', '2023-10-23 14:16:16'),
(294, 4, 'Central', '2023-04-01', '2023-09-30', 403.08, 10480, 428.08, 11130, 458.08, 11910, 488.08, 12690, 1, 'Anoop Kumar', '2023-10-23 14:19:03'),
(295, 9, 'West', '2023-04-01', '2023-09-30', 452, 11752, 462, 12012, 474, 12324, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:20:40'),
(296, 15, 'East', '2023-04-01', '2023-09-30', 346.01, 8996.34, 362.49, 9424.86, 477.84, 12423.87, 551.98, 14351.39, 1, 'Anoop Kumar', '2023-11-21 16:46:59'),
(297, 19, 'Central', '2023-04-01', '2023-09-30', 371, 9650, 404, 10507, 457, 11885, 507, 12860, 1, 'Anoop Kumar', '2023-04-14 16:55:36'),
(298, 19, 'Central', '2023-04-01', '2023-09-30', 371, 9650, 404, 10507, 457, 11885, 507, 13185, 1, 'Anoop Kumar', '2023-10-23 14:21:59'),
(299, 26, 'East', '2023-04-01', '2023-09-30', 345, 8970, 385, 10010, 435, 11310, 495, 12870, 1, 'Anoop Kumar', '2023-10-23 14:22:48'),
(300, 31, 'South', '2023-04-01', '2023-09-30', 441.85, 11488, 478.97, 12453.2, 471.2, 12251.2, 511.08, 13288.2, 1, 'Anoop Kumar', '2023-05-01 10:17:01'),
(301, 32, 'North', '2023-04-01', '2023-09-30', 388.04, 10089, 426.85, 11098, 478.15, 12432, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:25:26'),
(302, 33, 'North', '2023-04-01', '2023-09-30', 388.04, 10089, 426.85, 11098, 478.15, 12432, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:38:30'),
(303, 30, 'South', '2023-04-01', '2023-09-30', 388.23, 10094, 392.5, 10205, 394.08, 10246, 409.92, 10658, 1, 'Anoop Kumar', '2023-05-01 10:06:34'),
(304, 34, 'North', '2023-04-01', '2023-03-30', 380.42, 9891, 403.23, 10484, 426.08, 11078, 464.62, 12080, 1, 'Anoop Kumar', '2023-10-23 14:26:31'),
(305, 3, 'East', '2023-04-01', '2023-09-30', 388, 10088, 403, 10478, 491, 12766, 600, 15600, 1, 'Anoop Kumar', '2023-10-23 14:17:33'),
(306, 6, 'North', '2023-04-01', '2023-09-30', 663, 17234, 731, 18993, 804, 20903, 875, 22744, 1, 'Anoop Kumar', '2023-10-27 11:09:43'),
(307, 7, 'North', '2023-04-01', '2023-09-30', 663, 17234, 731, 18993, 804, 20903, 875, 22744, 1, 'Anoop Kumar', '2023-10-27 11:10:50'),
(308, 11, 'North', '2023-01-01', '2023-06-30', 405.11, 10532.84, 425.36, 11059.44, 468.96, 12193.03, 517.03, 13442.82, 1, 'Anoop Kumar', '2023-08-30 14:22:52'),
(309, 30, 'South', '2023-04-01', '2023-09-30', 403.19, 10483, 409.04, 10635, 420.96, 10945, 425, 11047, 1, 'Anoop Kumar', '2024-03-27 10:31:10'),
(310, 31, 'South', '2023-04-01', '2023-09-30', 441.85, 11488, 478.97, 12453.2, 511.08, 13288.2, 511.08, 13288.2, 1, 'Anoop Kumar', '2023-10-23 14:24:32'),
(311, 27, 'North', '2023-03-01', '2023-09-30', 398.22, 10353.77, 428.22, 11133.77, 462.72, 12030.77, 502.41, 13062.77, 1, 'Anoop Kumar', '2023-10-23 14:23:49'),
(312, 8, 'West', '2023-04-01', '2023-09-30', 415, 10790, 473, 12298, 528, 13728, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:19:53'),
(313, 22, 'East', '2023-04-01', '2023-09-30', 420, 12600, 460, 13800, 570, 17100, 730, 21900, 0, 'Anoop Kumar', '2023-07-19 15:44:39'),
(314, 40, 'East', '2023-04-01', '2023-09-30', 279.88, 7277, 307.04, 7983, 343.38, 8928, 0, 0, 1, 'Anoop Kumar', '2023-12-27 14:22:11'),
(315, 42, 'North-East', '2016-04-01', '0000-00-00', 220, 6600, 230, 6900, 240, 7200, 0, 0, 0, 'Anoop Kumar', '2023-08-19 10:55:16'),
(316, 20, 'West', '2023-07-01', '2023-12-31', 488.42, 12699, 520.54, 13534, 550.38, 14310, 0, 0, 1, 'Anoop Kumar', '2024-02-23 12:19:07'),
(317, 35, 'East', '2023-07-01', '2023-12-31', 376, 9784, 414, 10763, 455, 11840, 501, 13023, 1, 'Anoop Kumar', '2024-01-28 21:52:11'),
(318, 12, 'North', '2023-04-01', '2024-03-31', 375, 11250, 396.37, 11891, 435.4, 13062, 453.07, 13592, 0, 'Anoop Kumar', '2023-08-19 11:55:11'),
(319, 17, 'South', '2023-06-01', '2023-12-31', 536.88, 13422, 524.31, 13632, 532.38, 13842, 540.46, 14052, 1, 'Anoop Kumar', '2024-02-23 12:17:31'),
(320, 23, 'West', '2023-07-01', '2023-12-31', 488.42, 12699, 520.54, 13534, 550.38, 14310, 0, 0, 1, 'Anoop Kumar', '2023-08-28 16:04:00'),
(321, 24, 'West', '2203-06-01', '2023-12-31', 488.42, 12699, 520.54, 13534, 550.38, 14310, 0, 0, 0, 'Anoop Kumar', '2023-08-28 16:03:43'),
(322, 23, 'West', '2023-06-01', '2023-12-31', 488.42, 12699, 520.54, 13534, 550.38, 14310, 0, 0, 0, 'Anoop Kumar', '2023-08-28 16:04:00'),
(323, 11, 'North', '2023-07-01', '2023-12-31', 410.05, 10661.28, 430.55, 11194.3, 474.68, 12341.71, 523.34, 13606.75, 1, 'Anoop Kumar', '2023-08-30 14:24:57'),
(324, 11, 'North', '2023-07-01', '2023-12-31', 410.05, 10661.28, 430.55, 11194.3, 474.68, 12341.71, 523.34, 13606.75, 1, 'Anoop Kumar', '2024-02-23 12:20:36'),
(325, 38, '', '2023-04-01', '2023-10-31', 441, 11466, 452, 11752, 462, 12012, 0, 0, 0, 'Anoop Kumar', '2023-10-23 10:45:22'),
(326, 1, 'South', '2023-10-01', '2024-03-31', 488, 12688, 545.69, 14188, 564.92, 14688, 584.15, 15188, 1, 'Anoop Kumar', '2024-05-22 16:23:11'),
(327, 3, 'East', '2023-10-01', '2024-03-31', 395, 10270, 411, 10686, 500, 13000, 611, 15886, 1, 'Anoop Kumar', '2024-04-23 10:35:24'),
(328, 4, 'Central', '2023-10-01', '2024-03-31', 408.46, 10620, 433.46, 11270, 463.46, 12050, 493.46, 12830, 1, 'Anoop Kumar', '2024-06-25 10:54:53'),
(329, 8, 'West', '2023-08-11', '0001-01-01', 517, 13442, 578, 15028, 633, 16458, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:32:36'),
(330, 9, 'West', '2023-10-01', '2024-03-31', 462, 12012, 473, 12298, 483, 12558, 0, 0, 1, 'Anoop Kumar', '2023-12-27 14:24:17'),
(331, 19, 'Central', '2023-10-01', '2024-03-31', 378, 9825, 411, 10682, 464, 12060, 514, 13360, 1, 'Anoop Kumar', '2024-03-27 10:29:32'),
(332, 26, 'East', '2023-10-01', '2023-03-31', 352, 9152, 392, 10192, 442, 11492, 502, 13052, 1, 'Anoop Kumar', '2023-10-23 14:46:35'),
(333, 27, 'North', '2023-09-01', '2023-02-28', 412.95, 10736.75, 442.95, 11516.75, 477.45, 12413.75, 517.14, 13445.75, 1, 'Anoop Kumar', '2023-10-23 14:36:54'),
(334, 31, 'South', '2023-10-01', '2023-03-31', 498.12, 12951, 555.81, 14451, 575.04, 14951, 594.27, 15451, 1, 'Anoop Kumar', '2023-10-23 14:37:32'),
(335, 32, 'North', '2023-10-01', '2024-03-31', 395.19, 10275, 434.73, 11303, 486.96, 12661, 0, 0, 1, 'Anoop Kumar', '2024-05-22 16:28:11'),
(336, 34, 'North', '2023-10-01', '2024-03-31', 385.81, 10031, 408.62, 10624, 431.46, 11218, 0, 0, 1, 'Anoop Kumar', '2023-10-23 14:27:28'),
(337, 34, 'North', '2023-10-01', '2024-03-31', 385.81, 10031, 408.62, 10624, 431.46, 11218, 0, 0, 1, 'Anoop Kumar', '2024-03-27 10:33:32'),
(338, 8, 'West', '2023-08-11', '0001-01-01', 517, 13442, 578, 15028, 633, 16458, 0, 0, 1, 'Anoop Kumar', '2023-12-27 14:20:30'),
(339, 27, 'North', '2023-09-01', '2024-02-28', 412.95, 10736.75, 442.95, 11516.75, 477.45, 12413.75, 517.14, 13445.75, 1, 'Anoop Kumar', '2024-07-25 16:44:28'),
(340, 31, 'South', '2023-10-01', '2024-03-31', 498.12, 12951, 555.81, 14451, 575.04, 14951, 594.27, 15451, 1, 'Anoop Kumar', '2024-04-23 10:31:47'),
(341, 33, 'North', '2023-10-01', '2024-03-31', 395.19, 10275, 434.73, 11303, 486.96, 12661, 0, 0, 1, 'Anoop Kumar', '2024-05-22 16:28:43'),
(342, 26, 'East', '2023-10-01', '2024-03-31', 352, 9152, 392, 10192, 442, 11492, 502, 13052, 1, 'Anoop Kumar', '2024-07-25 16:41:22'),
(343, 6, 'North', '2023-10-01', '2024-03-31', 673, 17494, 742, 19279, 816, 21215, 888, 23082, 1, 'Anoop Kumar', '2023-10-27 11:11:16'),
(344, 6, 'North', '2023-10-01', '2024-03-31', 673, 17494, 742, 19279, 816, 21215, 888, 23082, 1, 'Anoop Kumar', '2024-10-11 13:01:47'),
(345, 7, 'North', '2023-10-01', '2024-03-31', 673, 17494, 742, 19279, 816, 21215, 888, 23082, 1, 'Anoop Kumar', '2024-10-11 13:04:50'),
(346, 15, 'East', '2023-10-01', '2024-03-31', 352.39, 9162.11, 369.17, 9598.52, 486.65, 12652.78, 562.15, 14615.83, 1, 'Anoop Kumar', '2024-09-26 10:38:31'),
(347, 2, 'East', '2023-06-01', '0000-00-00', 326.68, 9800.5, 379.7, 11391.1, 474.65, 14239.35, 610.24, 18307.05, 1, 'Anoop Kumar', '2024-07-19 11:47:19'),
(348, 8, 'West', '2023-10-11', '0001-01-01', 523, 13598, 584, 15184, 639, 16614, 0, 0, 1, 'Anoop Kumar', '2023-12-27 14:21:17'),
(349, 8, 'West', '2023-10-01', '0001-01-01', 523, 13598, 584, 15184, 639, 16614, 0, 0, 1, 'Anoop Kumar', '2023-12-27 14:23:23'),
(350, 40, 'East', '2023-10-01', '2024-03-31', 285.41, 7420.61, 313.1, 8140.49, 350.16, 9104.13, 0, 0, 1, 'Anoop Kumar', '2024-09-26 11:16:04'),
(351, 8, 'West', '2023-10-01', '2024-03-31', 523, 13598, 584, 15184, 639, 16614, 0, 0, 1, 'Anoop Kumar', '2024-06-25 10:55:44'),
(352, 9, 'West', '2023-10-01', '2024-03-31', 473, 12298, 483, 12558, 495, 12870, 0, 0, 1, 'Anoop Kumar', '2024-04-08 10:12:40'),
(353, 41, 'Shillong', '2022-10-01', '0000-00-00', 381, 9906, 432, 11232, 482, 12480, 534, 13884, 1, 'Anoop Kumar', '2024-01-03 15:43:46'),
(354, 41, 'Shillong', '2022-10-01', '0000-00-00', 381, 9906, 432, 11232, 483, 12558, 534, 13884, 1, 'Anoop Kumar', '2024-05-22 16:27:08'),
(355, 35, 'East', '2024-01-01', '2024-06-30', 378.5, 9841, 416.38, 10826, 458.04, 11909, 504, 13099, 1, 'Anoop Kumar', '2024-07-19 11:49:23'),
(356, 17, 'South', '2024-01-01', '2024-06-30', 541, 13526, 528.31, 13736, 536.38, 13946, 544.46, 14156, 1, 'Anoop Kumar', '2024-05-22 16:24:22'),
(357, 20, 'West', '2024-01-01', '2024-06-30', 503, 13089, 536, 13924, 565, 14700, 0, 0, 1, 'Anoop Kumar', '2024-08-07 12:49:31'),
(358, 11, 'North', '2024-01-01', '2024-06-30', 420.16, 10924.24, 441.17, 11470.41, 486.39, 12646.12, 536.24, 13942.36, 1, 'Anoop Kumar', '2024-10-16 16:10:15'),
(359, 19, 'Central', '2024-04-01', '2024-09-30', 453.85, 11800, 492.15, 12796, 558.42, 14519, 620.92, 16144, 1, 'Anoop Kumar', '2024-09-26 10:53:28'),
(360, 30, 'South', '2024-04-01', '2024-09-30', 428.11, 11130.8, 433.95, 11282.7, 444.34, 10945, 449.8, 11694.8, 1, 'Anoop Kumar', '2024-03-27 10:32:13'),
(361, 30, 'South', '2024-04-01', '2024-09-30', 428.11, 11130.8, 433.95, 11282.7, 444.34, 11552.84, 449.8, 11694.8, 1, 'Anoop Kumar', '2024-10-17 12:45:44'),
(362, 34, 'North', '2024-04-01', '2024-09-30', 482.27, 12539, 510.77, 13280, 539.35, 14023, 0, 0, 1, 'Anoop Kumar', '2024-06-25 10:56:21'),
(363, 9, 'West', '2024-04-01', '2024-09-30', 476, 12376, 487, 12662, 497, 12922, 0, 0, 0, 'Anoop Kumar', '2024-04-08 10:12:40'),
(364, 31, 'South', '2024-04-01', '2024-09-30', 572.83, 14893.65, 639.18, 16618.65, 661.29, 17193.65, 683.41, 17768.65, 0, 'Anoop Kumar', '2024-04-23 10:31:47'),
(365, 16, 'South', '2024-04-01', '2024-09-30', 581, 15106, 626, 16265, 675, 17540, 729, 18941, 0, 'Anoop Kumar', '2024-04-23 10:33:28'),
(366, 3, 'East', '2024-04-01', '2024-09-30', 410, 10660, 426, 11076, 519, 13494, 634, 16484, 1, 'Anoop Kumar', '2024-10-17 12:34:54');
INSERT INTO `master_min_wage_info` (`wage_id`, `mcr_id`, `region`, `from_date`, `to_date`, `unskd_per_day`, `unskd_per_month`, `semiskd_per_day`, `semiskd_per_month`, `skd_per_day`, `skd_per_month`, `highskd_per_day`, `highskd_per_month`, `status`, `created_by`, `created_date`) VALUES
(367, 28, 'North', '2024-04-01', '2024-10-30', 285, 7410, 297, 7722, 309, 8034, 359, 9334, 0, 'Anoop Kumar', '2024-04-23 10:37:18'),
(368, 37, 'North', '2023-10-01', '2024-03-31', 525, 13659, 535, 13909, 551, 14334, 567, 14734, 0, 'Anoop Kumar', '2024-04-23 10:54:46'),
(369, 1, 'South', '2024-04-01', '2024-09-30', 510, 13249, 567, 14749, 586, 15249, 606, 15749, 1, 'Anoop Kumar', '2024-09-26 10:15:52'),
(370, 17, 'South', '2024-04-01', '2024-09-30', 543, 13578, 530, 13788, 538, 13998, 546, 14208, 1, 'Anoop Kumar', '2024-08-02 11:54:06'),
(371, 41, 'North-East', '2023-10-01', '2024-10-01', 402, 10452, 455, 11830, 509, 13234, 563, 14638, 1, 'Anoop Kumar', '2024-09-26 11:23:04'),
(372, 41, 'Shillong', '2023-10-01', '2024-10-01', 402, 10452, 455, 11830, 509, 13234, 563, 14638, 1, 'Anoop Kumar', '2024-09-26 11:24:04'),
(373, 32, 'North', '2024-04-01', '2024-09-30', 410, 10648, 451, 11713, 505, 13120, 0, 0, 1, 'Anoop Kumar', '2024-10-17 12:46:28'),
(374, 33, 'North', '2024-04-01', '2024-09-30', 395.19, 10275, 434.73, 11303, 486.96, 12661, 0, 0, 1, 'Anoop Kumar', '2024-05-22 16:29:33'),
(375, 33, 'North', '2024-04-01', '2024-09-30', 410, 10648, 451, 11713, 505, 13120, 0, 0, 1, 'Anoop Kumar', '2024-10-17 12:47:28'),
(376, 4, 'Central', '2024-04-01', '2024-09-30', 419.23, 10900, 444.23, 11550, 474.23, 12330, 504.23, 13110, 1, 'Anoop Kumar', '2024-10-17 12:36:29'),
(377, 8, 'West', '2024-04-01', '2024-09-30', 537, 13962, 598, 15548, 653, 16978, 0, 0, 0, 'Anoop Kumar', '2024-06-25 10:55:44'),
(378, 34, 'North', '2024-04-01', '2024-09-30', 482.27, 12539, 510.77, 13280, 539.35, 14023, 0, 0, 0, 'Anoop Kumar', '2024-06-25 10:56:21'),
(379, 2, 'East', '2023-12-01', '0000-00-00', 336.57, 10097.14, 391.23, 11736.8, 489.07, 14671.95, 628.78, 18863.25, 1, 'Anoop Kumar', '2024-07-19 11:48:15'),
(380, 2, 'East', '2023-12-01', '0000-00-00', 336.57, 10097.14, 391.23, 11736.8, 489.07, 14671.95, 628.78, 18863.25, 0, 'Anoop Kumar', '2024-07-19 11:48:15'),
(381, 35, 'East', '2024-07-01', '2024-12-31', 382.92, 9956, 421.23, 10952, 463.38, 12048, 510, 13252, 0, 'Anoop Kumar', '2024-07-19 11:49:23'),
(382, 26, 'East', '2024-07-01', '2024-12-31', 352, 11700, 500, 13000, 550, 14300, 600, 15600, 1, 'Anoop Kumar', '2024-07-25 16:42:36'),
(383, 26, 'East', '2024-07-01', '2024-12-31', 450, 11700, 500, 13000, 550, 14300, 600, 15600, 1, 'Anoop Kumar', '2024-10-17 12:39:39'),
(384, 27, 'North', '2024-03-01', '2024-09-30', 419.22, 10899.82, 449.22, 11679.82, 483.72, 12576.82, 523.42, 13608.82, 0, 'Anoop Kumar', '2024-07-25 16:44:28'),
(385, 17, 'South', '2024-05-01', '2024-09-30', 548, 13708, 535.31, 13918, 543.38, 14128, 551.46, 14338, 0, 'Anoop Kumar', '2024-08-02 11:54:06'),
(386, 20, 'West', '2024-07-01', '2024-07-31', 510, 13271, 543, 14106, 572, 14882, 0, 0, 1, 'Anoop Kumar', '2024-08-07 13:00:00'),
(387, 20, 'West', '2024-07-01', '2024-12-31', 510, 13271, 543, 14106, 572, 14882, 0, 0, 0, 'Anoop Kumar', '2024-08-07 13:00:00'),
(388, 1, 'South', '2024-04-01', '2024-09-30', 459.11, 11936.8, 567, 14749, 586, 15249, 606, 15749, 1, 'Anoop Kumar', '2024-10-17 12:34:05'),
(389, 15, 'East', '2024-03-01', '2024-09-30', 468, 12168, 491, 12766, 647, 16822, 746, 19396, 0, 'Anoop Kumar', '2024-09-26 10:38:31'),
(390, 19, 'Central', '2024-04-01', '2024-09-30', 391.35, 10175, 424.31, 11032, 477.31, 12410, 527.31, 13710, 1, 'Anoop Kumar', '2024-10-17 12:38:06'),
(391, 40, 'East', '2024-04-01', '2024-09-30', 291.47, 7578, 319.75, 8314, 357.6, 9298, 0, 0, 0, 'Anoop Kumar', '2024-09-26 11:16:04'),
(392, 41, 'North-East', '2024-04-01', '2024-10-01', 417, 10842, 472, 12272, 527, 13702, 583, 15158, 0, 'Anoop Kumar', '2024-09-26 11:23:04'),
(393, 41, 'Shillong', '2024-04-01', '2024-10-01', 417, 10842, 472, 12272, 527, 13702, 583, 15158, 0, 'Anoop Kumar', '2024-09-26 11:24:04'),
(394, 6, 'North', '2024-10-01', '2025-03-31', 695, 18066, 767, 19929, 843, 21917, 917, 23836, 0, 'Anoop Kumar', '2024-10-11 13:01:47'),
(395, 7, 'North', '2024-10-01', '2025-03-31', 695, 18066, 767, 19929, 843, 21917, 917, 23836, 0, 'Anoop Kumar', '2024-10-11 13:04:50'),
(396, 11, 'North', '2024-07-01', '2025-03-31', 423.14, 1101.76, 444.3, 11551.81, 489.84, 12735.86, 540.05, 14041.3, 1, 'Anoop Kumar', '2024-10-17 12:30:49'),
(397, 11, 'North', '2024-07-01', '2025-03-31', 423.14, 11001.76, 444.3, 11551.81, 489.84, 12735.86, 540.05, 14041.3, 0, 'Anoop Kumar', '2024-10-17 12:30:49'),
(398, 1, 'South', '2024-10-01', '2025-03-31', 466.49, 12128.8, 575.04, 14951, 594.27, 15451, 613.5, 15951, 0, 'Anoop Kumar', '2024-10-17 12:32:38'),
(399, 1, 'South', '2024-10-01', '2025-03-31', 459.11, 11936.8, 567, 14749, 586, 15249, 606, 15749, 1, 'Anoop Kumar', '2024-10-17 12:52:57'),
(400, 3, 'East', '2024-10-01', '2025-03-31', 412, 10712, 428, 11128, 521, 13546, 636, 16536, 0, 'Anoop Kumar', '2024-10-17 12:34:54'),
(401, 4, 'Central', '2024-10-01', '2025-03-31', 421, 10948, 446, 11598, 476, 12378, 506, 13158, 0, 'Anoop Kumar', '2024-10-17 12:36:29'),
(402, 19, 'Central', '2024-10-01', '2025-03-31', 393.27, 10225, 426.23, 11082, 479.23, 12460, 529.23, 13760, 0, 'Anoop Kumar', '2024-10-17 12:38:06'),
(403, 26, 'East', '2024-10-01', '2025-03-31', 452, 11752, 502, 13052, 552, 14352, 602, 15652, 0, 'Anoop Kumar', '2024-10-17 12:39:39'),
(404, 30, 'South', '2024-09-01', '2025-03-31', 530.88, 13802.86, 538.15, 13991.86, 557.76, 14501.86, 0, 0, 0, 'Anoop Kumar', '2024-10-17 12:45:44'),
(405, 32, 'North', '2024-10-01', '2025-03-31', 411.58, 10701, 452.77, 11772, 507.15, 13186, 0, 0, 0, 'Anoop Kumar', '2024-10-17 12:46:28'),
(406, 33, 'North', '2024-10-01', '2025-03-31', 411.58, 10701, 452.77, 11772, 507.15, 13186, 0, 0, 0, 'Anoop Kumar', '2024-10-17 12:47:28'),
(407, 1, 'South', '2024-10-01', '2025-03-31', 466.49, 12128.8, 575.04, 14951, 594.27, 15451, 613.5, 15951, 0, 'Anoop Kumar', '2024-10-17 12:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `master_office_location_info`
--

CREATE TABLE `master_office_location_info` (
  `id` int(11) NOT NULL,
  `fk_agency_id` int(11) NOT NULL,
  `office_location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_indo_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_signature` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hr_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_contact` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_output_types`
--

CREATE TABLE `master_output_types` (
  `id` int(11) NOT NULL,
  `output_type_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_professionaltax_info`
--

CREATE TABLE `master_professionaltax_info` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `financial_year` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `gross_salary_from` int(11) NOT NULL,
  `gross_salary_to` int(11) NOT NULL,
  `pt_tax` int(11) NOT NULL,
  `feb_tax` int(11) NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_qrcode_types`
--

CREATE TABLE `master_qrcode_types` (
  `id` int(11) NOT NULL,
  `qrcode_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL,
  `created_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '(1=>active, 0=>inactive)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_qrcode_types`
--

INSERT INTO `master_qrcode_types` (`id`, `qrcode_type`, `create_datetime`, `created_by`, `update_datetime`, `updated_by`, `status`) VALUES
(1, 'Employee', '2021-04-12 14:54:39', 'utkarsh', '2021-04-12 14:54:39', 'utkarsh', 1),
(2, 'Asset', '2021-04-12 14:55:42', 'utkarsh', '2021-04-12 14:55:42', 'utkarsh', 1),
(3, 'Warehouse', '2021-04-12 14:55:42', 'utkarsh', '2021-04-12 14:55:42', 'utkarsh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_reference_doc_status`
--

CREATE TABLE `master_reference_doc_status` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_role_info`
--

CREATE TABLE `master_role_info` (
  `r_id` int(11) NOT NULL,
  `r_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastUpdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_salarymethods_info`
--

CREATE TABLE `master_salarymethods_info` (
  `id` int(11) NOT NULL,
  `method_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Salary calculation methods (formulas) table';

--
-- Dumping data for table `master_salarymethods_info`
--

INSERT INTO `master_salarymethods_info` (`id`, `method_name`, `description`, `create_date`, `create_by`, `update_date`, `update_by`, `status`) VALUES
(1, 'Salary Calculation on total working days', 'Salary Calculation on total working days : total month days - weekly off & state approved holidays.', '2018-07-11 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(2, 'Salary Calculation on total month days', 'Salary Calculation on total month days : total days in present month.', '2018-07-11 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1),
(3, 'Salary Calculation on Fix days', 'Salary Calculation on Fix days', '2018-07-11 00:00:00', 'EC-098', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_settings_info`
--

CREATE TABLE `master_settings_info` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Here we will define all type of settings';

-- --------------------------------------------------------

--
-- Table structure for table `master_station_types`
--

CREATE TABLE `master_station_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_station_types`
--

INSERT INTO `master_station_types` (`id`, `name`, `short_name`, `description`, `create_datetime`, `create_by`, `update_datetime`, `update_by`, `status`) VALUES
(1, 'Ex-Station', 'Ex-HQ', 'Ex-Station', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(2, 'Out-Station', 'OS', 'Out-Station', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(3, 'Head Quarters', 'HQ', 'Head Quarters', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(4, 'Hill Station', 'HS', 'Hill Station', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_tax_deduction_info`
--

CREATE TABLE `master_tax_deduction_info` (
  `tax_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `standard_deduction` int(11) NOT NULL,
  `rebate_from` int(11) NOT NULL,
  `rebate_to` int(11) NOT NULL,
  `rebate` int(11) NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_third_party_signatory`
--

CREATE TABLE `master_third_party_signatory` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `created_by` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `deactivate_datetime` datetime NOT NULL,
  `deactivate_by` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_travel_modes`
--

CREATE TABLE `master_travel_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_travel_modes`
--

INSERT INTO `master_travel_modes` (`id`, `name`, `description`, `create_datetime`, `create_by`, `update_datetime`, `update_by`, `status`) VALUES
(1, 'Public Transport', 'Public Transport', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(2, '4W', 'Car', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(3, '2W', 'Bike', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(4, 'Share Taxi', 'Share Taxi', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(5, 'Train', 'Train', '2019-11-06 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(6, 'Flight', 'Flight', '2019-11-06 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(7, 'None Selected', 'None', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_travel_types`
--

CREATE TABLE `master_travel_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `master_travel_types`
--

INSERT INTO `master_travel_types` (`id`, `name`, `description`, `create_datetime`, `create_by`, `update_datetime`, `update_by`, `status`) VALUES
(1, 'Local', 'Local', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1),
(2, 'Outstation', 'Outstation', '2019-10-21 00:00:00', 'sup001', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `master_uploaded_documents_info`
--

CREATE TABLE `master_uploaded_documents_info` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `document_abbr` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `document_status` tinyint(1) NOT NULL COMMENT '0=Active,1=Not Active',
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_visitor_type`
--

CREATE TABLE `master_visitor_type` (
  `id` int(11) NOT NULL,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_weekends_info`
--

CREATE TABLE `master_weekends_info` (
  `wkd_id` int(11) NOT NULL COMMENT 'weekend id',
  `sun` int(11) NOT NULL,
  `mon` int(11) NOT NULL,
  `tues` int(11) NOT NULL,
  `wed` int(11) NOT NULL,
  `thurs` int(11) NOT NULL,
  `fri` int(11) NOT NULL,
  `sat` int(11) NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastUpdatedBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_weekoffs_info`
--

CREATE TABLE `master_weekoffs_info` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `weekoff` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_workingweekoff_info`
--

CREATE TABLE `master_workingweekoff_info` (
  `id` int(11) NOT NULL COMMENT 'holiday id',
  `company_id` int(11) NOT NULL,
  `circle_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `definedby` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_working_location_info`
--

CREATE TABLE `master_working_location_info` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `contact_person_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_mobile` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdcal_chkup_emp`
--

CREATE TABLE `mdcal_chkup_emp` (
  `id` int(11) NOT NULL,
  `fk_emp_id` int(11) NOT NULL COMMENT 'pk of emp_personal_info',
  `fk_unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'unique_id of table mdcal_chkup_settings',
  `test_date` date DEFAULT NULL,
  `mdcal_test_doc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'done,close',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mdcal_chkup_settings`
--

CREATE TABLE `mdcal_chkup_settings` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'fk_company_id/due_date',
  `fk_company_id` int(11) NOT NULL COMMENT 'mc_id of table master_companies_info',
  `due_date` date NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'deafult email of hr from master_companies_info based on company_id',
  `description` text COLLATE utf8_unicode_ci,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reminder` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'before(1=>daily,2=>weekly,3=>once);after(0=>none,4=>daily,5=>weekly,6=>once)',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active' COMMENT 'active,inactive,close',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `log_status` int(1) NOT NULL DEFAULT '1' COMMENT '1=>not in log; 0=>in log'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_access`
--

CREATE TABLE `module_access` (
  `id` int(11) NOT NULL,
  `fk_action_id` int(11) DEFAULT NULL COMMENT '(id from emp_menus_info)',
  `fk_user_id` int(11) DEFAULT NULL COMMENT '(id from indoadmin)',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `type` enum('Public','Private') COLLATE utf8_unicode_ci DEFAULT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `media` enum('No','Image','Video') COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_readers_logs`
--

CREATE TABLE `notifications_readers_logs` (
  `id` int(11) NOT NULL,
  `fk_notifications_id` int(11) DEFAULT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `read_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onboard_activity_status`
--

CREATE TABLE `onboard_activity_status` (
  `id` int(11) NOT NULL,
  `fk_activity_id` int(11) DEFAULT NULL,
  `expected_date` datetime DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `completed_date` datetime NOT NULL,
  `emp_code` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Delay',
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onboard_master_activity`
--

CREATE TABLE `onboard_master_activity` (
  `id` int(11) NOT NULL,
  `activity` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_dept_responsible` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_flag` enum('Before Joining','After Joining','On Joining') COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_days` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onboard_master_flag`
--

CREATE TABLE `onboard_master_flag` (
  `id` int(11) NOT NULL,
  `activity_flag` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optional_viewers`
--

CREATE TABLE `optional_viewers` (
  `viewers_id` int(11) NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `child_cycle_id` int(11) NOT NULL,
  `viewers` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_master`
--

CREATE TABLE `pages_master` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=inactive,1=active',
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_access_permissions`
--

CREATE TABLE `page_access_permissions` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_pms_cycle`
--

CREATE TABLE `parent_pms_cycle` (
  `parent_cycle_id` int(11) NOT NULL,
  `year` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `no_of_cycles` int(11) NOT NULL,
  `cycle_start_date` date NOT NULL,
  `cycle_end_date` date NOT NULL,
  `status` int(1) NOT NULL COMMENT '0=draft,1=publish,2=active,3=completed',
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pension_opt_out`
--

CREATE TABLE `pension_opt_out` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_monthy_table`
--

CREATE TABLE `pf_monthy_table` (
  `pf_id` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `pf_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uan_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `actual_gross` int(11) NOT NULL,
  `epf_Wages` int(11) NOT NULL,
  `eps_Wages` int(11) NOT NULL,
  `edli_Wages` int(11) NOT NULL,
  `epf_Contri` int(11) NOT NULL,
  `eps_Contri` int(11) NOT NULL,
  `epf_Eps_Diffenence` int(11) NOT NULL,
  `ncp_Days` int(11) NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pf_nominee_info`
--

CREATE TABLE `pf_nominee_info` (
  `pf_id` int(11) NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `submit_status` tinyint(1) NOT NULL COMMENT '0=Not Submit , 1 = Submit',
  `pdf_file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pms_additionals_approvers`
--

CREATE TABLE `pms_additionals_approvers` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_child_pms_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` datetime NOT NULL,
  `released_date` datetime DEFAULT NULL,
  `released_by` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pms_cycle_ratings`
--

CREATE TABLE `pms_cycle_ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fk_child_pms_id` int(11) NOT NULL,
  `rating_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `create_by` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` datetime NOT NULL,
  `released_date` datetime DEFAULT NULL,
  `released_by` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pms_user_kras`
--

CREATE TABLE `pms_user_kras` (
  `kra_id` int(10) UNSIGNED NOT NULL,
  `manager_kra_id` int(11) NOT NULL COMMENT 'manager kra it',
  `hierarchy_key` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'kra id hierarchy',
  `fk_child_pms_id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL COMMENT '0=Public,1=Private',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `target` float NOT NULL,
  `measurement_criteria` text COLLATE utf8_unicode_ci NOT NULL,
  `weightage` double(20,2) NOT NULL,
  `system_calculated_task` double(20,2) DEFAULT NULL,
  `self_calculated_task` double(20,2) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `submit_status` tinyint(1) NOT NULL COMMENT '0=Not Submit , 1 = Submit',
  `active_status` tinyint(1) NOT NULL COMMENT '0=Active,1=De-Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provident_fund_documents`
--

CREATE TABLE `provident_fund_documents` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type` enum('ECR','Challan','Payment Confirmation Slip') COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provident_fund_documents_v2`
--

CREATE TABLE `provident_fund_documents_v2` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) DEFAULT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_type` enum('ECR','Challan','Payment Confirmation Slip') COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pt_deduction_table`
--

CREATE TABLE `pt_deduction_table` (
  `pt_id` int(11) NOT NULL,
  `circle_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `pt_period` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `actual_gross` int(11) NOT NULL,
  `pt_deduction` int(11) NOT NULL,
  `calculated_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `calculated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pt_documents`
--

CREATE TABLE `pt_documents` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Challan','IIIB Excel','IIIB PDF') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pt_documents_v2`
--

CREATE TABLE `pt_documents_v2` (
  `id` int(11) NOT NULL,
  `fk_group_id` int(11) NOT NULL,
  `financial_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `document_type` enum('Challan','IIIB Excel','IIIB PDF') COLLATE utf8_unicode_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` date DEFAULT NULL,
  `no_of_employees` int(11) DEFAULT NULL,
  `remarks` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrcode_fields`
--

CREATE TABLE `qrcode_fields` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `qrcode_type_id` int(11) NOT NULL COMMENT 'id from master_qrcode_types',
  `column_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_alias` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` timestamp NULL DEFAULT NULL,
  `created_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '(1=>active, 0=>inactive)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reference_document_setting`
--

CREATE TABLE `reference_document_setting` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `approver_type` int(55) NOT NULL,
  `year_type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `third_party_signatory` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `created_by` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_bta_documents`
--

CREATE TABLE `rom_bta_documents` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_bta_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_bta_events`
--

CREATE TABLE `rom_bta_events` (
  `id` int(11) NOT NULL,
  `serial_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_id` int(11) DEFAULT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` text COLLATE utf8_unicode_ci NOT NULL,
  `to_address` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `budget` int(11) DEFAULT NULL,
  `travel_mode_id` int(11) DEFAULT NULL COMMENT 'id from master_travel_modes',
  `travel_type_id` int(11) DEFAULT NULL COMMENT 'id from master_travel_types',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'id from rom_master_expense_status',
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `submit_date` datetime DEFAULT NULL,
  `submit_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit_remarks` text COLLATE utf8_unicode_ci,
  `cancel_date` datetime DEFAULT NULL,
  `cancel_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cancel_remarks` text COLLATE utf8_unicode_ci,
  `approve_date` datetime DEFAULT NULL,
  `approve_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_approver_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_approver_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_manager_change` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NO',
  `approve_reject_remarks` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_bta_event_history`
--

CREATE TABLE `rom_bta_event_history` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remarks` text COLLATE utf8_unicode_ci,
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_bta_event_hotel_booking`
--

CREATE TABLE `rom_bta_event_hotel_booking` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_address` text COLLATE utf8_unicode_ci NOT NULL,
  `check_in_time` datetime NOT NULL,
  `check_out_time` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `travel_desk_remarks` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_bta_event_travels`
--

CREATE TABLE `rom_bta_event_travels` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL COMMENT 'id from rom_bta_events',
  `indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` text COLLATE utf8_unicode_ci NOT NULL,
  `to_address` text COLLATE utf8_unicode_ci NOT NULL,
  `travel_date` date NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `is_return` enum('YES','NO') COLLATE utf8_unicode_ci NOT NULL,
  `return_travel_date` date DEFAULT NULL,
  `return_departure_time` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `travel_desk_remarks` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_expenses_history`
--

CREATE TABLE `rom_expenses_history` (
  `id` int(11) NOT NULL,
  `fk_outstation_expenses_id` int(11) DEFAULT NULL,
  `fk_local_expenses_id` int(11) DEFAULT NULL,
  `fk_status_id` int(11) NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_expense_documents`
--

CREATE TABLE `rom_expense_documents` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fk_expense_id` int(11) NOT NULL,
  `document_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_expense_travel_locations`
--

CREATE TABLE `rom_expense_travel_locations` (
  `id` int(11) NOT NULL,
  `fk_local_expenses_id` int(11) DEFAULT NULL COMMENT 'ID From rom_local_expenses',
  `fk_outstation_expenses_id` int(11) DEFAULT NULL COMMENT 'ID From rom_outstation_expenses_id',
  `origin_address` text COLLATE utf8_unicode_ci NOT NULL,
  `destination_address` text COLLATE utf8_unicode_ci NOT NULL,
  `origin_address1` text COLLATE utf8_unicode_ci COMMENT 'Orignial Source Address',
  `destination_address1` text COLLATE utf8_unicode_ci COMMENT 'Original Destination Address',
  `distance_km` float(9,2) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_local_expenses`
--

CREATE TABLE `rom_local_expenses` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_division_id` int(11) NOT NULL COMMENT 'id from master_divisions',
  `fk_metro_city_id` int(11) NOT NULL COMMENT 'id from master_metro_cities',
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `fk_station_type_id` int(11) NOT NULL COMMENT 'id from master_station_types',
  `expense_date` date NOT NULL,
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info',
  `fk_expense_type_id` int(11) NOT NULL COMMENT 'id from master_expense_types',
  `fk_bta_id` int(11) DEFAULT NULL,
  `from_place` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `to_place` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `distance_km` float NOT NULL,
  `fk_travel_mode_id` int(11) NOT NULL COMMENT 'id from master_travel_modes',
  `doctor_met` int(11) NOT NULL,
  `chemist_met` int(11) NOT NULL,
  `daily_allowance` int(11) NOT NULL,
  `car_allowance` int(11) NOT NULL,
  `per_km_rate` int(11) NOT NULL,
  `max_km_limit` int(11) NOT NULL,
  `trip_amount` int(11) NOT NULL,
  `trip_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `approver_indo_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_status_id` int(11) NOT NULL DEFAULT '1' COMMENT 'id from rom_master_expense_status',
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_expense_status`
--

CREATE TABLE `rom_master_expense_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_local_expense_settings`
--

CREATE TABLE `rom_master_local_expense_settings` (
  `id` int(11) NOT NULL,
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info',
  `fk_expense_location_id` int(11) NOT NULL COMMENT 'id from master_expense_locations',
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `fk_station_type_id` int(11) NOT NULL COMMENT 'id from master_station_types',
  `daily_allowance` float NOT NULL,
  `car_allowance` float NOT NULL,
  `per_km_rate` float NOT NULL COMMENT 'rate in INR(Rs.)',
  `max_km_limit` float NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deactivated_datetime` datetime DEFAULT NULL,
  `deactivated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_other_expense_settings`
--

CREATE TABLE `rom_master_other_expense_settings` (
  `id` int(11) NOT NULL,
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info',
  `fk_other_expense_type_id` int(11) NOT NULL COMMENT 'id from rom_master_other_expense_types',
  `amount_type` int(11) NOT NULL COMMENT 'Not Applicable=1, Actual=2, Maximum=3, On Approval=4, Fixed=5',
  `amount` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deactivated_datetime` datetime DEFAULT NULL,
  `deactivated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_other_expense_types`
--

CREATE TABLE `rom_master_other_expense_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_outstation_expense_settings`
--

CREATE TABLE `rom_master_outstation_expense_settings` (
  `id` int(11) NOT NULL,
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info',
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `daily_allowance` float NOT NULL,
  `fk_transport_id` int(11) NOT NULL COMMENT 'id from rom_master_transports',
  `hotel_amount_max_limit` int(11) NOT NULL,
  `conveyance_amount_max_limit` int(11) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deactivated_datetime` datetime DEFAULT NULL,
  `deactivated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_master_transports`
--

CREATE TABLE `rom_master_transports` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_other_expenses`
--

CREATE TABLE `rom_other_expenses` (
  `id` int(11) NOT NULL,
  `fk_local_expenses_id` int(11) DEFAULT NULL,
  `fk_outstation_expenses_id` int(11) DEFAULT NULL,
  `fk_parent_expense_id` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(NOT IN USE)id from rom_local_expenses',
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_division_id` int(11) NOT NULL COMMENT 'id from master_divisions',
  `fk_metro_city_id` int(11) NOT NULL COMMENT 'id from master_metro_cities	',
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `fk_station_type_id` int(11) NOT NULL COMMENT 'id from master_station_types	',
  `fk_expense_type_id` int(11) DEFAULT NULL COMMENT 'id from master_expense_types',
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info	',
  `expense_date` date NOT NULL,
  `fk_other_expense_type_id` int(11) NOT NULL COMMENT 'id from rom_master_other_expense_types',
  `amount` float NOT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `approver_indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_status_id` int(11) NOT NULL COMMENT 'id from rom_master_expense_status',
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rom_outstation_expenses`
--

CREATE TABLE `rom_outstation_expenses` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_division_id` int(11) NOT NULL COMMENT 'id from master_divisions',
  `fk_metro_city_id` int(11) NOT NULL COMMENT 'id from master_metro_cities	',
  `fk_metro_type_id` int(11) NOT NULL COMMENT 'id from master_metro_types',
  `fk_station_type_id` int(11) NOT NULL COMMENT 'id from master_station_types	',
  `fk_expense_type_id` int(11) NOT NULL COMMENT 'id from master_expense_types',
  `fk_bta_id` int(11) DEFAULT NULL COMMENT 'id from rom_bta_events',
  `fk_designation_id` int(11) NOT NULL COMMENT 'id from master_designations_info	',
  `expense_date` date NOT NULL,
  `from_place` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NOT IN USE' COMMENT 'Not In Use',
  `to_place` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NOT IN USE' COMMENT 'Not In Use',
  `distance_km` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NOT IN USE' COMMENT 'Not In Use',
  `trip_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fk_fare_transport_id` int(11) NOT NULL COMMENT 'id from rom_master_transports',
  `fk_travel_mode_id` int(11) NOT NULL DEFAULT '0',
  `fare_transport_amount` float(9,2) NOT NULL,
  `daily_allowance` int(11) NOT NULL,
  `hotel_amount` float(9,2) NOT NULL,
  `conveyance` float(9,2) NOT NULL,
  `trip_days` float(9,2) NOT NULL,
  `trip_amount` float(9,2) NOT NULL,
  `max_km_limit` float(9,2) NOT NULL DEFAULT '0.00',
  `per_km_rate` float(9,2) NOT NULL DEFAULT '0.00',
  `remarks` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `approver_indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `create_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fk_status_id` int(11) NOT NULL COMMENT 'id from rom_master_expense_status',
  `update_datetime` datetime NOT NULL,
  `update_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_change_permissions`
--

CREATE TABLE `salary_change_permissions` (
  `id` int(11) NOT NULL,
  `fk_salary_id` int(11) DEFAULT NULL COMMENT 'sl_id from emp_salary_info',
  `requested_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `requester_remarks` tinytext COLLATE utf8_unicode_ci,
  `created_datetime` datetime DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approver_remarks` tinytext COLLATE utf8_unicode_ci,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Cancelled','Approved','Rejected') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_invoice`
--

CREATE TABLE `salary_invoice` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `invoice_month` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `customer_po_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `cancel_reason` tinytext COLLATE utf8_unicode_ci,
  `amount_without_tax` float(9,2) DEFAULT NULL,
  `amount_with_tax` float(9,2) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_bank_payments`
--

CREATE TABLE `salary_bank_payments` (
  `id` int(11) NOT NULL,
  `fk_salary_id` int(11) DEFAULT NULL,
  `payment_date` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float(9,2) DEFAULT NULL,
  `chq_ref_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ack_change_remarks` tinytext COLLATE utf8_unicode_ci,
  `status` enum('Success','Bounce') COLLATE utf8_unicode_ci DEFAULT 'Success',
  `created_datetime` datetime NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_regimes`
--

CREATE TABLE `tax_regimes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0=inactive,1=active',
  `deleted_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delete_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_regimes`
--

INSERT INTO `tax_regimes` (`id`, `name`, `description`, `create_by`, `create_datetime`, `status`, `deleted_by`, `delete_datetime`) VALUES
(1, 'Old Regime', NULL, 'sup001', '2020-05-18 00:00:00', 1, '', '0000-00-00 00:00:00'),
(2, 'New Regime', NULL, 'sup001', '2020-05-18 00:00:00', 0, 'adm0013', '2023-07-24 12:02:11'),
(3, 'test 1', 'test description', 'sup001', '2020-05-20 15:07:41', 0, 'sup001', '2020-05-26 13:59:02'),
(4, 'Tax Slabs list of New Regime 2023-24', 'Tax Slabs list of New Regime 2023-24', 'adm0013', '2023-07-24 11:48:58', 1, '', '0000-00-00 00:00:00'),
(5, 'Tax Slabs list of New Regime 2024-25', 'Tax Slabs list of New Regime 2024-25', 'sup001', '2024-07-24 14:30:19', 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tax_regimes_slabs`
--

CREATE TABLE `tax_regimes_slabs` (
  `id` int(11) NOT NULL,
  `fk_tax_regime_id` int(11) DEFAULT NULL,
  `min_limit` float DEFAULT NULL,
  `max_limit` float DEFAULT NULL,
  `fix_tax` float DEFAULT NULL,
  `tax_percentage` float DEFAULT NULL,
  `description` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0=inactive,1=active',
  `deleted_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `delete_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_regimes_slabs`
--

INSERT INTO `tax_regimes_slabs` (`id`, `fk_tax_regime_id`, `min_limit`, `max_limit`, `fix_tax`, `tax_percentage`, `description`, `create_datetime`, `create_by`, `status`, `deleted_by`, `delete_datetime`) VALUES
(1, 1, 0, 250000, 0, 0, 'NILL', '2020-05-25 00:00:00', 'sup001', 0, 'sup001', '2020-05-27 14:04:53'),
(2, 1, 250001, 500000, 12500, 0, '5% *\r\nNIL after rebate of Rs.12500 u/s 87A', '2020-05-25 00:00:00', 'sup001', 0, 'sup001', '2020-05-27 14:04:54'),
(3, 1, 500001, 750000, 12500, 20, '₹12500 + 20% of total income exceeding ₹5,00,000 ', '2020-05-25 00:00:00', 'sup001', 0, 'sup001', '2020-05-27 14:04:54'),
(4, 1, 750001, 1000000, 62500, 20, '₹62500 + 20% of total income exceeding ₹7,50,000', '2020-05-25 00:00:00', 'sup001', 0, 'sup001', '2020-05-27 14:04:55'),
(5, 1, 1000000, 1250000, 112500, 30, '₹112500 + 30% of total income exceeding ₹10,00,000', '2020-05-25 00:00:00', 'sup001', 0, 'sup001', '2020-05-27 14:04:55'),
(11, 2, 0, 250000, 0, 0, 'NIL', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(12, 2, 250001, 500000, 0, 5, '5% of income exceeding Rs.2,50,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(13, 2, 500001, 750000, 12500, 10, 'Rs.12500 + 10% of income exceeding Rs.5,00,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(14, 2, 750001, 1000000, 37500, 15, 'Rs.37500 + 15% of income exceeding Rs.7,50,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(15, 2, 1000000, 1250000, 75000, 20, 'Rs.75000 + 20% of income exceeding Rs.10,00,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(16, 2, 1250000, 1500000, 125000, 25, 'Rs.125000 + 25% of income exceeding Rs.12,50,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(17, 2, 1500000, 10000000, 187500, 30, 'Rs.187500 + 30% of income exceeding Rs.15,00,000', '2020-05-27 14:04:38', 'sup001', 1, '', '0000-00-00 00:00:00'),
(18, 1, 0, 250000, 0, 0, 'NIL', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(19, 1, 250001, 500000, 0, 5, '5% of income exceeding Rs.2,50,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(20, 1, 500001, 750000, 12500, 20, 'Rs.12500 + 20% of income exceeding Rs.5,00,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(21, 1, 750001, 1000000, 62500, 20, 'Rs.62500 + 20% of income exceeding Rs.7,50,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(22, 1, 1000000, 1250000, 112500, 30, 'Rs.112500 + 30% of income exceeding Rs.10,00,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(23, 1, 1250000, 1500000, 187500, 30, 'Rs.187500 + 30% of income exceeding Rs.12,50,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(24, 1, 1500000, 10000000, 262500, 30, 'Rs.262500 + 30% of income exceeding Rs.15,00,000', '2020-05-27 14:16:27', 'sup001', 1, '', '0000-00-00 00:00:00'),
(25, 4, 0, 300000, 0, 0, 'NIL', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(26, 4, 300001, 600000, 0, 5, '5% of income exceeding Rs.3,00,000', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(27, 4, 600001, 900000, 15000, 10, 'Rs 15,000 + 10% on income exceeding Rs 6,00,000', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(28, 4, 900001, 1200000, 45000, 15, 'Rs 45,000 + 15% on income exceeding Rs 9,00,000', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(29, 4, 1200000, 1500000, 90000, 20, 'Rs 90,000 + 20% on income exceeding Rs 12,00,000', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(30, 4, 1500000, 10000000, 150000, 30, 'Rs 150,000 + 30% on income exceeding Rs 15,00,000', '2023-07-24 12:01:50', 'adm0013', 1, '', '0000-00-00 00:00:00'),
(31, 5, 0, 300000, 0, 0, 'NIL', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00'),
(32, 5, 300001, 700000, 0, 5, '5% of income exceeding Rs.3,00,000', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00'),
(33, 5, 700001, 1000000, 20000, 10, 'Rs 20,000 + 10% on income exceeding Rs 7,00,000', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00'),
(34, 5, 1000000, 1200000, 50000, 15, 'Rs 50,000 + 15% on income exceeding Rs 10,00,000', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00'),
(35, 5, 1200000, 1500000, 80000, 20, 'Rs 80,000 + 20% on income exceeding Rs 12,00,000', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00'),
(36, 5, 1500000, 100000000, 140000, 30, 'Rs 140,000 + 30% on income exceeding Rs 15,00,000', '2024-07-24 14:42:10', 'sup001', 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_queries`
--

CREATE TABLE `ticket_queries` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department_person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_person_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `priority` enum('High','Normal','Low','') COLLATE utf8_unicode_ci NOT NULL,
  `detailed` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` enum('Draft','Open','Closed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Open',
  `reassigned_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reassigned_datetime` datetime NOT NULL,
  `closed_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `closed_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_queries_answers`
--

CREATE TABLE `ticket_queries_answers` (
  `id` int(11) NOT NULL,
  `fk_ticket_id` int(11) NOT NULL COMMENT 'id from ticket_queries table',
  `ticket_answer` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` enum('Draft','Submit') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_system_handlers`
--

CREATE TABLE `ticket_system_handlers` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) NOT NULL COMMENT 'company id from master companies',
  `fk_department_id` int(11) NOT NULL COMMENT 'department id from master department table',
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_mail_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `update_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `where_value` tinytext COLLATE utf8_unicode_ci,
  `before_update` text COLLATE utf8_unicode_ci,
  `after_update` text COLLATE utf8_unicode_ci,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `company_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` int(20) NOT NULL,
  `email_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(3) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_track`
--

CREATE TABLE `video_track` (
  `id` int(3) NOT NULL,
  `fk_video_id` int(3) NOT NULL COMMENT 'This is id of video table',
  `indo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vip_exclusions`
--

CREATE TABLE `vip_exclusions` (
  `id` int(11) NOT NULL,
  `emp_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exclusions_type_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active,0=inactive',
  `activate_datetime` datetime NOT NULL,
  `activate_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deactivate_datetime` datetime NOT NULL,
  `deactivate_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vip_exclusions_type`
--

CREATE TABLE `vip_exclusions_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_update_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vs_meetings`
--

CREATE TABLE `vs_meetings` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) DEFAULT NULL COMMENT 'id from vs_visitors',
  `visitor_mobile` bigint(20) DEFAULT NULL,
  `meeting_id` bigint(20) DEFAULT NULL,
  `meeting_datetime` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `check_in_datetime` datetime DEFAULT NULL,
  `check_out_datetime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vs_visitors`
--

CREATE TABLE `vs_visitors` (
  `id` int(11) NOT NULL,
  `fk_visitor_type_id` int(11) DEFAULT '0' COMMENT 'id from 	master_visitor_type',
  `first_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_mobile` bigint(20) DEFAULT NULL,
  `purpose` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visitor_mobile` bigint(20) DEFAULT NULL,
  `fk_master_document_types_id` int(11) DEFAULT NULL,
  `document_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fever` int(11) DEFAULT '0' COMMENT '1=yes,0=no',
  `cough` int(11) NOT NULL DEFAULT '0' COMMENT '1=yes,0=no',
  `breathlessness` int(11) DEFAULT '0' COMMENT '1=yes,0=no',
  `throat` int(11) DEFAULT '0' COMMENT '1=yes,0=no',
  `covid_contact` int(11) DEFAULT '0' COMMENT '1=yes,0=no',
  `covid_declaration` int(11) DEFAULT '0' COMMENT '1=yes,0=no',
  `remarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '[1=>Active, 0=>Deleted, 2=>Approved, 3=>Rejected]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vs_visitors_visits`
--

CREATE TABLE `vs_visitors_visits` (
  `id` int(11) NOT NULL,
  `first_name` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_name` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_mobile` bigint(20) DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visitor_mobile` bigint(20) DEFAULT NULL,
  `remarks` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '[1=>pending, 2=>approved, 3=>rejected]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wfh_attendance`
--

CREATE TABLE `wfh_attendance` (
  `id` int(11) NOT NULL,
  `indo_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `work_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `work_hours` time DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `current_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `application` enum('App','Web') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wfh_attendance_settings`
--

CREATE TABLE `wfh_attendance_settings` (
  `id` int(11) NOT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `half_day_hours` time DEFAULT NULL,
  `full_day_hours` time DEFAULT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wh_types`
--

CREATE TABLE `wh_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_name` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `create_datetime` datetime DEFAULT NULL,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0=inactive,1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wh_warehouse`
--

CREATE TABLE `wh_warehouse` (
  `id` int(11) NOT NULL,
  `wh_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_company_id` int(11) DEFAULT NULL,
  `fk_wh_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_type_id` int(11) DEFAULT NULL COMMENT '0=primary, rest other numbers are id of wh_warehouse table.',
  `address` tinytext COLLATE utf8_unicode_ci,
  `fk_state_id` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `remarks` tinytext COLLATE utf8_unicode_ci,
  `create_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_datetime` datetime DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '1=active,0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `year_types`
--

CREATE TABLE `year_types` (
  `id` int(11) NOT NULL,
  `year_type_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_docs_status_list`
--
ALTER TABLE `all_docs_status_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `assets_info`
--
ALTER TABLE `assets_info`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `ssitCode` (`ssitCode`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `assets_location`
--
ALTER TABLE `assets_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets_order_info`
--
ALTER TABLE `assets_order_info`
  ADD PRIMARY KEY (`ao_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `assets_users_info`
--
ALTER TABLE `assets_users_info`
  ADD PRIMARY KEY (`au_id`);

--
-- Indexes for table `asset_specification_data`
--
ALTER TABLE `asset_specification_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_specification_labels`
--
ALTER TABLE `asset_specification_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_settings`
--
ALTER TABLE `attendance_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bta_btr`
--
ALTER TABLE `bta_btr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BTA BTR Constraint` (`fk_bta_id`);

--
-- Indexes for table `bta_settings`
--
ALTER TABLE `bta_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_pms_cycle`
--
ALTER TABLE `child_pms_cycle`
  ADD PRIMARY KEY (`child_cycle_id`);

--
-- Indexes for table `clra_documents`
--
ALTER TABLE `clra_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clra_documents_v2`
--
ALTER TABLE `clra_documents_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cntrct_ms_contract`
--
ALTER TABLE `cntrct_ms_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cntrct_ms_master_category`
--
ALTER TABLE `cntrct_ms_master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cntrct_ms_master_projects`
--
ALTER TABLE `cntrct_ms_master_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cntrct_ms_master_third_party`
--
ALTER TABLE `cntrct_ms_master_third_party`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_errors_log`
--
ALTER TABLE `code_errors_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_ihrms_modules`
--
ALTER TABLE `companies_ihrms_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_leavesquota_settings`
--
ALTER TABLE `companies_leavesquota_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_policies_info`
--
ALTER TABLE `companies_policies_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_work_shift`
--
ALTER TABLE `companies_work_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companywise_salary_breakup`
--
ALTER TABLE `companywise_salary_breakup`
  ADD PRIMARY KEY (`breakup_Id`);

--
-- Indexes for table `compliance_attendance_register`
--
ALTER TABLE `compliance_attendance_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_2` (`company_id`,`month`,`emp_code`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `compliance_groups`
--
ALTER TABLE `compliance_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compliance_group_companies`
--
ALTER TABLE `compliance_group_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compliance_group_types`
--
ALTER TABLE `compliance_group_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compliance_loan_recoveries_register`
--
ALTER TABLE `compliance_loan_recoveries_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id` (`company_id`,`month`);

--
-- Indexes for table `compliance_wages_register`
--
ALTER TABLE `compliance_wages_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id` (`company_id`,`month`,`emp_code`);

--
-- Indexes for table `compliance_workmen_register`
--
ALTER TABLE `compliance_workmen_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_2` (`company_id`,`emp_code`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `cronjobs_execution_time`
--
ALTER TABLE `cronjobs_execution_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cronjobs_info`
--
ALTER TABLE `cronjobs_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_report_settings`
--
ALTER TABLE `dashboard_report_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_history`
--
ALTER TABLE `data_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_achievements`
--
ALTER TABLE `emp_achievements`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Indexes for table `emp_adminmenus_info`
--
ALTER TABLE `emp_adminmenus_info`
  ADD PRIMARY KEY (`am_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `agencyid` (`agencyid`);

--
-- Indexes for table `emp_appraisal_info`
--
ALTER TABLE `emp_appraisal_info`
  ADD PRIMARY KEY (`appraisal_id`);

--
-- Indexes for table `emp_arrearsalary_info`
--
ALTER TABLE `emp_arrearsalary_info`
  ADD UNIQUE KEY `indo_code` (`indo_code`,`salary_month`),
  ADD KEY `sl_id` (`sl_id`);

--
-- Indexes for table `emp_arrear_attendance`
--
ALTER TABLE `emp_arrear_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_attendance_image_permission`
--
ALTER TABLE `emp_attendance_image_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_attendance_info`
--
ALTER TABLE `emp_attendance_info`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `emp_auto_geo_log`
--
ALTER TABLE `emp_auto_geo_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_bankdetails_info`
--
ALTER TABLE `emp_bankdetails_info`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `emp_blacklist`
--
ALTER TABLE `emp_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_blacklisted_mails`
--
ALTER TABLE `emp_blacklisted_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_compoff_info`
--
ALTER TABLE `emp_compoff_info`
  ADD PRIMARY KEY (`compoff_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`,`compoff_date`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `emp_contract_probation_logs`
--
ALTER TABLE `emp_contract_probation_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_ctcdetails_info`
--
ALTER TABLE `emp_ctcdetails_info`
  ADD PRIMARY KEY (`ctc_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`),
  ADD KEY `stateName` (`stateName`);

--
-- Indexes for table `emp_ctcmonthly_info`
--
ALTER TABLE `emp_ctcmonthly_info`
  ADD PRIMARY KEY (`ctc_id`),
  ADD KEY `stateName` (`stateName`);

--
-- Indexes for table `emp_dailyattendance_info`
--
ALTER TABLE `emp_dailyattendance_info`
  ADD PRIMARY KEY (`atten_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`,`lastUpdate`),
  ADD KEY `companyid` (`companyid`) COMMENT 'use primary key of master_companies_info',
  ADD KEY `agencyid` (`agencyid`) COMMENT 'agencyid from master_agencies_info';

--
-- Indexes for table `emp_dependents_info`
--
ALTER TABLE `emp_dependents_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_employer_info`
--
ALTER TABLE `emp_employer_info`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indexes for table `emp_expenselist_info`
--
ALTER TABLE `emp_expenselist_info`
  ADD PRIMARY KEY (`expl_id`);

--
-- Indexes for table `emp_expense_info`
--
ALTER TABLE `emp_expense_info`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `emp_expense_status_info`
--
ALTER TABLE `emp_expense_status_info`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `emp_expother_info`
--
ALTER TABLE `emp_expother_info`
  ADD PRIMARY KEY (`ot_id`);

--
-- Indexes for table `emp_exp_conveyancefood_info`
--
ALTER TABLE `emp_exp_conveyancefood_info`
  ADD PRIMARY KEY (`cf_id`);

--
-- Indexes for table `emp_exp_hotel_info`
--
ALTER TABLE `emp_exp_hotel_info`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `emp_exp_localconveyance_info`
--
ALTER TABLE `emp_exp_localconveyance_info`
  ADD PRIMARY KEY (`lc_id`);

--
-- Indexes for table `emp_exp_tourda_info`
--
ALTER TABLE `emp_exp_tourda_info`
  ADD PRIMARY KEY (`td_id`);

--
-- Indexes for table `emp_final_attendance`
--
ALTER TABLE `emp_final_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_accounts_clearance_info`
--
ALTER TABLE `emp_fnf_accounts_clearance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_administration_clearance_info`
--
ALTER TABLE `emp_fnf_administration_clearance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_handover_takeover_info`
--
ALTER TABLE `emp_fnf_handover_takeover_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_hod_clearance_info`
--
ALTER TABLE `emp_fnf_hod_clearance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_hr_clearance_info`
--
ALTER TABLE `emp_fnf_hr_clearance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_it_clearance_info`
--
ALTER TABLE `emp_fnf_it_clearance_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_manager_feedback_info`
--
ALTER TABLE `emp_fnf_manager_feedback_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_fnf_reminder_info`
--
ALTER TABLE `emp_fnf_reminder_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_geolocation_info`
--
ALTER TABLE `emp_geolocation_info`
  ADD PRIMARY KEY (`gl_id`);

--
-- Indexes for table `emp_geo_distance_matrix`
--
ALTER TABLE `emp_geo_distance_matrix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_hiring_info`
--
ALTER TABLE `emp_hiring_info`
  ADD PRIMARY KEY (`hi_id`),
  ADD UNIQUE KEY `circle+mobile` (`circle`,`mobile`),
  ADD KEY `circle` (`circle`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vertical_id` (`vertical_id`),
  ADD KEY `reference_from` (`reference_from`),
  ADD KEY `abe_id` (`abe_id`);

--
-- Indexes for table `emp_hiring_info1`
--
ALTER TABLE `emp_hiring_info1`
  ADD PRIMARY KEY (`hi_id`),
  ADD KEY `circle` (`circle`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vertical_id` (`vertical_id`),
  ADD KEY `reference_from` (`reference_from`),
  ADD KEY `abe_id` (`abe_id`);

--
-- Indexes for table `emp_holidays_info`
--
ALTER TABLE `emp_holidays_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id` (`company_id`,`circle_id`,`date`);

--
-- Indexes for table `emp_ihrmsapp_info`
--
ALTER TABLE `emp_ihrmsapp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_leavequota_info`
--
ALTER TABLE `emp_leavequota_info`
  ADD PRIMARY KEY (`lq_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`),
  ADD KEY `agencyid` (`agencyid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `emp_leave_info`
--
ALTER TABLE `emp_leave_info`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `lt_id` (`lt_id`),
  ADD KEY `status` (`status`),
  ADD KEY `duration_id` (`duration_id`);

--
-- Indexes for table `emp_leave_quota_info`
--
ALTER TABLE `emp_leave_quota_info`
  ADD PRIMARY KEY (`lq_id`),
  ADD KEY `agencyid` (`agencyid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `emp_loan_lists`
--
ALTER TABLE `emp_loan_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_login_logout_log`
--
ALTER TABLE `emp_login_logout_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_log_templeaves_info`
--
ALTER TABLE `emp_log_templeaves_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_mailslog_info`
--
ALTER TABLE `emp_mailslog_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_menus_info`
--
ALTER TABLE `emp_menus_info`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `emp_min_salary_info`
--
ALTER TABLE `emp_min_salary_info`
  ADD PRIMARY KEY (`min_sal_id`);

--
-- Indexes for table `emp_mispunch_info`
--
ALTER TABLE `emp_mispunch_info`
  ADD PRIMARY KEY (`mp_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`,`mispunch_date`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `emp_monthly_roster`
--
ALTER TABLE `emp_monthly_roster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_morecompanies_info`
--
ALTER TABLE `emp_morecompanies_info`
  ADD PRIMARY KEY (`mc_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `emp_offerappointment_info`
--
ALTER TABLE `emp_offerappointment_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_offererd_assets_info`
--
ALTER TABLE `emp_offererd_assets_info`
  ADD PRIMARY KEY (`oa_id`);

--
-- Indexes for table `emp_personal_info`
--
ALTER TABLE `emp_personal_info`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`),
  ADD KEY `empl_id` (`empl_id`),
  ADD KEY `companyName` (`companyName`) COMMENT 'use primary key of master_companies_info',
  ADD KEY `agencyid` (`agencyid`) COMMENT 'agencyid from master_agencies_info',
  ADD KEY `circle_name` (`circle_name`),
  ADD KEY `verticalName` (`verticalName`);

--
-- Indexes for table `emp_pms_timesheet`
--
ALTER TABLE `emp_pms_timesheet`
  ADD PRIMARY KEY (`timesheet_id`);

--
-- Indexes for table `emp_principalemployer_info`
--
ALTER TABLE `emp_principalemployer_info`
  ADD PRIMARY KEY (`pempl_id`),
  ADD KEY `empl_id` (`empl_id`);

--
-- Indexes for table `emp_probation_contract_review`
--
ALTER TABLE `emp_probation_contract_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_profile`
--
ALTER TABLE `emp_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_qualification_info`
--
ALTER TABLE `emp_qualification_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `emp_relieving_info`
--
ALTER TABLE `emp_relieving_info`
  ADD PRIMARY KEY (`relieving_id`);

--
-- Indexes for table `emp_resign_info`
--
ALTER TABLE `emp_resign_info`
  ADD PRIMARY KEY (`re_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `emp_salaryattendance_info`
--
ALTER TABLE `emp_salaryattendance_info`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `emp_salary_increment_log`
--
ALTER TABLE `emp_salary_increment_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_salary_info`
--
ALTER TABLE `emp_salary_info`
  ADD PRIMARY KEY (`sl_id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`,`salary_month`);

--
-- Indexes for table `emp_survey_info`
--
ALTER TABLE `emp_survey_info`
  ADD PRIMARY KEY (`sv_id`);

--
-- Indexes for table `emp_tasktime_info`
--
ALTER TABLE `emp_tasktime_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_taxdeclaration_documents_info`
--
ALTER TABLE `emp_taxdeclaration_documents_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_taxdeducation_info`
--
ALTER TABLE `emp_taxdeducation_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_tax_calculation_history`
--
ALTER TABLE `emp_tax_calculation_history`
  ADD PRIMARY KEY (`calculation_id`);

--
-- Indexes for table `emp_tax_regime`
--
ALTER TABLE `emp_tax_regime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_templeaves_info`
--
ALTER TABLE `emp_templeaves_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_tempsalary_info`
--
ALTER TABLE `emp_tempsalary_info`
  ADD UNIQUE KEY `indo_code` (`indo_code`,`salary_month`);

--
-- Indexes for table `emp_temp_increment_salary`
--
ALTER TABLE `emp_temp_increment_salary`
  ADD PRIMARY KEY (`ctc_id`),
  ADD KEY `stateName` (`stateName`);

--
-- Indexes for table `emp_uploaded_documents_info`
--
ALTER TABLE `emp_uploaded_documents_info`
  ADD PRIMARY KEY (`upload_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `	emp_usersdevice_info`
--
ALTER TABLE `	emp_usersdevice_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_workexp_info`
--
ALTER TABLE `emp_workexp_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `indo_code` (`indo_code`);

--
-- Indexes for table `emp_workmenregister_info`
--
ALTER TABLE `emp_workmenregister_info`
  ADD PRIMARY KEY (`wr_id`);

--
-- Indexes for table `esic_documents`
--
ALTER TABLE `esic_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esic_documents_v2`
--
ALTER TABLE `esic_documents_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esic_monthly_table`
--
ALTER TABLE `esic_monthly_table`
  ADD PRIMARY KEY (`esic_id`);

--
-- Indexes for table `expense_settings`
--
ALTER TABLE `expense_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_link`
--
ALTER TABLE `external_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `form_16_info`
--
ALTER TABLE `form_16_info`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `generate_urn`
--
ALTER TABLE `generate_urn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiring_forms`
--
ALTER TABLE `hiring_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsm_master_documents_types`
--
ALTER TABLE `hsm_master_documents_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hsm_mobile_otp`
--
ALTER TABLE `hsm_mobile_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ihrms_modules`
--
ALTER TABLE `ihrms_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ihrms_settings`
--
ALTER TABLE `ihrms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_tax_final_deducation_sheet`
--
ALTER TABLE `income_tax_final_deducation_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indoadmin`
--
ALTER TABLE `indoadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `emailid` (`emailid`),
  ADD UNIQUE KEY `indo_id` (`indo_code`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it_computation_send_mail_history`
--
ALTER TABLE `it_computation_send_mail_history`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `loan_approver_setting`
--
ALTER TABLE `loan_approver_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_payment_details`
--
ALTER TABLE `loan_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_info`
--
ALTER TABLE `log_info`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `lwf_documents_v2`
--
ALTER TABLE `lwf_documents_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lwf_monthly_table`
--
ALTER TABLE `lwf_monthly_table`
  ADD PRIMARY KEY (`lwf_id`);

--
-- Indexes for table `mail_track_dashboard_report_settings`
--
ALTER TABLE `mail_track_dashboard_report_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_abecategory_info`
--
ALTER TABLE `master_abecategory_info`
  ADD PRIMARY KEY (`abe_id`);

--
-- Indexes for table `master_agencies_info`
--
ALTER TABLE `master_agencies_info`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `master_approver_type`
--
ALTER TABLE `master_approver_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_assets_types`
--
ALTER TABLE `master_assets_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_banks_info`
--
ALTER TABLE `master_banks_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_branch_info`
--
ALTER TABLE `master_branch_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category_info`
--
ALTER TABLE `master_category_info`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `master_certification_name_info`
--
ALTER TABLE `master_certification_name_info`
  ADD PRIMARY KEY (`name_id`);

--
-- Indexes for table `master_certification_type_info`
--
ALTER TABLE `master_certification_type_info`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `master_circles_info`
--
ALTER TABLE `master_circles_info`
  ADD PRIMARY KEY (`mcr_id`);

--
-- Indexes for table `master_committee`
--
ALTER TABLE `master_committee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_committee_member`
--
ALTER TABLE `master_committee_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_companies_departments_info`
--
ALTER TABLE `master_companies_departments_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `master_companies_info`
--
ALTER TABLE `master_companies_info`
  ADD PRIMARY KEY (`mc_id`),
  ADD UNIQUE KEY `ma_id_2` (`ma_id`,`mc_name`),
  ADD KEY `ma_id` (`ma_id`);

--
-- Indexes for table `master_company_template`
--
ALTER TABLE `master_company_template`
  ADD PRIMARY KEY (`template_Id`);

--
-- Indexes for table `master_ctcstructure_info`
--
ALTER TABLE `master_ctcstructure_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `master_ctc_component_status_info`
--
ALTER TABLE `master_ctc_component_status_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_departments_info`
--
ALTER TABLE `master_departments_info`
  ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `master_designations_info`
--
ALTER TABLE `master_designations_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_divisions`
--
ALTER TABLE `master_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_duration_info`
--
ALTER TABLE `master_duration_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_expense_locations`
--
ALTER TABLE `master_expense_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_expense_types`
--
ALTER TABLE `master_expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_exp_tourda_rate_info`
--
ALTER TABLE `master_exp_tourda_rate_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_hiringreference_info`
--
ALTER TABLE `master_hiringreference_info`
  ADD PRIMARY KEY (`hr_id`);

--
-- Indexes for table `master_hiringstatus_info`
--
ALTER TABLE `master_hiringstatus_info`
  ADD PRIMARY KEY (`hs_id`);

--
-- Indexes for table `master_installment_type`
--
ALTER TABLE `master_installment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_leavestatus_info`
--
ALTER TABLE `master_leavestatus_info`
  ADD PRIMARY KEY (`ls_id`);

--
-- Indexes for table `master_leavetype_info`
--
ALTER TABLE `master_leavetype_info`
  ADD PRIMARY KEY (`lt_id`);

--
-- Indexes for table `master_loan_category`
--
ALTER TABLE `master_loan_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_locations`
--
ALTER TABLE `master_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_lwf_info`
--
ALTER TABLE `master_lwf_info`
  ADD PRIMARY KEY (`lwf_id`),
  ADD KEY `base_location` (`base_location`);

--
-- Indexes for table `master_metro_cities`
--
ALTER TABLE `master_metro_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_metro_types`
--
ALTER TABLE `master_metro_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_min_wage_info`
--
ALTER TABLE `master_min_wage_info`
  ADD PRIMARY KEY (`wage_id`),
  ADD KEY `mcr_id` (`mcr_id`);

--
-- Indexes for table `master_office_location_info`
--
ALTER TABLE `master_office_location_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_output_types`
--
ALTER TABLE `master_output_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_professionaltax_info`
--
ALTER TABLE `master_professionaltax_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_qrcode_types`
--
ALTER TABLE `master_qrcode_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_reference_doc_status`
--
ALTER TABLE `master_reference_doc_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_role_info`
--
ALTER TABLE `master_role_info`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `master_salarymethods_info`
--
ALTER TABLE `master_salarymethods_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_settings_info`
--
ALTER TABLE `master_settings_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `master_station_types`
--
ALTER TABLE `master_station_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_tax_deduction_info`
--
ALTER TABLE `master_tax_deduction_info`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `master_third_party_signatory`
--
ALTER TABLE `master_third_party_signatory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_travel_modes`
--
ALTER TABLE `master_travel_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_travel_types`
--
ALTER TABLE `master_travel_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_uploaded_documents_info`
--
ALTER TABLE `master_uploaded_documents_info`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `master_visitor_type`
--
ALTER TABLE `master_visitor_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_weekends_info`
--
ALTER TABLE `master_weekends_info`
  ADD PRIMARY KEY (`wkd_id`);

--
-- Indexes for table `master_weekoffs_info`
--
ALTER TABLE `master_weekoffs_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id` (`company_id`,`weekoff`);

--
-- Indexes for table `master_workingweekoff_info`
--
ALTER TABLE `master_workingweekoff_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id` (`company_id`,`circle_id`,`date`);

--
-- Indexes for table `master_working_location_info`
--
ALTER TABLE `master_working_location_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `mdcal_chkup_emp`
--
ALTER TABLE `mdcal_chkup_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mdcal_chkup_settings`
--
ALTER TABLE `mdcal_chkup_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_access`
--
ALTER TABLE `module_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_readers_logs`
--
ALTER TABLE `notifications_readers_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onboard_activity_status`
--
ALTER TABLE `onboard_activity_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onboard_master_activity`
--
ALTER TABLE `onboard_master_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onboard_master_flag`
--
ALTER TABLE `onboard_master_flag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optional_viewers`
--
ALTER TABLE `optional_viewers`
  ADD PRIMARY KEY (`viewers_id`);

--
-- Indexes for table `pages_master`
--
ALTER TABLE `pages_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_access_permissions`
--
ALTER TABLE `page_access_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_pms_cycle`
--
ALTER TABLE `parent_pms_cycle`
  ADD PRIMARY KEY (`parent_cycle_id`);

--
-- Indexes for table `pension_opt_out`
--
ALTER TABLE `pension_opt_out`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pf_monthy_table`
--
ALTER TABLE `pf_monthy_table`
  ADD PRIMARY KEY (`pf_id`);

--
-- Indexes for table `pf_nominee_info`
--
ALTER TABLE `pf_nominee_info`
  ADD PRIMARY KEY (`pf_id`);

--
-- Indexes for table `pms_additionals_approvers`
--
ALTER TABLE `pms_additionals_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pms_cycle_ratings`
--
ALTER TABLE `pms_cycle_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pms_user_kras`
--
ALTER TABLE `pms_user_kras`
  ADD PRIMARY KEY (`kra_id`);

--
-- Indexes for table `provident_fund_documents`
--
ALTER TABLE `provident_fund_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provident_fund_documents_v2`
--
ALTER TABLE `provident_fund_documents_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pt_deduction_table`
--
ALTER TABLE `pt_deduction_table`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `pt_documents`
--
ALTER TABLE `pt_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pt_documents_v2`
--
ALTER TABLE `pt_documents_v2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qrcode_fields`
--
ALTER TABLE `qrcode_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qrcode_type` (`qrcode_type_id`);

--
-- Indexes for table `reference_document_setting`
--
ALTER TABLE `reference_document_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_bta_documents`
--
ALTER TABLE `rom_bta_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_bta_events`
--
ALTER TABLE `rom_bta_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_bta_event_history`
--
ALTER TABLE `rom_bta_event_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_bta_event_hotel_booking`
--
ALTER TABLE `rom_bta_event_hotel_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_bta_event_travels`
--
ALTER TABLE `rom_bta_event_travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_expenses_history`
--
ALTER TABLE `rom_expenses_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_expense_documents`
--
ALTER TABLE `rom_expense_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_expense_travel_locations`
--
ALTER TABLE `rom_expense_travel_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_local_expenses`
--
ALTER TABLE `rom_local_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_expense_status`
--
ALTER TABLE `rom_master_expense_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_local_expense_settings`
--
ALTER TABLE `rom_master_local_expense_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_other_expense_settings`
--
ALTER TABLE `rom_master_other_expense_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_other_expense_types`
--
ALTER TABLE `rom_master_other_expense_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_outstation_expense_settings`
--
ALTER TABLE `rom_master_outstation_expense_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_master_transports`
--
ALTER TABLE `rom_master_transports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rom_other_expenses`
--
ALTER TABLE `rom_other_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_local_expenses_id` (`fk_local_expenses_id`,`fk_expense_type_id`,`expense_date`,`fk_other_expense_type_id`);

--
-- Indexes for table `rom_outstation_expenses`
--
ALTER TABLE `rom_outstation_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_change_permissions`
--
ALTER TABLE `salary_change_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_invoice`
--
ALTER TABLE `salary_invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`);

--
-- Indexes for table `salary_bank_payments`
--
ALTER TABLE `salary_bank_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chq_ref_number` (`chq_ref_number`);

--
-- Indexes for table `tax_regimes`
--
ALTER TABLE `tax_regimes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_regimes_slabs`
--
ALTER TABLE `tax_regimes_slabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_regimes_slabs_ibfk_1` (`fk_tax_regime_id`);

--
-- Indexes for table `ticket_queries`
--
ALTER TABLE `ticket_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_queries_answers`
--
ALTER TABLE `ticket_queries_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_system_handlers`
--
ALTER TABLE `ticket_system_handlers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_track`
--
ALTER TABLE `video_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vip_exclusions`
--
ALTER TABLE `vip_exclusions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vip_exclusions_type`
--
ALTER TABLE `vip_exclusions_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_meetings`
--
ALTER TABLE `vs_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_visitors`
--
ALTER TABLE `vs_visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_visitors_visits`
--
ALTER TABLE `vs_visitors_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wfh_attendance`
--
ALTER TABLE `wfh_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wfh_attendance_settings`
--
ALTER TABLE `wfh_attendance_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wh_types`
--
ALTER TABLE `wh_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wh_warehouse`
--
ALTER TABLE `wh_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wh_code` (`wh_code`);

--
-- Indexes for table `year_types`
--
ALTER TABLE `year_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_docs_status_list`
--
ALTER TABLE `all_docs_status_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=771;

--
-- AUTO_INCREMENT for table `assets_info`
--
ALTER TABLE `assets_info`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3253;

--
-- AUTO_INCREMENT for table `assets_location`
--
ALTER TABLE `assets_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2618;

--
-- AUTO_INCREMENT for table `assets_order_info`
--
ALTER TABLE `assets_order_info`
  MODIFY `ao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `assets_users_info`
--
ALTER TABLE `assets_users_info`
  MODIFY `au_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4384;

--
-- AUTO_INCREMENT for table `asset_specification_data`
--
ALTER TABLE `asset_specification_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `asset_specification_labels`
--
ALTER TABLE `asset_specification_labels`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attendance_settings`
--
ALTER TABLE `attendance_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `bta_btr`
--
ALTER TABLE `bta_btr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bta_settings`
--
ALTER TABLE `bta_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `child_pms_cycle`
--
ALTER TABLE `child_pms_cycle`
  MODIFY `child_cycle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `clra_documents`
--
ALTER TABLE `clra_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1297;

--
-- AUTO_INCREMENT for table `clra_documents_v2`
--
ALTER TABLE `clra_documents_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1303;

--
-- AUTO_INCREMENT for table `cntrct_ms_contract`
--
ALTER TABLE `cntrct_ms_contract`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cntrct_ms_master_category`
--
ALTER TABLE `cntrct_ms_master_category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `cntrct_ms_master_projects`
--
ALTER TABLE `cntrct_ms_master_projects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cntrct_ms_master_third_party`
--
ALTER TABLE `cntrct_ms_master_third_party`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `code_errors_log`
--
ALTER TABLE `code_errors_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies_ihrms_modules`
--
ALTER TABLE `companies_ihrms_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `companies_leavesquota_settings`
--
ALTER TABLE `companies_leavesquota_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `companies_policies_info`
--
ALTER TABLE `companies_policies_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `companies_work_shift`
--
ALTER TABLE `companies_work_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `companywise_salary_breakup`
--
ALTER TABLE `companywise_salary_breakup`
  MODIFY `breakup_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `compliance_attendance_register`
--
ALTER TABLE `compliance_attendance_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17904;

--
-- AUTO_INCREMENT for table `compliance_groups`
--
ALTER TABLE `compliance_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `compliance_group_companies`
--
ALTER TABLE `compliance_group_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `compliance_group_types`
--
ALTER TABLE `compliance_group_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `compliance_loan_recoveries_register`
--
ALTER TABLE `compliance_loan_recoveries_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=712;

--
-- AUTO_INCREMENT for table `compliance_wages_register`
--
ALTER TABLE `compliance_wages_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17900;

--
-- AUTO_INCREMENT for table `compliance_workmen_register`
--
ALTER TABLE `compliance_workmen_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3461;

--
-- AUTO_INCREMENT for table `cronjobs_execution_time`
--
ALTER TABLE `cronjobs_execution_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2457;

--
-- AUTO_INCREMENT for table `cronjobs_info`
--
ALTER TABLE `cronjobs_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `dashboard_report_settings`
--
ALTER TABLE `dashboard_report_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_history`
--
ALTER TABLE `data_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_achievements`
--
ALTER TABLE `emp_achievements`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `emp_adminmenus_info`
--
ALTER TABLE `emp_adminmenus_info`
  MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `emp_appraisal_info`
--
ALTER TABLE `emp_appraisal_info`
  MODIFY `appraisal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;

--
-- AUTO_INCREMENT for table `emp_arrearsalary_info`
--
ALTER TABLE `emp_arrearsalary_info`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52319;

--
-- AUTO_INCREMENT for table `emp_arrear_attendance`
--
ALTER TABLE `emp_arrear_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `emp_attendance_image_permission`
--
ALTER TABLE `emp_attendance_image_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_attendance_info`
--
ALTER TABLE `emp_attendance_info`
  MODIFY `sa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_auto_geo_log`
--
ALTER TABLE `emp_auto_geo_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12392;

--
-- AUTO_INCREMENT for table `emp_bankdetails_info`
--
ALTER TABLE `emp_bankdetails_info`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5112;

--
-- AUTO_INCREMENT for table `emp_blacklist`
--
ALTER TABLE `emp_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_blacklisted_mails`
--
ALTER TABLE `emp_blacklisted_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `emp_compoff_info`
--
ALTER TABLE `emp_compoff_info`
  MODIFY `compoff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `emp_contract_probation_logs`
--
ALTER TABLE `emp_contract_probation_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_ctcdetails_info`
--
ALTER TABLE `emp_ctcdetails_info`
  MODIFY `ctc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4919;

--
-- AUTO_INCREMENT for table `emp_ctcmonthly_info`
--
ALTER TABLE `emp_ctcmonthly_info`
  MODIFY `ctc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42600;

--
-- AUTO_INCREMENT for table `emp_dailyattendance_info`
--
ALTER TABLE `emp_dailyattendance_info`
  MODIFY `atten_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292645;

--
-- AUTO_INCREMENT for table `emp_dependents_info`
--
ALTER TABLE `emp_dependents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2299;

--
-- AUTO_INCREMENT for table `emp_employer_info`
--
ALTER TABLE `emp_employer_info`
  MODIFY `empl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_expenselist_info`
--
ALTER TABLE `emp_expenselist_info`
  MODIFY `expl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_expense_info`
--
ALTER TABLE `emp_expense_info`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9772;

--
-- AUTO_INCREMENT for table `emp_expense_status_info`
--
ALTER TABLE `emp_expense_status_info`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9772;

--
-- AUTO_INCREMENT for table `emp_expother_info`
--
ALTER TABLE `emp_expother_info`
  MODIFY `ot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1962;

--
-- AUTO_INCREMENT for table `emp_exp_conveyancefood_info`
--
ALTER TABLE `emp_exp_conveyancefood_info`
  MODIFY `cf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4431;

--
-- AUTO_INCREMENT for table `emp_exp_hotel_info`
--
ALTER TABLE `emp_exp_hotel_info`
  MODIFY `hid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `emp_exp_localconveyance_info`
--
ALTER TABLE `emp_exp_localconveyance_info`
  MODIFY `lc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26452;

--
-- AUTO_INCREMENT for table `emp_exp_tourda_info`
--
ALTER TABLE `emp_exp_tourda_info`
  MODIFY `td_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5320;

--
-- AUTO_INCREMENT for table `emp_final_attendance`
--
ALTER TABLE `emp_final_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103486;

--
-- AUTO_INCREMENT for table `emp_fnf_accounts_clearance_info`
--
ALTER TABLE `emp_fnf_accounts_clearance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1863;

--
-- AUTO_INCREMENT for table `emp_fnf_administration_clearance_info`
--
ALTER TABLE `emp_fnf_administration_clearance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1799;

--
-- AUTO_INCREMENT for table `emp_fnf_handover_takeover_info`
--
ALTER TABLE `emp_fnf_handover_takeover_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1731;

--
-- AUTO_INCREMENT for table `emp_fnf_hod_clearance_info`
--
ALTER TABLE `emp_fnf_hod_clearance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2267;

--
-- AUTO_INCREMENT for table `emp_fnf_hr_clearance_info`
--
ALTER TABLE `emp_fnf_hr_clearance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1979;

--
-- AUTO_INCREMENT for table `emp_fnf_it_clearance_info`
--
ALTER TABLE `emp_fnf_it_clearance_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1855;

--
-- AUTO_INCREMENT for table `emp_fnf_manager_feedback_info`
--
ALTER TABLE `emp_fnf_manager_feedback_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_fnf_reminder_info`
--
ALTER TABLE `emp_fnf_reminder_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3919;

--
-- AUTO_INCREMENT for table `emp_geolocation_info`
--
ALTER TABLE `emp_geolocation_info`
  MODIFY `gl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1603;

--
-- AUTO_INCREMENT for table `emp_geo_distance_matrix`
--
ALTER TABLE `emp_geo_distance_matrix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `emp_hiring_info`
--
ALTER TABLE `emp_hiring_info`
  MODIFY `hi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4141;

--
-- AUTO_INCREMENT for table `emp_hiring_info1`
--
ALTER TABLE `emp_hiring_info1`
  MODIFY `hi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `emp_holidays_info`
--
ALTER TABLE `emp_holidays_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'holiday id', AUTO_INCREMENT=4213;

--
-- AUTO_INCREMENT for table `emp_ihrmsapp_info`
--
ALTER TABLE `emp_ihrmsapp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `emp_leavequota_info`
--
ALTER TABLE `emp_leavequota_info`
  MODIFY `lq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4072;

--
-- AUTO_INCREMENT for table `emp_leave_info`
--
ALTER TABLE `emp_leave_info`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48754;

--
-- AUTO_INCREMENT for table `emp_leave_quota_info`
--
ALTER TABLE `emp_leave_quota_info`
  MODIFY `lq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54325;

--
-- AUTO_INCREMENT for table `emp_loan_lists`
--
ALTER TABLE `emp_loan_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `emp_login_logout_log`
--
ALTER TABLE `emp_login_logout_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106563;

--
-- AUTO_INCREMENT for table `emp_log_templeaves_info`
--
ALTER TABLE `emp_log_templeaves_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46066;

--
-- AUTO_INCREMENT for table `emp_mailslog_info`
--
ALTER TABLE `emp_mailslog_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15137;

--
-- AUTO_INCREMENT for table `emp_menus_info`
--
ALTER TABLE `emp_menus_info`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `emp_min_salary_info`
--
ALTER TABLE `emp_min_salary_info`
  MODIFY `min_sal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_mispunch_info`
--
ALTER TABLE `emp_mispunch_info`
  MODIFY `mp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21186;

--
-- AUTO_INCREMENT for table `emp_monthly_roster`
--
ALTER TABLE `emp_monthly_roster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `emp_morecompanies_info`
--
ALTER TABLE `emp_morecompanies_info`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `emp_offerappointment_info`
--
ALTER TABLE `emp_offerappointment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4973;

--
-- AUTO_INCREMENT for table `emp_offererd_assets_info`
--
ALTER TABLE `emp_offererd_assets_info`
  MODIFY `oa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4115;

--
-- AUTO_INCREMENT for table `emp_personal_info`
--
ALTER TABLE `emp_personal_info`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5578;

--
-- AUTO_INCREMENT for table `emp_pms_timesheet`
--
ALTER TABLE `emp_pms_timesheet`
  MODIFY `timesheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108613;

--
-- AUTO_INCREMENT for table `emp_principalemployer_info`
--
ALTER TABLE `emp_principalemployer_info`
  MODIFY `pempl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emp_probation_contract_review`
--
ALTER TABLE `emp_probation_contract_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1052;

--
-- AUTO_INCREMENT for table `emp_profile`
--
ALTER TABLE `emp_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2972;

--
-- AUTO_INCREMENT for table `emp_qualification_info`
--
ALTER TABLE `emp_qualification_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5120;

--
-- AUTO_INCREMENT for table `emp_relieving_info`
--
ALTER TABLE `emp_relieving_info`
  MODIFY `relieving_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1426;

--
-- AUTO_INCREMENT for table `emp_resign_info`
--
ALTER TABLE `emp_resign_info`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3964;

--
-- AUTO_INCREMENT for table `emp_salaryattendance_info`
--
ALTER TABLE `emp_salaryattendance_info`
  MODIFY `sa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salary_increment_log`
--
ALTER TABLE `emp_salary_increment_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_salary_info`
--
ALTER TABLE `emp_salary_info`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81167;

--
-- AUTO_INCREMENT for table `emp_survey_info`
--
ALTER TABLE `emp_survey_info`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `emp_tasktime_info`
--
ALTER TABLE `emp_tasktime_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26349;

--
-- AUTO_INCREMENT for table `emp_taxdeclaration_documents_info`
--
ALTER TABLE `emp_taxdeclaration_documents_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2274;

--
-- AUTO_INCREMENT for table `emp_taxdeducation_info`
--
ALTER TABLE `emp_taxdeducation_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=944;

--
-- AUTO_INCREMENT for table `emp_tax_calculation_history`
--
ALTER TABLE `emp_tax_calculation_history`
  MODIFY `calculation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36091;

--
-- AUTO_INCREMENT for table `emp_tax_regime`
--
ALTER TABLE `emp_tax_regime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17833;

--
-- AUTO_INCREMENT for table `emp_templeaves_info`
--
ALTER TABLE `emp_templeaves_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4057;

--
-- AUTO_INCREMENT for table `emp_temp_increment_salary`
--
ALTER TABLE `emp_temp_increment_salary`
  MODIFY `ctc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_uploaded_documents_info`
--
ALTER TABLE `emp_uploaded_documents_info`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8230;

--
-- AUTO_INCREMENT for table `	emp_usersdevice_info`
--
ALTER TABLE `	emp_usersdevice_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_workexp_info`
--
ALTER TABLE `emp_workexp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5110;

--
-- AUTO_INCREMENT for table `emp_workmenregister_info`
--
ALTER TABLE `emp_workmenregister_info`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `esic_documents`
--
ALTER TABLE `esic_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1696;

--
-- AUTO_INCREMENT for table `esic_documents_v2`
--
ALTER TABLE `esic_documents_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1726;

--
-- AUTO_INCREMENT for table `esic_monthly_table`
--
ALTER TABLE `esic_monthly_table`
  MODIFY `esic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_settings`
--
ALTER TABLE `expense_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `external_link`
--
ALTER TABLE `external_link`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_16_info`
--
ALTER TABLE `form_16_info`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3216;

--
-- AUTO_INCREMENT for table `generate_urn`
--
ALTER TABLE `generate_urn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8340;

--
-- AUTO_INCREMENT for table `hiring_forms`
--
ALTER TABLE `hiring_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hsm_master_documents_types`
--
ALTER TABLE `hsm_master_documents_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hsm_mobile_otp`
--
ALTER TABLE `hsm_mobile_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60435;

--
-- AUTO_INCREMENT for table `ihrms_modules`
--
ALTER TABLE `ihrms_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ihrms_settings`
--
ALTER TABLE `ihrms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income_tax_final_deducation_sheet`
--
ALTER TABLE `income_tax_final_deducation_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6265;

--
-- AUTO_INCREMENT for table `indoadmin`
--
ALTER TABLE `indoadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6367;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `it_computation_send_mail_history`
--
ALTER TABLE `it_computation_send_mail_history`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `loan_approver_setting`
--
ALTER TABLE `loan_approver_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_payment_details`
--
ALTER TABLE `loan_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_info`
--
ALTER TABLE `log_info`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359551;

--
-- AUTO_INCREMENT for table `lwf_documents_v2`
--
ALTER TABLE `lwf_documents_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lwf_monthly_table`
--
ALTER TABLE `lwf_monthly_table`
  MODIFY `lwf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `mail_track_dashboard_report_settings`
--
ALTER TABLE `mail_track_dashboard_report_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `master_abecategory_info`
--
ALTER TABLE `master_abecategory_info`
  MODIFY `abe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_agencies_info`
--
ALTER TABLE `master_agencies_info`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_approver_type`
--
ALTER TABLE `master_approver_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_assets_types`
--
ALTER TABLE `master_assets_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `master_banks_info`
--
ALTER TABLE `master_banks_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `master_branch_info`
--
ALTER TABLE `master_branch_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_category_info`
--
ALTER TABLE `master_category_info`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_certification_name_info`
--
ALTER TABLE `master_certification_name_info`
  MODIFY `name_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `master_certification_type_info`
--
ALTER TABLE `master_certification_type_info`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `master_circles_info`
--
ALTER TABLE `master_circles_info`
  MODIFY `mcr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `master_committee`
--
ALTER TABLE `master_committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_committee_member`
--
ALTER TABLE `master_committee_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `master_companies_departments_info`
--
ALTER TABLE `master_companies_departments_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_companies_info`
--
ALTER TABLE `master_companies_info`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `master_company_template`
--
ALTER TABLE `master_company_template`
  MODIFY `template_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_ctcstructure_info`
--
ALTER TABLE `master_ctcstructure_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `master_departments_info`
--
ALTER TABLE `master_departments_info`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `master_designations_info`
--
ALTER TABLE `master_designations_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `master_divisions`
--
ALTER TABLE `master_divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_duration_info`
--
ALTER TABLE `master_duration_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_expense_locations`
--
ALTER TABLE `master_expense_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_expense_types`
--
ALTER TABLE `master_expense_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_exp_tourda_rate_info`
--
ALTER TABLE `master_exp_tourda_rate_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_hiringreference_info`
--
ALTER TABLE `master_hiringreference_info`
  MODIFY `hr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_hiringstatus_info`
--
ALTER TABLE `master_hiringstatus_info`
  MODIFY `hs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_installment_type`
--
ALTER TABLE `master_installment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_leavestatus_info`
--
ALTER TABLE `master_leavestatus_info`
  MODIFY `ls_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_leavetype_info`
--
ALTER TABLE `master_leavetype_info`
  MODIFY `lt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_loan_category`
--
ALTER TABLE `master_loan_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_locations`
--
ALTER TABLE `master_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151667;

--
-- AUTO_INCREMENT for table `master_lwf_info`
--
ALTER TABLE `master_lwf_info`
  MODIFY `lwf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_metro_cities`
--
ALTER TABLE `master_metro_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_metro_types`
--
ALTER TABLE `master_metro_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_min_wage_info`
--
ALTER TABLE `master_min_wage_info`
  MODIFY `wage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `master_office_location_info`
--
ALTER TABLE `master_office_location_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_output_types`
--
ALTER TABLE `master_output_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_professionaltax_info`
--
ALTER TABLE `master_professionaltax_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `master_qrcode_types`
--
ALTER TABLE `master_qrcode_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_reference_doc_status`
--
ALTER TABLE `master_reference_doc_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_role_info`
--
ALTER TABLE `master_role_info`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_salarymethods_info`
--
ALTER TABLE `master_salarymethods_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_settings_info`
--
ALTER TABLE `master_settings_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_station_types`
--
ALTER TABLE `master_station_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_tax_deduction_info`
--
ALTER TABLE `master_tax_deduction_info`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `master_third_party_signatory`
--
ALTER TABLE `master_third_party_signatory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_travel_modes`
--
ALTER TABLE `master_travel_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `master_travel_types`
--
ALTER TABLE `master_travel_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_uploaded_documents_info`
--
ALTER TABLE `master_uploaded_documents_info`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `master_visitor_type`
--
ALTER TABLE `master_visitor_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_weekends_info`
--
ALTER TABLE `master_weekends_info`
  MODIFY `wkd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'weekend id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_weekoffs_info`
--
ALTER TABLE `master_weekoffs_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `master_workingweekoff_info`
--
ALTER TABLE `master_workingweekoff_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'holiday id', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `master_working_location_info`
--
ALTER TABLE `master_working_location_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mdcal_chkup_emp`
--
ALTER TABLE `mdcal_chkup_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mdcal_chkup_settings`
--
ALTER TABLE `mdcal_chkup_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_access`
--
ALTER TABLE `module_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `notifications_readers_logs`
--
ALTER TABLE `notifications_readers_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `onboard_master_flag`
--
ALTER TABLE `onboard_master_flag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `optional_viewers`
--
ALTER TABLE `optional_viewers`
  MODIFY `viewers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages_master`
--
ALTER TABLE `pages_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_access_permissions`
--
ALTER TABLE `page_access_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parent_pms_cycle`
--
ALTER TABLE `parent_pms_cycle`
  MODIFY `parent_cycle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pension_opt_out`
--
ALTER TABLE `pension_opt_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pf_monthy_table`
--
ALTER TABLE `pf_monthy_table`
  MODIFY `pf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pf_nominee_info`
--
ALTER TABLE `pf_nominee_info`
  MODIFY `pf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `pms_additionals_approvers`
--
ALTER TABLE `pms_additionals_approvers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pms_cycle_ratings`
--
ALTER TABLE `pms_cycle_ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `pms_user_kras`
--
ALTER TABLE `pms_user_kras`
  MODIFY `kra_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11639;

--
-- AUTO_INCREMENT for table `provident_fund_documents`
--
ALTER TABLE `provident_fund_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4054;

--
-- AUTO_INCREMENT for table `provident_fund_documents_v2`
--
ALTER TABLE `provident_fund_documents_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4234;

--
-- AUTO_INCREMENT for table `pt_deduction_table`
--
ALTER TABLE `pt_deduction_table`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `pt_documents`
--
ALTER TABLE `pt_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2611;

--
-- AUTO_INCREMENT for table `pt_documents_v2`
--
ALTER TABLE `pt_documents_v2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2653;

--
-- AUTO_INCREMENT for table `qrcode_fields`
--
ALTER TABLE `qrcode_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `reference_document_setting`
--
ALTER TABLE `reference_document_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rom_bta_documents`
--
ALTER TABLE `rom_bta_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `rom_bta_events`
--
ALTER TABLE `rom_bta_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `rom_bta_event_history`
--
ALTER TABLE `rom_bta_event_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT for table `rom_bta_event_hotel_booking`
--
ALTER TABLE `rom_bta_event_hotel_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `rom_bta_event_travels`
--
ALTER TABLE `rom_bta_event_travels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `rom_expenses_history`
--
ALTER TABLE `rom_expenses_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT for table `rom_expense_documents`
--
ALTER TABLE `rom_expense_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `rom_expense_travel_locations`
--
ALTER TABLE `rom_expense_travel_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3220;

--
-- AUTO_INCREMENT for table `rom_local_expenses`
--
ALTER TABLE `rom_local_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `rom_master_expense_status`
--
ALTER TABLE `rom_master_expense_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rom_other_expenses`
--
ALTER TABLE `rom_other_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `rom_outstation_expenses`
--
ALTER TABLE `rom_outstation_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_change_permissions`
--
ALTER TABLE `salary_change_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `salary_invoice`
--
ALTER TABLE `salary_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary_bank_payments`
--
ALTER TABLE `salary_bank_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=934;

--
-- AUTO_INCREMENT for table `tax_regimes`
--
ALTER TABLE `tax_regimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tax_regimes_slabs`
--
ALTER TABLE `tax_regimes_slabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ticket_queries`
--
ALTER TABLE `ticket_queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `ticket_queries_answers`
--
ALTER TABLE `ticket_queries_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket_system_handlers`
--
ALTER TABLE `ticket_system_handlers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1284372;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_track`
--
ALTER TABLE `video_track`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3771;

--
-- AUTO_INCREMENT for table `vip_exclusions`
--
ALTER TABLE `vip_exclusions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vip_exclusions_type`
--
ALTER TABLE `vip_exclusions_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vs_meetings`
--
ALTER TABLE `vs_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vs_visitors`
--
ALTER TABLE `vs_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vs_visitors_visits`
--
ALTER TABLE `vs_visitors_visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wfh_attendance`
--
ALTER TABLE `wfh_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14028;

--
-- AUTO_INCREMENT for table `wfh_attendance_settings`
--
ALTER TABLE `wfh_attendance_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wh_types`
--
ALTER TABLE `wh_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wh_warehouse`
--
ALTER TABLE `wh_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `year_types`
--
ALTER TABLE `year_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assets_info`
--
ALTER TABLE `assets_info`
  ADD CONSTRAINT `asCompanyId` FOREIGN KEY (`company_id`) REFERENCES `master_companies_info` (`mc_id`);

--
-- Constraints for table `emp_adminmenus_info`
--
ALTER TABLE `emp_adminmenus_info`
  ADD CONSTRAINT `am_agencyid` FOREIGN KEY (`agencyid`) REFERENCES `master_agencies_info` (`ma_id`);

--
-- Constraints for table `emp_compoff_info`
--
ALTER TABLE `emp_compoff_info`
  ADD CONSTRAINT `emp_compoff_info_ibfk_2` FOREIGN KEY (`status`) REFERENCES `master_leavestatus_info` (`ls_id`);

--
-- Constraints for table `emp_ctcdetails_info`
--
ALTER TABLE `emp_ctcdetails_info`
  ADD CONSTRAINT `indocircleid` FOREIGN KEY (`stateName`) REFERENCES `master_circles_info` (`mcr_id`);

--
-- Constraints for table `emp_dailyattendance_info`
--
ALTER TABLE `emp_dailyattendance_info`
  ADD CONSTRAINT `agency_id` FOREIGN KEY (`agencyid`) REFERENCES `master_agencies_info` (`ma_id`),
  ADD CONSTRAINT `company_id` FOREIGN KEY (`companyid`) REFERENCES `master_companies_info` (`mc_id`);

--
-- Constraints for table `emp_hiring_info`
--
ALTER TABLE `emp_hiring_info`
  ADD CONSTRAINT `abe_id` FOREIGN KEY (`abe_id`) REFERENCES `master_abecategory_info` (`abe_id`),
  ADD CONSTRAINT `hi_agencyid` FOREIGN KEY (`source`) REFERENCES `master_agencies_info` (`ma_id`),
  ADD CONSTRAINT `hi_circleid` FOREIGN KEY (`circle`) REFERENCES `master_circles_info` (`mcr_id`),
  ADD CONSTRAINT `hi_client_id` FOREIGN KEY (`client_id`) REFERENCES `master_companies_info` (`mc_id`),
  ADD CONSTRAINT `hi_department_id` FOREIGN KEY (`vertical_id`) REFERENCES `master_departments_info` (`md_id`),
  ADD CONSTRAINT `hiringref_id` FOREIGN KEY (`reference_from`) REFERENCES `master_hiringreference_info` (`hr_id`),
  ADD CONSTRAINT `hsid` FOREIGN KEY (`status`) REFERENCES `master_hiringstatus_info` (`hs_id`);

--
-- Constraints for table `emp_leavequota_info`
--
ALTER TABLE `emp_leavequota_info`
  ADD CONSTRAINT `lq_agencyid` FOREIGN KEY (`agencyid`) REFERENCES `master_agencies_info` (`ma_id`),
  ADD CONSTRAINT `lq_companyid` FOREIGN KEY (`companyid`) REFERENCES `master_companies_info` (`mc_id`);

--
-- Constraints for table `emp_leave_info`
--
ALTER TABLE `emp_leave_info`
  ADD CONSTRAINT `emp_leave_info_ibfk_1` FOREIGN KEY (`lt_id`) REFERENCES `master_leavetype_info` (`lt_id`),
  ADD CONSTRAINT `emp_leave_info_ibfk_2` FOREIGN KEY (`status`) REFERENCES `master_leavestatus_info` (`ls_id`);

--
-- Constraints for table `emp_mispunch_info`
--
ALTER TABLE `emp_mispunch_info`
  ADD CONSTRAINT `emp_mispunch_info_ibfk_2` FOREIGN KEY (`status`) REFERENCES `master_leavestatus_info` (`ls_id`);

--
-- Constraints for table `emp_personal_info`
--
ALTER TABLE `emp_personal_info`
  ADD CONSTRAINT `agencyid` FOREIGN KEY (`agencyid`) REFERENCES `master_agencies_info` (`ma_id`),
  ADD CONSTRAINT `circleid` FOREIGN KEY (`circle_name`) REFERENCES `master_circles_info` (`mcr_id`),
  ADD CONSTRAINT `companyid` FOREIGN KEY (`companyName`) REFERENCES `master_companies_info` (`mc_id`),
  ADD CONSTRAINT `department_id` FOREIGN KEY (`verticalName`) REFERENCES `master_departments_info` (`md_id`);

--
-- Constraints for table `emp_principalemployer_info`
--
ALTER TABLE `emp_principalemployer_info`
  ADD CONSTRAINT `emp_principalEmployer_info_ibfk_1` FOREIGN KEY (`empl_id`) REFERENCES `emp_employer_info` (`empl_id`);

--
-- Constraints for table `emp_uploaded_documents_info`
--
ALTER TABLE `emp_uploaded_documents_info`
  ADD CONSTRAINT `emp_uploaded_documents_info_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `master_uploaded_documents_info` (`document_id`);

--
-- Constraints for table `master_companies_departments_info`
--
ALTER TABLE `master_companies_departments_info`
  ADD CONSTRAINT `departments_link_to_companies` FOREIGN KEY (`department_id`) REFERENCES `master_departments_info` (`md_id`);

--
-- Constraints for table `master_companies_info`
--
ALTER TABLE `master_companies_info`
  ADD CONSTRAINT `agencies ids` FOREIGN KEY (`ma_id`) REFERENCES `master_agencies_info` (`ma_id`);

--
-- Constraints for table `master_lwf_info`
--
ALTER TABLE `master_lwf_info`
  ADD CONSTRAINT `master_lwf_info_ibfk_1` FOREIGN KEY (`base_location`) REFERENCES `master_circles_info` (`mcr_id`);

--
-- Constraints for table `master_working_location_info`
--
ALTER TABLE `master_working_location_info`
  ADD CONSTRAINT `master_working_location_info_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `master_companies_info` (`mc_id`);

--
-- Constraints for table `qrcode_fields`
--
ALTER TABLE `qrcode_fields`
  ADD CONSTRAINT `qrcode_fields_ibfk_1` FOREIGN KEY (`qrcode_type_id`) REFERENCES `master_qrcode_types` (`id`),
  ADD CONSTRAINT `qrcode_type` FOREIGN KEY (`qrcode_type_id`) REFERENCES `master_qrcode_types` (`id`);

--
-- Constraints for table `tax_regimes_slabs`
--
ALTER TABLE `tax_regimes_slabs`
  ADD CONSTRAINT `tax_regimes_slabs_ibfk_1` FOREIGN KEY (`fk_tax_regime_id`) REFERENCES `tax_regimes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
