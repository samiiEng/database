-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 08:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digikala`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'خوراکی', NULL, '2022-07-18 14:58:35', NULL, NULL),
(2, 'کالای دیجیتال', NULL, '2022-07-18 14:58:49', NULL, NULL),
(3, 'پوشاک', NULL, '2022-07-18 14:59:00', NULL, NULL),
(4, 'لبنیات', '1', '2022-07-18 15:00:04', NULL, NULL),
(5, 'صبحانه', '1', '2022-07-18 15:00:12', NULL, NULL),
(6, 'سبزیجات', '1', '2022-07-18 15:00:33', NULL, NULL),
(7, 'موبایل', '2', '2022-07-18 15:00:41', NULL, NULL),
(8, 'لپتاپ', '2', '2022-07-18 15:00:47', NULL, NULL),
(9, 'تبلت', '2', '2022-07-18 15:00:54', NULL, NULL),
(10, 'مردانه', '3', '2022-07-18 15:05:44', NULL, NULL),
(11, 'زنانه', '3', '2022-07-18 15:06:14', NULL, NULL),
(12, 'لباس مردانه', '10-3', '2022-07-18 15:07:15', NULL, NULL),
(13, 'کفش مردانه', '10-3', '2022-07-18 15:07:27', NULL, NULL),
(14, 'لباس زنانه', '11-3', '2022-07-18 15:07:35', NULL, NULL),
(15, 'کفش زنانه', '11-3', '2022-07-18 15:19:47', NULL, NULL),
(16, 'عسل', '5-1', '2022-07-18 15:20:49', NULL, NULL),
(17, 'مربا', '5-1', '2022-07-18 15:20:53', NULL, NULL),
(18, 'شیر', '4-1', '2022-07-18 15:21:02', NULL, NULL),
(19, 'ماست', '4-1', '2022-07-18 15:35:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_attributes`
--

CREATE TABLE `categories_attributes` (
  `category_attribute_id` int(10) UNSIGNED NOT NULL,
  `category_ref_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories_attributes`
--

INSERT INTO `categories_attributes` (`category_attribute_id`, `category_ref_id`, `key`, `value`) VALUES
(1, 1, 'برند', 'شیرین عسل'),
(2, 1, 'برند', 'نادی'),
(3, 1, 'برند', 'مانا'),
(4, 2, 'برند', 'ایسوس'),
(5, 2, 'برند', 'ایسر'),
(6, 2, 'برند', 'سامسونگ'),
(7, 3, 'برند', 'gucci'),
(8, 3, 'برند', 'divided'),
(9, 1, 'محدوده قیمت', 'کمتر از 500 هزار تومان'),
(10, 1, 'محدوده قیمت', 'بالای 500 هزار تومان'),
(11, 2, 'محدوده قیمت', 'کمتر از 4 میلیون تومان'),
(12, 2, 'محدوده قیمت', 'بالای 10 میلیون تومان'),
(13, 2, 'محدوده قیمت', 'بین 4 الی 10 میلیون تومان'),
(14, 3, 'محدوده قیمت', 'کمتر از 2 میلیون تومان'),
(15, 3, 'محدوده قیمت', 'بالای 2 میلیون تومان'),
(16, 12, 'رنگ', 'آبی'),
(17, 12, 'رنگ ', 'سفید'),
(18, 12, 'رنگ ', 'سرمه ای'),
(19, 12, 'جنس', 'ابریشم'),
(20, 12, 'جنس', 'پلی استر'),
(21, 12, 'جنس ', 'کتان'),
(22, 12, 'جنس ', 'نخی'),
(23, 12, 'آستین', 'بلند'),
(24, 12, 'آستین', 'کوتاه'),
(25, 12, 'یقه', 'یقه اسکی '),
(26, 12, 'یقه', 'یقه هفت'),
(27, 13, 'رنگ ', 'آبی'),
(28, 13, 'رنگ', 'مشکی'),
(29, 13, 'رنگ ', 'قرمز'),
(30, 13, 'جنس', 'ابریشم'),
(31, 13, 'جنس', 'نخی'),
(32, 13, 'آستین', 'بلند'),
(33, 13, 'آستین', 'کوتاه'),
(34, 8, 'cpu', 'core i9'),
(35, 8, 'cpu', 'core i5'),
(36, 8, 'ram ', '8GB'),
(37, 8, 'ram', '16Gb'),
(38, 8, 'رنگ', 'مشکی'),
(39, 8, 'رنگ', 'طوسی'),
(40, 8, 'دیسک نوری', 'دارد'),
(41, 8, 'دیسک نوری', 'ندارد'),
(42, 17, 'نوع', 'مربا به'),
(43, 17, 'نوع', 'مربا انجیر'),
(44, 17, 'نوع', 'مربا آلبالو'),
(45, 17, 'برند', 'بیژن'),
(46, 17, 'برند', 'سحر'),
(47, 8, 'برند', 'سامسونگ'),
(48, 8, 'برند', 'ایسوس'),
(49, 13, 'برند', 'gucci'),
(50, 12, 'برند', 'divided'),
(51, 16, 'برند', 'کوئین'),
(52, 16, 'برند', 'مهران'),
(53, 16, 'برند', 'شیگوار'),
(54, 16, 'برند', 'جیران'),
(55, 16, 'وزن', '1کیلو'),
(56, 16, 'وزن', '0.5 کیلو'),
(57, 17, 'وزن', '0.5 کیلو'),
(58, 17, 'وزن', '0.5 کیلو');

-- --------------------------------------------------------

--
-- Table structure for table `images_combinations`
--

CREATE TABLE `images_combinations` (
  `image_combination_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images_variations`
--

CREATE TABLE `images_variations` (
  `image_variation_id` int(10) UNSIGNED NOT NULL,
  `image_combination_ref_id` int(10) UNSIGNED NOT NULL,
  `prodcut_category_attribute_ref_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prices_combinations`
--

CREATE TABLE `prices_combinations` (
  `price_combination_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prices_combinations`
--

INSERT INTO `prices_combinations` (`price_combination_id`, `product_ref_id`, `price`) VALUES
(1, 8, 700000),
(2, 8, 650000),
(3, 8, 800000);

-- --------------------------------------------------------

--
-- Table structure for table `prices_variations`
--

CREATE TABLE `prices_variations` (
  `price_variation_id` int(10) UNSIGNED NOT NULL,
  `price_combination_ref_id` int(10) UNSIGNED NOT NULL,
  `product_category_attribute_ref_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prices_variations`
--

INSERT INTO `prices_variations` (`price_variation_id`, `price_combination_ref_id`, `product_category_attribute_ref_id`) VALUES
(1, 1, 18),
(2, 1, 20),
(3, 2, 19),
(4, 2, 20),
(8, 3, 19),
(9, 3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `stars` float NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `stars`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'عسل گون شیگوار', 3, 150000, '2022-07-18 16:00:36', NULL, NULL),
(2, 'عسل جیران', 3.2, 145000, '2022-07-18 16:00:42', NULL, NULL),
(3, 'مربا آلبالو بیژن', 3.41, 100000, '2022-07-18 16:00:47', NULL, NULL),
(4, 'مربا انجیر سحر', 3.6, 120000, '2022-07-18 16:00:50', NULL, NULL),
(5, 'ماست پرچرب سون', 4, 50000, '2022-07-18 16:00:53', NULL, NULL),
(6, 'ماست پروبیوتیک سون', 4, 70000, '2022-07-18 16:00:57', NULL, NULL),
(7, 'ماست کم چرب میهن', 4, 40000, '2022-07-18 16:01:01', NULL, NULL),
(8, 'پیراهن مردانه کد 123', 3, 600000, '2022-07-18 16:01:05', NULL, NULL),
(9, 'کفش مردانه کد 321', 2.5, 900000, '2022-07-18 16:01:10', NULL, NULL),
(10, 'تیشرت زنانه مدل 123', 4.2, 800000, '2022-07-18 16:01:13', NULL, NULL),
(11, 'کفش زنانه مدل 23', 1.5, 900000, '2022-07-18 16:01:16', NULL, NULL),
(12, 'لپتاپ ایسوس مدل x515', 4.5, 20000000, '2022-07-18 16:01:24', NULL, NULL),
(13, 'لپتاپ ام اس آی مدل 123', 5, 40000000, '2022-07-18 16:10:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `product_category_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `category_ref_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`product_category_id`, `product_ref_id`, `category_ref_id`) VALUES
(1, 1, 16),
(2, 2, 16),
(3, 3, 17),
(4, 4, 17),
(6, 5, 19),
(7, 6, 19),
(8, 7, 19),
(10, 12, 8),
(11, 13, 8),
(12, 10, 14),
(13, 11, 15),
(14, 8, 12),
(15, 9, 13);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories_attributes`
--

CREATE TABLE `products_categories_attributes` (
  `product_category_attribute_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `category_attribute_ref_id` int(10) UNSIGNED NOT NULL,
  `is_effective` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_categories_attributes`
--

INSERT INTO `products_categories_attributes` (`product_category_attribute_id`, `product_ref_id`, `category_attribute_ref_id`, `is_effective`) VALUES
(1, 1, 53, 0),
(3, 1, 55, 0),
(5, 2, 54, 0),
(6, 2, 56, 0),
(7, 3, 44, 0),
(9, 3, 45, 0),
(10, 4, 43, 0),
(11, 4, 46, 0),
(12, 12, 35, 0),
(13, 12, 36, 0),
(14, 12, 48, 0),
(15, 12, 38, 0),
(16, 12, 39, 0),
(17, 8, 50, 0),
(18, 8, 16, 1),
(19, 8, 17, 1),
(20, 8, 21, 1),
(21, 8, 22, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD PRIMARY KEY (`category_attribute_id`),
  ADD KEY `category_ref_id_1` (`category_ref_id`);

--
-- Indexes for table `images_combinations`
--
ALTER TABLE `images_combinations`
  ADD PRIMARY KEY (`image_combination_id`),
  ADD KEY `product_ref_id_5` (`product_ref_id`);

--
-- Indexes for table `images_variations`
--
ALTER TABLE `images_variations`
  ADD PRIMARY KEY (`image_variation_id`),
  ADD KEY `image_combination_ref_id_2` (`image_combination_ref_id`),
  ADD KEY `product_category_attribute_ref_id_2` (`prodcut_category_attribute_ref_id`);

--
-- Indexes for table `prices_combinations`
--
ALTER TABLE `prices_combinations`
  ADD PRIMARY KEY (`price_combination_id`) USING BTREE,
  ADD KEY `product_ref_id_3` (`product_ref_id`);

--
-- Indexes for table `prices_variations`
--
ALTER TABLE `prices_variations`
  ADD PRIMARY KEY (`price_variation_id`) USING BTREE,
  ADD KEY `price_combination_ref_id_1` (`price_combination_ref_id`),
  ADD KEY `prodcut_category_attribute_ref_id_1` (`product_category_attribute_ref_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`product_category_id`),
  ADD KEY `category_ref_id_2` (`category_ref_id`),
  ADD KEY `product_ref_id_1` (`product_ref_id`);

--
-- Indexes for table `products_categories_attributes`
--
ALTER TABLE `products_categories_attributes`
  ADD PRIMARY KEY (`product_category_attribute_id`),
  ADD KEY `category_attribute_ref_id_1` (`category_attribute_ref_id`),
  ADD KEY `product_ref_id_2` (`product_ref_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  MODIFY `category_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `images_combinations`
--
ALTER TABLE `images_combinations`
  MODIFY `image_combination_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images_variations`
--
ALTER TABLE `images_variations`
  MODIFY `image_variation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices_combinations`
--
ALTER TABLE `prices_combinations`
  MODIFY `price_combination_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prices_variations`
--
ALTER TABLE `prices_variations`
  MODIFY `price_variation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `product_category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products_categories_attributes`
--
ALTER TABLE `products_categories_attributes`
  MODIFY `product_category_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD CONSTRAINT `category_ref_id_1` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `images_combinations`
--
ALTER TABLE `images_combinations`
  ADD CONSTRAINT `product_ref_id_5` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `images_variations`
--
ALTER TABLE `images_variations`
  ADD CONSTRAINT `image_combination_ref_id_2` FOREIGN KEY (`image_combination_ref_id`) REFERENCES `images_combinations` (`image_combination_id`),
  ADD CONSTRAINT `product_category_attribute_ref_id_2` FOREIGN KEY (`prodcut_category_attribute_ref_id`) REFERENCES `products_categories_attributes` (`product_category_attribute_id`);

--
-- Constraints for table `prices_combinations`
--
ALTER TABLE `prices_combinations`
  ADD CONSTRAINT `product_ref_id_3` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `prices_variations`
--
ALTER TABLE `prices_variations`
  ADD CONSTRAINT `price_combination_ref_id_1` FOREIGN KEY (`price_combination_ref_id`) REFERENCES `prices_combinations` (`price_combination_id`),
  ADD CONSTRAINT `prodcut_category_attribute_ref_id_1` FOREIGN KEY (`product_category_attribute_ref_id`) REFERENCES `products_categories_attributes` (`product_category_attribute_id`);

--
-- Constraints for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD CONSTRAINT `category_ref_id_2` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `product_ref_id_1` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products_categories_attributes`
--
ALTER TABLE `products_categories_attributes`
  ADD CONSTRAINT `category_attribute_ref_id_1` FOREIGN KEY (`category_attribute_ref_id`) REFERENCES `categories_attributes` (`category_attribute_id`),
  ADD CONSTRAINT `product_ref_id_2` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
