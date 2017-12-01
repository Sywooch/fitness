-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 01 2017 г., 10:55
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `fitness`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `activity_category_id` int(11) NOT NULL,
  `working_weight` varchar(255) NOT NULL,
  `number_of_approaches` varchar(255) NOT NULL,
  `number_of_repetitions` varchar(255) NOT NULL,
  `interval_between_approaches` varchar(255) NOT NULL,
  `technique` varchar(255) NOT NULL,
  `training_time` varchar(50) NOT NULL,
  `specification` text NOT NULL,
  `important` varchar(255) DEFAULT NULL,
  `cal` varchar(50) DEFAULT NULL,
  `fats` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'Not set',
  `video` varchar(255) DEFAULT 'Not set',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `activity`
--

INSERT INTO `activity` (`id`, `name`, `activity_category_id`, `working_weight`, `number_of_approaches`, `number_of_repetitions`, `interval_between_approaches`, `technique`, `training_time`, `specification`, `important`, `cal`, `fats`, `image`, `video`, `created_at`) VALUES
(1, 'Activity_1', 1, '60 lbs', '4 time', '15 time', '1,5 min', 'The weight rests bla-bla...', '15 min', 'Some specification', 'Not dropping down low enough', '33', '35', 'Not set', 'activity_video/xaxa.mp4', '2017-10-18 07:03:02'),
(2, 'Activity_2', 1, '50 lbs', '5 time', '22 time', '1 min', 'The weight rests bla-bla...', '20 min', 'Specification', 'Not dropping down low enough', '50', '113', 'activity_images/1225478471_gg3589.jpg', 'activity_video/test.mp4', '2017-10-18 07:03:03');

-- --------------------------------------------------------

--
-- Структура таблицы `activity_category`
--

CREATE TABLE IF NOT EXISTS `activity_category` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `activity_category`
--

INSERT INTO `activity_category` (`id`, `name`, `image`, `created_at`) VALUES
(1, 'Football', 'category_images/football.jpg', '2017-10-17 10:33:07'),
(2, 'Basketball', 'category_images/basketball.jpg', '2017-10-17 10:33:07'),
(3, 'Tennis', 'category_images/tennis.jpg', '2017-10-17 10:34:06'),
(4, 'Baseball', 'category_images/baseball.png', '2017-10-17 10:34:06');

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_token`, `type`, `created_at`) VALUES
(4, 99, 'c55365da7519c037b80700a009cabb3f028b8418a53fc506cbdec29cf56fc1da', 'ios', '2017-11-06 14:28:11'),
(16, 105, 'a4d598db69c3835cbc43f01461ac371ed0ff89a78531548b78ebac274ce17d47', 'ios', '2017-11-10 09:17:22'),
(67, 65, '2d3840855cddab1b567e4c2c4134ad107dcb19b33687c07614c8c8469a4b716b', 'ios', '2017-11-21 12:29:49'),
(70, 151, 'ljshdgi58o7ghoilsgh', 'ios', '2017-11-21 13:34:57'),
(85, 166, 'SIMULATOR', 'ios', '2017-11-22 13:38:01'),
(86, 167, 'SIMULATOR', 'ios', '2017-11-22 14:27:44'),
(87, 168, 'SIMULATOR', 'ios', '2017-11-22 14:31:36'),
(88, 169, 'SIMULATOR', 'ios', '2017-11-22 14:46:07'),
(89, 170, 'SIMULATOR', 'ios', '2017-11-22 15:16:43'),
(91, 172, 'SIMULATOR', 'ios', '2017-11-22 15:33:15'),
(92, 173, '3ead0118dd79a9060c9cef008742703fc2794a39caed4643e3fe57f29df60967', 'ios', '2017-11-22 16:09:12'),
(93, 175, 'SIMULATOR', 'ios', '2017-11-23 08:31:07'),
(94, 176, 'SIMULATOR', 'ios', '2017-11-24 11:13:43'),
(95, 177, 'SIMULATOR', 'ios', '2017-11-24 11:34:18'),
(97, 178, 'SIMULATOR', 'ios', '2017-11-24 11:43:50'),
(98, 179, 'SIMULATOR', 'ios', '2017-11-24 11:49:13'),
(99, 180, 'SIMULATOR', 'ios', '2017-11-24 12:59:44'),
(100, 181, 'SIMULATOR', 'ios', '2017-11-24 16:28:18'),
(101, 182, 'SIMULATOR', 'ios', '2017-11-27 10:11:03'),
(102, 183, 'SIMULATOR', 'ios', '2017-11-27 13:41:53'),
(104, 185, 'SIMULATOR', 'ios', '2017-11-27 14:56:13'),
(105, 187, 'SIMULATOR', 'ios', '2017-11-30 08:04:07'),
(106, 188, 'SIMULATOR', 'ios', '2017-11-30 08:28:17'),
(113, 190, 'SIMULATOR', 'ios', '2017-11-30 13:21:49'),
(114, 191, 'SIMULATOR', 'ios', '2017-11-30 13:22:15'),
(116, 193, 'SIMULATOR', 'ios', '2017-11-30 13:25:41'),
(117, 194, 'SIMULATOR', 'ios', '2017-11-30 15:12:49');

-- --------------------------------------------------------

--
-- Структура таблицы `exercises`
--

CREATE TABLE IF NOT EXISTS `exercises` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_category_id` int(11) NOT NULL,
  `min` double NOT NULL,
  `burned_cal` double NOT NULL,
  `daily_goal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exercises`
--

INSERT INTO `exercises` (`id`, `user_id`, `activity_category_id`, `min`, `burned_cal`, `daily_goal`, `created_at`) VALUES
(3, 84, 1, 10, 140, 0, '2017-10-25 08:46:44'),
(4, 84, 2, 36, 468, 1912.68, '2017-10-25 09:24:43'),
(5, 84, 1, 25, 350, 1912.68, '2017-10-25 09:25:07'),
(6, 84, 3, 42, 462, 1912.68, '2017-10-25 09:27:57'),
(7, 84, 1, 54, 756, 1912.68, '2017-10-25 11:17:25'),
(8, 84, 1, 13, 182, 1912.68, '2017-10-25 11:17:41'),
(9, 84, 1, 100, 1400, 1912.68, '2017-10-25 11:17:49'),
(10, 85, 1, 22, 0, -11262.41, '2017-10-25 12:10:18'),
(11, 85, 1, 22, 242, -11262.41, '2017-10-25 12:10:30'),
(12, 85, 1, 22, 0, -11262.41, '2017-10-25 12:10:38'),
(13, 85, 1, 22, 242, -11262.41, '2017-10-25 12:12:30'),
(14, 85, 1, 35, 0, -11262.41, '2017-10-25 12:12:42'),
(15, 85, 1, 90, 0, -11262.41, '2017-10-25 12:13:00'),
(16, 84, 1, 23, 322, 1912.68, '2017-10-26 06:36:59'),
(17, 84, 2, 45, 585, 1912.68, '2017-10-26 10:06:56'),
(18, 67, 3, 0, 0, 2063.95, '2017-10-26 14:49:12'),
(19, 84, 1, 52, 728, 1912.68, '2017-10-28 18:13:11'),
(20, 84, 2, 32, 416, 1912.68, '2017-10-28 18:13:44'),
(21, 84, 1, 88, 1232, 1912.68, '2017-10-31 11:32:32'),
(22, 65, 1, 25, 325, 2038.95, '2017-11-03 13:20:14'),
(23, 91, 1, 25, 275, 1851.4, '2017-11-03 15:58:46'),
(24, 91, 2, 22, 220, 1851.4, '2017-11-03 16:04:07'),
(25, 65, 1, 20, 260, 2038.95, '2017-11-05 15:56:00'),
(26, 92, 1, 0, 0, 4467.72, '2017-11-06 08:52:51'),
(27, 92, 1, 44, 36784, 4467.72, '2017-11-06 08:53:03'),
(28, 94, 1, 10, 90, 1572.97, '2017-11-06 12:11:45'),
(29, 94, 2, 23, 184, 1572.97, '2017-11-06 12:11:55'),
(30, 65, 1, 68, 884, 2038.95, '2017-11-06 12:43:39'),
(31, 95, 1, 0, 0, 1794.05, '2017-11-06 12:53:56'),
(32, 95, 2, 0, 0, 1794.05, '2017-11-06 12:55:31'),
(33, 95, 4, 0, 0, 1794.05, '2017-11-06 12:55:43'),
(34, 95, 1, 0, 0, 1794.05, '2017-11-06 12:55:46'),
(35, 95, 2, 0, 0, 1794.05, '2017-11-06 12:55:50'),
(36, 95, 1, 0, 0, 1794.05, '2017-11-06 12:56:06'),
(37, 95, 3, 0, 0, 1794.05, '2017-11-06 12:56:11'),
(38, 95, 2, 0, 0, 1794.05, '2017-11-06 12:56:41'),
(39, 95, 3, 0, 0, 1794.05, '2017-11-06 12:56:46'),
(41, 104, 1, 90, 1080, 1961.45, '2017-11-08 11:05:37'),
(42, 96, 4, 20, 0, 2441.23, '2017-11-08 13:09:48'),
(43, 96, 1, 100, 1800, 2441.23, '2017-11-08 13:10:04'),
(44, 96, 1, 50, 900, 2441.23, '2017-11-08 13:11:38'),
(45, 65, 1, 90, 1170, 2052.7, '2017-11-09 13:53:22'),
(46, 104, 1, 68, 816, 1961.45, '2017-11-10 08:48:18'),
(47, 84, 1, 55, 770, 1985.47, '2017-11-10 15:52:12'),
(48, 175, 1, 50, 700, 2137.5144335938, '2017-11-23 15:23:55'),
(49, 65, 1, 20, 260, 2066.45, '2017-11-24 16:17:01'),
(50, 186, 3, 0, 0, 1926.2167651367, '2017-11-29 11:39:18'),
(51, 186, 1, 0, 0, 1926.2167651367, '2017-11-29 11:39:25'),
(52, 186, 1, 20, 260, 1926.2167651367, '2017-11-29 11:39:31'),
(53, 96, 1, 500, 7000, 2056.23, '2017-11-29 13:01:02'),
(54, 189, 1, 56, 672, 2116.47, '2017-11-30 10:35:31'),
(55, 189, 2, 28, 308, 2116.47, '2017-11-30 11:12:38'),
(56, 189, 3, 35, 315, 2116.47, '2017-11-30 11:15:01'),
(57, 65, 1, 58, 754, 2036.357, '2017-11-30 14:22:31'),
(58, 65, 2, 25, 300, 2036.3567382813, '2017-11-30 14:24:20'),
(59, 65, 3, 54, 540, 2036.3567382813, '2017-11-30 14:24:41');

-- --------------------------------------------------------

--
-- Структура таблицы `food`
--

CREATE TABLE IF NOT EXISTS `food` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `food_category_id` int(11) NOT NULL,
  `cal` varchar(50) NOT NULL,
  `grams` varchar(50) NOT NULL,
  `proteins` varchar(50) NOT NULL,
  `fats` varchar(50) NOT NULL,
  `carbohydrates` varchar(50) NOT NULL,
  `directions` text NOT NULL,
  `specification` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `name`, `food_category_id`, `cal`, `grams`, `proteins`, `fats`, `carbohydrates`, `directions`, `specification`, `image`, `created_at`) VALUES
(1, 'Food_1', 1, '500', '1000', '145', '23', '11', 'Some text', 'text', 'food_images/food-712665_960_720.jpg', '2017-10-18 07:42:35'),
(2, 'Food_2', 1, '348', '500', '39', '98', '19', 'Some directions', 'text text', 'food_images/photo-70497.jpg', '2017-10-18 07:42:35'),
(3, 'Fish', 1, '123', '33', '23', '12', '123', 'Some directions', 'Some spec', 'food_images/food-712665_960_720.jpg', '2017-11-07 13:50:34'),
(4, 'Meat', 1, '345', '123', '123', '22', '123', 'directions', 'specification', 'food_images/food-712665_960_720.jpg', '2017-11-07 13:50:34'),
(5, 'Milk', 1, '45', '432', '2345', '542', '235', 'dsfgdsfg', 'dsfgdsfg', 'food_images/food-712665_960_720.jpg', '2017-11-07 13:51:33'),
(6, 'Bread', 1, '3456', '1436', '323', '654', '765', 'fdghdfghggggdhdfghd54ty', 'gdgvhdfghds', 'food_images/food-712665_960_720.jpg', '2017-11-07 13:51:33');

-- --------------------------------------------------------

--
-- Структура таблицы `food_category`
--

CREATE TABLE IF NOT EXISTS `food_category` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `food_category`
--

INSERT INTO `food_category` (`id`, `name`, `image`, `created_at`) VALUES
(1, 'Fish', 'category_images/fish.jpg', '2017-10-17 10:23:11'),
(2, 'Meat', 'category_images/meat.jpg', '2017-10-17 10:23:11'),
(3, 'Bread', 'category_images/bread.jpg', '2017-10-17 10:23:37'),
(4, 'Milk', 'category_images/milk.jpg', '2017-10-17 10:23:55');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `created_at`) VALUES
(1, 'New Car', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'news_images/Sports_Car_Front_View-512.png', '2017-10-18 12:30:13'),
(2, 'Paper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'news_images/News.jpg', '2017-10-19 12:30:15');

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `current_weight` float NOT NULL,
  `bust` float NOT NULL,
  `waist` float NOT NULL,
  `hips` float NOT NULL,
  `thigh` float NOT NULL,
  `forearm` float NOT NULL,
  `chest` float NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `current_weight`, `bust`, `waist`, `hips`, `thigh`, `forearm`, `chest`, `created_at`) VALUES
(129, 65, 90, 90, 90, 90, 90, 90, 90, '2017-10-12 12:44:01'),
(130, 67, 86, 123, 123, 123, 123, 123, 123, '2017-10-12 14:32:08'),
(132, 67, 85, 123, 123, 123, 123, 123, 123, '2017-10-12 15:08:23'),
(133, 67, 87, 123, 123, 123, 213, 123, 123, '2017-10-12 15:09:32'),
(134, 67, 123, 123, 123, 123, 123, 123, 123, '2017-10-12 15:12:39'),
(136, 67, 125, 125, 125, 125, 125, 125, 125, '2017-10-12 15:50:52'),
(137, 67, 23, 54, 235, 84, 123, 6, 56, '2017-10-12 15:55:14'),
(139, 67, 123, 123, 3123, 123, 123, 123, 123, '2017-10-12 16:07:30'),
(140, 67, 32, 32, 32, 32, 32, 32, 32, '2017-10-12 16:12:41'),
(141, 70, 1212, 542, 54, 54, 5, 45, 54, '2017-10-13 09:39:47'),
(142, 69, 33, 33, 33, 33, 33, 33, 33, '2017-10-13 10:08:48'),
(143, 76, 432, 432, 678, 678, 678, 678, 678, '2017-10-13 12:30:55'),
(144, 75, 123, 323, 1231, 123, 123123, 123, 123, '2017-10-13 12:37:46'),
(145, 80, 54545, 12, 21, 2, 12, 42, 2, '2017-10-13 14:51:38'),
(146, 65, 25, 58, 23, 12, 56, 12, 21, '2017-10-13 15:06:58'),
(147, 65, 123, 12, 34, 75, 12, 35, 64, '2017-10-13 15:08:13'),
(148, 65, 548, 75, 75, 78, 79, 75, 75, '2017-10-13 15:12:51'),
(149, 65, 1221, 12, 78, 78, 42, 45, 78, '2017-10-13 15:17:06'),
(150, 65, 55, 54, 42, 78, 43, 43, 46, '2017-10-13 15:20:52'),
(151, 65, 25, 94, 54, 78, 43, 65, 97, '2017-10-13 15:23:09'),
(152, 81, 3, 3, 3, 3, 3, 3, 3, '2017-10-16 06:42:15'),
(153, 65, 13, 16, 45, 45, 16, 45, 45, '2017-10-16 07:07:52'),
(154, 65, 35, 65, 11, 78, 45, 77, 98, '2017-10-16 07:10:38'),
(155, 65, 31, 75, 46, 78, 45, 87, 44, '2017-10-16 07:13:28'),
(156, 65, 89, 89, 89, 89, 89, 89, 89, '2017-10-16 07:14:02'),
(157, 82, 17, 17, 10, 17, 17, 10, 17, '2017-10-17 06:50:26'),
(158, 83, 82, 80, 80, 80, 80, 80, 80, '2017-10-24 08:36:10'),
(159, 84, 95, 90, 90, 90, 90, 90, 90, '2017-10-25 08:42:21'),
(160, 85, 76, 33, 33, 33, 33, 33, 33, '2017-10-25 12:09:50'),
(161, 84, 90, 90, 90, 90, 90, 90, 90, '2017-10-26 10:04:46'),
(162, 84, 90, 90, 90, 90, 90, 90, 90, '2017-10-26 10:05:14'),
(163, 84, 88, 90, 90, 90, 90, 90, 90, '2017-10-26 10:17:29'),
(164, 84, 88, 31, 31, 31, 31, 31, 31, '2017-10-26 10:18:23'),
(165, 68, 33, 33, 33, 33, 33, 33, 33, '2017-11-02 10:54:11'),
(166, 67, 12, 12, 12, 12, 12, 12, 12, '2017-11-02 10:54:35'),
(167, 67, 1121, 122, 112, 112, 12, 112, 122, '2017-11-02 10:56:00'),
(168, 67, 90, 12, 12, 12, 21, 12, 21, '2017-11-02 11:04:26'),
(169, 86, 70, 15, 23, 33, 33, 33, 33, '2017-11-02 14:07:01'),
(170, 88, 80, 80, 80, 80, 80, 80, 80, '2017-11-02 14:15:05'),
(171, 65, 91, 90, 90, 90, 90, 90, 90, '2017-11-03 10:46:43'),
(172, 65, 91, 90, 90, 90, 90, 90, 90, '2017-11-03 10:47:05'),
(173, 65, 93, 93, 93, 93, 93, 93, 93, '2017-11-03 10:57:10'),
(174, 65, 93, 93, 93, 93, 93, 93, 93, '2017-11-03 10:58:45'),
(175, 65, 95, 95, 95, 95, 95, 95, 95, '2017-11-03 11:06:22'),
(176, 65, 89, 89, 89, 89, 89, 89, 89, '2017-11-03 11:09:09'),
(177, 65, 93, 93, 93, 93, 93, 93, 93, '2017-11-03 11:15:14'),
(178, 65, 93, 93, 93, 93, 93, 93, 93, '2017-11-03 11:17:21'),
(179, 65, 92, 92, 92, 92, 92, 92, 92, '2017-11-03 11:18:16'),
(180, 65, 92, 98, 92, 92, 92, 92, 92, '2017-11-03 11:20:52'),
(181, 65, 95, 95, 95, 95, 95, 95, 95, '2017-11-03 11:21:39'),
(182, 65, 100, 100, 100, 100, 100, 100, 100, '2017-11-03 11:41:37'),
(183, 65, 92, 92, 92, 92, 92, 92, 92, '2017-11-03 11:43:10'),
(184, 65, 98, 98, 98, 98, 98, 98, 98, '2017-11-03 11:45:09'),
(185, 65, 85, 85, 85, 85, 85, 85, 85, '2017-11-03 13:10:48'),
(186, 65, 90, 90, 90, 90, 90, 90, 90, '2017-11-03 13:14:21'),
(187, 90, 2154, 55, 88, 88, 55, 55, 55, '2017-11-03 15:25:28'),
(188, 91, 75, 75, 75, 75, 75, 75, 75, '2017-11-03 15:39:21'),
(189, 92, 5436, 654, 645, 653, 65, 654, 6543, '2017-11-06 08:24:17'),
(190, 92, 123, 123, 123, 123, 123, 123, 123, '2017-11-06 08:52:28'),
(191, 92, 122, 122, 122, 122, 122, 122, 122, '2017-11-06 08:54:42'),
(192, 93, 100, 100, 70, 90, 90, 10, 90, '2017-11-06 09:31:50'),
(193, 92, 121, 123, 123, 123, 123, 123, 123, '2017-11-06 09:33:45'),
(194, 94, 60, 90, 90, 90, 60, 60, 60, '2017-11-06 09:37:29'),
(195, 95, 90, 100, 70, 100, 100, 90, 100, '2017-11-06 09:40:21'),
(196, 95, 86, 99, 69, 99, 99, 89, 99, '2017-11-06 09:55:58'),
(197, 95, 85, 98, 68, 98, 98, 88, 98, '2017-11-06 09:58:56'),
(198, 95, 87, 97, 67, 97, 97, 87, 97, '2017-11-06 09:59:53'),
(199, 95, 80, 90, 60, 90, 90, 80, 90, '2017-11-06 10:23:17'),
(200, 95, 80, 90, 60, 90, 90, 80, 90, '2017-11-06 10:25:26'),
(201, 95, 80, 90, 60, 90, 90, 80, 90, '2017-11-06 11:23:35'),
(202, 95, 95, 95, 65, 9595, 95, 85, 95, '2017-11-06 13:02:40'),
(203, 95, 93, 93, 63, 93, 93, 83, 93, '2017-11-06 13:03:33'),
(204, 95, 90, 90, 60, 90, 90, 80, 90, '2017-11-06 13:04:24'),
(205, 95, 70, 75, 60, 90, 80, 40, 95, '2017-11-06 13:05:27'),
(206, 95, 80, 80, 50, 80, 80, 70, 80, '2017-11-06 13:06:19'),
(207, 65, 91, 12, 42, 48, 12, 53, 54, '2017-11-06 13:13:11'),
(208, 96, 120, 140, 80, 160, 80, 40, 120, '2017-11-06 14:03:41'),
(209, 99, 12, 48, 57, 78, 48, 48, 78, '2017-11-06 14:28:43'),
(210, 100, 83, 123, 123, 123, 123, 123, 123, '2017-11-06 14:52:44'),
(211, 100, 84, 84, 84, 484, 84, 8, 84, '2017-11-07 08:31:18'),
(212, 101, 78, 78, 78, 78, 78, 78, 78, '2017-11-07 10:20:53'),
(213, 102, 23, 23, 23, 23, 23, 23, 2, '2017-11-07 11:03:05'),
(214, 103, 85, 100, 100, 100, 100, 100, 100, '2017-11-08 10:20:26'),
(215, 104, 80, 90, 90, 90, 90, 90, 90, '2017-11-08 10:30:21'),
(216, 95, 75, 75, 45, 75, 75, 65, 75, '2017-11-08 10:36:14'),
(217, 96, 110, 100, 70, 100, 100, 90, 100, '2017-11-09 13:57:17'),
(218, 110, 52, 84, 8484, 54, 48, 84, 48, '2017-11-10 10:08:07'),
(219, 118, 88272, 437, 55, 88, 553, 55, 88, '2017-11-10 10:39:30'),
(220, 120, 54, 0, 0, 0, 0, 0, 0, '2017-11-10 10:49:33'),
(221, 120, 56, 0, 0, 0, 0, 0, 0, '2017-11-10 11:09:17'),
(222, 120, 55, 0, 0, 0, 0, 0, 0, '2017-11-10 11:10:06'),
(223, 120, 55, 55, 0, 0, 0, 0, 0, '2017-11-10 11:41:39'),
(224, 120, 70, 0, 0, 0, 0, 36, 0, '2017-11-10 11:50:45'),
(225, 120, 66, 0, 0, 0, 0, 0, 0, '2017-11-10 12:02:50'),
(226, 84, 90, 0, 0, 0, 0, 0, 0, '2017-11-10 13:01:14'),
(227, 65, 90, 0, 0, 0, 0, 0, 0, '2017-11-13 13:53:42'),
(228, 96, 106, 95, 80, 95, 95, 60, 95, '2017-11-14 09:39:08'),
(229, 65, 90, 0, 0, 0, 0, 0, 0, '2017-11-14 13:33:35'),
(230, 65, 90, 0, 0, 0, 0, 0, 0, '2017-11-21 12:31:18'),
(231, 149, 88, 55, 0, 0, 0, 0, 0, '2017-11-21 13:22:10'),
(232, 150, 1111, 555, 0, 0, 222, 0, 0, '2017-11-21 13:30:46'),
(233, 151, 44, 34, 54, 57, 65, 32, 43, '2017-11-21 13:36:25'),
(234, 152, 88, 23, 0, 0, 0, 0, 0, '2017-11-21 14:19:14'),
(235, 153, 4, 20, 0, 0, 0, 0, 0, '2017-11-21 14:36:43'),
(236, 154, 4, 0, 0, 0, 0, 0, 0, '2017-11-21 14:50:33'),
(237, 155, 5, 0, 0, 0, 0, 0, 0, '2017-11-21 14:53:26'),
(238, 156, 2, 4, 0, 0, 0, 0, 0, '2017-11-21 15:01:26'),
(239, 157, 17.7, 0, 0, 0, 0, 0, 0, '2017-11-21 15:05:49'),
(240, 157, 17.7, 0, 0, 0, 0, 0, 0, '2017-11-21 15:07:42'),
(241, 158, 2.2, 1.1, 2.2, 3.3, 4.4, 5.5, 6.6, '2017-11-22 11:17:33'),
(242, 159, 96, 2.2, 4.4, 6.6, 3.3, 5.5, 7.7, '2017-11-22 11:35:48'),
(243, 160, 96, 22, 44, 66, 33, 55, 77, '2017-11-22 11:43:39'),
(244, 161, 88, 8.11, 4.1, 0, 0, 0, 0, '2017-11-22 12:18:40'),
(245, 162, 205, 0, 0, 0, 0, 0, 0, '2017-11-22 12:43:09'),
(246, 163, 205, 0, 0, 0, 0, 0, 0, '2017-11-22 12:53:01'),
(247, 164, 205, 0, 0, 0, 0, 0, 0, '2017-11-22 12:55:49'),
(248, 165, 205, 0, 0, 0, 0, 0, 0, '2017-11-22 13:32:53'),
(249, 166, 208, 0, 0, 0, 0, 0, 0, '2017-11-22 13:39:00'),
(250, 167, 0.929865, 0, 0, 0, 0, 0, 0, '2017-11-22 14:29:03'),
(251, 168, 92.9865, 0, 0, 0, 0, 0, 0, '2017-11-22 14:32:31'),
(252, 169, 92.9865, 8.11, 0, 0, 0, 0, 0, '2017-11-22 14:46:48'),
(253, 172, 95.2545, 6.2, 0, 0, 0, 0, 0, '2017-11-22 15:37:04'),
(254, 173, 111.13, 5.2, 0, 0, 0, 0, 0, '2017-11-22 16:09:35'),
(255, 174, 99.7904, 4.1, 0, 0, 0, 0, 0, '2017-11-22 16:17:27'),
(256, 170, 99.7904, 3.4, 0, 0, 0, 0, 0, '2017-11-23 08:13:42'),
(257, 175, 92.9865, 137.16, 131.064, 164.592, 167.64, 64.008, 97.536, '2017-11-23 08:31:53'),
(258, 176, 24.9476, 60.96, 121.92, 91.44, 103.632, 12.192, 0, '2017-11-24 11:29:57'),
(259, 65, 92, 123, 321, 147, 258, 369, 963, '2017-11-24 11:32:12'),
(260, 178, 77, 213, 213, 312, 321, 123, 654, '2017-11-24 11:52:33'),
(261, 180, 213, 312, 312, 312, 321, 312, 312, '2017-11-24 13:21:54'),
(262, 180, 88, 88, 88, 88, 88, 88, 88, '2017-11-25 16:45:40'),
(263, 182, 24.9476, 0, 0, 0, 0, 0, 0, '2017-11-27 10:13:16'),
(264, 65, 41.277, 0, 0, 0, 0, 0, 0, '2017-11-27 11:10:24'),
(265, 185, 38.1018, 158.496, 12.192, 12.192, 256.032, 256.032, 247.193, '2017-11-27 15:09:38'),
(266, 67, 56.2455, 42.672, 256.032, 256.032, 256.032, 256.032, 256.032, '2017-11-28 11:34:42'),
(267, 178, 88, 88, 88, 88, 88, 88, 88, '2017-11-28 15:36:12'),
(268, 65, 41.277, 277.368, 277.368, 277.368, 277.368, 277.368, 277.368, '2017-11-28 15:38:33'),
(269, 67, 9.97904, 30.48, 30.48, 30.48, 30.48, 30.48, 30.48, '2017-11-28 15:39:23'),
(270, 67, 101.151, 30.48, 30.48, 30.48, 30.48, 30.48, 30.48, '2017-11-28 15:39:38'),
(271, 67, 100.698, 0, 0, 0, 0, 0, 0, '2017-11-28 15:41:14'),
(272, 178, 43.5449, 0, 0, 0, 0, 0, 0, '2017-11-28 15:45:20'),
(273, 178, 44.9057, 0, 0, 0, 0, 0, 0, '2017-11-28 15:51:22'),
(274, 186, 89.8114, 73.152, 73.152, 73.152, 36.576, 137.16, 149.352, '2017-11-29 09:10:51'),
(275, 96, 92, 85, 70, 85, 85, 50, 85, '2017-11-29 12:08:22'),
(276, 65, 200.62, 0, 0, 0, 0, 0, 0, '2017-11-29 12:48:10'),
(277, 65, 91, 0, 0, 0, 0, 0, 0, '2017-11-29 12:55:47'),
(278, 65, 89.8114, 0, 0, 0, 0, 0, 0, '2017-11-29 12:56:22'),
(279, 187, 91, 0, 0, 0, 0, 0, 0, '2017-11-30 08:07:59'),
(280, 188, 78, 0, 0, 0, 0, 0, 0, '2017-11-30 08:30:12'),
(281, 188, 98, 98, 98, 98, 98, 98, 98, '2017-11-30 09:05:55'),
(282, 188, 75, 75, 75, 75, 75, 75, 75, '2017-11-30 09:06:41'),
(283, 188, 80, 80, 80, 80, 80, 80, 80, '2017-11-30 09:11:44'),
(284, 188, 82, 82, 82, 82, 82, 82, 82, '2017-11-30 09:12:52'),
(285, 188, 86, 86, 86, 86, 86, 86, 86, '2017-11-30 09:21:14'),
(286, 189, 85, 75, 75, 75, 75, 75, 75, '2017-11-30 09:26:17'),
(287, 189, 80, 80, 80, 80, 80, 80, 80, '2017-11-30 09:27:24'),
(288, 189, 90, 90, 90, 90, 90, 90, 90, '2017-11-30 09:29:27'),
(289, 189, 55, 0, 0, 0, 0, 0, 0, '2017-11-30 09:31:27'),
(290, 189, 88, 0, 0, 0, 0, 0, 0, '2017-11-30 09:48:22'),
(291, 189, 74, 0, 0, 0, 0, 0, 0, '2017-11-30 09:50:10'),
(292, 189, 79, 0, 0, 0, 0, 0, 0, '2017-11-30 09:52:36'),
(293, 189, 80, 80, 80, 0, 80, 80, 0, '2017-11-30 09:54:29'),
(294, 65, 41.277, 0, 0, 0, 0, 0, 0, '2017-11-30 16:16:44');

-- --------------------------------------------------------

--
-- Структура таблицы `profile_photo`
--

CREATE TABLE IF NOT EXISTS `profile_photo` (
`id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile_photo`
--

INSERT INTO `profile_photo` (`id`, `profile_id`, `user_id`, `photo`, `created_at`) VALUES
(7, 134, 67, 'result_photos/59df866b9c942.jpg', '2017-10-12 15:12:43'),
(8, 134, 67, 'result_photos/59df866b9d99b.jpg', '2017-10-12 15:12:43'),
(9, 134, 67, 'result_photos/59df866b9e33d.jpg', '2017-10-12 15:12:43'),
(11, 136, 67, 'result_photos/59df8f613646e.jpg', '2017-10-12 15:50:57'),
(12, 136, 67, 'result_photos/59df8f61377bc.jpg', '2017-10-12 15:50:57'),
(13, 137, 67, 'result_photos/59df9069a209c.jpg', '2017-10-12 15:55:21'),
(14, 137, 67, 'result_photos/59df9069a3420.jpg', '2017-10-12 15:55:21'),
(15, 137, 67, 'result_photos/59df9069a3c4f.jpg', '2017-10-12 15:55:21'),
(16, 137, 67, 'result_photos/59df9069a4801.jpg', '2017-10-12 15:55:21'),
(20, 139, 67, 'result_photos/59df934ba0e24.jpg', '2017-10-12 16:07:39'),
(21, 139, 67, 'result_photos/59df934ba2358.jpg', '2017-10-12 16:07:39'),
(22, 139, 67, 'result_photos/59df934ba2d20.jpg', '2017-10-12 16:07:39'),
(23, 139, 67, 'result_photos/59df934ba390b.jpg', '2017-10-12 16:07:39'),
(24, 139, 67, 'result_photos/59df934ba3f58.jpg', '2017-10-12 16:07:39'),
(25, 140, 67, 'result_photos/59df947ceff8a.jpg', '2017-10-12 16:12:44'),
(26, 140, 67, 'result_photos/59df947cf152f.jpg', '2017-10-12 16:12:44'),
(27, 146, 65, 'result_photos/59e0d696229ec.jpg', '2017-10-13 15:07:02'),
(28, 146, 65, 'result_photos/59e0d69624264.jpg', '2017-10-13 15:07:02'),
(29, 147, 65, 'result_photos/59e0d6dda90f5.jpg', '2017-10-13 15:08:13'),
(30, 147, 65, 'result_photos/59e0d6ddaa1af.jpg', '2017-10-13 15:08:13'),
(31, 148, 65, 'result_photos/59e0d7f5ce981.jpg', '2017-10-13 15:12:53'),
(32, 148, 65, 'result_photos/59e0d7f5cfb29.jpg', '2017-10-13 15:12:53'),
(33, 149, 65, 'result_photos/59e0d8f5118b6.jpg', '2017-10-13 15:17:09'),
(34, 149, 65, 'result_photos/59e0d8f5145cc.jpg', '2017-10-13 15:17:09'),
(35, 150, 65, 'result_photos/59e0d9d4e0a8d.jpg', '2017-10-13 15:20:52'),
(36, 150, 65, 'result_photos/59e0d9d4e1cd8.jpg', '2017-10-13 15:20:52'),
(37, 151, 65, 'result_photos/59e0da62d77c6.jpg', '2017-10-13 15:23:14'),
(38, 151, 65, 'result_photos/59e0da62d8d40.jpg', '2017-10-13 15:23:14'),
(39, 153, 65, 'result_photos/59e45ac8c4bd3.jpg', '2017-10-16 07:07:52'),
(40, 153, 65, 'result_photos/59e45ac8c6126.jpg', '2017-10-16 07:07:52'),
(41, 154, 65, 'result_photos/59e45b712d37f.jpg', '2017-10-16 07:10:41'),
(42, 154, 65, 'result_photos/59e45b712e88f.jpg', '2017-10-16 07:10:41'),
(43, 154, 65, 'result_photos/59e45b712ee98.jpg', '2017-10-16 07:10:41'),
(44, 155, 65, 'result_photos/59e45c1a11f95.jpg', '2017-10-16 07:13:30'),
(45, 155, 65, 'result_photos/59e45c1a138ba.jpg', '2017-10-16 07:13:30'),
(46, 156, 65, 'result_photos/59e45c3bcc7df.jpg', '2017-10-16 07:14:03'),
(47, 156, 65, 'result_photos/59e45c3bcda59.jpg', '2017-10-16 07:14:03'),
(48, 162, 84, 'result_photos/59f1b35ae0ce1.jpg', '2017-10-26 10:05:14'),
(49, 162, 84, 'result_photos/59f1b35ae2046.jpg', '2017-10-26 10:05:14'),
(50, 163, 84, 'result_photos/59f1b639da132.jpg', '2017-10-26 10:17:29'),
(51, 163, 84, 'result_photos/59f1b639db46c.jpg', '2017-10-26 10:17:29'),
(52, 164, 84, 'result_photos/59f1b6729f491.jpg', '2017-10-26 10:18:26'),
(53, 164, 84, 'result_photos/59f1b672a073e.jpg', '2017-10-26 10:18:26'),
(54, 172, 65, 'result_photos/59fc492e607d6.jpg', '2017-11-03 10:47:10'),
(55, 172, 65, 'result_photos/59fc492e61d60.jpg', '2017-11-03 10:47:10'),
(56, 181, 65, 'result_photos/59fc51452d6af.jpg', '2017-11-03 11:21:41'),
(57, 193, 92, 'result_photos/5a002cbb64607.jpg', '2017-11-06 09:34:51'),
(58, 193, 92, 'result_photos/5a002cbb65970.jpg', '2017-11-06 09:34:51'),
(59, 196, 95, 'result_photos/5a0031afc7c22.jpg', '2017-11-06 09:55:59'),
(60, 196, 95, 'result_photos/5a0031afc9597.jpg', '2017-11-06 09:55:59'),
(61, 196, 95, 'result_photos/5a0031afca05d.jpg', '2017-11-06 09:55:59'),
(62, 196, 95, 'result_photos/5a0031afca86b.jpg', '2017-11-06 09:55:59'),
(63, 198, 95, 'result_photos/5a00329a1dbc4.jpg', '2017-11-06 09:59:54'),
(64, 199, 95, 'result_photos/5a00381693475.jpg', '2017-11-06 10:23:18'),
(65, 199, 95, 'result_photos/5a0038169499d.jpg', '2017-11-06 10:23:18'),
(66, 217, 96, 'result_photos/5a045ebe48f2c.jpg', '2017-11-09 13:57:18'),
(67, 222, 120, 'result_photos/5a058910a1e9c.jpg', '2017-11-10 11:10:08'),
(68, 228, 96, 'result_photos/5a0ab9c072903.jpg', '2017-11-14 09:39:12'),
(69, 228, 96, 'result_photos/5a0ab9c073fd9.jpg', '2017-11-14 09:39:12'),
(70, 228, 96, 'result_photos/5a0ab9c0744ee.jpg', '2017-11-14 09:39:12'),
(71, 228, 96, 'result_photos/5a0ab9c074d05.jpg', '2017-11-14 09:39:12'),
(72, 228, 96, 'result_photos/5a0ab9c07520a.jpg', '2017-11-14 09:39:12'),
(73, 228, 96, 'result_photos/5a0ab9c0759d4.jpg', '2017-11-14 09:39:12'),
(74, 228, 96, 'result_photos/5a0ab9c075f68.jpg', '2017-11-14 09:39:12'),
(75, 228, 96, 'result_photos/5a0ab9c0764a9.jpg', '2017-11-14 09:39:12'),
(76, 228, 96, 'result_photos/5a0ab9c0772f2.jpg', '2017-11-14 09:39:12'),
(77, 228, 96, 'result_photos/5a0ab9c0782a8.jpg', '2017-11-14 09:39:12'),
(78, 262, 180, 'result_photos/5a199e350adee.jpg', '2017-11-25 16:45:41'),
(79, 262, 180, 'result_photos/5a199e350cfc2.jpg', '2017-11-25 16:45:41'),
(80, 264, 65, 'result_photos/5a1bf2a1a7001.jpg', '2017-11-27 11:10:25'),
(81, 266, 67, 'result_photos/5a1d49d53d76e.jpg', '2017-11-28 11:34:45'),
(82, 266, 67, 'result_photos/5a1d49d53ed81.jpg', '2017-11-28 11:34:45'),
(83, 268, 65, 'result_photos/5a1d82f9f1bce.jpg', '2017-11-28 15:38:33'),
(84, 268, 65, 'result_photos/5a1d82f9f34ab.jpg', '2017-11-28 15:38:33'),
(85, 268, 65, 'result_photos/5a1d82f9f3d54.jpg', '2017-11-28 15:38:33'),
(86, 271, 67, 'result_photos/5a1d839cdb0a6.jpg', '2017-11-28 15:41:16'),
(87, 271, 67, 'result_photos/5a1d839cdc554.jpg', '2017-11-28 15:41:16'),
(88, 271, 67, 'result_photos/5a1d839cdd022.jpg', '2017-11-28 15:41:16'),
(89, 272, 178, 'result_photos/5a1d849272266.jpg', '2017-11-28 15:45:22'),
(90, 272, 178, 'result_photos/5a1d849273b65.jpg', '2017-11-28 15:45:22'),
(91, 281, 188, 'result_photos/5a1fc9f44994f.jpg', '2017-11-30 09:05:56'),
(92, 283, 188, 'result_photos/5a1fcb506c4e0.jpg', '2017-11-30 09:11:44'),
(93, 284, 188, 'result_photos/5a1fcb948834c.jpg', '2017-11-30 09:12:52'),
(94, 285, 188, 'result_photos/5a1fcd8b1df63.jpg', '2017-11-30 09:21:15'),
(95, 288, 189, 'result_photos/5a1fcf77d96d5.jpg', '2017-11-30 09:29:27'),
(96, 289, 189, 'result_photos/5a1fcff023936.jpg', '2017-11-30 09:31:28'),
(97, 290, 189, 'result_photos/5a1fd3e67f470.jpg', '2017-11-30 09:48:22'),
(98, 291, 189, 'result_photos/5a1fd464ccf97.jpg', '2017-11-30 09:50:28'),
(99, 292, 189, 'result_photos/5a1fd4e50af6b.jpg', '2017-11-30 09:52:37'),
(100, 293, 189, 'result_photos/5a1fd5568f17e.jpg', '2017-11-30 09:54:30'),
(101, 293, 189, 'result_photos/5a1fd5569123b.jpg', '2017-11-30 09:54:30'),
(102, 293, 189, 'result_photos/5a1fd55692348.jpg', '2017-11-30 09:54:30');

-- --------------------------------------------------------

--
-- Структура таблицы `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `reiterate` varchar(100) CHARACTER SET utf8 NOT NULL,
  `push` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reminder`
--

INSERT INTO `reminder` (`id`, `user_id`, `message`, `time`, `reiterate`, `push`, `created_at`) VALUES
(3, 95, 'You are need eating now!', '12:55', 'Everyday', 0, '2017-11-06 10:53:59'),
(6, 95, 'Next reminder', '12:58', 'Everyday', 0, '2017-11-06 10:56:40'),
(17, 99, 'него', '10:17', '2', 1, '2017-11-07 08:16:26'),
(19, 65, 'shah', '11:32', '3', 1, '2017-11-08 09:32:02'),
(20, 65, 'shah', '11:33', '3', 1, '2017-11-08 09:32:18'),
(22, 65, 'vvvv', '11:35', '3', 1, '2017-11-08 09:34:17'),
(23, 189, 'nNnazk', '12:10', '2', 1, '2017-11-30 10:11:19'),
(24, 189, 'Gaga', '12:13', 'Never', 1, '2017-11-30 10:13:38'),
(25, 189, 'Gaga', '12:13', 'Everyday', 1, '2017-11-30 10:13:55');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `desired_weight` float DEFAULT NULL,
  `lifestyle` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `system_measures` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `avatar`, `background_image`, `auth_key`, `password_hash`, `password_reset_token`, `birthday`, `country`, `gender`, `height`, `desired_weight`, `lifestyle`, `target`, `system_measures`, `email`, `status`, `created_at`) VALUES
(65, 'Data', 'avatars/5a202f7283d8c.jpg', 'background_images/5a202f7283d4a.jpg', '51CWDWWx5xUf5EtTKHG1qKI7iEZh0sXZ', '$2y$13$wfXmro3Z14ecuro7O5/DLOjCdKzy1JVqlsQ6qKO98UvzPfRRrWdzm', '1uwFtG7zbjUcMlF0TAkB4M8ly953Akbi_1511964620', '3-10-1994', 'Ukraine', 1, 178, 100, 2, 4, 1, 'data.evrolab@gmail.com', 0, '2017-10-12 12:42:58'),
(67, 'Roma Ganzha', 'avatars/5a1fd5c661fca.jpg', 'background_images/5a1fd5c661f82.jpg', 'GSPAtpVrJugPYbLIP_ky1MfRIEIeSpD3', '$2y$13$IDg6uunrbWywM9w9H7Qa3e2UNTxuVofmFjBupeZbHqJshASw4r4Zm', 'GSqqYkTBQO0034uvhDCbaMQHW1viQ4aG_1507880186', '3-10-1994', 'Ukraine', 1, 194, 95, 1, 1, 1, 'roma.g.evrolab@gmail.com', 0, '2017-10-12 14:31:22'),
(68, 'test', 'Not set', NULL, 'W9TFnJ7cngW1cu8Lommg0wEOFerhons7', '$2y$13$ZiJjiBA0yWt7o1XNlAvDrOeInuHEPHTOEZz9q60afJJ1mLrcRL3DG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'test@test.test', 0, '2017-10-13 09:26:40'),
(69, 'test test', 'avatars/59e090b0ecbce.jpg', 'background_images/59e090b0ecb88.jpg', 'aQmVIAWvvgu38esiwbqjF_OPFdXfwb_Z', '$2y$13$Zn69SpgPc5KWQxMmPcys3.sP8EUQ7YUcHmmGyh7GP9i.S6KqYLsR6', NULL, '15-10-2017', 'Test', 1, 33, 33, 1, 1, 0, 'test@test-test.test', 0, '2017-10-13 09:34:08'),
(70, 'art', 'avatars/59e08a10de361.jpg', 'background_images/59e08a10de31b.jpg', '2tZMXAKZ2vRY3MThVk9deam4Mn8LROPC', '$2y$13$Yxr9zFn/p8lczQwE0iZkp.Penk4colJQHLs/guNoQ6IFNWBeZTZXa', NULL, '18-10-2017', 'Ahaha', 1, 1215, 151, 1, 1, 0, 'art@usmai.is', 0, '2017-10-13 09:38:55'),
(71, 'pop', 'Not set', NULL, 'e7cPbCz-A2GEXYiw_u6IMHyK74Bgp8ng', '$2y$13$DiXVwtKjWFD4T4H.oZpaBOvTNa2q1jGX2FSPmIMEHAIF7q/iK3hH6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'pop@pop.pop', 0, '2017-10-13 09:41:16'),
(72, 'pop2', 'Not set', NULL, '_dP5JV157xwJKkjWbEc4A7QyJN6Hvp-p', '$2y$13$5h9e2BrZQP5C39s.swVy2u2Gl40pza3e1okHFA4NV6yPSJlBE8tjC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'pop@rpop.pop', 0, '2017-10-13 09:42:46'),
(73, 'iPhone X', 'Not set', NULL, '19ZosHyQphwfKKeH26_x15CeI_Ithsr4', '$2y$13$aDqVHMt2hsmq6a3rsoyQeuhxUyACm4qblzVCisx0P3FKUCqNg9MyC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'iPhone@ten.com', 0, '2017-10-13 11:52:55'),
(74, 'sign', 'Not set', NULL, 'Vnm-6LYd6MdgVfCHP6ngE_KgHyS8Loq6', '$2y$13$3DjVk/X1DWHcBGO4yJFXN.PvSSEFxOhR0x3LnLFGApyvOjIzghYju', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'sign@sign.sign', 0, '2017-10-13 11:57:50'),
(75, 'asdsadq', 'avatars/59e0b39ae7c65.jpg', 'Not set', 'rVLv4jp9PmbxHhNrFVBtoabKWwc0_98U', '$2y$13$P8hyHDAcSQWi8fcegTs0du1wskVoaQmOf4i5jWFCCNBCwr5MCfR36', NULL, '12-10-2017', 'Try', 1, 123, 12312, 1, 1, 0, 'sweet@asdl.xl', 0, '2017-10-13 12:01:45'),
(76, 'tyuiojn', 'avatars/59e0b207cc8d2.jpg', 'background_images/59e0b207cc88b.jpg', 'tN1cN9G6Vel3SnVaTsAyxSH-EPfF1sOK', '$2y$13$8lCU84LfHR901W/FcHQ8WuDmjqSnfkWodLGTwr8dFTh0KWHbfoyje', NULL, '4-10-2017', 'Gods', 1, 432, 43, 1, 1, 0, 'hjuiop@jiop.ds', 0, '2017-10-13 12:30:31'),
(77, 'sd', 'Not set', NULL, 'vcMl-NfLbgrVdHtGbaAmy4dJ9PHnaCMv', '$2y$13$/E1k48flVkpHLTNAN.WdeeeHRIof/ZlxL9564fwWCSAfX1PtWttjC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'soqwdqd@asdas.cl', 0, '2017-10-13 12:38:16'),
(78, 'sdas', 'Not set', NULL, 'Xv-eRcTFg49vTQv4KWQwPZUCGMQR7reg', '$2y$13$MaXeEFY3bDsXkZaZO8KEc.ccnoxnbotbTa3JADfoFmc4rqiaCmHVi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'asdasdasd@ddf.cl', 0, '2017-10-13 12:50:09'),
(79, 'hi', 'Not set', NULL, 'COpjE15n6FSY9slntrRMwZqhbxRqQbVz', '$2y$13$2OQUCCRe1YizgvOQkWv41uxdvtSdzy.wTQqv/R56zkuMH5zVOWWZy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 'hi@hi.hi', 0, '2017-10-13 12:55:41'),
(80, 'ahaha', 'avatars/59e0d2fa00e0c.jpg', 'Not set', 'fVMvOEn_udAK0F0EtmGvf5TsabfAO7pb', '$2y$13$u06t4S2.dISITi1qg73X9.D1HIM44j27GGAZKx3B.UcpKel0I.Ak.', NULL, '4545', 'Haha', 1, 455, 554, 1, 1, 0, 'shh@sj.isi', 0, '2017-10-13 14:46:43'),
(81, 'iPhone 7 Plus', 'avatars/59e454c710f31.jpg', 'background_images/59e454c710eec.jpg', 'J8DEssG50CLAFX1MJkD3v27t3yA-M_lH', '$2y$13$s3LazvQSZZ/rOhanVLGxueqs7RXN1ys2//KFCVGhJKLa9mCv//1WW', NULL, '16-09-2016', 'USA', 1, 3, 3, 1, 1, 0, 'iphone@seven.com', 0, '2017-10-16 06:39:39'),
(82, 'Tuesday ', 'avatars/59e5a832ca548.jpg', 'Not set', 'bk--m2EIXW-ChwgC2nxyxiT7FqRYj4Ju', '$2y$13$MZRwtykxLpskW.23/3uOeuMl7jfxytjxRvwPwWv.iB3tqATayNsnm', NULL, '17-10-2017', 'Tuesday', 1, 10, 17, 1, 1, 0, 'tuesday@tuesday.com', 0, '2017-10-17 06:49:12'),
(83, 'Roma', 'avatars/59eefb7aafa10.jpg', 'background_images/59eefb7aaf9cd.jpg', 'XAcdC9S-f2iajcxvPGBzq2WRss9xGut1', '$2y$13$askbmrU0tCueWC.wS1tc9OU99.qty2K95aWznFx1ZA5QGQbTJ5DtC', NULL, '3-10-1994', 'Ukraine', 1, 193, 102, 1, 1, 0, 'roma@roma.com', 0, '2017-10-24 08:32:15'),
(84, 'anna designer', 'avatars/5a099ee9ee762.jpg', 'background_images/5a099ee9ee71c.jpg', 'lytNC4VOcByph3o5LMtDUCBlhvLYYdSz', '$2y$13$rTmp/Mau7jqqfKdGKK8a5eKVbbFnWdZmynydPz/int.F.Fc601ZLW', NULL, '6-06-92', 'HihiLand', 0, 170, 100, 0, 0, 0, 'anna@designer.com', 0, '2017-10-25 08:35:55'),
(85, 'iPhone X', 'avatars/59f07f0e5d3cb.jpg', 'Not set', 'VrJzjyPA3217CjhpmH1B_5b9ylqe-byv', '$2y$13$1guaFnS5VJ34QJ5SiemFg.VOrpqIQbZhOzVVSZIrISaztv3ldYE2O', NULL, '11-11-54', 'USA', 1, 170, 134, 1, 1, 0, 'iphone@x.com', 0, '2017-10-25 12:08:42'),
(86, 'name name', 'avatars/59fb268513b3b.jpg', 'background_images/59fb268513ae4.jpg', '1JURKPf6490GoOaS6fFwFTqrAip2zknH', '$2y$13$EKqVFGSV04Q1XIyhB8X.9.w/FjOfKbsAeYA7wRswm5yRZDNhDOWFS', NULL, '17-10-1995', 'Ukraine', 1, 174, 85, 2, 3, 0, 'name@name.com', 0, '2017-11-02 07:55:15'),
(87, 'pop', 'Not set', NULL, 'vFI2BBpcjoqiAoxFAswp4vC6cyPNXYdI', '$2y$13$/hn4T40F22Ax/d2QCJWTIOlbvRecyEyREM/46QWp7uEYDioig.Ru6', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'pop@pop.com', 0, '2017-11-02 11:56:22'),
(88, 'papa', 'avatars/59fb28696b61f.jpg', 'Not set', '0CrGXW8AdDGEKYrzK6rSXpEzGHIYEZk2', '$2y$13$UmN9cd4xfBgLnxM6b/vjTOEMBrxVXyr1U4cm2SJJ.qbqyI/qsN4Pa', NULL, '2-11-2017', 'Added', 1, 80, 80, 1, 1, 0, 'papa@papa.com', 0, '2017-11-02 14:08:32'),
(89, 'new user', 'Not set', NULL, '3ugm03urUzmhhSc8iucziU__JDDK-K9V', '$2y$13$7Ojmox.ZB1En9HZxwstHruGLjPmql.3EzX9ds9Egk33AwBc5lPmUi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'newuser@newuser.com', 0, '2017-11-03 13:09:00'),
(90, 'blavla', 'avatars/59fc8a685f315.jpg', 'Not set', '3WS3X7_WZ129GGTuopselkq4SjFN2fDz', '$2y$13$brQ52j8NrqYk6D0qIxLPtuxGgPgxWq38IZqHD6yBrxyVw8kYVHqii', NULL, '8-11-2017', 'True', 1, 484545, 4545, 1, 1, 0, 'blavla@popka.com', 0, '2017-11-03 15:24:37'),
(91, 'tata', 'avatars/59fc8da95d264.jpg', 'Not set', 'pbG3EoYF0fQhUPWAed1V_5Gcw7ioy4tn', '$2y$13$zZ8BCyBsMVI3BjCjvAjsFeKEQQHW2JaQAdKx8SjiK.toZnyquGX1S', NULL, '15-08-1999', 'Ukulele', 1, 175, 80, 1, 3, 0, 'tata@tata.com', 0, '2017-11-03 15:38:07'),
(92, 'Neo', 'avatars/5a0022b0dde2d.jpg', 'background_images/5a0022b0dddeb.jpg', '-J9KibFioE8EQX8MQe55MgnPjXCsBhfV', '$2y$13$IshDMPSKmyXdAWpsX8wpNOACJYa.7A2/DFlUqEPg.cy96fVbpwPKu', 'MTpdw5kKMfdux5G5YFYowMmBZtwqAK_Z_1509957070', '1-11-2017', 'Outfit', 1, 542, 434, 0, 0, 0, 'neo@matrix.com', 0, '2017-11-06 07:58:20'),
(93, 'FirstTest', 'avatars/5a002c06e5bb7.jpg', 'Not set', 'hvBAo8VUfBZ0Auey07_92Oobt1mVQfdn', '$2y$13$xYvTtH12O0cSpTr8tWkLjOcyxcRFQR8KjEA8uiEPbJ5gQjhvKjLai', NULL, '28-10-1981', 'USA', 0, 10, 50, 5, 5, 0, 'vpultest@gmail.om', 0, '2017-11-06 09:06:29'),
(94, 'Sierra ', 'avatars/5a002d59e8d2d.jpg', 'Not set', 'wH3LOlUNAb3Ly9TGblgjV-sS25mlQrnq', '$2y$13$IHwFMHuhxkQ04AIoYdStIuDGBwgdbGZkUGiOEAiCyaulPI3TjS1Te', NULL, '8-12-1991', 'Ukraine', 0, 170, 55, 2, 2, 0, 'sierra@sierra.com', 0, '2017-11-06 09:36:14'),
(95, 'TwoTwo', 'avatars/5a02dd95910ac.jpg', 'background_images/5a02dd9591066.jpg', 'FFwGrb5k7wmjEu0rjumXxL4VHf8_DgU3', '$2y$13$RYWT7DWk3zXMRbOWaJUczO2BzOU1BFBzMiBgRvcRnjwGLKf4JBo22', 'veLCfWvZNQrrWSAuHCVEZeDo0BHf4E_A_1510137009', '7-02-1984', 'USA', 0, 170, 85, 0, 0, 0, 'kpasnaya@bigmir.ne', 0, '2017-11-06 09:37:55'),
(96, 'Vpul Pul', 'avatars/5a1ea2999f69e.jpg', 'background_images/5a1ea2999f64f.jpg', 'Sv27nNxhhIeX80mZPdkMQwi5t4rr2909', '$2y$13$01NfRqGlsz/lOtz7k6CTS.O.ngXPduPV9Wzy94lEcuSRkor90WkAC', NULL, '20-12-1990', 'UK', 1, 180, 80, 0, 1, 1, 'vpultest@gmail.com', 0, '2017-11-06 13:38:47'),
(97, 'mamasita', 'Not set', NULL, '8Myta2LE3vVk18rYxTAxoRhue2N2yqza', '$2y$13$t1tU92olNCp/4Ygxm3vGf.Tkda38iv/KmmqsZarzD3YDp7VoLCW0m', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'mama@sita.com', 0, '2017-11-06 14:19:11'),
(98, 'one more', 'Not set', NULL, 'BdQ8ZfKs2spkp5b41fqGkStjDvSgUffu', '$2y$13$FHLe1s2YXz73geKlHEeh.OqnMM98E3Ke9QQj53joASxrSf6kUhByS', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'one@more.com', 0, '2017-11-06 14:22:11'),
(99, 'slalom', 'avatars/5a00719b9bb22.jpg', 'Not set', 'cwvaOVQ7VIE0oh8bJlOCnWWCtPVOpZKb', '$2y$13$iYSgVaXvQWGcIP1Lr/mHCu0LBWDe30Oyw6HDsYS6wLnqI/noQRCKy', NULL, '6-11-2017', 'Shahs', 1, 45, 45, 1, 1, 0, 'shhssj@sksk.com', 0, '2017-11-06 14:28:11'),
(100, 'Roman Ganesha', 'avatars/5a00773c3d98c.jpg', 'Not set', '_iBt5Jp5S6K7MQ4xSTqBUuUt7YalluJC', '$2y$13$OZl30tvIhfmtKV04SYblJ.z6dVcvCNZ3GAwtBVVvQUTRg1LF5TqUG', NULL, '3-10-1994', 'Ukraine', 1, 193, 78, 1, 1, 0, 'gangaroman@gmail.com', 0, '2017-11-06 14:50:18'),
(101, 'pupsik', 'avatars/5a018904f30cf.jpg', 'Not set', 'uBE9qqvhcLRwnwq35Nvkdiz0fcJiSa7x', '$2y$13$Hj/e5/.d1RmrKFaqUotMfuOPh0Fsp9o53HuIhJABTwbUTOAc9gD7e', NULL, '8-01-1990', 'Ukraine', 1, 180, 90, 2, 4, 0, 'pupsik@pupsik.com', 0, '2017-11-07 10:17:43'),
(102, 'cat', 'avatars/5a0192e972d1b.jpg', 'Not set', 'SgqS3M2ARVRJgFhjqCls0_CPfYHupgJm', '$2y$13$4x0KmhAUMDncopBXBmRtSu31nhor9WVNLfShpx.UN5/5n4ynG05lG', 'j3O-t0zW7Y_sTHQOaoFrY05sHJSzHK0__1510052591', '23', '23', 1, 23, 23, 1, 1, 0, 'cat@cat.com', 0, '2017-11-07 10:54:54'),
(103, 'gen', 'avatars/5a02dbcdeaf11.jpg', 'background_images/5a02dbcdeaece.jpg', 'meDlKQeZbEs4wYgVDYZX3P-OMPeGdfXG', '$2y$13$M3P6OLmxhIrz7z07gGKpf..5QcE2YmN6cdoNNTJm67K/.l5x07zM.', NULL, '3-10-1994', 'Italy', 1, 190, 90, 0, 0, 0, 'gen@gen.com', 0, '2017-11-08 09:29:53'),
(104, 'Gentleman ', 'avatars/5a02e7f4ec71c.jpg', 'background_images/5a02e7f4ec6d3.jpg', 'ihOd4muYFkSFde-P13gqOtfNb59OtIRH', '$2y$13$l1IR2rBt9osaCx4EiXFG0e6rk3NC1EXGOd0EStT9PZ8RYsWj/zHT6', NULL, '3-10-1994', 'Italy', 1, 190, 85, 2, 0, 0, 'gentleman@gentleman.com', 0, '2017-11-08 10:28:20'),
(105, 'check', 'avatars/5a057167c4061.jpg', 'background_images/5a057167c4019.jpg', 'diYtHEDJHsF1VcBba6oae19W04cWXSSn', '$2y$13$EXij4hgqnDybF8wOf3cTiueWyy4TE.I425.bCmRqVJ5TkVvAWSoHW', NULL, '10-11-2017', 'He', 1, 55, 55, 1, 1, 0, 'check@check.com', 0, '2017-11-10 09:13:19'),
(106, 'killing', 'avatars/5a0571ba54ed7.jpg', 'Not set', 'fpxr4qGimj-2cpBguI23fdKvJg0EWBJr', '$2y$13$3Oj0W9neY6Nh5xmH/wyaR.22IByFJQ2gFJAnPIiIqvf3531sMK0Ly', NULL, '10-11-2017', 'You', 1, 175, 88, 1, 1, 0, 'killing@killing.com', 0, '2017-11-10 09:30:10'),
(107, 'paste', 'avatars/5a0575d28621e.jpg', 'Not set', 'Q58z7nO4koyNX9B_WM84DAU0BnKIUngK', '$2y$13$GmaNP2qTjbUJjPaxPfLfTuoUwx4bxSqOVBOsccgFkVWCdUTPCffOq', NULL, '10-11-2017', 'Under', 1, 78, 75, 1, 1, 0, 'paste@paste.com', 0, '2017-11-10 09:47:46'),
(108, 'banana ', 'avatars/5a0576778a790.jpg', 'Not set', 'Vjp_NvxHyuJe8AG4jvhjhZOtOXM1z00K', '$2y$13$pHmetZ7/5eYZfD2GCb3HyezmO00TYiWUBH9.I9j9Jqi68axl7DVLK', NULL, '10-11-2017', 'Ahaha', 1, 15, 15, 1, 1, 0, 'banana@banana.com', 0, '2017-11-10 09:48:36'),
(109, 'scab ', 'avatars/5a0579da32be1.jpg', 'Not set', 'e0HpMLUOVpyq9pnRhVbGML_3XFKoY6bQ', '$2y$13$VSv.3ZN0kKQ5CLhC79t5Sesu0oWgQ89k1UFuOweQ/qlMz2ip5ChPG', NULL, '10-11-2017', 'Ya', 1, 25, 55, 1, 1, 0, 'scab@scab.com', 0, '2017-11-10 10:04:55'),
(110, 'shah', 'avatars/5a057a870ccfc.jpg', 'Not set', 'JF6EdnpqbDB4Td6ToZAI2iqgowG-wnS6', '$2y$13$KKLlBrgsMGCYiPdqvrvht.pPKk19tLm.q411uls810/svMlyClTjO', NULL, '10-11-2017', 'Shah', 1, 54, 541, 1, 1, 0, 'shah@chj.xkj', 0, '2017-11-10 10:07:40'),
(111, 'hi', 'avatars/5a057bcb39dfa.jpg', 'Not set', 'H99IcpB706v6Edl7V3VIWaXfvsaOX-I_', '$2y$13$1.HXEnrGAbziWdb.nLO2guxTC7Nl5MvLU2ad5qXyrEUAkrN1IcUxe', NULL, '10-11-2017', 'Ggg', 1, 55, 55, 1, 1, 0, 'hjh@hh.cin', 0, '2017-11-10 10:13:03'),
(112, 'till', 'avatars/5a057c29ec550.jpg', 'Not set', 'QP1_sYUsq0n5j9GuUrV8ETwvPhwiEF5H', '$2y$13$uJ2wHevK3lOOMtqqcSGoYOmuWL.2KW/UBH4j4WubFY.JQQBaU2NxC', NULL, '22', 'Ggg', 1, 125, 45, 1, 1, 0, 'ghhj@fh.cv', 0, '2017-11-10 10:14:35'),
(113, 'I’ll', 'avatars/5a057ca26b9c6.jpg', 'Not set', '7I6c_UupebRX8eTLVdFHk4e-4jTGQyXP', '$2y$13$teLjWvWhecFntdNDFzGnYupEZeSlSprSS3fMOM5/VAOwqci4abWZ6', NULL, '555', 'Vvvv', 1, 22, 22, 1, 1, 0, 'ggg@dg.cv', 0, '2017-11-10 10:16:50'),
(114, 'ought', 'avatars/5a057d06c2d86.jpg', 'Not set', 'EUn14J3nc5A4L0HlSidj_l5OtCHpSegh', '$2y$13$2YDVAXlQ9sf7C2QPZEHVuOvWY7lfh/.Cp4rR04lTgGqXd8wBUcj5i', NULL, '7888', 'Fm', 1, 58, 58, 1, 1, 0, 'gghh@hj.cv', 0, '2017-11-10 10:18:34'),
(115, 'shah', 'avatars/5a057d5729092.jpg', 'Not set', 'sLWcdsoqxJGymXb1xw7ajWK2pi6itxin', '$2y$13$wLjwboYqwg3GXtCfETnr4e/v28g5Fq1L6MSqMTFaUpxkdqgxu9VoK', NULL, '64646', 'Aja is', 1, 5454, 78, 1, 1, 0, 'shhsh@dj.dj', 0, '2017-11-10 10:19:31'),
(116, 'ggg', 'avatars/5a057ddbb784e.jpg', 'Not set', 'J0xi4oR49PSfCKCjQ6F7mB_NbJIRKcJy', '$2y$13$f4a/jqzYm1BxG0RgG6ieh.4sC0UJX9K413sMZH4IpO7whieXQ.2c.', NULL, '16-11-2017', 'Hi', 1, 55, 886, 1, 1, 0, 'ghh@ch.vh', 0, '2017-11-10 10:21:49'),
(117, 'uhh', 'avatars/5a0581360f32b.jpg', 'Not set', 'Nueepxu7ejPzZbumeXojBs3zJoKZhOkU', '$2y$13$D2HA0q2l7PYNDVYBjmPJVOrxemEAwNnJ5UpqSuH0tSQVPsShVmz1a', NULL, '10-11-2017', 'Gggggh', 1, 563, 556, 1, 1, 0, 'hhhh@zcv.vvh', 0, '2017-11-10 10:36:09'),
(118, 'hi', 'avatars/5a0581e2ba7a9.jpg', 'Not set', '-UN45JCcbpHyF3l-X4iZzcJ-5W23Lvln', '$2y$13$H77rWejvBp7XF7pSvFuG9.6ZFwCXeEStlY5fi7wYbQ7QM2kKY5w6y', NULL, '88855', 'Bbnnnbb', 1, 8283, 8383, 1, 1, 0, 'jjjk@vbj.hj', 0, '2017-11-10 10:37:09'),
(119, 'ggg', 'avatars/5a0582a89288a.jpg', 'Not set', 'qgAJsy_ImmixCB_vM4gg3FUZpovjloyA', '$2y$13$mBWQ9Sh7FNQ2JUyW0QP1JuA2n2ZrK/PQ.0uSv1/JRtwurLpBfCDfC', NULL, '10-11-2017', 'Hjjjj', 1, 33, 33, 1, 2, 0, 'fghjj@ccgh.vhv', 0, '2017-11-10 10:41:41'),
(120, 'baba', 'avatars/5a05843d7ba99.jpg', 'Not set', 'yQkaY1N7GIaqbMq0Fa3dv0xViRWgQ-KO', '$2y$13$ZCyJpp7EnoVDnVUPZ0pFEeYUa39fh2L5FJx.cUUt91F6l0pWjoGGC', NULL, '8778', 'bag', 1, 5, 54, 1, 1, 0, 'absb@xbzn.xin', 0, '2017-11-10 10:49:21'),
(121, 'untilsystem', 'Not set', NULL, 'FTYHeZsxKXntPHWyxEFruwaaVsCcS_CX', '$2y$13$aFwG5d01rlmfjQr0BoH.iOmeU38EM65P8J6rlGgGLlrXMfQhB7a6O', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'until@system.com', 0, '2017-11-16 11:13:24'),
(122, 'ggg', 'Not set', NULL, 'W-F8xVKCpAZ3KssYxEbxUORRUUw2Cve6', '$2y$13$.nQUaMS4Arrdd3jJa73HLeMLq17kPstTKHgRb4/dxtvYRx25EWHG6', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'gghh@ggg.com', 0, '2017-11-17 08:58:12'),
(123, 'adds', 'Not set', NULL, 'kE7cpGk8mwu1Tsv2SJKmTEcJGFJ194iI', '$2y$13$fq1dy14S/ePt9ail4YlDduwWjoSrxLUwtVlKXlCLJTWUFhrgdF9ri', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'sdasd@asd.comas', 0, '2017-11-17 09:31:30'),
(124, 'qqqq', 'Not set', NULL, 'gaAZQi6qAusFxEJRst7AxwmqEOO1gY08', '$2y$13$oGtXCoU4TB0qm0dYVe9ng.nC0B.spi0m9w1VN4MMZFJKQIYlwrfCa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'assd@bk.com', 0, '2017-11-20 12:05:59'),
(125, 'daddy’s', 'Not set', NULL, 'dhYQoy9nZXofrC33jQRb6w0GE0Y837lx', '$2y$13$BVssaIcNmoReNw/pGAe0X.vTM/al1FfOvy2QMbnlBMk7RPL4Dn5WK', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'sdds@fff.com', 0, '2017-11-20 12:14:59'),
(126, 'fff', 'Not set', NULL, 'RA3OviqH7AEqjpCl8FJ8yE0cnlEdi17A', '$2y$13$4vxlYq0qXQ3ByTtGV8TsoODnZUOd61X676QLURdicy8IRpYJ.xg.a', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ddd@ff.vj', 0, '2017-11-20 12:22:25'),
(127, 'add', 'Not set', NULL, 'nhUJ07M8t8r--tuBlnD1UYxNYtpCN6XJ', '$2y$13$dti90wjrW1a70dDqln..1uRAt5NU6n5t4EqEZQM3gf/X32Vq7U826', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'asdasd@ds.cl', 0, '2017-11-20 12:26:43'),
(128, 'ggg', 'Not set', NULL, '3LCc5PX1oK6aupu4OtjAcd-cn9joQLDX', '$2y$13$V3rHFXp5hpGZ.zUombOhhO9n2589bRqwwfRQqw6m.skhhG0IG4jSu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'yyyy@jdkd.kd', 0, '2017-11-20 12:36:34'),
(129, 'hi', 'Not set', NULL, '5JyhQ_bMy7Xz1OB_FfsR9xGb-qcA_tkG', '$2y$13$REWRhn4j2IPF.sZI2WoX5e2OIs4KavNbnGoEdJkMsTQvCUXRMAVwi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'kjj@vl.cl', 0, '2017-11-20 13:10:32'),
(130, 'wish', 'Not set', NULL, '03s6KB2XWQz60uktleDS-gpXZNxfpoow', '$2y$13$holeT9l5xxCENP9WPusy4O/YxlsGO4ZHPRqV4c011/Ek3BHm5OvdC', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'sdfs@vl.lc', 0, '2017-11-20 13:19:28'),
(131, 'msasda', 'Not set', NULL, '1_3_BhHi1zs1qqqvXVyzbRdukoZ4JSMk', '$2y$13$WvG.VYYAqw94MDPlryctg.jGbjE9wVDbgJa5wVWMtayZ9nQJ2mSlu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'sdnf@dkl.co', 0, '2017-11-20 13:21:19'),
(132, 'as judo', 'Not set', NULL, 'TE36pcfeTV9l23LigOBDTCuNieICmu67', '$2y$13$in8a/t6oPDNEvATWemh/ROreCs8Y0uJlyftlGRTMX71gTozvB6MU.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'asdasd@dc.cl', 0, '2017-11-20 13:26:39'),
(133, 'rrrrr', 'Not set', NULL, 'Enl6VFFBq0fOWDFqfzZJ5NLde-W9bZWH', '$2y$13$wbvJeuzKr.67ZanND9GIUOY4.h2wkgK3kGPzd9iwUAwOy55Cft8Uu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ttttttt@ff.cc', 0, '2017-11-20 13:49:36'),
(134, 'fff', 'Not set', NULL, '0ReZCEtJwmWlKU3d3XqLMKGyZzCCk2zg', '$2y$13$R0kHveTX15tqstz8utL0S.P6WSxiNoIaBU/T/fYQrNY5mMcoY.WR.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'hhhh@xxx.xx', 0, '2017-11-20 15:39:10'),
(135, 'jjjj', 'Not set', NULL, 'VQhnvjwUymnkp9A_Erlb_XBNDkjwU_OF', '$2y$13$xfL45IhURhLgtXvAPFgcueAKlqlesw38vTI60jWHcIsGbvkwkmI/.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'huhj@xxx.zz', 0, '2017-11-20 15:41:48'),
(136, 'hhhhh', 'Not set', NULL, 'A8PWsG_1b99OrY3fyH8XwKHw7n5F2iBW', '$2y$13$/c0UpwqehTp71q9Js56E2.quUaGx1gInnORx1PNPon7e6fIpwdoFK', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'hhhh@ddf.dd', 0, '2017-11-20 15:44:31'),
(137, 'ккккк', 'Not set', NULL, 'xWTLqT836RQGAU28MZYJmvOLCmnzOiLn', '$2y$13$qkadFGENE4BDp.b64vDvcObGPTfKk0qVZeSS9/.lEro3hNJLdaIki', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'dxxxx@xxx.gg', 0, '2017-11-20 15:45:48'),
(138, 'hhh', 'Not set', NULL, 'tyBKl6kEYwAX2aXm8M1HzS9t1uldF_AE', '$2y$13$dotstbJCDF4rH4ArgWbaDe/KlAQwJxTbPkT6QMR15P6hYuSDqPPoi', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'rrrr@cc.cx', 0, '2017-11-20 15:48:35'),
(139, 'gggg', 'Not set', NULL, '5qLe7uGr7ZO98hkLgirO3xzYbfj_OLF4', '$2y$13$luU9Y9bEglPfoN57XSR8G.sZItLylEmMx6wvu3u03EjMBckRap/Xa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'gggg@dr.ff', 0, '2017-11-20 15:51:57'),
(140, 'hhhh', 'Not set', NULL, 'kwJBf0s6gq1tqbPI0ldpl6afuqfH9Gq4', '$2y$13$GzDtM7CPbaV8VCA52meLVOMRTd/Ax9gR.93d257l3BDmgut8iLuc.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ggggt@fff.ff', 0, '2017-11-20 15:54:30'),
(141, 'bbbb', 'Not set', NULL, 'ac2P3dBQLdly00-SDjGHbcatLmAfj230', '$2y$13$ELstE1gt3KDmvhU3Oo.Fb.K13KZTb4OXx8sttin2JaFSPxNJNl77y', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ddd@ccx.fff', 0, '2017-11-20 15:57:02'),
(142, 'tttt', 'Not set', NULL, 'EfWs_CAF5xtR_LrRMzbsD9QlFCB-CJNJ', '$2y$13$IcLIkSXb6wGQd9NTigCzp.Hhau6CmEqZNDxCdfni6ghF/uI0aBjRS', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'uuuu@cc.xx', 0, '2017-11-20 15:58:09'),
(143, 'dddd', 'Not set', NULL, 'PvM1fVbjYdcX8mhZjtr7f0SGUtf9aXZP', '$2y$13$r9nuGtYqXZ9XZtW33KSY9.a4wubRYPNAD1lDj1qs0GoGl9y2Obpwe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'vvvvv@gg.sd', 0, '2017-11-20 16:26:56'),
(144, 'yyyyyyy', 'Not set', NULL, 'ubpe7mBctb-UwAaQMu4265_AZeGv_K5J', '$2y$13$KqWhhACVWhYACuEMkZvmGuX5kHLOEK.poHF.lEC2cRvImOC4YWrza', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ghgg@dd.xxx', 0, '2017-11-21 08:19:58'),
(145, 'shahs', 'Not set', NULL, '5VRiQOe8-T9khag8-zhiGHHvZQTTIHub', '$2y$13$5CbFnCGL/IwG9Yug2BOUROJn8gz/443skcq4G5BrNr3JS0EGMOqOu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'snsjjs@kdkd.dkl', 0, '2017-11-21 08:24:02'),
(146, 'slope', 'Not set', NULL, 'x3ZSLDPHg7sz0Ghfz7N2vE3SF3YJIVDe', '$2y$13$9DGHMbQKJtivTtZ0bQYhz.uKAFCjvEl9wEm7mb/fiTGi9TOJ3thc2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'skkkwow@xjii.osos', 0, '2017-11-21 08:24:47'),
(147, 'tttt', 'Not set', NULL, 'CKjX9AV5Pi6UMKwaREKqsC49EMm6qDkt', '$2y$13$ZRnaasNyJAkHtbFdtZPkuuVFI4IGqO1YNLCO84Egm/GDQX7g/0qDa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'huhhh@xxx.cc', 0, '2017-11-21 09:13:10'),
(148, 'dfg', 'Not set', NULL, '_eCnWd3wPvSGcrHP9QR8MNS8XwGgks39', '$2y$13$VV/VN0KokJ2SGMPVYbTBq.Q9LKP9WIpvdP.veNTjGndWd/trYpfGu', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'ggg@shs.dj', 0, '2017-11-21 12:16:33'),
(149, 'hhhhy', 'avatars/5a142882577c8.jpg', 'Not set', '0smb0yhuSvkh0tfNZrJgfoy3_XqElcSn', '$2y$13$nC1JaNyeKoVXHkK5F5gUAOO0XuvFMxYt84QUpJBXjpOrwH217Fw0q', NULL, '21-11-2017', 'Hhh', 1, 88, 66, 1, 4, 1, 'yuyyy@xxx.fff', 0, '2017-11-21 13:21:30'),
(150, 'hhhuu', 'avatars/5a142a86d0965.jpg', 'Not set', 'g1z6Ea_YGlr0-Im4wOmS9VH0ES6kAhGK', '$2y$13$FeNhy07sh6U/JeyKzYM6WufNXry61fIDtlHNzvLmgeHpf37dh0tKC', NULL, '19-11-2017', 'Fff', 1, 555, 555, 1, 1, 1, 'hhhh@dd.dx', 0, '2017-11-21 13:29:36'),
(151, 'Vasya Kot', 'avatars/5a142bd99ea8d.jpg', 'Not set', 'SrN6rz8uMQzwGq-aNaqmmrG2mLMWyWhx', '$2y$13$W/q/gPUJDHwtBmyp26f0b.1wOPH7TlTNfetOQg86Ndx1kJiCKCkE.', NULL, '12.12.12', 'Ukraine', 1, 55, 66, 1, 2, 0, 'vasya.kot@gmail.com', 0, '2017-11-21 13:34:57'),
(152, 'thennn', 'avatars/5a1435e255c12.jpg', 'Not set', 'iBceUJo0awvNstJJaWDoZPjcOee9A_Vq', '$2y$13$fxuwhebhhjYn79idSEzWwedOtmgZSWmNYaU0GTw5hBWdwbWQDRGPW', NULL, '21-11-2017', 'Ffffg', 1, 33, 88, 1, 1, 1, 'bbb@fff.cc', 0, '2017-11-21 14:16:13'),
(153, 'fffff', 'avatars/5a1439fb6bfe0.jpg', 'Not set', 'ArfxaZYagpdoVVm-ZwH7wKnzUvf7YfO0', '$2y$13$sHW8BTbRi5QiWu7m4.u5aOQy69vap69L.BHf3rlUpEssquQ1Gn34u', NULL, '19-11-2017', 'Try', 1, 4, 5, 1, 1, 0, 'hhhh@cc.cc', 0, '2017-11-21 14:35:54'),
(154, 'ffff', 'avatars/5a143d39be021.jpg', 'Not set', 'SE5dOHcnUl8yc9hBYILj8HTXSihG40aQ', '$2y$13$F.LAJUZ3epD30K4ROQpYOe.SdamD6Gv3b9OI1XlLR9SXKhc/W0a1m', NULL, '222', 'Hhhh', 1, 3, 2, 1, 1, 0, 'ssss@cc.cc', 0, '2017-11-21 14:47:58'),
(155, 'ggg', 'avatars/5a143de60d879.jpg', 'Not set', 'y26CJb2qc3jYmXLb9EXikaXw5Dd0U0SL', '$2y$13$uGWXZN6/sS6LuFpzRgKV.u5PopmJW6szuCeumyX.0qm7yQTQ.wwQG', NULL, '21-11-2017', 'Tytttttt', 1, 5, 2, 4, 1, 0, 'ggg@ff.vvv', 0, '2017-11-21 14:52:48'),
(156, 'tttt', 'avatars/5a143fc685ac4.jpg', 'Not set', 'SVn0zvd4oCCWBQEVmXnJWiTcuGBB_ztI', '$2y$13$4xE52yFv2n.ChoC97y9qmeHYYfHdKLZr5kxCdUvBxkF.Tbk.FMj.W', NULL, '21-11-2017', 'Vvvv', 1, 7, 3, 1, 1, 0, 'ccxxx@cx.ff', 0, '2017-11-21 14:59:43'),
(157, 'tttt', 'avatars/5a14413e0c1af.jpg', 'Not set', '7xuj4ujRjEASav-9Ef3HR6qWbu6TH7TK', '$2y$13$xOVkRy.98/kp0kAuTuxEmewI3xsTyso.ILZuIFx3stZaAelCyDIuq', NULL, '21-11-2017', 'Try', 1, 0, 0, 1, 1, 0, 'fff@fff.gg', 0, '2017-11-21 15:02:46'),
(158, 'try', 'avatars/5a155ccd8eb4a.jpg', 'Not set', 'fWn0T0CJKM6f6Bd4tkcYk_iKJ6IMLZyd', '$2y$13$oyryDlmLHdI3Ssa8rf1j8evPBvwHGaRVmuhjpwaeVW5LppuevxX9K', NULL, '22-11-2017', 'Tgggg', 1, 6.6, 77, 1, 3, 0, 'ggggg@gg.cc', 0, '2017-11-21 15:11:44'),
(159, 'yuh', 'avatars/5a15611404ee3.jpg', 'Not set', 'H-Sj81PT4HBaSsIJ4NDXPbyvil55XQCR', '$2y$13$SnMkDwqLOkS35/cbcPDfS.qCK58BstXuJvP9asbJ2U/d7WKbVg11q', NULL, '22-11-2017', 'Try', 1, 1.78, 222, 1, 1, 1, 'frff@xx.xx', 0, '2017-11-22 11:34:58'),
(160, 'kkkkk', 'avatars/5a1562eb025d3.jpg', 'Not set', 'GTwB6g92mmTDz3X1kKv3maDTlZ3axil0', '$2y$13$gzhtwGCwBs2Y5jgxRFLjXennUjVbu4lYTSxv/qSQyVrAKyZlTXQRy', NULL, '22-11-2017', 'Hgggggg', 1, 178, 55, 1, 1, 1, 'uuhuuu@xx.cc', 0, '2017-11-22 11:42:42'),
(161, 'yyyyyyy', 'avatars/5a156b20726ba.jpg', 'Not set', '1U775vZV-ffBXsssFcijSu_l6YrSBd0E', '$2y$13$nsTYKj3nnH6Ys1GEakJ0eefdWAE9pvyJ2Z5aQ83DKB/.Y4d/n6noW', NULL, '22-11-2017', 'Try', 1, 5.11, 44, 1, 1, 0, 'tyyy@dx.gg', 0, '2017-11-22 11:44:42'),
(162, 'iiiii', 'avatars/5a1570ddd82d9.jpg', 'Not set', 'P4i0VnNYKMHc7eEoYeSDpKCgsDhHZl-5', '$2y$13$irqwpifLa.BsNPjLHdOXIuRQeO0KzCn2m.DOg8pJVq8yDAcB4a19K', NULL, '3-10-1994', 'Try', 1, 5.9, 210, 2, 4, 0, 'deee@ddd.xx', 0, '2017-11-22 12:40:56'),
(163, 'hhh', 'avatars/5a15732d3ddf3.jpg', 'Not set', '9SSf0LSLEsvjvFXnr3MT-6k4MAus_5Pz', '$2y$13$rPUDt89hInmUBXEbr1HBX..UgcInMJVtukFfW.Xj94SxvuMnVvOG.', NULL, '22-11-2017', 'Hhhhgg', 1, 5.9, 222, 2, 4, 0, 'uuuuu@vv.cc', 0, '2017-11-22 12:52:10'),
(164, 'yyyy', 'avatars/5a1573d57185f.jpg', 'Not set', 'qmSox0pIkO28B8Yf3UXphwyQc9mqEFdV', '$2y$13$MYGD5r1GskVazA8QtScWr.OIp816p9JFdyT3ZIls/QLiVcmuHl9xm', NULL, '3-10-1994', 'Hhh', 1, 5.9, 222, 2, 4, 0, 'zzzz@gg.gg', 0, '2017-11-22 12:55:00'),
(165, 'hhhh', 'avatars/5a157c85dde39.jpg', 'Not set', 'JR27KFg-yYFH7vbTRX9Po8qx-bHje7FC', '$2y$13$WvikgN9k2PeJLuaP6yB6.uN2cC4YzItkbBDseNIiTZwZJIHpzuKs6', NULL, '22-11-2017', 'Hhhh', 1, 5.7, 222, 1, 1, 0, 'hhhhhh@xx.yy', 0, '2017-11-22 13:31:09'),
(166, 'bbbb', 'avatars/5a15855d00e0c.jpg', 'Not set', 'CGshpANPHvg5GhgjflipievR3TzPr2rh', '$2y$13$m3bqZ9bcUEgPsnBFVZ9RTO81FSNZ2WiMm8FWq7oDM/vUeKb/2uBZi', NULL, '22-11-2017', 'Ggg', 1, 5, 888, 1, 1, 0, 'uuiii@vvv.gg', 0, '2017-11-22 13:38:01'),
(167, 'iiiii', 'avatars/5a1589af09089.jpg', 'Not set', 'kAhDQc0jEP8twRy8TzDjNAkL9GuIv4uS', '$2y$13$QAFxXcaq7Yx92yXIHsnQhORRGhCF/2L4HGH/tfp7WEPt.2HuyO5ay', NULL, '3-01-1993', 'Ggg', 1, 182.88, 55, 1, 1, 0, 'ffff@gg.xx', 0, '2017-11-22 14:27:44'),
(168, 'uuuuu', 'avatars/5a158a7fa6bd0.jpg', 'Not set', 'lHumsRc8r6MBV5geyLZturfzsvd2Qx41', '$2y$13$Ipr3Mv6monJ1J0fGGPYUNOFSSwIe/snobr8KhmDfi0eCCnvwyMzAm', NULL, '3-01-1993', 'Gggg', 1, 179.832, 210, 1, 1, 0, 'jjjjj@ff.gg', 0, '2017-11-22 14:31:36'),
(169, 'hhh', 'avatars/5a158dd8e9c84.jpg', 'Not set', '5mkgR2ZQ_2sjNilAjJ6W7-2e6pGGL8p6', '$2y$13$F1E6a8ZRqjgLn2yJvKO3WeUNyPiFcqfUOoWGKjH46Dzeqj6JjrVAC', NULL, '22-11-2017', 'The New Is', 1, 179.832, 222, 1, 1, 0, 'sssds@gg.cc', 0, '2017-11-22 14:46:07'),
(170, 'Iui', 'avatars/5a16833684a48.jpg', 'Not set', 'U0tEyy_ypUCCLMkUssUTtxfqgFAAfBgE', '$2y$13$YOOhtF2UGaguKZ841qFkbOatUNY0g5Zho1OrPjt64rnNqVQ83hniK', NULL, '23-11-2017', 'Ggggggg', 1, 164.592, 250, 1, 1, 0, 'jjjj@cc.cx', 0, '2017-11-22 15:16:43'),
(171, 'gggg', 'Not set', NULL, 'sIUMStZ4--t_75qNuLGjqqcc3Ou3K70a', '$2y$13$4m4Bf9DLugOJDK7hHKeV2eJsQmcr5Ko2TDr4kl3edo1cSWolHOvUW', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'stuh@gh.gv', 0, '2017-11-22 15:20:49'),
(172, 'hahhaha', 'avatars/5a1599a01104b.jpg', 'Not set', 'g6cYgpbMhOM5GKwfwYU_6IOffK13fuh-', '$2y$13$2iTaFXXVNE3w9YequwFtJe2f8Gu9lvhxwToqXuqi0jA0l9DklaFZ.', NULL, '22-11-2017', 'Gaga', 1, 182.88, 245, 1, 1, 0, 'hsha@jdjz.id', 0, '2017-11-22 15:33:15'),
(173, 'zvbahs', 'avatars/5a15a13ef29f7.jpg', 'Not set', 'cUFNwoHSgsM0FK63vY37vu3jeOuMX2HK', '$2y$13$12djARuuZFdbWVMyW/09AuBA3Dai3kBO1kLqUHUJ2KRKbNaRODVEa', NULL, '22-11-2017', 'Zvvav', 1, 213.36, 8787, 1, 1, 0, 'shhs@jxjd.di', 0, '2017-11-22 16:09:12'),
(174, 'ggg', 'avatars/5a15a317ae649.jpg', 'Not set', 'w-DRiHUX0pwXLQfYV8b9Q4G4qO_KJULT', '$2y$13$A6htzA4joA3bSAKl1gPN7.AJLjrsilUViepJQvFnugl4lPXlIHHTG', NULL, '22-11-2017', 'Xcbkko', 1, 170.688, 8888, 1, 1, 0, 'df@fg.cc', 0, '2017-11-22 16:17:02'),
(175, 'brrbrr', 'avatars/5a17fcfb3bfdf.jpg', 'Not set', 'Lun1lbSfo7BUW7YQpzM5UtRWRyrGy7xp', '$2y$13$aoryXXVkz3w2iBB8hNMU9u8B.Dn/k4SOo1mp5ohlN.40Af33WbcQa', NULL, '5-05-2013', 'Abha', 1, 158.496, 784, 1, 1, 0, 'brr@brr.com', 0, '2017-11-23 08:31:07'),
(176, 'bad', 'avatars/5a1802c3768df.jpg', 'Not set', 'CcX9GQ7Jq8Kz1T26a0rN6YjHWJOP2u_q', '$2y$13$4CXPjVOdhBJnZCyOuupG8OiypDqNrq1XRW84Dpyw9kByDkO.uXevq', NULL, '', 'Shah', 1, 0, 55, 1, 1, 1, 'bad@bad.com', 0, '2017-11-24 11:13:43'),
(177, 'vvv', 'Not set', NULL, 'ngUErLe9IRy6LvrHS8u2-ZfEbNJFi3_2', '$2y$13$90FiaMDyGN7OpBpYsFVCsuVUtgqaRX0Q48AXnZS5J856pqzyVXxxC', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'fyy@gg.gh', 0, '2017-11-24 11:34:18'),
(178, 'User', 'avatars/5a1ecb8866fe8.jpg', 'background_images/5a1ecb8866fa2.jpg', 'pGVlR55xAXAYuDrj1F6SuhIu8Ihc4xvj', '$2y$13$y5.F073NQoNUu1r3/d5tReP0VHVBVVrJR2kBzru4iYZLMoLXsOVzy', 'whqiQ2vGzn4oFTG-Z7LvM4emSnyXAseB_1511875169', '2-11-2017', 'User', 1, 193, 1111, 1, 1, 1, 'user@user.user', 0, '2017-11-24 11:43:50'),
(179, 'zhsnnsjsjs', 'Not set', NULL, 'LqAm0hqiUE5orbqgQfCPmWjSVSTQpy8N', '$2y$13$eEpWeXwyoNsc/d29SgICW.pTlkKKR9l8w.oDD2HZCb5/kvmoOjdJa', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'zzbzn@djj.do', 0, '2017-11-24 11:49:13'),
(180, 'Roman', 'avatars/5a181cf29e38f.jpg', 'background_images/5a181cf29e33e.jpg', 'TazKMzQ7nJhS-fy7BWvkIHbUdzxr1DdF', '$2y$13$kJ9yd6tNgnTtPfNOQR.Z2.Bd4h2q81vlZ3V7wXIxsQJZ9P.XMIKaW', NULL, '18-11-2017', 'Gfdhgdfsg', 1, 132, 546, 3, 2, 1, 'user@uuuuuser.user', 0, '2017-11-24 12:59:44'),
(181, 'rrrr', 'Not set', NULL, 'WXXy6eyotLLLz2Vu89yUc-5Whs9nIA1i', '$2y$13$htLLdXsWKU1HkWTR9MNS9.Zygcw2.jNSYbmjV3NYlhXZqYESaKMtC', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'hhgh@dxx.vv', 0, '2017-11-24 16:28:18'),
(182, 'try', 'avatars/5a1be54a8b551.jpg', 'background_images/5a1be54a8b50c.jpg', 'hAY8JFQ11b4BPQmwwIhhOq_uHTbdzLZP', '$2y$13$H5Gc2bxDYY7iDpfkcvT.yOqywqj6ukg4bqzBC5CJRCo7VLhahUXUS', NULL, '27-11-2017', 'Vvvv', 1, 249.936, 5555, 1, 1, 1, 'gfmm@cf.vv', 0, '2017-11-27 10:11:03'),
(183, 'abba', 'Not set', NULL, 'Li2r6WyMgraXqdfhDLzZUeb03bgaL_hZ', '$2y$13$3GdDYsj7wqADSBqiKn2Dy.GhhrBLPdK/1ulN4fPzHQOULCLOMbKwS', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'zhsnnsjsjs@ns.xk', 0, '2017-11-27 13:41:53'),
(184, 'shah', 'Not set', NULL, 'EGjmdWyxflD2sBDqaw3Mdm_CrecN3D9o', '$2y$13$FrHN1FgZnHh9MeGLyoP17.41tjNBd0YhhwBOJMhs4fklxXR1Z0EpG', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'zbzh@xj.kx', 0, '2017-11-27 14:14:28'),
(185, 'bbs', 'avatars/5a1c2ab21aa46.jpg', 'Not set', 'eP1e-qfaIupBmq19CReFXnt75HqIQP7W', '$2y$13$bzu9vJZSI5gHdowoULR3a.7gTA0IaCRLF4HVjw0FEM134gTOxtnOW', NULL, '27-11-2017', 'Cvs', 1, 67.056, 88, 1, 1, 0, 'shh@djj.ks', 0, '2017-11-27 14:56:13'),
(186, 'User', 'avatars/5a1e7ce255471.jpg', 'Not set', '9ZnwuHAC5OWDsS5DS757EDwfjZCYg50U', '$2y$13$N4uL2B7wl.wIkGQfmf6tEeVWc5W3vs3D1l/Nu.IOe7658G.nIkch.', 'il2WvIoB0bqX99P0uXymVoNYQz-qN0fd_1511946851', '', 'USA', 0, 124.968, 132, 3, 2, 1, 'Elena.evrolab@gmail.com', 0, '2017-11-29 08:29:56'),
(187, 'ahh', 'avatars/5a1fbc5f3c9da.jpg', 'Not set', 'YSX0TwYRnyt_DEfpe9o79mMPvObmbqjA', '$2y$13$/vs8TyI31GqPqzCt8jOL0eewgQf5LqgIePnc1Axfd/d2gJu7iYRcu', NULL, '29-11-2017', 'Zbbb', 1, 178, 98, 1, 1, 1, 'abhja@haka.skjz', 0, '2017-11-30 08:04:07'),
(188, 'ahaha', 'avatars/5a1fc19429ab3.jpg', 'Not set', 'oGdcEu-FN8uwui5tqxDbqpomXYw-CiA7', '$2y$13$/p3mMYO8v1BAFTgaCmfz2eHWCn3mw4kSwRtq/wYKo2BaqDCEAIKOK', NULL, '28-11-2017', 'Gaga', 1, 123, 78, 1, 1, 1, 'hahaak@sok.snak', 0, '2017-11-30 08:28:17'),
(189, 'dfghh', 'avatars/5a1fceb9af4af.jpg', 'Not set', 'STNSHLYIMl44t7WBAkn5GE3_TUOVUiFn', '$2y$13$g7uIpiVow7GrIJCwekdjD.qkeqbfy/kEGpucPmNH5PwBRXrPAOBtW', NULL, '29-11-2017', 'Foghorn', 1, 190, 90, 1, 1, 1, 'dfghhj@dfg.vv', 0, '2017-11-30 09:25:29'),
(190, 'ghhh', 'Not set', NULL, 'Ch0ogTUpcQzA0_ceEpufxdBlIHDvAQT_', '$2y$13$v6JYzHbkPRHuyN.gdBpzfebN5dcGm3lY.3y/z3Uxfb0/u7IIBw1f6', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'cgh@gh.hh', 2, '2017-11-30 13:21:49'),
(191, 'vvvv', 'Not set', NULL, 'N2lwlTGhFFzmY0bcrIUVOcf_W11TvnUw', '$2y$13$LiEwbu.DS6IqGNwjXtLyDOmOxS3Z.U8VA8nAWRtJRne0qze/wvtRW', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'xchj@ghj.jk', 2, '2017-11-30 13:22:14'),
(192, 'ccggg', 'Not set', NULL, 'O1qvhTSawEtapAp2RUiPGXR74eE6Y0fO', '$2y$13$.NAFi4Z6BJ98Xm1aoGDEV.ff6gwJ4H1hCoQeFTnR3hRmWLa0MRpFG', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'cggjh@chi.fhh', 2, '2017-11-30 13:24:30'),
(193, 'scbkknbc', 'Not set', NULL, 'VIfMIgKmEhqYxCY6TOhHJt6qKJPWJO8t', '$2y$13$w9c.svBECPG5I7l8h2stY.y66HyDyJ0uBV5ztpTcEhwQh54bgV2kS', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'xcvbb@vvv.pokh', 2, '2017-11-30 13:25:41'),
(194, 'pupkin', 'Not set', NULL, '2e4X0dXCHR4csPOFnGvfSleykpl38N9J', '$2y$13$4UggkrcFTcjekvJX2FJKiO4NWBGyiU4G1nOVIjsuyK1ySZmjWJ24C', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'pupkin@pupkin.com', 2, '2017-11-30 15:12:49'),
(195, 'Roman', 'Not set', NULL, 'ucTXRgHdhZ1U-nglCkiK8anRGnTBLoOG', '$2y$13$8rknSQtOXZ9h5JwtbkmtNumCBOpRWoaxCa7zUgqjb2o4z9SVAQsQO', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 'gangaroman@yandex.ru', 0, '2017-11-30 15:32:46');

-- --------------------------------------------------------

--
-- Структура таблицы `user_food`
--

CREATE TABLE IF NOT EXISTS `user_food` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `protein` double NOT NULL,
  `fat` double NOT NULL,
  `carbs` double NOT NULL,
  `kcal` double NOT NULL,
  `gram` double NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_food`
--

INSERT INTO `user_food` (`id`, `user_id`, `food_category_id`, `product_name`, `protein`, `fat`, `carbs`, `kcal`, `gram`, `created_at`) VALUES
(4, 84, 2, 'Food_2', 39, 98, 19, 12, 320, '2017-10-30 15:53:07'),
(5, 84, 1, 'Food_2', 39, 98, 19, 19, 560, '2017-10-30 16:00:57'),
(7, 84, 1, 'Food_1', 145, 23, 11, 12, 180, '2017-10-30 16:04:28'),
(8, 84, 1, 'Food_1', 145, 23, 11, 19, 190, '2017-10-30 16:05:29'),
(9, 84, 1, 'Food_2', 39, 98, 19, 18, 220, '2017-10-30 16:07:08'),
(10, 84, 1, 'Food_2', 39, 98, 19, 348, 333, '2017-10-30 16:28:33'),
(11, 84, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-10-31 10:44:25'),
(12, 84, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-10-31 10:53:31'),
(13, 84, 1, 'Food_2', 39, 98, 19, 348, 123, '2017-10-31 10:54:00'),
(14, 88, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-02 15:44:21'),
(15, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-02 16:11:47'),
(16, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-03 08:08:59'),
(17, 65, 1, 'Food_2', 39, 98, 19, 348, 100, '2017-11-03 09:20:56'),
(18, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-03 13:03:59'),
(19, 88, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-03 13:04:22'),
(20, 88, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-03 14:04:37'),
(21, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-03 14:19:33'),
(22, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-03 15:34:06'),
(23, 88, 1, 'Food_2', 39, 98, 19, 348, 0, '2017-11-03 15:36:37'),
(24, 91, 1, 'Food_2', 39, 98, 19, 348, 50, '2017-11-03 15:39:55'),
(25, 91, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-03 16:21:54'),
(26, 91, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-03 16:23:03'),
(27, 91, 1, 'Food_1', 145, 23, 11, 500, 33, '2017-11-03 16:23:16'),
(28, 65, 1, 'Food_1', 145, 23, 11, 500, 100, '2017-11-05 15:54:58'),
(29, 65, 1, 'Food_1', 145, 23, 11, 500, 100, '2017-11-05 15:59:49'),
(30, 94, 1, 'Food_1', 145, 23, 11, 500, 100, '2017-11-06 12:01:38'),
(31, 65, 1, 'Food_1', 145, 23, 11, 500, 100, '2017-11-06 12:40:58'),
(32, 65, 1, 'Food_1', 145, 23, 11, 500, 100, '2017-11-06 12:41:11'),
(33, 96, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-06 14:13:45'),
(34, 96, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-06 14:14:00'),
(35, 96, 1, 'Food_1', 145, 23, 11, 500, 0, '2017-11-06 14:14:06'),
(36, 96, 1, 'Food_1', 145, 23, 11, 500, 300, '2017-11-06 14:14:24'),
(37, 65, 1, 'Milk', 2345, 542, 235, 45, 50, '2017-11-07 15:58:13'),
(38, 95, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-08 10:21:18'),
(39, 95, 3, 'Milk', 2345, 542, 235, 45, 200, '2017-11-08 10:21:38'),
(40, 95, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-08 10:22:06'),
(41, 95, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-08 10:23:38'),
(42, 95, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-08 10:26:28'),
(43, 104, 1, 'Milk', 2345, 542, 235, 45, 100, '2017-11-08 11:09:18'),
(44, 104, 1, 'Milk', 2345, 542, 235, 45, 50, '2017-11-08 11:13:21'),
(45, 96, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-08 12:48:37'),
(46, 96, 1, 'Milk', 2345, 542, 235, 45, 800, '2017-11-08 12:49:12'),
(47, 96, 1, 'Milk', 2345, 542, 235, 45, 500, '2017-11-08 12:49:59'),
(48, 65, 1, 'Bread', 323, 654, 765, 3456, 30, '2017-11-10 08:11:33'),
(49, 65, 1, 'Fish', 23, 12, 123, 123, 50, '2017-11-10 08:12:27'),
(50, 65, 1, 'Fish', 23, 12, 123, 123, 10, '2017-11-10 08:13:30'),
(51, 104, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-10 09:04:40'),
(52, 104, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-10 09:05:03'),
(53, 104, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-10 09:05:16'),
(54, 84, 1, 'Milk', 2345, 542, 235, 45, 20, '2017-11-10 15:51:57'),
(55, 84, 1, 'Milk', 2345, 542, 235, 45, 0, '2017-11-13 09:46:38'),
(56, 65, 1, 'Milk', 2345, 542, 235, 45, 10, '2017-11-21 16:20:40'),
(57, 175, 1, 'Milk', 2345, 542, 235, 45, 10, '2017-11-23 15:17:39'),
(58, 175, 1, 'Milk', 2345, 542, 235, 45, 20, '2017-11-23 15:28:52'),
(59, 175, 1, 'Milk', 2345, 542, 235, 45, 10, '2017-11-23 16:37:38'),
(60, 65, 1, 'Milk', 2345, 542, 235, 45, 30, '2017-11-24 15:48:43'),
(61, 65, 1, 'Milk', 2345, 542, 235, 45, 30, '2017-11-24 15:49:41'),
(62, 180, 1, 'Food_1', 145, 23, 11, 500, 455, '2017-11-25 16:49:19'),
(63, 189, 1, 'Fish', 23, 12, 123, 123, 100, '2017-11-30 11:38:56'),
(64, 189, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 11:39:49'),
(65, 189, 1, 'Food_1', 145, 23, 11, 500, 50, '2017-11-30 11:44:44'),
(66, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:20:54'),
(67, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:28:41'),
(68, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:31:01'),
(69, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:31:27'),
(70, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:34:13'),
(71, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:34:33'),
(72, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:42:20'),
(73, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:43:12'),
(74, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:43:47'),
(75, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:46:48'),
(76, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:47:44'),
(77, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:59:27'),
(78, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 13:59:56'),
(79, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 14:00:10'),
(80, 65, 1, 'Meat', 123, 22, 123, 345, 100, '2017-11-30 14:02:29');

-- --------------------------------------------------------

--
-- Структура таблицы `water`
--

CREATE TABLE IF NOT EXISTS `water` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cup` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `water`
--

INSERT INTO `water` (`id`, `user_id`, `cup`, `created_at`) VALUES
(1, 84, 1, '2017-10-26 06:36:11'),
(2, 84, 1, '2017-10-26 06:36:19'),
(3, 84, 1, '2017-10-26 06:36:23'),
(4, 84, 1, '2017-10-26 06:36:24'),
(5, 84, -1, '2017-10-26 06:37:35'),
(6, 84, -1, '2017-10-26 06:37:47'),
(7, 84, -1, '2017-10-26 06:38:03'),
(8, 84, -1, '2017-10-26 06:38:03'),
(9, 84, 1, '2017-10-26 06:38:14'),
(10, 84, -1, '2017-10-26 06:38:28'),
(11, 84, -1, '2017-10-26 06:38:30'),
(12, 84, -1, '2017-10-26 06:38:31'),
(13, 84, -1, '2017-10-26 06:38:32'),
(14, 84, -1, '2017-10-26 06:38:33'),
(15, 84, -1, '2017-10-26 06:38:33'),
(16, 84, 1, '2017-10-26 06:43:36'),
(17, 84, 1, '2017-10-26 06:50:05'),
(18, 84, 1, '2017-10-26 06:50:06'),
(19, 84, 1, '2017-10-26 06:50:19'),
(20, 84, 1, '2017-10-26 06:50:20'),
(21, 84, 1, '2017-10-26 06:50:21'),
(22, 84, 1, '2017-10-26 06:51:42'),
(23, 84, 1, '2017-10-26 06:51:46'),
(24, 84, 1, '2017-10-26 06:51:47'),
(25, 84, 1, '2017-10-26 06:51:47'),
(26, 84, -1, '2017-10-26 06:51:53'),
(27, 84, -1, '2017-10-26 06:51:58'),
(28, 84, -1, '2017-10-26 06:53:08'),
(29, 84, 1, '2017-10-26 06:53:11'),
(30, 84, -1, '2017-10-26 06:53:15'),
(31, 84, -1, '2017-10-26 06:53:19'),
(32, 84, -1, '2017-10-26 06:53:20'),
(33, 84, 1, '2017-10-26 06:54:37'),
(34, 84, 1, '2017-10-26 06:54:37'),
(35, 84, 1, '2017-10-26 06:54:38'),
(36, 84, -1, '2017-10-26 06:54:40'),
(37, 84, -1, '2017-10-26 06:54:41'),
(38, 84, -1, '2017-10-26 06:54:41'),
(39, 84, 1, '2017-10-26 06:54:46'),
(40, 84, 1, '2017-10-26 06:54:46'),
(41, 84, 1, '2017-10-26 06:54:47'),
(42, 84, 1, '2017-10-26 06:54:47'),
(43, 84, 1, '2017-10-26 06:54:48'),
(44, 84, -1, '2017-10-26 06:54:52'),
(45, 84, -1, '2017-10-26 06:54:53'),
(46, 84, -1, '2017-10-26 06:54:55'),
(47, 84, 1, '2017-10-26 06:56:21'),
(48, 84, 1, '2017-10-26 06:56:23'),
(49, 84, 1, '2017-10-26 06:56:24'),
(50, 84, 1, '2017-10-26 06:56:25'),
(51, 84, -1, '2017-10-26 06:57:29'),
(52, 84, -1, '2017-10-26 06:57:29'),
(53, 84, -1, '2017-10-26 06:57:30'),
(54, 84, -1, '2017-10-26 06:57:31'),
(55, 84, -1, '2017-10-26 06:57:32'),
(56, 84, -1, '2017-10-26 06:57:32'),
(57, 84, 1, '2017-10-26 07:46:25'),
(58, 84, 1, '2017-10-26 07:47:06'),
(59, 84, 1, '2017-10-26 07:47:07'),
(60, 84, 1, '2017-10-26 07:47:27'),
(61, 84, 1, '2017-10-26 07:47:27'),
(62, 84, 1, '2017-10-26 07:47:28'),
(63, 84, 1, '2017-10-26 07:47:29'),
(64, 84, 1, '2017-10-26 07:47:30'),
(65, 84, 1, '2017-10-26 07:47:31'),
(66, 84, 1, '2017-10-26 07:49:35'),
(67, 84, 1, '2017-10-26 07:49:53'),
(68, 84, 1, '2017-10-26 07:49:54'),
(69, 84, 1, '2017-10-26 07:49:55'),
(70, 84, 1, '2017-10-26 07:49:56'),
(71, 84, 1, '2017-10-26 07:49:57'),
(72, 84, 1, '2017-10-26 07:49:58'),
(73, 84, 1, '2017-10-26 07:50:05'),
(74, 84, 1, '2017-10-26 07:50:06'),
(75, 84, 1, '2017-10-26 07:50:07'),
(76, 84, 1, '2017-10-26 07:54:05'),
(77, 84, 1, '2017-10-26 07:54:05'),
(78, 84, 1, '2017-10-26 07:54:06'),
(79, 84, 1, '2017-10-26 07:54:07'),
(80, 84, 1, '2017-10-26 07:57:51'),
(81, 84, -1, '2017-10-26 08:12:25'),
(82, 84, -1, '2017-10-26 08:12:26'),
(83, 84, -1, '2017-10-26 08:12:26'),
(84, 84, -1, '2017-10-26 08:12:27'),
(85, 84, -1, '2017-10-26 08:12:27'),
(86, 84, -1, '2017-10-26 08:12:28'),
(87, 84, -1, '2017-10-26 08:12:28'),
(88, 84, -1, '2017-10-26 08:12:29'),
(89, 84, -1, '2017-10-26 08:12:29'),
(90, 84, -1, '2017-10-26 08:12:30'),
(91, 84, -1, '2017-10-26 08:12:31'),
(92, 84, -1, '2017-10-26 08:12:32'),
(93, 84, -1, '2017-10-26 08:12:33'),
(94, 84, -1, '2017-10-26 08:12:34'),
(95, 84, -1, '2017-10-26 08:12:34'),
(96, 84, -1, '2017-10-26 08:12:37'),
(97, 84, -1, '2017-10-26 08:12:38'),
(98, 84, -1, '2017-10-26 08:12:39'),
(99, 84, -1, '2017-10-26 08:12:40'),
(100, 84, -1, '2017-10-26 08:12:41'),
(101, 84, -1, '2017-10-26 08:12:42'),
(102, 84, -1, '2017-10-26 08:12:42'),
(103, 84, -1, '2017-10-26 08:12:43'),
(104, 84, -1, '2017-10-26 08:12:49'),
(105, 84, 1, '2017-10-26 08:14:26'),
(106, 84, 1, '2017-10-26 08:17:19'),
(107, 84, 1, '2017-10-26 08:17:24'),
(108, 84, 1, '2017-10-26 08:17:29'),
(109, 84, 1, '2017-10-26 08:18:43'),
(110, 84, 1, '2017-10-26 08:18:49'),
(111, 84, 1, '2017-10-26 08:19:39'),
(112, 84, 1, '2017-10-26 08:19:49'),
(113, 84, 1, '2017-10-26 08:19:58'),
(114, 84, 1, '2017-10-26 08:20:05'),
(115, 84, 1, '2017-10-26 08:20:09'),
(116, 84, 1, '2017-10-26 08:20:10'),
(117, 84, 1, '2017-10-26 08:20:11'),
(118, 84, 1, '2017-10-26 08:20:12'),
(119, 84, 1, '2017-10-26 08:20:13'),
(120, 84, 1, '2017-10-26 08:20:14'),
(121, 84, 1, '2017-10-26 08:20:16'),
(122, 84, 1, '2017-10-26 08:20:17'),
(123, 84, 1, '2017-10-26 08:20:27'),
(124, 84, 1, '2017-10-26 08:20:28'),
(125, 84, 1, '2017-10-26 08:20:29'),
(126, 84, 1, '2017-10-26 08:20:30'),
(127, 84, 1, '2017-10-26 08:20:33'),
(128, 84, 1, '2017-10-26 08:20:34'),
(129, 84, -1, '2017-10-26 08:20:44'),
(130, 84, -1, '2017-10-26 08:20:54'),
(131, 84, 1, '2017-10-26 08:21:48'),
(132, 84, 1, '2017-10-26 08:21:52'),
(133, 84, -1, '2017-10-26 08:24:47'),
(134, 84, -1, '2017-10-26 08:25:18'),
(135, 84, -1, '2017-10-26 08:26:13'),
(136, 84, -1, '2017-10-26 08:26:15'),
(137, 84, -1, '2017-10-26 08:26:53'),
(138, 84, -1, '2017-10-26 08:27:51'),
(139, 84, -1, '2017-10-26 08:28:33'),
(140, 84, -1, '2017-10-26 08:28:41'),
(141, 84, 1, '2017-10-26 08:30:36'),
(142, 84, 1, '2017-10-26 08:31:02'),
(143, 84, 1, '2017-10-26 08:31:22'),
(144, 85, 1, '2017-10-26 08:38:03'),
(145, 85, 1, '2017-10-26 08:38:05'),
(146, 85, 1, '2017-10-26 08:38:11'),
(147, 85, 1, '2017-10-26 08:38:13'),
(148, 85, 1, '2017-10-26 08:38:14'),
(149, 85, 1, '2017-10-26 08:38:15'),
(150, 85, 1, '2017-10-26 08:38:16'),
(151, 85, 1, '2017-10-26 08:38:17'),
(152, 85, 1, '2017-10-26 08:38:18'),
(153, 85, 1, '2017-10-26 08:38:19'),
(154, 85, 1, '2017-10-26 08:38:20'),
(155, 85, 1, '2017-10-26 08:38:21'),
(156, 85, 1, '2017-10-26 08:38:22'),
(157, 85, 1, '2017-10-26 08:38:23'),
(158, 84, 1, '2017-10-26 10:04:00'),
(159, 84, 1, '2017-10-26 10:09:54'),
(160, 84, 1, '2017-10-26 10:10:01'),
(161, 84, 1, '2017-10-26 10:10:01'),
(162, 84, 1, '2017-10-26 10:10:02'),
(163, 84, -1, '2017-10-26 10:10:05'),
(164, 84, -1, '2017-10-26 10:10:06'),
(165, 84, -1, '2017-10-26 10:10:06'),
(166, 84, -1, '2017-10-26 10:10:07'),
(167, 84, -1, '2017-10-26 10:10:07'),
(168, 84, -1, '2017-10-26 10:10:07'),
(169, 84, -1, '2017-10-26 10:10:08'),
(170, 84, -1, '2017-10-26 10:10:08'),
(171, 84, -1, '2017-10-26 10:10:09'),
(172, 67, 1, '2017-10-26 14:20:59'),
(173, 67, 1, '2017-10-26 14:21:09'),
(174, 67, 1, '2017-10-26 14:21:24'),
(175, 67, 1, '2017-10-26 14:21:25'),
(176, 67, 1, '2017-10-26 14:21:26'),
(177, 67, 1, '2017-10-26 14:21:27'),
(178, 67, 1, '2017-10-26 14:21:27'),
(179, 67, 1, '2017-10-26 14:21:27'),
(180, 67, 1, '2017-10-26 14:21:28'),
(181, 84, -1, '2017-10-27 14:18:46'),
(182, 84, -1, '2017-10-27 14:18:46'),
(183, 84, -1, '2017-10-27 14:18:48'),
(184, 84, -1, '2017-10-27 14:18:48'),
(185, 84, -1, '2017-10-27 14:18:48'),
(186, 84, 1, '2017-10-27 14:26:40'),
(187, 84, 1, '2017-10-27 14:26:47'),
(188, 84, 1, '2017-10-27 14:26:51'),
(189, 84, 1, '2017-10-27 14:26:52'),
(190, 84, 1, '2017-10-27 14:26:53'),
(191, 84, 1, '2017-10-27 14:26:54'),
(192, 84, 1, '2017-10-27 14:26:55'),
(193, 84, 1, '2017-10-27 14:26:56'),
(194, 84, 1, '2017-10-27 14:26:56'),
(195, 84, 1, '2017-10-27 14:26:57'),
(196, 84, 1, '2017-10-27 14:26:57'),
(197, 84, 1, '2017-10-27 14:26:58'),
(198, 84, 1, '2017-10-27 14:26:59'),
(199, 84, -1, '2017-10-27 14:29:25'),
(200, 84, -1, '2017-10-27 14:29:25'),
(201, 84, -1, '2017-10-27 14:29:26'),
(202, 84, -1, '2017-10-27 14:29:26'),
(203, 84, -1, '2017-10-27 14:29:27'),
(204, 84, -1, '2017-10-27 14:29:28'),
(205, 84, -1, '2017-10-27 14:29:28'),
(206, 84, -1, '2017-10-27 14:29:29'),
(207, 84, -1, '2017-10-27 14:29:30'),
(208, 84, -1, '2017-10-27 14:29:30'),
(209, 84, -1, '2017-10-27 14:29:31'),
(210, 84, -1, '2017-10-27 14:29:31'),
(211, 84, -1, '2017-10-27 14:29:31'),
(212, 84, -1, '2017-10-27 14:29:32'),
(213, 84, -1, '2017-10-27 14:29:32'),
(214, 84, -1, '2017-10-27 14:29:32'),
(215, 84, 1, '2017-10-27 14:29:44'),
(216, 84, -1, '2017-10-27 14:29:49'),
(217, 84, 1, '2017-10-27 14:29:54'),
(218, 84, 1, '2017-10-27 14:29:55'),
(219, 84, 1, '2017-10-27 14:30:46'),
(220, 84, 1, '2017-10-27 14:30:47'),
(221, 84, 1, '2017-10-27 14:30:48'),
(222, 84, -1, '2017-10-27 14:31:01'),
(223, 84, -1, '2017-10-27 14:31:01'),
(224, 84, 1, '2017-10-27 14:31:09'),
(225, 84, 1, '2017-10-27 14:31:09'),
(226, 84, 1, '2017-10-27 14:31:10'),
(227, 84, 1, '2017-10-27 14:31:10'),
(228, 84, 1, '2017-10-27 14:31:11'),
(229, 84, 1, '2017-10-27 14:31:11'),
(230, 84, -1, '2017-10-27 14:31:21'),
(231, 84, -1, '2017-10-27 14:31:23'),
(232, 84, -1, '2017-10-27 14:31:24'),
(233, 84, 1, '2017-10-27 14:38:16'),
(234, 84, 1, '2017-10-27 14:38:21'),
(235, 84, 1, '2017-10-27 14:38:23'),
(236, 84, 1, '2017-10-27 14:40:15'),
(237, 84, 1, '2017-10-27 14:41:55'),
(238, 84, 1, '2017-10-27 14:41:55'),
(239, 84, 1, '2017-10-27 14:41:56'),
(240, 84, 1, '2017-10-27 14:41:56'),
(241, 84, 1, '2017-10-27 14:41:56'),
(242, 84, 1, '2017-10-27 14:41:57'),
(243, 84, 1, '2017-10-27 14:41:58'),
(244, 84, 1, '2017-10-27 14:41:58'),
(245, 84, 1, '2017-10-27 14:41:59'),
(246, 84, 1, '2017-10-27 14:41:59'),
(247, 84, -1, '2017-10-27 14:42:04'),
(248, 84, -1, '2017-10-27 14:42:04'),
(249, 84, -1, '2017-10-27 14:42:05'),
(250, 84, -1, '2017-10-27 14:42:05'),
(251, 84, -1, '2017-10-27 14:42:06'),
(252, 84, -1, '2017-10-27 14:42:06'),
(253, 84, -1, '2017-10-27 14:42:07'),
(254, 84, -1, '2017-10-27 14:42:10'),
(255, 84, -1, '2017-10-27 14:42:10'),
(256, 84, -1, '2017-10-27 14:42:10'),
(257, 84, -1, '2017-10-27 14:42:11'),
(258, 84, -1, '2017-10-27 14:42:12'),
(259, 84, 1, '2017-10-27 14:42:20'),
(260, 84, 1, '2017-10-27 14:42:23'),
(261, 84, 1, '2017-10-27 14:42:26'),
(262, 84, 1, '2017-10-27 14:42:27'),
(263, 84, 1, '2017-10-27 14:42:41'),
(264, 84, -1, '2017-10-27 14:42:42'),
(265, 84, -1, '2017-10-27 14:42:44'),
(266, 84, -1, '2017-10-27 14:42:45'),
(267, 84, -1, '2017-10-27 14:42:54'),
(268, 84, -1, '2017-10-27 14:42:55'),
(269, 84, 1, '2017-10-27 14:43:06'),
(270, 84, 1, '2017-10-27 14:43:12'),
(271, 84, 1, '2017-10-27 14:43:12'),
(272, 84, -1, '2017-10-27 14:43:15'),
(273, 84, -1, '2017-10-27 14:44:23'),
(274, 84, -1, '2017-10-27 14:44:24'),
(275, 84, 1, '2017-10-27 14:44:27'),
(276, 84, -1, '2017-10-27 14:44:29'),
(277, 84, 1, '2017-10-27 14:44:33'),
(278, 84, 1, '2017-10-27 14:44:47'),
(279, 84, 1, '2017-10-27 14:44:52'),
(280, 84, 1, '2017-10-27 14:44:53'),
(281, 84, 1, '2017-10-27 14:44:53'),
(282, 84, 1, '2017-10-27 14:44:54'),
(283, 84, -1, '2017-10-27 14:45:01'),
(284, 84, 1, '2017-10-27 14:45:08'),
(285, 84, 1, '2017-10-27 14:45:08'),
(286, 84, 1, '2017-10-27 14:45:09'),
(287, 84, 1, '2017-10-27 14:45:09'),
(288, 84, 1, '2017-10-27 14:45:10'),
(289, 84, 1, '2017-10-27 14:45:10'),
(290, 84, 1, '2017-10-27 14:45:11'),
(291, 84, 1, '2017-10-27 14:45:11'),
(292, 84, 1, '2017-10-27 14:45:11'),
(293, 84, 1, '2017-10-27 14:45:12'),
(294, 84, 1, '2017-10-27 14:45:12'),
(295, 84, 1, '2017-10-27 14:45:13'),
(296, 84, 1, '2017-10-27 14:45:13'),
(297, 84, 1, '2017-10-27 14:45:14'),
(298, 84, 1, '2017-10-27 14:45:14'),
(299, 84, 1, '2017-10-27 14:45:14'),
(300, 84, 1, '2017-10-27 14:45:15'),
(301, 84, 1, '2017-10-27 14:45:15'),
(302, 84, 1, '2017-10-27 14:45:16'),
(303, 84, -1, '2017-10-27 14:45:17'),
(304, 84, -1, '2017-10-27 14:45:19'),
(305, 84, 1, '2017-10-28 12:35:30'),
(306, 84, 1, '2017-10-28 12:35:33'),
(307, 84, 1, '2017-10-28 12:35:35'),
(308, 84, 1, '2017-10-28 12:35:59'),
(309, 84, 1, '2017-10-28 18:14:16'),
(310, 84, 1, '2017-10-28 18:14:17'),
(311, 84, 1, '2017-10-28 18:14:18'),
(312, 84, 1, '2017-10-28 18:14:19'),
(313, 84, 1, '2017-10-28 18:14:19'),
(314, 84, 1, '2017-10-28 18:14:20'),
(315, 84, 1, '2017-10-28 18:14:20'),
(316, 84, 1, '2017-10-28 18:14:21'),
(317, 84, 1, '2017-10-28 18:14:22'),
(318, 84, -1, '2017-10-28 18:14:22'),
(319, 84, 1, '2017-10-28 18:14:23'),
(320, 84, 1, '2017-10-28 18:14:24'),
(321, 84, 1, '2017-10-28 18:14:25'),
(322, 84, 1, '2017-10-28 18:14:26'),
(323, 84, 1, '2017-10-28 18:14:26'),
(324, 84, 1, '2017-10-28 18:14:28'),
(325, 84, 1, '2017-10-28 18:14:31'),
(326, 84, 1, '2017-10-28 18:14:32'),
(327, 84, 1, '2017-10-28 18:14:32'),
(328, 84, 1, '2017-10-28 18:14:33'),
(329, 84, 1, '2017-10-28 18:14:33'),
(330, 84, 1, '2017-10-28 18:14:34'),
(331, 84, 1, '2017-10-30 14:31:54'),
(332, 84, 1, '2017-10-30 14:31:55'),
(333, 84, 1, '2017-10-30 14:31:56'),
(334, 84, 1, '2017-10-31 12:43:07'),
(335, 84, 1, '2017-10-31 12:43:07'),
(336, 84, 1, '2017-10-31 12:43:08'),
(337, 84, 1, '2017-10-31 12:43:08'),
(338, 84, 1, '2017-10-31 12:43:09'),
(339, 84, 1, '2017-10-31 12:43:09'),
(340, 88, 1, '2017-11-03 13:09:28'),
(341, 88, 1, '2017-11-03 13:09:29'),
(342, 88, 1, '2017-11-03 13:09:30'),
(343, 88, 1, '2017-11-03 14:21:29'),
(344, 65, 1, '2017-11-03 16:45:17'),
(345, 65, 1, '2017-11-03 16:45:18'),
(346, 65, 1, '2017-11-03 16:45:19'),
(347, 65, 1, '2017-11-03 16:45:19'),
(348, 65, 1, '2017-11-03 16:45:19'),
(349, 65, 1, '2017-11-05 15:55:26'),
(350, 65, 1, '2017-11-05 15:55:27'),
(351, 65, 1, '2017-11-05 15:55:29'),
(352, 65, 1, '2017-11-05 15:55:30'),
(353, 65, 1, '2017-11-05 15:55:31'),
(354, 95, 1, '2017-11-06 11:17:33'),
(355, 95, 1, '2017-11-06 11:17:34'),
(356, 95, 1, '2017-11-06 11:17:35'),
(357, 95, 1, '2017-11-06 11:17:35'),
(358, 95, 1, '2017-11-06 11:18:10'),
(359, 95, 1, '2017-11-06 11:18:44'),
(360, 95, 1, '2017-11-06 11:19:30'),
(361, 95, 1, '2017-11-06 11:19:31'),
(362, 95, 1, '2017-11-06 11:19:32'),
(363, 95, 1, '2017-11-06 11:19:32'),
(364, 95, 1, '2017-11-06 11:19:33'),
(365, 95, 1, '2017-11-06 11:19:33'),
(366, 95, 1, '2017-11-06 11:19:34'),
(367, 95, 1, '2017-11-06 11:19:35'),
(368, 95, 1, '2017-11-06 11:19:56'),
(369, 95, 1, '2017-11-06 11:19:57'),
(370, 95, 1, '2017-11-06 11:20:44'),
(371, 95, 1, '2017-11-06 11:20:45'),
(372, 95, 1, '2017-11-06 11:20:47'),
(373, 95, 1, '2017-11-06 11:20:47'),
(374, 94, 1, '2017-11-06 11:32:30'),
(375, 94, 1, '2017-11-06 11:32:30'),
(376, 94, 1, '2017-11-06 11:32:30'),
(377, 94, 1, '2017-11-06 11:32:31'),
(378, 94, 1, '2017-11-06 11:32:31'),
(379, 94, 1, '2017-11-06 11:32:31'),
(380, 94, 1, '2017-11-06 11:32:32'),
(381, 94, 1, '2017-11-06 11:32:32'),
(382, 94, 1, '2017-11-06 11:32:33'),
(383, 94, 1, '2017-11-06 11:32:33'),
(384, 94, 1, '2017-11-06 11:32:33'),
(385, 94, 1, '2017-11-06 11:32:33'),
(386, 94, 1, '2017-11-06 11:32:34'),
(387, 94, 1, '2017-11-06 11:32:35'),
(388, 94, 1, '2017-11-06 11:32:35'),
(389, 94, -1, '2017-11-06 11:46:29'),
(390, 94, -1, '2017-11-06 11:46:30'),
(391, 94, -1, '2017-11-06 11:46:30'),
(392, 94, -1, '2017-11-06 11:46:31'),
(393, 94, -1, '2017-11-06 11:46:31'),
(394, 94, -1, '2017-11-06 11:46:31'),
(395, 94, -1, '2017-11-06 11:46:32'),
(396, 94, -1, '2017-11-06 11:46:32'),
(397, 94, -1, '2017-11-06 11:46:34'),
(398, 94, -1, '2017-11-06 11:46:35'),
(399, 94, -1, '2017-11-06 11:46:35'),
(400, 94, -1, '2017-11-06 11:46:36'),
(401, 94, -1, '2017-11-06 11:46:36'),
(402, 94, -1, '2017-11-06 11:46:37'),
(403, 94, -1, '2017-11-06 11:46:37'),
(404, 94, 1, '2017-11-06 11:46:53'),
(405, 94, 1, '2017-11-06 11:46:53'),
(406, 94, 1, '2017-11-06 11:46:54'),
(407, 94, 1, '2017-11-06 11:46:54'),
(408, 94, 1, '2017-11-06 11:46:55'),
(409, 94, 1, '2017-11-06 11:46:55'),
(410, 94, 1, '2017-11-06 11:46:56'),
(411, 94, 1, '2017-11-06 11:46:56'),
(412, 94, 1, '2017-11-06 11:46:57'),
(413, 94, 1, '2017-11-06 11:46:57'),
(414, 94, 1, '2017-11-06 11:46:57'),
(415, 94, 1, '2017-11-06 11:46:58'),
(416, 94, 1, '2017-11-06 11:46:58'),
(417, 94, 1, '2017-11-06 11:46:59'),
(418, 94, 1, '2017-11-06 11:46:59'),
(419, 65, 1, '2017-11-06 12:42:39'),
(420, 65, 1, '2017-11-06 12:42:39'),
(421, 65, 1, '2017-11-06 12:42:40'),
(422, 65, 1, '2017-11-06 12:42:40'),
(423, 65, 1, '2017-11-06 12:42:41'),
(424, 65, 1, '2017-11-06 12:42:41'),
(425, 65, 1, '2017-11-06 12:42:42'),
(426, 65, 1, '2017-11-06 12:42:43'),
(427, 65, 1, '2017-11-06 12:42:43'),
(428, 65, 1, '2017-11-06 12:42:44'),
(429, 65, 1, '2017-11-06 12:42:44'),
(430, 65, 1, '2017-11-06 12:42:45'),
(431, 65, 1, '2017-11-06 12:42:46'),
(432, 65, 1, '2017-11-06 12:42:47'),
(433, 65, 1, '2017-11-06 12:42:47'),
(434, 65, 1, '2017-11-06 12:42:48'),
(435, 65, 1, '2017-11-06 12:42:48'),
(436, 65, 1, '2017-11-06 12:42:49'),
(437, 65, 1, '2017-11-06 12:42:49'),
(438, 65, 1, '2017-11-06 12:42:50'),
(439, 65, 1, '2017-11-06 12:42:51'),
(440, 65, 1, '2017-11-06 12:42:52'),
(441, 65, 1, '2017-11-06 12:42:53'),
(442, 96, 1, '2017-11-06 14:14:39'),
(443, 96, 1, '2017-11-06 14:14:53'),
(444, 96, 1, '2017-11-06 14:15:02'),
(445, 96, 1, '2017-11-06 14:15:12'),
(446, 96, 1, '2017-11-06 14:16:05'),
(447, 96, 1, '2017-11-06 14:16:39'),
(448, 96, 1, '2017-11-06 14:16:40'),
(449, 96, 1, '2017-11-06 14:16:40'),
(450, 96, 1, '2017-11-06 14:16:41'),
(451, 96, 1, '2017-11-06 14:16:42'),
(452, 95, 1, '2017-11-08 10:59:57'),
(453, 95, 1, '2017-11-08 10:59:58'),
(454, 95, 1, '2017-11-08 10:59:59'),
(455, 95, 1, '2017-11-08 11:00:00'),
(456, 95, 1, '2017-11-08 11:00:00'),
(457, 96, 1, '2017-11-08 13:08:25'),
(458, 96, 1, '2017-11-08 13:08:25'),
(459, 96, 1, '2017-11-08 13:08:26'),
(460, 96, 1, '2017-11-08 13:08:27'),
(461, 96, 1, '2017-11-08 13:08:27'),
(462, 96, 1, '2017-11-08 13:08:28'),
(463, 96, 1, '2017-11-08 13:08:34'),
(464, 96, 1, '2017-11-08 13:19:40'),
(465, 96, 1, '2017-11-08 13:19:42'),
(466, 96, 1, '2017-11-08 13:19:43'),
(467, 96, 1, '2017-11-08 13:19:43'),
(468, 96, 1, '2017-11-08 13:19:45'),
(469, 96, 1, '2017-11-08 13:19:46'),
(470, 96, 1, '2017-11-08 13:19:46'),
(471, 96, 1, '2017-11-08 13:19:50'),
(472, 96, 1, '2017-11-09 09:45:17'),
(473, 96, 1, '2017-11-09 09:45:19'),
(474, 96, 1, '2017-11-09 09:45:19'),
(475, 96, 1, '2017-11-09 09:45:20'),
(476, 96, 1, '2017-11-09 09:45:22'),
(477, 96, 1, '2017-11-09 09:45:22'),
(478, 96, 1, '2017-11-09 09:45:24'),
(479, 96, 1, '2017-11-09 09:45:25'),
(480, 96, 1, '2017-11-09 09:45:27'),
(481, 96, 1, '2017-11-09 09:45:29'),
(482, 96, 1, '2017-11-09 09:45:29'),
(483, 96, 1, '2017-11-09 09:45:31'),
(484, 96, 1, '2017-11-09 09:45:31'),
(485, 96, 1, '2017-11-09 09:45:32'),
(486, 96, 1, '2017-11-09 09:45:34'),
(487, 96, 1, '2017-11-09 09:45:36'),
(488, 96, 1, '2017-11-09 09:45:36'),
(489, 96, 1, '2017-11-09 09:45:37'),
(490, 96, 1, '2017-11-09 09:45:38'),
(491, 96, 1, '2017-11-09 09:45:38'),
(492, 96, 1, '2017-11-09 09:45:39'),
(493, 96, 1, '2017-11-09 09:45:39'),
(494, 96, 1, '2017-11-09 09:45:40'),
(495, 96, 1, '2017-11-09 09:45:41'),
(496, 65, 1, '2017-11-24 15:57:21'),
(497, 65, 1, '2017-11-24 15:57:23'),
(498, 65, 1, '2017-11-24 15:57:23'),
(499, 65, 1, '2017-11-24 15:57:24'),
(500, 65, -1, '2017-11-24 16:00:32'),
(501, 65, -1, '2017-11-24 16:00:33'),
(502, 65, -1, '2017-11-24 16:00:33'),
(503, 65, 1, '2017-11-24 16:01:30'),
(504, 65, 1, '2017-11-24 16:01:30'),
(505, 65, 1, '2017-11-24 16:01:31'),
(506, 65, 1, '2017-11-24 16:01:31'),
(507, 65, -1, '2017-11-24 16:03:39'),
(508, 65, -1, '2017-11-24 16:03:39'),
(509, 65, -1, '2017-11-24 16:05:08'),
(510, 65, -1, '2017-11-24 16:05:09'),
(511, 65, -1, '2017-11-24 16:05:09'),
(512, 65, 1, '2017-11-24 16:05:18'),
(513, 65, 1, '2017-11-24 16:05:18'),
(514, 65, 1, '2017-11-24 16:05:19'),
(515, 65, 1, '2017-11-24 16:05:19'),
(516, 65, 1, '2017-11-24 16:05:19'),
(517, 65, -1, '2017-11-24 16:06:47'),
(518, 65, -1, '2017-11-24 16:06:48'),
(519, 65, -1, '2017-11-24 16:06:48'),
(520, 65, -1, '2017-11-24 16:06:48'),
(521, 65, -1, '2017-11-24 16:06:48'),
(522, 65, 1, '2017-11-24 16:07:51'),
(523, 65, 1, '2017-11-24 16:07:51'),
(524, 65, 1, '2017-11-24 16:07:52'),
(525, 65, 1, '2017-11-24 16:07:52'),
(526, 65, -1, '2017-11-24 16:07:59'),
(527, 65, -1, '2017-11-24 16:08:00'),
(528, 65, -1, '2017-11-24 16:08:01'),
(529, 180, 1, '2017-11-25 16:42:09'),
(530, 180, 1, '2017-11-25 16:42:13'),
(531, 180, 1, '2017-11-25 16:42:15'),
(532, 180, 1, '2017-11-25 16:42:15'),
(533, 180, 1, '2017-11-25 16:42:15'),
(534, 180, 1, '2017-11-25 16:42:16'),
(535, 180, 1, '2017-11-25 16:42:16'),
(536, 180, 1, '2017-11-25 16:42:16'),
(537, 180, 1, '2017-11-25 16:42:17'),
(538, 180, 1, '2017-11-25 16:42:18'),
(539, 180, 1, '2017-11-25 16:42:19'),
(540, 180, 1, '2017-11-25 16:42:19'),
(541, 180, 1, '2017-11-25 16:42:20'),
(542, 180, 1, '2017-11-25 16:42:22'),
(543, 180, 1, '2017-11-25 16:42:22'),
(544, 180, 1, '2017-11-25 16:42:24'),
(545, 180, 1, '2017-11-25 16:42:26'),
(546, 180, 1, '2017-11-25 16:42:26'),
(547, 180, 1, '2017-11-25 16:42:27'),
(548, 180, 1, '2017-11-25 16:42:28'),
(549, 180, 1, '2017-11-25 16:42:29'),
(550, 180, 1, '2017-11-25 16:42:29'),
(551, 180, 1, '2017-11-25 16:42:30'),
(552, 180, 1, '2017-11-25 16:42:31'),
(553, 180, 1, '2017-11-25 16:42:32'),
(554, 180, 1, '2017-11-25 16:42:33'),
(555, 180, 1, '2017-11-25 16:42:34'),
(556, 180, 1, '2017-11-25 16:42:34'),
(557, 180, 1, '2017-11-25 16:42:35'),
(558, 180, 1, '2017-11-25 16:42:35'),
(559, 180, 1, '2017-11-25 16:42:36'),
(560, 180, 1, '2017-11-25 16:42:37'),
(561, 180, 1, '2017-11-25 16:42:37'),
(562, 180, 1, '2017-11-25 16:42:39'),
(563, 180, 1, '2017-11-25 16:42:39'),
(564, 180, 1, '2017-11-25 16:42:40'),
(565, 180, 1, '2017-11-25 16:42:41'),
(566, 180, 1, '2017-11-25 16:42:42'),
(567, 180, 1, '2017-11-25 16:42:43'),
(568, 180, 1, '2017-11-25 16:42:44'),
(569, 180, 1, '2017-11-25 16:42:45'),
(570, 180, 1, '2017-11-25 16:42:46'),
(571, 180, 1, '2017-11-25 16:42:46'),
(572, 180, 1, '2017-11-25 16:42:47'),
(573, 180, 1, '2017-11-25 16:42:48'),
(574, 180, 1, '2017-11-25 16:42:49'),
(575, 180, 1, '2017-11-25 16:42:50'),
(576, 180, 1, '2017-11-25 16:42:50'),
(577, 180, 1, '2017-11-25 16:42:51'),
(578, 180, 1, '2017-11-25 16:42:52'),
(579, 180, 1, '2017-11-25 16:42:53'),
(580, 180, 1, '2017-11-25 16:42:53'),
(581, 180, 1, '2017-11-25 16:42:54'),
(582, 180, 1, '2017-11-25 16:42:55'),
(583, 180, -1, '2017-11-25 16:42:59'),
(584, 67, 1, '2017-11-28 07:56:32'),
(585, 178, 1, '2017-11-28 15:49:39'),
(586, 178, 1, '2017-11-28 15:49:40'),
(587, 178, 1, '2017-11-28 15:49:41'),
(588, 178, 1, '2017-11-28 15:49:42'),
(589, 178, 1, '2017-11-28 15:49:43'),
(590, 178, 1, '2017-11-28 15:49:44'),
(591, 178, 1, '2017-11-28 15:49:44'),
(592, 178, 1, '2017-11-28 15:49:46'),
(593, 178, 1, '2017-11-28 15:49:47'),
(594, 189, 1, '2017-11-30 11:18:32'),
(595, 189, 1, '2017-11-30 11:18:33'),
(596, 189, 1, '2017-11-30 11:18:34'),
(597, 189, 1, '2017-11-30 11:18:35'),
(598, 189, 1, '2017-11-30 11:18:35'),
(599, 189, 1, '2017-11-30 11:18:35'),
(600, 189, 1, '2017-11-30 11:18:36'),
(601, 189, 1, '2017-11-30 11:19:05'),
(602, 189, 1, '2017-11-30 11:19:05'),
(603, 189, 1, '2017-11-30 11:19:06'),
(604, 189, 1, '2017-11-30 11:19:06'),
(605, 189, 1, '2017-11-30 11:19:07'),
(606, 67, 1, '2017-11-30 11:19:52'),
(607, 67, 1, '2017-11-30 11:19:53'),
(608, 67, 1, '2017-11-30 11:19:54'),
(609, 67, 1, '2017-11-30 11:19:54'),
(610, 67, 1, '2017-11-30 11:19:55'),
(611, 67, 1, '2017-11-30 11:19:56'),
(612, 67, 1, '2017-11-30 11:20:14'),
(613, 67, 1, '2017-11-30 11:20:16'),
(614, 67, 1, '2017-11-30 11:20:17'),
(615, 67, 1, '2017-11-30 11:20:18'),
(616, 67, 1, '2017-11-30 11:20:18'),
(617, 189, 1, '2017-11-30 11:22:24'),
(618, 189, 1, '2017-11-30 11:22:24'),
(619, 189, 1, '2017-11-30 11:22:25'),
(620, 189, 1, '2017-11-30 11:22:25'),
(621, 189, 1, '2017-11-30 11:22:25'),
(622, 189, 1, '2017-11-30 11:22:26'),
(623, 189, 1, '2017-11-30 11:22:26'),
(624, 189, -1, '2017-11-30 11:23:48'),
(625, 189, -1, '2017-11-30 11:23:49'),
(626, 189, -1, '2017-11-30 11:23:49'),
(627, 189, -1, '2017-11-30 11:23:50'),
(628, 189, -1, '2017-11-30 11:23:51'),
(629, 189, -1, '2017-11-30 11:23:52'),
(630, 189, -1, '2017-11-30 11:23:52'),
(631, 189, -1, '2017-11-30 11:23:53'),
(632, 189, -1, '2017-11-30 11:23:54'),
(633, 189, -1, '2017-11-30 11:23:55'),
(634, 189, -1, '2017-11-30 11:23:56'),
(635, 189, -1, '2017-11-30 11:23:56'),
(636, 189, -1, '2017-11-30 11:23:57'),
(637, 189, -1, '2017-11-30 11:23:58'),
(638, 189, -1, '2017-11-30 11:23:58'),
(639, 189, -1, '2017-11-30 11:23:59'),
(640, 189, -1, '2017-11-30 11:23:59'),
(641, 189, 1, '2017-11-30 11:24:27'),
(642, 189, 1, '2017-11-30 11:24:28'),
(643, 189, 1, '2017-11-30 11:24:28'),
(644, 189, 1, '2017-11-30 11:24:28'),
(645, 189, 1, '2017-11-30 11:24:28'),
(646, 189, -1, '2017-11-30 11:24:34'),
(647, 189, -1, '2017-11-30 11:24:35'),
(648, 189, -1, '2017-11-30 11:24:35'),
(649, 189, -1, '2017-11-30 11:24:35'),
(650, 189, -1, '2017-11-30 11:24:35'),
(651, 189, -1, '2017-11-30 11:24:36'),
(652, 189, 1, '2017-11-30 11:24:55'),
(653, 189, 1, '2017-11-30 11:24:56'),
(654, 189, 1, '2017-11-30 11:24:56'),
(655, 189, 1, '2017-11-30 11:24:58'),
(656, 189, -1, '2017-11-30 11:25:07'),
(657, 189, -1, '2017-11-30 11:25:08'),
(658, 189, -1, '2017-11-30 11:25:09'),
(659, 189, -1, '2017-11-30 11:25:10'),
(660, 189, 1, '2017-11-30 11:26:06'),
(661, 189, 1, '2017-11-30 11:26:07'),
(662, 189, 1, '2017-11-30 11:26:07'),
(663, 189, 1, '2017-11-30 11:26:08'),
(664, 189, -1, '2017-11-30 11:26:10'),
(665, 189, -1, '2017-11-30 11:26:11'),
(666, 189, -1, '2017-11-30 11:26:11'),
(667, 189, 1, '2017-11-30 11:26:32'),
(668, 189, 1, '2017-11-30 11:26:33'),
(669, 189, 1, '2017-11-30 11:26:33'),
(670, 189, 1, '2017-11-30 11:26:33'),
(671, 189, -1, '2017-11-30 11:26:38'),
(672, 189, -1, '2017-11-30 11:26:39'),
(673, 189, -1, '2017-11-30 11:26:39'),
(674, 189, -1, '2017-11-30 11:26:39'),
(675, 67, -1, '2017-11-30 11:28:17'),
(676, 67, -1, '2017-11-30 11:28:18'),
(677, 67, -1, '2017-11-30 11:28:19'),
(678, 67, -1, '2017-11-30 11:28:20'),
(679, 67, -1, '2017-11-30 11:28:21'),
(680, 67, -1, '2017-11-30 11:28:23'),
(681, 67, -1, '2017-11-30 11:28:24'),
(682, 67, -1, '2017-11-30 11:28:47'),
(683, 67, -1, '2017-11-30 11:28:47'),
(684, 67, -1, '2017-11-30 11:28:48'),
(685, 67, -1, '2017-11-30 11:28:48'),
(686, 67, 1, '2017-11-30 11:28:54'),
(687, 67, 1, '2017-11-30 11:28:55'),
(688, 67, 1, '2017-11-30 11:28:55'),
(689, 67, -1, '2017-11-30 11:29:00'),
(690, 67, 1, '2017-11-30 11:29:37'),
(691, 67, -1, '2017-11-30 11:29:42'),
(692, 67, -1, '2017-11-30 11:29:42'),
(693, 189, 1, '2017-11-30 11:29:47'),
(694, 189, 1, '2017-11-30 11:29:48'),
(695, 189, 1, '2017-11-30 11:29:48'),
(696, 189, 1, '2017-11-30 11:29:48'),
(697, 189, 1, '2017-11-30 11:29:49'),
(698, 189, -1, '2017-11-30 11:29:52'),
(699, 189, -1, '2017-11-30 11:29:53'),
(700, 189, -1, '2017-11-30 11:29:53'),
(701, 189, -1, '2017-11-30 11:29:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity`
--
ALTER TABLE `activity`
 ADD PRIMARY KEY (`id`), ADD KEY `activity_ibfk_1` (`activity_category_id`);

--
-- Индексы таблицы `activity_category`
--
ALTER TABLE `activity_category`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
 ADD PRIMARY KEY (`id`), ADD KEY `devices_ibfk_1` (`user_id`);

--
-- Индексы таблицы `exercises`
--
ALTER TABLE `exercises`
 ADD PRIMARY KEY (`id`), ADD KEY `exercises_ibfk_1` (`user_id`), ADD KEY `exercises_ibfk_2` (`activity_category_id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
 ADD PRIMARY KEY (`id`), ADD KEY `food_ibfk_1` (`food_category_id`);

--
-- Индексы таблицы `food_category`
--
ALTER TABLE `food_category`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`id`), ADD KEY `profile_ibfk_1` (`user_id`);

--
-- Индексы таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
 ADD PRIMARY KEY (`id`), ADD KEY `profile_photo_ibfk_1` (`profile_id`);

--
-- Индексы таблицы `reminder`
--
ALTER TABLE `reminder`
 ADD PRIMARY KEY (`id`), ADD KEY `reminder_ibfk_1` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`), ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `user_food`
--
ALTER TABLE `user_food`
 ADD PRIMARY KEY (`id`), ADD KEY `user_food_ibfk_1` (`user_id`), ADD KEY `user_food_ibfk_2` (`food_category_id`);

--
-- Индексы таблицы `water`
--
ALTER TABLE `water`
 ADD PRIMARY KEY (`id`), ADD KEY `water_ibfk_1` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activity`
--
ALTER TABLE `activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `activity_category`
--
ALTER TABLE `activity_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT для таблицы `exercises`
--
ALTER TABLE `exercises`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `food_category`
--
ALTER TABLE `food_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT для таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT для таблицы `reminder`
--
ALTER TABLE `reminder`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT для таблицы `user_food`
--
ALTER TABLE `user_food`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT для таблицы `water`
--
ALTER TABLE `water`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=702;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `activity`
--
ALTER TABLE `activity`
ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`activity_category_id`) REFERENCES `activity_category` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `devices`
--
ALTER TABLE `devices`
ADD CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `exercises`
--
ALTER TABLE `exercises`
ADD CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `exercises_ibfk_2` FOREIGN KEY (`activity_category_id`) REFERENCES `activity_category` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `food`
--
ALTER TABLE `food`
ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`food_category_id`) REFERENCES `food_category` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
ADD CONSTRAINT `profile_photo_ibfk_1` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reminder`
--
ALTER TABLE `reminder`
ADD CONSTRAINT `reminder_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `user_food`
--
ALTER TABLE `user_food`
ADD CONSTRAINT `user_food_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `user_food_ibfk_2` FOREIGN KEY (`food_category_id`) REFERENCES `food_category` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `water`
--
ALTER TABLE `water`
ADD CONSTRAINT `water_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
