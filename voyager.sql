-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 12:33 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 9),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 20),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 10),
(23, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'deg_name', 'text', 'Deg Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(27, 5, 'qual_id', 'text', 'Qual Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'deg_id', 'text', 'Deg Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'qual_name', 'text', 'Qual Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(30, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(31, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(32, 5, 'qualification_belongsto_degree_relationship', 'relationship', 'degrees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Degree\",\"table\":\"degrees\",\"type\":\"belongsTo\",\"column\":\"deg_id\",\"key\":\"id\",\"label\":\"deg_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(33, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 6, 'qual_id', 'text', 'Qual Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(35, 6, 'spec_name', 'text', 'Spec Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 6, 'no_of_sems', 'text', 'No Of Sems', 0, 1, 1, 1, 1, 1, '{}', 4),
(37, 6, 'specialization_belongsto_qualification_relationship', 'relationship', 'qualifications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Qualification\",\"table\":\"qualifications\",\"type\":\"belongsTo\",\"column\":\"qual_id\",\"key\":\"id\",\"label\":\"qual_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(38, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(39, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(40, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 7, 'unit_no', 'number', 'Unit No', 1, 1, 1, 1, 1, 1, '{}', 2),
(42, 7, 'unit_name', 'text', 'Unit Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(43, 7, 'no_of_hours', 'number', 'No Of Hours', 0, 1, 1, 1, 1, 1, '{}', 4),
(44, 7, 'lesson_plan', 'text_area', 'Lesson Plan', 0, 1, 1, 1, 1, 1, '{}', 5),
(45, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(46, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(47, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(48, 8, 'sub_code', 'text', 'Sub Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(49, 8, 'sub_name', 'text', 'Sub Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(50, 8, 'no_of_units', 'number', 'No Of Units', 0, 1, 1, 1, 1, 1, '{}', 4),
(51, 8, 'syllabus', 'file', 'Syllabus', 0, 1, 1, 1, 1, 1, '{}', 5),
(53, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(54, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(58, 7, 'unit_belongsto_subject_relationship', 'relationship', 'subjects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"sub_code\",\"key\":\"sub_code\",\"label\":\"sub_code\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(59, 7, 'sub_code', 'text', 'Sub Code', 1, 1, 1, 1, 1, 1, '{}', 8),
(60, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 9, 'spec_id', 'text', 'Spec Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 9, 'sem_no', 'number', 'Sem No', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 9, 'start_date', 'date', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 9, 'no_of_subs', 'number', 'No Of Subs', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(66, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(70, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 12, 'spec_id', 'text', 'Spec Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(72, 12, 'sem_no', 'text', 'Sem No', 1, 1, 1, 1, 1, 1, '{}', 3),
(73, 12, 'start_date', 'date', 'Start Date', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 12, 'sub_code', 'text', 'Sub Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(75, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(76, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(77, 12, 'semestersubject_belongsto_specialization_relationship', 'relationship', 'specializations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialization\",\"table\":\"specializations\",\"type\":\"belongsTo\",\"column\":\"spec_id\",\"key\":\"id\",\"label\":\"spec_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(78, 12, 'semestersubject_belongsto_subject_relationship', 'relationship', 'subjects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"sub_code\",\"key\":\"sub_code\",\"label\":\"sub_code\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(82, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 7),
(83, 1, 'user_belongsto_degree_relationship', 'relationship', 'degrees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Degree\",\"table\":\"degrees\",\"type\":\"belongsTo\",\"column\":\"degree\",\"key\":\"deg_name\",\"label\":\"deg_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 21),
(84, 1, 'user_belongsto_qualification_relationship', 'relationship', 'qualifications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Qualification\",\"table\":\"qualifications\",\"type\":\"belongsTo\",\"column\":\"qualification\",\"key\":\"qual_name\",\"label\":\"qual_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 22),
(85, 1, 'user_belongsto_specialization_relationship', 'relationship', 'specializations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Specialization\",\"table\":\"specializations\",\"type\":\"belongsTo\",\"column\":\"specialization\",\"key\":\"spec_name\",\"label\":\"spec_name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 23),
(86, 1, 'user_belongsto_semestersubject_relationship', 'relationship', 'semestersubjects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Semestersubject\",\"table\":\"semestersubjects\",\"type\":\"belongsTo\",\"column\":\"semester\",\"key\":\"sem_no\",\"label\":\"sem_no\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 24);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 04:29:32', '2018-11-11 08:58:03'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-11-10 04:29:33', '2018-11-10 04:29:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-11-10 04:29:33', '2018-11-10 04:29:33'),
(4, 'degrees', 'degrees', 'Degree', 'Degrees', NULL, 'App\\Degree', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(5, 'qualifications', 'qualifications', 'Qualification', 'Qualifications', NULL, 'App\\Qualification', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 07:07:15', '2018-11-10 07:09:32'),
(6, 'specializations', 'specializations', 'Specialization', 'Specializations', NULL, 'App\\Specialization', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 07:20:41', '2018-11-10 07:30:18'),
(7, 'units', 'units', 'Unit', 'Units', NULL, 'App\\Unit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 07:45:42', '2018-11-10 12:37:26'),
(8, 'subjects', 'subjects', 'Subjects', 'Subjects', NULL, 'App\\Subject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 07:55:43', '2018-11-10 12:52:42'),
(9, 'semesters', 'semesters', 'Semesters', 'Semesters', NULL, 'App\\Semester', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 12:44:22', '2018-11-10 13:03:01'),
(12, 'semestersubjects', 'semestersubjects', 'Semestersubject', 'Semestersubjects', NULL, 'App\\Semestersubject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-11-10 13:27:35', '2018-11-10 13:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(10) UNSIGNED NOT NULL,
  `deg_name` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `deg_name`, `created_at`, `updated_at`) VALUES
(1, 'Bachelors', '2018-11-10 06:48:44', '2018-11-10 06:48:44'),
(2, 'Masters', '2018-11-10 06:49:00', '2018-11-10 06:49:00'),
(3, 'Ph.D', '2018-11-10 06:49:20', '2018-11-10 06:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-10 04:29:35', '2018-11-10 04:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-11-10 04:29:35', '2018-11-10 04:29:35', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 10, '2018-11-10 04:29:35', '2018-11-10 13:40:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-11-10 04:29:35', '2018-11-10 04:29:35', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-11-10 04:29:35', '2018-11-10 04:29:35', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2018-11-10 04:29:35', '2018-11-10 13:40:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-11-10 04:29:35', '2018-11-10 13:39:15', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-11-10 04:29:36', '2018-11-10 13:39:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-11-10 04:29:36', '2018-11-10 13:39:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-11-10 04:29:36', '2018-11-10 13:39:15', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2018-11-10 04:29:36', '2018-11-10 13:40:13', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-11-10 04:29:39', '2018-11-10 13:39:15', 'voyager.hooks', NULL),
(12, 1, 'Degrees', '', '_self', 'voyager-news', '#000000', NULL, 4, '2018-11-10 06:48:26', '2018-11-10 13:39:25', 'voyager.degrees.index', 'null'),
(13, 1, 'Qualifications', '', '_self', 'voyager-study', '#000000', NULL, 5, '2018-11-10 07:07:15', '2018-11-10 13:39:37', 'voyager.qualifications.index', 'null'),
(14, 1, 'Specializations', '', '_self', 'voyager-certificate', '#000000', NULL, 6, '2018-11-10 07:20:41', '2018-11-10 13:39:43', 'voyager.specializations.index', 'null'),
(15, 1, 'Units', '', '_self', 'voyager-thumb-tack', '#000000', NULL, 9, '2018-11-10 07:45:42', '2018-11-10 13:40:15', 'voyager.units.index', 'null'),
(16, 1, 'Subjects', '', '_self', 'voyager-book', '#000000', NULL, 8, '2018-11-10 07:55:43', '2018-11-10 13:40:00', 'voyager.subjects.index', 'null'),
(19, 1, 'Semestersubjects', '', '_self', 'voyager-documentation', '#000000', NULL, 7, '2018-11-10 13:27:36', '2018-11-10 13:39:52', 'voyager.semestersubjects.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(2, 'browse_bread', NULL, '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(3, 'browse_database', NULL, '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(4, 'browse_media', NULL, '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(5, 'browse_compass', NULL, '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(6, 'browse_menus', 'menus', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(7, 'read_menus', 'menus', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(8, 'edit_menus', 'menus', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(9, 'add_menus', 'menus', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(10, 'delete_menus', 'menus', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(11, 'browse_roles', 'roles', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(12, 'read_roles', 'roles', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(13, 'edit_roles', 'roles', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(14, 'add_roles', 'roles', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(15, 'delete_roles', 'roles', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(16, 'browse_users', 'users', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(17, 'read_users', 'users', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(18, 'edit_users', 'users', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(19, 'add_users', 'users', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(20, 'delete_users', 'users', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(21, 'browse_settings', 'settings', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(22, 'read_settings', 'settings', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(23, 'edit_settings', 'settings', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(24, 'add_settings', 'settings', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(25, 'delete_settings', 'settings', '2018-11-10 04:29:37', '2018-11-10 04:29:37'),
(26, 'browse_hooks', NULL, '2018-11-10 04:29:39', '2018-11-10 04:29:39'),
(27, 'browse_degrees', 'degrees', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(28, 'read_degrees', 'degrees', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(29, 'edit_degrees', 'degrees', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(30, 'add_degrees', 'degrees', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(31, 'delete_degrees', 'degrees', '2018-11-10 06:48:26', '2018-11-10 06:48:26'),
(32, 'browse_qualifications', 'qualifications', '2018-11-10 07:07:15', '2018-11-10 07:07:15'),
(33, 'read_qualifications', 'qualifications', '2018-11-10 07:07:15', '2018-11-10 07:07:15'),
(34, 'edit_qualifications', 'qualifications', '2018-11-10 07:07:15', '2018-11-10 07:07:15'),
(35, 'add_qualifications', 'qualifications', '2018-11-10 07:07:15', '2018-11-10 07:07:15'),
(36, 'delete_qualifications', 'qualifications', '2018-11-10 07:07:15', '2018-11-10 07:07:15'),
(37, 'browse_specializations', 'specializations', '2018-11-10 07:20:41', '2018-11-10 07:20:41'),
(38, 'read_specializations', 'specializations', '2018-11-10 07:20:41', '2018-11-10 07:20:41'),
(39, 'edit_specializations', 'specializations', '2018-11-10 07:20:41', '2018-11-10 07:20:41'),
(40, 'add_specializations', 'specializations', '2018-11-10 07:20:41', '2018-11-10 07:20:41'),
(41, 'delete_specializations', 'specializations', '2018-11-10 07:20:41', '2018-11-10 07:20:41'),
(42, 'browse_units', 'units', '2018-11-10 07:45:42', '2018-11-10 07:45:42'),
(43, 'read_units', 'units', '2018-11-10 07:45:42', '2018-11-10 07:45:42'),
(44, 'edit_units', 'units', '2018-11-10 07:45:42', '2018-11-10 07:45:42'),
(45, 'add_units', 'units', '2018-11-10 07:45:42', '2018-11-10 07:45:42'),
(46, 'delete_units', 'units', '2018-11-10 07:45:42', '2018-11-10 07:45:42'),
(47, 'browse_subjects', 'subjects', '2018-11-10 07:55:43', '2018-11-10 07:55:43'),
(48, 'read_subjects', 'subjects', '2018-11-10 07:55:43', '2018-11-10 07:55:43'),
(49, 'edit_subjects', 'subjects', '2018-11-10 07:55:43', '2018-11-10 07:55:43'),
(50, 'add_subjects', 'subjects', '2018-11-10 07:55:43', '2018-11-10 07:55:43'),
(51, 'delete_subjects', 'subjects', '2018-11-10 07:55:43', '2018-11-10 07:55:43'),
(52, 'browse_semesters', 'semesters', '2018-11-10 12:44:22', '2018-11-10 12:44:22'),
(53, 'read_semesters', 'semesters', '2018-11-10 12:44:22', '2018-11-10 12:44:22'),
(54, 'edit_semesters', 'semesters', '2018-11-10 12:44:22', '2018-11-10 12:44:22'),
(55, 'add_semesters', 'semesters', '2018-11-10 12:44:22', '2018-11-10 12:44:22'),
(56, 'delete_semesters', 'semesters', '2018-11-10 12:44:22', '2018-11-10 12:44:22'),
(62, 'browse_semestersubjects', 'semestersubjects', '2018-11-10 13:27:36', '2018-11-10 13:27:36'),
(63, 'read_semestersubjects', 'semestersubjects', '2018-11-10 13:27:36', '2018-11-10 13:27:36'),
(64, 'edit_semestersubjects', 'semestersubjects', '2018-11-10 13:27:36', '2018-11-10 13:27:36'),
(65, 'add_semestersubjects', 'semestersubjects', '2018-11-10 13:27:36', '2018-11-10 13:27:36'),
(66, 'delete_semestersubjects', 'semestersubjects', '2018-11-10 13:27:36', '2018-11-10 13:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 2),
(42, 3),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `deg_id` int(11) NOT NULL,
  `qual_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `deg_id`, `qual_name`, `created_at`, `updated_at`) VALUES
(2, 1, 'BSc', '2018-11-10 07:16:27', '2018-11-10 07:16:27'),
(3, 1, 'BTech', '2018-11-10 07:16:50', '2018-11-10 07:16:50'),
(4, 2, 'MSc', '2018-11-10 07:17:06', '2018-11-10 07:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-11-10 04:29:36', '2018-11-10 04:29:36'),
(2, 'student', 'Student', '2018-11-10 04:29:36', '2018-11-10 13:42:26'),
(3, 'teacher', 'Teacher', '2018-11-10 13:44:01', '2018-11-10 13:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `semestersubjects`
--

CREATE TABLE `semestersubjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `spec_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sem_no` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `sub_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semestersubjects`
--

INSERT INTO `semestersubjects` (`id`, `spec_id`, `sem_no`, `start_date`, `sub_code`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2019-01-01', 'Bio101', '2018-11-10 13:34:13', '2018-11-10 13:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Scital', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Open Your Mind', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\November2018\\dorW9JF8DKnJ32ing2xe.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\November2018\\uV0Kz1NKxmShNqe1odNW.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Scital', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Open Your Mind', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\November2018\\W9wE8N2rKMbPcubk2qSP.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\November2018\\rCB6TjiabGLEbTgtTzUf.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(10) UNSIGNED NOT NULL,
  `spec_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_sems` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qual_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `spec_name`, `no_of_sems`, `created_at`, `updated_at`, `qual_id`) VALUES
(1, 'Biology', 6, '2018-11-10 07:31:02', '2018-11-10 07:31:02', 2),
(2, 'Chemistry', 6, '2018-11-10 07:31:23', '2018-11-10 07:31:23', 2),
(3, 'BioTech', 8, '2018-11-10 07:31:41', '2018-11-10 07:31:41', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_units` int(11) DEFAULT NULL,
  `syllabus` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `sub_code`, `sub_name`, `no_of_units`, `syllabus`, `created_at`, `updated_at`) VALUES
(1, 'Bio101', 'Biology 101', 5, NULL, '2018-11-10 12:31:53', '2018-11-10 12:31:53'),
(2, 'chem101', 'Chemistry 101', 5, NULL, '2018-11-10 12:32:14', '2018-11-10 12:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_no` int(11) NOT NULL,
  `unit_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_hours` int(11) DEFAULT NULL,
  `lesson_plan` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_code` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_no`, `unit_name`, `no_of_hours`, `lesson_plan`, `created_at`, `updated_at`, `sub_code`) VALUES
(1, 1, 'Intro to Biology', 10, NULL, '2018-11-10 07:46:00', '2018-11-10 12:40:36', 'Bio101'),
(2, 2, 'Biochemistry', 10, NULL, '2018-11-10 07:48:00', '2018-11-10 12:41:03', 'Bio101'),
(3, 3, 'Molecular Biology', 10, NULL, '2018-11-10 07:48:00', '2018-11-10 12:40:22', 'Bio101'),
(4, 4, 'Biodiversity', 10, NULL, '2018-11-10 07:49:00', '2018-11-10 12:40:11', 'Bio101'),
(5, 5, 'Genetics', 10, NULL, '2018-11-10 07:49:00', '2018-11-10 12:41:14', 'Bio101'),
(6, 1, 'Intro to Chemistry', 10, NULL, '2018-11-10 07:51:00', '2018-11-10 12:39:12', 'chem101'),
(7, 2, 'Coordination Chemistry', 10, NULL, '2018-11-10 07:52:00', '2018-11-10 12:38:38', 'chem101'),
(8, 4, 'Practical Chemistry', 10, NULL, '2018-11-10 07:52:00', '2018-11-10 12:39:54', 'chem101'),
(10, 5, 'Chemists Toolkit', 10, NULL, '2018-11-10 12:38:00', '2018-11-11 06:13:42', 'chem101');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `degree` text COLLATE utf8mb4_unicode_ci,
  `qualification` text COLLATE utf8mb4_unicode_ci,
  `specialization` text COLLATE utf8mb4_unicode_ci,
  `semester` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `degree`, `qualification`, `specialization`, `semester`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users\\November2018\\LgHFag2Yi2AiOFxLxPcE.jpg', NULL, '$2y$10$EKRQoda8eOpMNlIuNRrg9eC8H9P3hvuKk2sPbRYVG/kAqCAzi1ECS', 'rP08fKfl5Hin2NNyEnW4K73OzRUpphphkGZBHboSjj1t6SEkNdInbFAaBWGL', NULL, '2018-11-10 04:32:53', '2018-11-11 06:59:11', NULL, NULL, NULL, NULL),
(3, 2, 'Student1', 'stud@student.com', 'users/default.png', NULL, '$2y$10$HRnDrPpodZ7xhPTiZ8guDuuVypXI4bElrA5D5U9u.SHqizKaIqfqa', NULL, NULL, '2018-11-11 08:58:43', '2018-11-11 08:58:43', NULL, NULL, NULL, NULL),
(4, 3, 'Teacher1', 'teach@teacher.com', 'users/default.png', NULL, '$2y$10$nK2CbAW0PLngG3qNW.qvN..BSS5dhRTEqPsBG4V.QO2CzB3rm3ccy', '2EdU2KpCXzYbMedqmweJXPn0WNOLMzxhgkKZhcpF6Kjwl3DeUpkyhddG0x9E', NULL, '2018-11-11 08:59:21', '2018-11-11 08:59:21', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `semestersubjects`
--
ALTER TABLE `semestersubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `semestersubjects`
--
ALTER TABLE `semestersubjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
