-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 11:46 AM
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
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `user_ref_id` int(11) NOT NULL,
  `country_ref_id` int(11) NOT NULL,
  `province_ref_id` int(11) NOT NULL,
  `city_ref_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attributes_products`
--

CREATE TABLE `attributes_products` (
  `attribute_product_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `attribute_ref_id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `basket_id` int(11) NOT NULL,
  `user_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  ` cart_id` int(11) NOT NULL,
  `basket_ref_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_ref_id` int(11) DEFAULT NULL,
  `if_last` binary(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories_meta`
--

CREATE TABLE `categories_meta` (
  `category_meta_id` int(11) NOT NULL,
  `category_ref_id` int(11) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories_products`
--

CREATE TABLE `categories_products` (
  `category_product_id` int(11) NOT NULL,
  `category_ref_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories_products_meta`
--

CREATE TABLE `categories_products_meta` (
  `category_product_meta_id` int(11) NOT NULL,
  `category_meta_ref_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `user_ref_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `vendor_ref_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `basket_ref_id` int(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_ref_id` int(11) NOT NULL COMMENT 'parent id',
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `province_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routes_roles`
--

CREATE TABLE `routes_roles` (
  `route_role_id` int(11) NOT NULL,
  `route_ref_id` int(11) NOT NULL,
  `role_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routes_users_vendors`
--

CREATE TABLE `routes_users_vendors` (
  `route_user_vendor_id` int(11) NOT NULL,
  `route_ref_id` int(11) NOT NULL,
  `user_vendor_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_vendors`
--

CREATE TABLE `users_vendors` (
  `user_vendor_id` int(11) NOT NULL,
  `user_ref_id` int(11) NOT NULL,
  `vendor_ref_id` int(11) NOT NULL,
  `role_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_ref_id` int(11) NOT NULL,
  `province_ref_id` int(11) NOT NULL,
  `city_ref_id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_products`
--

CREATE TABLE `vendors_products` (
  `vendors_products_id` varchar(11) NOT NULL,
  `product_ref_id` int(11) NOT NULL,
  `vendor_ref_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `city_ref_id_1` (`city_ref_id`),
  ADD KEY `country_ref_id_1` (`country_ref_id`),
  ADD KEY `province_ref_id_1` (`province_ref_id`),
  ADD KEY `user_ref_id_1` (`user_ref_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `attributes_products`
--
ALTER TABLE `attributes_products`
  ADD PRIMARY KEY (`attribute_product_id`),
  ADD KEY `product_ref_id_4` (`product_ref_id`),
  ADD KEY `attribute_ref_id_2` (`attribute_ref_id`);

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`basket_id`),
  ADD KEY `user_ref_id_8` (`user_ref_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (` cart_id`),
  ADD KEY `product_ref_id_10` (`product_ref_id`),
  ADD KEY `basket_ref_id_2` (`basket_ref_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_ref_id_1` (`category_ref_id`);

--
-- Indexes for table `categories_meta`
--
ALTER TABLE `categories_meta`
  ADD PRIMARY KEY (`category_meta_id`),
  ADD KEY `category_ref_id_10` (`category_ref_id`);

--
-- Indexes for table `categories_products`
--
ALTER TABLE `categories_products`
  ADD PRIMARY KEY (`category_product_id`),
  ADD KEY `product_ref_id_2` (`product_ref_id`),
  ADD KEY `category_ref_id_2` (`category_ref_id`);

--
-- Indexes for table `categories_products_meta`
--
ALTER TABLE `categories_products_meta`
  ADD PRIMARY KEY (`category_product_meta_id`),
  ADD KEY `category_meta_ref_id_1` (`category_meta_ref_id`),
  ADD KEY `product_ref_id_11` (`product_ref_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_ref_id_7` (`user_ref_id`),
  ADD KEY `product_ref_id_5` (`product_ref_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`),
  ADD KEY `product_ref_id_6` (`product_ref_id`),
  ADD KEY `vendor_ref_id_4` (`vendor_ref_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `basket_ref_id_1` (`basket_ref_id`),
  ADD KEY `product_ref_id_9` (`product_ref_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_ref_id_12` (`product_ref_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `routes_roles`
--
ALTER TABLE `routes_roles`
  ADD PRIMARY KEY (`route_role_id`),
  ADD KEY `route_ref_id_1` (`route_ref_id`),
  ADD KEY `role_ref_id_2` (`role_ref_id`);

--
-- Indexes for table `routes_users_vendors`
--
ALTER TABLE `routes_users_vendors`
  ADD PRIMARY KEY (`route_user_vendor_id`),
  ADD KEY `route_ref_id_3` (`route_ref_id`),
  ADD KEY `user_vendor_ref_id_2` (`user_vendor_ref_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_vendors`
--
ALTER TABLE `users_vendors`
  ADD PRIMARY KEY (`user_vendor_id`),
  ADD KEY `user_ref_id_5` (`user_ref_id`),
  ADD KEY `vendor_ref_id_3` (`vendor_ref_id`),
  ADD KEY `role_ref_id_1` (`role_ref_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `country_ref_id_2` (`country_ref_id`),
  ADD KEY `city_ref_id_2` (`city_ref_id`),
  ADD KEY `province_ref_id_2` (`province_ref_id`);

--
-- Indexes for table `vendors_products`
--
ALTER TABLE `vendors_products`
  ADD PRIMARY KEY (`vendors_products_id`),
  ADD KEY `product_ref_id_3` (`product_ref_id`),
  ADD KEY `vendor_ref_id_2` (`vendor_ref_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `city_ref_id_1` FOREIGN KEY (`city_ref_id`) REFERENCES `cities` (`city_id`),
  ADD CONSTRAINT `country_ref_id_1` FOREIGN KEY (`country_ref_id`) REFERENCES `countries` (`country_id`),
  ADD CONSTRAINT `province_ref_id_1` FOREIGN KEY (`province_ref_id`) REFERENCES `provinces` (`province_id`),
  ADD CONSTRAINT `user_ref_id_1` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `attributes_products`
--
ALTER TABLE `attributes_products`
  ADD CONSTRAINT `attribute_ref_id_2` FOREIGN KEY (`attribute_ref_id`) REFERENCES `attributes` (`attribute_id`),
  ADD CONSTRAINT `product_ref_id_4` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `baskets`
--
ALTER TABLE `baskets`
  ADD CONSTRAINT `user_ref_id_8` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `basket_ref_id_2` FOREIGN KEY (`basket_ref_id`) REFERENCES `baskets` (`basket_id`),
  ADD CONSTRAINT `product_ref_id_10` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `category_ref_id_1` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `categories_meta`
--
ALTER TABLE `categories_meta`
  ADD CONSTRAINT `category_ref_id_10` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `categories_products`
--
ALTER TABLE `categories_products`
  ADD CONSTRAINT `category_ref_id_2` FOREIGN KEY (`category_ref_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `product_ref_id_2` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `categories_products_meta`
--
ALTER TABLE `categories_products_meta`
  ADD CONSTRAINT `category_meta_ref_id_1` FOREIGN KEY (`category_meta_ref_id`) REFERENCES `categories_meta` (`category_meta_id`),
  ADD CONSTRAINT `product_ref_id_11` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `product_ref_id_5` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `user_ref_id_7` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `product_ref_id_6` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `vendor_ref_id_4` FOREIGN KEY (`vendor_ref_id`) REFERENCES `vendors` (`vendor_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `basket_ref_id_1` FOREIGN KEY (`basket_ref_id`) REFERENCES `baskets` (`basket_id`),
  ADD CONSTRAINT `product_ref_id_9` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_ref_id_12` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `routes_roles`
--
ALTER TABLE `routes_roles`
  ADD CONSTRAINT `role_ref_id_2` FOREIGN KEY (`role_ref_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `route_ref_id_1` FOREIGN KEY (`route_ref_id`) REFERENCES `routes` (`route_id`);

--
-- Constraints for table `routes_users_vendors`
--
ALTER TABLE `routes_users_vendors`
  ADD CONSTRAINT `route_ref_id_3` FOREIGN KEY (`route_ref_id`) REFERENCES `routes` (`route_id`),
  ADD CONSTRAINT `user_vendor_ref_id_2` FOREIGN KEY (`user_vendor_ref_id`) REFERENCES `users_vendors` (`user_vendor_id`);

--
-- Constraints for table `users_vendors`
--
ALTER TABLE `users_vendors`
  ADD CONSTRAINT `role_ref_id_1` FOREIGN KEY (`role_ref_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `user_ref_id_5` FOREIGN KEY (`user_ref_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `vendor_ref_id_3` FOREIGN KEY (`vendor_ref_id`) REFERENCES `vendors` (`vendor_id`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `city_ref_id_2` FOREIGN KEY (`city_ref_id`) REFERENCES `cities` (`city_id`),
  ADD CONSTRAINT `country_ref_id_2` FOREIGN KEY (`country_ref_id`) REFERENCES `countries` (`country_id`),
  ADD CONSTRAINT `province_ref_id_2` FOREIGN KEY (`province_ref_id`) REFERENCES `provinces` (`province_id`);

--
-- Constraints for table `vendors_products`
--
ALTER TABLE `vendors_products`
  ADD CONSTRAINT `product_ref_id_3` FOREIGN KEY (`product_ref_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `vendor_ref_id_2` FOREIGN KEY (`vendor_ref_id`) REFERENCES `vendors` (`vendor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
