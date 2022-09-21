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
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(100) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(7, 'BBQ Pizza', 'Spicy thin crust pizza loaded with cheese, bbq chicken, veggies and finger licking flavour.', '100.00', 'Food-Name-9507.jpg', 26, 'Yes', 'Yes'),
(8, 'Classic Chicken Burger', 'Juicy succulent Chicken patty with fresh tomatoes and lettuce and a generous amount of cheese.', '90.00', 'Food-Name-159.jpg', 27, 'Yes', 'Yes'),
(9, 'Double Cheese Double Chicken Burger', 'You can never go wrong with double the flavor of two Chicken patties and extra cheese.', '110.00', 'Food-Name-4649.jpg', 27, 'Yes', 'Yes'),
(10, 'Egglicious Burger', 'Fried eggs coupled up with some fresh lettuce, tomato slices and caramelized onions to get you a heavenly filling brunch!', '70.00', 'Food-Name-6916.jpg', 27, 'Yes', 'Yes'),
(11, 'Mutton Burger', 'The ultimate homemade Mutton Burger with Freshly smoked Mutton Patties, Pickles, fresh parsley and of course, and overload of cheese, suitable for your lazy day in.', '100.00', 'Food-Name-287.jpg', 27, 'Yes', 'Yes'),
(12, 'Strawberry Cheesecake', 'Bite into a slice of pure bliss with this freshly prepared cheesecake.', '60.00', 'Food-Name-7353.jpg', 30, 'Yes', 'Yes'),
(13, 'Gulab Jamun', 'Traditional Fried sweet curdled milk balls dipped in flavored sugar syrup. Served hot with a scoop of vanilla ice cream', '30.00', 'Food-Name-248.webp', 30, 'Yes', 'Yes'),
(14, 'Chicken Fajita Pizza', 'Fresh Fajitas along with pizza sauce, cheese and vegetables.', '100.00', 'Food-Name-741.jpg', 26, 'Yes', 'Yes'),
(15, 'Chicken Shawarma Pizza', 'A taste of authentic shawarma packed with cheese and sauce.', '100.00', 'Food-Name-3536.jpg', 26, 'Yes', 'Yes'),
(16, 'Margherita Pizza', 'A cheesy escape with cheddar, mozzarella and parmesan cheese.', '80.00', 'Food-Name-9201.jpg', 26, 'Yes', 'Yes'),
(17, 'Chicken Momos', '7 pcs of Momos with a filling of chicken, vegetables, sauces and spices.', '60.00', 'Food-Name-5801.jpg', 28, 'Yes', 'Yes'),
(18, 'Vegetable Momos', 'Classic steamed vegetable momos served along with a tangy sauce', '50.00', 'Food-Name-9100.jpg', 28, 'Yes', 'Yes'),
(19, 'Cheese Momos', 'Hot Oozing flavored cheese steamed to perfection.', '50.00', 'Food-Name-6116.jpg', 28, 'Yes', 'Yes'),
(20, 'Virjin Mojito', 'A classic mojito with fresh mint and soda to go along with your meal.', '40.00', 'Food-Name-6837.webp', 29, 'Yes', 'Yes'),
(21, 'Blue Ocean Mojito', 'A sweet blue syrup mojito with fresh lime and ice.', '40.00', 'Food-Name-2935.jpg', 29, 'Yes', 'Yes'),
(22, 'Royal Firangi Falooda', 'A traditional recipe falooda with chia seeds, rose syrup , sev and fresh fruits and  topped with vanilla ice cream. Super filling and satisfying.', '60.00', 'Food-Name-7207.webp', 29, 'Yes', 'Yes'),
(23, 'Any fresh fruit Juice', 'Choose from a variety of fresh fruits like orange, kiwi, watermelon, papaya and muskmelon. ', '20.00', 'Food-Name-1421.webp', 29, 'Yes', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
