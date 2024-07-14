-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2023 at 10:39 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edwin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `admin_role` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(100) NOT NULL,
  `profile_desc` text NOT NULL,
  `admin_img` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `username`, `password`, `admin_role`, `phone`, `profile_desc`, `admin_img`, `date`) VALUES
(1, 'okeke@gmail.com', 'Kingso1011', '202cb962ac59075b964b07152d234b70', 1, '(234) 816-684-212', 'Administrative personnel for sheelegance web application', 'uploads/img_1658249243626733425.png', '2018-11-05 05:52:54'),
(2, 'vs@gmail.com', 'okeke@gmail.com', 'f39fd07deac252e8b5c1ab682307c0db', 3, '+(234) 816-684-2125', 'kjfkdefke', '../uploads/image_16564652741373549362.jpeg', '2019-01-18 00:04:04'),
(3, 'orji@gmail.com', 'sam orji', '202cb962ac59075b964b07152d234b70', 3, '+(234) 816-684-2125', 'auxiliary admin', '../uploads/image_16564652741373549362.jpeg', '2019-04-05 15:36:04'),
(4, 'ww@gmail.com', 'reww', '202cb962ac59075b964b07152d234b70', 2, '1123546566', 'dwdw', 'uploads/img_1658195723706204943.png', '2022-07-19 01:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `bch_wallet`
--

DROP TABLE IF EXISTS `bch_wallet`;
CREATE TABLE IF NOT EXISTS `bch_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(500) NOT NULL,
  `isChosen` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`wallet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bch_wallet`
--

INSERT INTO `bch_wallet` (`wallet_id`, `wallet`, `isChosen`, `created`) VALUES
(11, 'qzl2awxfyzfre4lqr9d98g5acmyt568gjg9fznerad', 1, '2022-07-19 16:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `btc_wallet`
--

DROP TABLE IF EXISTS `btc_wallet`;
CREATE TABLE IF NOT EXISTS `btc_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(500) NOT NULL,
  `isChosen` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`wallet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `btc_wallet`
--

INSERT INTO `btc_wallet` (`wallet_id`, `wallet`, `isChosen`, `created`) VALUES
(26, '152MhJh8FooGEdFFP8VNX2YLc88LsHQDBK', 1, '2022-12-17 03:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `coin_deposit`
--

DROP TABLE IF EXISTS `coin_deposit`;
CREATE TABLE IF NOT EXISTS `coin_deposit` (
  `coin_deposit_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ref_id` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `plan_type` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `deposit_date` int(11) NOT NULL,
  PRIMARY KEY (`coin_deposit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_deposit`
--

INSERT INTO `coin_deposit` (`coin_deposit_id`, `customer_id`, `ref_id`, `amount`, `plan_type`, `status`, `approve`, `deposit_date`) VALUES
(1, 94, '#1762135413', '2000', 'micro_finance', 'pending', 0, 1656107608),
(2, 94, '#4649409876', '10000', 'micro_finance', 'pending', 0, 1656107631),
(3, 94, '#1602396627', '1000', 'micro_finance', 'pending', 0, 1656107712),
(4, 94, '#4006274103', '15000', 'mini_forex', 'pending', 1, 1656108121),
(5, 94, '#4892671316', '15000', 'mini_forex', 'pending', 1, 1656108253),
(6, 94, '#3116322177', '4000', 'micro_finance', 'pending', 0, 1656109318),
(7, 94, '#5042331485', '500', 'micro_finance', 'pending', 0, 1658251094),
(8, 94, '#4114518733', '2500', 'micro_finance', 'pending', 0, 1658269061),
(9, 137, '#0120621978', '150', 'shared_plan', 'pending', 0, 1671167938),
(10, 137, '#9316938608', '200', 'shared_plan', 'pending', 0, 1671168065);

-- --------------------------------------------------------

--
-- Table structure for table `coin_pay`
--

DROP TABLE IF EXISTS `coin_pay`;
CREATE TABLE IF NOT EXISTS `coin_pay` (
  `coin_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ref_id` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `method` varchar(500) NOT NULL,
  `plan_type` varchar(500) NOT NULL,
  `charge` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `payment_date` int(11) NOT NULL,
  PRIMARY KEY (`coin_pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=217 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coin_pay`
--

INSERT INTO `coin_pay` (`coin_pay_id`, `customer_id`, `ref_id`, `amount`, `method`, `plan_type`, `charge`, `status`, `seen`, `payment_date`) VALUES
(215, 94, '#9532318163', '1567', 'ETH', 'clarke', '8', 'pending', 0, 1688338705),
(213, 94, '#7173875897', '8359.5', 'USDT', 'clarke', '40.5', 'pending', 0, 1688337523),
(214, 94, '#5707621680', '1567', 'ETH', 'clarke', '8', 'pending', 0, 1688337985),
(216, 94, '#6766237238', '4179.5', 'ETH', 'clarke', '20.5', 'pending', 0, 1688338724),
(102, 94, '#0820921106', '250', 'BTC', 'micro_finance', '1.75', 'declined', 1, 1658271731),
(109, 97, '#9638573764', '140', 'BTC', 'micro_finance', '1.2', 'completed', 1, 1658351306),
(104, 94, '#5883930861', '150', 'BTC', 'micro_finance', '1.25', 'pending', 0, 1658288552),
(106, 97, '#2516338759', '200', 'BTC', 'micro_finance', '1.5', 'pending', 0, 1658345105),
(108, 97, '#6427103637', '120', 'BTC', 'micro_finance', '1.1', 'completed', 1, 1658350474),
(110, 101, '#2473470020', '220', 'ETH', 'micro_finance', '1.6', 'pending', 0, 1660095366),
(111, 101, '#2221701590', '200', 'BTC', 'clarke', '1.5', 'pending', 0, 1660098621),
(112, 101, '#4360757954', '10', 'BTC', 'clarke', '0.55', 'pending', 0, 1660098634),
(113, 101, '#1875748523', '32', 'BTC', 'clarke', '0.66', 'pending', 0, 1660098660),
(114, 101, '#4696907260', '5', 'BTC', 'clarke', '0.525', 'pending', 0, 1660098925),
(115, 101, '#4445085243', '7', 'BTC', 'clarke', '0.535', 'pending', 0, 1660099001),
(116, 101, '#8060353449', '250', 'USDT', 'clarke', '1.75', 'completed', 1, 1660352834),
(124, 101, '#7619467228', '109', 'BTC', 'clarke', '1', 'pending', 0, 1664504260),
(125, 101, '#9910338349', '7.165', 'BTC', 'clarke', '0.535', 'pending', 0, 1664504312),
(126, 101, '#7126810911', '218.5', 'USDT', 'clarke', '1.5', 'pending', 0, 1664510435),
(127, 101, '#7882546876', '547', 'ETH', 'clarke', '3', 'pending', 0, 1664511526),
(128, 101, '#0860589477', '218.5', 'BTC', 'clarke', '1.5', 'completed', 1, 1664511674),
(129, 101, '#9000056828', '109', 'BTC', 'clarke', '1', 'completed', 1, 1664512386),
(130, 101, '#2361681982', '156.25', 'ETH', 'clarke', '1.25', 'pending', 0, 1665187875),
(131, 101, '#7327231188', '115.495', 'ETH', 'clarke', '1.055', 'pending', 0, 1665187988),
(132, 101, '#4593966031', '126.99', 'ETH', 'clarke', '1.11', 'pending', 0, 1665188066),
(133, 101, '#7229828725', '90', 'BTC', 'micro_finance', '0.95', 'pending', 0, 1665188287),
(134, 101, '#6545692256', '313', 'USDT', 'clarke', '2', 'pending', 0, 1665188449),
(135, 101, '#7954943541', '115.495', 'BCH', 'clarke', '1.055', 'pending', 0, 1665191839),
(136, 101, '#0717587930', '242.985', 'BCH', 'clarke', '1.665', 'pending', 0, 1665191956),
(137, 101, '#0478453630', '115.495', 'BTC', 'clarke', '1.055', 'pending', 0, 1665193089),
(138, 101, '#3122663319', '231.49', 'BTC', 'clarke', '1.61', 'pending', 0, 1665193132),
(139, 101, '#2918978232', '219.995', 'BCH', 'clarke', '1.555', 'pending', 0, 1665193297),
(140, 101, '#6162293400', '208.5', 'ETH', 'clarke', '1.5', 'pending', 0, 1665193336),
(141, 101, '#7940332011', '231.49', 'BCH', 'clarke', '1.61', 'pending', 0, 1665193402),
(142, 101, '#4988729381', '156.25', 'BTC', 'clarke', '1.25', 'pending', 0, 1665193439),
(143, 101, '#1202561513', '347.485', 'ETH', 'clarke', '2.165', 'pending', 0, 1665193624),
(144, 101, '#7676138405', '219.995', 'USDT', 'clarke', '1.555', 'pending', 0, 1665194084),
(145, 101, '#3459851642', '219.995', 'USDT', 'clarke', '1.555', 'pending', 0, 1665194105),
(146, 101, '#2973372678', '64.29', 'BTC', 'clarke', '0.81', 'pending', 0, 1665194188),
(147, 101, '#3053733845', '20.4', 'ETH', 'clarke', '0.6', 'pending', 0, 1665194288),
(148, 101, '#5429825139', '20.4', 'ETH', 'clarke', '0.6', 'pending', 0, 1665194374),
(149, 101, '#3992798514', '20.4', 'ETH', 'clarke', '0.6', 'pending', 0, 1665194382),
(150, 101, '#7442163531', '20.4', 'ETH', 'clarke', '0.6', 'pending', 0, 1665194493),
(151, 101, '#6191881772', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665194625),
(152, 101, '#3249860551', '10.995', 'ETH', 'clarke', '0.555', 'pending', 0, 1665194733),
(153, 101, '#5915962736', '208.5', 'BCH', 'clarke', '1.5', 'pending', 0, 1665195147),
(154, 101, '#2121035597', '44.435', 'USDT', 'clarke', '0.715', 'pending', 0, 1665195211),
(155, 101, '#4353114251', '33.985', 'BCH', 'clarke', '0.665', 'pending', 0, 1665195262),
(156, 101, '#1547583899', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665195328),
(157, 101, '#5873372251', '208.5', 'ETH', 'clarke', '1.5', 'pending', 0, 1665200099),
(158, 101, '#2452051052', '21.445', 'ETH', 'clarke', '0.605', 'pending', 0, 1665200174),
(159, 101, '#7459466505', '22.49', 'BTC', 'clarke', '0.61', 'pending', 0, 1665200276),
(160, 101, '#8047228141', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665200338),
(161, 101, '#8580036086', '10.995', 'BTC', 'clarke', '0.555', 'pending', 0, 1665200384),
(162, 101, '#1752278719', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665200645),
(163, 101, '#0427816769', '56.975', 'BCH', 'clarke', '0.775', 'pending', 0, 1665200716),
(164, 101, '#7080601393', '56.975', 'BCH', 'clarke', '0.775', 'pending', 0, 1665200729),
(165, 101, '#4434242373', '56.975', 'BCH', 'clarke', '0.775', 'pending', 0, 1665200746),
(166, 101, '#9998056240', '45.48', 'BTC', 'clarke', '0.72', 'pending', 0, 1665200865),
(167, 101, '#8313297429', '45.48', 'BTC', 'clarke', '0.72', 'pending', 0, 1665201170),
(168, 101, '#3060219018', '10.995', 'BCH', 'clarke', '0.555', 'pending', 0, 1665201347),
(169, 101, '#7053460057', '32.94', 'BTC', 'clarke', '0.66', 'pending', 0, 1665201401),
(170, 101, '#6028613235', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665201460),
(171, 101, '#9690017936', '79.965', 'ETH', 'clarke', '0.885', 'pending', 0, 1665201521),
(172, 101, '#5414075312', '45.48', 'ETH', 'clarke', '0.72', 'pending', 0, 1665201554),
(173, 101, '#1141799452', '22', 'ETH', 'micro_finance', '0.61', 'pending', 0, 1665201658),
(174, 101, '#3829560250', '11', 'BCH', 'micro_finance', '0.555', 'pending', 0, 1665201694),
(175, 101, '#0446552926', '33.985', 'ETH', 'clarke', '0.665', 'pending', 0, 1665201865),
(176, 101, '#8782411935', '219.995', 'ETH', 'clarke', '1.555', 'pending', 0, 1665202187),
(177, 101, '#6523667574', '68.47', 'ETH', 'clarke', '0.83', 'pending', 0, 1665202376),
(178, 101, '#0831557332', '68.47', 'ETH', 'clarke', '0.83', 'pending', 0, 1665202414),
(179, 101, '#8586437332', '22.49', 'ETH', 'clarke', '0.61', 'pending', 0, 1665202458),
(180, 101, '#2948037271', '22.49', 'BTC', 'clarke', '0.61', 'pending', 0, 1665202488),
(181, 101, '#8004504037', '69.515', 'ETH', 'clarke', '0.835', 'pending', 0, 1665202920),
(182, 101, '#2283948270', '10.995', 'ETH', 'clarke', '0.555', 'pending', 0, 1665202943),
(183, 101, '#7844061190', '45.48', 'BTC', 'clarke', '0.72', 'pending', 0, 1665203319),
(184, 101, '#3430087321', '10.995', 'ETH', 'clarke', '0.555', 'pending', 0, 1665203338),
(185, 101, '#8005001297', '45.48', 'ETH', 'clarke', '0.72', 'pending', 0, 1665203371),
(186, 101, '#4032965308', '33.985', 'ETH', 'clarke', '0.665', 'pending', 0, 1665203436),
(187, 101, '#9284415933', '208.5', 'BTC', 'clarke', '1.5', 'pending', 0, 1665204513),
(188, 101, '#2070321838', '45.48', 'ETH', 'clarke', '0.72', 'pending', 0, 1665206311),
(189, 101, '#2582335450', '68.47', 'ETH', 'clarke', '0.83', 'pending', 0, 1665206588),
(190, 101, '#6568789254', '1.59', 'ETH', 'clarke', '0.51', 'pending', 0, 1665206657),
(191, 101, '#0781813262', '150', 'BTC', 'micro_finance', '1.25', 'pending', 0, 1669498992),
(192, 101, '#6005664666', '200', 'ETH', 'micro_finance', '1.5', 'pending', 0, 1670195777),
(193, 137, '#5495501221', '200', 'BTC', 'shared_plan', '1.5', 'pending', 0, 1671155741),
(194, 137, '#7449139572', '5000', 'ETH', 'starter_plan', '25.5', 'completed', 1, 1671156420),
(195, 137, '#9277674937', '100', 'BTC', 'shared_plan', '1', 'pending', 0, 1671163258),
(196, 137, '#4306371176', '100', 'BTC', 'shared_plan', '1', 'pending', 0, 1671163270),
(197, 137, '#5217385153', '150', 'BTC', 'shared_plan', '1.25', 'pending', 0, 1671163991),
(198, 137, '#2689374780', '150', 'BTC', 'shared_plan', '1.25', 'pending', 0, 1671164311),
(199, 101, '#9781674958', '200', 'BTC', 'shared_plan', '1.5', 'pending', 0, 1671418291),
(200, 94, '#2876361991', '150', 'BTC', 'shared_plan', '1.25', 'pending', 0, 1671465843),
(201, 94, '#9591954122', '150', 'ETH', 'shared_plan', '1.25', 'pending', 0, 1671466148),
(202, 94, '#6589892686', '400', 'BTC', 'shared_plan', '2.5', 'pending', 0, 1671466348),
(203, 94, '#8158447895', '3500', 'LTC', 'shared_plan', '18', 'pending', 0, 1671466626),
(204, 94, '#6508518790', '4500', 'BCH', 'shared_plan', '23', 'pending', 0, 1671466823),
(205, 94, '#6222514025', '200', 'BTC', 'shared_plan', '1.5', 'pending', 0, 1671469164),
(206, 94, '#7158823682', '200', 'BTC', 'shared_plan', '1.5', 'pending', 0, 1671469455),
(207, 94, '#7929927548', '200', 'BTC', 'shared_plan', '1.5', 'completed', 0, 1671471625),
(208, 94, '#0232621359', '210', 'ETH', 'starter_plan', '1.55', 'pending', 0, 1688295110),
(209, 94, '#6182730076', '51.75', 'USDT', 'clarke', '0.75', 'pending', 0, 1688298218),
(210, 94, '#2073842339', '77.875', 'USDT', 'clarke', '0.875', 'pending', 0, 1688301994);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `reply` text NOT NULL,
  `priority` varchar(500) NOT NULL DEFAULT 'nill',
  `seen` int(11) NOT NULL DEFAULT 0,
  `date_contacted` varchar(250) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `fullname`, `email`, `subject`, `message`, `reply`, `priority`, `seen`, `date_contacted`) VALUES
(9, 'hey', 'okeke@gmail.com', 'yeah', 'hhh', 'Welcome', 'nill', 1, '1671235088'),
(4, 'sammy', 'sammyego101@gmail.com', 'help', 'hjowdojwdwed', 'none', 'nill', 0, '1562256072'),
(5, 'kingso', 'kingsleyjamal@gmail.com', 'here to see', 'wanted to see if it works.', 'none', 'nill', 0, '1607122667'),
(6, 'kingso', 'kingsleyjamal@gmail.com', 'here to see', 'llllllllllllllllllllllllllllllllll', 'hey', 'nill', 0, '1607124555'),
(7, 'emma dancer 2', 'kingsleyjamal@gmail.com', 'hey', 'hey again', 'Me', 'nill', 1, '1639621624');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(500) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `country` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `plan` varchar(500) NOT NULL DEFAULT '0',
  `upgrade` varchar(11) NOT NULL DEFAULT 'on',
  `balance` varchar(11) NOT NULL DEFAULT '0',
  `profit` varchar(11) NOT NULL DEFAULT '0',
  `capital` varchar(500) NOT NULL DEFAULT '0',
  `coupon_amount` varchar(500) NOT NULL DEFAULT '0',
  `token` varchar(250) NOT NULL DEFAULT '0',
  `ref_code` varchar(500) NOT NULL DEFAULT 'nill',
  `pwordResetToken` varchar(250) NOT NULL DEFAULT '0',
  `verified` varchar(250) NOT NULL DEFAULT 'false',
  `isBlocked` varchar(500) NOT NULL DEFAULT 'off',
  `moi` varchar(500) NOT NULL,
  `profile_img` varchar(500) NOT NULL,
  `reg_date` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `merchant_id`, `fullname`, `email`, `username`, `country`, `phone`, `password`, `plan`, `upgrade`, `balance`, `profit`, `capital`, `coupon_amount`, `token`, `ref_code`, `pwordResetToken`, `verified`, `isBlocked`, `moi`, `profile_img`, `reg_date`) VALUES
(94, '#1655201953', 'Alex Wingard', 'okeke@gmail.com', 'alexwingard101', 'Nigeria', '09017965290', '202cb962ac59075b964b07152d234b70', '0', 'off', '8140', '2000', '0', '80', 'a4ba5d8546cd9978946bbe6fea5f128a', 'HGURMREAPS', '0', 'true', 'off', 'nill', '../uploads/image_16564652741373549362.jpeg', 1655476592),
(97, '#7524329145', 'alex canoe', 'admin@admin.com', 'alexwingard101', 'Nigeria', '891838392922', '202cb962ac59075b964b07152d234b70', '0', 'off', '1020', '600', '0', '0', 'fb86cff135433fca993ce5e2f6f4fdc4', 'HRYE47JSDUE', '0', 'true', 'off', 'nill', '../uploads/image_16564652741373549362.jpeg', 1656464179),
(101, '#4246437577', 'Alex wingard', 'okekekingsley101@gmail.com', 'alexwingard101', 'Nigeria', '09017965290', '202cb962ac59075b964b07152d234b70', '0', 'off', '2999', '721.6', '0', '60', '43731ae3820f410daf728f2abd3a4651', 'UEOKL48JHE7', '0', 'true', 'on', 'nill', 'nill', 1656555255),
(135, '#7073189065', 'jose morris', 'josem@gmail.com', 'alexwingard101', 'Nigeria', '09017965290', '202cb962ac59075b964b07152d234b70', '0', 'off', '5', '0', '0', '0', '1cff1f309c717f8453e7cba8b06077e6', 'QEYC3JV7MJ', '0', 'false', 'off', 'nill', 'nill', 1664171725),
(136, '#1172446593', 'fabian rue', 'fabi@gmail.com', 'fabbi', 'Nigeria', '993283731', '202cb962ac59075b964b07152d234b70', '0', 'off', '5', '0', '0', '0', '0cb0366ac9afc7529c21779ad8c7956b', '0NTJCV7UEK', '0', 'false', 'off', 'nill', 'nill', 1664171804),
(137, '#3629096573', 'jose morris', 'okeke2@gmail.com', 'test', 'Nigeria', '09017965290', '202cb962ac59075b964b07152d234b70', '0', 'off', '8850', '0', '0', '0', 'e02c0d1b13f35dcca2e63eb65f6dd17e', 'nill', '0', 'true', 'off', 'nill', 'nill', 1671143970),
(140, '#9134355828', 'jose morris', 'kingsleyjamal@gmail.com', 'test', 'Nigerian', '0498574343545', '202cb962ac59075b964b07152d234b70', '0', 'off', '0', '0', '0', '0', '2dee81b6bc71d89acb06ee4a9f0505e4', 'nill', '0', 'true', 'off', 'nill', 'nill', 1671479878);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
CREATE TABLE IF NOT EXISTS `deposit` (
  `deposit_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `coin` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `reply` text NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `deposit_date` int(11) NOT NULL,
  PRIMARY KEY (`deposit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`deposit_id`, `customer_id`, `coin`, `amount`, `address`, `reply`, `approve`, `deposit_date`) VALUES
(2, 94, 'bch', '4500', '1GoBTCTiC8TEVoLmrGK4CQFXiVbRr7ktoz', 'none', 1, 1565129677),
(4, 94, 'eth', '3600', '1GoBTCTiC8TEVoLmrGK4CQKBsVbRr7yqds', 'none', 1, 1565129677),
(5, 97, 'eth', '3600', '1GoBTCTiC8TEVoLmrGK4CQKBsVbRr7yqds', 'none', 0, 1565129677);

-- --------------------------------------------------------

--
-- Table structure for table `eth_wallet`
--

DROP TABLE IF EXISTS `eth_wallet`;
CREATE TABLE IF NOT EXISTS `eth_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(500) NOT NULL,
  `isChosen` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`wallet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eth_wallet`
--

INSERT INTO `eth_wallet` (`wallet_id`, `wallet`, `isChosen`, `created`) VALUES
(19, '0xf66a21568b676d2e781ffedec80b92fd2698cf2e', 1, '2022-07-19 16:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
CREATE TABLE IF NOT EXISTS `newsletter` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `newsletter_date` int(11) NOT NULL,
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`newsletter_id`, `email`, `seen`, `newsletter_date`) VALUES
(1, 'okeke101@gmail.com', 1, 1548192384),
(2, 'dndu@gmail.com', 0, 1548192484),
(6, 'okeke@gmail.com', 0, 1639629305),
(5, 'okekee@gmail.com', 0, 1639629125);

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

DROP TABLE IF EXISTS `referral`;
CREATE TABLE IF NOT EXISTS `referral` (
  `ref_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_code` varchar(500) NOT NULL,
  `referred_by` varchar(500) NOT NULL DEFAULT 'nill',
  `referred_to` varchar(500) NOT NULL,
  `coupon_amount` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL DEFAULT 'pending',
  `ref_date` int(11) NOT NULL,
  PRIMARY KEY (`ref_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`ref_id`, `ref_code`, `referred_by`, `referred_to`, `coupon_amount`, `status`, `ref_date`) VALUES
(16, 'UEOKL48JHE7', 'Alex wingard', 'alex canoe', '20', 'pending', 1664153964),
(27, 'HGURMREAPS', 'Alex Wingard', 'alex canoe', '20', 'pending', 1664155736),
(30, 'HGURMREAPS', 'Alex Wingard', 'alex canoe', '20', 'pending', 1664155953),
(29, 'UEOKL48JHE7', 'Alex wingard', 'alex canoe', '20', 'completed', 1664155912),
(28, 'HGURMREAPS', 'Alex Wingard', 'alex canoe', '20', 'pending', 1664155838),
(26, 'HGURMREAPS', 'Alex Wingard', 'alex canoe', '20', 'pending', 1664155020),
(31, 'HRYE47JSDUE', 'alex canoe', 'jose morris', '20', 'completed', 1664171725),
(32, 'UEOKL48JHE7', 'alex wingard', 'fabian rue', '20', 'completed', 1664171804);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_status` varchar(500) NOT NULL DEFAULT 'off',
  `plan_type` varchar(500) NOT NULL,
  `plan_value` varchar(500) NOT NULL DEFAULT '0',
  `roi` varchar(11) NOT NULL,
  `num_of_days` varchar(11) NOT NULL,
  PRIMARY KEY (`settings_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `plan_status`, `plan_type`, `plan_value`, `roi`, `num_of_days`) VALUES
(1, 'on', 'Shared', '500', '10', '20'),
(2, 'on', 'Starter', '5000', '15', '30'),
(3, 'on', 'Basic', '10000', '20', '40'),
(4, 'on', 'Premium', '15000', '25', '50');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` varchar(500) NOT NULL,
  `customer_id` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `priority` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `reply` text NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `status` varchar(500) NOT NULL,
  `created` varchar(500) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `ref_id`, `customer_id`, `subject`, `email`, `priority`, `message`, `reply`, `seen`, `status`, `created`) VALUES
(2, '#8987512568', '94', 'how to withdrawal funds', 'okeke@gmail.com', 'high', 'Lorem ipsum, dolor sit, amet consectetur adipisicing elit. Minus dolorem laboriosam nemo suscipit voluptas libero repellendus. Dolorem deleniti, ducimus quia possimus, ratione accusamus dolor nulla provident tenetur nam aperiam officiis.', 'nill', 1, 'resolved', '1656388155'),
(14, '#7211918032', '94', 'CODE NOT RECEIVED', 'okeke@gmail.com', 'high', 'i didnt receive any code', 'nill', 0, 'open', '1671236387'),
(13, '#0488299902', '101', 'RE:I WANT TO CLAIM MY BONUS REWARD IN THE SUM OF $100.00', 'okekekingsley101@gmail.com', 'low', 'hhh and me', 'nill', 1, 'open', '1664406546');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` varchar(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `status` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `transact_date` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `customer_id`, `status`, `amount`, `note`, `transact_date`) VALUES
('60295', '68', 'credit', '300', 'usu', 1589729287),
('93816', '2', 'credit', '300', 'none', 1589729362),
('32409', '1', 'credit', '300', 'none', 1589730847),
('95310', '1', 'debit', '488', 'none', 1589730889),
('35187', '1', 'credit', '300', 'none', 1589844020),
('12568', '68', 'credit', '900', 'usu', 1589843278),
('71592', '68', 'credit', '900', 'usu', 1589843117),
('46719', '68', 'credit', '250', 'usu', 1589842670),
('58632', '68', 'credit', '400', 'usu', 1589841617),
('97453', '1', 'credit', '300', 'sent you bitcoin', 1589844982),
('32479', '1', 'credit', '300', 'sent you bitcoin', 1589845447),
('15864', '68', 'debit', '150', 'usu', 1589845571),
('57261', '68', 'debit', '200', 'usu', 1589845639),
('97180', '68', 'credit', '4000', 'feel', 1606947096),
('07453', '68', 'debit', '5000', 'feel2', 1606947217),
('68271', '68', 'credit', '5000', 'feel3', 1606947328),
('17652', '68', 'debit', '2500', 'feel4', 1606947462),
('87954', '68', 'credit', '500', 'me1', 1606947643),
('82740', '68', 'debit', '500', 'me2', 1606947662),
('07963', '68', 'credit', '4000', 'her1', 1606947804),
('36950', '68', 'debit', '4000', 'her2', 1606947817),
('13087', '68', 'credit', '5000', 'her3', 1606947874),
('61450', '68', 'credit', '5000', 'he', 1606979683),
('64785', '68', 'credit', '4000', 'he2', 1606979855),
('93584', '68', 'credit', '5000', 'him', 1606980804),
('01874', '68', 'debit', '2000', 'now', 1606981277),
('40926', '68', 'credit', '4000', 'de', 1606983194),
('36890', '77', 'credit', '4000', 'none', 1607003775),
('50174', '77', 'debit', '500', 'none', 1607003832),
('35609', '87', 'credit', '4000', 'ist deposit', 1622491346),
('13402', '89', 'debit', '1200', 'done', 1623509967),
('34725', '89', 'credit', '5000', 'r', 1623510105),
('85921', '89', 'debit', '1200', 'done by admin', 1623510262),
('97320', '89', 'debit', '2200', 'now now again', 1623511007),
('68305', '89', 'debit', '2200', 'now now now again', 1623511092),
('70689', '89', 'debit', '2500', 'detail and', 1623511227),
('18374', '89', 'debit', '1200', 'haaaaa', 1623519591),
('29437', '89', 'debit', '4000', 'to perform transaction, select the detail and update it by', 1623520194),
('61983', '89', 'credit', '20000', 'to perform transaction, select the detail and update it by', 1623520233),
('92071', '89', 'credit', '20000', 'nnnnnnnnnnnnnn', 1623520373),
('48352', '89', 'debit', '32900', 'hhh', 1623712697),
('15674', '89', 'credit', '1000', 'hfy', 1623712868),
('67189', '68', 'debit', '2750', 'ed', 1649629767),
('42786', '68', 'credit', '2000', 'deaa', 1649630488),
('24107', '68', 'credit', '5000', 'r', 1650895935),
('95423', '15', 'credit', '2500', 'ds', 1650898413),
('69510', '15', 'credit', '3600', 'sd', 1650898525),
('58740', '15', 'debit', '1000', 'hjh', 1650898757),
('70869', '68', 'debit', '1000', 'rr', 1650898829);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `transfer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(500) NOT NULL,
  `ref_id` varchar(500) NOT NULL,
  `sender` varchar(500) NOT NULL,
  `merchant_id` varchar(500) NOT NULL,
  `receiver` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `status` varchar(500) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`transfer_id`, `customer_id`, `ref_id`, `sender`, `merchant_id`, `receiver`, `type`, `amount`, `seen`, `status`, `created`) VALUES
(1, '94', '#8325206214', 'Alex Wingard', '#4325201528', 'Greg Madu', 'internal transfer', '5000', 0, 'pending', 1656457098),
(2, '94', '#9937821723', 'Alex Wingard', '#4325201528', 'Greg Madu', 'internal transfer', '300', 0, 'completed', 1656459761),
(4, '94', '#6101705945', 'Alex Wingard', '#4325201528', 'Greg Madu', 'bank transfer', '250', 1, 'pending', 1656460687);

-- --------------------------------------------------------

--
-- Table structure for table `usdt_wallet`
--

DROP TABLE IF EXISTS `usdt_wallet`;
CREATE TABLE IF NOT EXISTS `usdt_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet` varchar(500) NOT NULL,
  `isChosen` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`wallet_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usdt_wallet`
--

INSERT INTO `usdt_wallet` (`wallet_id`, `wallet`, `isChosen`, `created`) VALUES
(20, '0xd0BbE7e64E0574DDb872B2Cc6c77ee00684e3366', 1, '2022-08-13 01:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_counter`
--

DROP TABLE IF EXISTS `visitor_counter`;
CREATE TABLE IF NOT EXISTS `visitor_counter` (
  `counter_id` int(11) NOT NULL AUTO_INCREMENT,
  `counter` int(100) NOT NULL DEFAULT 0,
  `ip_address` varchar(250) NOT NULL,
  `location` varchar(500) NOT NULL,
  `visited_date` int(11) NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_counter`
--

INSERT INTO `visitor_counter` (`counter_id`, `counter`, `ip_address`, `location`, `visited_date`) VALUES
(12, 3, '197.211.61.54', 'Nigeria', 1674948261),
(13, 2, '197.243.88.42', 'Localhost', 1674952129),
(15, 2, '197.243.43.78', 'Rwanda', 1674952350),
(17, 62, '127.0.0.1', 'Localhost', 1674952845);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

DROP TABLE IF EXISTS `withdrawal`;
CREATE TABLE IF NOT EXISTS `withdrawal` (
  `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `coin` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `reply` text NOT NULL,
  `status` varchar(500) NOT NULL,
  `approve` int(11) NOT NULL DEFAULT 0,
  `withdraw_date` int(11) NOT NULL,
  PRIMARY KEY (`withdrawal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`withdrawal_id`, `customer_id`, `coin`, `amount`, `address`, `reply`, `status`, `approve`, `withdraw_date`) VALUES
(30, 101, 'USDT', '50', 'trgrgvrsgvdbvdsvfdvbfdvdfvfsdbvfdb fd', 'none', 'pending', 0, 1662916203),
(31, 137, 'bitcoin', '200', 'jjhui', 'none', 'pending', 0, 1671159385),
(32, 137, 'bitcoin', '200', 'jjhui', 'none', 'pending', 0, 1671159397),
(29, 101, 'bitcoin', '1', 'rfrf', 'none', 'pending', 0, 1658636166),
(27, 101, 'bitcoin', '1', 'wde3d3', 'none', 'pending', 0, 1658635975),
(28, 101, 'bitcoin', '1', 'wde3d3', 'none', 'pending', 0, 1658636001),
(26, 101, 'bitcoin', '1', 'wde3d3', 'none', 'pending', 0, 1658635963),
(25, 101, 'bitcoin', '1', 'wdede', 'none', 'pending', 0, 1658635338),
(19, 94, 'bank transfer', '400', '152MhJh8FooGEdFFP8VNX2YLc88LsHQDBK', 'none', 'completed', 1, 1656119072),
(24, 97, 'bitcoin', '300', 'fgrghtg', 'none', 'completed', 1, 1658368564),
(3, 94, 'bank transfer', '650', '152MhJh8FooGEdFFP8VNX2YLc88LsHQDBK', 'none', 'completed', 1, 1656119072),
(21, 97, 'bitcoin', '120', 'kjghggfgfgfbvhvhhjkjjkjhhjhj,jgjhggffdgfjhgjukjkm', 'none', 'completed', 1, 1658347424),
(22, 97, 'bitcoin', '500', 'dfefrfefewfe', 'none', 'completed', 1, 1658361391),
(23, 97, 'bitcoin', '200', 'fgtrgdt', 'none', 'completed', 1, 1658368441),
(18, 94, 'bitcoin', '5000', '152MhJh8FooGEdFFP8VNX2YLc88LsHQDBK', 'none', 'pending', 0, 1656119059),
(33, 137, 'bitcoin', '600', 'dfdfdsfvsdfvsafvsafa', 'none', 'pending', 0, 1671159465),
(34, 137, 'bitcoin', '200', 'dgvdgsdvsacacsa', 'none', 'pending', 0, 1671159797),
(35, 137, 'bitcoin', '150', 'fgrefgewrfwdw', 'none', 'completed', 1, 1671159935);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
