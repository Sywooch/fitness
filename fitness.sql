-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 19 2017 г., 16:40
-- Версия сервера: 5.6.37
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
  `important` varchar(255) DEFAULT NULL,
  `cal` varchar(50) DEFAULT NULL,
  `fats` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `activity`
--

INSERT INTO `activity` (`id`, `name`, `activity_category_id`, `working_weight`, `number_of_approaches`, `number_of_repetitions`, `interval_between_approaches`, `technique`, `important`, `cal`, `fats`, `image`, `created_at`) VALUES
(1, 'Activity_1', 1, '60 lbs', '4 time', '15 time', '1,5 min', 'The weight rests bla-bla...', 'Not dropping down low enough', '33', '35', 'activity_images/1756.jpg', '2017-10-18 07:03:02'),
(2, 'Activity_2', 1, '50 lbs', '5 time', '22 time', '1 min', 'The weight rests bla-bla...', 'Not dropping down low enough', '50', '113', 'activity_images/1225478471_gg3589.jpg', '2017-10-18 07:03:03');

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
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_token`, `type`) VALUES
(1, 65, 'SIMULATOR', 'ios'),
(2, 66, 'd9cda08121615c294d401b3fd4ee6e69d7b2c563ecc29188632544b1d49cda31', 'ios'),
(3, 68, '4ed2000db155e366a404cc6a81413307ba7e9afd28ff3a5c468071d78a285246', 'ios'),
(4, 69, '4ed2000db155e366a404cc6a81413307ba7e9afd28ff3a5c468071d78a285246', 'ios'),
(5, 70, '4ed2000db155e366a404cc6a81413307ba7e9afd28ff3a5c468071d78a285246', 'ios'),
(6, 71, 'SIMULATOR', 'ios'),
(7, 72, 'SIMULATOR', 'ios'),
(8, 73, 'SIMULATOR', 'ios'),
(9, 74, 'SIMULATOR', 'ios'),
(10, 75, 'SIMULATOR', 'ios'),
(11, 76, 'SIMULATOR', 'ios'),
(12, 77, 'SIMULATOR', 'ios'),
(13, 78, 'SIMULATOR', 'ios'),
(14, 79, 'dde7e57f3124e92f1c7f0702a3c23513d55c9abcac1e90084e4482be4e73a9b7', 'ios'),
(15, 65, '369b106195649d40200309d938d79deaa2a0ddd9e3890768d060b5e06c5369c0', 'ios'),
(16, 65, '3c2fc2a3663e5455ad8f05f0eccc2fa8a85786e29038e83f35d8f31cb2269f4c', 'ios'),
(17, 80, 'SIMULATOR', 'ios'),
(18, 81, 'SIMULATOR', 'ios'),
(19, 65, '66efbf2f0afe19d8b187d4e2ea1456e926595e8e535b827d37c8b84105be2b7d', 'ios'),
(20, 82, 'SIMULATOR', 'ios');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `name`, `food_category_id`, `cal`, `grams`, `proteins`, `fats`, `carbohydrates`, `directions`, `specification`, `image`, `created_at`) VALUES
(1, 'Food_1', 1, '500', '1000', '145', '23', '11', 'Some text', 'text', 'food_images/food-712665_960_720.jpg', '2017-10-18 07:42:35'),
(2, 'Food_2', 1, '348', '500', '39', '98', '19', 'Some directions', 'text text', 'food_images/photo-70497.jpg', '2017-10-18 07:42:35');

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
(2, 'Paper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'news_images/News.jpg', '2017-10-18 12:30:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `current_weight`, `bust`, `waist`, `hips`, `thigh`, `forearm`, `chest`, `created_at`) VALUES
(129, 65, 90, 90, 90, 90, 90, 90, 90, '2017-10-12 12:44:01'),
(130, 67, 86, 123, 123, 123, 123, 123, 123, '2017-10-12 14:32:08'),
(131, 66, 12, 12, 12, 75, 25, 335, 66, '2017-10-12 15:06:01'),
(132, 67, 85, 123, 123, 123, 123, 123, 123, '2017-10-12 15:08:23'),
(133, 67, 87, 123, 123, 123, 213, 123, 123, '2017-10-12 15:09:32'),
(134, 67, 123, 123, 123, 123, 123, 123, 123, '2017-10-12 15:12:39'),
(135, 66, 25, 31, 45, 78, 138, 45, 31, '2017-10-12 15:38:01'),
(136, 67, 125, 125, 125, 125, 125, 125, 125, '2017-10-12 15:50:52'),
(137, 67, 23, 54, 235, 84, 123, 6, 56, '2017-10-12 15:55:14'),
(138, 66, 32, 56, 85, 22, 53, 55, 66, '2017-10-12 15:55:41'),
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
(157, 82, 17, 17, 10, 17, 17, 10, 17, '2017-10-17 06:50:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile_photo`
--

INSERT INTO `profile_photo` (`id`, `profile_id`, `user_id`, `photo`, `created_at`) VALUES
(1, 131, 66, 'result_photos/59df84da41394.jpg', '2017-10-12 15:06:02'),
(2, 131, 66, 'result_photos/59df84da425fe.jpg', '2017-10-12 15:06:02'),
(3, 131, 66, 'result_photos/59df84da42f19.jpg', '2017-10-12 15:06:02'),
(4, 131, 66, 'result_photos/59df84da43a2e.jpg', '2017-10-12 15:06:02'),
(5, 131, 66, 'result_photos/59df84da43eb6.jpg', '2017-10-12 15:06:02'),
(6, 131, 66, 'result_photos/59df84da44426.jpg', '2017-10-12 15:06:02'),
(7, 134, 67, 'result_photos/59df866b9c942.jpg', '2017-10-12 15:12:43'),
(8, 134, 67, 'result_photos/59df866b9d99b.jpg', '2017-10-12 15:12:43'),
(9, 134, 67, 'result_photos/59df866b9e33d.jpg', '2017-10-12 15:12:43'),
(10, 135, 66, 'result_photos/59df8c59c59f1.jpg', '2017-10-12 15:38:01'),
(11, 136, 67, 'result_photos/59df8f613646e.jpg', '2017-10-12 15:50:57'),
(12, 136, 67, 'result_photos/59df8f61377bc.jpg', '2017-10-12 15:50:57'),
(13, 137, 67, 'result_photos/59df9069a209c.jpg', '2017-10-12 15:55:21'),
(14, 137, 67, 'result_photos/59df9069a3420.jpg', '2017-10-12 15:55:21'),
(15, 137, 67, 'result_photos/59df9069a3c4f.jpg', '2017-10-12 15:55:21'),
(16, 137, 67, 'result_photos/59df9069a4801.jpg', '2017-10-12 15:55:21'),
(17, 138, 66, 'result_photos/59df907dd952f.jpg', '2017-10-12 15:55:41'),
(18, 138, 66, 'result_photos/59df907ddaea4.jpg', '2017-10-12 15:55:41'),
(19, 138, 66, 'result_photos/59df907ddb815.jpg', '2017-10-12 15:55:41'),
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
(47, 156, 65, 'result_photos/59e45c3bcda59.jpg', '2017-10-16 07:14:03');

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
  `push` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reminder`
--

INSERT INTO `reminder` (`id`, `user_id`, `message`, `time`, `reiterate`, `push`) VALUES
(88, 65, 'wake up', '07:20', '2', 1);

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
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `avatar`, `background_image`, `auth_key`, `password_hash`, `password_reset_token`, `birthday`, `country`, `gender`, `height`, `desired_weight`, `email`, `status`, `created_at`) VALUES
(65, 'Data', 'avatars/59e3c48c116e9.jpg', 'background_images/59e3c48c116a3.jpg', 'VZ_7wmJgT3FMKzDsWRWSfR-fQXsi-244', '$2y$13$wfXmro3Z14ecuro7O5/DLOjCdKzy1JVqlsQ6qKO98UvzPfRRrWdzm', NULL, '3-10-1994', 'Ukraine', 1, 178, 100, 'data.evrolab@gmail.com', 0, '2017-10-12 12:42:58'),
(66, 'user userovich', 'avatars/59e07893ba632.jpg', 'background_images/59e07893ba5f0.jpg', 'mzPkwWZW89RHUoFyyYEPo-S7phLRiLUI', '$2y$13$NnnLE3XLSjM1UeoEaf8Lb.5Umv/WZ/1yWyXQRQbeO9p9LL1amRCBq', NULL, '11-10-2017', 'Ukraine', 1, NULL, NULL, 'user@user.user', 0, '2017-10-12 13:55:14'),
(67, 'Roma Ganzha', 'avatars/59e0b1d48a8c4.jpg', 'background_images/59e0b1d48a87e.jpg', 't8vnHwzY966LcOGnB4fJo8FUCQQCbBZr', '$2y$13$IDg6uunrbWywM9w9H7Qa3e2UNTxuVofmFjBupeZbHqJshASw4r4Zm', 'GSqqYkTBQO0034uvhDCbaMQHW1viQ4aG_1507880186', '3-10-1994', 'Ukraine', 1, 194, 95, 'roma.g.evrolab@gmail.com', 0, '2017-10-12 14:31:22'),
(68, 'test', 'Not set', NULL, 'W9TFnJ7cngW1cu8Lommg0wEOFerhons7', '$2y$13$ZiJjiBA0yWt7o1XNlAvDrOeInuHEPHTOEZz9q60afJJ1mLrcRL3DG', NULL, NULL, NULL, NULL, NULL, NULL, 'test@test.test', 0, '2017-10-13 09:26:40'),
(69, 'test test', 'avatars/59e090b0ecbce.jpg', 'background_images/59e090b0ecb88.jpg', 'aQmVIAWvvgu38esiwbqjF_OPFdXfwb_Z', '$2y$13$Zn69SpgPc5KWQxMmPcys3.sP8EUQ7YUcHmmGyh7GP9i.S6KqYLsR6', NULL, '15-10-2017', 'Test', 1, 33, 33, 'test@test-test.test', 0, '2017-10-13 09:34:08'),
(70, 'art', 'avatars/59e08a10de361.jpg', 'background_images/59e08a10de31b.jpg', '2tZMXAKZ2vRY3MThVk9deam4Mn8LROPC', '$2y$13$Yxr9zFn/p8lczQwE0iZkp.Penk4colJQHLs/guNoQ6IFNWBeZTZXa', NULL, '18-10-2017', 'Ahaha', 1, 1215, 151, 'art@usmai.is', 0, '2017-10-13 09:38:55'),
(71, 'pop', 'Not set', NULL, 'e7cPbCz-A2GEXYiw_u6IMHyK74Bgp8ng', '$2y$13$DiXVwtKjWFD4T4H.oZpaBOvTNa2q1jGX2FSPmIMEHAIF7q/iK3hH6', NULL, NULL, NULL, NULL, NULL, NULL, 'pop@pop.pop', 0, '2017-10-13 09:41:16'),
(72, 'pop2', 'Not set', NULL, '_dP5JV157xwJKkjWbEc4A7QyJN6Hvp-p', '$2y$13$5h9e2BrZQP5C39s.swVy2u2Gl40pza3e1okHFA4NV6yPSJlBE8tjC', NULL, NULL, NULL, NULL, NULL, NULL, 'pop@rpop.pop', 0, '2017-10-13 09:42:46'),
(73, 'iPhone X', 'Not set', NULL, '19ZosHyQphwfKKeH26_x15CeI_Ithsr4', '$2y$13$aDqVHMt2hsmq6a3rsoyQeuhxUyACm4qblzVCisx0P3FKUCqNg9MyC', NULL, NULL, NULL, NULL, NULL, NULL, 'iPhone@ten.com', 0, '2017-10-13 11:52:55'),
(74, 'sign', 'Not set', NULL, 'Vnm-6LYd6MdgVfCHP6ngE_KgHyS8Loq6', '$2y$13$3DjVk/X1DWHcBGO4yJFXN.PvSSEFxOhR0x3LnLFGApyvOjIzghYju', NULL, NULL, NULL, NULL, NULL, NULL, 'sign@sign.sign', 0, '2017-10-13 11:57:50'),
(75, 'asdsadq', 'avatars/59e0b39ae7c65.jpg', 'Not set', 'rVLv4jp9PmbxHhNrFVBtoabKWwc0_98U', '$2y$13$P8hyHDAcSQWi8fcegTs0du1wskVoaQmOf4i5jWFCCNBCwr5MCfR36', NULL, '12-10-2017', 'Try', 1, 123, 12312, 'sweet@asdl.xl', 0, '2017-10-13 12:01:45'),
(76, 'tyuiojn', 'avatars/59e0b207cc8d2.jpg', 'background_images/59e0b207cc88b.jpg', 'tN1cN9G6Vel3SnVaTsAyxSH-EPfF1sOK', '$2y$13$8lCU84LfHR901W/FcHQ8WuDmjqSnfkWodLGTwr8dFTh0KWHbfoyje', NULL, '4-10-2017', 'Gods', 1, 432, 43, 'hjuiop@jiop.ds', 0, '2017-10-13 12:30:31'),
(77, 'sd', 'Not set', NULL, 'vcMl-NfLbgrVdHtGbaAmy4dJ9PHnaCMv', '$2y$13$/E1k48flVkpHLTNAN.WdeeeHRIof/ZlxL9564fwWCSAfX1PtWttjC', NULL, NULL, NULL, NULL, NULL, NULL, 'soqwdqd@asdas.cl', 0, '2017-10-13 12:38:16'),
(78, 'sdas', 'Not set', NULL, 'Xv-eRcTFg49vTQv4KWQwPZUCGMQR7reg', '$2y$13$MaXeEFY3bDsXkZaZO8KEc.ccnoxnbotbTa3JADfoFmc4rqiaCmHVi', NULL, NULL, NULL, NULL, NULL, NULL, 'asdasdasd@ddf.cl', 0, '2017-10-13 12:50:09'),
(79, 'hi', 'Not set', NULL, 'COpjE15n6FSY9slntrRMwZqhbxRqQbVz', '$2y$13$2OQUCCRe1YizgvOQkWv41uxdvtSdzy.wTQqv/R56zkuMH5zVOWWZy', NULL, NULL, NULL, NULL, NULL, NULL, 'hi@hi.hi', 0, '2017-10-13 12:55:41'),
(80, 'ahaha', 'avatars/59e0d2fa00e0c.jpg', 'Not set', 'fVMvOEn_udAK0F0EtmGvf5TsabfAO7pb', '$2y$13$u06t4S2.dISITi1qg73X9.D1HIM44j27GGAZKx3B.UcpKel0I.Ak.', NULL, '4545', 'Haha', 1, 455, 554, 'shh@sj.isi', 0, '2017-10-13 14:46:43'),
(81, 'iPhone 7 Plus', 'avatars/59e454c710f31.jpg', 'background_images/59e454c710eec.jpg', 'Cv6VdrdRceRDeur-Rbs5POSQ4VvwUdhX', '$2y$13$s3LazvQSZZ/rOhanVLGxueqs7RXN1ys2//KFCVGhJKLa9mCv//1WW', NULL, '16-09-2016', 'USA', 1, 3, 3, 'iphone@seven.com', 0, '2017-10-16 06:39:39'),
(82, 'Tuesday ', 'avatars/59e5a832ca548.jpg', 'Not set', 'bk--m2EIXW-ChwgC2nxyxiT7FqRYj4Ju', '$2y$13$MZRwtykxLpskW.23/3uOeuMl7jfxytjxRvwPwWv.iB3tqATayNsnm', NULL, '17-10-2017', 'Tuesday', 1, 10, 17, 'tuesday@tuesday.com', 0, '2017-10-17 06:49:12');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `food`
--
ALTER TABLE `food`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT для таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблицы `reminder`
--
ALTER TABLE `reminder`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
