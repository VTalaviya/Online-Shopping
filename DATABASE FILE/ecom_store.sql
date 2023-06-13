-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 07:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@gmail.com', 'admin@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` int(11) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Female', 'no', 'feminelg.png'),
(3, 'Kids', 'no', 'kidslg.jpg'),
(4, 'Others', 'yes', 'othericon.png'),
(5, 'Men', 'yes', 'malelg.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ecomstore@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(5, 8, 'Sale', '10', 'CASTRO', 2, 1),
(6, 5, 'Sale', '65', 'CODEASTRO ', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'viraj', 'viraj@gmail.com', 'viraj@123', 'Australia', 'Brisbane', '985565656', 'brisbane', 'user.jpg', '::1', ''),
(3, 'fenil', 'fenil@gmail.com', 'fenil@123', 'India', 'Surat', '6351588966', 'vesu', 'i1.jpg', '::1', ''),
(4, 'sahil', 'sahil@gmail.com', 'sahil@123', 'United states', 'new york', '777777777', '111 Address', 'i3.jpg', '::1', '1427053935'),
(5, 'harshil', 'harshil@gmail.com', 'harshil@123', 'India', 'Mumbai', '780000000', 'Borivali east', 'i4.png', '::1', '1634138674'),
(6, 'archit', 'archit@gmail.com', 'archit@123', 'Canada', 'Toronto', '7800000000', 'CH2-Toronto', 'i5.jpg', '::1', '174829126'),
(7, 'Talaviya viraj', 'virajtalaviya02@gmail.com', 'Viraj@123', 'India', 'Surat', '9879225401', 'Tirupati soc.,L.H road', 'c1.jpeg', '::1', '985092781'),
(8, 'Jay Limbani', 'jay@gmail.com', 'Jay@123', 'India', 'Surat', '9845454554', 'Near rahulraj mall', 'kurta.jpg', '127.0.0.1', '600589958');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `payid`, `product_id`, `due_amount`, `qty`, `size`, `order_date`, `order_status`) VALUES
(91948, 7, 63, 5, 200, 2, 'Medium', '2023-06-07 18:27:11', 'Success'),
(91949, 7, 63, 9, 105, 3, 'Small', '2023-06-07 18:27:11', 'Success'),
(91950, 7, 64, 13, 180, 2, 'Small', '2023-06-07 18:28:04', 'Success'),
(91951, 3, 65, 27, 5598, 2, 'Large', '2023-06-11 11:14:44', 'Success'),
(91952, 3, 65, 80, 2798, 2, 'Medium', '2023-06-11 11:14:44', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL,
  `enquiry_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Adidas', 'no', 'adilg.png'),
(3, 'Nike', 'no', 'niketransl.png'),
(4, 'Philip Plein', 'no', 'pplg.png'),
(5, 'Lacoste', 'no', 'lacostelg.png'),
(7, 'Polo', 'no', 'polobn.jpg'),
(8, 'Gildan 1800', 'no', 'sample_img360.png'),
(9, 'Ajio', 'yes', 'Screenshot 2023-06-08 135341 .png'),
(10, 'Allen solly', 'yes', 'sar2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payid` int(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payid`, `fullname`, `amount`, `txnid`, `payer_email`, `currency`, `mobile`, `address`, `payment_date`, `status`) VALUES
(63, 'Talaviya viraj', 305, 'pay_Lz8eDYoKPzu8JC', 'virajtalaviya02@gmail.com', 'INR', '9879225401', 'Tirupati soc.,L.H road', '2023-06-07 23:57:11', 'Success'),
(64, 'Talaviya viraj', 180, 'pay_Lz8f9ZwbmZlICh', 'virajtalaviya02@gmail.com', 'INR', '9879225401', 'Tirupati soc.,L.H road', '2023-06-07 23:58:04', 'Success'),
(65, 'fenil', 8396, 'pay_M0bPEDyVoaPTdj', 'fenil@gmail.com', 'INR', '6351588966', 'vesu', '2023-06-11 16:44:44', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` varchar(255) NOT NULL,
  `product_url` varchar(255) NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `product_features` varchar(255) NOT NULL,
  `product_video` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `product_label` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(5, 4, 5, 5, '2023-06-08 12:15:52', 'Denim Borg Lined Western Jacket', 'product-url-5', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 259, 100, '\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample p', '\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n', '\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n', 'Jackets', 'New', 'product'),
(9, 5, 4, 7, '2021-09-14 17:06:30', 'Long Sleeves Polo Shirt for Men', 'product-url-9', 'product-1.jpg', 'product-2.jpg', 'product-3.jpg', 50, 35, '\r\n\r\n\r\n\r\n<p>This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample product description. This is a sample', '\r\n\r\n\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n', 'T-Shirt', 'Sale', 'product'),
(13, 6, 2, 3, '2023-06-08 12:14:16', 'Nike Sportswear Essential Collection', 'nike-sportswear-essen-col', 'nike-s.jpg', 'nike-s2.jpg', 'nike-s02.jpg', 90, 85, '\r\n\r\nThis is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text. This is a sample text', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text. This is a sample text.This is a sample text. This is a sample text.', '\r\n\r\n\r\nThis is a sample text. This is a sample text. This is a sample text.\r\n\r\n\r\n', 'nike sportswear', 'Featured', 'product'),
(16, 5, 5, 3, '2023-06-08 08:39:31', 'Men Regular Round Neck T-Shirt ', 'regular-round-neck', 'Screenshot 2023-06-08 135252.png', 'Screenshot 2023-06-08 135317.png', 'Screenshot 2023-06-08 135341.png', 299, 299, '\r\n\r\n\r\n\r\n\r\n    Care Instructions: Machine Wash\r\n    Fit Type: Regular Fit\r\n    Material - 100% Cotton\r\n    Pattern - Solid, Fit Type - Regular Fit, Half Sleeve T-Shirts\r\n    Neck Type - Round Neck\r\n    Great for layering or wearing alone, this T-shirt feat', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'T-shirt', 'Sale', 'product'),
(23, 9, 5, 3, '2023-06-08 10:36:37', 'blackberrys Men\'s 4 Piece Slim Fit Suits', 'piece-slim-suit', '512YO12JnyL._UL1500_.jpg', '51qYrputPUL._UL1500_.jpg', '81a4qjmJ46L._UL1500_.jpg', 1200, 1100, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(25, 9, 5, 9, '2023-06-08 10:40:55', 'Dhingra Mens Slim Fit Tuxedo 3pcs Suit', 'Dhingra-Mens-Slim', 'suit4.jpg', 'suit5.jpg', 'suit6.jpg', 4000, 3500, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(26, 0, 0, 9, '2023-06-08 10:42:06', 'hangup Formal Coat Suits for Mens', 'hangup-Formal-Coat-Suits', 'su2.jpg', 'su1.jpg', 'su2.jpg', 2400, 2200, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(27, 9, 3, 3, '2023-06-12 17:26:09', 'HIGHEK Men\'s Slim Fit Casual, Single Breasted', 'HIGHEK-Men-Slim', 'ss1.jpg', 'ss2.jpg', 'ss3.jpg', 2799, 2599, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'suit', 'New', 'product'),
(28, 9, 5, 9, '2023-06-08 10:45:23', 'Peter England Men Business Suit Vest', 'Peter-England-Men', 'sss2.jpg', 'sss3.jpg', 'sss1.jpg', 6499, 5499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(30, 9, 5, 9, '2023-06-08 10:47:11', 'Shaan Fashion (TYEIS+) Bandhgala/Jodhpuri Slim Fit', 'Shaan-Fashion', 'sut1.jpg', 'sut2.jpg', 'sut3.jpg', 3199, 2999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(32, 7, 2, 9, '2023-06-08 10:50:13', 'Rajnandini Women\'s Cotton Unstitched Salwar Suit', 'Cotton-Unstitched-Salwar', 'ww1.jpg', 'ww2.jpg', 'ww3.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(33, 7, 2, 9, '2023-06-08 10:51:18', 'Vaamsi Women\'s Cotton Blend Kalamkari', 'Cotto-Blend-Kalamkari', 'wo1.jpg', 'wo2.jpg', 'wo3.jpg', 999, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', '499', 'New', 'product'),
(34, 8, 2, 7, '2023-06-08 10:52:36', 'Women\'s Banarasi Silk Saree', 'Women-Banarasi-Silk-Saree', 'sari1.jpg', 'sari2.jpg', 'sari3.jpg', 699, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'saree', 'New', 'product'),
(35, 4, 5, 9, '2023-06-08 10:54:43', 'Scott International Men\'s & Boys Cotton', 'Scott-International-Men', 'WhatsApp Image 2023-06-08 at 16.20.46.jpg', 'WhatsApp Image 2023-06-08 at 16.18.56.jpg', 'WhatsApp Image 2023-06-08 at 16.20.53.jpg', 599, 499, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Hoodie', 'New', 'product'),
(36, 4, 5, 9, '2023-06-08 10:56:05', 'EYEBOGLER Regular Hoodie for Men', ' Regular-Hoodie-Men', 'WhatsApp Image 2023-06-08 at 16.22.28.jpg', 'WhatsApp Image 2023-06-08 at 16.22.20.jpg', 'WhatsApp Image 2023-06-08 at 16.22.34.jpg', 279, 250, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'Sale', 'product'),
(37, 4, 5, 9, '2023-06-08 10:57:14', 'TeesTheDay Unisex Attack ', 'TeesTheDay-Unisex-Attack ', 'WhatsApp Image 2023-06-08 at 16.23.20.jpg', 'WhatsApp Image 2023-06-08 at 16.23.38.jpg', 'WhatsApp Image 2023-06-08 at 16.23.45.jpg', 899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'new', 'product'),
(38, 4, 2, 7, '2023-06-08 10:58:28', 'Unisex-Adult Cotton Hooded Printed Hoodie', 'Unisex-Adult', 'WhatsApp Image 2023-06-08 at 16.24.19.jpg', 'WhatsApp Image 2023-06-08 at 16.24.07.jpg', 'WhatsApp Image 2023-06-08 at 16.24.12.jpg', 719, 707, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(39, 4, 5, 9, '2023-06-08 10:59:36', 'Allen Solly Men Cotton Hooded Neck Sweatshirt', 'Allen-Solly-Men', 'WhatsApp Image 2023-06-08 at 16.25.30.jpg', 'WhatsApp Image 2023-06-08 at 16.25.37.jpg', 'WhatsApp Image 2023-06-08 at 16.25.44.jpg', 1699, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(40, 4, 5, 9, '2023-06-08 11:02:03', 'Del Sol NASCAR Men\'s Jimmie', 'Del-Sol-NASCAR', 'WhatsApp Image 2023-06-08 at 16.26.25.jpg', 'WhatsApp Image 2023-06-08 at 16.26.31.jpg', 'WhatsApp Image 2023-06-08 at 16.26.49.jpg', 93149, 90999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(41, 4, 2, 2, '2023-06-08 11:03:06', 'ZUVINO Women\'s Fleece Hooded', 'Fleece-Hooded', 'WhatsApp Image 2023-06-08 at 16.27.50.jpg', 'WhatsApp Image 2023-06-08 at 16.27.58.jpg', 'WhatsApp Image 2023-06-08 at 16.28.03.jpg', 399, 299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(42, 4, 2, 9, '2023-06-08 11:05:49', 'Wear Your Opinion Women\'s Plus Size ', 'Wear-Your-Opinion', 'WhatsApp Image 2023-06-08 at 16.29.38.jpg', 'WhatsApp Image 2023-06-08 at 16.29.43.jpg', 'WhatsApp Image 2023-06-08 at 16.29.49.jpg', 999, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(43, 4, 2, 9, '2023-06-08 11:07:09', 'Alan Jones Clothing Women\'s Cotton', 'Alan-Jones-Clothing', 'WhatsApp Image 2023-06-08 at 16.30.21.jpg', 'WhatsApp Image 2023-06-08 at 16.30.27.jpg', 'WhatsApp Image 2023-06-08 at 16.30.32.jpg', 649, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(44, 4, 5, 9, '2023-06-11 17:31:33', 'DUDEME: Naruto Akatsuki', 'DUDEME-Naruto-Akatsuki', 'WhatsApp Image 2023-06-08 at 16.32.06.jpg', 'WhatsApp Image 2023-06-08 at 16.32.11.jpg', 'WhatsApp Image 2023-06-08 at 16.32.16.jpg', 1299, 899, '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Hoodie', 'Sale', 'product'),
(45, 5, 5, 7, '2023-06-08 11:10:07', 'Van Heusen Men\'s Regular Fit Polo Shirt', 'Van-Heusen-Men', 'WhatsApp Image 2023-06-08 at 16.33.17.jpg', 'WhatsApp Image 2023-06-08 at 16.33.27.jpg', 'WhatsApp Image 2023-06-08 at 16.33.36.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(46, 5, 5, 9, '2023-06-08 11:11:40', 'Amazon Brand - Symbol Men\'s Regular', 'Brand-Symbol', 'WhatsApp Image 2023-06-08 at 16.33.58.jpg', 'WhatsApp Image 2023-06-08 at 16.34.06.jpg', 'WhatsApp Image 2023-06-08 at 16.34.19.jpg', 369, 269, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(47, 5, 5, 8, '2023-06-08 11:12:52', 'Amazon Brand - Symbol Men Polo Shirt', 'Amazon-Brand ', 'WhatsApp Image 2023-06-08 at 16.34.43.jpg', 'WhatsApp Image 2023-06-08 at 16.34.52.jpg', 'WhatsApp Image 2023-06-08 at 16.35.04.jpg', 369, 249, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(48, 5, 5, 7, '2023-06-08 11:14:03', 'AELOMART Men\'s Cotton T-Shirt', 'AELOMART-Men', 'WhatsApp Image 2023-06-08 at 16.35.45.jpg', 'WhatsApp Image 2023-06-08 at 16.35.49.jpg', 'WhatsApp Image 2023-06-08 at 16.35.53.jpg', 472, 369, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(49, 5, 5, 9, '2023-06-08 11:15:21', 'ADRO Mens Attack on Titan Cotton T-Shirt', 'ADRO-Mens-Attack', 'WhatsApp Image 2023-06-08 at 16.36.31.jpg', 'WhatsApp Image 2023-06-08 at 16.36.27.jpg', 'WhatsApp Image 2023-06-08 at 16.36.37.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(50, 5, 5, 9, '2023-06-08 11:16:49', 'House & Shields Men T-Shirt', 'Men-T-Shirt', 'WhatsApp Image 2023-06-08 at 16.37.00.jpg', 'WhatsApp Image 2023-06-08 at 16.37.28.jpg', 'WhatsApp Image 2023-06-08 at 16.37.35.jpg', 499, 399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(51, 5, 2, 5, '2023-06-08 11:18:19', 'DENIMHOLIC Cotton Half Sleeve', 'Cotton-Half-Sleeve', 'WhatsApp Image 2023-06-08 at 16.39.21.jpg', 'WhatsApp Image 2023-06-08 at 16.39.14.jpg', 'WhatsApp Image 2023-06-08 at 16.39.09.jpg', 425, 399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(52, 5, 2, 3, '2023-06-08 11:19:16', 'BlissClub Women The Last tee', 'BlissClub-Women', 'WhatsApp Image 2023-06-08 at 16.39.49.jpg', 'WhatsApp Image 2023-06-08 at 16.39.54.jpg', 'WhatsApp Image 2023-06-08 at 16.40.02.jpg', 813, 729, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(53, 5, 2, 9, '2023-06-11 17:38:15', 'Cotton T-Shirt - Slim Fit', 'Cotton-T-Shirt', 'WhatsApp Image 2023-06-08 at 16.40.21.jpg', 'WhatsApp Image 2023-06-08 at 16.40.35.jpg', 'WhatsApp Image 2023-06-08 at 16.40.39.jpg', 450, 429, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'T-shirt', 'New', 'product'),
(54, 5, 2, 9, '2023-06-08 11:21:30', 'DHRUVI TRENDZ Women\'s Lycra Striped Tie-Dye', 'DHRUVI-TRENDZ', 'WhatsApp Image 2023-06-08 at 16.41.01.jpg', 'WhatsApp Image 2023-06-08 at 16.41.06.jpg', 'WhatsApp Image 2023-06-08 at 16.41.10.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(55, 5, 2, 7, '2023-06-08 11:22:31', 'Wear Your Opinion Womens Polo Collar Neck ', 'Wear-Your-Opinion', 'WhatsApp Image 2023-06-08 at 16.41.32.jpg', 'WhatsApp Image 2023-06-08 at 16.41.46.jpg', 'WhatsApp Image 2023-06-08 at 16.41.38.jpg', 399, 299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(56, 5, 2, 2, '2023-06-08 11:23:46', 'RodZen Oversized | Loose Fit | Relaxed Fit ', 'RodZen-Oversized', 'WhatsApp Image 2023-06-08 at 16.42.07.jpg', 'WhatsApp Image 2023-06-08 at 16.42.12.jpg', 'WhatsApp Image 2023-06-08 at 16.42.17.jpg', 427, 399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(57, 5, 2, 2, '2023-06-08 11:24:53', 'Preneum Women\'s Beige Letter Print Straight T-Shirt', 'Lette-Print-Straight', 'WhatsApp Image 2023-06-08 at 16.42.34.jpg', 'WhatsApp Image 2023-06-08 at 16.42.38.jpg', 'WhatsApp Image 2023-06-08 at 16.42.43.jpg', 219, 199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(58, 5, 2, 8, '2023-06-11 16:51:38', 'LEOTUDE Cotton Blend Half Sleeve', 'Cotton-Blend-Half-Sleeve', 't11.jpg', 'WhatsApp Image 2023-06-08 at 16.43.57.jpg', 'WhatsApp Image 2023-06-08 at 16.44.01.jpg', 294, 199, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'T-shirt', 'New', 'product'),
(59, 7, 5, 9, '2023-06-08 11:27:10', 'Amazon Brand - Symbol Men Long Kurta', 'Symbol-Men-Long-Kurta', 'WhatsApp Image 2023-06-08 at 16.46.28.jpg', 'WhatsApp Image 2023-06-08 at 16.46.34.jpg', 'WhatsApp Image 2023-06-08 at 16.46.40.jpg', 859, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(60, 7, 5, 9, '2023-06-08 11:28:36', 'BE ACTIVE Men\'s Chikankari Kurta', 'Chikankari-Kurta', 'WhatsApp Image 2023-06-08 at 16.46.57.jpg', 'WhatsApp Image 2023-06-08 at 16.47.02.jpg', 'WhatsApp Image 2023-06-08 at 16.47.07.jpg', 1049, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(61, 7, 5, 4, '2023-06-08 11:29:31', 'Veera Paridhaan Men\'s Banarasi Full Sleeve', 'Banarasi-Full-Sleeve', 'WhatsApp Image 2023-06-08 at 16.47.30.jpg', 'WhatsApp Image 2023-06-08 at 16.47.35.jpg', 'WhatsApp Image 2023-06-08 at 16.47.40.jpg', 957, 857, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(62, 7, 5, 5, '2023-06-08 11:30:32', 'See Designs Men Mens Kurta', 'See-Designs-Men', 'WhatsApp Image 2023-06-08 at 16.48.03.jpg', 'WhatsApp Image 2023-06-08 at 16.48.07.jpg', 'WhatsApp Image 2023-06-08 at 16.48.14.jpg', 689, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(63, 7, 5, 9, '2023-06-08 11:31:18', 'See Designs Men Mens Kurta', 'Mens-Kurta', 'WhatsApp Image 2023-06-08 at 16.48.34.jpg', 'WhatsApp Image 2023-06-08 at 16.48.41.jpg', 'WhatsApp Image 2023-06-08 at 16.48.45.jpg', 699, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(64, 7, 2, 2, '2023-06-08 11:32:52', 'DA Fashion Men\'s & Women\'s Kurta', 'DA-Fashion', 'WhatsApp Image 2023-06-08 at 16.49.45.jpg', 'WhatsApp Image 2023-06-08 at 16.49.44.jpg', 'WhatsApp Image 2023-06-08 at 16.49.46.jpg', 2999, 1999, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Kurta', 'New', 'product'),
(65, 7, 5, 5, '2023-06-08 11:33:55', 'LADKU Mens Ethnic Ware Embroidery', 'LADKU-Mens-Ethnic', 'WhatsApp Image 2023-06-08 at 16.50.18.jpg', 'WhatsApp Image 2023-06-08 at 16.50.22.jpg', 'WhatsApp Image 2023-06-08 at 16.50.24.jpg', 1149, 1099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(66, 7, 5, 4, '2023-06-08 11:34:51', 'Ravadhi Embroided Cotton Kurta for Men', 'Ravadhi-Embroided', 'WhatsApp Image 2023-06-08 at 16.51.18.jpg', 'WhatsApp Image 2023-06-08 at 16.51.13.jpg', 'WhatsApp Image 2023-06-08 at 16.53.49.jpg', 949, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(67, 7, 5, 3, '2023-06-08 11:35:42', 'Tartine D.H. Enterprise Men\'s Georgette', ' Men-Georgette', 'WhatsApp Image 2023-06-08 at 16.53.56.jpg', 'WhatsApp Image 2023-06-08 at 16.54.06.jpg', 'WhatsApp Image 2023-06-08 at 16.54.15.jpg', 2699, 2599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(68, 4, 3, 3, '2023-06-08 11:36:37', 'Amazon Brand - Jam & Honey Boys Sweatshirt', 'Honey-Boys-Sweatshirt', 'WhatsApp Image 2023-06-08 at 16.56.25.jpg', 'WhatsApp Image 2023-06-08 at 16.56.30.jpg', 'WhatsApp Image 2023-06-08 at 16.56.37.jpg', 585, 485, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(69, 4, 3, 2, '2023-06-08 11:37:32', 'Boys Cotton Hooded', 'Cotton-Hooded', 'WhatsApp Image 2023-06-08 at 16.56.58.jpg', 'WhatsApp Image 2023-06-08 at 16.56.53.jpg', 'WhatsApp Image 2023-06-08 at 16.57.03.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(70, 4, 3, 5, '2023-06-08 11:38:23', 'ARIEL Boys Cotton Hooded Sweatshirt', 'ARIEL-Boys-Cotton', 'WhatsApp Image 2023-06-08 at 16.57.41.jpg', 'WhatsApp Image 2023-06-08 at 16.57.36.jpg', 'WhatsApp Image 2023-06-08 at 16.57.32.jpg', 649, 549, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodie', 'New', 'product'),
(71, 9, 3, 3, '2023-06-11 11:27:15', 'Urbano Juniors Boy\'s Light Blue Slim Fit', 'Urbano-Juniors', 'WhatsApp Image 2023-06-08 at 16.59.04.jpg', 'WhatsApp Image 2023-06-08 at 16.59.28.jpg', 'WhatsApp Image 2023-06-08 at 16.59.33.jpg', 699, 599, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Suit', 'New', 'product'),
(72, 6, 3, 2, '2023-06-08 11:40:15', 'Jam & Honey Boys Jeans', 'Boys-Jeans', 'WhatsApp Image 2023-06-08 at 16.59.56.jpg', 'WhatsApp Image 2023-06-08 at 17.00.03.jpg', 'WhatsApp Image 2023-06-08 at 17.00.11.jpg', 669, 679, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(73, 6, 3, 4, '2023-06-08 11:41:14', 'HIGH Star Boys Blue Slim-Fit', 'Slim-Fit', 'WhatsApp Image 2023-06-08 at 17.00.47.jpg', 'WhatsApp Image 2023-06-08 at 17.00.53.jpg', 'WhatsApp Image 2023-06-08 at 17.01.00.jpg', 769, 669, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(75, 8, 2, 4, '2023-06-08 11:44:07', 'SIRIL Women\'s Printed Poly Silk Saree with Blouse', ' Poly-Silk-Saree', 'sar1.jpg', 'sar2.jpg', 'sar3.jpg', 1299, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(76, 8, 2, 10, '2023-06-08 11:45:32', 'MIRCHI FASHION Women\'s Cotton', 'MIRCHI-FASHION', 's13.jpg', 's10.jpg', 's11.jpg', 899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(77, 8, 2, 3, '2023-06-08 11:46:20', 'women\'s kutchi work embroidered', 'kutchi-work-embroidered', '91JYyTKEnYL._UL1500_.jpg', '91dRi+M4SXL._UL1500_.jpg', '81zBBaVeBhL._UL1500_.jpg', 1199, 1099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(78, 8, 2, 7, '2023-06-08 11:47:27', 'SGF11 Women\'s Kanjivaram Soft Silk Saree', 'Soft-Silk-Saree', '61gl6ptTKoL._UL1280_.jpg', '71Lp0FeSl2L._UL1500_.jpg', '712r6exQc+L._UL1500_.jpg', 1499, 1399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(79, 8, 2, 9, '2023-06-08 11:48:35', 'Shiv Textiles Women\'s Banarasi Silk Saree', 'Banarasi-Silk-Saree', 'so1.jpg', 'so2.jpg', 'so3.jpg', 1649, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(80, 8, 2, 8, '2023-06-08 11:49:57', 'Yashika Women\'s Art Silk Printed Saree', 'Silk-Printed-Saree', 'WhatsApp Image 2023-06-08 at 16.28.38.jpg', 'WhatsApp Image 2023-06-08 at 16.28.43.jpg', 'WhatsApp Image 2023-06-08 at 16.28.50.jpg', 1499, 1399, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Saree', 'Sale', 'product'),
(81, 6, 5, 7, '2023-06-08 11:51:11', 'Diverse Men\'s Slim Jeans', 'Diverse-Slim-Jeans', 'WhatsApp Image 2023-06-08 at 16.41.00.jpg', 'WhatsApp Image 2023-06-08 at 16.41.17.jpg', 'WhatsApp Image 2023-06-08 at 16.41.06.jpg', 1299, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(82, 6, 5, 8, '2023-06-08 11:52:11', 'U S POLO - Symbol Men Jeans', 'Symbol-Men-Jeans', 'WhatsApp Image 2023-06-08 at 16.41.37.jpg', 'WhatsApp Image 2023-06-08 at 16.41.43.jpg', 'WhatsApp Image 2023-06-08 at 16.42.01.jpg', 4999, 3999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(83, 6, 5, 10, '2023-06-08 11:53:15', 'Denim Jeans Slim Fit Mid Rise Flat Front', 'Denim-Jeans', 'WhatsApp Image 2023-06-08 at 16.42.26.jpg', 'WhatsApp Image 2023-06-08 at 16.42.32.jpg', 'WhatsApp Image 2023-06-08 at 16.42.37.jpg', 1599, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(84, 6, 5, 9, '2023-06-08 11:54:13', 'Peter England Men\'s Skinny Jeans', 'Peter-England', 'WhatsApp Image 2023-06-08 at 16.43.11.jpg', 'WhatsApp Image 2023-06-08 at 16.43.15.jpg', 'WhatsApp Image 2023-06-08 at 16.43.21.jpg', 4999, 3999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(85, 6, 5, 7, '2023-06-08 11:55:05', 'Ben Martin Men\'s Comfortable Denim Jeans', 'Comfortable-Denim-Jeans', 'WhatsApp Image 2023-06-08 at 16.43.46.jpg', 'WhatsApp Image 2023-06-08 at 16.43.40.jpg', 'WhatsApp Image 2023-06-08 at 16.43.52.jpg', 1099, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(86, 6, 5, 10, '2023-06-08 11:56:06', 'Ben Martin Men\'s Slim Fit Jeans', 'Ben-Martin', 'WhatsApp Image 2023-06-08 at 16.47.23.jpg', 'WhatsApp Image 2023-06-08 at 16.47.29.jpg', 'WhatsApp Image 2023-06-08 at 16.47.33.jpg', 1299, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Jeans', 'New', 'product'),
(87, 5, 3, 10, '2023-06-08 11:57:12', 'T2F Boy\'s Regular Fit T-Shirt', 'Regular-Fit-T-Shirt', 'WhatsApp Image 2023-06-08 at 16.54.58.jpg', 'WhatsApp Image 2023-06-08 at 16.55.04.jpg', 'WhatsApp Image 2023-06-08 at 16.55.00.jpg', 499, 399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(88, 5, 3, 10, '2023-06-08 11:58:11', 'Allen Solly Junior Boy\'s T-Shirt', 'Allen-Solly-Junior', 'WhatsApp Image 2023-06-08 at 16.55.25.jpg', 'WhatsApp Image 2023-06-08 at 16.55.32.jpg', 'WhatsApp Image 2023-06-08 at 16.55.44.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(89, 5, 3, 10, '2023-06-08 11:59:07', 'U.S. POLO ASSN. Boys T-Shirt', 'ASSN-Boys-T-Shirt', 'WhatsApp Image 2023-06-08 at 16.56.40.jpg', 'WhatsApp Image 2023-06-08 at 16.56.44.jpg', 'WhatsApp Image 2023-06-08 at 16.56.52.jpg', 699, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(90, 5, 3, 10, '2023-06-08 11:59:57', 'Allen Solly Junior Boys T-Shirt', 'Allen-Solly-Junior', 'WhatsApp Image 2023-06-08 at 16.57.22.jpg', 'WhatsApp Image 2023-06-08 at 16.57.29.jpg', 'WhatsApp Image 2023-06-08 at 16.57.35.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-shirt', 'New', 'product'),
(91, 9, 3, 10, '2023-06-11 11:26:11', 'Z&G Trends Solid 4 Piece Coat Suit', 'Piece-Coat-Suit', 'WhatsApp Image 2023-06-08 at 16.58.59.jpg', 'WhatsApp Image 2023-06-08 at 16.58.51.jpg', 'WhatsApp Image 2023-06-08 at 16.59.04.jpg', 2499, 2399, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Suit', 'New', 'product'),
(92, 9, 3, 10, '2023-06-08 12:02:00', 'SG YUVRAJ Kids Suit Set For Boys', 'Set-For-Boys', 'WhatsApp Image 2023-06-08 at 16.59.31.jpg', 'WhatsApp Image 2023-06-08 at 16.59.35.jpg', 'WhatsApp Image 2023-06-08 at 16.59.39.jpg', 2499, 2399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(93, 9, 3, 10, '2023-06-08 12:02:58', 'Joley Poley Kid\'s Regular Fit Suit', 'Regular-Fit-Suit', 'WhatsApp Image 2023-06-08 at 17.00.09.jpg', 'WhatsApp Image 2023-06-08 at 17.00.13.jpg', 'WhatsApp Image 2023-06-08 at 17.00.16.jpg', 1999, 1899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(94, 9, 3, 10, '2023-06-08 12:03:57', 'Pro-Ethic Style Developer 3 Piece Suit', 'Pro-Ethic-Style ', 'WhatsApp Image 2023-06-08 at 17.01.22.jpg', 'WhatsApp Image 2023-06-08 at 17.01.11.jpg', 'WhatsApp Image 2023-06-08 at 17.01.14.jpg', 2599, 2499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'suit', 'New', 'product'),
(95, 7, 3, 9, '2023-06-11 09:30:27', 'Pro-Ethic Style Cotton Kids Kurta', 'pro-ethic-style-kurta', '81VsOkKFozL._UL1500_.jpg', '81ZjA+fzBmL._UL1500_.jpg', 'A1cqn+rwYnL._UL1500_.jpg', 658, 558, '\r\nCare Instructions: Hand Wash Only\r\nFit Type: Regular\r\nWe Made Kurta Pajama For Kids Boys In Size 1-2 years, 2-3 years, 3-4 years, 4-5 years, 5-6 years, 6-7 years, 7-8 years, 8-9 years, 9-10 years, 10-11 years, 11-12 years, 12-13 years, 13-14 years, 14-1', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Kurta', 'New', 'product'),
(96, 7, 3, 5, '2023-06-11 09:33:17', 'Kid\'s Full Sequin Mirror Work Kurta', 'kids-sequin-kurta', 'k1.jpg', 'k2.jpg', 'k3.jpg', 899, 849, '\r\n\r\nCare Instructions: Dry Clean Only\r\n\r\nFit Type: Regular\r\nMATERIAL: Traditional Indian wear long Kurta made from Cotton. The breathable fabric of these kurtas gets softer with every wash. Comes with White colored elastic Pyjama\r\n\r\nSTYLE: Regular Fit, Fi', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(97, 7, 3, 4, '2023-06-11 09:37:01', 'Boys Festive & Party Kurta and Pyjama Set', 'Boys-Festive-Party-Kurta', '71iMRoZclVL._UL1500_.jpg', '61hPV2LWn6L._UL1500_.jpg', '71kQoCwnzhL._UL1500_.jpg', 599, 549, '\r\n\r\nCare Instructions: Dry Clean Only\r\nFit Type: Regular\r\nOccasion: Party Wear, Ceremony, Festivals, Marriage\r\nThis ethnic wear for kids boys fabric has been designed keeping in mind the latest trends in a casual fashion or Occassional fashion.', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(98, 7, 3, 7, '2023-06-11 09:39:28', 'Superminis Baby Boys Printed Kurta', ' Boys-Printed-Cotton-Kurta', 'kk2.jpg', 'kk1.jpg', 'kk3.jpg', 599, 499, '\r\n\r\nMATERIAL: Traditional Indian wear long Kurta made from 100% Cotton. The breathable fabric of these kurtas gets softer with every wash. Comes with White colored elastic Pyjama\r\nSTYLE: Regular Fit, Fits True to size, great fit and feel. This Printed kur', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(100, 4, 3, 5, '2023-06-11 10:47:33', 'CUPIDVIBE Girls Velvet Hoodie', 'CUPIDVIBE-Girls-Velvet-Hoodie', '61AzLzKWmML._UL1280_.jpg', '61dfefN8yQL._UL1280_.jpg', '51JV+Iu+4qL._UL1280_.jpg', 599, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(101, 4, 3, 8, '2023-06-11 10:49:18', 'Big Boys Hoody Full Sleeve Pack of 1', 'Boys-Hoody-Full-Sleeve', '1.jpg', '2.jpg', '3.jpg', 649, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(102, 4, 2, 2, '2023-06-12 17:21:13', 'Indian Terrain Boys Hoodie', 'Indian-Terrain-Boys', 'h1.jpg', 'h2.jpg', 'h3.jpg', 799, 699, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Hoodies', 'New', 'product'),
(103, 4, 3, 4, '2023-06-11 10:53:33', 'Dagcros Boy\'s Full Sleeve Hoody', ' Boy-Full-Sleeve-Hoody', 'b1.jpg', 'b2.jpg', 'b3.jpg', 499, 449, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(104, 4, 3, 3, '2023-06-11 10:56:42', 'BUMZEE Boys Hooded Sweatshirt', 'Boys-Hooded-Sweatshirt', 'a1.jpg', 'a2.jpg', 'a3.jpg', 659, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(105, 4, 3, 2, '2023-06-11 10:59:34', 'Kids Cotton Spider Man Hoodie ', 'Kids-Cotton-Spider-Man-Hoodie ', '51DGlhfdbcL._UL1440_.jpg', '71Q2-25EyVL._UL1500_.jpg', '51bg1Kk3RrL._UL1440_.jpg', 899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(106, 4, 3, 7, '2023-06-11 11:02:45', 'JUGULAR Boys Neck Jacket', 'JUGULAR-Boys-Neck-Jacket', '71d-wtcURHL._UL1500_.jpg', '414YyOAzj0L.jpg', '71d-wtcURHL._UL1500_ (1).jpg', 899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(107, 4, 3, 3, '2023-06-11 11:04:22', 'CuB McPAWS Boys Sweatshirt', 'CuB McPAWS-Boys-Sweatshirt', '61YlrVErjPL._UL1440_.jpg', '611rOBGhOvL._UL1440_.jpg', '71cQlcIeNOL._UL1440_.jpg', 599, 549, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(108, 5, 3, 10, '2023-06-11 11:06:46', 'BONKIDS Boys Regular Fit tshirt', 'BONKIDS-Boys-Regular-Fit-tshirt', '51V-y7+U9kS._UL1000_.jpg', '51sGamZqjxS._UL1000_.jpg', '51V-y7+U9kS._UL1000_ (1).jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(110, 5, 3, 8, '2023-06-11 11:10:36', 'Avengers Boys Regular fit T-Shirt', 'Avengers-Boys-Regular-fit-T-Shirt', 'tt1.jpg', 'tt2.jpg', 'tt3.jpg', 649, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(111, 5, 3, 9, '2023-06-11 11:18:18', 'MINI KLUB Boys Regular Fit T-Shirt', 'MINI-KLUB-Boys-T-Shirt', '713htdzSAoL._UL1200_.jpg', '71mhAp8q7DL._UL1200_.jpg', '819JSTLPrEL._UL1200_.jpg', 399, 299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(112, 5, 3, 4, '2023-06-11 11:19:44', 'U.S. POLO ASSN. Boys T-Shirt', 'U.S.-POLO-ASSN-Boys-T-Shirt', '1.jpg', '2.jpg', '3.jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(113, 5, 2, 2, '2023-06-12 17:20:00', 'Lion King Boys Regular fit T-Shirt', 'Lion-King-Boys-Regular-fit-T-Shirt', 't1.jpg', 't2.jpg', 't3.jpg', 599, 549, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'T-Shirts', 'New', 'product'),
(114, 5, 3, 5, '2023-06-11 11:23:34', 'Cars Boys Plain Regular fit T-Shirt', 'Cars-Boys-Plain-Regular-fit-T-Shirt', 'tt1.jpg', 'tt2.jpg', 'tt3.jpg', 1200, 1100, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(115, 5, 3, 10, '2023-06-11 11:25:07', 'Allen Solly Junior Boys T-Shirt', 'Allen-Solly-Boys-T-Shirt', '91TTP83jOqL._UL1500_.jpg', '91e-gdRDlSL._UL1500_.jpg', 'A1r4oPfFR3L._UL1500_.jpg', 500, 400, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(117, 6, 3, 2, '2023-06-11 11:33:14', 'Boys Jet Black Cotton Slim Fit Jeans', 'Boys-Jet-Black-Jeans', 'jj1.jpg', 'jj2.jpg', 'jj3.jpg', 899, 499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(118, 6, 3, 3, '2023-06-11 11:34:52', 'Boys Jeans in Soft Knitted Denim', 'Boys-Jeans-in-Soft-Knitted-Denim', '51MoFzXAnYL.jpg', '71Tu5sYnEaL.jpg', '511l2+l7bUL.jpg', 1599, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(119, 6, 5, 5, '2023-06-11 11:36:57', 'HUNGSON Mens Blue Slim Fit Jeans', 'HUNGSON-Mens-Slim-Jeans', 'je1.jpg', 'je2.jpg', 'je3.jpg', 7199, 5999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(120, 6, 3, 9, '2023-06-11 11:38:27', 'ADBUCKS Boys Jeans Stretchable', 'Boys-Jeans-Stretchable-Denim', '7174oXdUsuL._UL1500_.jpg', '71v0-2PMgEL._UL1500_.jpg', '71xnO9sWq7L._UL1500_.jpg', 1599, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(121, 6, 3, 10, '2023-06-11 11:39:47', 'Urbano Boys Blue Denim Jeans ', 'Urbano-Boys-Blue-Denim-Jeans ', 'u1.jpg', 'u2.jpg', 'u3.jpg', 1799, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(122, 6, 3, 3, '2023-06-11 11:42:56', 'Urbano Boys Light Blue Denim Jeans', 'Boys-Light-Blue-Denim-Jeans', 'aa.jpg', 'bb.jpg', 'cc.jpg', 1899, 1699, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(123, 6, 3, 2, '2023-06-11 11:44:17', 'Urbano Juniors Boys Grey Jeans', 'Urbano-Juniors-Boys-Grey-Jeans', 'vv.jpg', 'ii.jpg', 'rr.jpg', 2099, 1999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(124, 6, 3, 8, '2023-06-11 11:45:38', 'Pro-Ethic Style Boys Jeans', 'Pro-Ethic-Style-Boys-Jeans', '91fGL4ZHqML._UL1500_.jpg', '918DJNdw9uL._UL1500_.jpg', '91jrmh1yfjL._UL1500_.jpg', 649, 559, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(125, 6, 3, 3, '2023-06-11 11:47:41', 'Pro-Ethic Style Boys Jeans', 'Pro-Ethic-Style-Boys-Jeans', 'q1.jpg', 'q2.jpg', 'q3.jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(126, 7, 3, 10, '2023-06-11 11:50:01', 'Kid\'s Embroidery Mirror Work Kurta', 'Kids-Embroidery-Mirror-Work-Kurta', 'k1.jpg', 'k2.jpg', 'k3.jpg', 1899, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(127, 7, 3, 4, '2023-06-11 11:51:13', 'Kid\'s Embroidery Mirror Work Kurta', 'Kids-Embroidery-Mirror-Work-Kurta', '910ME1VfyeL._UL1500_.jpg', '71StZsW05EL._UL1500_.jpg', '81jj2QcRudL._UL1500_.jpg', 1599, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(128, 7, 3, 8, '2023-06-11 11:58:21', 'DEZINES Kids Cotton Silk 3pc Kurta', 'DEZINES-Kids-Cotton-Silk-3pc-Kurta', 'W3.jpg', 'W2.jpg', 'W1.jpg', 1200, 1149, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Kurta', 'New', 'product'),
(129, 7, 3, 9, '2023-06-11 11:56:50', 'Kids Jacquard Kurta Pyjama', 'Kids-Jacquard-Kurta-Pyjama', '81cuhb-m24L._UL1500_.jpg', '81NYP6DeF0L._UL1500_.jpg', '81FM1O0nEsL._UL1500_.jpg', 1899, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(130, 7, 3, 4, '2023-06-11 14:41:46', 'JBN Creation Boys Cotton Kurta', 'JBN-Creation-Boys-Cotton-Kurta', '11.jpg', '12.jpg', '13.jpg', 1849, 1249, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(131, 7, 3, 10, '2023-06-11 14:43:21', 'Kidling Kids Cotton Printed Kurta', 'Kidling-Kids-Cotton-Printed-Kurta', '14.jpg', '15.jpg', '16.jpg', 1200, 1000, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(132, 7, 3, 9, '2023-06-11 14:45:04', 'KGN Boys Cotton Blend Kurta', 'KGN-Boys-Cotton-Blend-Kurta', 'kk.jpg', 'kj.jpg', 'ki.jpg', 1799, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(133, 7, 3, 4, '2023-06-11 14:47:03', 'TADEO Kurta Pajama & Modi Jacket', 'TADEO-Kurta-Pajama-Modi-Jacket', '312lN0D7rfL.jpg', '71VR4Ww-WFL._UL1500_.jpg', '51r+VbEFWLL.jpg', 2599, 2199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(134, 9, 3, 4, '2023-06-11 15:03:04', 'FOURFOLDS 5 Piece Coat Suit', 'FOURFOLDS-5-Piece-Coat-Suit', 's1.jpg', 's2.jpg', '71H2et8onjL._UL1500_.jpg', 2499, 2099, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Suit', 'New', 'product'),
(136, 9, 3, 3, '2023-06-11 14:52:39', 'JACKJO Boys 5PCS Coat Suit', 'JACKJO-Boys-5PCS-Coat-Suit', '71-Ak9xqIQL._UL1500_.jpg', '71+Q6KZXYKL._UL1500_.jpg', '71kK7Cg7qfL._UL1500_.jpg', 1599, 1549, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(137, 9, 3, 4, '2023-06-11 14:56:25', 'Little Hardy Boy Open front Suit', 'Little-Hardy-Boy-Open-front-Suit', '21.jpg', '22.jpg', '23.jpg', 1499, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(138, 9, 3, 7, '2023-06-11 14:57:58', 'Boys Regular Fit 3 Piece Suit Set ', 'Boys-Regular-Fit-3-Piece-Suit-Set ', '81r8d0AkduL._UL1500_.jpg', '81xMRvGI4uL._UL1500_.jpg', '810KVEypS6L._UL1500_.jpg', 1200, 1000, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(140, 9, 3, 8, '2023-06-11 15:00:33', 'SG YUVRAJ Kids Suit Set For Boys', 'SG-YUVRAJ-Kids-Suit ', '31aC6kAcUkL.jpg', '71Mxp4VBDtL._UL1500_.jpg', '61YgzfwLM6L._UL1500_.jpg', 2199, 1999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(141, 9, 3, 4, '2023-06-11 15:06:45', 'Trends 2 Piece Jodhpuri Blazer', 'Trends-2-Piece-Jodhpuri-Blazer', 'ee.jpg', 'er.jpg', 'et.jpg', 2399, 2099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(143, 4, 2, 10, '2023-06-11 15:34:02', 'Alan Clothing Womens Cotton Hoodie', 'Alan-Clothing-Womens-Cotton-Hoodie', 'h4.jpg', 'h5.jpg', 'h6.jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(144, 4, 2, 5, '2023-06-11 15:35:47', 'Maniac Womens Solid Neck Hoodie', 'Maniac-Womens-Solid-Neck-Hoodie', 'h7.jpg', 'h8.jpg', 'h9.jpg', 1599, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(145, 4, 2, 9, '2023-06-11 15:37:21', 'MakeMeChic Womens Cropped Hoodie', 'MakeMeChic-Womens-Cropped-Hoodie', 'hh1.jpg', 'hh2.jpg', 'hh3.jpg', 1699, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(146, 4, 2, 3, '2023-06-11 15:38:45', ' Womens Cotton Neck Hoodies', ' Womens-Cotton-Neck-Hoodies', 'hh4.jpg', 'hh5.jpg', 'hh6.jpg', 1599, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(147, 4, 2, 2, '2023-06-11 15:40:41', 'Polycotton Hooded Neck Fleece Hoodie', 'Polycotton-Hooded-Neck-Fleece-Hoodie', 'hu1.jpg', 'hu2.jpg', 'hu3.jpg', 1699, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(148, 4, 2, 4, '2023-06-11 15:43:06', 'ONE SKY Sweatshirt for Women', 'ONE-SKY-Sweatshirt-for-Women', 'hu4.jpg', 'hu5.jpg', 'hu6.jpg', 1799, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(149, 4, 2, 3, '2023-06-11 15:45:13', 'BAILEY SELLS Womens Hoodie', 'BAILEY-SELLS-Womens-Hoodie', 'hud1.jpg', 'hud2.jpg', 'hud3.jpg', 1799, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(150, 5, 2, 2, '2023-06-11 16:53:36', 'LEOTUDE Womens Cottonblend T-shirt', 'LEOTUDE-Womens-Cottonblend', 't12.jpg', 't13.jpg', 't14.jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(151, 5, 2, 5, '2023-06-11 17:30:17', 'RodZen Oversized Printed T-Shirt', 'RodZen-Oversized-Printed-T-Shirt', 'ts1.jpg', 'ts2.jpg', 'ts3.jpg', 1599, 1099, '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'T-Shirts', 'Sale', 'product'),
(152, 5, 2, 7, '2023-06-11 16:57:14', 'GRECILOOKS Womens Tie Dye T-shirts', 'GRECILOOKS-Womens-T-shirts', 'ts4.jpg', 'ts5.jpg', 'ts6.jpg', 2899, 1549, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(153, 5, 2, 10, '2023-06-11 16:58:57', 'Cotton Printed T-Shirt for Women', 'Cotton-Printed-T-Shirt-for-Women', 'tst1.jpg', 'tst2.jpg', 'tst3.jpg', 3199, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(154, 5, 2, 3, '2023-06-11 17:00:23', 'LEOTUDE Womens Camouflage T-shirts', 'LEOTUDE-Women-T-shirts', 'tst4.jpg', 'tst5.jpg', 'tst6.jpg', 1699, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(155, 5, 2, 8, '2023-06-11 17:05:09', 'Fabricorn Stylish Plain T-shirts', 'Fabricorn-Stylish-Plain', 'tshit1.jpg', 't2.jpg', 't3.jpg', 2599, 899, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'T-Shirts', 'New', 'product'),
(156, 5, 2, 2, '2023-06-11 17:03:57', 'AELOMART Womens Cotton Top', 'AELOMART-Womens-Cotton-Top', 't4.jpg', 't5.jpg', 't6.jpg', 1499, 1099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(157, 6, 2, 2, '2023-06-11 17:06:41', 'Nifty Womens Slim Fit Cotton Jeans', 'Nifty-Womens-Slim-Jeans', 'j1.jpg', 'j2.jpg', 'j3.jpg', 1599, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(158, 6, 2, 3, '2023-06-11 17:08:30', 'Urbano Womens Washed Jeans', 'Urbano-Womens-Washed-Jeans', 'j4.jpg', 'j5.jpg', 'j6.jpg', 2099, 1299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(159, 6, 2, 4, '2023-06-11 17:09:49', 'Miss Chase Womens Black jeans', 'Miss-Chase-Womens-Black-jeans', 'j7.jpg', 'j8.jpg', 'j9.jpg', 899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(160, 6, 2, 4, '2023-06-11 17:10:54', 'Kotty Womens Loose Fit Jeans', 'Kotty-Womens-Loose-Fit-Jeans', 'j10.jpg', 'j11.jpg', 'j13.jpg', 1499, 1399, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(161, 6, 2, 5, '2023-06-11 17:11:54', 'ADBUCKS Women Denim Jeans', 'ADBUCKS-Women-Denim-Jeans', 'j14.jpg', 'j15.jpg', 'j16.jpg', 1899, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(162, 6, 2, 7, '2023-06-11 17:13:01', 'KOTTY Womens High Rise Lycra Jeans', 'KOTTY-Womens-Lycra-Jeans', 'j17.jpg', 'j18.jpg', 'j19.jpg', 2099, 1699, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(163, 6, 2, 8, '2023-06-11 17:14:40', 'D K Women Denim 6 Pocket Jeans', 'D-K-Women-Denim-6-Pocket-Jeans', 'j20.jpg', 'j21.jpg', 'j22.jpg', 899, 599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(164, 6, 2, 9, '2023-06-11 17:16:11', 'CHIC Rise Wide Leg Cargo Jeans', 'CHIC-High-Wide-Leg-Jeans', 'j23.jpg', 'j24.jpg', 'j25.jpg', 1449, 1149, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(165, 6, 2, 10, '2023-06-11 17:17:36', 'PARIS HAMILTON Womens jeans', 'PARIS-HAMILTON-Womens', 'j26.jpg', 'j27.jpg', 'j28.jpg', 1099, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(166, 6, 2, 10, '2023-06-11 17:19:04', 'Nifty Womens Denim Color Jeans', 'Nifty-Womens-Denim-Color-Jeans', 'j29.jpg', 'j30.jpg', 'j31.jpg', 1759, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(167, 6, 2, 5, '2023-06-11 17:20:18', 'Womens Denim Slim Fit Jeans', 'Womens-Denim-Slim-Fit-Jeans', 'j32.jpg', 'j33.jpg', 'j34.jpg', 1200, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(168, 7, 2, 3, '2023-06-11 17:22:15', 'Yash Gallery Women Cotton kurta', 'Yash-Gallery-Women-Cotton', 'ku1.jpg', 'ku2.jpg', 'ku3.jpg', 1899, 1599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(169, 7, 2, 5, '2023-06-11 17:24:23', 'Pistaas Womens Cotton Salwar kurta', 'Pistaas-Womens-Cotton-Salwar-kurta', 'ku4.jpg', 'ku5.jpg', 'ku6.jpg', 1599, 1000, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(170, 7, 2, 8, '2023-06-11 17:25:54', 'Rajnandini Blue Cotton Printed kurta', 'Rajnandini-Blue-Cotton-Printed', 'ku7.jpg', 'ku8.jpg', 'ku9.jpg', 1499, 1099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(171, 7, 2, 5, '2023-06-11 17:31:54', 'KLOSIA Women Block Printed Kurta', 'KLOSIA-Women-Block-Printed-Kurta', 'ku10.jpg', 'ku11.jpg', 'ku12.jpg', 5499, 2099, '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'Kurta', 'New', 'product'),
(172, 7, 2, 7, '2023-06-11 17:34:11', 'Miraan Cotton Printed Readymade kurti', 'Miraan-Cotton-Readymade-kurti', 'ku13.jpg', 'ku14.jpg', 'ku15.jpg', 899, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(173, 7, 2, 4, '2023-06-11 17:35:59', 'Shiv Textiles Rayon Kurta for Women.', 'Shiv-Textiles-Kurta-for-Women.', 'ku16.jpg', 'ku17.jpg', 'ku18.jpg', 1099, 899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(174, 7, 2, 4, '2023-06-11 17:37:46', 'Rajnandini Womens Cambric kurta', 'Womens-Cambrin-Cotton-kurta', 'ku19.jpg', 'ku20.jpg', 'ku21.jpg', 1299, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(175, 7, 2, 9, '2023-06-11 17:40:52', 'GROW Womens Digital Print Kurta', 'GROW-Womens-Digital-Print-Kurta', 'ku22.jpg', 'ku23.jpg', 'ku24.jpg', 1999, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'Sale', 'product'),
(176, 7, 2, 5, '2023-06-11 17:42:48', 'Sanisa Women Kurta Set', 'Sanisa-Women-Kurta-Set', 'ku25.jpg', 'ku26.jpg', 'ku27.jpg', 1899, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Kurta', 'New', 'product'),
(177, 8, 2, 8, '2023-06-11 17:45:33', 'MANOHARI Women Chiffon Saree', 'MANOHARI-Women-Chiffon-Saree', 'sa1.jpg', 'sa2.jpg', 'sa3.jpg', 2599, 2099, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(178, 8, 2, 9, '2023-06-11 17:48:23', 'Tavasya Women Printed Saree', 'Tavasya-Women-Women-Saree', 'sa4.jpg', 'sa5.jpg', 'sa6.jpg', 3099, 2599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(179, 8, 2, 7, '2023-06-12 16:16:27', 'Ethnic Womens Digital Print Saree', 'Ethnic-Womens-Digital-Saree', 's101.jpg', 's102.jpg', 's103.jpg', 2599, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(180, 8, 2, 10, '2023-06-12 16:18:27', 'ANNI DESIGNER Women Art Silk Saree', 'ANNI-DESIGNER-Women-Silk-Saree', 's104.jpg', 's105.jpg', 's106.jpg', 1599, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(181, 8, 2, 4, '2023-06-12 16:19:39', 'ANNI DESIGNER Womens Jute Saree', 'ANNI-DESIGNER-Womens-Jute-Saree', 's107.jpg', 's108.jpg', 's109.jpg', 1200, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Saree', 'New', 'product'),
(182, 4, 5, 2, '2023-06-12 16:22:01', 'Dennis Lingo Mens Cotton Hoodie', 'Dennis-Lingo-Mens-Cotton', 'h101.jpg', 'h102.jpg', 'h103.jpg', 1599, 849, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(183, 4, 5, 3, '2023-06-12 16:23:36', 'Veirdo Fleece Material Hoodie', 'Veirdo-Fleece-hoodie', 'h104.jpg', 'h105.jpg', 'h106.jpg', 1899, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(184, 4, 5, 4, '2023-06-12 16:24:55', 'Alan Jones Clothing Mens Hoodie', 'Alan-Jones-Clothing-Mens', 'h107.jpg', 'h108.jpg', 'h109.jpg', 1200, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(185, 4, 5, 5, '2023-06-12 16:26:42', 'Lacoste Athletic Mens Hoodie', 'Russell-Athletic-Mens-Hoodie', 'h110.jpg', 'h112.jpg', 'h113.jpg', 4599, 3599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(186, 4, 5, 3, '2023-06-12 16:28:10', 'Nike Mens Cotton Hoodie', 'Nike-Mens-Cotton-Hoodie', 'h114.jpg', 'h115.jpg', 'h114.jpg', 5499, 4999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(187, 4, 5, 5, '2023-06-12 16:30:35', 'NASA Mens Meatball Hoodie', 'NASA-Mens-Meatball', 'h116.jpg', 'h117.jpg', 'h118.jpg', 2599, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(188, 4, 5, 9, '2023-06-12 16:32:17', 'JUGULAR Mens Cotton Hooded Sweatshirt', 'JUGULAR-Mens-Cotton-Sweatshirt', 'h119.jpg', 'h120.jpg', 'h121.jpg', 1200, 999, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(189, 4, 5, 10, '2023-06-12 16:34:21', 'Alan Jones Mens Hooded Sweatshirt', 'Alan-Jones-Mens-Hooded-Sweatshirt', 'h122.jpg', 'h123.jpg', 'h124.jpg', 2099, 1199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(190, 4, 5, 7, '2023-06-12 16:35:51', 'Max Men Sweatshirt', 'Max-Men-Sweatshirt', 'h125.jpg', 'h126.jpg', 'h127.jpg', 999, 579, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Hoodies', 'New', 'product'),
(191, 5, 5, 7, '2023-06-12 16:37:41', 'fanideaz Mens Cotton Polo T Shirt', 'fanideaz-Mens-Cotton-Polo-T-Shirt', 't101.jpg', 't102.jpg', 't103.jpg', 1200, 799, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'T-Shirts', 'New', 'product'),
(192, 6, 5, 2, '2023-06-12 17:24:38', 'Urbano Fashion Mens Light Grey Jeans', 'Urbano-Fashion-Mens-Jeans', 'j101.jpg', 'j102.jpg', 'j103.jpg', 2599, 1499, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'jeans', 'New', 'product'),
(193, 9, 5, 4, '2023-06-12 17:29:45', 'WINTAGE Mens Polyester Cotton 2 Pc Suit', 'WINTAGE-Mens-Polyester-Suit', 'su101.jpg', 'su102.jpg', 'su103.jpg', 4599, 2899, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(194, 9, 5, 5, '2023-06-12 17:31:17', 'FAVOROSKI Mens Slim Italian Fit Suit', 'FAVOROSKI-Mens-Suit', 'su104.jpg', 'su105.jpg', 'su106.jpg', 5099, 4599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(195, 9, 5, 8, '2023-06-12 17:33:12', 'MANQ Men Black Solid Slim Fit Tuxedo Suit', 'MANQ-Men-Black-Suit', 'su107.jpg', 'su108.jpg', 'su109.jpg', 3599, 3299, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(196, 9, 5, 9, '2023-06-12 17:34:53', 'Park Avenue Medium Blue Suit', 'Park-Avenue-Medium-Blue-Suit', 'su110.jpg', 'su112.jpg', 'su113.jpg', 6459, 5459, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(197, 9, 5, 10, '2023-06-12 17:36:23', 'Allen Solly Men Business Suit Pants Set', 'Peter-England-Men-Suit', 'su114.jpg', 'su115.jpg', 'su116.jpg', 5800, 5199, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(198, 9, 5, 7, '2023-06-12 17:38:23', 'Park Avenue Medium Fawn Suit', 'Park-Avenue-Medium-Fawn-Suit', 'su117.jpg', 'su118.jpg', 'su119.jpg', 5449, 4859, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(200, 9, 5, 8, '2023-06-12 17:42:48', 'Parx Dark Petrol Suit', 'Parx-Dark-Petrol-Suit', 'suu1.jpg', 'suu2.jpg', 'suu3.jpg', 4099, 3599, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product'),
(201, 9, 5, 3, '2023-06-12 17:44:21', 'WINTAGE Men Regular Fit Three Piece Suit', 'WINTAGE-Men-Three-Piece-Suit', 'suu4.jpg', 'suu6.jpg', 'suu7.jpg', 7499, 4749, '\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Suit', 'New', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Hoodies', 'no', 'hoodie.png'),
(5, 'T-Shirts', 'no', 'tshirticn.png'),
(6, 'jeans', 'no', 'jeans.png'),
(7, 'Kurta', 'yes', 'kurta.png'),
(8, 'Saree', 'yes', 'saree3.jpg'),
(9, 'Suit', 'no', 'suit.png');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(10) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'TRENDS', 'store1.png', '\r\nWelcome to Trends, Our store is stocked with the latest fashion trends for men, women, and children. Whether you\'re looking for everyday wear, or formal attire for a special occasion, you\'ll find it all here.\r\n', 'Visit here', 'https://www.trends.ajio.com/'),
(5, 'ETHNICMODE', 'ethic.png', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nWe are manufacture all type of women ethnic wear like saree, salwar suit, gowns, kurti, lehenga and western wear.Our store is stocked with the latest fashion trends for men, women, and children.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Visit here', 'https://ethnicmodeindia.business.site/'),
(7, 'GUNJ FASHION', 'gunj.png', '\r\n\r\n\r\nWe Gunj Fashion, are leading Trader and Supplier of optimum quality assortment of Ladies Salwar Suit, Anarkali Suit, Salwar Kameez, Ladies Saree, Bollywood Collection, Ladies Kurti, Ladies Gown, Patiala Suit, etc.\r\n\r\n\r\n\r\n', 'Visit here', 'https://gunjfashion.com/'),
(8, 'Ajio', 'Untitled.png', '\r\n\r\n\r\n\r\nAjio is headquartered in Mumbai, 3rd Floor, Kavarana Building, Lokmanya Tilak Rd, Dhobi Talao, Lohar Chawl, Kalbadevi, India, and has 2 office locations.\r\n\r\n\r\n', 'Visit here', 'https://www.ajio.com/');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(3, 5, 13),
(5, 6, 15),
(6, 3, 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`,`customer_id`),
  ADD KEY `fk_customerid` (`customer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_payid` (`payid`),
  ADD KEY `fk_custid` (`customer_id`),
  ADD KEY `fk_productid` (`product_id`);

--
-- Indexes for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91953;

--
-- AUTO_INCREMENT for table `enquiry_types`
--
ALTER TABLE `enquiry_types`
  MODIFY `enquiry_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_customerid` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `fk_proid` FOREIGN KEY (`p_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `fk_custid` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `fk_payid` FOREIGN KEY (`payid`) REFERENCES `payments` (`payid`),
  ADD CONSTRAINT `fk_productid` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
