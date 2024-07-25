-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2021 at 07:29 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `billinginvoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_print`
--

CREATE TABLE IF NOT EXISTS `bill_print` (
  `order_no` int(50) NOT NULL,
  `order_receiver_name` varchar(50) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `order_item_quantity` int(50) NOT NULL,
  `order_item_price` int(50) NOT NULL,
  `order_item_actual_amount` int(200) NOT NULL,
  `order_total_before_tax` int(50) NOT NULL,
  `order_total_after_tax` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_print`
--


-- --------------------------------------------------------

--
-- Table structure for table `inv_order`
--

CREATE TABLE IF NOT EXISTS `inv_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,0) NOT NULL,
  `order_total_tax1` decimal(10,0) NOT NULL,
  `order_total_tax2` decimal(10,0) NOT NULL,
  `order_total_tax3` decimal(10,0) NOT NULL,
  `order_total_tax` decimal(10,0) NOT NULL,
  `order_total_after_tax` int(11) NOT NULL,
  `order_datetime` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `inv_order`
--

INSERT INTO `inv_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax1`, `order_total_tax2`, `order_total_tax3`, `order_total_tax`, `order_total_after_tax`, `order_datetime`) VALUES
(15, '987654', '2021-11-01', 'dom', 'lkjhgfd', '190', '14', '14', '46', '73', 263, 1636160386),
(13, '104780', '2021-07-05', 'Mary Sheen', '4140 Worley Avenue', '937', '17', '17', '15', '49', 986, 1625592747),
(12, '102566', '2021-07-02', 'Courtney Chandler', '1253 Elliott Street', '112', '1', '1', '1', '3', 112, 1625590918),
(10, '101255', '2021-07-01', 'James Alexanr', '7785 Ralph Street', '48', '1', '1', '0', '2', 50, 1625579598),
(11, '102566', '2021-07-01', 'Agustin A Anderson', '174 Asylum Avenue', '150', '2', '2', '1', '5', 155, 1625590293),
(16, '111111', '2021-11-02', 'qq', 'qqqqqqqqqq', '286', '5', '56', '56', '116', 402, 1636162921),
(17, '222222', '2021-11-02', 'dom', 'qqqqqqqqqqAAAAAAAAAAAAAAAA', '1332', '135', '135', '135', '406', 1738, 1636220988),
(18, '000', '2021-11-06', 'Guest', '', '26096', '0', '0', '0', '0', 26096, 1636223275),
(19, '000', '2021-11-06', 'Guest', '', '460', '0', '0', '0', '0', 460, 1636224721),
(20, '65669', '2021-11-06', 'Guest', '', '300', '0', '0', '0', '0', 300, 1636225482),
(21, '80111', '2021-11-06', 'Guest', '', '605', '0', '0', '0', '0', 605, 1636237275),
(22, '28517', '2021-11-06', 'Guest', '', '40', '0', '0', '0', '0', 40, 1636239307),
(23, '97793', '2021-11-07', 'Guest', '', '12', '0', '0', '0', '0', 12, 1636265098),
(24, '46416', '2021-11-07', 'Guest', '', '1328', '0', '0', '0', '0', 1328, 1636265115),
(25, '79675', '2021-11-07', 'Guest', '', '400', '0', '0', '0', '0', 400, 1636266904),
(26, '21654', '2021-11-07', 'Guest', '', '1012', '0', '0', '0', '0', 1012, 1636266981),
(27, '42684', '2021-11-07', 'Guest', '', '1320', '0', '0', '0', '0', 1320, 1636266997),
(28, '630', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636820857),
(29, '96333', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636821189),
(30, '98680', '2021-11-13', 'Guest', '', '128', '0', '0', '0', '0', 128, 1636821233),
(31, '99443', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636821808),
(32, '11764', '2021-11-13', 'Guest', '', '52', '0', '0', '0', '0', 52, 1636822618),
(33, '84336', '2021-11-13', 'Guest', '', '8', '0', '0', '0', '0', 8, 1636822939),
(34, '5648', '2021-11-13', 'Guest', '', '132', '0', '0', '0', '0', 132, 1636823203),
(35, '57279', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636823348),
(36, '2709', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636823523),
(37, '88272', '2021-11-13', 'Guest', '', '0', '0', '0', '0', '0', 0, 1636823564),
(38, '69544', '2021-11-13', 'Guest', '', '8', '0', '0', '0', '0', 8, 1636823753),
(39, '79385', '2021-11-13', 'Guest', '', '2252', '0', '0', '0', '0', 2252, 1636825118),
(40, '31809', '2021-11-14', 'Guest', '', '92', '0', '0', '0', '0', 92, 1636866979),
(41, '8508', '2021-11-14', 'Guest', '', '12', '0', '0', '0', '0', 12, 1636868880),
(42, '45145', '2021-11-14', 'Guest', '', '88', '0', '0', '0', '0', 88, 1636868911);

-- --------------------------------------------------------

--
-- Table structure for table `inv_order_item`
--

CREATE TABLE IF NOT EXISTS `inv_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,0) NOT NULL,
  `order_item_price` decimal(10,0) NOT NULL,
  `order_item_actual_amount` decimal(10,0) NOT NULL,
  `order_item_tax1_rate` decimal(10,0) NOT NULL,
  `order_item_tax1_amount` decimal(10,0) NOT NULL,
  `order_item_tax2_rate` decimal(10,0) NOT NULL,
  `order_item_tax2_amount` decimal(10,0) NOT NULL,
  `order_item_tax3_rate` decimal(10,0) NOT NULL,
  `order_item_tax3_amount` decimal(10,0) NOT NULL,
  `order_item_final_amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `inv_order_item`
--

INSERT INTO `inv_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`, `order_item_tax1_rate`, `order_item_tax1_amount`, `order_item_tax2_rate`, `order_item_tax2_amount`, `order_item_tax3_rate`, `order_item_tax3_amount`, `order_item_final_amount`) VALUES
(17, 13, 'Product Four', '9', '28', '252', '2', '5', '3', '8', '3', '8', '272'),
(16, 13, 'Product Three', '20', '10', '200', '1', '2', '1', '2', '1', '2', '206'),
(14, 13, 'Product One', '16', '14', '224', '2', '4', '1', '2', '0', '0', '231'),
(15, 13, 'Product Two', '29', '9', '261', '2', '5', '2', '5', '2', '5', '277'),
(13, 12, 'RUNMUS Gaming Headset', '7', '16', '112', '0', '1', '0', '1', '0', '1', '112'),
(9, 10, 'Demo Item', '6', '8', '48', '2', '1', '2', '1', '0', '0', '50'),
(10, 11, 'Demo One', '5', '11', '55', '1', '1', '1', '1', '0', '0', '56'),
(11, 11, 'Demo Two', '9', '5', '45', '1', '0', '1', '0', '0', '0', '46'),
(12, 11, 'Demo Three', '2', '25', '50', '2', '1', '2', '1', '2', '1', '53'),
(23, 16, 'qwe', '4', '55', '220', '2', '4', '22', '48', '22', '48', '321'),
(22, 15, 'orange', '3', '30', '90', '2', '2', '2', '2', '2', '2', '95'),
(21, 15, 'apple', '1', '100', '100', '12', '12', '12', '12', '44', '44', '168'),
(24, 16, 'w', '3', '22', '66', '1', '1', '11', '7', '11', '7', '81'),
(25, 17, 'apple', '11', '111', '1221', '11', '134', '11', '134', '11', '134', '1624'),
(26, 17, 'we1', '111', '1', '111', '1', '1', '1', '1', '1', '1', '114'),
(29, 18, 'apple', '112', '233', '26096', '0', '0', '0', '0', '0', '0', '26096'),
(30, 19, 'apple', '2', '230', '460', '0', '0', '0', '0', '0', '0', '460'),
(31, 20, 'apple', '3', '100', '300', '0', '0', '0', '0', '0', '0', '300'),
(32, 21, 'apple', '1', '55', '55', '0', '0', '0', '0', '0', '0', '55'),
(33, 21, 'apple', '10', '55', '550', '0', '0', '0', '0', '0', '0', '550'),
(34, 22, 'Lexi pen', '10', '4', '40', '0', '0', '0', '0', '0', '0', '40'),
(35, 23, 'Lexi pen', '3', '4', '12', '0', '0', '0', '0', '0', '0', '12'),
(36, 24, 'Lexi pen', '2', '4', '8', '0', '0', '0', '0', '0', '0', '8'),
(37, 24, '7 Star 10 KG', '33', '40', '1320', '0', '0', '0', '0', '0', '0', '1320'),
(38, 25, 'Lexi pen', '100', '4', '400', '0', '0', '0', '0', '0', '0', '400'),
(39, 26, 'Lexi pen', '33', '4', '132', '0', '0', '0', '0', '0', '0', '132'),
(40, 26, '7 Star 10 KG', '22', '40', '880', '0', '0', '0', '0', '0', '0', '880'),
(41, 27, '7 Star 10 KG', '33', '40', '1320', '0', '0', '0', '0', '0', '0', '1320'),
(42, 30, 'Lexi pen', '22', '4', '88', '0', '0', '0', '0', '0', '0', '88'),
(43, 30, '7 Star 10 KG', '1', '40', '40', '0', '0', '0', '0', '0', '0', '40'),
(44, 32, 'Lexi pen', '3', '4', '12', '0', '0', '0', '0', '0', '0', '12'),
(45, 32, '7 Star 10 KG', '1', '40', '40', '0', '0', '0', '0', '0', '0', '40'),
(46, 33, 'Lexi pen', '2', '4', '8', '0', '0', '0', '0', '0', '0', '8'),
(47, 34, 'Lexi pen', '33', '4', '132', '0', '0', '0', '0', '0', '0', '132'),
(48, 35, 'Lexi pen', '33', '4', '0', '0', '0', '0', '0', '0', '0', '0'),
(49, 36, 'Lexi pen', '33', '4', '0', '0', '0', '0', '0', '0', '0', '0'),
(50, 37, 'Lexi pen', '33', '4', '0', '0', '0', '0', '0', '0', '0', '0'),
(51, 38, 'Lexi pen', '2', '4', '8', '0', '0', '0', '0', '0', '0', '8'),
(52, 39, 'Lexi pen', '3', '4', '12', '0', '0', '0', '0', '0', '0', '12'),
(53, 39, '7 Star 10 KG', '1', '40', '40', '0', '0', '0', '0', '0', '0', '40'),
(54, 39, '7 Star 10 KG', '33', '40', '1320', '0', '0', '0', '0', '0', '0', '1320'),
(55, 39, 'Lexi pen', '22', '4', '880', '0', '0', '0', '0', '0', '0', '880'),
(56, 40, 'Lexi pen', '3', '4', '12', '0', '0', '0', '0', '0', '0', '12'),
(57, 40, '7 Star 10 KG', '2', '40', '80', '0', '0', '0', '0', '0', '0', '80'),
(58, 41, 'Lexi pen', '3', '4', '12', '0', '0', '0', '0', '0', '0', '12'),
(59, 42, 'Lexi pen', '22', '4', '88', '0', '0', '0', '0', '0', '0', '88');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'user', 'password');
