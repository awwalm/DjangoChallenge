switches_ping.sql
Today
6:05 PM
A
You uploaded an item
SQL
switches_ping.sql
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `switches`
--

-- --------------------------------------------------------

--
-- Table structure for table `switches_switch3`
--

CREATE TABLE `switches_switch3` (
  `id` int(11) NOT NULL,
  `ping_status` smallint(6) NOT NULL,
  `unix_timestamp` varchar(500) NOT NULL,
  `alert_date_time` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `switches_switch3`
--

INSERT INTO `switches_switch3` (`id`, `ping_status`, `unix_timestamp`, `alert_date_time`) VALUES
(1, 0, '1574899200', '2019-11-28 08:00:00'),
(2, 1, '1574899320', '2019-11-28 08:02:00'),
(3, 1, '1574899440', '2019-11-28 08:04:00'),
(4, 1, '1574899560', '2019-11-28 08:06:00'),
(5, 0, '1574899680', '2019-11-28 08:08:00'),
(6, 0, '1574899800', '2019-11-28 08:10:00'),
(7, 1, '1574899920', '2019-11-28 08:12:00'),
(8, 1, '1574900040', '2019-11-28 08:14:00'),
(9, 0, '1574900160', '2019-11-28 08:16:00'),
(10, 1, '1574900280', '2019-11-28 08:18:00'),
(11, 0, '1574900400', '2019-11-28 08:20:00'),
(12, 1, '1574900520', '2019-11-28 08:22:00'),
(13, 1, '1574900640', '2019-11-28 08:24:00'),
(14, 1, '1574900760', '2019-11-28 08:26:00'),
(15, 1, '1574900880', '2019-11-28 08:28:00'),
(16, 1, '1574901000', '2019-11-28 08:30:00'),
(17, 1, '1574901120', '2019-11-28 08:32:00'),
(18, 1, '1574901240', '2019-11-28 08:34:00'),
(19, 1, '1574901360', '2019-11-28 08:36:00'),
(20, 1, '1574901480', '2019-11-28 08:38:00'),
(21, 1, '1574901600', '2019-11-28 08:40:00'),
(22, 1, '1574901720', '2019-11-28 08:42:00'),
(23, 1, '1574901840', '2019-11-28 08:44:00'),
(24, 1, '1574901960', '2019-11-28 08:46:00'),
(25, 1, '1574902080', '2019-11-28 08:48:00'),
(26, 1, '1574902200', '2019-11-28 08:50:00'),
(27, 1, '1574902320', '2019-11-28 08:52:00'),
(28, 1, '1574902440', '2019-11-28 08:54:00'),
(29, 1, '1574902560', '2019-11-28 08:56:00'),
(30, 1, '1574902680', '2019-11-28 08:58:00'),
(31, 1, '1574902800', '2019-11-28 09:00:00'),
(32, 1, '1574902920', '2019-11-28 09:02:00'),
(33, 1, '1574903040', '2019-11-28 09:04:00'),
(34, 1, '1574903160', '2019-11-28 09:06:00'),
(35, 1, '1574903280', '2019-11-28 09:08:00'),
(36, 1, '1574903400', '2019-11-28 09:10:00'),
(37, 1, '1574903520', '2019-11-28 09:12:00'),
(38, 1, '1574903640', '2019-11-28 09:14:00'),
(39, 1, '1574903760', '2019-11-28 09:16:00'),
(40, 0, '1574903880', '2019-11-28 09:18:00'),
(41, 1, '1574904000', '2019-11-28 09:20:00'),
(42, 1, '1574904120', '2019-11-28 09:22:00'),
(43, 1, '1574904240', '2019-11-28 09:24:00'),
(44, 1, '1574904360', '2019-11-28 09:26:00'),
(45, 0, '1574904480', '2019-11-28 09:28:00'),
(46, 0, '1574904600', '2019-11-28 09:30:00'),
(47, 0, '1574904720', '2019-11-28 09:32:00'),
(48, 1, '1574904840', '2019-11-28 09:34:00'),
(49, 1, '1574904960', '2019-11-28 09:36:00'),
(50, 1, '1574905080', '2019-11-28 09:38:00'),
(51, 1, '1574905200', '2019-11-28 09:40:00'),
(52, 1, '1574905320', '2019-11-28 09:42:00'),
(53, 1, '1574905440', '2019-11-28 09:44:00'),
(54, 1, '1574905560', '2019-11-28 09:46:00'),
(55, 1, '1574905680', '2019-11-28 09:48:00'),
(56, 1, '1574905800', '2019-11-28 09:50:00'),
(57, 1, '1574905920', '2019-11-28 09:52:00'),
(58, 1, '1574906040', '2019-11-28 09:54:00'),
(59, 1, '1574906160', '2019-11-28 09:56:00'),
(60, 1, '1574906280', '2019-11-28 09:58:00'),
(61, 1, '1574906400', '2019-11-28 10:00:00'),
(62, 1, '1574906520', '2019-11-28 10:02:00'),
(63, 1, '1574906640', '2019-11-28 10:04:00'),
(64, 1, '1574906760', '2019-11-28 10:06:00'),
(65, 1, '1574906880', '2019-11-28 10:08:00'),
(66, 1, '1574907000', '2019-11-28 10:10:00'),
(67, 1, '1574907120', '2019-11-28 10:12:00'),
(68, 1, '1574907240', '2019-11-28 10:14:00'),
(69, 1, '1574907360', '2019-11-28 10:16:00'),
(70, 1, '1574907480', '2019-11-28 10:18:00'),
(71, 1, '1574907600', '2019-11-28 10:20:00'),
(72, 1, '1574907720', '2019-11-28 10:22:00'),
(73, 1, '1574907840', '2019-11-28 10:24:00'),
(74, 1, '1574907960', '2019-11-28 10:26:00'),
(75, 1, '1574908080', '2019-11-28 10:28:00'),
(76, 1, '1574908200', '2019-11-28 10:30:00'),
(77, 1, '1574908320', '2019-11-28 10:32:00'),
(78, 1, '1574908440', '2019-11-28 10:34:00'),
(79, 1, '1574908560', '2019-11-28 10:36:00'),
(80, 1, '1574908680', '2019-11-28 10:38:00'),
(81, 1, '1574908800', '2019-11-28 10:40:00'),
(82, 1, '1574908920', '2019-11-28 10:42:00'),
(83, 1, '1574909040', '2019-11-28 10:44:00'),
(84, 1, '1574909160', '2019-11-28 10:46:00'),
(85, 1, '1574909280', '2019-11-28 10:48:00'),
(86, 1, '1574909400', '2019-11-28 10:50:00'),
(87, 1, '1574909520', '2019-11-28 10:52:00'),
(88, 1, '1574909640', '2019-11-28 10:54:00'),
(89, 1, '1574909760', '2019-11-28 10:56:00'),
(90, 1, '1574909880', '2019-11-28 10:58:00'),
(91, 1, '1574910000', '2019-11-28 11:00:00'),
(92, 1, '1574910120', '2019-11-28 11:02:00'),
(93, 1, '1574910240', '2019-11-28 11:04:00'),
(94, 1, '1574910360', '2019-11-28 11:06:00'),
(95, 1, '1574910480', '2019-11-28 11:08:00'),
(96, 1, '1574910600', '2019-11-28 11:10:00'),
(97, 1, '1574910720', '2019-11-28 11:12:00'),
(98, 1, '1574910840', '2019-11-28 11:14:00'),
(99, 0, '1574910960', '2019-11-28 11:16:00'),
(100, 1, '1574911080', '2019-11-28 11:18:00'),
(101, 1, '1574911200', '2019-11-28 11:20:00'),
(102, 1, '1574911320', '2019-11-28 11:22:00'),
(103, 1, '1574911440', '2019-11-28 11:24:00'),
(104, 1, '1574911560', '2019-11-28 11:26:00'),
(105, 1, '1574911680', '2019-11-28 11:28:00'),
(106, 1, '1574911800', '2019-11-28 11:30:00'),
(107, 0, '1574911920', '2019-11-28 11:32:00'),
(108, 1, '1574912040', '2019-11-28 11:34:00'),
(109, 1, '1574912160', '2019-11-28 11:36:00'),
(110, 1, '1574912280', '2019-11-28 11:38:00'),
(111, 1, '1574912400', '2019-11-28 11:40:00'),
(112, 1, '1574912520', '2019-11-28 11:42:00'),
(113, 1, '1574912640', '2019-11-28 11:44:00'),
(114, 1, '1574912760', '2019-11-28 11:46:00'),
(115, 1, '1574912880', '2019-11-28 11:48:00'),
(116, 1, '1574913000', '2019-11-28 11:50:00'),
(117, 1, '1574913120', '2019-11-28 11:52:00'),
(118, 1, '1574913240', '2019-11-28 11:54:00'),
(119, 1, '1574913360', '2019-11-28 11:56:00'),
(120, 1, '1574913480', '2019-11-28 11:58:00'),
(121, 1, '1574913600', '2019-11-28 12:00:00'),
(122, 1, '1574913720', '2019-11-28 12:02:00'),
(123, 1, '1574913840', '2019-11-28 12:04:00'),
(124, 1, '1574913960', '2019-11-28 12:06:00'),
(125, 1, '1574914080', '2019-11-28 12:08:00'),
(126, 1, '1574914200', '2019-11-28 12:10:00'),
(127, 1, '1574914320', '2019-11-28 12:12:00'),
(128, 1, '1574914440', '2019-11-28 12:14:00'),
(129, 1, '1574914560', '2019-11-28 12:16:00'),
(130, 1, '1574914680', '2019-11-28 12:18:00'),
(131, 1, '1574914800', '2019-11-28 12:20:00'),
(132, 1, '1574914920', '2019-11-28 12:22:00'),
(133, 1, '1574915040', '2019-11-28 12:24:00'),
(134, 1, '1574915160', '2019-11-28 12:26:00'),
(135, 1, '1574915280', '2019-11-28 12:28:00'),
(136, 1, '1574915400', '2019-11-28 12:30:00'),
(137, 1, '1574915520', '2019-11-28 12:32:00'),
(138, 1, '1574915640', '2019-11-28 12:34:00'),
(139, 0, '1574915760', '2019-11-28 12:36:00'),
(140, 1, '1574915880', '2019-11-28 12:38:00'),
(141, 1, '1574916000', '2019-11-28 12:40:00'),
(142, 1, '1574916120', '2019-11-28 12:42:00'),
(143, 1, '1574916240', '2019-11-28 12:44:00'),
(144, 1, '1574916360', '2019-11-28 12:46:00'),
(145, 1, '1574916480', '2019-11-28 12:48:00'),
(146, 1, '1574916600', '2019-11-28 12:50:00'),
(147, 1, '1574916720', '2019-11-28 12:52:00'),
(148, 1, '1574916840', '2019-11-28 12:54:00'),
(149, 1, '1574916960', '2019-11-28 12:56:00'),
(150, 1, '1574917080', '2019-11-28 12:58:00'),
(151, 1, '1574917200', '2019-11-28 13:00:00'),
(152, 1, '1574917320', '2019-11-28 13:02:00'),
(153, 1, '1574917440', '2019-11-28 13:04:00'),
(154, 1, '1574917560', '2019-11-28 13:06:00'),
(155, 1, '1574917680', '2019-11-28 13:08:00'),
(156, 1, '1574917800', '2019-11-28 13:10:00'),
(157, 1, '1574917920', '2019-11-28 13:12:00'),
(158, 1, '1574918040', '2019-11-28 13:14:00'),
(159, 1, '1574918160', '2019-11-28 13:16:00'),
(160, 1, '1574918280', '2019-11-28 13:18:00'),
(161, 1, '1574918400', '2019-11-28 13:20:00'),
(162, 1, '1574918520', '2019-11-28 13:22:00'),
(163, 0, '1574918640', '2019-11-28 13:24:00'),
(164, 1, '1574918760', '2019-11-28 13:26:00'),
(165, 1, '1574918880', '2019-11-28 13:28:00'),
(166, 1, '1574919000', '2019-11-28 13:30:00'),
(167, 1, '1574919120', '2019-11-28 13:32:00'),
(168, 1, '1574919240', '2019-11-28 13:34:00'),
(169, 1, '1574919360', '2019-11-28 13:36:00'),
(170, 1, '1574919480', '2019-11-28 13:38:00'),
(171, 1, '1574919600', '2019-11-28 13:40:00'),
(172, 1, '1574919720', '2019-11-28 13:42:00'),
(173, 1, '1574919840', '2019-11-28 13:44:00'),
(174, 1, '1574919960', '2019-11-28 13:46:00'),
(175, 1, '1574920080', '2019-11-28 13:48:00'),
(176, 1, '1574920200', '2019-11-28 13:50:00'),
(177, 1, '1574920320', '2019-11-28 13:52:00'),
(178, 1, '1574920440', '2019-11-28 13:54:00'),
(179, 1, '1574920560', '2019-11-28 13:56:00'),
(180, 1, '1574920680', '2019-11-28 13:58:00'),
(181, 1, '1574920800', '2019-11-28 14:00:00'),
(182, 1, '1574920920', '2019-11-28 14:02:00'),
(183, 1, '1574921040', '2019-11-28 14:04:00'),
(184, 1, '1574921160', '2019-11-28 14:06:00'),
(185, 1, '1574921280', '2019-11-28 14:08:00'),
(186, 1, '1574921400', '2019-11-28 14:10:00'),
(187, 1, '1574921520', '2019-11-28 14:12:00'),
(188, 1, '1574921640', '2019-11-28 14:14:00'),
(189, 1, '1574921760', '2019-11-28 14:16:00'),
(190, 1, '1574921880', '2019-11-28 14:18:00'),
(191, 1, '1574922000', '2019-11-28 14:20:00'),
(192, 1, '1574922120', '2019-11-28 14:22:00'),
(193, 1, '1574922240', '2019-11-28 14:24:00'),
(194, 1, '1574922360', '2019-11-28 14:26:00'),
(195, 1, '1574922480', '2019-11-28 14:28:00'),
(196, 1, '1574922600', '2019-11-28 14:30:00'),
(197, 1, '1574922720', '2019-11-28 14:32:00'),
(198, 1, '1574922840', '2019-11-28 14:34:00'),
(199, 0, '1574922960', '2019-11-28 14:36:00'),
(200, 1, '1574923080', '2019-11-28 14:38:00'),
(201, 1, '1574923200', '2019-11-28 14:40:00'),
(202, 1, '1574923320', '2019-11-28 14:42:00'),
(203, 1, '1574923440', '2019-11-28 14:44:00'),
(204, 1, '1574923560', '2019-11-28 14:46:00'),
(205, 1, '1574923680', '2019-11-28 14:48:00'),
(206, 1, '1574923800', '2019-11-28 14:50:00'),
(207, 1, '1574923920', '2019-11-28 14:52:00'),
(208, 1, '1574924040', '2019-11-28 14:54:00'),
(209, 1, '1574924160', '2019-11-28 14:56:00'),
(210, 1, '1574924280', '2019-11-28 14:58:00'),
(211, 1, '1574924400', '2019-11-28 15:00:00'),
(212, 1, '1574924520', '2019-11-28 15:02:00'),
(213, 1, '1574924640', '2019-11-28 15:04:00'),
(214, 1, '1574924760', '2019-11-28 15:06:00'),
(215, 1, '1574924880', '2019-11-28 15:08:00'),
(216, 1, '1574925000', '2019-11-28 15:10:00'),
(217, 1, '1574925120', '2019-11-28 15:12:00'),
(218, 1, '1574925240', '2019-11-28 15:14:00'),
(219, 1, '1574925360', '2019-11-28 15:16:00'),
(220, 1, '1574925480', '2019-11-28 15:18:00'),
(221, 1, '1574925600', '2019-11-28 15:20:00'),
(222, 1, '1574925720', '2019-11-28 15:22:00'),
(223, 1, '1574925840', '2019-11-28 15:24:00'),
(224, 1, '1574925960', '2019-11-28 15:26:00'),
(225, 1, '1574926080', '2019-11-28 15:28:00'),
(226, 1, '1574926200', '2019-11-28 15:30:00'),
(227, 1, '1574926320', '2019-11-28 15:32:00'),
(228, 1, '1574926440', '2019-11-28 15:34:00'),
(229, 1, '1574926560', '2019-11-28 15:36:00'),
(230, 1, '1574926680', '2019-11-28 15:38:00'),
(231, 1, '1574926800', '2019-11-28 15:40:00'),
(232, 1, '1574926920', '2019-11-28 15:42:00'),
(233, 1, '1574927040', '2019-11-28 15:44:00'),
(234, 1, '1574927160', '2019-11-28 15:46:00'),
(235, 1, '1574927280', '2019-11-28 15:48:00'),
(236, 1, '1574927400', '2019-11-28 15:50:00'),
(237, 1, '1574927520', '2019-11-28 15:52:00'),
(238, 1, '1574927640', '2019-11-28 15:54:00'),
(239, 1, '1574927760', '2019-11-28 15:56:00'),
(240, 1, '1574927880', '2019-11-28 15:58:00'),
(241, 1, '1574928000', '2019-11-28 16:00:00'),
(242, 1, '1574928120', '2019-11-28 16:02:00'),
(243, 1, '1574928240', '2019-11-28 16:04:00'),
(244, 1, '1574928360', '2019-11-28 16:06:00'),
(245, 1, '1574928480', '2019-11-28 16:08:00'),
(246, 0, '1574928600', '2019-11-28 16:10:00'),
(247, 0, '1574928720', '2019-11-28 16:12:00'),
(248, 1, '1574928840', '2019-11-28 16:14:00'),
(249, 1, '1574928960', '2019-11-28 16:16:00'),
(250, 1, '1574929080', '2019-11-28 16:18:00'),
(251, 1, '1574929200', '2019-11-28 16:20:00'),
(252, 1, '1574929320', '2019-11-28 16:22:00'),
(253, 1, '1574929440', '2019-11-28 16:24:00'),
(254, 1, '1574929560', '2019-11-28 16:26:00'),
(255, 1, '1574929680', '2019-11-28 16:28:00'),
(256, 1, '1574929800', '2019-11-28 16:30:00'),
(257, 1, '1574929920', '2019-11-28 16:32:00'),
(258, 1, '1574930040', '2019-11-28 16:34:00'),
(259, 1, '1574930160', '2019-11-28 16:36:00'),
(260, 1, '1574930280', '2019-11-28 16:38:00'),
(261, 1, '1574930400', '2019-11-28 16:40:00'),
(262, 1, '1574930520', '2019-11-28 16:42:00'),
(263, 1, '1574930640', '2019-11-28 16:44:00'),
(264, 1, '1574930760', '2019-11-28 16:46:00'),
(265, 1, '1574930880', '2019-11-28 16:48:00'),
(266, 1, '1574931000', '2019-11-28 16:50:00'),
(267, 1, '1574931120', '2019-11-28 16:52:00'),
(268, 1, '1574931240', '2019-11-28 16:54:00'),
(269, 1, '1574931360', '2019-11-28 16:56:00'),
(270, 1, '1574931480', '2019-11-28 16:58:00'),
(271, 0, '1574931600', '2019-11-28 17:00:00'),
(272, 1, '1574931720', '2019-11-28 17:02:00'),
(273, 1, '1574931840', '2019-11-28 17:04:00'),
(274, 1, '1574931960', '2019-11-28 17:06:00'),
(275, 1, '1574932080', '2019-11-28 17:08:00'),
(276, 1, '1574932200', '2019-11-28 17:10:00'),
(277, 1, '1574932320', '2019-11-28 17:12:00'),
(278, 1, '1574932440', '2019-11-28 17:14:00'),
(279, 1, '1574932560', '2019-11-28 17:16:00'),
(280, 0, '1574932680', '2019-11-28 17:18:00'),
(281, 1, '1574932800', '2019-11-28 17:20:00'),
(282, 1, '1574932920', '2019-11-28 17:22:00'),
(283, 1, '1574933040', '2019-11-28 17:24:00'),
(284, 1, '1574933160', '2019-11-28 17:26:00'),
(285, 1, '1574933280', '2019-11-28 17:28:00'),
(286, 1, '1574933400', '2019-11-28 17:30:00'),
(287, 1, '1574933520', '2019-11-28 17:32:00'),
(288, 1, '1574933640', '2019-11-28 17:34:00'),
(289, 1, '1574933760', '2019-11-28 17:36:00'),
(290, 1, '1574933880', '2019-11-28 17:38:00'),
(291, 1, '1574934000', '2019-11-28 17:40:00'),
(292, 1, '1574934120', '2019-11-28 17:42:00'),
(293, 0, '1574934240', '2019-11-28 17:44:00'),
(294, 1, '1574934360', '2019-11-28 17:46:00'),
(295, 1, '1574934480', '2019-11-28 17:48:00'),
(296, 1, '1574934600', '2019-11-28 17:50:00'),
(297, 1, '1574934720', '2019-11-28 17:52:00'),
(298, 0, '1574934840', '2019-11-28 17:54:00'),
(299, 1, '1574934960', '2019-11-28 17:56:00'),
(300, 1, '1574935080', '2019-11-28 17:58:00'),
(301, 1, '1574935200', '2019-11-28 18:00:00'),
(302, 1, '1574935320', '2019-11-28 18:02:00'),
(303, 1, '1574935440', '2019-11-28 18:04:00'),
(304, 1, '1574935560', '2019-11-28 18:06:00'),
(305, 0, '1574935680', '2019-11-28 18:08:00'),
(306, 1, '1574935800', '2019-11-28 18:10:00'),
(307, 1, '1574935920', '2019-11-28 18:12:00'),
(308, 1, '1574936040', '2019-11-28 18:14:00'),
(309, 1, '1574936160', '2019-11-28 18:16:00'),
(310, 1, '1574936280', '2019-11-28 18:18:00'),
(311, 1, '1574936400', '2019-11-28 18:20:00'),
(312, 1, '1574936520', '2019-11-28 18:22:00'),
(313, 1, '1574936640', '2019-11-28 18:24:00'),
(314, 1, '1574936760', '2019-11-28 18:26:00'),
(315, 1, '1574936880', '2019-11-28 18:28:00'),
(316, 1, '1574937000', '2019-11-28 18:30:00'),
(317, 1, '1574937120', '2019-11-28 18:32:00'),
(318, 1, '1574937240', '2019-11-28 18:34:00'),
(319, 1, '1574937360', '2019-11-28 18:36:00'),
(320, 1, '1574937480', '2019-11-28 18:38:00'),
(321, 1, '1574937600', '2019-11-28 18:40:00'),
(322, 1, '1574937720', '2019-11-28 18:42:00'),
(323, 1, '1574937840', '2019-11-28 18:44:00'),
(324, 1, '1574937960', '2019-11-28 18:46:00'),
(325, 1, '1574938080', '2019-11-28 18:48:00'),
(326, 1, '1574938200', '2019-11-28 18:50:00'),
(327, 1, '1574938320', '2019-11-28 18:52:00'),
(328, 1, '1574938440', '2019-11-28 18:54:00'),
(329, 1, '1574938560', '2019-11-28 18:56:00'),
(330, 1, '1574938680', '2019-11-28 18:58:00'),
(331, 1, '1574938800', '2019-11-28 19:00:00'),
(332, 1, '1574938920', '2019-11-28 19:02:00'),
(333, 1, '1574939040', '2019-11-28 19:04:00'),
(334, 1, '1574939160', '2019-11-28 19:06:00'),
(335, 1, '1574939280', '2019-11-28 19:08:00'),
(336, 1, '1574939400', '2019-11-28 19:10:00'),
(337, 1, '1574939520', '2019-11-28 19:12:00'),
(338, 1, '1574939640', '2019-11-28 19:14:00'),
(339, 1, '1574939760', '2019-11-28 19:16:00'),
(340, 1, '1574939880', '2019-11-28 19:18:00'),
(341, 1, '1574940000', '2019-11-28 19:20:00'),
(342, 1, '1574940120', '2019-11-28 19:22:00'),
(343, 1, '1574940240', '2019-11-28 19:24:00'),
(344, 1, '1574940360', '2019-11-28 19:26:00'),
(345, 1, '1574940480', '2019-11-28 19:28:00'),
(346, 1, '1574940600', '2019-11-28 19:30:00'),
(347, 1, '1574940720', '2019-11-28 19:32:00'),
(348, 1, '1574940840', '2019-11-28 19:34:00'),
(349, 1, '1574940960', '2019-11-28 19:36:00'),
(350, 1, '1574941080', '2019-11-28 19:38:00'),
(351, 1, '1574941200', '2019-11-28 19:40:00'),
(352, 1, '1574941320', '2019-11-28 19:42:00'),
(353, 1, '1574941440', '2019-11-28 19:44:00'),
(354, 1, '1574941560', '2019-11-28 19:46:00'),
(355, 1, '1574941680', '2019-11-28 19:48:00'),
(356, 1, '1574941800', '2019-11-28 19:50:00'),
(357, 1, '1574941920', '2019-11-28 19:52:00'),
(358, 1, '1574942040', '2019-11-28 19:54:00'),
(359, 1, '1574942160', '2019-11-28 19:56:00'),
(360, 1, '1574942280', '2019-11-28 19:58:00'),
(361, 1, '1574942400', '2019-11-28 20:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `switches_switch3`
--
ALTER TABLE `switches_switch3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `switches_switch3`
--
ALTER TABLE `switches_switch3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;