-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 06:21 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handi_creation`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutus`
--

CREATE TABLE `tbl_aboutus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_aboutus`
--

INSERT INTO `tbl_aboutus` (`id`, `title`, `description`, `file_name`) VALUES
(4, '“CLEAN & GREEN IS OUR FOCAL DREAM”', '<h5 style=\"font-family: Lato, sans-serif; font-weight: 700; color: rgb(34, 34, 34); margin: 0px; font-size: 20px; padding: 8px 0px;\">HANDICREATION &amp; FASHION BD LTD</h5><p style=\"margin-bottom: 0px; color: rgb(34, 34, 34); font-size: 14px; padding: 2px 0px 0px; text-align: justify; font-family: Lato, sans-serif;\">Handicrafts are unique expressions and represent a culture, tradition and heritage of a country. The Handicreation &amp; Fashion BD Ltd<img src=\"http://localhost/halim/HTML/handicreation/images/about/about-2.jpg\" style=\"float: right; width: 364.797px;\">&nbsp;is the manufacturer and exporter of handicrafts in Bangladesh whereas sufficient artisans are full / part time engaged in different production levels and with different kind of responsibilities.&nbsp;<br><br>We are the highly creative/innovative sector in Bangladesh and produced large variety of crafts items which are 100% Eco-Friendly products fabricated from natural and bio-degradable materials like Jute ,Sea Grass (Locally called Hogla Leaf), Cane, Bamboo, Clay, Wood and so on.<br><br>Weknow how to combine natural phenomena with the elements of design in order to create excellency products which are found as common utility and decorative items in millions of users across the world&nbsp;<br><br></p><h6 style=\"font-family: Lato, sans-serif; font-weight: 600; color: rgb(34, 34, 34); font-size: 23px;\">Quality first and Customers Satisfaction must our main mission.</h6>', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `id` varchar(10) NOT NULL COMMENT 'PK',
  `category` varchar(255) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `album_cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_article`
--

CREATE TABLE `tbl_article` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_article`
--

INSERT INTO `tbl_article` (`id`, `title`, `details`, `file_name`) VALUES
(7, 'ABOUT OUR COMPANY', '<p><span xss=removed>Handicrafts are unique expressions and represent a culture, tradition and heritage of a country. The Handicreation & Fashion BD Ltd is the manufacturer and exporter of handicrafts in Bangladesh whereas sufficient artisans are full / part time engaged in different production levels and with different kind of responsibilities....</span><br></p>', '1524639410.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banners`
--

CREATE TABLE `tbl_banners` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `slug` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banners`
--

INSERT INTO `tbl_banners` (`id`, `slug`, `category`, `title`, `file_name`) VALUES
(11, 'home-banner', 'Home Banner', 'Handicreation is available', '1524638715.jpg'),
(12, 'home-banner', 'Home Banner', 'Handicreation is available', '1524638723.jpg'),
(13, 'home-banner', 'Home Banner', 'Handicreation is available', '1524638731.jpg'),
(14, 'home-banner', 'Home Banner', 'Handicreation is available', '1524638738.jpg'),
(15, 'home-banner', 'Home Banner', 'Handicreation is available', '1524638746.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `tittle`, `file_name`) VALUES
(10, 'wood-products', '1525672628.jpg'),
(11, 'bamboo-products', '1525672642.jpg'),
(12, 'Clay products', '1525672524.jpg'),
(13, 'Tote Products', '1525672540.jpg'),
(14, 'Nokshi Katha', '1525672558.jpg'),
(17, 'jute product', '1525672409.jpg'),
(18, 'Sea Grass', '1525672427.jpg'),
(19, 'Cane Products', '1525672446.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` tinyint(1) NOT NULL COMMENT 'PK',
  `company_name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `company_name`, `mobile_no`, `email`, `address`, `facebook`, `twitter`, `youtube`, `logo`) VALUES
(1, 'Handicreation & Fashion Bd Ltd   ', '+880 178 185 6587', 'tanjina@handicreation.com', 'Corporate Office Address:\r\nAddress: Road:  01,  House: 23,  Sector: 06,  Uttara,  Dhaka-1230.\r\nPhone: +880-1781856587.\r\nEmail: tanjina@handicreation.com\r\nWebsite Address: www.handicreation.com', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.youtube.com   ', 'logo2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` varchar(10) NOT NULL COMMENT 'PK',
  `album_id` varchar(10) NOT NULL COMMENT 'FK',
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerypage`
--

CREATE TABLE `tbl_gallerypage` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallerypage`
--

INSERT INTO `tbl_gallerypage` (`id`, `title`, `file_name`) VALUES
(5, 'a', '1524724027.jpg'),
(6, 'b', '1524724034.jpg'),
(7, 'c', '1524724040.jpg'),
(8, 'd', '1524724047.jpg'),
(9, 'e', '1524724052.jpg'),
(10, 'f', '1524724057.jpg'),
(11, 'g', '1524724064.jpg'),
(13, 'i', '1524724075.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homegallery`
--

CREATE TABLE `tbl_homegallery` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_homegallery`
--

INSERT INTO `tbl_homegallery` (`id`, `title`, `file_name`) VALUES
(19, 'fdg', '1525675278.jpg'),
(20, 'dffg', '1525675282.jpg'),
(21, 'fgt', '1525675287.jpg'),
(22, 'fdgfg', '1525675291.jpg'),
(23, 'fvggft', '1525675295.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_management`
--

CREATE TABLE `tbl_management` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_management`
--

INSERT INTO `tbl_management` (`id`, `description`, `file_name`) VALUES
(2, '<h2 style=\"font-family: Lato, sans-serif; font-weight: 600; color: rgb(34, 34, 34); font-size: 18px;\">Name : Tanjina Bhuiyan</h2><h4 style=\"font-family: Lato, sans-serif; font-weight: 900; color: rgb(81, 81, 81); font-size: 16px;\"><i>Managing Director</i></h4><h5 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 14px;\">Phone :&nbsp;&nbsp;+880 178 185 6587</h5><h5 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 14px;\">Email&nbsp;&nbsp; :&nbsp;&nbsp;tanjina@handicreation.com</h5><h5 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 14px;\">Skype&nbsp;&nbsp; :&nbsp;tanjina.maruf</h5>', '1524720320.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `published_date` date NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `published_date`, `slug`, `title`, `details`, `file_name`) VALUES
(1, '2018-01-17', 'what-is-lorem-ipsum', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '1516203248.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL,
  `categoryid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `productsmaterial` text NOT NULL,
  `specification` text NOT NULL,
  `productcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `categoryid`, `name`, `description`, `file_name`, `price`, `stock`, `productsmaterial`, `specification`, `productcode`) VALUES
(4, '17', 'jute', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525508807.jpg', '20', '25', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididu</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '63'),
(5, '17', 'jute', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525511803.jpg', '650', '36', '<p>sdf</p>', '<p>dfd</p>', '65'),
(6, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525511915.jpg', '500', '35', '<p>fgjhy</p>', '<p>gfhjk</p>', '654'),
(7, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525512048.jpg', '300', '100', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '200'),
(8, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525512167.jpg', '300', '400', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt</p>', '50000'),
(9, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525512889.jpg', '300', '500', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '60000'),
(10, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525512853.jpg', '300', '800', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '50000'),
(11, '17', 'jute product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525512955.jpg', '300', '5000', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9000'),
(16, '18', 'Sea Grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513290.jpg', '300', '900', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65400'),
(17, '18', 'sea grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513363.jpg', '300', '600', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9542'),
(18, '18', 'sea grass mproduct', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513413.jpg', '300', '542', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6000'),
(19, '18', 'sea grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513465.jpg', '450', '3654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65478'),
(20, '18', 'sea grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513520.jpg', '400', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '987'),
(21, '18', 'sea grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513571.jpg', '400', '425', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65412'),
(22, '18', 'seas grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513634.jpg', '400', '451', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6521'),
(23, '18', 'sea grass product', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513685.jpg', '400', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '96532'),
(26, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513902.jpg', '250', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '842'),
(27, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525513975.jpg', '300', '963', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '8254'),
(28, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514025.jpg', '350', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9654'),
(29, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514096.jpg', '350', '520', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(30, '19', 'Cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514186.jpg', '250', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '96523'),
(32, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514312.jpg', '500', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '63254'),
(33, '19', 'Cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514413.jpg', '298', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '54'),
(34, '19', 'cane products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514525.jpg', '400', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '63254'),
(36, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514781.jpg', '400', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65987'),
(37, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514834.jpg', '400', '6547', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65412'),
(38, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514887.jpg', '400', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9632'),
(39, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514947.jpg', '400', '652', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '36254'),
(40, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525514995.jpg', '400', '3625', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9654'),
(41, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515055.jpg', '350', '654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9654'),
(42, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515103.jpg', '350', '3654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '9654'),
(43, '10', 'wood products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515167.jpg', '350', '321', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65547'),
(47, '11', 'Bamboo', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515547.jpg', '300', '3654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6547'),
(48, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515660.jpg', '300', '325', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '65412'),
(49, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515762.jpg', '350', '400', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '36254'),
(50, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515826.jpg', '3201', '3625', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '652541'),
(51, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515891.jpg', '350', '326', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '63254'),
(52, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525515946.jpg', '350', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '32145'),
(53, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516000.jpg', '320', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6321'),
(54, '11', 'Bamboo products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516214.jpg', '320', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3214'),
(60, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516480.jpg', '300', '321', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(61, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516565.jpg', '320', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(62, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516619.jpg', '320', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '32145'),
(63, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516683.jpg', '320', '214', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3652'),
(64, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516744.jpg', '310', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(65, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516805.jpg', '310', '300', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3254'),
(66, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516877.jpg', '310', '541', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(67, '12', 'clay products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. .</span><br></p>', '1525516928.jpg', '300', '32145', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '36587');
INSERT INTO `tbl_products` (`id`, `categoryid`, `name`, `description`, `file_name`, `price`, `stock`, `productsmaterial`, `specification`, `productcode`) VALUES
(70, '13', 'Tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517346.jpg', '310', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6554'),
(71, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517369.jpg', '310', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project & Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '214'),
(72, '13', 'Tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517423.jpg', '300', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6587'),
(73, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517478.jpg', '320', '987', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '365214'),
(74, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517572.jpg', '320', '3214', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '654'),
(75, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517631.jpg', '325', '3654', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '96547'),
(76, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517681.jpg', '325', '69854', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '6325'),
(77, '13', 'tote products', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517747.jpg', '340', '365', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '96547'),
(82, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517930.jpg', '1000', '20', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '965214'),
(83, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525517987.jpg', '1200', '63', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '365214'),
(84, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518032.jpg', '1300', '10', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '963254'),
(85, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518076.jpg', '1400', '21', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '8542'),
(86, '14', 'Noksi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518124.jpg', '1200', '251', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '3654'),
(88, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518174.jpg', '1200', '14', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '36541'),
(89, '14', 'Nokshi mksta', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518220.jpg', '1100', '21', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Specification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '96521'),
(90, '14', 'Nokshi katha', '<p><span style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod sed do eiusmod magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </span><br></p>', '1525518263.jpg', '1120', '21', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">Project &amp; Materials</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '<h3 style=\"font-family: Lato, sans-serif; color: rgb(34, 34, 34); font-size: 24px;\">pecification</h3><p style=\"color: rgb(34, 34, 34); font-family: Lato, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>', '254');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productsimage`
--

CREATE TABLE `tbl_productsimage` (
  `id` int(11) NOT NULL,
  `productsid` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_productsimage`
--

INSERT INTO `tbl_productsimage` (`id`, `productsid`, `file_name`) VALUES
(2, '1', '1524903804.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(5) NOT NULL COMMENT 'PK',
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL COMMENT 'Unique',
  `roles` varchar(10) NOT NULL COMMENT 'SuperAdmin, Admin, Editor',
  `username` varchar(25) NOT NULL COMMENT 'Unique',
  `encode_password` varchar(100) NOT NULL COMMENT 'My Custom Hash Password',
  `status` tinyint(1) NOT NULL COMMENT '1 for Active, 0 for Inactive',
  `last_login` datetime NOT NULL COMMENT 'Last login time',
  `last_logout` datetime NOT NULL COMMENT 'Last logout time',
  `created_at` datetime NOT NULL COMMENT 'Created time',
  `modified_at` datetime NOT NULL COMMENT 'Modified time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `roles`, `username`, `encode_password`, `status`, `last_login`, `last_logout`, `created_at`, `modified_at`) VALUES
(1, 'Mohammad Halim', 'halim@wanitbd.com', 'SuperAdmin', 'Halim', '$2y$10$u0XC9.uJlR8z3G0AxfEmeetHDJki4n2ZUTzVR8NPrMV0x1Frxpuly', 1, '2018-05-10 15:01:57', '2018-04-11 11:21:49', '2018-01-17 11:45:20', '2018-04-11 11:21:33'),
(2, 'Admin', 'admin@gmail.com', 'Admin', 'Admin', '$2y$10$H3N82we5U3D6mHLVsk8H1ujdnOyFY8ER07BVMwhwuwz5ETjrhJx2m', 1, '2018-05-08 09:10:09', '2018-05-08 09:43:56', '2018-01-17 11:59:19', '2018-01-17 15:24:36'),
(3, 'Editor', 'editor@gmail.com', 'Editor', 'Editor', '$2y$10$0Ua7SfQACDE2DYUY.pngJ.COjB.kDemKO5fcvDxKp4luGrm8dVm0q', 1, '2018-01-18 10:12:09', '2018-01-18 10:13:30', '2018-01-18 10:04:39', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_article`
--
ALTER TABLE `tbl_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banners`
--
ALTER TABLE `tbl_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallerypage`
--
ALTER TABLE `tbl_gallerypage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_homegallery`
--
ALTER TABLE `tbl_homegallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_management`
--
ALTER TABLE `tbl_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productsimage`
--
ALTER TABLE `tbl_productsimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_article`
--
ALTER TABLE `tbl_article`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_banners`
--
ALTER TABLE `tbl_banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gallerypage`
--
ALTER TABLE `tbl_gallerypage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_homegallery`
--
ALTER TABLE `tbl_homegallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_management`
--
ALTER TABLE `tbl_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_productsimage`
--
ALTER TABLE `tbl_productsimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
