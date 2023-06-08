-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2020 at 06:44 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car`
--
CREATE DATABASE IF NOT EXISTS `car` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `car`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `number` bigint(15) NOT NULL,
  `fdate` date NOT NULL,
  `edate` date NOT NULL,
  `place` varchar(50) NOT NULL,
  `carid` varchar(5) NOT NULL,
  `days` int(10) NOT NULL,
  `amt` float NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `number`, `fdate`, `edate`, `place`, `carid`, `days`, `amt`, `date`) VALUES
(46, 'Imam ', 1, '2020-01-04', '2020-01-06', 'palani', '39', 2, 4000, '2022-01-20'),
(47, 'Imam ', 0, '2020-01-18', '2020-01-25', 'palani', '40', 7, 17500, '2022-01-20'),
(48, 'Imam ', 90, '2020-01-17', '2020-01-04', 'palani,', '39', -13, -26000, '2031-01-20'),
(49, '1', 0, '0000-00-00', '0000-00-00', '', '39', 0, 0, '2011-02-20'),
(50, '1', 0, '0000-00-00', '0000-00-00', '', '39', 0, 0, '2011-02-20'),
(51, '1', 1, '2020-02-06', '2020-02-20', '2', '39', 14, 28000, '2012-02-20'),
(52, '1', 1, '2020-02-06', '2020-02-20', '2', '39', 14, 28000, '2012-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `bookingg`
--

CREATE TABLE IF NOT EXISTS `bookingg` (
  `name` varchar(50) NOT NULL,
  `number` bigint(12) NOT NULL,
  `qty` int(11) NOT NULL,
  `carid` varchar(25) NOT NULL,
  `amt` int(11) NOT NULL,
  `date` date NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ads` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `bookingg`
--

INSERT INTO `bookingg` (`name`, `number`, `qty`, `carid`, `amt`, `date`, `id`, `ads`) VALUES
('1', 1, 1, '', 1, '2012-02-20', 1, '1'),
('1', 1, 2, 'fz', 2000, '2012-02-20', 2, '1'),
('1', 1, 1, 'pep+', 1500, '2012-02-20', 3, '1'),
('1', 1, 0, 'fz', 0, '2013-02-20', 4, '1');

-- --------------------------------------------------------

--
-- Table structure for table `carreg`
--

CREATE TABLE IF NOT EXISTS `carreg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `image` varchar(25) NOT NULL,
  `noa` int(5) NOT NULL,
  `noc` int(5) NOT NULL,
  `adp` float NOT NULL,
  `type` varchar(15) NOT NULL,
  `tname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `carreg`
--

INSERT INTO `carreg` (`id`, `image`, `noa`, `noc`, `adp`, `type`, `tname`) VALUES
(52, 'images/bike.jpg', 0, 0, 1000, 'bike', 'fz'),
(54, 'images/scooter.jpg', 0, 0, 1500, 'scooter', 'pep+');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `number` bigint(15) NOT NULL,
  `pas1` varchar(15) NOT NULL,
  `pas2` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `ads` varchar(500) NOT NULL,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `number`, `pas1`, `pas2`, `date`, `ads`, `name`) VALUES
(1, 1, '1', '1', '2012-02-20', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
