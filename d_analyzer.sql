-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2019 at 02:52 PM
-- Server version: 5.5.18
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d_analyzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `declines`
--

DROP TABLE IF EXISTS `declines`;
CREATE TABLE IF NOT EXISTS `declines` (
  `decline_reason` text NOT NULL,
  `transaction_date` date NOT NULL,
  `Client` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `declines`
--

INSERT INTO `declines` (`decline_reason`, `transaction_date`, `Client`) VALUES
('Decline-005', '2007-11-06', 'GNC'),
('Format error', '2007-11-30', 'GNC'),
('Transaction not permitted', '2017-07-25', 'KWI'),
('Fraud Decline', '2019-01-01', 'GNC');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `Email` varchar(50) NOT NULL,
  `New_password` varchar(50) NOT NULL,
  `Old_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Email`, `New_password`, `Old_password`) VALUES
('shubham@gmail.com', '123456789', 'shubh');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
