-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2025 at 09:40 PM
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
-- Database: `hostel_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$TL.wAnYuWvqA/ffknR9Qj.ofqwGPyeZkD0KjONOas1Gtvizay72zS');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `block` varchar(20) NOT NULL,
  `floor` int(11) NOT NULL,
  `gender` enum('Male','Female','Both') NOT NULL,
  `is_taken` tinyint(1) DEFAULT 0,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `block`, `floor`, `gender`, `is_taken`, `student_id`) VALUES
(1, 'G01', '6A', 0, 'Male', 0, NULL),
(2, 'G02', '6A', 0, 'Male', 0, NULL),
(3, 'G03', '6A', 0, 'Male', 0, NULL),
(4, 'G04', '6A', 0, 'Male', 0, NULL),
(5, 'G05', '6A', 0, 'Male', 0, NULL),
(6, 'G06', '6A', 0, 'Male', 0, NULL),
(7, 'G07', '6A', 0, 'Male', 0, NULL),
(8, 'G08', '6A', 0, 'Male', 0, NULL),
(9, 'G09', '6A', 0, 'Male', 0, NULL),
(10, 'G10', '6A', 0, 'Male', 0, NULL),
(11, 'G11', '6A', 0, 'Male', 0, NULL),
(12, 'G12', '6A', 0, 'Male', 0, NULL),
(13, 'G13', '6A', 0, 'Male', 0, NULL),
(14, 'G14', '6A', 0, 'Male', 0, NULL),
(15, 'G15', '6A', 0, 'Male', 0, NULL),
(16, 'G16', '6A', 0, 'Male', 0, NULL),
(17, 'G17', '6A', 0, 'Male', 0, NULL),
(18, 'G18', '6A', 0, 'Male', 0, NULL),
(19, 'G19', '6A', 0, 'Male', 0, NULL),
(20, 'G20', '6A', 0, 'Male', 0, NULL),
(21, 'G21', '6A', 0, 'Male', 0, NULL),
(22, 'G22', '6A', 0, 'Male', 0, NULL),
(23, 'G23', '6A', 0, 'Male', 0, NULL),
(24, 'G24', '6A', 0, 'Male', 0, NULL),
(25, 'G25', '6A', 0, 'Male', 0, NULL),
(26, 'G26', '6A', 0, 'Male', 0, NULL),
(27, 'G27', '6A', 0, 'Male', 0, NULL),
(28, 'G28', '6A', 0, 'Male', 0, NULL),
(29, 'G29', '6A', 0, 'Male', 0, NULL),
(30, 'G30', '6A', 0, 'Male', 0, NULL),
(31, '101', '6A', 1, 'Male', 0, NULL),
(32, '102', '6A', 1, 'Male', 0, NULL),
(33, '103', '6A', 1, 'Male', 0, NULL),
(34, '104', '6A', 1, 'Male', 0, NULL),
(35, '105', '6A', 1, 'Male', 0, NULL),
(36, '106', '6A', 1, 'Male', 0, NULL),
(37, '107', '6A', 1, 'Male', 0, NULL),
(38, '108', '6A', 1, 'Male', 0, NULL),
(39, '109', '6A', 1, 'Male', 0, NULL),
(40, '110', '6A', 1, 'Male', 0, NULL),
(41, '111', '6A', 1, 'Male', 0, NULL),
(42, '112', '6A', 1, 'Male', 0, NULL),
(43, '113', '6A', 1, 'Male', 0, NULL),
(44, '114', '6A', 1, 'Male', 0, NULL),
(45, '115', '6A', 1, 'Male', 0, NULL),
(46, '116', '6A', 1, 'Male', 0, NULL),
(47, '117', '6A', 1, 'Male', 0, NULL),
(48, '118', '6A', 1, 'Male', 0, NULL),
(49, '119', '6A', 1, 'Male', 0, NULL),
(50, '120', '6A', 1, 'Male', 0, NULL),
(51, '121', '6A', 1, 'Male', 0, NULL),
(52, '122', '6A', 1, 'Male', 0, NULL),
(53, '123', '6A', 1, 'Male', 0, NULL),
(54, '124', '6A', 1, 'Male', 0, NULL),
(55, '125', '6A', 1, 'Male', 0, NULL),
(56, '126', '6A', 1, 'Male', 0, NULL),
(57, '127', '6A', 1, 'Male', 0, NULL),
(58, '128', '6A', 1, 'Male', 0, NULL),
(59, '129', '6A', 1, 'Male', 0, NULL),
(60, '130', '6A', 1, 'Male', 0, NULL),
(61, '201', '6A', 2, 'Male', 0, NULL),
(62, '202', '6A', 2, 'Male', 0, NULL),
(63, '203', '6A', 2, 'Male', 0, NULL),
(64, '204', '6A', 2, 'Male', 0, NULL),
(65, '205', '6A', 2, 'Male', 0, NULL),
(66, '206', '6A', 2, 'Male', 0, NULL),
(67, '207', '6A', 2, 'Male', 0, NULL),
(68, '208', '6A', 2, 'Male', 0, NULL),
(69, '209', '6A', 2, 'Male', 0, NULL),
(70, '210', '6A', 2, 'Male', 0, NULL),
(71, '211', '6A', 2, 'Male', 0, NULL),
(72, '212', '6A', 2, 'Male', 0, NULL),
(73, '213', '6A', 2, 'Male', 0, NULL),
(74, '214', '6A', 2, 'Male', 0, NULL),
(75, '215', '6A', 2, 'Male', 0, NULL),
(76, '216', '6A', 2, 'Male', 1, 1),
(77, '217', '6A', 2, 'Male', 0, NULL),
(78, '218', '6A', 2, 'Male', 0, NULL),
(79, '219', '6A', 2, 'Male', 0, NULL),
(80, '220', '6A', 2, 'Male', 0, NULL),
(81, '221', '6A', 2, 'Male', 0, NULL),
(82, '222', '6A', 2, 'Male', 0, NULL),
(83, '223', '6A', 2, 'Male', 0, NULL),
(84, '224', '6A', 2, 'Male', 0, NULL),
(85, '225', '6A', 2, 'Male', 0, NULL),
(86, '226', '6A', 2, 'Male', 0, NULL),
(87, '227', '6A', 2, 'Male', 0, NULL),
(88, '228', '6A', 2, 'Male', 0, NULL),
(89, '229', '6A', 2, 'Male', 0, NULL),
(90, '230', '6A', 2, 'Male', 0, NULL),
(91, 'G01', '6B', 0, 'Male', 0, NULL),
(92, 'G02', '6B', 0, 'Male', 0, NULL),
(93, 'G03', '6B', 0, 'Male', 0, NULL),
(94, 'G04', '6B', 0, 'Male', 0, NULL),
(95, 'G05', '6B', 0, 'Male', 0, NULL),
(96, 'G06', '6B', 0, 'Male', 0, NULL),
(97, 'G07', '6B', 0, 'Male', 0, NULL),
(98, 'G08', '6B', 0, 'Male', 0, NULL),
(99, 'G09', '6B', 0, 'Male', 0, NULL),
(100, 'G10', '6B', 0, 'Male', 0, NULL),
(101, 'G11', '6B', 0, 'Male', 0, NULL),
(102, 'G12', '6B', 0, 'Male', 0, NULL),
(103, 'G13', '6B', 0, 'Male', 0, NULL),
(104, 'G14', '6B', 0, 'Male', 0, NULL),
(105, 'G15', '6B', 0, 'Male', 0, NULL),
(106, 'G16', '6B', 0, 'Male', 0, NULL),
(107, 'G17', '6B', 0, 'Male', 0, NULL),
(108, 'G18', '6B', 0, 'Male', 0, NULL),
(109, 'G19', '6B', 0, 'Male', 0, NULL),
(110, 'G20', '6B', 0, 'Male', 0, NULL),
(111, 'G21', '6B', 0, 'Male', 0, NULL),
(112, 'G22', '6B', 0, 'Male', 0, NULL),
(113, 'G23', '6B', 0, 'Male', 0, NULL),
(114, 'G24', '6B', 0, 'Male', 0, NULL),
(115, 'G25', '6B', 0, 'Male', 0, NULL),
(116, 'G26', '6B', 0, 'Male', 0, NULL),
(117, 'G27', '6B', 0, 'Male', 0, NULL),
(118, 'G28', '6B', 0, 'Male', 0, NULL),
(119, 'G29', '6B', 0, 'Male', 0, NULL),
(120, 'G30', '6B', 0, 'Male', 0, NULL),
(121, '101', '6B', 1, 'Male', 0, NULL),
(122, '102', '6B', 1, 'Male', 0, NULL),
(123, '103', '6B', 1, 'Male', 0, NULL),
(124, '104', '6B', 1, 'Male', 0, NULL),
(125, '105', '6B', 1, 'Male', 0, NULL),
(126, '106', '6B', 1, 'Male', 0, NULL),
(127, '107', '6B', 1, 'Male', 0, NULL),
(128, '108', '6B', 1, 'Male', 0, NULL),
(129, '109', '6B', 1, 'Male', 0, NULL),
(130, '110', '6B', 1, 'Male', 0, NULL),
(131, '111', '6B', 1, 'Male', 0, NULL),
(132, '112', '6B', 1, 'Male', 0, NULL),
(133, '113', '6B', 1, 'Male', 0, NULL),
(134, '114', '6B', 1, 'Male', 0, NULL),
(135, '115', '6B', 1, 'Male', 0, NULL),
(136, '116', '6B', 1, 'Male', 0, NULL),
(137, '117', '6B', 1, 'Male', 0, NULL),
(138, '118', '6B', 1, 'Male', 0, NULL),
(139, '119', '6B', 1, 'Male', 0, NULL),
(140, '120', '6B', 1, 'Male', 0, NULL),
(141, '121', '6B', 1, 'Male', 0, NULL),
(142, '122', '6B', 1, 'Male', 0, NULL),
(143, '123', '6B', 1, 'Male', 0, NULL),
(144, '124', '6B', 1, 'Male', 0, NULL),
(145, '125', '6B', 1, 'Male', 0, NULL),
(146, '126', '6B', 1, 'Male', 0, NULL),
(147, '127', '6B', 1, 'Male', 0, NULL),
(148, '128', '6B', 1, 'Male', 0, NULL),
(149, '129', '6B', 1, 'Male', 0, NULL),
(150, '130', '6B', 1, 'Male', 0, NULL),
(151, '201', '6B', 2, 'Male', 0, NULL),
(152, '202', '6B', 2, 'Male', 0, NULL),
(153, '203', '6B', 2, 'Male', 0, NULL),
(154, '204', '6B', 2, 'Male', 0, NULL),
(155, '205', '6B', 2, 'Male', 0, NULL),
(156, '206', '6B', 2, 'Male', 0, NULL),
(157, '207', '6B', 2, 'Male', 0, NULL),
(158, '208', '6B', 2, 'Male', 0, NULL),
(159, '209', '6B', 2, 'Male', 0, NULL),
(160, '210', '6B', 2, 'Male', 0, NULL),
(161, '211', '6B', 2, 'Male', 0, NULL),
(162, '212', '6B', 2, 'Male', 0, NULL),
(163, '213', '6B', 2, 'Male', 0, NULL),
(164, '214', '6B', 2, 'Male', 0, NULL),
(165, '215', '6B', 2, 'Male', 0, NULL),
(166, '216', '6B', 2, 'Male', 0, NULL),
(167, '217', '6B', 2, 'Male', 0, NULL),
(168, '218', '6B', 2, 'Male', 0, NULL),
(169, '219', '6B', 2, 'Male', 0, NULL),
(170, '220', '6B', 2, 'Male', 0, NULL),
(171, '221', '6B', 2, 'Male', 0, NULL),
(172, '222', '6B', 2, 'Male', 0, NULL),
(173, '223', '6B', 2, 'Male', 0, NULL),
(174, '224', '6B', 2, 'Male', 0, NULL),
(175, '225', '6B', 2, 'Male', 0, NULL),
(176, '226', '6B', 2, 'Male', 0, NULL),
(177, '227', '6B', 2, 'Male', 0, NULL),
(178, '228', '6B', 2, 'Male', 0, NULL),
(179, '229', '6B', 2, 'Male', 0, NULL),
(180, '230', '6B', 2, 'Male', 0, NULL),
(181, '8C-001', '8C', 1, 'Female', 1, 2),
(182, '8C-002', '8C', 1, 'Female', 0, NULL),
(183, '8C-003', '8C', 1, 'Female', 0, NULL),
(184, '8C-004', '8C', 1, 'Female', 0, NULL),
(185, '8C-005', '8C', 1, 'Female', 0, NULL),
(186, '8C-006', '8C', 1, 'Female', 0, NULL),
(187, '8C-007', '8C', 1, 'Female', 0, NULL),
(188, '8C-008', '8C', 1, 'Female', 0, NULL),
(189, '8C-009', '8C', 1, 'Female', 0, NULL),
(190, '8C-010', '8C', 1, 'Female', 0, NULL),
(191, '8C-011', '8C', 1, 'Female', 0, NULL),
(192, '8C-012', '8C', 1, 'Female', 0, NULL),
(193, '8C-013', '8C', 1, 'Female', 0, NULL),
(194, '8C-014', '8C', 1, 'Female', 0, NULL),
(195, '8C-015', '8C', 1, 'Female', 0, NULL),
(196, '8C-016', '8C', 1, 'Female', 0, NULL),
(197, '8C-017', '8C', 1, 'Female', 0, NULL),
(198, '8C-018', '8C', 1, 'Female', 0, NULL),
(199, '8C-019', '8C', 1, 'Female', 0, NULL),
(200, '8C-020', '8C', 1, 'Female', 0, NULL),
(201, '8C-021', '8C', 1, 'Female', 0, NULL),
(202, '8C-022', '8C', 1, 'Female', 0, NULL),
(203, '8C-023', '8C', 1, 'Female', 0, NULL),
(204, '8C-024', '8C', 1, 'Female', 0, NULL),
(205, '8C-025', '8C', 1, 'Female', 0, NULL),
(206, '8C-026', '8C', 1, 'Female', 0, NULL),
(207, '8C-027', '8C', 1, 'Female', 0, NULL),
(208, '8C-028', '8C', 2, 'Female', 0, NULL),
(209, '8C-029', '8C', 2, 'Female', 0, NULL),
(210, '8C-030', '8C', 2, 'Female', 0, NULL),
(211, '8C-031', '8C', 2, 'Female', 0, NULL),
(212, '8C-032', '8C', 2, 'Female', 0, NULL),
(213, '8C-033', '8C', 2, 'Female', 0, NULL),
(214, '8C-034', '8C', 2, 'Female', 0, NULL),
(215, '8C-035', '8C', 2, 'Female', 0, NULL),
(216, '8C-036', '8C', 2, 'Female', 0, NULL),
(217, '8C-037', '8C', 2, 'Female', 0, NULL),
(218, '8C-038', '8C', 2, 'Female', 0, NULL),
(219, '8C-039', '8C', 2, 'Female', 0, NULL),
(220, '8C-040', '8C', 2, 'Female', 0, NULL),
(221, '8C-041', '8C', 2, 'Female', 0, NULL),
(222, '8C-042', '8C', 2, 'Female', 0, NULL),
(223, '8C-043', '8C', 2, 'Female', 0, NULL),
(224, '8C-044', '8C', 2, 'Female', 0, NULL),
(225, '8C-045', '8C', 2, 'Female', 0, NULL),
(226, '8C-046', '8C', 2, 'Female', 0, NULL),
(227, '8C-047', '8C', 2, 'Female', 0, NULL),
(228, '8C-048', '8C', 2, 'Female', 0, NULL),
(229, '8C-049', '8C', 2, 'Female', 0, NULL),
(230, '8C-050', '8C', 2, 'Female', 0, NULL),
(231, '8C-051', '8C', 2, 'Female', 0, NULL),
(232, '8C-052', '8C', 2, 'Female', 0, NULL),
(233, '8C-053', '8C', 2, 'Female', 0, NULL),
(234, '8C-054', '8C', 2, 'Female', 0, NULL),
(235, '8C-055', '8C', 3, 'Female', 0, NULL),
(236, '8C-056', '8C', 3, 'Female', 0, NULL),
(237, '8C-057', '8C', 3, 'Female', 0, NULL),
(238, '8C-058', '8C', 3, 'Female', 0, NULL),
(239, '8C-059', '8C', 3, 'Female', 0, NULL),
(240, '8C-060', '8C', 3, 'Female', 0, NULL),
(241, '8C-061', '8C', 3, 'Female', 0, NULL),
(242, '8C-062', '8C', 3, 'Female', 0, NULL),
(243, '8C-063', '8C', 3, 'Female', 0, NULL),
(244, '8C-064', '8C', 3, 'Female', 0, NULL),
(245, '8C-065', '8C', 3, 'Female', 0, NULL),
(246, '8C-066', '8C', 3, 'Female', 0, NULL),
(247, '8C-067', '8C', 3, 'Female', 0, NULL),
(248, '8C-068', '8C', 3, 'Female', 0, NULL),
(249, '8C-069', '8C', 3, 'Female', 0, NULL),
(250, '8C-070', '8C', 3, 'Female', 0, NULL),
(251, '8C-071', '8C', 3, 'Female', 0, NULL),
(252, '8C-072', '8C', 3, 'Female', 0, NULL),
(253, '8C-073', '8C', 3, 'Female', 0, NULL),
(254, '8C-074', '8C', 3, 'Female', 0, NULL),
(255, '8C-075', '8C', 3, 'Female', 0, NULL),
(256, '8C-076', '8C', 3, 'Female', 0, NULL),
(257, '8C-077', '8C', 3, 'Female', 0, NULL),
(258, '8C-078', '8C', 3, 'Female', 0, NULL),
(259, '8C-079', '8C', 3, 'Female', 0, NULL),
(260, '8C-080', '8C', 3, 'Female', 0, NULL),
(261, '8C-081', '8C', 3, 'Female', 0, NULL),
(262, '8C-082', '8C', 4, 'Female', 0, NULL),
(263, '8C-083', '8C', 4, 'Female', 0, NULL),
(264, '8C-084', '8C', 4, 'Female', 0, NULL),
(265, '8C-085', '8C', 4, 'Female', 0, NULL),
(266, '8C-086', '8C', 4, 'Female', 0, NULL),
(267, '8C-087', '8C', 4, 'Female', 0, NULL),
(268, '8C-088', '8C', 4, 'Female', 0, NULL),
(269, '8C-089', '8C', 4, 'Female', 0, NULL),
(270, '8C-090', '8C', 4, 'Female', 0, NULL),
(271, '8C-091', '8C', 4, 'Female', 0, NULL),
(272, '8C-092', '8C', 4, 'Female', 0, NULL),
(273, '8C-093', '8C', 4, 'Female', 0, NULL),
(274, '8C-094', '8C', 4, 'Female', 0, NULL),
(275, '8C-095', '8C', 4, 'Female', 0, NULL),
(276, '8C-096', '8C', 4, 'Female', 0, NULL),
(277, '8C-097', '8C', 4, 'Female', 0, NULL),
(278, '8C-098', '8C', 4, 'Female', 0, NULL),
(279, '8C-099', '8C', 4, 'Female', 0, NULL),
(280, '8C-100', '8C', 4, 'Female', 0, NULL),
(281, '8C-101', '8C', 4, 'Female', 0, NULL),
(282, '8C-102', '8C', 4, 'Female', 0, NULL),
(283, '8C-103', '8C', 4, 'Female', 0, NULL),
(284, '8C-104', '8C', 4, 'Female', 0, NULL),
(285, '8C-105', '8C', 4, 'Female', 0, NULL),
(286, '8C-106', '8C', 4, 'Female', 0, NULL),
(287, '8C-107', '8C', 4, 'Female', 0, NULL),
(288, '8C-108', '8C', 4, 'Female', 0, NULL),
(289, '8D-001', '8D', 1, 'Female', 0, NULL),
(290, '8D-002', '8D', 1, 'Female', 0, NULL),
(291, '8D-003', '8D', 1, 'Female', 0, NULL),
(292, '8D-004', '8D', 1, 'Female', 0, NULL),
(293, '8D-005', '8D', 1, 'Female', 0, NULL),
(294, '8D-006', '8D', 1, 'Female', 0, NULL),
(295, '8D-007', '8D', 1, 'Female', 0, NULL),
(296, '8D-008', '8D', 1, 'Female', 0, NULL),
(297, '8D-009', '8D', 1, 'Female', 0, NULL),
(298, '8D-010', '8D', 1, 'Female', 0, NULL),
(299, '8D-011', '8D', 1, 'Female', 0, NULL),
(300, '8D-012', '8D', 1, 'Female', 0, NULL),
(301, '8D-013', '8D', 1, 'Female', 0, NULL),
(302, '8D-014', '8D', 1, 'Female', 0, NULL),
(303, '8D-015', '8D', 1, 'Female', 0, NULL),
(304, '8D-016', '8D', 1, 'Female', 0, NULL),
(305, '8D-017', '8D', 1, 'Female', 0, NULL),
(306, '8D-018', '8D', 1, 'Female', 0, NULL),
(307, '8D-019', '8D', 1, 'Female', 0, NULL),
(308, '8D-020', '8D', 1, 'Female', 0, NULL),
(309, '8D-021', '8D', 1, 'Female', 0, NULL),
(310, '8D-022', '8D', 1, 'Female', 0, NULL),
(311, '8D-023', '8D', 1, 'Female', 0, NULL),
(312, '8D-024', '8D', 1, 'Female', 0, NULL),
(313, '8D-025', '8D', 1, 'Female', 0, NULL),
(314, '8D-026', '8D', 2, 'Female', 0, NULL),
(315, '8D-027', '8D', 2, 'Female', 0, NULL),
(316, '8D-028', '8D', 2, 'Female', 0, NULL),
(317, '8D-029', '8D', 2, 'Female', 0, NULL),
(318, '8D-030', '8D', 2, 'Female', 0, NULL),
(319, '8D-031', '8D', 2, 'Female', 0, NULL),
(320, '8D-032', '8D', 2, 'Female', 0, NULL),
(321, '8D-033', '8D', 2, 'Female', 0, NULL),
(322, '8D-034', '8D', 2, 'Female', 0, NULL),
(323, '8D-035', '8D', 2, 'Female', 0, NULL),
(324, '8D-036', '8D', 2, 'Female', 0, NULL),
(325, '8D-037', '8D', 2, 'Female', 0, NULL),
(326, '8D-038', '8D', 2, 'Female', 0, NULL),
(327, '8D-039', '8D', 2, 'Female', 0, NULL),
(328, '8D-040', '8D', 2, 'Female', 0, NULL),
(329, '8D-041', '8D', 2, 'Female', 0, NULL),
(330, '8D-042', '8D', 2, 'Female', 0, NULL),
(331, '8D-043', '8D', 2, 'Female', 0, NULL),
(332, '8D-044', '8D', 2, 'Female', 0, NULL),
(333, '8D-045', '8D', 2, 'Female', 0, NULL),
(334, '8D-046', '8D', 2, 'Female', 0, NULL),
(335, '8D-047', '8D', 2, 'Female', 0, NULL),
(336, '8D-048', '8D', 2, 'Female', 0, NULL),
(337, '8D-049', '8D', 2, 'Female', 0, NULL),
(338, '8D-050', '8D', 2, 'Female', 0, NULL),
(339, '8D-051', '8D', 3, 'Female', 0, NULL),
(340, '8D-052', '8D', 3, 'Female', 0, NULL),
(341, '8D-053', '8D', 3, 'Female', 0, NULL),
(342, '8D-054', '8D', 3, 'Female', 0, NULL),
(343, '8D-055', '8D', 3, 'Female', 0, NULL),
(344, '8D-056', '8D', 3, 'Female', 0, NULL),
(345, '8D-057', '8D', 3, 'Female', 0, NULL),
(346, '8D-058', '8D', 3, 'Female', 0, NULL),
(347, '8D-059', '8D', 3, 'Female', 0, NULL),
(348, '8D-060', '8D', 3, 'Female', 0, NULL),
(349, '8D-061', '8D', 3, 'Female', 0, NULL),
(350, '8D-062', '8D', 3, 'Female', 0, NULL),
(351, '8D-063', '8D', 3, 'Female', 0, NULL),
(352, '8D-064', '8D', 3, 'Female', 0, NULL),
(353, '8D-065', '8D', 3, 'Female', 0, NULL),
(354, '8D-066', '8D', 3, 'Female', 0, NULL),
(355, '8D-067', '8D', 3, 'Female', 0, NULL),
(356, '8D-068', '8D', 3, 'Female', 0, NULL),
(357, '8D-069', '8D', 3, 'Female', 0, NULL),
(358, '8D-070', '8D', 3, 'Female', 0, NULL),
(359, '8D-071', '8D', 3, 'Female', 0, NULL),
(360, '8D-072', '8D', 3, 'Female', 0, NULL),
(361, '8D-073', '8D', 3, 'Female', 0, NULL),
(362, '8D-074', '8D', 3, 'Female', 0, NULL),
(363, '8D-075', '8D', 3, 'Female', 0, NULL),
(364, '8D-076', '8D', 4, 'Female', 0, NULL),
(365, '8D-077', '8D', 4, 'Female', 0, NULL),
(366, '8D-078', '8D', 4, 'Female', 0, NULL),
(367, '8D-079', '8D', 4, 'Female', 0, NULL),
(368, '8D-080', '8D', 4, 'Female', 0, NULL),
(369, '8D-081', '8D', 4, 'Female', 0, NULL),
(370, '8D-082', '8D', 4, 'Female', 0, NULL),
(371, '8D-083', '8D', 4, 'Female', 0, NULL),
(372, '8D-084', '8D', 4, 'Female', 0, NULL),
(373, '8D-085', '8D', 4, 'Female', 0, NULL),
(374, '8D-086', '8D', 4, 'Female', 0, NULL),
(375, '8D-087', '8D', 4, 'Female', 0, NULL),
(376, '8D-088', '8D', 4, 'Female', 0, NULL),
(377, '8D-089', '8D', 4, 'Female', 0, NULL),
(378, '8D-090', '8D', 4, 'Female', 0, NULL),
(379, '8D-091', '8D', 4, 'Female', 0, NULL),
(380, '8D-092', '8D', 4, 'Female', 0, NULL),
(381, '8D-093', '8D', 4, 'Female', 0, NULL),
(382, '8D-094', '8D', 4, 'Female', 0, NULL),
(383, '8D-095', '8D', 4, 'Female', 0, NULL),
(384, '8D-096', '8D', 4, 'Female', 0, NULL),
(385, '8D-097', '8D', 4, 'Female', 0, NULL),
(386, '8D-098', '8D', 4, 'Female', 0, NULL),
(387, '8D-099', '8D', 4, 'Female', 0, NULL),
(388, '8D-100', '8D', 4, 'Female', 0, NULL),
(389, 'NewBlock-0', 'NewBlock', 1, 'Both', 1, 3),
(390, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(391, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(392, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(393, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(394, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(395, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(396, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(397, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(398, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(399, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(400, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(401, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(402, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(403, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(404, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(405, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(406, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(407, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(408, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(409, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(410, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(411, 'NewBlock-0', 'NewBlock', 1, 'Both', 0, NULL),
(412, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(413, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(414, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(415, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(416, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(417, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(418, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(419, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(420, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(421, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(422, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(423, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(424, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(425, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(426, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(427, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(428, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(429, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(430, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(431, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(432, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(433, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(434, 'NewBlock-0', 'NewBlock', 2, 'Both', 0, NULL),
(435, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(436, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(437, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(438, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(439, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(440, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(441, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(442, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(443, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(444, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(445, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(446, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(447, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(448, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(449, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(450, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(451, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(452, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(453, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(454, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(455, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(456, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(457, 'NewBlock-0', 'NewBlock', 3, 'Both', 0, NULL),
(458, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(459, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(460, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(461, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(462, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(463, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(464, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(465, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(466, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(467, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(468, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(469, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(470, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(471, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(472, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(473, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(474, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(475, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(476, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(477, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(478, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(479, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(480, 'NewBlock-0', 'NewBlock', 4, 'Both', 0, NULL),
(481, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(482, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(483, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(484, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(485, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(486, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(487, 'NewBlock-0', 'NewBlock', 5, 'Both', 0, NULL),
(488, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(489, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(490, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(491, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(492, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(493, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(494, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(495, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(496, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(497, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(498, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(499, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(500, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(501, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(502, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL),
(503, 'NewBlock-1', 'NewBlock', 5, 'Both', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg_no` varchar(14) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `reg_no`, `gender`, `password`, `is_approved`) VALUES
(1, 'Abel Julius', '22100523050044', 'Male', '$2y$10$3FhDA8L6iIRq8P6skBS4lu.swOky5KO4Fjubo0PptiIH/T6Vi5V1O', 1),
(2, 'Mary Ollomy', '22100523050090', 'Female', '$2y$10$0q/AEKbtc6R13bsMmvSd9uVmRik5/UryF8d7./zUQfaPRx9zYizwe', 1),
(3, 'Baraka Pascal', '22100523050035', 'Male', '$2y$10$0PNF7qfTNFZHi4tTbEfXAe70/CAeh8hKBoMWJYM1jrgNZCxC9TlSq', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `idx_block` (`block`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`),
  ADD KEY `idx_student_reg_no` (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
