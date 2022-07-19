-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 10:21 PM
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
  `taxonomy_ref_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `taxonomy_ref_id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'رنگ', 'آبی، نیلی، قرمز، بنفش', '2022-07-19 19:05:35', NULL, NULL),
(2, 1, 'رم', '4GB, 8GB, 16GB', '2022-07-19 19:05:53', NULL, NULL),
(3, 1, 'cpu', 'corei5, corei7', '2022-07-19 19:06:06', NULL, NULL),
(4, 1, 'سایز', 'S,L,XL,XXL', '2022-07-19 19:06:45', NULL, NULL),
(5, 2, 'نام', '', '2022-07-19 19:06:54', NULL, NULL),
(6, 2, 'نام خانوادگی', '', '2022-07-19 19:06:59', NULL, NULL),
(7, 2, 'سمت', '', '2022-07-19 19:07:02', NULL, NULL),
(8, 2, 'نام کاربری', '', '2022-07-19 19:07:06', NULL, NULL),
(9, 2, 'رمزعبور', '', '2022-07-19 19:07:10', NULL, NULL),
(10, 3, 'کشور', 'ایران، افغانستان، پاکستان، چین، عراق', '2022-07-19 19:07:51', NULL, NULL),
(11, 3, 'استان', 'تهران، اصفهان، فارس،کردستان', '2022-07-19 19:15:31', NULL, NULL),
(12, 3, 'شهر', 'همدان، تهران، شیراز', '2022-07-19 19:08:17', NULL, NULL),
(13, 3, 'سمت', 'موسس، مدیرعامل، اپراتور، ادمین', '2022-07-19 19:08:43', NULL, NULL);

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
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_ref_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories_attributes`
--

INSERT INTO `categories_attributes` (`attribute_id`, `category_ref_id`) VALUES
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `prodcuts_attributes`
--

CREATE TABLE `prodcuts_attributes` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `user_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) NOT NULL,
  `is_effective_ref_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodcuts_attributes`
--

INSERT INTO `prodcuts_attributes` (`attribute_id`, `product_ref_id`, `user_ref_id`, `value`, `is_effective_ref_id`) VALUES
(1, 1, 1, 'آبی،قرمز', NULL),
(2, 1, 1, '8GB', 1),
(3, 1, 1, 'corei5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `stars` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `stars`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'لپتاپ', 4, NULL, '2022-07-19 20:00:37', NULL, NULL),
(2, 'موبایل', 3, NULL, '2022-07-19 20:00:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_prices`
--

CREATE TABLE `products_prices` (
  `product_price_id` int(10) UNSIGNED NOT NULL,
  `is_effective_id` tinyint(1) UNSIGNED DEFAULT NULL,
  `product_ref_id` int(10) UNSIGNED NOT NULL,
  `product_attribute_ref_id` varchar(255) NOT NULL COMMENT '{key1:value1, key2:value2}',
  `user_ref_id` int(10) UNSIGNED NOT NULL,
  `store_ref_id` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_prices`
--

INSERT INTO `products_prices` (`product_price_id`, `is_effective_id`, `product_ref_id`, `product_attribute_ref_id`, `user_ref_id`, `store_ref_id`, `price`, `qty`) VALUES
(1, 1, 1, '{1:blue, 2:8GB, 3:corei7}', 1, 1, 2000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `name`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'دیجیکالا تهران ', NULL, '2022-07-19 18:35:10', NULL, NULL),
(2, 'شعبه رشت', 1, '2022-07-19 18:34:20', NULL, NULL),
(3, 'شعبه شیراز', 1, '2022-07-19 18:34:29', NULL, NULL),
(4, 'علی بابا پکن', NULL, '2022-07-19 18:35:18', NULL, NULL),
(5, 'شعبه تهران', 4, '2022-07-19 18:35:29', NULL, NULL),
(6, 'شعبه سنندج', 4, '2022-07-19 18:35:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stores_attributes`
--

CREATE TABLE `stores_attributes` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `store_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stores_attributes`
--

INSERT INTO `stores_attributes` (`attribute_id`, `store_ref_id`, `value`) VALUES
(10, 1, 'ایران'),
(11, 1, 'فارس'),
(12, 1, 'شیراز'),
(13, 1, 'اپراتور');

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE `taxonomies` (
  `taxonomy_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`taxonomy_id`, `name`) VALUES
(1, 'product,categories'),
(2, 'users'),
(3, 'stores');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `store_ref_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `store_ref_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2022-07-19 18:36:00', NULL, NULL),
(2, 4, '2022-07-19 18:36:03', NULL, NULL),
(3, 2, '2022-07-19 18:36:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_attributes`
--

CREATE TABLE `users_attributes` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `user_ref_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_attributes`
--

INSERT INTO `users_attributes` (`attribute_id`, `user_ref_id`, `value`) VALUES
(5, 1, 'احمد'),
(6, 1, 'احمدی'),
(7, 1, 'اپراتور'),
(8, 1, 'ahmad'),
(9, 1, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`) USING BTREE,
  ADD KEY `taxonomoy_ref_id_1` (`taxonomy_ref_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD PRIMARY KEY (`attribute_id`) USING BTREE,
  ADD KEY `category_ref_id_1` (`category_ref_id`);

--
-- Indexes for table `prodcuts_attributes`
--
ALTER TABLE `prodcuts_attributes`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `user_ref_id_2` (`user_ref_id`),
  ADD KEY `product_ref_id_2` (`product_ref_id`);

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
  ADD KEY `user_ref_id_3` (`user_ref_id`),
  ADD KEY `store_ref_id_5` (`store_ref_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `stores_attributes`
--
ALTER TABLE `stores_attributes`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `store_ref_id_3` (`store_ref_id`);

--
-- Indexes for table `taxonomies`
--
ALTER TABLE `taxonomies`
  ADD PRIMARY KEY (`taxonomy_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `store_ref_id_1` (`store_ref_id`);

--
-- Indexes for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `user_ref_id_4` (`user_ref_id`);

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
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taxonomies`
--
ALTER TABLE `taxonomies`
  MODIFY `taxonomy_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `taxonomoy_ref_id_1` FOREIGN KEY (`taxonomy_ref_id`) REFERENCES `taxonomies` (`taxonomy_id`);

--
-- Constraints for table `categories_attributes`
--
ALTER TABLE `categories_attributes`
  ADD CONSTRAINT `attribute_ref_id_4` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `category_ref_id_1` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `prodcuts_attributes`
--
ALTER TABLE `prodcuts_attributes`
  ADD CONSTRAINT `product_ref_id_2` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `user_ref_id_2` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products_prices`
--
ALTER TABLE `products_prices`
  ADD CONSTRAINT `product_ref_id_3` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `store_ref_id_5` FOREIGN KEY (`store_ref_id`) REFERENCES `stores` (`store_id`),
  ADD CONSTRAINT `user_ref_id_3` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `stores_attributes`
--
ALTER TABLE `stores_attributes`
  ADD CONSTRAINT `attribute_ref_id_5` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `store_ref_id_3` FOREIGN KEY (`store_ref_id`) REFERENCES `stores` (`store_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `store_ref_id_1` FOREIGN KEY (`store_ref_id`) REFERENCES `stores` (`store_id`);

--
-- Constraints for table `users_attributes`
--
ALTER TABLE `users_attributes`
  ADD CONSTRAINT `attribute_ref_id_3` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `user_ref_id_4` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
