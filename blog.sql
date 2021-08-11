-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 30, 2021 at 02:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(2, 'PHP Events'),
(3, 'Tutorials'),
(4, 'Misc');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `body`, `author`, `tags`, `date`) VALUES
(1, 2, 'International PHP Conference 2021', '		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit. Quam quisque id diam vel quam elementum. Pulvinar sapien et ligula ullamcorper malesuada proin. Et malesuada fames ac turpis. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Gravida dictum fusce ut placerat orci nulla. Suspendisse ultrices gravida dictum fusce ut. Viverra nam libero justo laoreet sit amet cursus sit. Tellus in hac habitasse platea dictumst. Velit euismod in pellentesque massa placerat duis ultricies lacus sed. At consectetur lorem donec massa sapien faucibus. Sed libero enim sed faucibus turpis. Consectetur adipiscing elit ut aliquam purus. Amet massa vitae tortor condimentum. Lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Ac turpis egestas sed tempus.</p>\r\n        <p>Est lorem ipsum dolor sit amet consectetur. Diam vulputate ut pharetra sit amet aliquam id diam maecenas. Amet consectetur adipiscing elit pellentesque. Sit amet dictum sit amet justo donec. Enim nunc faucibus a pellentesque. Leo vel orci porta non pulvinar neque. Vel turpis nunc eget lorem dolor sed viverra. A cras semper auctor neque vitae. Senectus et netus et malesuada. Integer vitae justo eget magna fermentum iaculis eu. Sem nulla pharetra diam sit. Augue mauris augue neque gravida in fermentum et. Curabitur vitae nunc sed velit. Eget dolor morbi non arcu risus quis varius quam quisque. Egestas integer eget aliquet nibh praesent tristique. Eget nunc scelerisque viverra mauris. Velit egestas dui id ornare arcu odio. Et ultrices neque ornare aenean.</p>\r\n        <p>Bibendum est ultricies integer quis auctor elit sed vulputate. Nibh praesent tristique magna sit amet purus gravida. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget. Cras sed felis eget velit aliquet sagittis id consectetur. Aliquet risus feugiat in ante. Donec massa sapien faucibus et. Magna etiam tempor orci eu lobortis. Porttitor lacus luctus accumsan tortor posuere ac ut consequat semper. Ipsum faucibus vitae aliquet nec. Hac habitasse platea dictumst vestibulum rhoncus. Sed felis eget velit aliquet. Sagittis purus sit amet volutpat. Mi ipsum faucibus vitae aliquet nec ullamcorper sit.</p>	', 'DSD', 'php news, php events', '2021-07-13 08:20:25'),
(2, 1, 'PHP 5.6.Obeta4 Released', '		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet consectetur adipiscing elit. Quam quisque id diam vel quam elementum. Pulvinar sapien et ligula ullamcorper malesuada proin. Et malesuada fames ac turpis. Felis imperdiet proin fermentum leo vel orci porta non pulvinar. Gravida dictum fusce ut placerat orci nulla. Suspendisse ultrices gravida dictum fusce ut. Viverra nam libero justo laoreet sit amet cursus sit. Tellus in hac habitasse platea dictumst. Velit euismod in pellentesque massa placerat duis ultricies lacus sed. At consectetur lorem donec massa sapien faucibus. Sed libero enim sed faucibus turpis. Consectetur adipiscing elit ut aliquam purus. Amet massa vitae tortor condimentum. Lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor. Ipsum dolor sit amet consectetur adipiscing elit duis tristique. Ac turpis egestas sed tempus.</p>\r\n        <p>Est lorem ipsum dolor sit amet consectetur. Diam vulputate ut pharetra sit amet aliquam id diam maecenas. Amet consectetur adipiscing elit pellentesque. Sit amet dictum sit amet justo donec. Enim nunc faucibus a pellentesque. Leo vel orci porta non pulvinar neque. Vel turpis nunc eget lorem dolor sed viverra. A cras semper auctor neque vitae. Senectus et netus et malesuada. Integer vitae justo eget magna fermentum iaculis eu. Sem nulla pharetra diam sit. Augue mauris augue neque gravida in fermentum et. Curabitur vitae nunc sed velit. Eget dolor morbi non arcu risus quis varius quam quisque. Egestas integer eget aliquet nibh praesent tristique. Eget nunc scelerisque viverra mauris. Velit egestas dui id ornare arcu odio. Et ultrices neque ornare aenean.</p>\r\n        <p>Bibendum est ultricies integer quis auctor elit sed vulputate. Nibh praesent tristique magna sit amet purus gravida. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget. Cras sed felis eget velit aliquet sagittis id consectetur. Aliquet risus feugiat in ante. Donec massa sapien faucibus et. Magna etiam tempor orci eu lobortis. Porttitor lacus luctus accumsan tortor posuere ac ut consequat semper. Ipsum faucibus vitae aliquet nec. Hac habitasse platea dictumst vestibulum rhoncus. Sed felis eget velit aliquet. Sagittis purus sit amet volutpat. Mi ipsum faucibus vitae aliquet nec ullamcorper sit.</p>	', 'DSD', 'php , php releases, php 5.6', '2021-07-29 19:30:25'),
(3, 5, 'Test Post New', '						This is a Test Post			', 'Deepak', 'come on', '2021-07-30 11:49:17'),
(5, 4, 'New Post', 'This is my new post. Project Completed Succesfully', 'Deepak', 'Hurray, maze aa gaye', '2021-07-30 12:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
