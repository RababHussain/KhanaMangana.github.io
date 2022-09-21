-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 09:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `quantity`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Chicken Fajita Pizza', '100.00', '2.00', '200', '2022-09-15 03:54:12', 'Ordered', 'Shahrukh Khan', '1234567890', 'shahrukh_don@yahoo.com', 'Mannat, Mumbai, IND'),
(2, 'Cheese Momos', '50.00', '4.00', '200', '2022-09-15 03:54:54', 'Delivered', 'Salman Khan', '2345678901', 'bodyguard@yahoo.com', 'Delhi, IND'),
(3, 'Strawberry Cheesecake', '60.00', '1.00', '60', '2022-09-15 03:55:26', 'On delivery', 'Akshay Kumar', '3456789012', 'khiladi@gmail.com', 'Kolkata, IND'),
(4, 'Gulab Jamun', '30.00', '3.00', '90', '2022-09-19 03:53:19', 'Ordered', 'Blair Rocha', '+1 (214) 625-5129', 'zehegy@mailinator.com', 'Beatae tempora asper'),
(5, 'Chicken Fajita Pizza', '100.00', '12.00', '1200', '2022-09-19 09:15:30', 'Ordered', 'Illiana Lowery', '+1 (866) 515-9844', 'liwulyve@mailinator.com', 'Ea deserunt commodo ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
