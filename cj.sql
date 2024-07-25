-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2021 at 07:28 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cj`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `pId` varchar(4) NOT NULL,
  `pName` varchar(30) NOT NULL,
  `pQty` int(10) NOT NULL,
  `pDimensions` text NOT NULL,
  `pMRP` float NOT NULL,
  `CJprice` float NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`pId`, `pName`, `pQty`, `pDimensions`, `pMRP`, `CJprice`) VALUES
('9', 'vine', 100, 'Nos', 83, 72),
('8', 'mixture', 100, 'Nos', 82, 71),
('2', '7 Star 10 KG', 100, 'Kg', 44, 40),
('1', 'Lexi pen', 100, 'Nos', 5, 4),
('7', 'biscut', 100, 'Nos', 81, 70),
('6', 'eracer', 100, 'Nos', 80, 69),
('5', 'pencil', 100, 'Kg', 79, 68),
('4', 'ball', 100, 'Kg', 78, 67),
('0', 'bat', 100, 'Kg', 77, 66);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('EbinLoyed', '2323');
