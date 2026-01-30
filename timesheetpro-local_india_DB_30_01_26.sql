-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2026 at 10:30 AM
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
-- Database: `timesheetpro-local_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `action_id` bigint(20) NOT NULL,
  `action_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`action_id`, `action_name`) VALUES
(1, 'Add'),
(2, 'Update'),
(3, 'Delete'),
(4, 'View');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_penalty_rules`
--

CREATE TABLE `attendance_penalty_rules` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `rule_name` varchar(200) NOT NULL,
  `minutes` int(11) NOT NULL,
  `deduction_type` varchar(200) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_early_exit` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_penalty_rules`
--

INSERT INTO `attendance_penalty_rules` (`id`, `company_id`, `created_by`, `rule_name`, `minutes`, `deduction_type`, `amount`, `count`, `is_early_exit`) VALUES
(14, 2, 28, '10min', 10, 'Fixed Amount', 300, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_actions`
--

CREATE TABLE `company_actions` (
  `id` int(11) NOT NULL,
  `action_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_actions`
--

INSERT INTO `company_actions` (`id`, `action_name`) VALUES
(1, 'Add'),
(2, 'Update'),
(3, 'Delete'),
(4, 'View');

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` int(11) NOT NULL,
  `company_no` varchar(200) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `DBA` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `industry_name` varchar(250) NOT NULL,
  `website_url` varchar(250) NOT NULL,
  `company_logo` varchar(250) NOT NULL,
  `is_active` int(11) DEFAULT 1,
  `register_date` datetime DEFAULT NULL,
  `organization_type` varchar(250) DEFAULT NULL,
  `EIN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `company_no`, `company_name`, `DBA`, `email`, `phone`, `industry_name`, `website_url`, `company_logo`, `is_active`, `register_date`, `organization_type`, `EIN`) VALUES
(2, '2025040502', 'eMatrix', 'Gogle', 'eMatrix@gmail.com', '8956523147', 'IT', 'www.ematrix.com', 'http://localhost/timeSheetPro/usercontent/2/companyLogo/2018200032018-07-274155200green_plants.jpg', 1, '2025-04-15 00:00:00', 'Sole Proprietorship', '27ABCDE1234F1Z5'),
(124, '2026012101', 'Test', '', 'test@gmail.com', '8956457810', 'IT', '', '', 1, '2026-01-21 17:59:42', 'S Corporation', '27ABCDE1234F1Z7'),
(125, '2026012102', 'Demo', '', 'demo@gmail.com', '8956787845', 'IT', '', 'http://localhost/timeSheetPro/usercontent/125/companyLogo/get-back-to-code-km_1_.jpg', 1, '2026-01-21 18:39:23', 'Partnership', '27ABCDE1234F1Z2');

-- --------------------------------------------------------

--
-- Table structure for table `company_employees`
--

CREATE TABLE `company_employees` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `emergency_phone` varchar(11) DEFAULT NULL,
  `alt_phone` varchar(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `hourly_rate` float DEFAULT NULL,
  `address1` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pay_period` varchar(200) DEFAULT NULL,
  `hired_date` date DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `employee_type` int(11) DEFAULT NULL,
  `emergency_contact` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(10) DEFAULT NULL,
  `relationship` varchar(200) DEFAULT NULL,
  `company_location` varchar(200) DEFAULT NULL,
  `check_geofence` int(11) NOT NULL DEFAULT 1,
  `embedding` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `aadhar_image` varchar(255) DEFAULT NULL,
  `is_pf` tinyint(1) DEFAULT NULL,
  `pf_type` varchar(20) DEFAULT NULL,
  `pf_percentage` int(11) DEFAULT NULL,
  `pf_amount` int(11) DEFAULT NULL,
  `is_pt` tinyint(1) DEFAULT NULL,
  `pt_amount` int(11) DEFAULT NULL,
  `basic_salary` int(11) DEFAULT NULL,
  `gross_salary` int(11) DEFAULT NULL,
  `canteen_type` varchar(200) DEFAULT NULL,
  `canteen_amount` int(11) DEFAULT NULL,
  `lunch_break` int(11) DEFAULT NULL,
  `working_hours_include_lunch` float DEFAULT NULL,
  `ot_id` int(11) DEFAULT NULL,
  `weekly_off` int(11) DEFAULT NULL,
  `holiday_template` int(11) DEFAULT NULL,
  `late_entry_penalty_rule` tinyint(1) NOT NULL DEFAULT 1,
  `early_exit_penalty_rule` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_employees`
--

INSERT INTO `company_employees` (`id`, `company_id`, `user_name`, `first_name`, `last_name`, `email`, `password`, `phone`, `emergency_phone`, `alt_phone`, `role_id`, `profile_image`, `city`, `state`, `country`, `hourly_rate`, `address1`, `address2`, `gender`, `zip_code`, `dob`, `pay_period`, `hired_date`, `is_active`, `middle_name`, `shift_id`, `department_id`, `employee_type`, `emergency_contact`, `contact_phone`, `relationship`, `company_location`, `check_geofence`, `embedding`, `blood_group`, `aadhar_image`, `is_pf`, `pf_type`, `pf_percentage`, `pf_amount`, `is_pt`, `pt_amount`, `basic_salary`, `gross_salary`, `canteen_type`, `canteen_amount`, `lunch_break`, `working_hours_include_lunch`, `ot_id`, `weekly_off`, `holiday_template`, `late_entry_penalty_rule`, `early_exit_penalty_rule`) VALUES
(28, 2, 'Jay0028', 'Jay', 'Patel', 'pjay41907@gmail.com', '12345', '8888888888', '9999999999', NULL, 2, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/28/21954_438371-300x300.jpg', 'Jamnagar', 'Delhi', 'India', NULL, 'Jamnagar', 'Jamnagar', 'Male', '361002', '2026-01-05', '2', '2025-07-31', 1, 'A', 9, 1, 3, 'OM', '', NULL, '[200]', 1, NULL, NULL, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/aadharImage/28/get-back-to-code-km_1_-_Copy.jpg', 1, 'Percentage', 12, NULL, 1, 200, 65000, 100000, 'Labour Type', 65, 0, NULL, 4, NULL, 3, 1, 1),
(79, 2, 'Rajan', 'Rajan', 'Ramavat', 'rajan@kaiasoft.com', '123', '9895623012', '8956565565', NULL, 2, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/79/Gemini_Generated_Image_wno13ewno13ewno1.png', 'Jamnagar', 'Gujarat', 'India', NULL, 'Jamnagar', 'Jamnagar', 'Male', '361004', '2025-06-21', '3', '2025-07-21', 1, 'R', 9, 1, 3, '', '', '', '[200]', 1, NULL, 'B+', 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/aadharImage/79/programmer-wallpaper-hd-Archives-Developer-Kafasi.jpeg', 1, 'Percentage', 12, NULL, 1, 200, 50000, 80000, 'Office Type', 500, 20, NULL, 2, NULL, 3, 1, 1),
(90, 2, 'Shaunak', 'Shaunak', 'Purohit', 'shaunak@kaiasoft.com', '123', '8956230124', '7744114452', '', 190, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/90/plant-logo-design-herbs-logo-lawn-logo-template-f312e4e06c4132caec6d4d1c5986b56b_screen.jpg', 'Jamanagr', 'Gujarat', 'India', NULL, 'Jamnagar', '', 'Male', '361225', '1999-05-20', '1', '2025-06-06', 1, 'P', 9, 1, 3, '', NULL, NULL, '[200]', 1, NULL, 'B+', 'blob:http://localhost:3000/1fba60c2-e360-43d2-9028-45ad68bd7aef', 1, 'Percentage', 12, NULL, 1, 200, 66000, 89000, 'Office Type', 100, 30, NULL, 4, NULL, 3, 1, 1),
(100, 124, 'JayPatel', 'Jay', 'Patel', 'jay@kaiasoft.com', '12345', '8956223210', '7855245200', NULL, 209, 'http://localhost/timeSheetPro/usercontent/124/employeeProfile/100/Gemini_Generated_Image_ew2ojgew2ojgew2o.png', 'Jamnagar', 'Gujarat', 'India', NULL, 'Jamnagar', NULL, 'Male', NULL, NULL, '3', NULL, 0, NULL, 16, 16, 3, NULL, NULL, NULL, '[198]', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90878, 86876876, 'No Canteen', NULL, 89, 5, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_employee_roles`
--

CREATE TABLE `company_employee_roles` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `role_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_employee_roles`
--

INSERT INTO `company_employee_roles` (`id`, `company_id`, `role_name`) VALUES
(2, 2, 'Admin'),
(36, 2, 'Managar'),
(78, 2, 'FrontEnd Developer'),
(190, 2, 'FullStack Developer'),
(191, 2, 'Owner'),
(207, 124, 'Admin'),
(208, 124, 'Manager'),
(209, 124, 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `company_functionality`
--

CREATE TABLE `company_functionality` (
  `id` int(11) NOT NULL,
  `functionality_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_functionality`
--

INSERT INTO `company_functionality` (`id`, `functionality_name`) VALUES
(1, 'Company'),
(2, 'Users'),
(3, 'Permission'),
(4, 'Time Card'),
(6, 'Automation Rules');

-- --------------------------------------------------------

--
-- Table structure for table `company_modules`
--

CREATE TABLE `company_modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(200) NOT NULL,
  `functionality_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_modules`
--

INSERT INTO `company_modules` (`id`, `module_name`, `functionality_id`) VALUES
(1, 'User', 2),
(2, 'Manage Roles', 3),
(3, 'Manage Company', 1),
(5, 'Manage Employees', 1),
(6, 'Manage Departments', 3),
(8, 'Clock-In-Out', 4),
(9, 'Manage Shifts', 1),
(15, 'Salary Statement', 3),
(16, 'Overtime Rules', 6),
(18, 'Weekly Holidays', 6),
(19, 'Holidays Template', 6),
(20, 'Late Entry Rules', 6),
(21, 'Early Exit Rules', 6);

-- --------------------------------------------------------

--
-- Table structure for table `company_module_actions`
--

CREATE TABLE `company_module_actions` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `action_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_module_actions`
--

INSERT INTO `company_module_actions` (`id`, `module_id`, `action_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 1, 1),
(6, 1, 2),
(7, 1, 3),
(8, 1, 4),
(10, 3, 2),
(12, 3, 4),
(17, 5, 1),
(18, 5, 2),
(19, 5, 3),
(20, 5, 4),
(21, 6, 1),
(22, 6, 2),
(23, 6, 3),
(24, 6, 4),
(29, 8, 2),
(30, 8, 3),
(31, 9, 1),
(32, 9, 2),
(33, 9, 3),
(34, 9, 4),
(59, 15, 1),
(60, 15, 2),
(61, 15, 3),
(62, 15, 4),
(63, 8, 1),
(64, 8, 4),
(65, 16, 1),
(66, 16, 2),
(67, 16, 3),
(68, 16, 4),
(69, 18, 1),
(70, 18, 3),
(71, 18, 2),
(72, 18, 4),
(73, 19, 1),
(74, 19, 2),
(75, 19, 3),
(76, 19, 4),
(77, 20, 1),
(78, 20, 2),
(79, 20, 3),
(80, 20, 4),
(81, 21, 1),
(82, 21, 2),
(83, 21, 3),
(84, 21, 4);

-- --------------------------------------------------------

--
-- Table structure for table `company_role_module_actions`
--

CREATE TABLE `company_role_module_actions` (
  `id` int(11) NOT NULL,
  `role_Id` int(11) DEFAULT NULL,
  `module_action_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_role_module_actions`
--

INSERT INTO `company_role_module_actions` (`id`, `role_Id`, `module_action_Id`) VALUES
(2606, 190, 12),
(2607, 190, 20),
(2608, 190, 34),
(2609, 190, 8),
(2610, 190, 4),
(2611, 190, 24),
(2612, 190, 62),
(2613, 190, 64),
(2614, 78, 12),
(2615, 78, 20),
(2616, 78, 34),
(2617, 78, 8),
(2618, 78, 4),
(2619, 78, 24),
(2620, 78, 62),
(2621, 78, 64),
(2655, 2, 10),
(2657, 2, 12),
(2658, 2, 17),
(2659, 2, 18),
(2660, 2, 19),
(2661, 2, 20),
(2662, 2, 31),
(2663, 2, 32),
(2664, 2, 33),
(2665, 2, 34),
(2666, 2, 5),
(2667, 2, 6),
(2668, 2, 7),
(2669, 2, 8),
(2670, 2, 1),
(2671, 2, 2),
(2672, 2, 3),
(2673, 2, 4),
(2674, 2, 21),
(2675, 2, 22),
(2676, 2, 23),
(2677, 2, 24),
(2678, 2, 59),
(2679, 2, 60),
(2680, 2, 61),
(2681, 2, 62),
(2682, 2, 63),
(2683, 2, 29),
(2684, 2, 30),
(2685, 2, 64),
(2686, 36, 12),
(2687, 36, 10),
(2688, 36, 20),
(2689, 36, 18),
(2690, 36, 34),
(2691, 36, 32),
(2692, 36, 8),
(2693, 36, 6),
(2694, 36, 4),
(2695, 36, 2),
(2696, 36, 24),
(2697, 36, 22),
(2698, 36, 62),
(2699, 36, 60),
(2700, 36, 64),
(2701, 36, 29),
(2703, 191, 10),
(2705, 191, 12),
(2706, 191, 17),
(2707, 191, 18),
(2708, 191, 19),
(2709, 191, 20),
(2710, 191, 31),
(2711, 191, 32),
(2712, 191, 33),
(2713, 191, 34),
(2714, 191, 5),
(2715, 191, 6),
(2716, 191, 7),
(2717, 191, 8),
(2718, 191, 1),
(2719, 191, 2),
(2720, 191, 3),
(2721, 191, 4),
(2722, 191, 21),
(2723, 191, 22),
(2724, 191, 23),
(2725, 191, 24),
(2726, 191, 59),
(2727, 191, 60),
(2728, 191, 61),
(2729, 191, 62),
(2730, 191, 63),
(2731, 191, 29),
(2732, 191, 30),
(2733, 191, 64),
(3599, 207, NULL),
(3600, 207, 10),
(3601, 207, NULL),
(3602, 207, 12),
(3603, 207, 17),
(3604, 207, 18),
(3605, 207, 19),
(3606, 207, 20),
(3607, 207, 31),
(3608, 207, 32),
(3609, 207, 33),
(3610, 207, 34),
(3611, 207, 1),
(3612, 207, 2),
(3613, 207, 3),
(3614, 207, 4),
(3615, 207, 21),
(3616, 207, 22),
(3617, 207, 23),
(3618, 207, 24),
(3619, 207, 59),
(3620, 207, 60),
(3621, 207, 61),
(3622, 207, 62),
(3623, 207, 63),
(3624, 207, 29),
(3625, 207, 30),
(3626, 207, 64),
(3627, 207, 65),
(3628, 207, 66),
(3629, 207, 67),
(3630, 207, 68),
(3631, 207, 69),
(3632, 207, 71),
(3633, 207, 70),
(3634, 207, 72),
(3635, 207, 73),
(3636, 207, 74),
(3637, 207, 75),
(3638, 207, 76),
(3639, 207, 77),
(3640, 207, 78),
(3641, 207, 79),
(3642, 207, 80),
(3643, 207, 81),
(3644, 207, 82),
(3645, 207, 83),
(3646, 207, 84),
(3647, 208, NULL),
(3648, 208, 10),
(3649, 208, NULL),
(3650, 208, 12),
(3651, 208, 17),
(3652, 208, 18),
(3653, 208, 19),
(3654, 208, 20),
(3655, 208, 31),
(3656, 208, 32),
(3657, 208, 33),
(3658, 208, 34),
(3659, 208, 1),
(3660, 208, 2),
(3661, 208, 3),
(3662, 208, 4),
(3663, 208, 21),
(3664, 208, 22),
(3665, 208, 23),
(3666, 208, 24),
(3667, 208, 59),
(3668, 208, 60),
(3669, 208, 61),
(3670, 208, 62),
(3671, 208, 63),
(3672, 208, 29),
(3673, 208, 30),
(3674, 208, 64),
(3675, 208, 65),
(3676, 208, 66),
(3677, 208, 67),
(3678, 208, 68),
(3679, 208, 69),
(3680, 208, 71),
(3681, 208, 70),
(3682, 208, 72),
(3683, 208, 73),
(3684, 208, 74),
(3685, 208, 75),
(3686, 208, 76),
(3687, 208, 77),
(3688, 208, 78),
(3689, 208, 79),
(3690, 208, 80),
(3691, 208, 81),
(3692, 208, 82),
(3693, 208, 83),
(3694, 208, 84),
(3695, 209, NULL),
(3696, 209, 10),
(3697, 209, NULL),
(3698, 209, 12),
(3699, 209, 17),
(3700, 209, 18),
(3701, 209, 19),
(3702, 209, 20),
(3703, 209, 31),
(3704, 209, 32),
(3705, 209, 33),
(3706, 209, 34),
(3707, 209, 1),
(3708, 209, 2),
(3709, 209, 3),
(3710, 209, 4),
(3711, 209, 21),
(3712, 209, 22),
(3713, 209, 23),
(3714, 209, 24),
(3715, 209, 59),
(3716, 209, 60),
(3717, 209, 61),
(3718, 209, 62),
(3719, 209, 63),
(3720, 209, 29),
(3721, 209, 30),
(3722, 209, 64),
(3723, 209, 65),
(3724, 209, 66),
(3725, 209, 67),
(3726, 209, 68),
(3727, 209, 69),
(3728, 209, 71),
(3729, 209, 70),
(3730, 209, 72),
(3731, 209, 73),
(3732, 209, 74),
(3733, 209, 75),
(3734, 209, 76),
(3735, 209, 77),
(3736, 209, 78),
(3737, 209, 79),
(3738, 209, 80),
(3739, 209, 81),
(3740, 209, 82),
(3741, 209, 83),
(3742, 209, 84);

-- --------------------------------------------------------

--
-- Table structure for table `company_shift`
--

CREATE TABLE `company_shift` (
  `id` int(11) NOT NULL,
  `shift_name` varchar(255) NOT NULL,
  `shift_type` varchar(250) NOT NULL,
  `time_start` timestamp NULL DEFAULT NULL,
  `time_end` timestamp NULL DEFAULT NULL,
  `hours` float DEFAULT NULL,
  `total_hours` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_shift`
--

INSERT INTO `company_shift` (`id`, `shift_name`, `shift_type`, `time_start`, `time_end`, `hours`, `total_hours`, `company_id`) VALUES
(9, 'Morning Shift', 'Time Based', '2025-07-17 03:30:00', '2025-07-17 04:30:00', 0, 1, 2),
(10, 'Night Shift', 'Hourly', NULL, NULL, 1, 1, 2),
(16, 'ok', 'Time Based', '2026-01-20 18:30:00', '2026-01-20 21:30:00', 0, 3, 124);

-- --------------------------------------------------------

--
-- Table structure for table `company_theme`
--

CREATE TABLE `company_theme` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `side_navigation_bg_color` varchar(200) DEFAULT NULL,
  `content_bg_color` varchar(200) DEFAULT NULL,
  `content_bg_color2` varchar(255) DEFAULT NULL,
  `header_bg_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(250) DEFAULT NULL,
  `primary_color` varchar(500) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_theme`
--

INSERT INTO `company_theme` (`id`, `company_id`, `side_navigation_bg_color`, `content_bg_color`, `content_bg_color2`, `header_bg_color`, `text_color`, `primary_color`, `icon_color`) VALUES
(1, 2, '#ffffff', '#F7F7F9', NULL, '#ffffff', '#262b43', '#666cff', '#262b43'),
(43, 124, '#ffffff', '#F5F5F7', NULL, '#ffffff', '#262b43', '#666cff', '#262b43'),
(44, 125, '#ffffff', '#F5F5F7', NULL, '#ffffff', '#262b43', '#666cff', '#262b43');

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `id` bigint(20) NOT NULL,
  `contractor_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`id`, `contractor_name`) VALUES
(1, 'Patel Jay'),
(2, 'Shaunak');

-- --------------------------------------------------------

--
-- Table structure for table `country_to_state`
--

CREATE TABLE `country_to_state` (
  `country_to_state_id` bigint(20) NOT NULL,
  `fk_country_id` bigint(20) NOT NULL,
  `state_long` char(100) DEFAULT NULL,
  `state_short` char(10) DEFAULT NULL,
  `state_capital` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AVG_ROW_LENGTH=215 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country_to_state`
--

INSERT INTO `country_to_state` (`country_to_state_id`, `fk_country_id`, `state_long`, `state_short`, `state_capital`) VALUES
(1, 102, 'Andhra Pradesh', 'AP', 'Hyderabad'),
(2, 102, 'Arunachal Pradesh', 'AR', 'Itanagar'),
(3, 102, 'Assam', 'AS', 'Dispur'),
(4, 102, 'Bihar', 'BR', 'Patna'),
(5, 102, 'Chhattisgarh', 'CT', 'Raipur'),
(6, 102, 'Goa', 'GA', 'Panji'),
(7, 102, 'Gujarat', 'GJ', 'Gandhinagar'),
(8, 102, 'Haryana', 'HR', 'Chandigarh'),
(9, 102, 'Himachal Pradesh', 'HP', 'Shimla'),
(10, 102, 'Jammu and Kashmir', 'JK', 'Srinagar'),
(11, 102, 'Jharkhand', 'JH', 'Ranchi'),
(12, 102, 'Karnataka', 'KA', 'Bangalore'),
(13, 102, 'Kerala', 'KL', 'Thiruvananthapuram'),
(14, 102, 'Madhya Pradesh', 'MP', 'Bhopal'),
(15, 102, 'Maharashtra', 'MH', 'Mumbai'),
(16, 102, 'Manipur', 'MN', 'Imphal'),
(17, 102, 'Meghalaya', 'ML', 'Shillong'),
(18, 102, 'Mizoram', 'MZ', 'Aizawl'),
(19, 102, 'Nagaland', 'NL', 'Kohima'),
(20, 102, 'Orissa', 'OR', 'Bhubaneshwar'),
(21, 102, 'Punjab', 'PB', 'Chandigarh'),
(22, 102, 'Rajasthan', 'RJ', 'Jaipur'),
(23, 102, 'Sikkim', 'SK', 'Gangtok'),
(24, 102, 'Tamil Nadu', 'TN', 'Chennai'),
(25, 102, 'Tripura', 'TR', 'Agartala'),
(26, 102, 'Uttar Pradesh', 'UP', 'Lucknow'),
(27, 102, 'Uttarakhand', 'UT', 'Dehradhum'),
(28, 102, 'West Benga', 'WB', 'Calcutta'),
(29, 102, 'Andaman and Nicobar', 'AN', 'Port Blair'),
(30, 102, 'Dadra and Nagar Haveli', 'DN', 'Silvassa'),
(31, 102, 'Delhi', 'DL', 'Delhi'),
(32, 102, 'Daman and Diu', 'DD', 'Daman'),
(33, 102, 'Lakshadweep', 'LD', 'Kavaratti'),
(34, 100, 'Alabama', 'AL', 'Montgomery'),
(35, 100, 'Alaska', 'AK', 'Juneau'),
(36, 100, 'Arizona', 'AZ', 'Phoenix'),
(37, 100, 'Arkansas', 'AR', 'Little Rock'),
(38, 100, 'California', 'CA', 'Sacramento'),
(39, 100, 'Colorado', 'CO', 'Denver'),
(40, 100, 'Connecticut', 'CT', 'Hartford'),
(41, 100, 'Delaware', 'DE', 'Dover'),
(42, 100, 'Dist.of Columbia', 'DC', 'NULL'),
(43, 100, 'Florida', 'FL', 'Tallahassee'),
(44, 100, 'Georgia', 'GA', 'Atlanta'),
(45, 100, 'Hawaii', 'HI', 'Honolulu'),
(46, 100, 'Idaho', 'ID', 'Boise'),
(47, 100, 'Illinois', 'IL', 'Springfield'),
(48, 100, 'Indiana', 'IN', 'Indianapolis'),
(49, 100, 'Iowa', 'IA', 'Des Moines'),
(50, 100, 'Kansas', 'KS', 'Topeka'),
(51, 100, 'Kentucky', 'KY', 'Frankfort'),
(52, 100, 'Louisiana', 'LA', 'Baton Rouge'),
(53, 100, 'Maine', 'ME', 'Augusta'),
(54, 100, 'Maryland', 'MD', 'Annapolis'),
(55, 100, 'Massachusetts', 'MA', 'Boston'),
(56, 100, 'Michigan', 'MI', 'Lansing'),
(57, 100, 'Minnesota', 'MN', 'Saint Paul'),
(58, 100, 'Mississippi', 'MS', 'Jackson'),
(59, 100, 'Missouri', 'MO', 'Jefferson City'),
(60, 100, 'Montana', 'MT', 'Helena'),
(61, 100, 'Nevada', 'NV', 'NULL'),
(62, 100, 'New Hampshire', 'NH', 'Concord'),
(63, 100, 'New Jersey', 'NJ', 'Trenton'),
(64, 100, 'New Mexico', 'NM', 'Santa Fe'),
(65, 100, 'New York', 'NY', 'Albany'),
(66, 100, 'North Carolina', 'NC', 'Raleigh'),
(67, 100, 'North Dakota', 'ND', 'Bismarck'),
(68, 100, 'Ohio', 'OH', 'Columbus'),
(69, 100, 'Oklahoma', 'OK', 'Oklahoma City'),
(70, 100, 'Oregon', 'OR', 'Salem'),
(71, 100, 'Pennsylvania', 'PA', 'Harrisburg'),
(72, 100, 'Rhode Island', 'RI', 'Providence'),
(73, 100, 'South Carolina', 'SC', 'Columbia'),
(74, 100, 'South Dakota', 'SD', 'Pierre'),
(75, 100, 'Tennessee', 'TN', 'Nashville'),
(76, 100, 'Texas', 'TX', 'Austin'),
(77, 100, 'Utah', 'UT', 'Salt Lake City'),
(78, 100, 'Vermont', 'VT', 'Montpelier'),
(79, 100, 'Washington', 'WA', 'Olympia'),
(80, 100, 'West Virginia', 'WV', 'Charleston'),
(81, 100, 'Wisconsin', 'WI', 'Madison'),
(82, 100, 'Wyoming', 'WY', 'Cheyenne'),
(83, 100, 'Nebraska', 'NE', 'Lincoln'),
(84, 16, 'Alberta', 'AB', 'Edmonton'),
(85, 16, 'British Columbia', 'BC', 'Victoria'),
(86, 16, 'Labrador', 'NL', 'St. John\'s'),
(87, 16, 'Manitoba', 'MB', 'Winnipeg'),
(88, 16, 'New Brunswick', 'NB', 'Fredericton'),
(89, 16, 'New Foundland', 'NL', 'St. John\'s'),
(90, 16, 'Northwest Territories', 'NT', 'Yellowknife'),
(91, 16, 'Nova Scotia', 'NS', 'Halifax'),
(92, 16, 'Ontario', 'ON', 'Toronto'),
(93, 16, 'Prince Edward Island', 'PE', 'Charlottetown'),
(94, 16, 'Quebec', 'QC', 'Quebec City'),
(95, 16, 'Saskatchewan', 'SK', 'Regina'),
(96, 16, 'Yukon', 'YT', 'Whitehorse'),
(136, 33, 'Aberdeenshire', 'ABD', 'NULL'),
(137, 33, 'Alderney', 'ALD', 'NULL'),
(138, 33, 'Anglesey', 'AGY', 'NULL'),
(139, 33, 'Angus', 'ANS', 'NULL'),
(140, 33, 'Argyllshire', 'ARL', 'NULL'),
(141, 33, 'Avon', 'AVN', 'NULL'),
(142, 33, 'Ayrshire', 'AYR', 'NULL'),
(143, 33, 'Banffshire', 'BAN', 'NULL'),
(144, 33, 'Bedfordshire', 'BDF', 'NULL'),
(145, 33, 'Berkshire', 'BRK', 'NULL'),
(146, 33, 'Berwickshire', 'BEW', 'NULL'),
(147, 33, 'Borders', 'BOR', 'NULL'),
(148, 33, 'Breconshire', 'BRE', 'NULL'),
(149, 33, 'Buckinghamshire', 'BKM', 'NULL'),
(150, 33, 'Bute', 'BUT', 'NULL'),
(151, 33, 'Caernarvonshire', 'CAE', 'NULL'),
(152, 33, 'Caithness', 'CAI', 'NULL'),
(153, 33, 'Cambridgeshire', 'CAM', 'NULL'),
(154, 33, 'Cardiganshire', 'CGN', 'NULL'),
(155, 33, 'Carmarthenshire', 'CMN', 'NULL'),
(156, 33, 'Central', 'CEN', 'NULL'),
(157, 33, 'Cheshire', 'CHS', 'NULL'),
(158, 33, 'Clackmannanshire', 'CLK', 'NULL'),
(159, 33, 'Cleveland', 'CLV', 'NULL'),
(160, 33, 'Clwyd', 'CWD', 'NULL'),
(161, 33, 'Co. Antrim', 'ANT', 'NULL'),
(162, 33, 'Co. Armagh', 'ARM', 'NULL'),
(163, 33, 'Co. Carlow', 'CAR', 'NULL'),
(164, 33, 'Co. Cavan', 'CAV', 'NULL'),
(165, 33, 'Co. Clare', 'CLA', 'NULL'),
(166, 33, 'Co. Cork', 'COR', 'NULL'),
(167, 33, 'Co. Donegal', 'DON', 'NULL'),
(168, 33, 'Co. Down', 'DOW', 'NULL'),
(169, 33, 'Co. Dublin', 'DUB', 'NULL'),
(170, 33, 'Co. Durham', 'DUR', 'NULL'),
(171, 33, 'Co. Fermanagh', 'FER', 'NULL'),
(172, 33, 'Co. Galway', 'GAL', 'NULL'),
(173, 33, 'Co. Kerry', 'KER', 'NULL'),
(174, 33, 'Co. Kildare', 'KID', 'NULL'),
(175, 33, 'Co. Kilkenny', 'KIK', 'NULL'),
(176, 33, 'Co. Laois', 'LEX', 'NULL'),
(177, 33, 'Co. Leitrim', 'LET', 'NULL'),
(178, 33, 'Co. Limerick', 'LIM', 'NULL'),
(179, 33, 'Co. Londonderry', 'LDY', 'NULL'),
(180, 33, 'Co. Longford', 'LOG', 'NULL'),
(181, 33, 'Co. Louth', 'LOU', 'NULL'),
(182, 33, 'Co. Mayo', 'MAY', 'NULL'),
(183, 33, 'Co. Meath', 'MEA', 'NULL'),
(184, 33, 'Co. Monaghan', 'MOG', 'NULL'),
(185, 33, 'Co. Offaly', 'OFF', 'NULL'),
(186, 33, 'Co. Roscommon', 'ROS', 'NULL'),
(187, 33, 'Co. Sligo', 'SLI', 'NULL'),
(188, 33, 'Co. Tipperary', 'TIP', 'NULL'),
(189, 33, 'Co. Tyrone', 'TYR', 'NULL'),
(190, 33, 'Co. Waterford', 'WAT', 'NULL'),
(191, 33, 'Co. Westmeath', 'WEM', 'NULL'),
(192, 33, 'Co. Wexford', 'WEX', 'NULL'),
(193, 33, 'Co. Wicklow', 'WIC', 'NULL'),
(194, 33, 'Cornwall', 'CON', 'NULL'),
(195, 33, 'Cumberland', 'CUL', 'NULL'),
(196, 33, 'Cumbria', 'CMA', 'NULL'),
(197, 33, 'Denbighshire', 'DEN', 'NULL'),
(198, 33, 'Derbyshire', 'DBY', 'NULL'),
(199, 33, 'Devon', 'DEV', 'NULL'),
(200, 33, 'Dorset', 'DOR', 'NULL'),
(201, 33, 'Dumfries and Galloway', 'DGY', 'NULL'),
(202, 33, 'Dumfries-shire', 'DFS', 'NULL'),
(203, 33, 'Dunbartonshire', 'DNB', 'NULL'),
(204, 33, 'Dyfed', 'DFD', 'NULL'),
(205, 33, 'East Lothian', 'ELN', 'NULL'),
(206, 33, 'East Riding of Yorkshire', 'ERY', 'NULL'),
(207, 33, 'East Sussex', 'SXE', 'NULL'),
(208, 33, 'Essex', 'ESS', 'NULL'),
(209, 33, 'Fife', 'FIF', 'NULL'),
(210, 33, 'Flintshire', 'FLN', 'NULL'),
(211, 33, 'Glamorgan', 'GLA', 'NULL'),
(212, 33, 'Gloucestershire', 'GLS', 'NULL'),
(213, 33, 'Grampian', 'GMP', 'NULL'),
(214, 33, 'Greater Manchester', 'GTM', 'NULL'),
(215, 33, 'Guernsey', 'GSY', 'NULL'),
(216, 33, 'Gwent', 'GNT', 'NULL'),
(217, 33, 'Gwynedd', 'GWN', 'NULL'),
(218, 33, 'Hampshire', 'HAM', 'NULL'),
(219, 33, 'Hereford and Worcester', 'HWR', 'NULL'),
(220, 33, 'Herefordshire', 'HEF', 'NULL'),
(221, 33, 'Hertfordshire', 'HRT', 'NULL'),
(222, 33, 'Highland', 'HLD', 'NULL'),
(223, 33, 'Humberside', 'HUM', 'NULL'),
(224, 33, 'Huntingdonshire', 'HUN', 'NULL'),
(225, 33, 'Inverness-shire', 'INV', 'NULL'),
(226, 33, 'Isle of Wight', 'IOW', 'NULL'),
(227, 33, 'Jersey', 'JSY', 'NULL'),
(228, 33, 'Kent', 'KEN', 'NULL'),
(229, 33, 'Kincardineshire', 'KCD', 'NULL'),
(230, 33, 'Kinross-shire', 'KRS', 'NULL'),
(231, 33, 'Kirkcudbrightshire', 'KKD', 'NULL'),
(232, 33, 'Lanarkshire', 'LKS', 'NULL'),
(233, 33, 'Lancashire', 'LAN', 'NULL'),
(234, 33, 'Leicestershire', 'LEI', 'NULL'),
(235, 33, 'Lincolnshire', 'LIN', 'NULL'),
(236, 33, 'Lothian', 'LTN', 'NULL'),
(237, 33, 'Merionethshire', 'MER', 'NULL'),
(238, 33, 'Merseyside', 'MSY', 'NULL'),
(239, 33, 'Mid Glamorgan', 'MGM', 'NULL'),
(240, 33, 'Midlothian', 'MLN', 'NULL'),
(241, 33, 'Monmouthshire', 'MON', 'NULL'),
(242, 33, 'Montgomeryshire', 'MGY', 'NULL'),
(243, 33, 'Morayshire', 'MOR', 'NULL'),
(244, 33, 'Nairn', 'NAI', 'NULL'),
(245, 33, 'Norfolk', 'NFK', 'NULL'),
(246, 33, 'North Riding of Yorkshire', 'NRY', 'NULL'),
(247, 33, 'North Yorkshire', 'NYK', 'NULL'),
(248, 33, 'Northamptonshire', 'NTH', 'NULL'),
(249, 33, 'Northumberland', 'NBL', 'NULL'),
(250, 33, 'Nottinghamshire', 'NTT', 'NULL'),
(251, 33, 'Orkney', 'OKI', 'NULL'),
(252, 33, 'Oxfordshire', 'OXF', 'NULL'),
(253, 33, 'Peebles-shire', 'PEE', 'NULL'),
(254, 33, 'Pembrokeshire', 'PEM', 'NULL'),
(255, 33, 'Perth', 'PER', 'NULL'),
(256, 33, 'Powys', 'POW', 'NULL'),
(257, 33, 'Radnorshire', 'RAD', 'NULL'),
(258, 33, 'Renfrewshire', 'RFW', 'NULL'),
(259, 33, 'Ross and Cromarty', 'ROC', 'NULL'),
(260, 33, 'Roxburghshire', 'ROX', 'NULL'),
(261, 33, 'Rutland', 'RUT', 'NULL'),
(262, 33, 'Sark', 'SRK', 'NULL'),
(263, 33, 'Selkirkshire', 'SEL', 'NULL'),
(264, 33, 'Shetland', 'SHI', 'NULL'),
(265, 33, 'Shropshire', 'SAL', 'NULL'),
(266, 33, 'Somerset', 'SOM', 'NULL'),
(267, 33, 'South Glamorgan', 'SGM', 'NULL'),
(268, 33, 'South Yorkshire', 'SYK', 'NULL'),
(269, 33, 'Staffordshire', 'STS', 'NULL'),
(270, 33, 'Stirlingshire', 'STI', 'NULL'),
(271, 33, 'Strathclyde', 'STD', 'NULL'),
(272, 33, 'Suffolk', 'SFK', 'NULL'),
(273, 33, 'Surrey', 'SRY', 'NULL'),
(274, 33, 'Sussex', 'SSX', 'NULL'),
(275, 33, 'Sutherland', 'SUT', 'NULL'),
(276, 33, 'Tayside', 'TAY', 'NULL'),
(277, 33, 'Tyne and Wear', 'TWR', 'NULL'),
(278, 33, 'Warwickshire', 'WAR', 'NULL'),
(279, 33, 'West Glamorgan', 'WGM', 'NULL'),
(280, 33, 'West Lothian', 'WLN', 'NULL'),
(281, 33, 'West Midlands', 'WMD', 'NULL'),
(282, 33, 'West Riding of Yorkshire', 'WRY', 'NULL'),
(283, 33, 'West Sussex', 'SXW', 'NULL'),
(284, 33, 'West Yorkshire', 'WYK', 'NULL'),
(285, 33, 'Western Isles', 'WIS', 'NULL'),
(286, 33, 'Westmorland', 'WES', 'NULL'),
(287, 33, 'Wigtownshire', 'WIG', 'NULL'),
(288, 33, 'Wiltshire', 'WIL', 'NULL'),
(289, 33, 'Worcestershire', 'WOR', 'NULL'),
(290, 33, 'Yorkshire', 'YKS', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `company_id`) VALUES
(1, 'IT Department', 2),
(2, 'Front Office Department', 2),
(3, 'Housekeeping Department', 2),
(16, 'IT', 124);

-- --------------------------------------------------------

--
-- Table structure for table `employee_backaccount_info`
--

CREATE TABLE `employee_backaccount_info` (
  `id` int(11) NOT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `passbook_image` varchar(250) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_backaccount_info`
--

INSERT INTO `employee_backaccount_info` (`id`, `account_type`, `ifsc_code`, `bank_name`, `branch`, `account_number`, `employee_id`, `passbook_image`, `address`) VALUES
(11, 'Savings', 'HDFC0001235', 'BOB', '', '78', 28, '', ''),
(20, 'Savings', 'HDFC0412344', 'SBI', 'SBI', '78', 79, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/bank/20/plant-logo-design-herbs-logo-lawn-logo-template-f312e4e06c4132caec6d4d1c5986b56b_screen.jpg', 'Jamnagar'),
(25, 'Current', 'HDFC0001234', 'SBI', 'jamanagr', '5', 90, 'http://localhost/timeSheetPro/usercontent/2/employeeProfile/bank/25/get-back-to-code-km_1_-_Copy.jpg', ''),
(33, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`id`, `name`) VALUES
(1, 'Contracted'),
(2, 'Hourly Based'),
(3, 'Salaried');

-- --------------------------------------------------------

--
-- Table structure for table `employment_info`
--

CREATE TABLE `employment_info` (
  `id` int(11) NOT NULL,
  `work_phone` varchar(10) DEFAULT NULL,
  `ext` varchar(200) DEFAULT NULL,
  `work_email` varchar(200) DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `paid_pension` varchar(10) DEFAULT NULL,
  `statutory_employee` varchar(10) DEFAULT NULL,
  `exclusion_indicator` varchar(250) DEFAULT NULL,
  `key_employee_indicator` varchar(10) DEFAULT NULL,
  `hce` varchar(200) DEFAULT NULL,
  `union_indicator` varchar(10) DEFAULT NULL,
  `eligibility_indicator` varchar(255) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `functionality`
--

CREATE TABLE `functionality` (
  `id` bigint(20) NOT NULL,
  `functionality_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `functionality`
--

INSERT INTO `functionality` (`id`, `functionality_name`) VALUES
(8, 'Company'),
(9, 'Users'),
(10, 'Permission');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_templates`
--

CREATE TABLE `holiday_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday_templates`
--

INSERT INTO `holiday_templates` (`id`, `name`, `company_id`, `created_by`) VALUES
(3, 'January', 2, 28);

-- --------------------------------------------------------

--
-- Table structure for table `holiday_template_details`
--

CREATE TABLE `holiday_template_details` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `holiday_template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday_template_details`
--

INSERT INTO `holiday_template_details` (`id`, `name`, `date`, `holiday_template_id`) VALUES
(7, 'Uttarayan', '2026-01-14', 3),
(8, 'Republic day', '2026-01-26', 3),
(9, 'ok', '2026-01-31', 3);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(200) DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `address1` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `employee_count` varchar(100) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `radar_external_id` varchar(200) DEFAULT NULL,
  `geofence_Id` varchar(200) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `pay_period` int(11) DEFAULT NULL,
  `pay_period_start` date DEFAULT NULL,
  `pay_period_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `city`, `state`, `country`, `address1`, `address2`, `zip_code`, `employee_count`, `company_id`, `radar_external_id`, `geofence_Id`, `is_active`, `pay_period`, `pay_period_start`, `pay_period_end`) VALUES
(198, 'Locations 1', 'Jamnagar', 'Gujarat', 'India', 'Jamnagar', 'Jamnagar', '361006', '2', 124, 'timesheetspro_124_198', '6970c71c9aa5fc2ec34ff522', 1, NULL, '2026-01-21', '2026-01-21'),
(199, 'Lo', 'jamnagar', 'Gujarat', 'India', 'Jamnagar', 'Jamnagar', '361006', '56', 125, NULL, NULL, 0, NULL, '2026-01-21', '2026-01-21'),
(200, 'Location 1', 'Jamnagar', 'Gujarat', 'India', 'chamber 103, Hirji Mistry Rd, near Rozy Petrol Pump, above SBI ATM, Ranjit Nagar, Summair Club Road, Makvana, Jamnagar, Gujarat 361006', '', '361006', '21', 2, 'timesheetspro_2_200', '6979f27ae79b9bd7ef56072d', 1, NULL, '2026-01-28', '2026-01-28');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` bigint(20) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `functionality_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `functionality_id`) VALUES
(10, 'User', 9),
(13, 'Role', 10),
(16, 'Manage Company', 8);

-- --------------------------------------------------------

--
-- Table structure for table `module_actions`
--

CREATE TABLE `module_actions` (
  `module_action_Id` bigint(20) NOT NULL,
  `module_id` bigint(20) DEFAULT NULL,
  `action_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module_actions`
--

INSERT INTO `module_actions` (`module_action_Id`, `module_id`, `action_id`) VALUES
(51, 10, 1),
(52, 10, 2),
(53, 10, 3),
(54, 10, 4),
(63, 13, 1),
(64, 13, 2),
(65, 13, 3),
(66, 13, 4),
(75, 16, 1),
(76, 16, 2),
(77, 16, 3),
(78, 16, 4);

-- --------------------------------------------------------

--
-- Table structure for table `overtime_rules`
--

CREATE TABLE `overtime_rules` (
  `id` int(11) NOT NULL,
  `rule_name` varchar(255) NOT NULL,
  `ot_minutes` int(11) NOT NULL,
  `ot_amount` float DEFAULT NULL,
  `ot_type` varchar(200) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `overtime_rules`
--

INSERT INTO `overtime_rules` (`id`, `rule_name`, `ot_minutes`, `ot_amount`, `ot_type`, `company_id`, `created_by`) VALUES
(2, 'Fixed Amount', 60, 40, 'Fixed Amount', 2, NULL),
(3, 'Fixed Amount Per Hour', 60, 50, 'Fixed Amount Per Hour', 2, NULL),
(4, '2x Salary', 60, NULL, '2x Salary', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(11, 'Managar'),
(12, 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_actions`
--

CREATE TABLE `role_module_actions` (
  `role_action_Id` bigint(20) NOT NULL,
  `role_Id` bigint(20) DEFAULT NULL,
  `module_action_Id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_module_actions`
--

INSERT INTO `role_module_actions` (`role_action_Id`, `role_Id`, `module_action_Id`) VALUES
(450, 11, 51),
(451, 11, 52),
(452, 11, 53),
(453, 11, 54),
(454, 11, 63),
(455, 11, 64),
(456, 11, 65),
(457, 11, 66),
(458, 11, 75),
(459, 11, 76),
(460, 11, 77),
(461, 11, 78),
(485, 1, 75),
(486, 1, 77),
(487, 1, 78),
(488, 1, 76),
(489, 1, 51),
(490, 1, 52),
(491, 1, 53),
(492, 1, 54),
(493, 1, 63),
(494, 1, 64),
(495, 1, 65),
(496, 1, 66),
(497, 12, 78),
(498, 12, 54),
(499, 12, 66);

-- --------------------------------------------------------

--
-- Table structure for table `salary_statement_history`
--

CREATE TABLE `salary_statement_history` (
  `id` int(11) NOT NULL,
  `clock_in_out_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(200) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `total_earn_salary` int(11) NOT NULL,
  `ot_amount` int(11) NOT NULL,
  `pf_amount` int(11) DEFAULT NULL,
  `total_pf_amount` int(11) NOT NULL,
  `pf_percentage` int(11) DEFAULT NULL,
  `pt_amount` int(11) DEFAULT NULL,
  `total_earnings` int(11) NOT NULL,
  `total_deductions` int(11) NOT NULL,
  `total_penalty_amount` int(11) NOT NULL DEFAULT 0,
  `other_deductions` int(11) NOT NULL,
  `net_salary` int(11) NOT NULL,
  `salary_month_and_year` varchar(20) DEFAULT NULL,
  `salary_month` int(11) DEFAULT NULL,
  `salary_year` int(11) DEFAULT NULL,
  `total_paid_days` int(11) NOT NULL,
  `working_days` int(11) NOT NULL,
  `total_days` int(11) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `generated_by` int(11) DEFAULT NULL,
  `generated_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_statement_master`
--

CREATE TABLE `salary_statement_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `total_salary` int(11) NOT NULL,
  `total_pf` int(11) NOT NULL,
  `total_pt` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `cnt_name` varchar(80) NOT NULL,
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `oid` int(11) DEFAULT NULL,
  `cnt_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone_min_length` int(11) DEFAULT 0,
  `phone_max_length` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPRESSED;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `iso2`, `cnt_name`, `long_name`, `oid`, `cnt_code`, `phone_min_length`, `phone_max_length`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 3, '+93', 7, 9),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 4, '+358', 7, 10),
(3, 'AL', 'Albania', 'Republic of Albania', 5, '+355', 3, 9),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 6, '+213', 0, 9),
(5, 'AS', 'American Samoa', 'American Samoa', 7, '+1', 0, 10),
(6, 'AD', 'Andorra', 'Principality of Andorra', 8, '+376', 3, 6),
(7, 'AO', 'Angola', 'Republic of Angola', 9, '+244', 0, 9),
(8, 'AI', 'Anguilla', 'Anguilla', 10, '+1264', 0, 10),
(9, 'AQ', 'Antarctica', 'Antarctica', 11, '+672', 0, 6),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 12, '+1', 0, 10),
(11, 'AR', 'Argentina', 'Argentine Republic', 13, '+54', 0, 10),
(12, 'AM', 'Armenia', 'Republic of Armenia', 14, '+374', 0, 8),
(13, 'AW', 'Aruba', 'Aruba', 15, '+297', 0, 7),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 16, '+61', 0, 9),
(15, 'AT', 'Austria', 'Republic of Austria', 17, '+43', 10, 11),
(16, 'CA', 'Canada', 'Canada', 2, '+1', 0, 10),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 19, '+1242', 0, 10),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 20, '+973', 0, 8),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 21, '+880', 6, 10),
(20, 'BB', 'Barbados', 'Barbados', 22, '+1246', 0, 10),
(21, 'BY', 'Belarus', 'Republic of Belarus', 23, '+375', 8, 10),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 24, '+32', 0, 10),
(23, 'BZ', 'Belize', 'Belize', 25, '+501', 0, 7),
(24, 'BJ', 'Benin', 'Republic of Benin', 26, '+229', 0, 8),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 27, '+1441', 0, 10),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 28, '+975', 7, 8),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 29, '+591', 0, 8),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 30, '+599', 0, 7),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 31, '+387', 0, 8),
(30, 'BW', 'Botswana', 'Republic of Botswana', 32, '+267', 7, 8),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 33, NULL, 0, 0),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 34, '+55', 0, 10),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 35, '+246', 0, 8),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 36, '+673', 0, 7),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 37, '+359', 7, 9),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 38, '+226', 0, 8),
(37, 'BI', 'Burundi', 'Republic of Burundi', 39, '+257', 0, 8),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 40, '+855', 0, 8),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 41, '+237', 0, 8),
(40, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 42, '+994', 9, 9),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 43, '+238', 0, 7),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 44, '+1345', 0, 7),
(43, 'CF', 'Central African Republic', 'Central African Republic', 45, '+236', 0, 8),
(44, 'TD', 'Chad', 'Republic of Chad', 46, '+235', 0, 8),
(45, 'CL', 'Chile', 'Republic of Chile', 47, '+56', 8, 9),
(46, 'CN', 'China', 'People\'s Republic of China', 48, '+86', 5, 12),
(47, 'CX', 'Christmas Island', 'Christmas Island', 49, '+61', 0, 9),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 50, '+61', 0, 9),
(49, 'CO', 'Colombia', 'Republic of Colombia', 51, '+57', 0, 10),
(50, 'KM', 'Comoros', 'Union of the Comoros', 52, '+269', 7, 7),
(51, 'CG', 'Congo', 'Republic of the Congo', 53, '+242', 9, 9),
(52, 'CK', 'Cook Islands', 'Cook Islands', 54, '+682', 0, 5),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 55, '+506', 0, 8),
(54, 'CI', 'Ivory Coast', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 56, '+225', 0, 10),
(55, 'HR', 'Croatia', 'Republic of Croatia', 57, '+385', 8, 12),
(56, 'CU', 'Cuba', 'Republic of Cuba', 58, '+53', 6, 8),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 59, '+599', 0, 7),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 60, '+357', 8, 11),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 61, '+42', 4, 12),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 62, '+243', 0, 9),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 63, '+45', 0, 8),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 64, '+253', 0, 6),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 65, '+1809', 0, 10),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 66, '+1809', 0, 10),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 67, '+593', 0, 8),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 68, '+20', 7, 9),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 69, '+503', 7, 11),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 70, '+240', 0, 6),
(69, 'ER', 'Eritrea', 'State of Eritrea', 71, '+291', 0, 7),
(70, 'EE', 'Estonia', 'Republic of Estonia', 72, '+372', 7, 12),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 73, '+251', 0, 9),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 74, '+500', 0, 5),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 75, '+298', 0, 6),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 76, '+679', 0, 7),
(75, 'FI', 'Finland', 'Republic of Finland', 77, '+358', 5, 12),
(76, 'FR', 'France', 'French Republic', 78, '+33', 0, 9),
(77, 'GF', 'French Guiana', 'French Guiana', 79, '+594', 9, 12),
(78, 'PF', 'French Polynesia', 'French Polynesia', 80, '+689', 0, 6),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 81, '+262', 0, 9),
(80, 'GA', 'Gabon', 'Gabonese Republic', 82, '+241', 6, 7),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 83, '+220', 0, 7),
(82, 'GE', 'Georgia', 'Georgia', 84, '+7880', 0, 8),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 85, '+49', 6, 13),
(84, 'GH', 'Ghana', 'Republic of Ghana', 86, '+233', 5, 9),
(85, 'GI', 'Gibraltar', 'Gibraltar', 87, '+350', 0, 8),
(86, 'GR', 'Greece', 'Hellenic Republic', 88, '+30', 0, 10),
(87, 'GL', 'Greenland', 'Greenland', 89, '+299', 0, 6),
(88, 'GD', 'Grenada', 'Grenada', 90, '+1473', 0, 7),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 91, '+590', 9, 12),
(90, 'GU', 'Guam', 'Guam', 92, '+671', 0, 10),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 93, '+502', 0, 8),
(92, 'GG', 'Guernsey', 'Guernsey', 94, '+44', 0, 10),
(93, 'GN', 'Guinea', 'Republic of Guinea', 95, '+224', 0, 8),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 96, '+245', 0, 7),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 97, '+592', 0, 7),
(96, 'HT', 'Haiti', 'Republic of Haiti', 98, '+509', 0, 8),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 99, NULL, 0, 0),
(98, 'HN', 'Honduras', 'Republic of Honduras', 100, '+504', 7, 8),
(99, 'HK', 'Hong Kong', 'Hong Kong', 101, '+852', 4, 9),
(100, 'US', 'United States', 'United States of America', 1, '+1', 0, 10),
(101, 'IS', 'Iceland', 'Republic of Iceland', 103, '+354', 7, 9),
(102, 'IN', 'India', 'Republic of India', 104, '+91', 0, 10),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 105, '+62', 0, 10),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 106, '+98', 6, 10),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 107, '+964', 8, 10),
(106, 'IE', 'Ireland', 'Ireland', 108, '+353', 7, 11),
(107, 'IM', 'Isle of Man', 'Isle of Man', 109, '+44', 0, 10),
(108, 'IL', 'Israel', 'State of Israel', 110, '+972', 8, 9),
(109, 'IT', 'Italy', 'Italian Republic', 111, '+39', 0, 11),
(110, 'JM', 'Jamaica', 'Jamaica', 112, '+1876', 0, 10),
(111, 'JP', 'Japan', 'Japan', 113, '+81', 9, 10),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 114, '+44', 0, 10),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 115, '+962', 5, 9),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 116, '+7', 0, 10),
(115, 'KE', 'Kenya', 'Republic of Kenya', 117, '+254', 6, 10),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 118, '+686', 0, 5),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', 119, '+383', 0, 8),
(118, 'KW', 'Kuwait', 'State of Kuwait', 120, '+965', 7, 8),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 121, '+996', 0, 10),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 122, '+856', 8, 9),
(121, 'LV', 'Latvia', 'Republic of Latvia', 123, '+371', 7, 8),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 124, '+961', 7, 8),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 125, '+266', 0, 8),
(124, 'LR', 'Liberia', 'Republic of Liberia', 126, '+231', 7, 8),
(125, 'LY', 'Libya', 'Libya', 127, '+218', 0, 0),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 128, '+417', 7, 9),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 129, '+370', 0, 8),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 130, '+352', 4, 11),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 131, '+853', 5, 9),
(130, 'MK', 'Macedonia', 'The Former Yugoslav Republic of Macedonia', 132, '+389', 0, 8),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 133, '+261', 9, 10),
(132, 'MW', 'Malawi', 'Republic of Malawi', 134, '+265', 7, 10),
(133, 'MY', 'Malaysia', 'Malaysia', 135, '+60', 7, 9),
(134, 'MV', 'Maldives', 'Republic of Maldives', 136, '+960', 0, 7),
(135, 'ML', 'Mali', 'Republic of Mali', 137, '+223', 0, 8),
(136, 'MT', 'Malta', 'Republic of Malta', 138, '+356', 0, 8),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 139, '+692', 0, 7),
(138, 'MQ', 'Martinique', 'Martinique', 140, '+596', 0, 9),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 141, '+222', 0, 7),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 142, '+230', 0, 7),
(141, 'YT', 'Mayotte', 'Mayotte', 143, '+269', 0, 10),
(142, 'MX', 'Mexico', 'United Mexican States', 144, '+52', 0, 10),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 145, '+691', 0, 7),
(144, 'MD', 'Moldava', 'Republic of Moldova', 146, '+373', 0, 8),
(145, 'MC', 'Monaco', 'Principality of Monaco', 147, '+377', 5, 9),
(146, 'MN', 'Mongolia', 'Mongolia', 148, '+95', 7, 8),
(147, 'ME', 'Montenegro', 'Montenegro', 149, '+382', 4, 12),
(148, 'MS', 'Montserrat', 'Montserrat', 150, '+1664', 0, 10),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 151, '+212', 0, 9),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 152, '+258', 8, 9),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 153, '+95', 8, 11),
(152, 'NA', 'Namibia', 'Republic of Namibia', 154, '+264', 6, 10),
(153, 'NR', 'Nauru', 'Republic of Nauru', 155, '+674', 4, 7),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 156, '+670', 8, 9),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 157, '+31', 0, 9),
(156, 'NC', 'New Caledonia', 'New Caledonia', 158, '+687', 0, 6),
(157, 'NZ', 'New Zealand', 'New Zealand', 159, '+64', 3, 10),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 160, '+505', 0, 8),
(159, 'NE', 'Niger', 'Republic of Niger', 161, '+227', 0, 8),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 162, '+234', 7, 10),
(161, 'NU', 'Niue', 'Niue', 163, '+683', 0, 4),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 164, '+672', 0, 6),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 165, '+850', 8, 10),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 166, '+1', 0, 7),
(165, 'NO', 'Norway', 'Kingdom of Norway', 167, '+47', 5, 8),
(166, 'OM', 'Oman', 'Sultanate of Oman', 168, '+968', 7, 8),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 169, '+92', 8, 11),
(168, 'PW', 'Palau', 'Republic of Palau', 170, '+680', 0, 7),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 171, '+970', 8, 9),
(170, 'PA', 'Panama', 'Republic of Panama', 172, '+507', 7, 8),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 173, '+675', 4, 11),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 174, '+595', 5, 9),
(173, 'PE', 'Peru', 'Republic of Peru', 175, '+51', 8, 11),
(174, 'PH', 'Phillipines', 'Republic of the Philippines', 176, '+63', 8, 10),
(175, 'PN', 'Pitcairn', 'Pitcairn', 177, '+64', 0, 8),
(176, 'PL', 'Poland', 'Republic of Poland', 178, '+48', 6, 9),
(177, 'PT', 'Portugal', 'Portuguese Republic', 179, '+351', 9, 11),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 180, '+1787', 0, 10),
(179, 'QA', 'Qatar', 'State of Qatar', 181, '+974', 6, 10),
(180, 'RE', 'Reunion', 'R&eacute;union', 182, '+262', 0, 12),
(181, 'RO', 'Romania', 'Romania', 183, '+40', 0, 9),
(182, 'RU', 'Russia', 'Russian Federation', 184, '+7', 0, 10),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 185, '+250', 0, 9),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 186, '+590', 0, 9),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 187, '+290', 0, 4),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 188, '+1869', 0, 7),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 189, '+1', 0, 10),
(188, 'MF', 'Saint Martin', 'Saint Martin', 190, '+721', 0, 10),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 191, '+508', 0, 6),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 192, '+1', 0, 10),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 193, '+685', 3, 7),
(192, 'SM', 'San Marino', 'Republic of San Marino', 194, '+378', 6, 10),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 195, '+239', 0, 7),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 196, '+966', 8, 9),
(195, 'SN', 'Senegal', 'Republic of Senegal', 197, '+221', 0, 9),
(196, 'RS', 'Serbia', 'Republic of Serbia', 198, '+381', 4, 12),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 199, '+1758', 0, 6),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 200, '+232', 0, 8),
(199, 'SG', 'Singapore', 'Republic of Singapore', 201, '+65', 8, 12),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 202, '+721', 0, 10),
(201, 'SK', 'Slovakia', 'Slovak Republic', 203, '+421', 4, 9),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 204, '+963', 0, 8),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 205, '+677', 0, 5),
(204, 'SO', 'Somalia', 'Somali Republic', 206, '+252', 5, 8),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 207, '+27', 0, 9),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 208, '+500', 0, 5),
(207, 'KR', 'South Korea', 'Republic of Korea', 209, '+82', 8, 10),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 210, '+211', 0, 9),
(209, 'ES', 'Spain', 'Kingdom of Spain', 211, '+34', 0, 9),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 212, '+94', 0, 9),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 213, '+249', 0, 9),
(212, 'SR', 'Suriname', 'Republic of Suriname', 214, '+597', 6, 7),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 215, '+47', 5, 12),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 216, '+268', 7, 8),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 217, '+46', 7, 13),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 218, '+41', 4, 12),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 219, '+963', 8, 10),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 220, '+886', 8, 9),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 221, '+7', 0, 9),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 222, '+255', 0, 9),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 223, '+66', 8, 9),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 224, '+670', 0, 7),
(223, 'TG', 'Togo', 'Togolese Republic', 225, '+228', 0, 7),
(224, 'TK', 'Tokelau', 'Tokelau', 226, '+690', 0, 4),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 227, '+676', 5, 7),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 228, '+1868', 0, 10),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 229, '+216', 0, 8),
(228, 'TR', 'Turkey', 'Republic of Turkey', 230, '+90', 0, 10),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 231, '+993', 0, 8),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 232, '+1649', 0, 10),
(231, 'TV', 'Tuvalu', 'Tuvalu', 233, '+688', 5, 6),
(232, 'UG', 'Uganda', 'Republic of Uganda', 234, '+256', 0, 9),
(233, 'UA', 'Ukraine', 'Ukraine', 235, '+380', 0, 9),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 236, '+971', 8, 9),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 237, '+44', 7, 10),
(236, 'HU', 'Hungary', 'Hungary', 238, '+36', 8, 9),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 239, NULL, 0, 0),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 240, '+598', 0, 8),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 241, '+7', 0, 9),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 242, '+678', 5, 7),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 243, '+379', 0, 10),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 244, '+58', 0, 10),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 245, '+84', 7, 10),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 246, '+1284', 0, 10),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 247, '+1340', 0, 7),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 248, '+681', 0, 6),
(247, 'EH', 'Western Sahara', 'Western Sahara', 249, '+212', 0, 9),
(248, 'YE', 'Yemen', 'Republic of Yemen', 250, '+967', 6, 9),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 251, '+260', 0, 9),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 252, '+263', 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `user_shift_id` bigint(20) DEFAULT NULL,
  `hourly_rate` bigint(20) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `contractor_id` bigint(20) DEFAULT NULL,
  `middle_name` varchar(200) NOT NULL,
  `personal_identification_number` varchar(255) NOT NULL,
  `profile_img` varchar(500) NOT NULL,
  `employee_id` varchar(200) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `address1`, `address2`, `birth_date`, `city`, `contact_phone`, `country`, `email`, `emergency_contact`, `first_name`, `last_name`, `password`, `phone`, `relationship`, `state`, `zip_code`, `department_id`, `role_id`, `user_shift_id`, `hourly_rate`, `gender`, `contractor_id`, `middle_name`, `personal_identification_number`, `profile_img`, `employee_id`, `user_name`) VALUES
(3, 'Jamnagar', 'Jamnagar', '02/15/2025', 'Jamnagar', '7894561230', 'India', 'pjay41907@gmail.com', 'Bhargav', 'Jay', 'Patel', '123', '8888888888', 'Bro', 'Gujarat', '361002', 1, 1, 3, NULL, 'Male', 1, 'A', '8888888888', 'http://localhost/timeSheetPro/usercontent/3/profileImages/Gemini_Generated_Image_ew2ojgew2ojgew2o.png', '0001', 'JayPatel'),
(23, 'Jamnagar', 'Jamnagar', '01/09/2025', 'Jamnagar', '7894561230', 'India', 'ram@gmail.com', 'Bhargav', 'Ram', 'Patel', 'Ram@12345', '8956451201', 'Bro', 'Gujarat', '361002', NULL, 1, NULL, NULL, 'Male', NULL, 'A', 'TimeSheetsPro-703505', 'http://localhost/timeSheetPro/usercontent/23/profileImages/download.png', '0002', 'Ram');

-- --------------------------------------------------------

--
-- Table structure for table `user_inout`
--

CREATE TABLE `user_inout` (
  `id` bigint(20) NOT NULL,
  `time_in` datetime DEFAULT NULL,
  `time_out` datetime DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `is_salary_generate` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_inout`
--

INSERT INTO `user_inout` (`id`, `time_in`, `time_out`, `created_on`, `user_id`, `location_id`, `company_id`, `is_salary_generate`) VALUES
(554, '2025-12-25 00:38:19', '2025-12-25 03:38:59', '2025-12-25', 28, NULL, 2, 0),
(555, '2026-01-03 14:00:00', '2026-01-03 21:40:00', '2026-01-03', 28, NULL, 2, 0),
(556, '2026-01-05 00:16:07', '2026-01-05 02:16:11', '2026-01-05', 28, NULL, 2, 0),
(557, '2026-01-28 17:25:18', '2026-01-28 17:26:54', '2026-01-28', 90, 200, 2, 0),
(558, '2026-01-28 17:47:16', '2026-01-28 18:47:21', '2026-01-28', 100, 200, 124, 0),
(559, '2026-01-29 22:56:48', '2026-01-29 23:15:12', '2026-01-29', 100, NULL, 124, 0),
(560, '2026-01-29 17:28:39', NULL, '2026-01-29', 100, NULL, 124, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `module_action_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_shift`
--

CREATE TABLE `user_shift` (
  `id` bigint(20) NOT NULL,
  `shift_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_shift`
--

INSERT INTO `user_shift` (`id`, `shift_name`) VALUES
(1, 'Contracted'),
(2, 'Part Time'),
(3, 'Regular'),
(4, 'Seasonal'),
(5, 'Temporary');

-- --------------------------------------------------------

--
-- Table structure for table `weekly_off`
--

CREATE TABLE `weekly_off` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `sunday_all` tinyint(1) DEFAULT 0,
  `sunday_1st` tinyint(1) DEFAULT 0,
  `sunday_2nd` tinyint(1) DEFAULT 0,
  `sunday_3rd` tinyint(1) DEFAULT 0,
  `sunday_4th` tinyint(1) DEFAULT 0,
  `sunday_5th` tinyint(1) DEFAULT 0,
  `monday_all` tinyint(1) DEFAULT 0,
  `monday_1st` tinyint(1) DEFAULT 0,
  `monday_2nd` tinyint(1) DEFAULT 0,
  `monday_3rd` tinyint(1) DEFAULT 0,
  `monday_4th` tinyint(1) DEFAULT 0,
  `monday_5th` tinyint(1) DEFAULT 0,
  `tuesday_all` tinyint(1) DEFAULT 0,
  `tuesday_1st` tinyint(1) DEFAULT 0,
  `tuesday_2nd` tinyint(1) DEFAULT 0,
  `tuesday_3rd` tinyint(1) DEFAULT 0,
  `tuesday_4th` tinyint(1) DEFAULT 0,
  `tuesday_5th` tinyint(1) DEFAULT 0,
  `wednesday_all` tinyint(1) DEFAULT 0,
  `wednesday_1st` tinyint(1) DEFAULT 0,
  `wednesday_2nd` tinyint(1) DEFAULT 0,
  `wednesday_3rd` tinyint(1) DEFAULT 0,
  `wednesday_4th` tinyint(1) DEFAULT 0,
  `wednesday_5th` tinyint(1) DEFAULT 0,
  `thursday_all` tinyint(1) DEFAULT 0,
  `thursday_1st` tinyint(1) DEFAULT 0,
  `thursday_2nd` tinyint(1) DEFAULT 0,
  `thursday_3rd` tinyint(1) DEFAULT 0,
  `thursday_4th` tinyint(1) DEFAULT 0,
  `thursday_5th` tinyint(1) DEFAULT 0,
  `friday_all` tinyint(1) DEFAULT 0,
  `friday_1st` tinyint(1) DEFAULT 0,
  `friday_2nd` tinyint(1) DEFAULT 0,
  `friday_3rd` tinyint(1) DEFAULT 0,
  `friday_4th` tinyint(1) DEFAULT 0,
  `friday_5th` tinyint(1) DEFAULT 0,
  `saturday_all` tinyint(1) DEFAULT 0,
  `saturday_1st` tinyint(1) DEFAULT 0,
  `saturday_2nd` tinyint(1) DEFAULT 0,
  `saturday_3rd` tinyint(1) DEFAULT 0,
  `saturday_4th` tinyint(1) DEFAULT 0,
  `saturday_5th` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `attendance_penalty_rules`
--
ALTER TABLE `attendance_penalty_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `company_actions`
--
ALTER TABLE `company_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_employees`
--
ALTER TABLE `company_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `employee_type` (`employee_type`),
  ADD KEY `company_employees_ibfk_5` (`shift_id`),
  ADD KEY `ot_id` (`ot_id`),
  ADD KEY `weekly_off` (`weekly_off`),
  ADD KEY `holiday_template` (`holiday_template`);

--
-- Indexes for table `company_employee_roles`
--
ALTER TABLE `company_employee_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company_functionality`
--
ALTER TABLE `company_functionality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_modules`
--
ALTER TABLE `company_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `functionality_id` (`functionality_id`);

--
-- Indexes for table `company_module_actions`
--
ALTER TABLE `company_module_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `company_role_module_actions`
--
ALTER TABLE `company_role_module_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_Id` (`role_Id`),
  ADD KEY `module_action_Id` (`module_action_Id`);

--
-- Indexes for table `company_shift`
--
ALTER TABLE `company_shift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `company_theme`
--
ALTER TABLE `company_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_to_state`
--
ALTER TABLE `country_to_state`
  ADD PRIMARY KEY (`country_to_state_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `employee_backaccount_info`
--
ALTER TABLE `employee_backaccount_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_info`
--
ALTER TABLE `employment_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `functionality`
--
ALTER TABLE `functionality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_templates`
--
ALTER TABLE `holiday_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `holiday_template_details`
--
ALTER TABLE `holiday_template_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holiday_template_id` (`holiday_template_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_actions`
--
ALTER TABLE `module_actions`
  ADD PRIMARY KEY (`module_action_Id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `action_id` (`action_id`);

--
-- Indexes for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_module_actions`
--
ALTER TABLE `role_module_actions`
  ADD PRIMARY KEY (`role_action_Id`),
  ADD KEY `module_action_Id` (`module_action_Id`),
  ADD KEY `role_Id` (`role_Id`);

--
-- Indexes for table `salary_statement_history`
--
ALTER TABLE `salary_statement_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generated_by` (`generated_by`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `salary_statement_master`
--
ALTER TABLE `salary_statement_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `user_shift_id` (`user_shift_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_inout`
--
ALTER TABLE `user_inout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_shift`
--
ALTER TABLE `user_shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekly_off`
--
ALTER TABLE `weekly_off`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `action_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendance_penalty_rules`
--
ALTER TABLE `attendance_penalty_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company_actions`
--
ALTER TABLE `company_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `company_employees`
--
ALTER TABLE `company_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `company_employee_roles`
--
ALTER TABLE `company_employee_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `company_functionality`
--
ALTER TABLE `company_functionality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_modules`
--
ALTER TABLE `company_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `company_module_actions`
--
ALTER TABLE `company_module_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `company_role_module_actions`
--
ALTER TABLE `company_role_module_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3743;

--
-- AUTO_INCREMENT for table `company_shift`
--
ALTER TABLE `company_shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company_theme`
--
ALTER TABLE `company_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `contractor`
--
ALTER TABLE `contractor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country_to_state`
--
ALTER TABLE `country_to_state`
  MODIFY `country_to_state_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `employee_backaccount_info`
--
ALTER TABLE `employee_backaccount_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employment_info`
--
ALTER TABLE `employment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `functionality`
--
ALTER TABLE `functionality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `holiday_templates`
--
ALTER TABLE `holiday_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `holiday_template_details`
--
ALTER TABLE `holiday_template_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `module_actions`
--
ALTER TABLE `module_actions`
  MODIFY `module_action_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_module_actions`
--
ALTER TABLE `role_module_actions`
  MODIFY `role_action_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `salary_statement_history`
--
ALTER TABLE `salary_statement_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `salary_statement_master`
--
ALTER TABLE `salary_statement_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_inout`
--
ALTER TABLE `user_inout`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_shift`
--
ALTER TABLE `user_shift`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weekly_off`
--
ALTER TABLE `weekly_off`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_penalty_rules`
--
ALTER TABLE `attendance_penalty_rules`
  ADD CONSTRAINT `attendance_penalty_rules_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_penalty_rules_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `company_employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `company_employees`
--
ALTER TABLE `company_employees`
  ADD CONSTRAINT `company_employees_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `company_employee_roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_4` FOREIGN KEY (`employee_type`) REFERENCES `employee_type` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_5` FOREIGN KEY (`shift_id`) REFERENCES `company_shift` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_6` FOREIGN KEY (`ot_id`) REFERENCES `overtime_rules` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_7` FOREIGN KEY (`weekly_off`) REFERENCES `weekly_off` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `company_employees_ibfk_8` FOREIGN KEY (`holiday_template`) REFERENCES `holiday_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `company_employee_roles`
--
ALTER TABLE `company_employee_roles`
  ADD CONSTRAINT `company_employee_roles_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_modules`
--
ALTER TABLE `company_modules`
  ADD CONSTRAINT `company_modules_ibfk_1` FOREIGN KEY (`functionality_id`) REFERENCES `company_functionality` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_module_actions`
--
ALTER TABLE `company_module_actions`
  ADD CONSTRAINT `company_module_actions_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `company_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_module_actions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `company_modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_role_module_actions`
--
ALTER TABLE `company_role_module_actions`
  ADD CONSTRAINT `company_role_module_actions_ibfk_1` FOREIGN KEY (`role_Id`) REFERENCES `company_employee_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_role_module_actions_ibfk_2` FOREIGN KEY (`module_action_Id`) REFERENCES `company_module_actions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_shift`
--
ALTER TABLE `company_shift`
  ADD CONSTRAINT `company_shift_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_theme`
--
ALTER TABLE `company_theme`
  ADD CONSTRAINT `company_theme_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_backaccount_info`
--
ALTER TABLE `employee_backaccount_info`
  ADD CONSTRAINT `employee_backaccount_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `company_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employment_info`
--
ALTER TABLE `employment_info`
  ADD CONSTRAINT `employment_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `company_employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `holiday_templates`
--
ALTER TABLE `holiday_templates`
  ADD CONSTRAINT `holiday_templates_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `holiday_templates_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `company_employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `holiday_template_details`
--
ALTER TABLE `holiday_template_details`
  ADD CONSTRAINT `holiday_template_details_ibfk_1` FOREIGN KEY (`holiday_template_id`) REFERENCES `holiday_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_actions`
--
ALTER TABLE `module_actions`
  ADD CONSTRAINT `module_actions_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `module` (`module_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_actions_ibfk_2` FOREIGN KEY (`action_id`) REFERENCES `actions` (`action_id`) ON DELETE CASCADE;

--
-- Constraints for table `overtime_rules`
--
ALTER TABLE `overtime_rules`
  ADD CONSTRAINT `overtime_rules_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `overtime_rules_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `company_employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_module_actions`
--
ALTER TABLE `role_module_actions`
  ADD CONSTRAINT `role_module_actions_ibfk_2` FOREIGN KEY (`module_action_Id`) REFERENCES `module_actions` (`module_action_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_module_actions_ibfk_3` FOREIGN KEY (`role_Id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_statement_history`
--
ALTER TABLE `salary_statement_history`
  ADD CONSTRAINT `salary_statement_history_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_statement_history_ibfk_2` FOREIGN KEY (`generated_by`) REFERENCES `company_employees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `salary_statement_history_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_statement_master`
--
ALTER TABLE `salary_statement_master`
  ADD CONSTRAINT `salary_statement_master_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`user_shift_id`) REFERENCES `user_shift` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `user_inout`
--
ALTER TABLE `user_inout`
  ADD CONSTRAINT `user_inout_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `company_employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_inout_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_inout_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekly_off`
--
ALTER TABLE `weekly_off`
  ADD CONSTRAINT `weekly_off_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `company_employees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `weekly_off_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_details` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
