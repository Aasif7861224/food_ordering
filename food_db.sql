-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 01:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'Admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(2, 'Aasif', '011c945f30ce2cbafc452f39840f025693339c42');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(1, 2, 2, 'Pepperoni Pizza', 259, 1, 'pepperoni pizza.jpg'),
(3, 1, 5, 'Ham Burger', 169, 6, 'hamburger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 0, 'hello', 'dshytf@sdiuyg.com', '9226892954', 'dukfgwdu');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Asif Saifulla Pirjad', '195668489', 'aasifpirjade@gmail.com', 'paypal', 'khanapur, khanapur, khanapur, khanapur, khanapur, Maharashtra, India - 415307', 'Margherita Pizza (110 x 5) - ', 550, '2025-03-13', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Margherita Pizza', 'fast food', 110, 'Margherita pizza.jpg'),
(2, 'Pepperoni Pizza', 'fast food', 259, 'pepperoni pizza.jpg'),
(3, 'Mushroom and Ham Pizza', 'fast food', 359, 'Mushroom and Ham Pizza.jpg'),
(4, 'Bacon Pizza', 'fast food', 359, 'bacon pizza.jpg'),
(5, 'Ham Burger', 'fast food', 169, 'hamburger.jpg'),
(6, 'Special Maharaja Burger', 'fast food', 499, 'Maharaja Burger.jpeg'),
(7, 'Clementine Mojitos | Champagne and Coconuts', 'drinks', 149, 'Clementine Mojitos Champagne and Coconuts.jpg'),
(8, 'Strawberry Lemonade', 'drinks', 179, 'Strawberry-Lemonade Shrub.jpeg'),
(9, 'Virgin Mojitos', 'drinks', 169, 'Virgin Mojitos.jpeg'),
(10, 'BLUE LAGOON MOJITO', 'drinks', 149, 'BLUE LAGOON MOJITO.jpeg'),
(11, 'Green Apple mojito', 'drinks', 129, 'Green Apple mojito.jpeg'),
(12, 'Blackcurrant Mojito', 'drinks', 139, 'Blackcurrant Mojito.jpeg'),
(13, 'Hazelnut Cheesecake', 'desserts', 269, 'Hazelnut Cheesecake.jpeg'),
(14, 'Cucumber Cream Cheese Croissant', 'desserts', 359, 'Cucumber Cream Cheese Croissant.jpeg'),
(15, 'Pistachio Croissant', 'desserts', 499, 'Pistachio Croissant.jpeg'),
(16, 'Choco Lava Cake', 'desserts', 199, 'choco lava cake.jpeg'),
(17, 'Blueberry and Red Velvet Jar Cakes', 'desserts', 599, 'Blueberry and Red Velvet Jar Cakes.jpeg'),
(18, 'Pista Rasmalai Cake (Eggless)', 'desserts', 1499, 'Pista Rasmalai Cake (Eggless).jpeg'),
(19, 'Pav Bhaji', 'main dish', 199, 'Pav-Bhaji.jpeg'),
(20, 'Butter Chicken & Rice', 'main dish', 349, 'Butter-Chicken-Rice-.jpeg'),
(21, 'Chole Kulche', 'main dish', 239, 'Chole-Kulche-.jpeg'),
(22, 'Rajma Masala & Rice', 'main dish', 199, 'Rajma Masala & Rice.jpeg'),
(23, 'Dal Tadka & Rice', 'main dish', 189, 'Dal-Tadka-Rice-.jpeg'),
(24, 'Plain Maggi', 'main dish', 99, 'Plain-Maggi-.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Asif Saifulla Pirjad', 'aasifpirjade@gmail.com', '195668489', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'khanapur, khanapur, khanapur, khanapur, khanapur, Maharashtra, India - 415307'),
(2, 'liofy', 'ukthfdyt@gmail.com', '9226890954', '8cb2237d0679ca88db6464eac60da96345513964', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
