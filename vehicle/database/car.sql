-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2020 at 01:05 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restrarunt`
--
CREATE DATABASE IF NOT EXISTS `restrarunt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `restrarunt`;

-- --------------------------------------------------------

--
-- Table structure for table `confirm`
--

CREATE TABLE IF NOT EXISTS `confirm` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tno` int(15) NOT NULL,
  `con` bigint(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pname` varchar(25) NOT NULL,
  `qty` int(5) NOT NULL,
  `tot` decimal(5,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `pname`, `qty`, `tot`) VALUES
(18, '1000ml', 2, '2'),
(19, '1000ml', 3, '3'),
(20, '500ml', 1, '4'),
(21, '500ml', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `stockmaster`
--

CREATE TABLE IF NOT EXISTS `stockmaster` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stockmaster`
--

INSERT INTO `stockmaster` (`id`, `image`, `pname`, `pprice`) VALUES
(1, 'pimg/a1.png', 'sunrise', 1),
(2, 'pimg/a1.png', 'sunrise', 1),
(5, 'pimg/and.png', 'sunrise', 2),
(6, 'pimg/asp.jpg', '500ml', 4),
(7, 'pimg/blue.jpg', '500ml', 2),
(8, 'pimg/Award.png', '1000ml', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
