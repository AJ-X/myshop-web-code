-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-11 14:21:46
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop15`
--

-- --------------------------------------------------------

--
-- 表的结构 `advert`
--

CREATE TABLE `advert` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(100) NOT NULL,
  `pos` tinyint(4) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `advert`
--

INSERT INTO `advert` (`id`, `img`, `pos`, `url`) VALUES
(5, '14519674771654552059.jpg', 1, 'http://www.baidu.com'),
(6, '14519674881925629022.jpg', 0, 'http://www.qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `brand`
--

INSERT INTO `brand` (`id`, `name`, `class_id`) VALUES
(7, '联想', 1),
(8, 'DELL', 1),
(9, '三星', 3),
(10, '苹果', 3),
(11, '雷蛇', 4);

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE `class` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`id`, `name`) VALUES
(1, '电脑'),
(3, '手机'),
(4, '鼠标');

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text,
  `shop_id` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `content`, `shop_id`, `time`) VALUES
(1, 14, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 12, 1452221961),
(2, 14, 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 31, 1452221971),
(3, 14, 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 12, 1452221984);

-- --------------------------------------------------------

--
-- 表的结构 `indent`
--

CREATE TABLE `indent` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `touch_id` int(11) NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `num` int(10) UNSIGNED NOT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `indent`
--

INSERT INTO `indent` (`id`, `code`, `user_id`, `time`, `status_id`, `touch_id`, `shop_id`, `price`, `num`, `confirm`) VALUES
(1, '1452216457178734098', 14, 1452216457, 5, 3, 12, 100, 10, 1),
(2, '1452216457178734098', 14, 1452216457, 5, 3, 15, 400, 5, 1),
(3, '1452216457178734098', 14, 1452216457, 5, 3, 30, 400, 5, 1),
(4, '1452218728837569957', 14, 1452218728, 3, 5, 31, 500, 3, 1),
(5, '1452218728837569957', 14, 1452218728, 3, 5, 19, 300, 3, 1),
(6, '1452220713692073358', 14, 1452220713, 1, 6, 10, 400, 2, 1),
(7, '1452220786885334336', 14, 1452220786, 1, 3, 25, 400, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE `shop` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `shelf` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`id`, `name`, `img`, `price`, `stock`, `brand_id`, `shelf`) VALUES
(7, '联想-1', '14520633451347695388.jpg', 1001, 100, 7, 1),
(8, '联想-2', '1452049548213063468.jpg', 200, 10, 7, 1),
(9, '联想-3', '1452049560654634541.jpg', 300, 10, 7, 1),
(10, '联想-4', '1452049587785546704.jpg', 400, 8, 7, 1),
(11, '联想-5', '14520495961653442515.jpg', 500, 10, 7, 1),
(12, 'DELL-1', '14520496101564326695.jpg', 100, 10, 8, 1),
(13, 'DELL-2', '14520496221421192279.jpg', 200, 10, 8, 1),
(14, 'DELL-3', '1452049634324930230.jpg', 300, 10, 8, 1),
(15, 'DELL-4', '14520496501917620655.jpg', 400, 5, 8, 1),
(16, 'DELL-5', '14520496631614631964.jpg', 500, 10, 8, 1),
(17, '三星-1', '14520496781551893387.jpg', 100, 10, 9, 1),
(18, '三星-2', '1452049689602514996.jpg', 200, 10, 9, 1),
(19, '三星-3', '14520497001386168760.jpg', 300, 7, 9, 1),
(20, '三星-4', '1452049709102494745.jpg', 400, 10, 9, 1),
(21, '三星-5', '14520497182059454006.jpg', 500, 10, 9, 1),
(22, '苹果-1', '14520497361989953450.jpg', 100, 10, 10, 1),
(23, '苹果-2', '14520497501558029486.jpg', 200, 10, 10, 1),
(24, '苹果-3', '14520497611723339328.jpg', 300, 10, 10, 1),
(25, '苹果-4', '14520497701236655768.jpg', 400, 7, 10, 1),
(26, '苹果-5', '1452049780331245533.jpg', 50, 10, 10, 1),
(27, '雷蛇-1', '1452053140381209942.jpg', 100, 10, 11, 1),
(28, '雷蛇-2', '1452053159667678475.jpg', 200, 10, 11, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indent`
--
ALTER TABLE `indent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `indent`
--
ALTER TABLE `indent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
