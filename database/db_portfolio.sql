-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2018 at 05:31 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

DROP TABLE IF EXISTS `tbl_about`;
CREATE TABLE IF NOT EXISTS `tbl_about` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `name`, `intro`) VALUES
(1, 'me', 'Portfolio_03.jpg'),
(2, 'inroduction', 'My name is Yuchen Xia. I’m a passionate, dedicated and dynamic Front-End Developer and Graphic & Web Designer.I study in Fanshawe College with a Diploma in Interactive Media Design where I learned hands-on skills required for graphic and motion design.'),
(3, 'hobbies', 'watching-tv.svg\r\nbrush.svg\r\njoystick.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `content`) VALUES
(1, 'title', 'Drop me a line, any time.'),
(2, 'explain', 'Whether you\'re interested in working together, or if you just want to tell me what you think about my site, I\'d love to hear from you.'),
(3, 'scocial', 'github-sign.svg\r\nweibo-social-logo.svg\r\ninstagram.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

DROP TABLE IF EXISTS `tbl_portfolio`;
CREATE TABLE IF NOT EXISTS `tbl_portfolio` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`id`, `name`, `description`, `img`) VALUES
(1, 'sport', 'sport team logo', 'portfolio_10.jpg'),
(2, 'wendys', 'package branding', 'portfolio_12.jpg'),
(3, 'tattoo', 'tattoo design', 'portfolio_07.jpg'),
(4, 'parent', 'parent logo design', 'portfolio_17.jpg'),
(5, 'tl', 'organ donation', 'portfolio_18.jpg'),
(6, 'tl', 'organ donation package', 'portfolio_20.jpg'),
(7, 'roku', 'roku website design', 'portfolio_29.jpg'),
(8, 'car', 'car promo', 'portfolio_25.jpg'),
(9, 'info', 'infographic', 'portfolio_27.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skill`
--

DROP TABLE IF EXISTS `tbl_skill`;
CREATE TABLE IF NOT EXISTS `tbl_skill` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skill`
--

INSERT INTO `tbl_skill` (`id`, `name`, `img`, `introduction`) VALUES
(1, 'development', 'web.svg', 'Close collaboration with developers up until the finsh line and beynd.'),
(2, 'design', 'sketch.svg', 'I develop innovative logo designs and illustrations for both print and web design.'),
(3, 'brand', 'price-tag.svg', 'I create full brand guides to outline a consistent look for your company.'),
(4, 'motion', '3d.svg', 'Familiar with Cinema 4D and Adobe After Effect that can do motion product.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
CREATE TABLE IF NOT EXISTS `tbl_video` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_name` varchar(20) NOT NULL,
  `video_video` varchar(100) NOT NULL,
  `video_duration` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `video_name`, `video_video`, `video_duration`) VALUES
(1, 'demo_reel', 'demoreel.mp4', '0:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
