-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 01, 2019 at 01:07 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gusto`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `image` text,
  `link` text,
  `code` text,
  `ad_location_id` int(11) DEFAULT NULL,
  `type` enum('code','image') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ad_id`, `title`, `image`, `link`, `code`, `ad_location_id`, `type`, `created`) VALUES
(6, 'Home footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 1, 'image', '2016-05-22 09:51:13'),
(7, 'Home side 1', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 5, 'image', '2018-04-26 13:32:21'),
(8, 'category footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 2, 'image', '2018-04-26 13:45:38'),
(9, 'Tricks Footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 4, 'image', '2016-05-22 09:51:13'),
(10, 'Recipes footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 3, 'image', '2016-05-22 09:51:13'),
(11, 'Recipe footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 10, 'image', '2016-05-22 09:51:13'),
(12, 'Trick footer', 'https://elmanawy.info/demo/gusto/cdn/ads/gusto-ads-banner.png', 'https://elmanawy.info/', '', 12, 'image', '2016-05-22 09:51:13'),
(13, 'Home side 2', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 8, 'image', '2018-04-26 13:32:21'),
(14, 'Recipe side 1', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 6, 'image', '2018-04-26 13:32:21'),
(15, 'Recipe side 2', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 9, 'image', '2018-04-26 13:32:21'),
(16, 'Trick side 1', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 7, 'image', '2018-04-26 13:32:21'),
(17, 'Trick side 2', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 11, 'image', '2018-04-26 13:32:21'),
(18, 'Tricks side 1', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 13, 'image', '2018-04-26 13:32:21'),
(19, 'Tricks side 2', 'https://elmanawy.info/demo/gusto/cdn/ads/ad-blog.png', 'https://elmanawy.info/', '', 14, 'image', '2018-04-26 13:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `ad_locations`
--

DROP TABLE IF EXISTS `ad_locations`;
CREATE TABLE IF NOT EXISTS `ad_locations` (
  `ad_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ad_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_locations`
--

INSERT INTO `ad_locations` (`ad_location_id`, `name`) VALUES
(1, 'Home Footer'),
(2, 'Category Footer'),
(3, 'Recipes Footer'),
(4, 'Tricks Footer'),
(5, 'Home Side 1'),
(6, 'Recipe Side 1'),
(7, 'Trick Side 1'),
(8, 'Home Side 2'),
(9, 'Recipe Side 2'),
(10, 'Recipe Footer'),
(11, 'Trick Side 2'),
(12, 'Trick Footer'),
(13, 'Tricks Side 1'),
(14, 'Tricks Side 2');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `image` text,
  `short_description` text,
  `visits` int(11) DEFAULT '0',
  `meta_description` text,
  `permalink` varchar(300) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '0',
  `tags` text,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `description`, `image`, `short_description`, `visits`, `meta_description`, `permalink`, `updated`, `created`, `status`, `tags`) VALUES
(10, 'How to decorate cookies', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-1.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 414, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-1', '2019-05-17 21:38:00', '2018-01-11 01:54:36', '0', NULL),
(11, 'Make your own bread', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-2.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 506, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-2', '2019-05-17 21:38:00', '2018-01-12 02:54:36', '0', NULL),
(12, 'how to make sushi', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-3.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 1002, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-3', '2019-05-17 21:38:00', '2018-01-13 03:54:36', '0', NULL),
(13, 'how to be healthy', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-4.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 500, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-4', '2019-05-17 21:38:00', '2018-01-14 01:54:36', '0', NULL),
(14, 'Make your party', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-2.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 705, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-5', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL),
(15, 'how to make cup cakes', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-1.jpg', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis', 1214, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-6', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL),
(16, 'how to make sushi', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-3.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 159, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-7', '2019-05-17 21:38:00', '2018-01-13 03:54:36', '0', NULL),
(17, 'Make your party', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-2.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 713, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-8', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL),
(18, 'Make your own bread', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\njmhjmj\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-2.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 258, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-9', '2019-05-17 21:38:00', '2018-01-12 02:54:36', '0', NULL),
(19, 'how to be healthy', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-4.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 125, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-10', '2019-05-17 21:38:00', '2018-01-14 01:54:36', '0', NULL),
(20, 'How to decorate cookies', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-1.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 693, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-11', '2019-05-17 21:38:00', '2018-01-11 01:54:36', '0', NULL),
(21, 'Make your party', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-4.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 985, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-12', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL),
(22, 'How to decorate cookies', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-5.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 414, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-13', '2019-05-17 21:38:00', '2018-01-11 01:54:36', '0', NULL),
(24, 'Make your own bread', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-5.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 3, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-122', '2019-05-26 21:15:37', '2019-05-17 21:36:59', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `meta_description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `icon_id`, `title`, `permalink`, `meta_description`) VALUES
(1, 17, 'Cakes', 'cakes', 'tyhthtyh'),
(2, 16, 'Snakes', 'snakes', 'ewdwed'),
(3, 15, 'Kids', 'kids', 'ewdwed'),
(4, 65, 'Pizza', 'pizza', 'ewdwed'),
(5, 11, 'Healthy', 'healthy', 'tyhthtyh'),
(6, 7, 'soups', 'soups', 'ewdwed'),
(7, 25, 'Salad', 'saladd', 'ewdwed'),
(8, 64, 'Fish', 'fish', 'ewdwed'),
(9, 56, 'Beef', 'beef', 'ewdwed'),
(10, 55, 'Cookie', 'cookie', 'ewdwed'),
(11, 9, 'Souchi', 'souchi', 'ewdwed'),
(12, 10, 'seafood', 'seafood', 'ewdwed'),
(13, 67, 'Chickens', 'chickens', ''),
(14, 2, 'Drinks', 'drinks', ''),
(15, 40, 'Shrim', 'shirm', 'ewdwed'),
(16, 18, 'Bread', 'bread', 'ewdwed'),
(17, 5, 'Equipment', 'Equipment', ''),
(18, 66, 'Pork', 'pork', 'ewdwed'),
(19, 1, 'Pasta', 'pats', 'ewdwed'),
(20, 4, 'Cookies', 'cookies', 'tyhthtyh'),
(21, 57, 'Coffee', 'cofeee', 'coffee'),
(22, 70, 'Tea', 'tea', ''),
(23, 60, 'cupcakes', 'cupcakes', ''),
(24, 6, 'Ice Cream', 'ice-cream', ''),
(25, 5, 'Category', 'ice-cream2', ''),
(26, 3, 'Category2', 'ice-cream3', ''),
(27, 2, 'Category3', 'ice-cream4', ''),
(28, 8, 'Category4', 'ice-cream5', ''),
(29, 7, 'Category5', 'ice-cream6', ''),
(30, 10, 'Category6', 'ice-cream7', '');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
CREATE TABLE IF NOT EXISTS `icons` (
  `icon_id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`icon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon`) VALUES
(1, 'icon icon-themeenergy_pasta'),
(2, 'icon icon-themeenergy_margarita2'),
(3, 'icon icon-themeenergy_meat'),
(4, 'icon icon-themeenergy_eggs'),
(5, 'icon icon-themeenergy_blender'),
(6, 'icon icon-themeenergy_turkey'),
(7, 'icon icon-themeenergy_soup2'),
(8, 'icon icon-themeenergy_eggplant'),
(9, 'icon icon-themeenergy_sushi'),
(10, 'icon icon-themeenergy_fish2'),
(11, 'icon icon-themeenergy_biceps'),
(12, 'icon icon-themeenergy_lollipop'),
(13, 'icon icon-themeenergy_peper'),
(14, 'icon icon-themeenergy_pizza-slice'),
(15, 'icon icon-themeenergy_happy'),
(16, 'icon icon-themeenergy_fried-potatoes'),
(17, 'icon icon-themeenergy_cake'),
(18, 'icon icon-themeenergy_beef'),
(19, 'icon icon-themeenergy_love-drinks'),
(20, 'icon icon-themeenergy_love-coffee'),
(21, 'icon icon-themeenergy_wine-bottle'),
(22, 'icon icon-themeenergy_banana'),
(23, 'icon icon-themeenergy_avocado'),
(24, 'icon icon-themeenergy_apple'),
(25, 'icon icon-themeenergy_basilico'),
(26, 'icon icon-themeenergy_cabbage'),
(27, 'icon icon-themeenergy_carrot'),
(28, 'icon icon-themeenergy_cherries'),
(29, 'icon icon-themeenergy_eggplant'),
(30, 'icon icon-themeenergy_corn'),
(31, 'icon icon-themeenergy_garlic'),
(32, 'icon icon-themeenergy_grapes'),
(33, 'icon icon-themeenergy_hazelnut'),
(34, 'icon icon-themeenergy_lemon'),
(35, 'icon icon-themeenergy_lettuce'),
(36, 'icon icon-themeenergy_onion'),
(37, 'icon icon-themeenergy_peach'),
(38, 'icon icon-themeenergy_pear'),
(39, 'icon icon-themeenergy_peas'),
(40, 'icon icon-themeenergy_pepper'),
(41, 'icon icon-themeenergy_pineapple'),
(42, 'icon icon-themeenergy_potato'),
(43, 'icon icon-themeenergy_plum'),
(44, 'icon icon-themeenergy_pineapple'),
(45, 'icon icon-themeenergy_radish'),
(46, 'icon icon-themeenergy_strawberry'),
(47, 'icon icon-themeenergy_tomato'),
(48, 'icon icon-themeenergy_watermelon-slice'),
(59, 'icon icon-themeenergy_coffee-machine'),
(58, 'icon icon-themeenergy_coffee-3'),
(57, 'icon icon-themeenergy_coffee-2'),
(56, 'icon icon-themeenergy_beef2'),
(55, 'icon icon-themeenergy_cake3'),
(60, 'icon icon-themeenergy_cupcake'),
(61, 'icon icon-themeenergy_ice-cream3'),
(62, 'icon icon-themeenergy_mushroom2'),
(63, 'icon icon-themeenergy_margarita2'),
(64, 'icon icon-themeenergy_fish3'),
(65, 'icon icon-themeenergy_pizza-2'),
(66, 'icon icon-themeenergy_pasta2'),
(67, 'icon icon-themeenergy_roasted-chicken'),
(68, 'icon icon-themeenergy_scliced-mushroom'),
(69, 'icon icon-themeenergy_tea-bag'),
(70, 'icon icon-themeenergy_tea');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created`) VALUES
(1, 'admin@admin.com', '2019-05-18 02:18:21'),
(2, 'admin@advghghvmin.com', '2019-05-18 02:18:21'),
(4, 'admixn@admixn.com', '2019-05-18 02:18:21'),
(5, 'meme@gmail.com', '2019-05-18 02:18:21'),
(6, 'admifffn@admin.com', '2019-05-18 02:18:21'),
(7, 'vdfvfd@dkv.vcvff', '2019-05-18 02:18:21'),
(8, 'admin@admsdsdin.com', '2019-05-18 02:18:21'),
(9, 'admin@admin.com4444444444', '2019-05-18 02:18:21'),
(10, 'admin@admin.rrrr', '2019-05-18 02:18:21'),
(11, 'admin@admin.comttttttttttttttt', '2019-05-18 02:18:21'),
(12, 'admin@rrrrrrrrrrardmin.com', '2019-05-18 02:18:21'),
(13, 'admin@adffmin.com', '2019-05-18 02:18:21'),
(14, 'maroo@n.com', '2019-05-18 02:18:21'),
(15, 'marwa@elmanawy.info', '2019-05-18 02:18:21'),
(16, 'a.khalid@tocaan.com', '2019-05-18 02:18:21'),
(17, 'marwa.elmenawy91rrrtr@gmail.com', '2019-05-18 02:18:21'),
(18, 'marwa.elmanawy91@gmail.com', '2019-05-18 02:18:21'),
(19, 'marwa.elmanxxxawy91@gmail.com', '2019-05-18 02:18:21'),
(20, 'admin@apoopodmin.com', '2019-05-18 02:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `permalink`, `content`) VALUES
(4, 'Terms & Condition', 'terms-and-condition', '<p>1. Hi, we&rsquo;re Marocms&nbsp;and welcome! We&rsquo;re happy to have you here and we hope you enjoy your stay. When we say &lsquo;<strong>we</strong>&rsquo;, &lsquo;<strong>us</strong>&rsquo; or &lsquo;<strong>elmanawy</strong>&rsquo; it&rsquo;s because that&rsquo;s who we are and we own and run the&nbsp;<strong>El-Manawy</strong>&nbsp;sites.</p>\r\n\r\n<p>2. Envato&rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&nbsp;<strong>member</strong>&nbsp;of our community. You will have&nbsp;that will allow you to buy and sell&nbsp;<strong>items</strong>&nbsp;like the ones found on the Envato Market sites and make other related transactions. You can also buy items on Envato Market as a&nbsp;<strong>Guest</strong>.</p>\r\n\r\n<p>3. The Envato Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Envato Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Envato Makret account, any transactions are logged on your member&rsquo;s statement, which records the payments made by you to authors via Envato Market (as a&nbsp;<strong>buyer</strong>) and by buyers via Envato Market to you (as an&nbsp;<strong>author</strong>). If you buy items as a Guest, then you will be emailed details of those payments.</p>\r\n\r\n<p>4. The items on Envato Market are owned by the authors, not by us. The items on Envato Market are uploaded at the direction of the author. We provide a platform; we do not take ownership of the items.</p>\r\n\r\n<p>5. During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&rsquo;t accept the terms then we&rsquo;ll be sad, but you will need to leave because your presence on and use of the Envato Market sites is conditional on your acceptance to be bound by these terms, the&nbsp;<a href=\"https://envato.com/privacy\">Privacy Policy</a>&nbsp;and the&nbsp;<a href=\"https://themeforest.net/legal/acceptable_use_policy\">Acceptable Use Policy</a>&nbsp;whether you become a member or not.</p>\r\n\r\n<h2>How browsing and membership works</h2>\r\n\r\n<p>6.&nbsp;<strong>Browsing</strong>: You need to be 13 years or over to browse the Envato Market sites. We don&rsquo;t knowingly collect any information from anyone aged 13 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Envato Market sites whether or not you&rsquo;re a member.</p>\r\n\r\n<h3>Membership</h3>\r\n\r\n<p>7.&nbsp;<strong>Age</strong>: You need to be 18 years or over to become a member or to buy items as a Guest. If you&rsquo;re under 18 you will need to get a parent or guardian to buy items as a Guest or use the account of a parent or legal guardian who is at least 18 years of age, with their permission, and this adult will be responsible for all your activities.</p>\r\n\r\n<p>8.&nbsp;<strong>Envato Account</strong>: Membership is free. When you become a member you get an Envato Market account that is accessible from any of our Envato Market sites (and is also your Envato account for other Envato services). Your membership will allow you to &lsquo;buy&rsquo; (license) items from authors, participate in our online forums, and generally contribute to our ecosystem of Envato Market sites that help people get creative. Membership also gives you the opportunity to become an author (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#becoming-an-author\"><strong>section 30 &ndash; Becoming an Author</strong></a>) or earn referral income (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#referrals\"><strong>section 10 &ndash; Referrals</strong></a>).</p>\r\n\r\n<p>9.&nbsp;<strong>Guest Checkout</strong>: You may purchase an item from any of our Envato Market sites as a Guest. Unless otherwise stated, these terms and conditions apply to Guests in the same way they apply to buyers who have an Envato Market account. Guests don&rsquo;t receive an Envato Market account, but can of course register for one at any time. If you buy items as a Guest, your access to our ecosystem will be limited.</p>\r\n\r\n<p>10.&nbsp;<strong>Your responsibility</strong>: You promise that information you give us is true, accurate and complete and, if you sign up for an Envato Market account, that you will keep your account information up-to-date (including a current email address). Your membership is not transferrable. You are responsible for any use of the Envato Market sites including any activity that occurs in conjunction with your username and password, if you have an Envato Market account, so keep your password secure and don&rsquo;t let any other person use your username or password. If you realise there&rsquo;s any unauthorized use of your password or any breach of security you need to let us know immediately.</p>'),
(5, 'Licenses', 'licenses', '<p>1. Hi, we&rsquo;re Marocms&nbsp;and welcome! We&rsquo;re happy to have you here and we hope you enjoy your stay. When we say &lsquo;<strong>we</strong>&rsquo;, &lsquo;<strong>us</strong>&rsquo; or &lsquo;<strong>elmanawy</strong>&rsquo; it&rsquo;s because that&rsquo;s who we are and we own and run the&nbsp;<strong>El-Manawy</strong>&nbsp;sites.</p>\r\n\r\n<p>2. Envato&rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&nbsp;<strong>member</strong>&nbsp;of our community. You will have&nbsp;that will allow you to buy and sell&nbsp;<strong>items</strong>&nbsp;like the ones found on the Envato Market sites and make other related transactions. You can also buy items on Envato Market as a&nbsp;<strong>Guest</strong>.</p>\r\n\r\n<p>3. The Envato Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Envato Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Envato Makret account, any transactions are logged on your member&rsquo;s statement, which records the payments made by you to authors via Envato Market (as a&nbsp;<strong>buyer</strong>) and by buyers via Envato Market to you (as an&nbsp;<strong>author</strong>). If you buy items as a Guest, then you will be emailed details of those payments.</p>\r\n\r\n<p>4. The items on Envato Market are owned by the authors, not by us. The items on Envato Market are uploaded at the direction of the author. We provide a platform; we do not take ownership of the items.</p>\r\n\r\n<p>5. During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&rsquo;t accept the terms then we&rsquo;ll be sad, but you will need to leave because your presence on and use of the Envato Market sites is conditional on your acceptance to be bound by these terms, the&nbsp;<a href=\"https://envato.com/privacy\">Privacy Policy</a>&nbsp;and the&nbsp;<a href=\"https://themeforest.net/legal/acceptable_use_policy\">Acceptable Use Policy</a>&nbsp;whether you become a member or not.</p>\r\n\r\n<h2>How browsing and membership works</h2>\r\n\r\n<p>6.&nbsp;<strong>Browsing</strong>: You need to be 13 years or over to browse the Envato Market sites. We don&rsquo;t knowingly collect any information from anyone aged 13 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Envato Market sites whether or not you&rsquo;re a member.</p>\r\n\r\n<h3>Membership</h3>\r\n\r\n<p>7.&nbsp;<strong>Age</strong>: You need to be 18 years or over to become a member or to buy items as a Guest. If you&rsquo;re under 18 you will need to get a parent or guardian to buy items as a Guest or use the account of a parent or legal guardian who is at least 18 years of age, with their permission, and this adult will be responsible for all your activities.</p>\r\n\r\n<p>8.&nbsp;<strong>Envato Account</strong>: Membership is free. When you become a member you get an Envato Market account that is accessible from any of our Envato Market sites (and is also your Envato account for other Envato services). Your membership will allow you to &lsquo;buy&rsquo; (license) items from authors, participate in our online forums, and generally contribute to our ecosystem of Envato Market sites that help people get creative. Membership also gives you the opportunity to become an author (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#becoming-an-author\"><strong>section 30 &ndash; Becoming an Author</strong></a>) or earn referral income (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#referrals\"><strong>section 10 &ndash; Referrals</strong></a>).</p>\r\n\r\n<p>9.&nbsp;<strong>Guest Checkout</strong>: You may purchase an item from any of our Envato Market sites as a Guest. Unless otherwise stated, these terms and conditions apply to Guests in the same way they apply to buyers who have an Envato Market account. Guests don&rsquo;t receive an Envato Market account, but can of course register for one at any time. If you buy items as a Guest, your access to our ecosystem will be limited.</p>\r\n\r\n<p>10.&nbsp;<strong>Your responsibility</strong>: You promise that information you give us is true, accurate and complete and, if you sign up for an Envato Market account, that you will keep your account information up-to-date (including a current email address). Your membership is not transferrable. You are responsible for any use of the Envato Market sites including any activity that occurs in conjunction with your username and password, if you have an Envato Market account, so keep your password secure and don&rsquo;t let any other person use your username or password. If you realise there&rsquo;s any unauthorized use of your password or any breach of security you need to let us know immediately.</p>'),
(6, 'Privacy Policy  ', 'privacy-policy', '<p>1. Hi, we&rsquo;re Marocms&nbsp;and welcome! We&rsquo;re happy to have you here and we hope you enjoy your stay. When we say &lsquo;<strong>we</strong>&rsquo;, &lsquo;<strong>us</strong>&rsquo; or &lsquo;<strong>elmanawy</strong>&rsquo; it&rsquo;s because that&rsquo;s who we are and we own and run the&nbsp;<strong>El-Manawy</strong>&nbsp;sites.</p>\r\n\r\n<p>2. Envato&rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&nbsp;<strong>member</strong>&nbsp;of our community. You will have&nbsp;that will allow you to buy and sell&nbsp;<strong>items</strong>&nbsp;like the ones found on the Envato Market sites and make other related transactions. You can also buy items on Envato Market as a&nbsp;<strong>Guest</strong>.</p>\r\n\r\n<p>3. The Envato Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Envato Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Envato Makret account, any transactions are logged on your member&rsquo;s statement, which records the payments made by you to authors via Envato Market (as a&nbsp;<strong>buyer</strong>) and by buyers via Envato Market to you (as an&nbsp;<strong>author</strong>). If you buy items as a Guest, then you will be emailed details of those payments.</p>\r\n\r\n<p>4. The items on Envato Market are owned by the authors, not by us. The items on Envato Market are uploaded at the direction of the author. We provide a platform; we do not take ownership of the items.</p>\r\n\r\n<p>5. During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&rsquo;t accept the terms then we&rsquo;ll be sad, but you will need to leave because your presence on and use of the Envato Market sites is conditional on your acceptance to be bound by these terms, the&nbsp;<a href=\"https://envato.com/privacy\">Privacy Policy</a>&nbsp;and the&nbsp;<a href=\"https://themeforest.net/legal/acceptable_use_policy\">Acceptable Use Policy</a>&nbsp;whether you become a member or not.</p>\r\n\r\n<h2>How browsing and membership works</h2>\r\n\r\n<p>6.&nbsp;<strong>Browsing</strong>: You need to be 13 years or over to browse the Envato Market sites. We don&rsquo;t knowingly collect any information from anyone aged 13 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Envato Market sites whether or not you&rsquo;re a member.</p>\r\n\r\n<h3>Membership</h3>\r\n\r\n<p>7.&nbsp;<strong>Age</strong>: You need to be 18 years or over to become a member or to buy items as a Guest. If you&rsquo;re under 18 you will need to get a parent or guardian to buy items as a Guest or use the account of a parent or legal guardian who is at least 18 years of age, with their permission, and this adult will be responsible for all your activities.</p>\r\n\r\n<p>8.&nbsp;<strong>Envato Account</strong>: Membership is free. When you become a member you get an Envato Market account that is accessible from any of our Envato Market sites (and is also your Envato account for other Envato services). Your membership will allow you to &lsquo;buy&rsquo; (license) items from authors, participate in our online forums, and generally contribute to our ecosystem of Envato Market sites that help people get creative. Membership also gives you the opportunity to become an author (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#becoming-an-author\"><strong>section 30 &ndash; Becoming an Author</strong></a>) or earn referral income (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#referrals\"><strong>section 10 &ndash; Referrals</strong></a>).</p>\r\n\r\n<p>9.&nbsp;<strong>Guest Checkout</strong>: You may purchase an item from any of our Envato Market sites as a Guest. Unless otherwise stated, these terms and conditions apply to Guests in the same way they apply to buyers who have an Envato Market account. Guests don&rsquo;t receive an Envato Market account, but can of course register for one at any time. If you buy items as a Guest, your access to our ecosystem will be limited.</p>\r\n\r\n<p>10.&nbsp;<strong>Your responsibility</strong>: You promise that information you give us is true, accurate and complete and, if you sign up for an Envato Market account, that you will keep your account information up-to-date (including a current email address). Your membership is not transferrable. You are responsible for any use of the Envato Market sites including any activity that occurs in conjunction with your username and password, if you have an Envato Market account, so keep your password secure and don&rsquo;t let any other person use your username or password. If you realise there&rsquo;s any unauthorized use of your password or any breach of security you need to let us know immediately.</p>'),
(7, 'About Us', 'about-us', '<p>lll</p><p>1. Hi, we&rsquo;re Marocms&nbsp;and welcome! We&rsquo;re happy to have you here and we hope you enjoy your stay. When we say &lsquo;<strong>we</strong>&rsquo;, &lsquo;<strong>us</strong>&rsquo; or &lsquo;<strong>elmanawy</strong>&rsquo; it&rsquo;s because that&rsquo;s who we are and we own and run the&nbsp;<strong>El-Manawy</strong>&nbsp;sites.</p>\r\n\r\n<p>2. Envato&rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&nbsp;<strong>member</strong>&nbsp;of our community. You will have&nbsp;that will allow you to buy and sell&nbsp;<strong>items</strong>&nbsp;like the ones found on the Envato Market sites and make other related transactions. You can also buy items on Envato Market as a&nbsp;<strong>Guest</strong>.</p>\r\n\r\n<p>3. The Envato Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Envato Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Envato Makret account, any transactions are logged on your member&rsquo;s statement, which records the payments made by you to authors via Envato Market (as a&nbsp;<strong>buyer</strong>) and by buyers via Envato Market to you (as an&nbsp;<strong>author</strong>). If you buy items as a Guest, then you will be emailed details of those payments.</p>\r\n\r\n<p>4. The items on Envato Market are owned by the authors, not by us. The items on Envato Market are uploaded at the direction of the author. We provide a platform; we do not take ownership of the items.</p>\r\n\r\n<p>5. During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&rsquo;t accept the terms then we&rsquo;ll be sad, but you will need to leave because your presence on and use of the Envato Market sites is conditional on your acceptance to be bound by these terms, the&nbsp;<a href=\"https://envato.com/privacy\">Privacy Policy</a>&nbsp;and the&nbsp;<a href=\"https://themeforest.net/legal/acceptable_use_policy\">Acceptable Use Policy</a>&nbsp;whether you become a member or not.</p>\r\n\r\n<h2>How browsing and membership works</h2>\r\n\r\n<p>6.&nbsp;<strong>Browsing</strong>: You need to be 13 years or over to browse the Envato Market sites. We don&rsquo;t knowingly collect any information from anyone aged 13 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Envato Market sites whether or not you&rsquo;re a member.</p>\r\n\r\n<h3>Membership</h3>\r\n\r\n<p>7.&nbsp;<strong>Age</strong>: You need to be 18 years or over to become a member or to buy items as a Guest. If you&rsquo;re under 18 you will need to get a parent or guardian to buy items as a Guest or use the account of a parent or legal guardian who is at least 18 years of age, with their permission, and this adult will be responsible for all your activities.</p>\r\n\r\n<p>8.&nbsp;<strong>Envato Account</strong>: Membership is free. When you become a member you get an Envato Market account that is accessible from any of our Envato Market sites (and is also your Envato account for other Envato services). Your membership will allow you to &lsquo;buy&rsquo; (license) items from authors, participate in our online forums, and generally contribute to our ecosystem of Envato Market sites that help people get creative. Membership also gives you the opportunity to become an author (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#becoming-an-author\"><strong>section 30 &ndash; Becoming an Author</strong></a>) or earn referral income (see&nbsp;<a href=\"https://themeforest.net/legal/market?_ga=2.62858988.1166415882.1497802320-1861897004.1493907713#referrals\"><strong>section 10 &ndash; Referrals</strong></a>).</p>\r\n\r\n<p>9.&nbsp;<strong>Guest Checkout</strong>: You may purchase an item from any of our Envato Market sites as a Guest. Unless otherwise stated, these terms and conditions apply to Guests in the same way they apply to buyers who have an Envato Market account. Guests don&rsquo;t receive an Envato Market account, but can of course register for one at any time. If you buy items as a Guest, your access to our ecosystem will be limited.</p>\r\n\r\n<p>10.&nbsp;<strong>Your responsibility</strong>: You promise that information you give us is true, accurate and complete and, if you sign up for an Envato Market account, that you will keep your account information up-to-date (including a current email address). Your membership is not transferrable. You are responsible for any use of the Envato Market sites including any activity that occurs in conjunction with your username and password, if you have an Envato Market account, so keep your password secure and don&rsquo;t let any other person use your username or password. If you realise there&rsquo;s any unauthorized use of your password or any breach of security you need to let us know immediately.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `description` text,
  `serves` varchar(5) NOT NULL,
  `prepare_time` varchar(11) DEFAULT NULL,
  `cooking_time` varchar(11) DEFAULT NULL,
  `calories` varchar(5) NOT NULL,
  `directions` text,
  `featured_image` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `gallery` longtext,
  `visited` int(11) DEFAULT '0',
  `meta_description` text,
  `ingredients` text,
  `difficulty` enum('easy','medium','hard') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `user_id`, `category_id`, `title`, `permalink`, `description`, `serves`, `prepare_time`, `cooking_time`, `calories`, `directions`, `featured_image`, `created`, `updated`, `gallery`, `visited`, `meta_description`, `ingredients`, `difficulty`, `status`, `video`) VALUES
(2, 1, 2, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine-3', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-2.jpg', '2018-01-15 01:54:36', '2018-02-09 23:27:39', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 44, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(3, 10, 2, 'Spicy Grilled Shrimp', 'Spicy-Grilled-Shrimp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '4', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-3.jpg', '2018-01-15 01:54:36', '2018-02-09 23:27:54', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 78, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(4, 7, 2, 'Glenn\'s Marinated Pork Shoulder\r\n', 'Choclate-Cake', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-4.jpg', '2018-01-15 01:54:36', '2018-02-09 23:28:08', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 67, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(5, 11, 2, 'Baked Coconut Shrimp', 'Baked-Coconut-Shrimp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-5.jpg', '2018-01-15 01:54:36', '2018-02-09 23:28:25', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 102, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(6, 8, 8, 'Simple Garlic Shrimp', 'Simple-Garlic-Shrimp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-7.jpg', '2018-01-15 01:54:36', '2018-02-09 23:26:56', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 209, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(7, 2, 4, 'Beef Stifado', 'Beef-Stifado-2', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-6.jpg', '2018-01-15 01:54:36', '2018-02-09 23:26:33', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 85, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(8, 1, 5, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine-2', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-8.jpg', '2018-01-15 01:54:36', '2018-02-09 23:26:11', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 60, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(9, 1, 2, 'Happy Shrimp', 'Happy-Shrimp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-9.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:47', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 91, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(10, 2, 4, 'Glenn\'s Marinated Pork Shoulder', 'Beef-Stifado', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'image-10.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:24', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 74, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(11, 1, 2, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-11.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:03', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 290, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(12, 5, 4, 'Shrimp Chowder', 'Shrimp-Chowder', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '8', '30 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-12.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:48', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(13, 2, 2, 'Shrimp Scampi Bake', 'Shrimp-Scampi-Bake3', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '2', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-13.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:34', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 62, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(14, 8, 2, 'Shrimp Scampi with Pasta', 'Shrimp-Scampi-with-Pasta', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '40 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-14.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:08', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 65, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(15, 1, 5, 'Sweet, Hot Mustard Slaw', 'Beef-Stifado7', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '25 min', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-15.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 34, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(16, 11, 4, 'Fluffy Pancakes', 'Fluffy-Pancakes', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '4', '2 hrs', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-16.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 151, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(17, 3, 4, 'Simple Garlic Shrimp', 'Simple-Garlic-Shrimp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '3', '20 min', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-17.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 189, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(18, 6, 4, 'Chicken Parmesan', 'Chicken-Parmesan', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '2', '20 min', '40 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-18.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 230, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(19, 1, 4, 'Grilled Marinated Shrimp', 'Grilled-Marinated-Shrimp-1', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '7', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-19.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 300, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(20, 6, 3, 'Marinated Grilled Shrimp', 'Grilled-Grilled-Shrimp-8', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '4', '1 hr', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-20.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 804, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(21, 1, 3, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '50 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-21.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 540, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(22, 4, 3, 'Shrimp Scampi Bake', 'Shrimp-Scampi-Bake', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '2', '20 min', '40 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-1.jpg', '2018-01-15 01:54:36', '2018-09-02 10:27:09', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 417, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(26, 1, 1, 'Shrimp Scampi with Padsta', 'Simple-Garlic-Shridfmp', '1212', '3', '12', '1212', '3', '212', 'marwaelmanawy-i-cheef-recipe-2.jpg', '2018-09-02 10:50:22', NULL, '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 7, '112', '21', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(27, 2, 4, 'Lemon Cheesecake Mousse', 'Beef-Stifado22', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-10.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:24', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 78, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(28, 5, 4, 'Shrimp Chowder', 'Shrimp-Chowder33', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '8', '30 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-3.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:48', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(29, 1, 5, 'Tortellini with Peas and Pancetta', 'Beef-Stifado4', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '25 min', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-4.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 33, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(30, 1, 4, 'Grilled Marinated Shrimp', 'Grilled-Marinated-Shrimp-22', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '7', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-5.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 300, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(31, 1, 2, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine7', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-6.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:03', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 287, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(32, 6, 2, 'Grilled Panzanella Beef Kabobs', 'Happy-Shrimp9', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-9.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:47', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 90, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(33, 1, 4, 'Fluffy Pancakes', 'Fluffy-Pancakes9', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '4', '2 hrs', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-7.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 151, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(34, 3, 4, 'Simple Garlic Shrimp', 'Simple-Garlic-Shrimp4', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '3', '20 min', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-8.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 189, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(35, 1, 4, 'Chicken Parmesan', 'Chicken-Parmesan2', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '2', '20 min', '40 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-10.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 230, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(36, 10, 3, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine4', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '50 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-21.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 538, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI');
INSERT INTO `recipes` (`recipe_id`, `user_id`, `category_id`, `title`, `permalink`, `description`, `serves`, `prepare_time`, `cooking_time`, `calories`, `directions`, `featured_image`, `created`, `updated`, `gallery`, `visited`, `meta_description`, `ingredients`, `difficulty`, `status`, `video`) VALUES
(37, 8, 2, 'Shrimp Scampi with Pasta', 'Shrimp-Scampi-with-Pasta11', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '40 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-22.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:08', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 65, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(38, 9, 5, 'Buttermilk Ranch Potato Salad', 'Beef-Stifado', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '25 min', '1 hr', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-23.jpg', '2018-01-15 01:54:36', '2018-02-09 11:37:19', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 34, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(39, 5, 4, 'Shrimp Chowder', 'Shrimp-Chowder8', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '8', '30 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-24.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:48', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(40, 5, 4, 'Best Chocolate Chip Cookies', 'Shrimp-Chowder9', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '8', '30 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-25.jpg', '2018-01-15 01:54:36', '2018-02-09 23:24:48', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(41, 10, 2, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine9', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img32.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:03', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 287, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(42, 10, 2, 'Baked Coconut Shrimp', 'Baked-Coconut-Shrimp7', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img31.jpg', '2018-01-15 01:54:36', '2018-02-09 23:28:25', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 105, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(43, 8, 8, 'Simple Garlic Shrimp', 'Simple-Garlic-Shrimp9', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img30.jpg', '2018-01-15 01:54:36', '2018-02-09 23:26:56', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 208, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(44, 7, 2, 'Choclate Cake', 'Choclate-Cakess', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img29.jpg', '2018-01-15 01:54:36', '2018-02-09 23:28:08', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 61, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(45, 1, 2, 'Garlic Shrimp Linguine', 'Garlic-Shrimp-Linguine-77', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img28.jpg', '2018-01-15 01:54:36', '2018-02-09 23:27:39', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 52, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(46, 1, 2, 'Spicy Grilled Shrimp', 'Spicy-Grilled-Shrimp55', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '4', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'img27.jpg', '2018-01-15 01:54:36', '2018-02-09 23:27:54', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 80, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(47, 1, 2, 'Happy Shrimp', 'Happy-Shrimp7', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-9.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:47', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 102, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(48, 6, 2, 'World\'s Best Lasagna', 'Happy-Shrimp88', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '5', '20 min', '20 min', '632', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-9.jpg', '2018-01-15 01:54:36', '2018-02-09 23:25:47', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 147, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(49, 1, 4, 'Garlic Shrimp Linguine', 'Shrimp-Chowderrtt', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '7', '20 min', '50 min', '895', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-12.jpg', '2018-01-15 01:54:36', '2019-06-06 11:23:03', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 134, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI'),
(50, 1, 1, 'Grilled Marinated Shrimp', 'Shrimp-Chowderrtt-mayp', 'This is a very basic beef stew. It’s easy, delicious and inexpensive to make. While there are hundreds of variations of this traditional recipe, it’s hard to improve on this version’s savory and comforting goodness.', '8', '30 min', '7 min', '555', 'In a Dutch oven, heat oil over medium heat until hot, but not smoking. Pat the meat dry with paper towels and brown in batches, transferring the meat with a slotted spoon to a bowl as they are done.\r\nIn the fat remaining in the pot, cook the onions until softened, about 5 minutes\r\nReturn meat to the pot with any juices in the bowl and add the tomatoes with juice, chiles, beer, beef broth, oregano, cumin, and Worcestershire sauce. Season with salt and pepper to taste.\r\nBring to a boil and reduce heat. Simmer, partially covered, for 2 1/2 hours or until meat is tender.', 'marwaelmanawy-i-cheef-recipe-14.jpg', '2018-09-11 01:43:43', '2019-06-06 11:19:15', '[\"IRecipes_00881720015182112265_orig.jpg\",\"IRecipes_010900600151821122634_orig.jpg\",\"IRecipes_012888900151821122621_orig.jpg\"]', 23, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=kdkU0kn7yZI');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `default_value`, `required`) VALUES
('behance', 'www.behance.com', NULL, 0),
('contact_form_email', 'contact@email.com', NULL, 0),
('copyright', '2019 Gusto', NULL, 0),
('default_timezone', 'Africa/Cairo', 'Africa/Cairo', 0),
('description', 'Gusto a powerful platform to manage recipes for food specific websites, that doesn’t require any experience on web development, very easy to use and customize', NULL, 0),
('direction', 'ltr', 'ltr', 0),
('disqus_user', '', NULL, 0),
('dribbble', 'https://dribbble.com/', NULL, 0),
('facebook', 'https://www.facebook.com/marwa.elmanawy.info', 'facebook', 0),
('favicon', 'favicon.png', NULL, 1),
('flickr', 'http://flicker.com', NULL, 0),
('google_analytics_id', '', NULL, 0),
('google_key', NULL, NULL, 0),
('google_secret_key', NULL, NULL, 0),
('instagram', 'https://www.instagram.com/marwa.elmanawy/', NULL, 0),
('language', 'english', 'english', 1),
('logo', 'logo.png', NULL, 1),
('meta_description', 'Gusto a powerful platform to manage recipes for food specific websites, that doesn’t require any experience on web development, very easy to use and customize', 'desc', 0),
('pagination_limit', '20', NULL, 0),
('phone', '0213236598233', '0', 0),
('pinterest', 'https://pinterest.com/', NULL, 0),
('reddit', 'http://reddit.com', NULL, 0),
('snapchat', 'ddfdf', NULL, 0),
('soundcloud', 'https://soundcloud.com/', NULL, 0),
('support', '0123456789', NULL, 0),
('title', 'Gusto Recipes CMS', 'I-Chef', 1),
('tumblr', 'https://tumblr.com/', NULL, 0),
('twitter', 'https://twitter.com/marwa_elmanawy', NULL, 0),
('twitter_image', '', NULL, 0),
('vimeo', 'https://vimeo.com/', NULL, 0),
('vine', 'https://vine.com/', NULL, 0),
('visitors', '0', '0', 0),
('webmaster_email', 'info@gusto.com', NULL, 0),
('whatsapp', 'https://api.whatsapp.com/send?phone=0123456789', NULL, 0),
('youtube', 'https://www.youtube.com/channel/UCTSXnKoLgfZZk2MN_jLUOnA?view_as=subscriber', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` text,
  `description` text,
  `recipe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `title`, `image`, `description`, `recipe_id`) VALUES
(4, 'Choclate Tea Cream', 'sliderA_01.jpg', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 2),
(5, 'Shrimp Scampi with Pasta', 'sliderA_02.jpg', 'Integer non dapibus fermentum nibh volutpat', 11),
(6, 'Garlic Shrimp Linguine', 'sliderA_03.jpg', 'Integer non dapibus fermentum nibh volutpat', 10),
(7, 'Choclate Cake Cream', 'sliderA_04.jpg', 'Integer non dapibus fermentum nibh volutpat', 15),
(8, 'Shrimp Scampi Bake', 'sliderA_011.jpg', 'Integer non dapibus fermentum nibh volutpat', 17),
(9, 'Choclate Cake Cream', 'sliderA_04.jpg', 'Integer non dapibus fermentum nibh volutpat', 15);

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
CREATE TABLE IF NOT EXISTS `usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`usergroup_id`, `title`) VALUES
(1, 'Admin'),
(2, 'Normal User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `visited` int(11) DEFAULT '0',
  `email_appear` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `usergroup_id`, `username`, `email`, `firstname`, `lastname`, `image`, `password`, `country_id`, `gender`, `status`, `created`, `description`, `visited`, `email_appear`) VALUES
(1, 1, 'maroo', 'admin@admin.com', 'Marwa', 'El-Manawy', '1.jpg', 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 28, 1),
(2, 2, 'maro239', 'msswsw@m.m', 'Tarek', 'Karl', '2.jpg', 'e10adc3949ba59abbe56e057f20f883e', 2, 'female', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 3, 0),
(3, 2, 'anna', 'frssfr@gggg.com', 'Eppo', 'Maro', '3.jpg', 'e10adc3949ba59abbe56e057f20f883e', 3, 'female', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 2, 0),
(4, 2, 'ssssss', 'ssyyys@fff.com', 'Semem', 'Laky', '4.jpg', 'e10adc3949ba59abbe56e057f20f883e', 4, 'female', 'active', '2018-08-15 03:42:09', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(5, 1, 'elisa lken', 'yyyyyr@gggg.com', 'John', 'Mirl', '5.jpg', 'e10adc3949ba59abbe56e057f20f883e', 5, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 9, 0),
(6, 2, 'sendrilla', 'sswsdwm@m.m', 'Lelo', 'Memo', '6.jpg', 'e10adc3949ba59abbe56e057f20f883e', 6, 'female', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 12, 0),
(7, 2, 'tata', 'm@m.m', 'Seseo', 'Soko', '7.jpg', 'e10adc3949ba59abbe56e057f20f883e', 7, 'male', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 4, 0),
(8, 2, 'koko', 'oooo@gggg.com', 'Mark', 'Leo', '8.jpg', 'e10adc3949ba59abbe56e057f20f883e', 8, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(9, 2, 'merida', 'pppp@gggg.com', 'Antonio', 'Mark', '9.jpg', 'e10adc3949ba59abbe56e057f20f883e', 9, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(10, 2, 'belle', 'sss@fff.com', 'Sara', 'Haksi', '10.jpg', 'e10adc3949ba59abbe56e057f20f883e', 10, 'male', 'active', '2018-08-15 03:42:09', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 1, 0),
(11, 2, 'kokkemo', 'kokomomo@gmail.com', 'Will', 'Smith', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 19:14:35', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 7, 0),
(12, 2, 'memooos', 'memo@gogo.net', 'laver', 'mousa', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 21:19:11', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(13, 2, 'klklkl', 'admin@adooomin.com', 'Anna', 'Mikos', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 22:31:14', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(14, 2, 'deded', 'admin@admideden.com', 'victoria', 'Loran', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'female', 'active', '2018-09-10 22:32:43', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 1, 0),
(15, 2, 'memosref', 'memosred@yahoo.com', 'karlos', 'mina', NULL, 'e10adc3949ba59abbe56e057f20f883e', 63, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 6, 0),
(16, 2, 'mikka', 'marfwa.elmefnawy91@gmail.com', 'Mikka', 'Lorein', NULL, 'e10adc3949ba59abbe56e057f20f883e', 62, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(17, 2, 'kokooko', 'adfmin@afdmin.com', 'fffff', 'fffff', NULL, 'e10adc3949ba59abbe56e057f20f883e', 55, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(18, 2, 'hhty', 'gf@fh.lo', '', '', NULL, 'e10adc3949ba59abbe56e057f20f883e', 63, 'male', 'active', '2018-10-06 15:56:29', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
