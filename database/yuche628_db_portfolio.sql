-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-12-08 13:26:55
-- 服务器版本： 5.6.40
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yuche628_db_portfolio`
--

-- --------------------------------------------------------

--
-- 表的结构 `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `name`, `intro`) VALUES
(1, 'me', 'Portfolio_03.jpg'),
(2, 'inroduction', 'My name is Yuchen Xia. I’m a passionate, dedicated and dynamic Front-End Developer and Graphic & Web Designer.I study in Fanshawe College with a Diploma in Interactive Media Design where I learned hands-on skills required for graphic and motion design.'),
(3, 'hobbies', 'watching-tv.svg\r\nbrush.svg\r\njoystick.svg');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `content`) VALUES
(1, 'title', 'Drop me a line, any time.'),
(2, 'explain', 'Whether you\'re interested in working together, or if you just want to tell me what you think about my site, I\'d love to hear from you.'),
(3, 'scocial', 'github-sign.svg\r\nweibo-social-logo.svg\r\ninstagram.svg');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_portfolio`
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
-- 表的结构 `tbl_skill`
--

CREATE TABLE `tbl_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `introduction` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_skill`
--

INSERT INTO `tbl_skill` (`id`, `name`, `img`, `introduction`) VALUES
(1, 'development', 'web.svg', 'Close collaboration with developers up until the finsh line and beynd.'),
(2, 'design', 'sketch.svg', 'I develop innovative logo designs and illustrations for both print and web design.'),
(3, 'brand', 'price-tag.svg', 'I create full brand guides to outline a consistent look for your company.'),
(4, 'motion', '3d.svg', 'Familiar with Cinema 4D and Adobe After Effect that can do motion product.');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_name` varchar(20) NOT NULL,
  `video_video` varchar(100) NOT NULL,
  `video_duration` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `video_name`, `video_video`, `video_duration`) VALUES
(1, 'demo_reel', 'demoreel.mp4', '0:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_skill`
--
ALTER TABLE `tbl_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `tbl_skill`
--
ALTER TABLE `tbl_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
