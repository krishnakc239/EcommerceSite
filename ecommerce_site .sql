-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 08:50 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerce_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `version`, `product_id`, `quantity`, `unique_id`) VALUES
(1, 0, 6, 1, '2f39ded8-7e69-46ce-bcfc-d64b5ec8b2c2'),
(2, 0, 6, 1, 'e1b8b444-5758-4854-8234-77f52d059cc1'),
(3, 0, 5, 1, '66aa6e3a-9f81-42fd-ac2f-a7793b33a542'),
(4, 0, 9, 1, '66aa6e3a-9f81-42fd-ac2f-a7793b33a542'),
(5, 0, 4, 1, '66aa6e3a-9f81-42fd-ac2f-a7793b33a542'),
(6, 0, 23, 1, '66aa6e3a-9f81-42fd-ac2f-a7793b33a542'),
(7, 0, 17, 1, '66aa6e3a-9f81-42fd-ac2f-a7793b33a542'),
(8, 0, 24, 1, '4ecef40b-763a-4aa2-afd7-27505acdfdb0'),
(9, 0, 20, 1, '4ac00e0e-b3b1-48b5-81f0-23100cf70637'),
(10, 0, 22, 1, '3eafc899-dc9f-4053-910a-7a0ca75c4b1a'),
(11, 0, 9, 1, '3eafc899-dc9f-4053-910a-7a0ca75c4b1a'),
(12, 0, 16, 1, '5d5dfe73-a9ce-4c55-aca9-a071d935b4cb'),
(13, 0, 10, 1, '5d5dfe73-a9ce-4c55-aca9-a071d935b4cb'),
(14, 0, 9, 1, 'c3b3475b-7ac5-44cf-bec4-d3a9f1a44f44'),
(15, 0, 3, 1, 'c3b3475b-7ac5-44cf-bec4-d3a9f1a44f44'),
(16, 0, 16, 1, '9fd575ce-99d8-450e-ae94-2944d00dd278'),
(17, 0, 18, 1, '9fd575ce-99d8-450e-ae94-2944d00dd278'),
(18, 0, 18, 1, 'd296e474-661e-409c-a312-ad0bd7afeb91'),
(19, 0, 2, 1, 'd296e474-661e-409c-a312-ad0bd7afeb91'),
(20, 0, 10, 1, 'd296e474-661e-409c-a312-ad0bd7afeb91'),
(21, 0, 6, 1, 'd296e474-661e-409c-a312-ad0bd7afeb91'),
(22, 0, 8, 1, 'd296e474-661e-409c-a312-ad0bd7afeb91'),
(23, 0, 6, 1, '1f3ef7f5-a485-4821-bdb5-acac1a2c7bca'),
(24, 0, 8, 1, '1f3ef7f5-a485-4821-bdb5-acac1a2c7bca'),
(25, 0, 9, 1, '1f3ef7f5-a485-4821-bdb5-acac1a2c7bca'),
(26, 0, 18, 1, '1f3ef7f5-a485-4821-bdb5-acac1a2c7bca'),
(27, 0, 16, 1, '1f3ef7f5-a485-4821-bdb5-acac1a2c7bca'),
(28, 0, 23, 1, 'bca857c4-d2d6-4a0c-ba61-d1c06d922b9d'),
(29, 0, 3, 1, 'bca857c4-d2d6-4a0c-ba61-d1c06d922b9d'),
(30, 0, 16, 1, '1ae4500b-2466-463d-8475-84727cab3a75'),
(31, 0, 14, 1, '1ae4500b-2466-463d-8475-84727cab3a75'),
(32, 0, 6, 1, '6fcc1554-db29-4654-8d9c-9dc68291620f'),
(33, 0, 6, 1, '435a8892-d09e-4844-9d8e-a5cf03d4d619'),
(34, 0, 6, 1, '4c5fb160-a2e1-48fa-b68e-c09d4cc9fff1'),
(35, 0, 10, 1, '6411510a-bd08-45ed-9453-c9b6d33ce034'),
(36, 0, 4, 1, '6411510a-bd08-45ed-9453-c9b6d33ce034'),
(37, 0, 23, 1, '897d46f3-d704-4f39-b568-bb8c71bf9940'),
(38, 0, 6, 1, '0fc940a1-79db-4bdc-a397-8cc72c31cdeb'),
(39, 0, 8, 1, '6499a873-16b9-411c-bd3d-78e128ebe5f3'),
(40, 0, 8, 1, '76d41ac0-f88e-41a7-a9d9-1fc9568569fc'),
(41, 0, 6, 1, '04799fa1-214a-4bc2-8a2d-253f9e116291'),
(42, 0, 6, 1, 'cafcc489-00e5-45aa-8560-727e6f0f0d99'),
(43, 0, 6, 1, '93bbc85a-0839-4ce0-8588-dd4329e3a010'),
(44, 0, 6, 1, 'a5b821b9-32e4-4b7e-95de-9af79ae289c0'),
(45, 0, 6, 1, '19a635af-39ce-4330-b5cb-160b13cca3ae'),
(46, 0, 6, 1, '34d88264-e439-4647-964c-0819603f4808'),
(47, 0, 6, 1, '0a6aa442-035a-4987-aaf1-9a127fba9db8'),
(48, 0, 6, 1, '9f4d3d69-9f94-4d07-a57c-42abf6b1ca22'),
(49, 0, 6, 1, '298f4c1f-5c32-4866-b427-03e7b3fbf8db'),
(50, 0, 9, 1, 'c8631216-82ff-46ed-9fdf-44031ea422e4'),
(51, 0, 6, 1, '09f0f168-dbc9-4465-b5d3-f3774fed0981'),
(52, 0, 6, 1, '60a78131-96d0-40dd-a42b-61bd8e3ebb97'),
(53, 0, 24, 1, '72218714-d69e-4c7f-864a-eb88c53d8292'),
(54, 0, 1, 1, '72218714-d69e-4c7f-864a-eb88c53d8292'),
(55, 0, 16, 1, '87abcfb8-84b5-4eaa-8371-13078234f89e'),
(56, 0, 16, 1, '1b2e1147-d8ee-4f0c-9e36-83fdfe82983e'),
(57, 0, 2, 1, 'ef5baede-b29e-4365-b7a5-bb89395f619e'),
(58, 0, 6, 1, '5806a098-4d89-45fb-8e2a-128f132d0f8f'),
(59, 0, 6, 1, '513b1356-7bb0-43ba-a974-f4afd3460592'),
(60, 0, 14, 1, 'a39f6c1b-6901-4cad-ad33-da52ae6c24f0'),
(61, 0, 6, 1, '87f626be-db89-4356-83e4-68184658d8be'),
(62, 0, 6, 1, 'fad44a92-2d8e-40cb-a52e-616f67f2e1f5');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `version`, `description`, `name`, `image`) VALUES
(2, 0, 'warm jacket', 'JACKET', 'jk9.jpg'),
(3, 0, 'All kinds of shoes', 'SHOES', 's1.jpg'),
(4, 0, 'stylish bags', 'BAG', 'b1.jpg'),
(5, 0, 'All kinds of European jeans.', 'JEANS', 'j4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `version`, `category_id`, `name`, `description`, `image`, `discount`, `price`) VALUES
(1, 0, 2, 'leather jacket', 'Cool jacket made up of 100% wool', 'jk2.jpg', '15%', 40),
(2, 0, 2, 'ladies jacket', 'light weight fur jacket for ladies.', 'jk3.jpg', '12%', 40),
(3, 0, 2, 'jeans jacket', 'Thin jacket for moderate climate.', 'jk4.jpg', '12%', 40),
(4, 0, 3, 'leather shoe', '100% leather shoe.', 's1.jpg', '12%', 34),
(5, 0, 3, 'Converse Shoes', 'Light weight and comfort shoe.', 's4.jpg', '20%', 35),
(6, 0, 3, 'Party Shoes', '100% Leather shoe that improves your personality.', 's2.jpg', '11%', 35),
(7, 0, 3, 'Sport Shoe', 'Light weight with high degree of comfort.', 's5.jpg', '11%', 44),
(8, 0, 3, 'Ladies shoe', 'Sexy looks shoes for ladies.', 's8.jpg', '11%', 43),
(9, 0, 3, 'Winter Shoe', 'Warm shoe for winter with 100% cotton shoe.', 's9.jpg', '17%', 43),
(10, 0, 2, 'Warm Jacket', 'Japanese jacket for winter season', 'jk8.jpg', '9%', 43),
(11, 0, 2, 'Thin Jacket', 'Comfortable for moderate climate, made in china with 80% cotton used.', 'jk5.jpg', '9%', 43),
(12, 0, 2, 'Jeans Jacket', 'Leather jacket with double layer, suitable for gentlemen. Made in USA.', 'jk9.jpg', '9%', 27),
(13, 0, 4, 'Hand Bag', 'Flexible and durable bag made up of cotton and fibre.', 'b1.jpg', '9%', 27),
(14, 0, 4, 'Ladies Side Bag', 'Small and beautiful bag for ladies.', 'b2.jpg', '13%', 27),
(15, 0, 4, 'School Bag', 'Highly durable and flexible bag for students to carry their school materials.', 'b4.jpg', '13%', 27),
(16, 0, 4, 'Gentlemen Bag', 'Hand bag for officers used to carry documents with high security.', 'b5.jpg', '13%', 27),
(17, 0, 4, 'Laptop Bag', 'Double layered bag to keep laptops and accessories safely and water proof.', 'b7.jpg', '13%', 50),
(18, 0, 4, 'Ladies Bag', 'Beautiful looking bag  for ladies, used to keep laptops.', 'b6.jpg', '13%', 50),
(19, 0, 5, 'Jeans Pant', 'Fitted pant made from 100% jeans and durable for gentlemen.', 'j2.jpg', '13%', 50),
(20, 0, 5, 'Choose Pant', 'Choose pant for ladies with moderate body structure.', 'j4.jpg', '8%', 38),
(21, 0, 5, 'Grunch Pant', 'Rough and stylish pant for gents', 'j8.jpg', '17%', 38),
(22, 0, 5, 'Ladies grunch pant', 'Fitted choose and roughed pants for ladies.', 'j7.jpg', '17%', 38),
(23, 0, 5, 'Korean Pant', 'Stylish pant made from 100% jeans.', 'j3.jpg', '17%', 38),
(24, 0, 5, 'Jeans Thin Pant', '80% jeans and made up of Chinese technology.', 'j6.jpg', '17%', 38);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `version`, `email`, `fullname`, `password`, `user_type`, `username`) VALUES
(1, 0, 'abc@gmail.com', 'Test123', '123', 'admin', 'admin1'),
(2, 0, 'abc@gmail.com', 'Test123', '123', 'admin', 'admin2'),
(3, 0, 'abc@gmail.com', 'Test123', '123', 'admin', 'admin3'),
(4, 0, 'abc@gmail.com', 'Test123', '123', 'admin', 'testadmin4'),
(5, 0, 'abc@gmail.com', 'Test123', '123', 'admin', 'mainadmin');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
