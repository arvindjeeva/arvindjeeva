-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2020 at 09:53 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bike`
--
CREATE DATABASE IF NOT EXISTS `bike` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bike`;

-- --------------------------------------------------------

--
-- Table structure for table `biker`
--

CREATE TABLE IF NOT EXISTS `biker` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  `brand` varchar(25) NOT NULL,
  `model` varchar(25) NOT NULL,
  `price` bigint(25) NOT NULL,
  `economy` varchar(25) NOT NULL,
  `weight` varchar(25) NOT NULL,
  `fualt` varchar(25) NOT NULL,
  `speed` varchar(25) NOT NULL,
  `colors` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `biker`
--

INSERT INTO `biker` (`id`, `image`, `brand`, `model`, `price`, `economy`, `weight`, `fualt`, `speed`, `colors`) VALUES
(9, 'images/', '1', '1', 1, '1', '1', '1', '1', 1),
(10, 'images/', '1', '1', 1, '1', '1', '1', '1', 1),
(11, 'images/', '1', '1', 1, '1', '1', '1', '1', 1),
(12, 'images/bg2.png', '1', '1', 1, '1', '1', '1', '1', 1),
(13, 'images/bg2.png', '1', '1', 1, '1', '1', '1', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookingg`
--

CREATE TABLE IF NOT EXISTS `bookingg` (
  `name` varchar(50) NOT NULL,
  `number` bigint(12) NOT NULL,
  `carid` varchar(25) NOT NULL,
  `amt` int(11) NOT NULL,
  `date` date NOT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ads` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `bookingg`
--

INSERT INTO `bookingg` (`name`, `number`, `carid`, `amt`, `date`, `id`, `ads`) VALUES
('1', 1, '1', 1, '2020-02-20', 27, '1'),
('1', 1, '1', 1, '2020-02-20', 28, '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `number`, `pas1`, `pas2`, `date`, `ads`, `name`) VALUES
(3, 1, '1', '1', '2020-02-20', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
