-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2018 at 03:00 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`, `authentication_key`, `created_date`, `photo`, `username`) VALUES
(2, 'Yasir Arafat', 'yasirarafat1995@gmail.com', 'arafat', '1', '', '2017/11/19', 'image/admin/photo_yasirarafat1995@gmail.com.jpg', 'arafat'),
(3, 'mainul', 'pentamainul@yahoo.com', 'mainul', '1', '', '2017/11/25', 'image/admin/photo_pentamainul@yahoo.com.', 'mainul'),
(4, 'Jobiullah Siddiqi', 'lsslsurvey@gmail.com', 'siddiqi', '1', '', '2017/11/25', 'image/admin/photo_lsslsurvey@gmail.com.', 'siddiqi');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `numerical_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `numerical_name`) VALUES
(2, 'efrdsf', 'sdfsdf'),
(3, 'Naphrology', 'NPH'),
(4, 'Urinology', 'URN'),
(5, 'Cardialogy', 'CRD');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authentication_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specialist` text COLLATE utf8_unicode_ci,
  `join_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `authentication_key`, `specialist`, `join_date`, `photo`, `username`, `education`, `department_id`) VALUES
(4, 'vfd', '2018-01-10', 'male', '', 'sfd', 'sfds', '76890', 'sfsdjik', 'teacher', '', 'dsfs', '2018-01-18', 'image/teacher/photo_vfddsfs.', NULL, 'sdf', 1),
(5, 'Yasir', '', 'male', '', '', '', '', '', 'teacher', '', '', '', 'image/teacher/photo_Yasir.', NULL, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sector` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_num` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`payment_id`, `expense_category_id`, `title`, `payment_type`, `method`, `description`, `amount`, `timestamp`, `payment_date`, `sector`, `invoice_num`) VALUES
(2, 1, 'jan sal', 'expense', '2', 'january salary - Tom Cruise Salary', '13000', '1451948400', NULL, '2', NULL),
(3, 3, 'Decorating classroom for fare', '', '', '2 worker has worked for this', '4643', '', '2017/10/04', '1', 'nm-2'),
(4, 1, 'Nazera 1', '', '', 'sgf dtg hjrdsgdfr', '65443', '', '2018/01/02', NULL, 'w432');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(1, 'Teacher Salary'),
(3, 'Classroom Decorations'),
(5, 'Exam Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `appointed_doctor_id` int(11) NOT NULL,
  `reg_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addmission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(5) NOT NULL COMMENT '1=pending, 2=treating, 3=released'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `name`, `age`, `sex`, `blood_group`, `address`, `phone`, `email`, `father_name`, `mother_name`, `department_id`, `appointed_doctor_id`, `reg_id`, `photo`, `addmission_date`, `status`) VALUES
(1, 'hiugtydr', 78, 'male', 'b-', 'y7tugh', '2314', 'teacher@abc.com', 'ibrahim', 'muslema', 3, 0, '123', 'image/patient/photo_.', '2018/01/02', 1),
(2, 'yasir', 8768, 'male', 'b-', '23xecd', '2314', 'teacher@abc.com', 'ibrahim', 'muslema', 3, 5, '123', 'image/patient/photo_.', '2018/01/02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_payment_details`
--

CREATE TABLE `patient_payment_details` (
  `payment_details_id` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `payment_head_id` int(11) NOT NULL,
  `remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_payment_details`
--

INSERT INTO `patient_payment_details` (`payment_details_id`, `payment_date`, `amount`, `paid`, `invoice`, `patient_id`, `status`, `created_date`, `payment_head_id`, `remark`) VALUES
(1, '2018-01-02', 500, 500, 0, 2, 1, '2018-01-02', 1, 'full paid'),
(2, '2018-01-02', 500, 500, 0, 2, 1, '2018-01-02', 1, 'full paid');

-- --------------------------------------------------------

--
-- Table structure for table `patient_payment_head`
--

CREATE TABLE `patient_payment_head` (
  `payment_id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient_payment_head`
--

INSERT INTO `patient_payment_head` (`payment_id`, `name`) VALUES
(1, 'huyufdrf');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `name`, `name_numeric`, `category`) VALUES
(8, 'Arab Bangladesh Bank', 'ABBL', 2),
(9, 'BRAC Bank Limited', 'BBL', 2),
(10, 'Dutch Bangla Bank Limited', 'DBBL', 2),
(11, 'Eastern Bank Limited', 'EBL', 2),
(12, 'United Commercial Bank Limited', 'UCBL', 2),
(13, 'Mutual Trust Bank Limited', 'MTBL', 2),
(14, 'Dhaka Bank Limited', 'DBL', 2),
(15, 'Islami Bank Bangladesh Ltd', 'IBBL', 2),
(16, 'Uttara Bank Limited', 'UBL', 2),
(17, 'Pubali Bank Limited', 'PBL', 2),
(18, 'IFIC Bank Limited', 'IFIC Bank', 2),
(19, 'National Bank Limited', 'NBLB', 2),
(20, 'NCC Bank Limited', 'NCC Bank', 2),
(21, 'The City Bank Limited', 'City Bank', 2),
(22, 'Mercantile Bank Limited', 'MBLB', 2),
(23, 'Southeast Bank Limited', 'SEBD', 2),
(24, 'Prime Bank Limited', 'PRBL', 2),
(25, 'Social Islami Bank Limited', 'SIBL', 2),
(26, 'Standard Bank Limited', 'SBL', 2),
(27, 'Al-Arafah Islami Bank Limited', 'AIBL', 2),
(28, 'One Bank Limited', 'OBL', 2),
(29, 'Exim Bank Limited', 'EXBK', 2),
(30, 'First Security Islami Bank Limited', 'FSEB', 2),
(31, 'Bangladesh Commerce Bank Limited', 'BCBL', 2),
(32, 'Trust Bank Limited', 'TBL', 2),
(33, 'Jamuna Bank Limited', 'JBL', 2),
(34, 'Shahjalal Islami Bank Limited', 'SJIBL', 2),
(35, 'ICB Islamic Bank', 'ICBIBL', 2),
(36, 'AB Bank', 'ABBL ', 2),
(37, 'Jubilee Bank Limited', '  ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `system_id` int(10) NOT NULL,
  `system_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `system_title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `establish_date` date NOT NULL,
  `board` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `ins_code` varchar(200) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`system_id`, `system_name`, `system_title`, `email`, `phone`, `address`, `currency`, `language`, `academic_year`, `establish_date`, `board`, `district`, `city`, `ins_code`, `logo`) VALUES
(1, ' Hospital Management System', 'Group C - Hospital Management System', 'lsslsurvey@gmail.com', '01720575459,01911319412', '145- Allahu Bhobon, 4th floor, North of the Shahjahanpur Thana, Dhaka', 'BDT', 'English', '', '2017-11-25', '', 'Dhaka', 'Dhaka', '', 'image/photo_sql.PNG.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_payment_details`
--
ALTER TABLE `patient_payment_details`
  ADD PRIMARY KEY (`payment_details_id`);

--
-- Indexes for table `patient_payment_head`
--
ALTER TABLE `patient_payment_head`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`system_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient_payment_details`
--
ALTER TABLE `patient_payment_details`
  MODIFY `payment_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient_payment_head`
--
ALTER TABLE `patient_payment_head`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `system_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
