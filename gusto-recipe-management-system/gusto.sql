-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2021 at 08:25 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `ads` (
  `ad_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `ad_location_id` int(11) DEFAULT NULL,
  `type` enum('code','image') DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `ad_locations` (
  `ad_location_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `visits` int(11) DEFAULT 0,
  `meta_description` text DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '0',
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `description`, `image`, `short_description`, `visits`, `meta_description`, `permalink`, `updated`, `created`, `status`, `tags`) VALUES
(10, 'How to decorate cookies', 'This is a two-step process. First you make a slightly thicker icing, called “border icing,” and use this to trace the outline around your cookie. Then you make a slightly looser icing, called “flood icing,” and fill in the area in the middle of the cookie. The border icing will work as a barrier to hold in the more liquidy flood icing, creating a completely smooth layer of icing over the cookie.\r\n\r\nYou can color your border and flood icing with food coloring. I like plain white borders and vibrant centers, but you could color the border and the flood icing with the same color or use contrasting colors. You can also draw designs inside the cookies using either the border icing or by dropping a contrasting color of flood icing over the the cookie after you’ve finished flooding it.\r\n\r\nI find that squeeze bottles work just as well as piping bags for decorating and are easier for us non-pro bakers to work with. Plus, they’re easy to clean! My favorites are little eight-ounce squeeze bottles that you can find at Michael’s and other craft stores. A small funnel makes it easy to fill them. The thicker border icing sometimes needs a little coaxing to get into the bottle — squeezing the bottle creates some suction that will help pull the icing into the bottle (check out the photos in the slideshow).\r\n\r\n', 'marwa-elmanawy-i-cheef-1.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 421, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-1', '2019-05-17 21:38:00', '2018-01-11 01:54:36', '0', NULL),
(11, 'Make your own bread', 'In a large bowl, dissolve the 1 TBSP of the sugar in warm water and then stir in yeast. Allow to proof until yeast resembles a creamy foam, about 5 minutes.\r\nMix remaining sugar, salt and oil into the yeast. Mix in flour one cup at a time. Dough should be tacky and clean the sides of the bowl save for a small part at the bottom. Too much flour added in yields a dry loaf of bread, so if you\'re worried you added too much, add a bit more hot water, until you get the correct consistency.\r\nKnead dough for 7 minutes. Place in a well oiled bowl, and turn dough to coat. Cover with a damp cloth. Allow to rise until doubled in bulk, about 1 hour.\r\nPunch dough down. Knead for 1 minute and divide in half. Shape into loaves and place into two greased 9x5 inch loaf pans. Allow to rise for 30 minutes, or until dough has risen 1 inch above pans.\r\nBake at 350 degrees F (175 degrees C) for 30-40 minutes. Cool, brush with butter and enjoy!', 'bread.jpg', 'easy bread making', 511, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-2', '2019-05-17 21:38:00', '2018-01-12 02:54:36', '0', NULL),
(12, 'how to make sushi', 'Start by making the perfect sticky sushi rice (or try this brown rice version) and chopping up your veggies of choice.\r\n\r\nWe don’t have access to much sushi-grade seafood in the Midwest, so I most often stick with veggies. But if you live near the coast, get crazy and do the dang thang. (Also, invite me over because I love seafood sushi.)\r\n\r\nNori sheet topped with rice and vegetables for making homemade sushi\r\nThe towel trick:\r\n\r\nA thick towel acts just like a bamboo mat and also wipes up your mess when you’re done: win-win. Because it’s so flexible it allows you to shape and roll the rice effortlessly into a beautiful roll. Oh how I love cutting corners.\r\n\r\nShowing how to make sushi without a mat\r\nHomemade sushi rolled in a towel\r\nSlicing a homemade vegan sushi roll\r\nSliced Vegan Sushi Rolls on a cutting board with chopsticks\r\nThis method not only allows you to make a traditional sushi roll, you can also go inside out (rice on the outside, nori on the inside). WHAAAATT?\r\n\r\nInside Out Sushi Roll on a dish towel topped with plastic wrap\r\nSimply flatten on the rice, gently flip it over, top with veggies and roll away as usual.\r\n\r\nYou can even top your rolls with avocado by layering on thin slices of ripe avocado, topping it with plastic wrap and forming it once again with your towel. Slice, remove plastic and “voila.” So easy and a serious “wow” effect. Your friends will be impressed.\r\n\r\nShowing How to Make Sushi with rice on the outside\r\nShowing how to roll an Inside Out Sushi Roll without a mat\r\nSo what’s stopping you from making sushi at home? Nada. Now go forth and make rolls my child', 'sushi.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 1005, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-3', '2019-05-17 21:38:00', '2018-01-13 03:54:36', '0', NULL),
(13, 'how to be healthy', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-4.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 500, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-4', '2019-05-17 21:38:00', '2018-01-14 01:54:36', '0', NULL),
(14, 'Make your party', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-2.jpg', 'you should follow this steps carefully and be sure doing it the right way.', 705, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-5', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL),
(15, 'how to make cup cakes', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.', 'marwa-elmanawy-i-cheef-1.jpg', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis', 1215, 'MaroCMS is the most important and easy script to use, efficient content management system with an impressive features set. it helps you to improve your business or impress your clients.', 'trick-post-6', '2019-05-17 21:38:00', '2018-01-15 01:54:36', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `meta_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `icon_id`, `title`, `permalink`, `meta_description`) VALUES
(1, 17, 'Punjabi', 'Punjabi', 'North Indian'),
(2, 16, 'South Indian', 'South', 'South Indian'),
(3, 15, 'Gujarati', 'Gujarati', 'West Indian'),
(4, 65, 'Diwali Special', 'Diwali Special', 'Diwali Special'),
(5, 11, 'Chinese', 'Chinese', 'Chinese'),
(6, 7, 'Italian', 'Italian', 'Italian'),
(7, 25, 'Holi Special', 'Holi Special', 'Holi Special'),
(8, 64, 'Eid Special', 'Eid Special', 'Eid Special'),
(9, 56, 'Durga Pooja', 'Durga Pooja', 'Durga Pooja');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

CREATE TABLE `icons` (
  `icon_id` int(11) NOT NULL,
  `icon` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `permalink` varchar(300) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `serves` varchar(5) NOT NULL,
  `prepare_time` varchar(11) DEFAULT NULL,
  `cooking_time` varchar(11) DEFAULT NULL,
  `calories` varchar(5) NOT NULL,
  `directions` text DEFAULT NULL,
  `featured_image` varchar(300) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `visited` int(11) DEFAULT 0,
  `meta_description` text DEFAULT NULL,
  `ingredients` text DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT NULL,
  `video` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `user_id`, `category_id`, `title`, `permalink`, `description`, `serves`, `prepare_time`, `cooking_time`, `calories`, `directions`, `featured_image`, `created`, `updated`, `gallery`, `visited`, `meta_description`, `ingredients`, `difficulty`, `status`, `video`) VALUES
(2, 1, 2, 'Medu Vada', 'Garlic-Shrimp-Linguine-3', 'Medu Vada Is The south indian name to this round  disk shaped fritters.', '4', '12 hours', '30 min', '425', '1. Soak 2 cups urad dal (husked and split black gram) for 4 to 5 hours. You could also soak them overnight.\r\n2. Later drain the water. Add the soaked urad dal in a grinder jar. Add 2 to 3 tablespoon water or as required. But just make sure that not to make the batter very thin. You can grind in parts and add water as required.\r\n3. Grind the urad dal to a smooth batter. The batter should be fluffy, thick and not liquidy. A quick tip is to add a few drops of batter in a bowl of water. The batter drops should float. If they float and do not get dissolved, then that’s the right consistency. if the batter becomes watery or thin, then the instant relief would be to add some semolina or urad dal flour to it. Otherwise also you could add some semolina to the batter. But best is to have the right consistency of the batter.\r\n4. Remove the batter into a big bowl or vessel.\r\n5. Measure and keep all the ingredients ready for making the batter.\r\n6. To the batter, add ⅓ cup finely chopped onion, 1 or 2 sprig of curry leaves (chopped) and 2 to 3 tablespoons of chopped coriander leaves (optional).\r\n7. Next add 1 or 2 finely chopped green chilies, 1 tablespoon finely chopped ginger and ⅓ cup chopped fresh coconut pieces (optional).\r\n8. Also add 1 teaspoon cumin seeds, 1 teaspoon crushed black peppercorns and salt as required. The addition of black pepper gives a good taste but its optional and you can skip adding it.\r\n9. Mix the batter well with the herbs, spices and salt. You do not have to ferment the batter. You can use it right away.\r\n10. Take a bowl of water. Apply some water from the bowl on both your hands.\r\n11. Take some batter in your right hand from the bowl. Give it a round shape.\r\n12. With your thumb make a hole in the center. You can also use banana leaves or zip lock bags to give the medu vada its doughnut shape.\r\n13. In a kadai heat oil. Keep the flame to medium. Once the oil becomes hot, Slid the medu vada into the hot oil. if you really do not care about the appearance of the doughnut shape of the medu vada, then just drop spoonfuls of the batter directly in the oil.\r\n14. Once the vada are slightly golden then gently turn over with a slotted spoon and continue to fry.\r\n15. Fry the medhu vadai till crisp and golden. the oil should be not very hot, but medium hot. you want the vadas to be cooked from inside. very hot oil will quickly brown the vadas from outside but they will remain uncooked from inside. Less hot oil will make the vada to absorb too much oil. Even if the batter is thin then also the vada will absorb too much oil.\r\n16. Once the medhu vadai is crisp and golden, then remove with a slotted spoon draining the extra oil. Fry the rest of vadas in the same manner.\r\n17. Drain them on kitchen tissues to remove extra oil.\r\n18. Serve medu vada hot or warm with sambar and coconut chutney. enjoy.\r\n\r\n', 'medu vada.jpg', '2020-03-19 01:54:36', '2020-03-19 23:27:39', '[\"vada1.jpg\",\"vada2.jpg\",\"vada3.jpg\"]', 51, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=Zjm9fQBBHiM'),
(3, 10, 2, 'Plain Crispy Dosa', 'Spicy-Grilled-Shrimp', 'Dosa also called as dosai (in Tamil language) is a famous South Indian breakfast or snack both in India as well as outside India.', '4', '5-6 hours', '1 hour', '632', '1. In a bowl take ½ cup idli rice or parboiled rice along with ½ cup regular rice. Instead of adding regular rice, you can also make the dosa with a total of 1 cup idli rice as I have shown in the video. The video has the recipe ingredients doubled in proportion.\r\n2. To the same bowl, add ¼ cup urad dal and ⅛ teaspoon methi seeds.\r\n3. Rinse the rice, lentils and methi seeds together a couple of times and keep aside.\r\n4. In a separate bowl, take 2 tablespoons poha (flattened rice).\r\n5. Rinse poha once or twice in water and then add to the bowl containing the rinsed rice+lentils+methi seeds.\r\n6. Add 1.5 cups of water and mix. Cover with a lid and soak everything for 5 to 6 hours.\r\n7. Drain all the water and add the soaked ingredients in a wet grinder jar.\r\n8. Add ⅔ to ¾ cup water and grind till you get a fine grainy consistency of rice in the batter. A smooth consistency of the batter is also fine. If the mixer gets heated up, then stop and wait for some minutes. When the mixer cools down, grind again. Depending on the jar capacity, you can grind everything once or in two batches. I ground in two batches and added overall ¾ cup water.\r\n9. Now take the batter in a large bowl or pan. In case the dosa batter becomes thin, then add a few tablespoons of rice flour to thicken it. Mix the rice flour very well in the batter.\r\n10. Add ½ teaspoon rock salt. Mix very well. Instead of rock salt, you can use non-iodized salt or sea salt crystals or himalayan pink salt. Cover and allow to ferment for 8 to 9 hours or more. Time of fermentation will vary depending on the temperature conditions. In winters, the time of fermentation can go up to 14 to 24 hours.\r\n11. The sada dosa batter after 11 hours. A proper fermentation will double or triple up the volume of the batter with a light sour aroma.\r\n12. Now lightly stir the batter, before you begin to make dosa. you will also see tiny air pockets in the batter.\r\n1. Heat a cast iron pan. When the pan becomes hot, spread ¼ to ½ teaspoon oil all over the pan. Do keep the flame on low to low-medium flame, so that you are easily able to spread the batter. If the pan base is very thick, then keep the flame to medium. For a low fat option, just make the dosa without any oil.\r\n2. Now take a ladle full of the dosa batter. Pour the batter and gently spread the batter starting from the center and moving outwards.\r\n3. Here is a neat round dosa.\r\n4. Cook the dosa on a low to medium flame. Do regulate the flame as per the pan size and thickness. You can even cover the dosa with a lid and let it get cooked from the base.\r\n5. When you see the batter on the top cooked, then sprinkle ¼ to ½ tsp oil on the edges and center.\r\n6. With the spoon spread the oil on the dosa.\r\n7. Cook till the base is nicely golden and crisp. The base will leave the pan when its gets cooked.\r\n8. Fold the sada dosa.\r\n9. Serve Sada Dosa hot with coconut chutney, potato masala and sambar. It is best to serve this crispy dosa hot.\r\n', 'plain dosa.jpg', '2020-03-15 01:54:36', '2020-03-16 23:27:54', '[\"dosa1.jpg\",\"dosa2.jpg\",\"dosa3.jpg\"]', 81, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'easy', 'active', 'https://www.youtube.com/watch?v=2iIWPFqo4jw'),
(4, 7, 2, 'Idli', 'Choclate-Cake', 'Idli is a soft, pillowy steamed savory cake made from rice and lentil batter. The lentils used in making idli are urad dal (black gram). Idli is a traditional breakfast made in every South Indian household including mine.', '6', '5-6 hours', '1 hour', '570', '1. In a bowl or pan take 1 cup parboiled rice and 1 cup regular rice. Here I have used sona masuri rice along with parboiled rice. Instead of this proportion, you can also use overall 2 cups of idli rice OR 2 cups of parboiled rice (as shown in video above).\r\n2. Pick and then rinse both the rice varieties for a couple of times. Drain and keep aside.\r\n3. Take ¼ cup thick poha in a bowl.\r\n4. Rinse the poha once or twice with water.\r\n5. Then add the poha to the rice. Add 2 cups water. mix very well and keep aside covered to soak for 4 to 5 hours.\r\n6. In a separate bowl take ½ cup urad dal along with ¼ teaspoon fenugreek seeds.\r\n7. Rinse a couple of times.\r\n8. Add 1 cup water. Cover and soak for 4 to 5 hours.\r\n9. Before grinding, drain the urad dal, but don’t throw away the water. Reserve the soaked water.\r\n10. In a wet grinder jar, add the urad dal. initially add ¼ cup of the reserved water.\r\n11. And grind the urad dal for some seconds. Then add ¼ cup water and continue to grind. The batter should be light and fluffy when completely ground.\r\n12: Pour the urad dal batter in a deep pan or bowl.\r\n13: Drain the rice & poha and add them in the wet grinder jar. I usually grind in two parts. Depending on the capacity of your mixer-grinder you can grind in two to three parts. If the mixie gets heated up while grinding, then stop and let it cool. Then continue with the grinding.\r\n14: Use the urad dal strained water or regular water to grind the rice and poha too. add water in parts and grind. The rice can have a fine rava like consistency in the batter. A smooth batter is also fine. I usually add a total of ¾ cup of water while grinding rice. The rice batter should not be too thick or thin.\r\n15: Now pour the rice batter in the bowl containing the urad dal batter.\r\n16. Add 1 teaspoon rock salt. Mix very well with a spoon or spatula. If you live in a cool or cold region, then do not add salt. Add salt later once the fermentation is done. If you live in a hot or warm climate, then add salt as it does not allow the batter to get over fermented in the time duration of 6 to 8 hours.\r\n17. Cover the bowl or container with a lid and keep the batter in a warm place. It should be left undisturbed for 8 to 9 hours. Don’t use an air-tight lid. In colder climate, keep the batter for a longer time – from 12 to 24 hours.\r\n18. The batter the next morning. It will ferment and increase in volume.\r\n19. Grease the idli mould with oil. Gently and lightly swirl the batter. Don’t overdo. Now with a spoon pour portions of the batter in the greased idli moulds.\r\n20. Take your idli steamer or pressure cooker or electric cooker. Add some 2 to 2.5 cups water and heat the water. keep the idli mould in the steamer or pressure cooker. Steam for 12 to 15 minutes. Timing will vary depending on the kind of equipment you have used. If using a pressure cooker, then cover the pressure cooker with its lid. Remove the vent weight/whistle from the lid. Steam the idlis for approx 12 to 15 minutes.\r\n21. Check for doneness by inserting a toothpick. If it does not come out clean, then keep again for a few more minutes. When done remove the idli mould from the cooker. Don’t overcook as then they become dry. Dip a spoon or butter knife in water and slid them through the idlis. Remove and place the idlis in a warm container like a casserole.\r\n22. Serve Idli hot or warm with sambar and coconut chutney.\r\n', 'idli.jpg', '2021-01-15 01:54:36', '2018-02-09 23:28:08', '[\"idli1.jpg\",\"idli2.jpg\",\"idli3.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'medium', 'active', 'https://www.youtube.com/watch?v=zFZJPVSkiMI'),
(6, 8, 1, 'Punjabi Dum Aloo', 'Punjabi Dum Aloo', 'Dum Aloo – Baby potatoes napped in a creamy curry. Its a comfort food that is sure to please you every time you eat', '4', '15 min', '30 min', '632', 'Peel, wash and pat dry the baby potatoes. Heat oil and deep fry till the potatoes are brown on the outside and completely cooked.\r\nIn a deep vessel heat oil & add bayleaf, black cardamom, cardamom, cinnamon, cloves, peppercorn and cumin. Once they splutter add sliced onions. Cook the onions till they turn brown. Now add ginger and garlic paste and give a quick stir.\r\nAdd a dash of water followed by turmeric, chilly powder, cumin powder, coriander powder & chopped green chilly. Give a quick stir. Now add whisked curd.\r\nTurn the flame to high and keep stirring till the curd gets a boil. Cook till the oil surfaces. At this stage turn off the heat and let it cool a little. Grind the entire curry into a fine paste.\r\nStrain the curry into a pan. Add 2 cups water to the curry and bring it to a boil. Add salt and cashew nut paste and cook for 2 minutes. Add the fried potatoes, kasoori methi powder and sugar. Cook for 5-10 minutes. Add cream and immediately turn off the gas. Stir and serve hot.', 'aloo.jpeg', '2021-02-15 02:06:36', '2021-02-15 16:03:02', '[\"aloo1.jpg\",\"aloo2.jpg\",\"aloo3.jpg\"]', 209, 'i cheef for recipes poered by marwa emanawy for web solutions.', 'Baby Potatoes – 2 cups\r\nOil तेल – 3 tbsp\r\nBay leaf तेज़ पत्ता – 1no\r\nBlack cardamom बड़ी ईलाईची – 2 nos\r\nCardamom ईलाईची – 4 nos\r\nCinnamon दालचीनी – 1small stick\r\nCloves लौंग – 2 nos\r\nPeppercorns काली मिर्च – 4 nos\r\nCumin जीरा – 2 tsp\r\nOnion sliced प्याज़ – 1cup\r\nGinger paste अदरक – 1/2 tbsp\r\nCashew nut paste – काजू पेस्ट 4 tbsp\r\nOil – for frying\r\nGarlic paste लहसुन – 1/2 tbsp\r\nDash of water पानी\r\nTurmeric हल्दी – 1/2 tsp\r\nChilly powder लाल मिर्च – 1 tsp\r\nCumin powder जीरा पाउडर – 1/2 tsp\r\nCoriander powder धनिया पाउडर – 2 tsp\r\nGreen chilly हरी मिर्च – 1 no\r\nCurd – दही 1 1/2 cup\r\nSalt – नामक to taste', 'medium', 'active', 'https://www.youtube.com/watch?v=UUmBtkaOclg'),
(7, 2, 1, 'Punjabi Chicken', 'Punjabi Chicken', 'This is a type of chicken curry in a thick gravy with a nice spicy flavor, but is not too hot. You may adjust the \'heat\' by adding more serrano peppers. Serve over rice, or with chapatti or roti.\r\n\r\n', '5', '10 min', '50 min', '820', 'Heat the oil and ghee in a large pot over medium heat. Cook the cumin seeds in the oil until the seeds begin to change color.\r\nStir in chopped onion onion; cook and stir until onion has softened and turned translucent, about 5 minutes. Add the garlic and ginger; continue cooking until the onions brown, about 5 minutes more.\r\nMix in the chopped tomato, tomato paste, garam masala, turmeric, salt, serrano pepper, and water; simmer 5 minutes. Lay the chicken into the sauce; mix gently to coat the legs. Cover pan and reduce heat to medium-low. Cook until chicken is no longer pink near the bone, about 40 minutes. Garnish with cilantro to serve.', 'chicken.jpg', '2021-02-15 01:54:36', '2021-02-15 16:02:56', '[\"chicken1.jpg\",\"chicken2.jpg\",\"chicken3.jpg\"]', 85, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2tablespoons vegetable oil\r\n2tablespoons ghee (clarified butter)\r\n8 chicken legs, skin removed\r\n1 teaspoon cumin seeds\r\n1 onion, finely chopped\r\n5 cloves garlic, minced\r\n2 tablespoons minced fresh ginger root\r\n1 small tomato, coarsely chopped\r\n1 tablespoon tomato paste\r\n1 tablespoon garam masala\r\n1 tablespoon ground turmeric\r\n1 teaspoon salt, or to taste\r\n1 serrano chile pepper, seeded and minced\r\n1 cup water\r\n¼ cup chopped fresh cilantro', 'hard', 'active', 'https://www.youtube.com/watch?v=WxSPHmm-uEo'),
(8, 1, 5, 'Stuffed Eggplant with Schezwan Sauce Recipe\r\n', 'Stuffed Eggplant with Schezwan Sauce Recipe\r\n', 'A delicious Chinese dish with the goodness of mixed vegetables, eggplant, cottage cheese and a host of spices that would instantly spruce up the dish. Prepare this as a side dish at your next dinner party and keep your guests hooked!', '2', '15 min', '40 min', '510', '1.Stuff the eggplant with chopped vegetables and cottage cheese mixture.\r\n2.Coat it with dry cornflour and deep fry.\r\n3.Heat oil in wok. Add garlic, ginger, onion, oyster sauce, rice wine, chilli, vinegar, sichuan Pepper. Tomato ketchup and sauté it well.\r\n4.Now add stock and adjust the seasoning and give a touch with corn flour.\r\n5.At last add the fried eggplant, toss it well in sauce, sprinkle with spring onion and serve hot.', 'stuff.jpg', '2021-02-23 01:54:36', '2021-02-23 01:54:36', '[\"stuff1.jpg\",\"stuff2.jpg\",\"stuff3.jpg\"]', 60, 'i cheef for recipes poered by marwa emanawy for web solutions.', '100 gms mixed vegetables, chopped\r\n100 gms eggplant\r\n30 gms cottage cheese\r\n10 gms cornflour\r\n60 ml oil\r\n5 gms ginger, chopped\r\n5 gms celery, chopped\r\n5 gms onion\r\n5 gms garlic\r\n5 gms red chilli\r\n6 gms tomato\r\n5 gms oyster sauce\r\n5 ml rice wine\r\n5 ml vinegar\r\n5 gms salt\r\n5 gms castor sugar\r\n5 gms white pepper\r\n5 ml sesame oil\r\n10 gms corn flour\r\n3 gms sichuan pepper\r\n150 ml stock water', 'medium', 'active', 'https://www.youtube.com/watch?v=ieucaJv7ah8'),
(9, 1, 2, 'Potato Masala South Indian Style', 'Potato Masala South Indian Style', 'This simple potato fry Indian recipe is made with boiled potatoes, red onion, oil, and spices! It’s commonly served as a main course for breakfast or brunch in Indian culture, but really, it’s delicious no matter what time of day you decide to eat it', '4', '20 min', '20 min', '632', 'Heat oil in a thick bottom pan.\r\nAdd chili, mustard seeds, and curry leaves. As it sputters add asafetida and turmeric. Quick stir.\r\nAdd onion. Cook for 3-5 minutes on medium heat until the onions become translucent.\r\nAdd potatoes followed by salt. Mix well.\r\nEnjoy as a breakfast hash or save to be served with dosa.\r\n', 'potato.jpg', '2021-02-15 01:54:36', '2021-02-15 01:54:36', '[\"potato1.jpg\",\"potato2.jpg\",\"potato3.jpg\"]', 91, 'i cheef for recipes poered by marwa emanawy for web solutions.', 'Russet Potatoes 4 medium peeled, boiled and cut into small cubes\r\nRed Onion 1 medium thinly sliced\r\n2 tablespoon cooking oil\r\n2 whole dried red chili\r\n1 teaspoon mustard seeds\r\n8-10 curry leaves\r\n1 teaspoon turmeric powder\r\n⅛ teaspoon asafetida', 'easy', 'active', 'https://www.youtube.com/watch?v=1MWfKT-BgtE'),
(10, 2, 4, 'Almond And Rose Kheer Recipe\r\n', 'Almond And Rose Kheer Recipe\r\n', 'No Indian festivity is complete without a traditional sweet treat and kheer makes for a perfect choice for every celebration! Here is a quick and easy kheer recipe with the goodness of almonds and refreshing rose flavour, which you can try at home.', '4', '20 min', '40 min', '150', '1.Soak the rice in water for about 20 minutes.\r\n2.Heat milk in a heavy bottom pan. After a boil, reduce the heat and simmer till milk is reduced to half the original volume.\r\n3.Add the soaked rice after draining the water and cook on low heat till rice is cooked well and the mix thickens.\r\n4.Add chopped almonds and cook for further 15 mins on low heat till the kheer is thick and creamy, add sugar.\r\n5.Set aside to cool. Once cool add rose water and mix. Refrigerate till serving\r\n6.Roast some almond slivers in an oven for 180 degrees for 5 minutes, until golden brown. Garnish with slivers and dried rose petals before serving.\r\n', 'kheer.jpg', '2021-02-04 01:54:36', '2021-02-04 01:54:36', '[\"kheer1.jpg\",\"kheer2.jpg\",\"kheer3.jpg\"]', 74, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 Litre full fat milk\r\n120 gms rice\r\n40 gms grain sugar\r\n3-4 Rose water drops\r\n10 gms dried rose petals\r\n100 gms almonds\r\n25 gms almond slivers\r\n', 'easy', 'active', 'https://www.youtube.com/watch?v=p5exSf04zJ0'),
(11, 1, 2, 'Uppu Undrallu', 'Uppu Undralu', 'Uppu Undrallu are steamed rice balls made of rice flour or rava. There are two different version of making this - Sweet and salted. this is salted version', '5', '10-15 min', '30-40 min', '340', '1 Add salt and bring water to boil, add the rice flour and immediately cover it with a lid without stirring and reduce heat. Let it cook for a mt. Turn off heat and cool. Make small balls and keep aside.\r\n2 In another vessel add the grated jaggery and grated coconut and stir for few mts. Add the elaichi pwd. The jaggery will begin to melt. Let it cook on low flame till it forms a thick mass. Turn off heat and cool. Make small gooseberry sized balls and keep aside.\r\n3 Make a thin layer of the rolled rice flour balls and stuff with the jaggery-coconut balls and seal. You can shape it like a ball or modak.\r\n4 Place in a vessel and steam for 10-11 mts like you would steam idlis. Cool.', 'uppu.jpg', '2021-02-15 12:24:51', '2021-02-15 12:24:51', '[\"uppu1.jpg\",\"uppu2.jpg\",\"uppu3.jpg\"]', 290, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1/2 cup rice flour\r\n1 cup water\r\npinch of salt\r\n1/4 cup grated jaggery\r\n3 tbsps grated coconut\r\npinch of elachi pwd (cardamom)', 'medium', 'active', 'https://www.youtube.com/watch?v=ouyJX1b_2iQ'),
(12, 5, 4, 'Badam Aur Gulkand Ki Kulfi Recipe\r\n', 'Badam Aur Gulkand Ki Kulfi Recipe\r\n', 'A perfect festive recipe! Kulfi is one Indian dessert that you cannot say no to, it is chilling, refreshing, sweet and all things yummy. This kulfi recipe here is a special amalgamation of almonds, gulkand or rose petals along with saffron, mawa and sugar. It is an easy recipe to prepare at home for the next festive feast!', '4', '20 min', '45 min', '200', '1.Blanch and peel the almonds and make a paste of 90 % of the almonds.\r\n2.Clean and soak rose petals in water and cook them in sugar till thick.\r\n3.Dissolve the saffron in a small bowl of warm milk to extract its flavour.\r\n4.Now, boil the milk and reduce to 40%, add grated mawa, almond paste, sugar and saffron extract cook till mawa is dissolved.\r\n5.Pour the mixture in kulfi cones, add cooked rose petal, sliced almond and freeze it.Serve with falooda and rabri.', 'kulfi.jpg', '2021-03-15 01:54:36', '2021-03-15 01:54:36', '[\"kulfi1.jpg\",\"kulfi2.jpg\",\"kulfi3.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '200 gms almonds whole\r\n40 gms gulab ki patti\r\n1.5 litre full fat milk\r\n80 gms mawa (unsweetened)\r\n70 gms sugar\r\nFew strands of saffron\r\n', 'medium', 'active', 'https://www.youtube.com/watch?v=mYbqBO81jOY'),
(13, 1, 5, 'Veg Fried Rice Recipe\r\n', 'Veg Fried Rice Recipe\r\n', 'Fried rice is an easy to make Chinese style meal. There are many varieties for it such as egg fried rice, chicken fried rice and this one here is full of flavourful spices, veggies and the leftover rice that you can saute and prepare in a jiffy!', '2', '10 min', '15 min', '540', '1.Heat oil in a pan.Veg Fried Rice\r\n2.Add ginger garlic paste to it, saute a little.Veg Fried Rice\r\n3.Now add spring onion, carrot, cabbage and capsicum.Veg Fried Rice\r\n4.Saute and cook them well together.Veg Fried Rice\r\n5.Now add salt along with soy sauce and vinegar.Veg Fried Rice\r\n6.Mix thoroughly till simmer and add cooked rice to the pan.Veg Fried Rice\r\n7.Combine the mix with rice thoroughly.Veg Fried Rice\r\n8.Serve your hot Veg Fried Rice in a bowl, garnished with coriander leaves.', 'rice.jpg', '2021-02-02 01:54:36', '2021-02-02 16:27:22', '[\"rice1.jpg\",\"rice2.jpg\",\"rice3.jpg\"]', 35, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 pounds cubed beef stew meat\r\n3 tablespoons vegetable oil\r\n4 cubes beef bouillon, crumbled\r\n1 large onion, chopped\r\n1 teaspoon dried rosemary\r\n1/2 teaspoon ground black pepper\r\n3 large potatoes, peeled and cubed\r\n4 carrots, cut into 1 inch pieces\r\n4 stalks celery, cut into 1 inch pieces', 'hard', 'active', 'https://www.youtube.com/watch?v=REPdNN3230A'),
(14, 11, 4, 'Baked Ragi Chakli Recipe\r\n', 'Baked Ragi Chakli Recipe\r\n', 'Chakli or Murukku is a tasty tea time snack that is prepared in Indian homes. It is easy to make and too delicious to resist! The name murukku is derived from a Tamil word which actually means \'twisted\' that refers to the shape of this salty, savory snack.This baked chakli recipe is made with ragi flour which makes this a healthy and better alternative to the fried ones made of regular flour. Enjoy the delicious chakli with a hot cup of tea this festive season.', '2', '10 min', '25 min', '230', '1.Take the dry ingredients and knead them together. Add oil and required amount of water.\r\n2.Let it become a semi-soft dough. Make two equal sizes.\r\n3.Take one half of the dough into a Chakli machine.\r\n4.Press out roundels of the dough. Put chaklis in a pre-heated oven. Temperature should be around 360°f for 15-20 minutes.\r\n5.Take the other half and repeat the same process. Let it cool, the Chakli whirls are ready to use.', 'chakli.jpg', '2021-02-10 01:54:36', '2021-02-10 01:54:36', '[\"chakli1.jpg\",\"chakli2.jpg\",\"chakli3.jpg\"]', 151, 'i cheef for recipes poered by marwa emanawy for web solutions.', '250 gms ragi flour\r\n150 gms besan flour\r\n5 gms ginger\r\n5 gms chili\r\n2 gms garlic paste\r\n5 gms salt\r\n20 ml oil', 'easy', 'active', 'https://www.youtube.com/watch?v=NAlqbLvIbiM'),
(15, 3, 6, 'Panzanella Recipe\r\n', 'Panzanella Recipe\r\n', 'Panzenella is a Tuscan bread salad, ideal for summer which does not follow a particular recipe. The two ingredients that do not change are tomatoes and bread. This salad is great with a chilled glass of Prosecco and lots of sunshine.', '4', '15 min', '35 min', '410', '1.Chop the tomatoes and cucumber roughly into 1 cm cubes, and place in a large bowl.\r\n2.Stir in all the remaining ingredients except the bread, and taste for seasoning.\r\n3.Add some lemon juice if you want a more tart salad.\r\n4.Put the salad in the fridge and leave, covered, overnight until you are ready to eat. The flavor will melt into something magical.\r\n5.Immediately before serving, tear the bread into small pieces and stir into the salad.', 'panzella.jpeg', '2021-03-01 01:54:36', '2021-03-01 16:28:24', '[\"panzella1.jpg\",\"panzella2.jpg\",\"panzella3.jpg\"]', 189, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 Kg fresh juicy tomatoes, large\r\n1 medium cucumber\r\n100 gms small mild olives\r\n1 medium onion, sliced\r\n100 gms sun dried tomatoes and their oil\r\nHandful of oregano, chopped\r\nHandful of parsley, chopped\r\n2 garlic cloves, finely chopped\r\n2 tbsp good balsamic vinegar\r\nA pinch of sugar\r\nSalt and pepper\r\n1 loaf Italian cibatta or French baguette (torn into pieces)', 'easy', 'active', 'https://www.youtube.com/watch?v=PbPTx65DKZQ'),
(16, 6, 6, 'Bruschetta Recipe', 'Bruschetta Recipe\r\n', 'Country bread sliced and topped with different toppings. The evergreen tomato-basil and mushroom-garlic. The classic Italian starter', '4', '10 min', '25 min', '590', '1.Slice the bread into two halves from the center.\r\n2.Cut a clove of garlic, rub on the surface of bread and sprinkle some olive oil on it.\r\n3.Roast in the oven for 5 minutes.\r\nFor mushroom and garlic topping:\r\n1.In a pan put butter, oil, garlic, thyme and stir.\r\n2.Add mushrooms, chopped chillies and toss.\r\n3.Add salt, pepper and cook.\r\nFor tomato and basil topping:\r\n1.In a bowl add chopped tomatoes, chopped basil, salt, pepper, olive oil and mix well .\r\n2.To serve: Place the bread on a tray and pile up the toppings on it and serve.\r\n', 'brus.jpg', '2021-03-22 01:54:36', '2021-03-22 01:54:36', '[\"brus1.jpg\",\"brus2.jpg\",\"brus3.jpg\"]', 230, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 loaf of country bread\r\nCloves of garlic\r\n2 tomatoes, chopped\r\nBasil leaves\r\n5 Tbsp of olive oil\r\n4 portobello mushrooms sliced\r\n1 garlic clove grated\r\n1 red chilli , deseeded and chopped\r\n1 Tbsp butter\r\nSalt and pepper, to taste', 'easy', 'active', 'https://www.youtube.com/watch?v=_mVw3XfMIvA'),
(17, 1, 6, 'Pasta Carbonara Recipe\r\n', 'Pasta Carbonara Recipe\r\n', 'This simple Roman pasta dish derives its name from \'carbone\' meaning coal. It was a pasta popular with the coal miners. The original recipe calls for guanciale, which is pig\'s cheek, but since its not easily available, we have used bacon instead. A pasta dish every age group would love to relish!', '4', '20 min', '30 min', '520', '1.In a large pan or a saucepan, heat the olive oil and fry the bacon till crisp. Set aside.\r\n2.In a mixing bowl, beat the whole eggs and the yollk well. Stir in the grated cheese and set aside.\r\n3.Boil the spaghetti in abundant salty water. Drain the pasta, reserving some of the cooking water.\r\n4.In another saucepan, toss the pasta with the egg mixture, bacon and any fat rendered from cooking the bacon, over very low heat.\r\n5.Make sure that the individual strands of pasta are all coated properly with the mixture. Season with salt, add the pasta water, give it a quick toss, and remove right away from the heat.\r\n6.The sauce should have a creamy texture, which will be lost if the pasta remians on the fire for too long.\r\n7.The idea is to cook the egg with the heat of the pasta, and not with the heat of the fire.\r\n8.Serve right away with lots of pepper, freshly crushed in a pepper mill, and more Parmesan if desired.', 'pasta.jpg', '2021-02-19 15:35:36', '2021-02-19 15:35:36', '[\"pasta1.jpg\",\"pasta2.jpg\",\"pasta3.jpg\"]', 300, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 packet spaghetti\r\n100 gms bacon (cut in strips)\r\n3 Eggs\r\n1 Egg yolk\r\n100 gms pecorino romano or parmesan, grated\r\n1 tbsp olive oil\r\nBlack pepper (coarsely crushed)\r\nto taste salt', 'easy', 'active', 'https://www.youtube.com/watch?v=5t7JLjr1FxQ'),
(18, 6, 3, 'Aam Shrikhand with Mango Salad Recipe', 'Aam Shrikhand with Mango Salad Recipe', 'A summer season special, experiment and try some of the best innovative mango recipes like this one here. Whip up some sweet comfort salad dessert with a soothing mix of yogurt, cream, mangoes, milk, saffron and cardamom.', '4', '10 min', '30 min', '440', '1.Whisk hung curd and castor sugar together.Aam Shrikhand with Mango Salad\r\n2.Add the mango puree and whisk some more until smooth.Aam Shrikhand with Mango Salad\r\n3.Now put saffron and cardamom powder to the mixture and mix again.Aam Shrikhand with Mango Salad\r\n4.Add the chopped mango pieces and whisk again to make a thick mixtureAam Shrikhand with Mango Salad\r\n5.Prepare mango salad by mixing diced mango with lemon juice, mint and chaat masala.\r\n6.Serve the Aam Shrikhand chilled along with the mango salad.', 'aam.jpg', '2021-01-15 01:54:36', '2021-01-15 01:54:36', '[\"aam1.jpg\",\"aam2.jpg\",\"aam3.jpg\"]', 804, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 Cup Hung yogurt (hung curd)\r\n1/2 tsp Saffron\r\n1 Fresh mangoes, chopped\r\n1 tsp Cardamom powder\r\n3/4 Cup Castor sugar\r\n1/2 Cup Mango puree\r\nFor mango salad:\r\n1 Lemon (juiced)\r\n20 Gram Mint\r\n2 tsp Chaat masala', 'easy', 'active', 'https://www.youtube.com/watch?v=krSExnVNlNw'),
(19, 1, 3, 'Undhyu Recipe', 'Undhyu Recipe', 'Here\'s for you the traditional Gujarati recipe of Uundhyu. It is a type of vegetable curry made with winter veggies like brinjals, surti papdi, bananas, methi etc. A healthy and nutritious dish that goes best with rice.', '5', '5 min', '55 min', '560', '1.In a bowl add semolina,salt, pinch of soda,oil, turmeric powder, dhaniya (3/4 tsp) and jeera powder (3/4 tsp), red chilli powder( 1 1/2 tsp), garlic (25 gm) and chopped methi.\r\n2.Mix them well and add water to this mixture and knead well. Shape this mixture in the form of kebabs and deep fry them.\r\nProcedure for Masala:\r\n1.In a plate add chopped garlic, grated coconut, coriander, salt, sugar, green chilli paste, pinch of soda, oil, turmeric and the remaining dhaniya jeera powder and mix them well.\r\n2.Stuff this masala in the banana and baigan and keep the banana aside (since it cooks quickly).\r\n3.To this mixture of masala add the remaining vegetables along with the baigan.\r\nProcedure for Cooking:\r\n1.In a vessel add oil and add all the vegetables except banana and muthia and keep stirring slowly. Cover it for 15-20 minutes.\r\n2.Then add the muthia. Stir well and cook for another 15 minutes.\r\n3.Now add the stuffed banana and cook for around 5 minutes.\r\n4.Serve hot!', 'undhyu.jpg', '2021-02-17 01:54:36', '2021-02-17 01:54:36', '[\"undhyu1.jpg\",\"undhyu2.jpg\",\"undhyu3.jpg\"]', 541, 'i cheef for recipes poered by marwa emanawy for web solutions.', '250 gm surti papdi\r\n3 surti baigan small size\r\n400 gm kanda (onions, purple from inside)\r\n2 potatoes,chopped\r\n2 bananas, yellow/green\r\n3 cups methi leaves\r\nMake 10 pieces of muthia (gujarati term)\r\n200 gm semolina (rava)\r\n50 gm green chilli paste\r\n75 gm chives\r\n2 cups coriander, finely chopped\r\n1 cup grated coconut\r\nSalt to taste\r\n2 cups oil\r\n1/2 tsp turmeric\r\n1 1/2 tsp jeera powder\r\n1 1/2 tsp dhaniya powder\r\n1 tsp sugar\r\n1/4 tsp cooking soda\r\n50 gm red chilli powder', 'hard', 'active', 'https://www.youtube.com/watch?v=OFTWBaVC_gw'),
(20, 4, 3, 'Bardoli Ki Khichdi Recipe\r\n', 'Bardoli Ki Khichdi Recipe\r\n', 'Perfect rice cooked with potatoes and peas with flavours of raw mango and assorted spices.', '4', '10 min', '40 min', '560', '1.Heat 1 tsp of ghee in a large pot.\r\n2.Into this add cumin seeds and fry for two minutes.\r\n3.Add chopped onions and saute till brown.\r\n4.Add chopped ginger, split green chillies and fry on a low flame for 5 minutes.\r\n5.Add turmeric powder and red chilli powder and let it cook till the oil ghee separates from the masala.\r\n6.Add cubed potatoes, washed rice and washed dal and saute for 5 minutes.\r\n7.Add in a pinch of asafetida powder, green peas, a tsp of sugar and salt to taste.\r\n8.Also add raw mango, chopped into fine pieces.\r\n9.Mix together and add in 4 cups of water. Bring to a simmer, cover the pot and let it simmer for 20-25 minutes.\r\n10.Garnish the khichdi with fresh coriander and 2 tbsps of ghee.\r\n11.Serve hot.', 'khichdi.jpg', '2021-03-19 01:54:36', '2021-03-19 01:54:36', '[\"khichdi1.jpg\",\"khichdi.jpg\",\"khichdi.jpg\"]', 417, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 Cups rice\r\n1 1/2 cups toor dal\r\n250 gram peas\r\n3-4 Potatoes (cubed)\r\n2-3 Green chilies\r\n1 Raw mango\r\nJeera seeds\r\nMustard seeds\r\n1 tbsp cumin seeds\r\n1 tsp red chili powder\r\n1 tsp turmeric powder\r\nAsafoetida\r\n2 onions, chopped\r\n1/2 ginger, chopped\r\nGhee\r\nSugar\r\nSalt\r\nfor garnishing fresh coriander\r\n', 'easy', 'active', 'https://www.youtube.com/watch?v=HwjaXBY8sb8'),
(21, 1, 1, 'Punjabi Kadhai Paneer', 'Punjabi Kadhai Paneer', 'Kadai Paneer is a popular paneer recipe where paneer and bell peppers are cooked in a spicy masala.\r\n\r\nIt is one of the most popular paneer recipes. It’s there on the menu in almost all Indian restaurants. I remember always ordering it when we ate out.', '5', 'no preperat', '30-40 min', '770', '- Heat oil in a pan and fry cumin and coriander for 30 secs. \r\n- Add onions and mix well. Add ginger garlic paste. \r\n- Add salt, turmeric and chilli powder. Cook for 2-3 mins. \r\n- Add tomato puree. Cover and cook until no longer raw ( approx 4-5 mins)\r\n- Add veggies and mix well. \r\n- Add paneer. Add water. Cover and cook for 3-4 mins. Basically bring water to boil and then let it simmer.\r\n- Add garam masala\r\n- Add fenugreek leaves and cilantro. Serve with Roti or rice', 'paneer.jpg', '2021-09-02 10:50:22', '2018-09-02 10:50:22', '[\"paneer1.jpg\",\"paneer2.jpg\",\"paneer3.jpg\"]', 8, '112', '400 gms of Paneer Cubes\r\n1 small roughly chopped red onion\r\n1 tbsp ginger- garlic paste\r\n1/2 tsp cumin seeds\r\n1 tsp crushed coriander seeds\r\n1/2 tsp cardamom powder ( just crush cardamom seeds to make the powder)\r\n1/2 tsp garam masala\r\n1 tbsp dried fenugreek leaves- Kasoori Methi\r\nFresh Cilantro leaves for garnish\r\n2 tomatoes\r\nSalt per taste\r\n1/2 tsp red chilli powder\r\n1 tsp Turmeric\r\n2-3 tbsp oil\r\n2-3 cups of veggies of your choice ( usually we add bell peppers and mushrooms)', 'medium', 'active', 'https://www.youtube.com/watch?v=tWKtq9CeeuU'),
(22, 2, 7, 'Kesar Pista Phirni Recipe\r\n', 'Kesar Pista Phirni Recipe\r\n', ' One Indian dessert that none of us can ever say no to is phirni. A bowl of chilled, nutty and delicious phirni can turn around a day for us. Here\'s a sugar-free kesar pista phirni that you can try at home this summer season', '4', '2 hour', '45 min', '480', '1.Bring the milk to a boil in a deep non-stick pan. Lower the heat and simmer, stirring continuously, till it reduces by half.\r\n2.Add the ground rice, mixed with a little water, and stir well to prevent lumps from forming. Bring the mixture to a boil.\r\n3.When it starts to thicken, lower the heat and simmer for a couple of minutes, stirring continuously. Add the cardamom powder and saffron, and mix well.\r\n4.When the mixture attains a thick custard-like consistency, remove from heat and stir in the low-calorie sweetener.\r\n5.Pour the mixture into 4 individual earthenware bowls while still warm. Sprinkle sliced pistachios and refrigerate for at least 2 hours. Serve chilled.', 'phirni.jpg', '2021-03-13 01:54:36', '2021-03-13 01:54:36', '[\"phirni1.jpg\",\"phirni2.jpg\",\"phirni3.jpg\"]', 78, 'i cheef for recipes poered by marwa emanawy for web solutions.', 'A few saffron threads\r\n10-12 pistachios (peeled and sliced), blanched\r\n1 litre skimmed milk\r\n3 tbsp coarsely ground rice\r\n3/4 tbsp green cardamom powder\r\n3 tbsp low-calorie sweetener', 'easy', 'active', 'https://www.youtube.com/watch?v=B9sznxe_WpA'),
(23, 5, 7, 'LIIT Thandai Recipe\r\n', 'LIIT Thandai Recipe\r\n', 'Holi season is here and so is the season to gorge on chilled thandai! Here is a thandai recipe with a twist that the guests are surely going to love at your holi party', '2', '5 min', '5 min', '180', 'Shake all ingredients with loads of ice and serve.', 'thandai.jpg', '2021-02-28 16:48:06', '2021-02-28 23:24:48', '[\"thandai1.jpg\",\"thandai2.jpg\",\"thandai3.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '30 Ml vodka\r\n30 ml white rum\r\n30 ml gin\r\n30 ml thandai syrup\r\n60 ml milk\r\n10 gms pista flakes\r\n100 gms ice\r\nPilsner glass\r\nfor garnishing pista flakes', 'easy', 'active', 'https://www.youtube.com/watch?v=U_fomKibxwY'),
(24, 1, 5, 'Chicken Manchurian Recipe\r\n', 'Chicken Manchurian Recipe\r\n', 'Made from authentic Chinese flavors, this dish is a must try! Chicken manchurian is a dish relished by all age groups as a starter dish at parties. Fried chicken balls cooked in a spicy sauce batter and served with steamed rice or hakka noodles. A traditional Chinese dish that can be made at home by some simple ingredients and method.', '4', '20 min', '1 hr', '990', '1.Mix together the chicken, egg, flour, garlic and ginger paste, enough water so as to have a thick batter. Leave this for 5-10 minutes.\r\n2.Heat the oil, keeping the heat high drop heaped teaspoonfuls of batter and fry to a golden brown. Drain on absorbent paper till required.\r\n3.Heat 2 Tbsp of oil, and stir-fry the garlic and onion in it over high heat, till the onions look glossy. Add the capsicum and turn around a few times.\r\n4.Add the sauce mixture, and simmer till the sauce thickens and becomes translucent.\r\n5.Add the fried balls, turn around a few times and serve.', 'manchurian.jpg', '2021-02-19 01:54:36', '2021-02-19 11:37:19', '[\"manchurian1.jpeg\",\"manchurian2.jpeg\",\"manchurian3.jpeg\"]', 33, 'i cheef for recipes poered by marwa emanawy for web solutions.', '250 gms chicken mince\r\n2 Eggs (slightly beaten)\r\n3/4 cup refined flour\r\n1/2 tsp garlic paste\r\n1/2 tsp ginger paste\r\nOil (for deep frying)\r\n2 tbsp oil\r\n1 tsp garlic, finely chopped\r\n1/2 cup onions, finely chopped\r\n1 large capsicum, finely chopped\r\n3 tbsp corn flour (blended)\r\n1/2 cup water\r\n2 tbsp vinegar\r\n2 tsp salt\r\n2 tsp soya sauce\r\n1/2 cup tomato puree\r\n2 tbsp celery, chopped\r\n2 cups water', 'hard', 'active', 'https://www.youtube.com/watch?v=ZJCdciqJcVA'),
(25, 1, 7, 'Paan Thandai Recipe\r\n', 'Paan Thandai Recipe\r\n', ' Paan thandai is one of those delicious summer beverages, filled with Gulkand, Betal leaf and a generous bit of Vodka to have you drooling.', '2', '5 min', '10 min', '50', '1.Mix all the ingredients and garnish with almond flakes.\r\n2.Serve cool', 'paan.jpg', '2021-01-29 01:54:36', '2021-01-29 11:37:19', '[\"paan1.jpg\",\"paan2.jpg\",\"paan3.jpg\"]', 300, 'i cheef for recipes poered by marwa emanawy for web solutions.', '60 Ml Vodka\r\n1 Betal leaf\r\n1 Tbsp Gulkand\r\n200 Ml Milk\r\n5 Ml Vanilla essence\r\n1 Tbsp Thandai powder', 'easy', 'active', 'https://www.youtube.com/watch?v=awvV0aUxCXc'),
(26, 1, 8, 'Murgh Kali Mirch Ka Tikka Recipe\r\n', 'Murgh Kali Mirch Ka Tikka Recipe\r\n', 'Tikka of chicken dipped in an aromatic black peppercorn marinade, grilled in the tandoor before being finished on ‘dum’. Murgh kali mirch ka tikka is a perfect snack to give a flavourful twist to your platter.', '10', '75 min', '35 min', '900', '1.Cream cheese and marinate chicken tikka with cheese, hung curd, salt, red chilli powder, half of the cream, cornflour and all the powdered spices.\r\n2.Keep aside for an hour to let the chicken absorb the flavour of the ingredients.\r\n3.Skewer the chicken tikka in 8 mm skewers and cook in tandoor.\r\n4.Dum cook the chicken in the oven, sprinkle kebab masala and lemon juice.\r\n5.Garnish it with freshly chopped coriander and serve.', 'tikka.jpg', '2021-02-01 01:54:36', '2021-02-01 01:54:36', '[\"tikka1.jpg\",\"tikka2.jpg\",\"tikka3.jpg\"]', 151, 'i cheef for recipes poered by marwa emanawy for web solutions.', '2 kg chicken tikka\r\n150 gms hung curd\r\n15 gms red chilli powder\r\n15 gms black pepper whole\r\n150 gms processed cheese\r\n25 gms green cardamom powder\r\n50 gms cornflour\r\n50 gms kebab masala\r\n100 ml cream\r\nto taste salt\r\n100 ml cream\r\n50 gms coriander, chopped\r\n25 gms green chillies, chopped\r\nfor garnishing silver leaf', 'hard', 'active', 'https://www.youtube.com/watch?v=dzQZ4tmUG28'),
(27, 3, 8, 'Lamb And Almond Korma\r\n', 'Lamb And Almond Korma Recipe\r\n', 'A delightful dish of lamb korma is a perfect addition to a celebratory spread! Here is a korma recipe with succulent lamb cuts tossed in a smooth mix of yogurt with nutty almonds and rich spices!', '4', '10 min', '95 min', '900', '1.Heat ghee in a heavy bottomed pan, fry the onions in the ghee till they are golden. Remove onions from the oil.\r\n2.Add the lamb pieces to the ghee and fry it till they are golden in colour; add the ginger garlic paste and stir fry for 2-3 minutes.\r\n3.Make a smooth paste of yoghurt and ½ cup of blanched almonds. Add this paste to the lamb and keep on stirring it till oil separates out. Add the fried onions to the lamb.\r\n4.Reduce the heat, and add water. Cover the pan and let the lamb simmer for an hour or till tender.\r\n5.Cut the remaining blanched almonds into small pieces and add it to the korma.', 'korma1.jpg', '2021-02-26 01:54:36', '2021-02-26 01:54:36', '[\"korma1.jpg\",\"korma2.jpg\",\"korma3.jpg\"]', 189, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 Kg lamb shoulder cuts\r\n1 cup onion\r\n3 tbsp ginger-garlic paste\r\n2 cup yogurt\r\n1 cup almonds (skin removed), blanched\r\n1 Cinnamon stick\r\n2 Black cardamom\r\n3 Green cardamom\r\n1 tsp cumin powder\r\n1 tsp coriander powder\r\n1 tsp turmeric powder\r\n2 tsp red chilli powder\r\nto taste salt\r\n4 tbsp ghee\r\n3 cups water\r\n', 'medium', 'active', 'https://www.youtube.com/watch?v=soM4dTMv8IQ'),
(28, 1, 8, 'Awadhi Gosht Korma Recipe\r\n', 'Awadhi Gosht Korma Recipe\r\n', 'Relish a delectable mutton preparation cooked in a traditional Lucknowi dum style. Straight from the kitchens of Srinagar, comes a mouth-watering delicacy to prepare on the festivities of Ramadan. Mutton cooked in dum along with a myriad of spices and herbs, serve with sheermal or paratha for a hearty meal.', '2', '15 min', '105 min', '950', '1.Heat oil in a pan and add green cardamom, cinnamon, cloves, black cardamom and bay leaves.\r\n2.Add the meat and saute till lightly fried.\r\n3.Add salt and turmeric and mix well.\r\n4.Pour in the water, cover the pan and cook.\r\n5.When it starts boiling, add ginger- garlic paste, coriander powder, red chilli, garlic paste and onion paste.\r\n6.Mix well and add yogurt, gulab-jal, garam masala, nutmeg and cinnamon powder and saffron.\r\n7.Cover and cook for 2-3 minutes.\r\n8.Now transfer the meat in a heavy bottom pan and strain the gravy.\r\n9.Add a few drops of ittar and cover the pan.\r\n10.Seal it with the wheat dough and cook on slow fire.\r\n11.Once done, garnish with fresh coriander and ginger juliennes and serve.', 'awadhi.jpg', '2021-02-28 01:54:36', '2021-02-28 01:54:36', '[\"awadhi1.jpg\",\"awadhi2.jpg\",\"awadhi3.jpg\"]', 230, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 Kg mutton\r\n2 tbsp refined oil\r\n3-4 Green cardamom\r\n1 tsp whole cinnamon\r\n2 Black cardamoms\r\n2-3 Bay leaves\r\n1 tsp turmeric powder\r\n1/4 cup water\r\n1 tsp ginger-garlic paste\r\n1 tsp coriander powder\r\n1 tsp red chilli powder\r\n1 tsp garlic (ground), fried\r\n1 tsp onion (ground), fried\r\n3 tbsp yogurt (beaten)\r\n2 tsp gulab jal\r\n2 tsp garam masala\r\n1/2 tsp nutmeg-coriander powder\r\n1/2 tsp saffron, soaked\r\nto taste salt\r\nFew drops of ittar\r\nWheat dough (for dum)\r\nfor garnishing fresh coriander\r\nfor garnishing ginger, julienne', 'medium', 'active', 'https://www.youtube.com/watch?v=xK1tNUP3I2Q'),
(29, 5, 9, 'Luchi Recipe\r\n', 'Luchi Recipe\r\n', 'Luchi or Loochi is a deep fried Indian yeast free flatbread which gets puffed up during frying, very similar to poori. It is a popular breakfast staple in Bangladesh and in Indian states like West Bengal, Orissa and Assam, specially made during Durga Pooja celebration. Luchi is very easy to prepare and is best served with curries or gravies.', '4', '15 min', '10 min', '260', '1.In a deep bowl mix maida, salt, ghee and water to prepare a soft dough.Luchi\r\n2.Gradually add water as required for kneading the flour.\r\n3.Divide the dough into equal small portions and make balls to roll it out.Luchi\r\n4.Before rolling each ball dip it a little in water or oil from one side to avoid stickening.Luchi\r\n5.Now roll each ball into a circle of equal size.Luchi\r\n6.Heat oil in a pan or kadhai on high flame.Luchi\r\n7.When the oil is perfectly hot, slide the Luchi in the hot oil for frying it.Luchi\r\n8.Luchi will begin to puff up. Cook on both the sides and avoid burning it.Luchi\r\n9.Drain it on the paper towels to remove the excess oil.\r\n10.Serve the hot Luchi immediately with aloo ki sabzi or any other curry of your choice.', 'luchi.jpg', '2021-02-12 14:54:55', '2021-02-12 23:24:48', '[\"luchi1.jpg\",\"luchi2.jpg\",\"luchi3.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', '1 Cup maida\r\n1/2 tsp salt\r\n1 tsp ghee\r\n1/2 cup water', 'easy', 'active', 'https://www.youtube.com/watch?v=qH1kB0u35dI'),
(30, 5, 9, 'Malpua Recipe\r\n', 'Malpua Recipe\r\n', 'A popular, pancake like Indian dessert from North India which is usually prepared on festivals and special occasions. An Indian dessert recipe, malpua is quite popular in Rajasthan, Uttar Pradesh and parts of West Bengal with each having a different version of cooking it', '6', '15 min', '30 min', '460', '1.Make a smooth batter with the listed ingredients.\r\n2.Mix in the sugar, water, lemon juice and make the sugar syrup, add saffron.\r\n1.Heat the ghee in a non stick pan, reduce the flame to medium.\r\n2.Pour the equivalent of 3 tablespoons of batter into the ghee and cook.\r\n3.Strain and soak the malpuas in the sugar syrup.\r\n4.You can garnish it with almonds and pistachios.', 'malpua.jpg', '2021-01-10 15:00:34', '2021-01-10 23:24:48', '[\"malpua1.jpg\",\"malpua2.jpg\",\"malpua3.jpg\"]', 70, 'i cheef for recipes poered by marwa emanawy for web solutions.', 'For the batter:\r\n100 gram Flour\r\n100 gram Semolina\r\n100 gram Milk powder\r\n400 ml Milk\r\n10 gram Cardamom powder\r\nFor frying Ghee\r\n400 gram Sugar\r\n1 gram Saffron\r\n5 ml Lemon juice\r\n100 ml Water', 'medium', 'active', 'https://www.youtube.com/watch?v=UHYGGmkkM8w'),
(31, 1, 9, 'Doi Machch Recipe\r\n', 'Doi Machch Recipe\r\n', 'An easy to make traditional Bengali fish, cooked in curd. Best served with plain rice.', '2', '10 min', '30 min', '550', '1. Mix together the curd, onion, ginger, garlic, chilli powder, turmeric and keep aside.\r\n2. Heat oil and fry the fish over high heat till brown. Lift fish out of oil and keep aside.\r\n3. In the same oil, add the bay leaves, cumin, cloves, cardamom and cinnamon. When the seeds splutter, add the curd mixture and saute till fat separates.\r\n4.Add the fish and saute till cooked through, add sugar and salt and serve hot.', 'doi.jpg', '2021-01-29 01:54:36', '2021-01-29 01:54:36', '[\"doi1.jpg\",\"doi2.jpg\",\"doi3.jpg\"]', 136, 'i cheef for recipes poered by marwa emanawy for web solutions.', '500 gm fish (Rohu/Carp)-sliced into desired sized pieces; washed, wiped and rubbed\r\nA pinch of turmeric\r\nSalt to taste\r\n1 cup curd\r\n3 Tbsp onion paste\r\n1 Tbsp ginger paste\r\n1 tsp garlic paste\r\n1 tsp chilli powder\r\n1 tsp turmeric\r\n4 Tbsp mustard oil\r\n2 bay leaves\r\n1 tsp cumin seeds\r\n2 cloves\r\n4 cardamoms\r\n1 tsp cinnamon-broken\r\n1 Tbsp sugar', 'easy', 'active', 'https://www.youtube.com/watch?v=yotwPhzFL7k');
INSERT INTO `recipes` (`recipe_id`, `user_id`, `category_id`, `title`, `permalink`, `description`, `serves`, `prepare_time`, `cooking_time`, `calories`, `directions`, `featured_image`, `created`, `updated`, `gallery`, `visited`, `meta_description`, `ingredients`, `difficulty`, `status`, `video`) VALUES
(32, 19, 2, 'Utappam', 'utappam', 'Hello', '0', '40 min', '30 min', '500', 'Helo', 'download.jpg', '2021-03-24 08:25:50', '2021-03-24 08:25:50', '[\"IRecipes_03233520016165707496_orig.jpg\"]', 3, '', 'ALl', 'medium', 'active', 'https://www.youtube.com/watch?v=BiO1SXyRAs4'),
(33, 20, 1, 'Chicken', 'chicken', 'CHicken 65', '5', '10 min', '40 min', '200', 'banavo', 'download1.jpg', '2021-03-26 12:43:42', '2021-03-26 12:43:42', 'null', 4, '', 'all', 'medium', 'active', 'https://www.youtube.com/watch?v=BiO1SXyRAs4'),
(224, 1, 3, 'Saragva Ni Sing', 'saragva-ni-sing', 'Its a Gujarati Sing.', '4', '10 min', '20 min', '200', 'make it', 'sing.jpg', '2021-03-27 11:21:17', '2021-03-27 11:21:17', '[\"IRecipes_010935400161684047282_orig.jpg\",\"IRecipes_011571600161684047257_orig.jpg\",\"IRecipes_012364600161684047244_orig.jpg\"]', 2, '', 'sargva ni sing\r\nsalt', 'easy', 'active', 'https://www.youtube.com/watch?v=BiO1SXyRAs4');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `default_value`, `required`) VALUES
('contact_form_email', 'contact@email.com', NULL, 0),
('copyright', '2019 Gusto', NULL, 0),
('default_timezone', 'India/Kolkata', 'India/Kolkata', 0),
('description', 'Gusto a powerful platform to manage recipes for food specific websites, that doesn’t require any experience on web development, very easy to use and customize', NULL, 0),
('direction', 'ltr', 'ltr', 0),
('disqus_user', '', NULL, 0),
('facebook', 'https://www.facebook.com/Mr-JD-1396517497159469', 'facebook', 0),
('google_analytics_id', '', NULL, 0),
('google_key', NULL, NULL, 0),
('google_secret_key', NULL, NULL, 0),
('instagram', 'https://www.instagram.com/ig_zodiax', NULL, 0),
('language', 'english', 'english', 1),
('logo', 'logo.png', NULL, 1),
('meta_description', 'Gusto a powerful platform to manage recipes for food specific websites, that doesn’t require any experience on web development, very easy to use and customize', 'desc', 0),
('pagination_limit', '20', NULL, 0),
('phone', '0213236598233', '0', 0),
('pinterest', 'https://pinterest.com/', NULL, 0),
('support', '0123456789', NULL, 0),
('title', 'Gusto Recipes CMS', 'I-Chef', 1),
('twitter', 'https://twitter.com/', NULL, 0),
('twitter_image', '', NULL, 0),
('visitors', '11', '0', 0),
('webmaster_email', 'info@gusto.com', NULL, 0),
('whatsapp', 'https://api.whatsapp.com/send?phone=0123456789', NULL, 0),
('youtube', 'https://www.youtube.com/channel/UCUDUdlOGAOrx2yxby3EbBqA', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `recipe_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `title`, `image`, `description`, `recipe_id`) VALUES
(4, 'South Indian', 'vada.jpg', 'South Indian Dishes', 2),
(5, 'Punjabi', 'paneer.jpg', 'Punjabi Dishes', 7),
(6, 'Gujarati', 'undhyu.jpg', 'Gujarati Dishes', 19),
(7, 'Holi Special', 'phirni.jpg', 'Holi Special Dishes', 22),
(8, 'EID Special', 'tikka.jpg', 'EID Special Dishes', 26),
(9, 'Diwali Special', 'kheer.jpg', 'Diwali Special Dishes', 10);

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `usergroup_id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
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
  `visited` int(11) DEFAULT 0,
  `email_appear` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `usergroup_id`, `username`, `email`, `firstname`, `lastname`, `image`, `password`, `country_id`, `gender`, `status`, `created`, `description`, `visited`, `email_appear`) VALUES
(1, 1, 'JD', 'admin@admin.com', 'Jaydeep', 'Gamit', '12.jpg', 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-08-15 02:25:41', 'Hello Foodies, I am JD. I am here to share my all special and delicious recipes with you guys so keep cooking.', 33, 1),
(2, 2, 'Jay', 'msswsw@m.m', 'Tarek', 'Karl', 'jd.jpg', 'e10adc3949ba59abbe56e057f20f883e', 2, 'female', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 3, 0),
(3, 2, 'Krunal', 'frssfr@gggg.com', 'Eppo', 'Maro', 'kr.jpg', 'e10adc3949ba59abbe56e057f20f883e', 3, 'female', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 2, 0),
(4, 2, 'kru', 'ssyyys@fff.com', 'Semem', 'Laky', 'kr.jpg', 'e10adc3949ba59abbe56e057f20f883e', 4, 'female', 'active', '2018-08-15 03:42:09', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(5, 1, 'Meet', 'yyyyyr@gggg.com', 'John', 'Mirl', 'meet.jpg', 'e10adc3949ba59abbe56e057f20f883e', 5, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 11, 0),
(6, 2, 'meetttttt', 'sswsdwm@m.m', 'Lelo', 'Memo', 'meet.jpg', 'e10adc3949ba59abbe56e057f20f883e', 6, 'female', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 12, 0),
(7, 2, 'gamit', 'm@m.m', 'Seseo', 'Soko', 'jd.jpg', 'e10adc3949ba59abbe56e057f20f883e', 7, 'male', 'active', '2018-08-15 02:25:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 4, 0),
(8, 2, 'solanki', 'oooo@gggg.com', 'Mark', 'Leo', 'kr.jpg', 'e10adc3949ba59abbe56e057f20f883e', 8, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(9, 2, 'vaghasiya', 'pppp@gggg.com', 'Antonio', 'Mark', 'meet.jpg', 'e10adc3949ba59abbe56e057f20f883e', 9, 'male', 'active', '2018-08-15 03:39:41', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(10, 2, 'meetlo', 'sss@fff.com', 'Sara', 'Haksi', 'meet.jpg', 'e10adc3949ba59abbe56e057f20f883e', 10, 'male', 'active', '2018-08-15 03:42:09', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 1, 0),
(11, 2, 'kuniyo', 'kokomomo@gmail.com', 'Will', 'Smith', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 19:14:35', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 7, 0),
(12, 2, 'memooos', 'memo@gogo.net', 'laver', 'mousa', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 21:19:11', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(13, 2, 'klklkl', 'admin@adooomin.com', 'Anna', 'Mikos', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'male', 'active', '2018-09-10 22:31:14', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(14, 2, 'deded', 'admin@admideden.com', 'victoria', 'Loran', NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, 'female', 'active', '2018-09-10 22:32:43', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 1, 0),
(15, 2, 'memosref', 'memosred@yahoo.com', 'karlos', 'mina', NULL, 'e10adc3949ba59abbe56e057f20f883e', 63, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 6, 0),
(16, 2, 'mikka', 'marfwa.elmefnawy91@gmail.com', 'Mikka', 'Lorein', NULL, 'e10adc3949ba59abbe56e057f20f883e', 62, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(17, 2, 'kokooko', 'adfmin@afdmin.com', 'fffff', 'fffff', NULL, 'e10adc3949ba59abbe56e057f20f883e', 55, 'male', 'active', '2018-09-10 23:19:12', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(18, 2, 'hhty', 'gf@fh.lo', '', '', NULL, 'e10adc3949ba59abbe56e057f20f883e', 63, 'male', 'active', '2018-10-06 15:56:29', 'I\'m Sandra and this is where I share my stuff. I am madly in love with food. You will find a balance of healthy recipes, comfort food and indulgent desserts.', 0, 0),
(19, 2, 'jaydeep', 'jay@jay.com', NULL, NULL, NULL, '2abcd90a7b763761013f7a7d8ecef379', NULL, NULL, 'active', '2021-03-24 08:23:10', NULL, 2, 0),
(20, 2, 'jay', 'jay@jgmail.com', NULL, NULL, NULL, 'baba327d241746ee0829e7e88117d4d5', NULL, NULL, 'active', '2021-03-26 12:41:20', NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD PRIMARY KEY (`ad_location_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`usergroup_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ad_locations`
--
ALTER TABLE `ad_locations`
  MODIFY `ad_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `usergroup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
