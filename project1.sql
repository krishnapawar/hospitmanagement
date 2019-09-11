-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 21, 2017 at 08:41 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `password`) VALUES
(1, 'krishna', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `pasent`
--

CREATE TABLE IF NOT EXISTS `pasent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `disisses` varchar(20) NOT NULL,
  `adate` date NOT NULL,
  `time` varchar(11) NOT NULL,
  `fee` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `pasent`
--

INSERT INTO `pasent` (`id`, `name`, `gender`, `birthdate`, `address`, `disisses`, `adate`, `time`, `fee`) VALUES
(1, 'tyftfywr', 'male', '2222-02-12', '0', 'hhh', '2017-04-04', '16:05', 200),
(16, 'jk', 'female', '2017-04-10', 'lakhangoan', 'malariy', '2017-12-31', '12:59', 0),
(17, 'simran kour', 'female', '1998-05-18', 'pratap nager indore', 'canser', '2017-05-11', '22:22', 200),
(18, 'simran kour', 'female', '1998-05-18', 'pratap nager indore', 'malariya', '2017-04-11', '10:00', 200),
(19, 'fgegggggb', 'female', '2018-12-31', 'ggrgrg', '', '2017-12-31', '14:02', 200),
(20, 'gherhf', 'female', '2017-01-31', 'yuyi', '', '2018-12-01', '12:59', 200),
(21, 'hdhhd', 'female', '2017-01-31', 'ghghfg', '', '2017-01-01', '', 0),
(22, 'ndnndfjn', 'female', '2017-01-31', 'ghjdguywguyuyw', 'Phyleria', '2011-01-31', '01:59', 200),
(23, 't67ty7gy', 'female', '2017-01-31', 'guyguyh', 'Migrain', '2017-12-01', '12:59', 200),
(24, 'ramu kaka', 'male', '2017-01-31', 'amaha ahah', 'Constipation', '2018-12-01', '00:00', 200),
(25, 'hhhhdgh', 'male', '2017-12-31', 'bjchjghc', 'Maleria', '2017-12-31', '12:59', 200),
(26, 'ghghgh', 'male', '2017-01-31', 'ghv', 'Constipation', '2017-12-30', '23:58', 200),
(27, 'hfhwedefhe', 'male', '2017-12-31', 'hjfhgherfr', 'Maleria', '2016-12-31', '12:59', 0),
(28, 'jkk', 'male', '1979-01-31', 'abcd', 'Maleria', '2017-12-31', '12:00', 200),
(29, 'priti', 'female', '2010-01-31', 'ghjgcghjecghje', 'Jouindis', '2017-12-02', '12:00', 200),
(30, 'ratik', 'male', '2017-09-26', 'ghghg', 'Maleria', '2016-12-31', '02:59', 200),
(31, 'harpeet', 'male', '2015-01-31', 'uirytqwtq7tqwtutQW', 'Typhoid', '2017-12-31', '12:59', 200);
