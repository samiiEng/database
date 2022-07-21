-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 09:00 AM
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
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'رنگ', 'آبی، نیلی، قرمز، بنفش', '2022-07-19 19:05:35', NULL, NULL),
(2, 'رم', '4GB, 8GB, 16GB', '2022-07-19 19:05:53', NULL, NULL),
(3, 'cpu', 'corei5, corei7', '2022-07-19 19:06:06', NULL, NULL),
(4, 'سایز', 'S,L,XL,XXL', '2022-07-19 19:06:45', NULL, NULL),
(5, 'نام', '', '2022-07-19 19:06:54', NULL, NULL),
(6, 'نام خانوادگی', '', '2022-07-19 19:06:59', NULL, NULL),
(7, 'سمت', '', '2022-07-19 19:07:02', NULL, NULL),
(8, 'نام کاربری', '', '2022-07-19 19:07:06', NULL, NULL),
(9, 'رمزعبور', '', '2022-07-19 19:07:10', NULL, NULL),
(10, 'کشور', 'ایران، افغانستان، پاکستان، چین، عراق', '2022-07-19 19:07:51', NULL, NULL),
(11, 'استان', 'تهران، اصفهان، فارس،کردستان', '2022-07-19 19:15:31', NULL, NULL),
(12, 'شهر', 'همدان، تهران، شیراز', '2022-07-19 19:08:17', NULL, NULL),
(13, 'سمت', 'موسس، مدیرعامل، اپراتور، ادمین', '2022-07-19 19:08:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'محصولات دیجیتال', NULL, '2022-07-19 18:44:39', NULL, NULL),
(2, 'موبایل', '1', '2022-07-19 18:44:45', NULL, NULL),
(3, 'لپتاپ', '1', '2022-07-19 18:44:53', NULL, NULL),
(4, 'پوشاک', NULL, '2022-07-19 18:44:59', NULL, NULL),
(5, 'مردانه', '4', '2022-07-19 18:45:04', NULL, NULL),
(6, 'زنانه', '4', '2022-07-19 18:45:10', NULL, NULL),
(7, 'لباس مردانه', '5-4', '2022-07-19 18:46:18', NULL, NULL),
(8, 'کفش زنانه', '6-4', '2022-07-19 18:46:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_attributes`
--

CREATE TABLE `categories_attributes` (
  `category_attribure_id` int(10) UNSIGNED NOT NULL,
  `category_ref_id` int(10) UNSIGNED NOT NULL,
  `attribute_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories_attributes`
--

INSERT INTO `categories_attributes` (`category_attribure_id`, `category_ref_id`, `attribute_ref_id`, `value`) VALUES
(1, 3, 1, NULL),
(2, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prodcuts_attributes`
--

CREATE TABLE `prodcuts_attributes` (
  `product_attribute_id` int(11) NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `attribute_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodcuts_attributes`
--

INSERT INTO `prodcuts_attributes` (`product_attribute_id`, `product_ref_id`, `attribute_ref_id`, `value`) VALUES
(1, 1, 1, 'آبی'),
(2, 1, 2, '8GB'),
(3, 1, 3, 'corei5');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `stars` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT 'another type of the same model(name field)',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `stars`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lenovo x11', 4, NULL, '2022-07-20 10:54:20', NULL, NULL),
(2, 'lanovo x11', 3, 1, '2022-07-20 12:17:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_prices`
--

CREATE TABLE `products_prices` (
  `product_price_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `shop_ref_id` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_prices`
--

INSERT INTO `products_prices` (`product_price_id`, `product_ref_id`, `shop_ref_id`, `price`, `qty`) VALUES
(1, 1, 1, 2000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`shop_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'دیجیکالا تهران ', '2022-07-19 18:35:10', NULL, NULL),
(2, 'شعبه رشت', '2022-07-19 18:34:20', NULL, NULL),
(3, 'شعبه شیراز', '2022-07-19 18:34:29', NULL, NULL),
(4, 'علی بابا پکن', '2022-07-19 18:35:18', NULL, NULL),
(5, 'شعبه تهران', '2022-07-19 18:35:29', NULL, NULL),
(6, 'شعبه سنندج', '2022-07-19 18:35:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `shop_ref_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `shop_ref_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2022-07-19 18:36:00', NULL, NULL),
(2, 4, '2022-07-19 18:36:03', NULL, NULL),
(3, 2, '2022-07-19 18:36:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_attributes`
--

CREATE TABLE `users_attributes` (
  `user_attribute_id` int(10) UNSIGNED NOT NULL,
  `user_ref_id` int(10) UNSIGNED NOT NULL,
  `attribute_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_attributes`
--

INSERT INTO `users_attributes` (`user_attribute_id`, `user_ref_id`, `attribute_ref_id`, `value`) VALUES
(1, 1, 5, 'احمد'),
(2, 1, 6, 'احمدی'),
(3, 1, 7, 'اپراتور'),
(4, 1, 8, 'ahmad'),
(5, 1, 9, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD PRIMARY KEY (`category_attribure_id`) USING BTREE,
  ADD KEY `category_ref_id_1` (`category_ref_id`),
  ADD KEY `attribute_ref_id_4` (`attribute_ref_id`);

--
-- Indexes for table `prodcuts_attributes`
--
ALTER TABLE `prodcuts_attributes`
  ADD PRIMARY KEY (`product_attribute_id`) USING BTREE,
  ADD KEY `product_ref_id_2` (`product_ref_id`),
  ADD KEY `attribute_ref_id_2` (`attribute_ref_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products_prices`
--
ALTER TABLE `products_prices`
  ADD PRIMARY KEY (`product_price_id`),
  ADD KEY `product_ref_id_3` (`product_ref_id`),
  ADD KEY `store_ref_id_5` (`shop_ref_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `store_ref_id_1` (`shop_ref_id`);

--
-- Indexes for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD PRIMARY KEY (`user_attribute_id`) USING BTREE,
  ADD KEY `user_ref_id_4` (`user_ref_id`),
  ADD KEY `attribute_ref_id_3` (`attribute_ref_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  MODIFY `category_attribure_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prodcuts_attributes`
--
ALTER TABLE `prodcuts_attributes`
  MODIFY `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products_prices`
--
ALTER TABLE `products_prices`
  MODIFY `product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_attributes`
--
ALTER TABLE `users_attributes`
  MODIFY `user_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD CONSTRAINT `attribute_ref_id_4` FOREIGN KEY (`attribute_ref_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `category_ref_id_1` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `prodcuts_attributes`
--
ALTER TABLE `prodcuts_attributes`
  ADD CONSTRAINT `attribute_ref_id_2` FOREIGN KEY (`attribute_ref_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `product_ref_id_2` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products_prices`
--
ALTER TABLE `products_prices`
  ADD CONSTRAINT `product_ref_id_3` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `shop_ref_id_6` FOREIGN KEY (`shop_ref_id`) REFERENCES `shops` (`shop_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `shop_ref_id_2` FOREIGN KEY (`shop_ref_id`) REFERENCES `shops` (`shop_id`);

--
-- Constraints for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD CONSTRAINT `attribute_ref_id_3` FOREIGN KEY (`attribute_ref_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `user_ref_id_4` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
