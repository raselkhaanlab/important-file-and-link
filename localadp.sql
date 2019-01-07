-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2019 at 12:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `localadp`
--

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `created_at`, `updated_at`, `agency_name`, `agency_description`, `status`) VALUES
(9, '2018-11-21 23:10:55', '2019-01-03 04:56:26', 'Total Transportation Ltd.', 'Farmgate, Dhaka-1215, Bangladesh', 1),
(10, '2018-11-21 23:11:40', '2018-11-21 23:11:40', 'Agrani Transport Agency Ltd.', 'Old Dhaka, Dhaka-1100, Bangladesh', 1),
(11, '2018-11-21 23:12:01', '2018-11-21 23:12:01', 'Bismilla Transport Agency', 'Tejgaon, Dhaka-1208, Bangladesh', 0),
(12, '2018-11-21 23:12:27', '2018-12-09 23:09:09', 'Friends Transport Agency', 'Tejgaon, Dhaka-1208, Bangladesh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attachment_details`
--

CREATE TABLE `attachment_details` (
  `id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `attachment_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `attachment_details` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `attachment_path` varchar(250) CHARACTER SET latin1 NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `budget_heads`
--

CREATE TABLE `budget_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `budget_head_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget_head_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` tinyint(4) NOT NULL,
  `updated_by` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `budget_heads`
--

INSERT INTO `budget_heads` (`id`, `budget_head_name`, `budget_head_description`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'ddd', 'dfdf', 0, '2019-01-06 04:30:01', '2019-01-06 04:47:47', '2019-01-06 04:47:47', 24, 24),
(2, 'head 2', 'this is desc', 1, '2019-01-06 04:48:33', '2019-01-06 22:22:59', '2019-01-06 22:22:59', 24, 24),
(3, 'uuu', '99', 1, '2019-01-06 22:21:49', '2019-01-06 22:22:55', '2019-01-06 22:22:55', 24, 24),
(4, 'fdf', 'dfdf', 1, '2019-01-06 22:24:19', '2019-01-06 22:24:19', NULL, 24, 24),
(5, '', 'dfdf', 0, '2019-01-06 23:52:35', '2019-01-06 23:54:56', '2019-01-06 23:54:56', 24, 24),
(6, 'fg', 'fd', 1, '2019-01-06 23:55:14', '2019-01-06 23:55:14', NULL, 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `division_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_description` varchar(1200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `created_at`, `updated_at`, `division_name`, `division_description`, `status`) VALUES
(1, '2018-12-10 00:51:03', '2018-12-10 01:13:35', 'Planning Division', 'DescriptionThe Ministry of Planning oversees the financial policies of the Bangladeshi Government, responsible for socioeconomic planning and statistics management It contains three Divisions:', '0');

-- --------------------------------------------------------

--
-- Table structure for table `finalcial_years`
--

CREATE TABLE `finalcial_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `year_status` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` tinyint(4) NOT NULL,
  `updated_by` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name_bangla` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_menu` int(11) UNSIGNED DEFAULT NULL,
  `sequence` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `name_bangla`, `link`, `parent_menu`, `sequence`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Root', '', 'Test', 0, 0, 1, NULL, NULL, NULL, NULL),
(2, 'User Management', '', NULL, 1, 1, 1, 1, 24, '2018-11-17 23:31:59', '2018-11-20 00:07:06'),
(3, 'User Group', '', 'usergroup.index', 2, 1, 1, 1, 24, '2018-11-17 23:32:35', '2018-11-21 22:08:05'),
(4, 'User Creation', '', 'usercreation.index', 2, 2, 1, 1, 24, '2018-11-17 23:33:12', '2018-11-21 22:08:16'),
(5, 'User Privileges', '', 'userprivilege.index', 2, 3, 1, 1, 24, '2018-11-17 23:34:04', '2018-11-21 22:08:23'),
(6, 'Menu Management', '', NULL, 1, 2, 1, 1, 24, '2018-11-17 23:34:47', '2018-11-20 00:03:52'),
(7, 'Menu Creation', '', 'menucreation.index', 6, 0, 1, 1, NULL, '2018-11-17 23:34:47', '2018-11-17 23:34:47'),
(8, 'Project', '', NULL, 1, 3, 1, 1, 24, '2018-11-18 03:36:18', '2018-11-20 00:04:01'),
(9, 'New Project', '', 'newproject.index', 8, 0, 1, 1, 24, '2018-11-18 03:36:57', '2018-11-19 22:12:39'),
(10, 'Setup', '', NULL, 1, 4, 1, 1, 24, '2018-11-18 03:37:15', '2018-11-20 00:04:16'),
(16, 'Ministry', NULL, 'ministry.index', 10, 1, 1, 24, NULL, '2018-11-20 02:55:41', '2018-11-20 02:55:41'),
(17, 'Agency', NULL, 'agency.index', 10, 2, 1, 24, NULL, '2018-11-20 02:56:12', '2018-11-20 02:56:12'),
(18, 'Division', NULL, 'division.index', 10, 3, 1, 24, NULL, '2018-11-20 02:56:50', '2018-11-20 02:56:50'),
(19, 'Sector', NULL, 'sector.index', 10, 4, 1, 24, NULL, '2019-01-01 04:47:17', '2019-01-01 04:47:17'),
(20, 'Sub Sector', NULL, 'sub-sector.index', 10, 5, 1, 24, 24, '2019-01-01 04:48:20', '2019-01-01 04:50:07'),
(21, 'Project Source', NULL, 'project-source.index', 10, 6, 1, 24, 24, '2019-01-02 02:48:38', '2019-01-02 02:55:58'),
(22, 'Upazila Location', NULL, 'upazila-location.index', 10, 7, 1, 24, NULL, '2019-01-02 03:05:25', '2019-01-02 03:05:25'),
(23, 'Budget Head', NULL, 'budget-head.index', 10, 8, 1, 24, 24, '2019-01-06 04:26:06', '2019-01-06 04:26:41'),
(24, 'Pa Source', NULL, 'pa-source.index', 10, 9, 1, 24, NULL, '2019-01-07 01:05:38', '2019-01-07 01:05:38'),
(25, 'Financial Year', NULL, 'financial-year.index', 10, 10, 1, 24, NULL, '2019-01-07 04:44:24', '2019-01-07 04:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_29_064059_create_usergroups_table', 1),
(4, '2018_11_04_075825_add_seven_colum_users_table', 2),
(5, '2018_11_06_090002_create_menus_table', 3),
(7, '2018_11_07_041329_add_subgroup_column_in_usergroups_table', 4),
(8, '2018_11_07_061815_add_subgroup_column_in_usergroups_table', 5),
(11, '2018_11_10_050058_drop_two_column_add_one_column_in_menus_table', 6),
(15, '2018_11_13_095527_create_user_privileges_table', 7),
(16, '2019_01_06_051324_create_pa_sources_table', 8),
(17, '2019_01_06_051349_create_finalcial_years_table', 8),
(18, '2019_01_06_051431_create_budget_heads_table', 8),
(19, '2019_01_06_085419_add_two_colum_on_budget_heads', 9),
(20, '2019_01_06_085515_add_two_colum_on_finalcial_years', 9),
(21, '2019_01_06_085617_add_two_colum_on_pa_sources', 9);

-- --------------------------------------------------------

--
-- Table structure for table `ministries`
--

CREATE TABLE `ministries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ministry_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ministry_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ministries`
--

INSERT INTO `ministries` (`id`, `created_at`, `updated_at`, `ministry_name`, `ministry_description`, `status`) VALUES
(2, '2018-11-20 04:36:54', '2019-01-03 03:31:32', 'Planning Ministry', 'The Ministry of Planning oversees the financial policies of the Bangladeshi Government, responsible for socioeconomic planning and statistics management It contains three Divisions.', 0),
(3, '2019-01-06 01:04:26', '2019-01-06 01:04:26', 'rasel', 'rasel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pa_sources`
--

CREATE TABLE `pa_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `pa_source_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pa_source_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` tinyint(4) NOT NULL,
  `updated_by` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pa_sources`
--

INSERT INTO `pa_sources` (`id`, `pa_source_name`, `pa_source_description`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'df', 'df', 0, '2019-01-07 01:10:54', '2019-01-07 01:54:21', NULL, 24, 24),
(2, 'dsd', 'sd', 1, '2019-01-07 02:27:54', '2019-01-07 02:27:54', NULL, 24, 24);

-- --------------------------------------------------------

--
-- Table structure for table `project_sources`
--

CREATE TABLE `project_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_sources`
--

INSERT INTO `project_sources` (`id`, `source_name`, `source_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UNDP', 'The United Nations Development Programme is the United Nations\' global development network. Headquartered in New York City', 1, '2019-01-02 03:03:58', '2019-01-02 03:03:58'),
(2, 'JICA', 'DescriptionThe Japan International Cooperation Agency is a governmental agency that coordinates official development assistance for the government of Japan.', 1, '2019-01-02 03:27:31', '2019-01-02 03:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `sector_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `sector_name`, `sector_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'q', 'q', 1, '2019-01-02 03:08:09', '2019-01-02 03:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `subsectors`
--

CREATE TABLE `subsectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_sector_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_sector_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subsectors`
--

INSERT INTO `subsectors` (`id`, `sub_sector_name`, `sub_sector_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dd', 'dd', 1, '2019-01-02 03:14:16', '2019-01-02 03:14:16'),
(2, 'dfsaf', 'sdafasf', 1, '2019-01-02 03:17:13', '2019-01-02 03:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `unapproved_project_infos`
--

CREATE TABLE `unapproved_project_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_tiltle_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type` tinyint(4) NOT NULL,
  `project_code` tinyint(4) DEFAULT NULL,
  `ministry` tinyint(4) DEFAULT NULL,
  `agency` tinyint(4) DEFAULT NULL,
  `sector` tinyint(4) DEFAULT NULL,
  `sub_sector` tinyint(4) DEFAULT NULL,
  `objectives` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `objectives_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `gob` double NOT NULL,
  `fe` double NOT NULL,
  `pa` double NOT NULL,
  `rpa` double NOT NULL,
  `own_fund` double NOT NULL,
  `exchange_rate` double NOT NULL,
  `exchange_date` date NOT NULL,
  `date_of_commencement` date NOT NULL,
  `date_of_completion` date NOT NULL,
  `created_by` tinyint(4) DEFAULT NULL,
  `updated_by` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upazila_locations`
--

CREATE TABLE `upazila_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `upazila_location_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upazila_location_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upazila_locations`
--

INSERT INTO `upazila_locations` (`id`, `upazila_location_name`, `upazila_location_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fsdfsa', 'fsdsaf', 1, '2019-01-02 03:12:52', '2019-01-02 03:12:52'),
(2, 'dfsaf', 'sdfas', 1, '2019-01-02 03:13:30', '2019-01-02 03:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_group` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `company_id`, `group_name`, `sub_group`, `description`, `created_by`, `updated_by`, `isactive`, `created_at`, `updated_at`) VALUES
(2, 0, 'Super Admin', NULL, 'Super Admin', 1, 0, 1, '2018-11-04 03:14:19', '2018-11-04 03:14:19'),
(3, 0, 'System Admin', NULL, 'System Admin', 1, 0, 1, '2018-11-04 03:14:43', '2018-11-04 03:14:43'),
(4, 0, 'ERD User', NULL, 'ERD User', 1, 0, 1, '2018-11-04 03:15:18', '2018-11-04 03:15:18'),
(5, 0, 'Finance Division User', NULL, 'Finance Division User', 1, 0, 1, '2018-11-04 03:15:39', '2018-11-04 03:15:39'),
(6, 0, 'ADP Super User', NULL, 'ADP Super User', 9, 0, 1, '2018-11-05 02:53:11', '2018-11-05 02:53:11'),
(7, 0, 'ADP User', NULL, 'ADP User', 9, 0, 1, '2018-11-05 02:53:53', '2018-11-05 02:53:53'),
(8, 0, 'RADP Super User', NULL, 'RADP Super User', 9, 0, 1, '2018-11-05 02:54:39', '2018-11-05 02:54:39'),
(9, 0, 'RADP User', NULL, 'RADP User', 9, 0, 1, '2018-11-05 02:55:06', '2018-11-05 02:55:06'),
(10, 0, 'Sector Division Super User', NULL, 'Sector Division Super User', 9, 0, 1, '2018-11-05 02:55:50', '2018-11-05 02:55:50'),
(11, 0, 'Sub Sector User', NULL, 'Sub Sector User', 9, 0, 1, '2018-11-05 02:57:14', '2018-11-05 02:57:14'),
(12, 0, 'Ministry', NULL, 'Ministry', 9, 0, 1, '2018-11-05 02:58:09', '2018-11-05 02:58:09'),
(13, 0, 'Agency/Division', NULL, 'Agency/Division', 9, 0, 1, '2018-11-05 02:58:29', '2018-11-05 02:58:29'),
(14, 0, 'Sub Division', NULL, 'Sub Division', 1, 1, 1, '2018-11-06 22:30:41', '2018-11-06 22:35:41'),
(15, 0, 'Sub Agency', 13, 'Sub Agency', 1, 1, 1, '2018-11-06 22:46:19', '2018-11-17 22:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `user_group` int(11) NOT NULL,
  `parent_user` int(11) NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_image`, `email`, `email_verified_at`, `password`, `admin`, `user_group`, `parent_user`, `expiration_date`, `remember_token`, `modifiedby`, `createdby`, `created_at`, `updated_at`, `isactive`) VALUES
(24, 'Admin', 'user-images/Admin.png', 'admin@adp.com', NULL, '$2y$10$iCy/A4mvaV70FtDmwjco2.0OilyNnRolJjn1InJNtfRkhfd9RE4d.', 0, 2, 24, '2018-11-30', NULL, 24, 1, '2018-11-06 01:44:31', '2018-12-10 03:13:40', 1),
(28, 'Kanok', NULL, 'kanok@gmail.com', NULL, '$2y$10$fFZSSGViANuHfWrw10Jt3.84KL2WdG6guCyvRWlD8VYSd77950GeS', 0, 3, 24, '2018-11-30', NULL, NULL, 24, '2018-11-19 22:35:31', '2018-11-19 22:35:31', 1),
(30, 'Super', 'user-images/Super.jpg', 'superadmin@adp.com', NULL, '$2y$10$opDMeoNhROxQ/Vg7X59I1uBKLy1ughM9rShpfjFXsuIiUdVncfyRC', 0, 2, 24, '2018-12-14', NULL, 24, 24, '2018-12-10 02:37:12', '2018-12-10 03:01:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `actions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`id`, `user_group`, `menu_id`, `actions`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(61, 3, 2, '', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(62, 3, 3, '0,1,2,3', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(63, 3, 5, '0,1,2,3', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(64, 3, 8, '', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(65, 3, 9, '0,1,2,3', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(66, 3, 10, '', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(67, 3, 16, '0,1,2,3', 24, NULL, '2018-11-22 00:18:25', '2018-11-22 00:18:25'),
(662, 2, 2, '', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(663, 2, 3, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(664, 2, 4, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(665, 2, 5, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(666, 2, 6, '', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(667, 2, 7, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(668, 2, 8, '', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(669, 2, 9, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(670, 2, 10, '', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(671, 2, 16, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(672, 2, 17, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(673, 2, 18, '0,1,2,3', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(674, 2, 19, '', 24, NULL, '2019-01-07 04:55:53', '2019-01-07 04:55:53'),
(675, 2, 20, '0,1,2,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54'),
(676, 2, 21, '0,1,2,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54'),
(677, 2, 22, '0,1,2,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54'),
(678, 2, 23, '0,1,2,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54'),
(679, 2, 24, '0,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54'),
(680, 2, 25, '0,1,2,3', 24, NULL, '2019-01-07 04:55:54', '2019-01-07 04:55:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachment_details`
--
ALTER TABLE `attachment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget_heads`
--
ALTER TABLE `budget_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finalcial_years`
--
ALTER TABLE `finalcial_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministries`
--
ALTER TABLE `ministries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pa_sources`
--
ALTER TABLE `pa_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sources`
--
ALTER TABLE `project_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsectors`
--
ALTER TABLE `subsectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unapproved_project_infos`
--
ALTER TABLE `unapproved_project_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazila_locations`
--
ALTER TABLE `upazila_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attachment_details`
--
ALTER TABLE `attachment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budget_heads`
--
ALTER TABLE `budget_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finalcial_years`
--
ALTER TABLE `finalcial_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ministries`
--
ALTER TABLE `ministries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pa_sources`
--
ALTER TABLE `pa_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_sources`
--
ALTER TABLE `project_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subsectors`
--
ALTER TABLE `subsectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `unapproved_project_infos`
--
ALTER TABLE `unapproved_project_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upazila_locations`
--
ALTER TABLE `upazila_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
