-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 30 2017 г., 18:04
-- Версия сервера: 5.6.31
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `activity`
--

INSERT INTO `activity` (`id`, `name`, `activity_category_id`, `working_weight`, `number_of_approaches`, `number_of_repetitions`, `interval_between_approaches`, `technique`, `training_time`, `specification`, `important`, `cal`, `fats`, `image`, `created_at`) VALUES
(1, 'Activity_1', 1, '60 lbs', '4 time', '15 time', '1,5 min', 'The weight rests bla-bla...', '15 min', 'Some specification', 'Not dropping down low enough', '33', '50', 'activity_images/1756.jpg', '2017-10-18 10:03:02'),
(2, 'Activity_2', 1, '50 lbs', '5 time', '22 time', '1 min', 'The weight rests bla-bla...', '25 min', 'Specification', 'Not dropping down low enough', '52', '113', 'activity_images/1225478471_gg3589.jpg', '2017-10-18 10:03:03');

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
(1, 'Football', 'category_images/football.jpg', '2017-10-17 13:33:07'),
(2, 'Basketball', 'category_images/basketball.jpg', '2017-10-17 13:33:07'),
(3, 'Tennis', 'category_images/tennis.jpg', '2017-10-17 13:34:06'),
(4, 'Baseball', 'category_images/baseball.jpg', '2017-10-17 13:34:06');

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `user_id`, `device_token`, `type`) VALUES
(2, 12, 'ljshdgi58o7ghoilsgh', 'ios'),
(3, 12, 'sdfgdsfg', 'ios');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `exercises`
--

INSERT INTO `exercises` (`id`, `user_id`, `activity_category_id`, `min`, `burned_cal`, `daily_goal`, `created_at`) VALUES
(1, 6, 1, 90, 333, 1500, '2017-10-25 06:40:29');

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
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `food`
--

INSERT INTO `food` (`id`, `name`, `food_category_id`, `cal`, `grams`, `proteins`, `fats`, `carbohydrates`, `directions`, `image`, `created_at`) VALUES
(1, 'Food_1', 1, '500', '1000', '100', '33', '11', 'Some text', 'food_images/food-712665_960_720.jpg', '2017-10-18 10:42:35'),
(2, 'Food_2', 1, '410', '450', '97', '58', '19', 'Some directions', 'photo-70497.jpg', '2017-10-18 10:42:35');

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
(1, 'Fish', 'category_images/fish.jpg', '2017-10-17 13:23:11'),
(2, 'Meat', 'category_images/meat.jpg', '2017-10-17 13:23:11'),
(3, 'Bread', 'category_images/bread.jpg', '2017-10-17 13:23:37'),
(4, 'Milk', 'category_images/milk.jpg', '2017-10-17 13:23:55');

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
(1, 'New Car', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'news_images/Sports_Car_Front_View-512.png', '2017-10-18 15:30:15'),
(2, 'Paper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'news_images/News.jpg', '2017-10-18 15:30:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `current_weight`, `bust`, `waist`, `hips`, `thigh`, `forearm`, `chest`, `created_at`) VALUES
(18, 6, 44, 34, 54, 57, 65, 32, 43, '2017-10-03 01:30:09'),
(19, 9, 33, 33, 33, 33, 33, 33, 33, '2017-10-06 12:59:57');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `reminder`
--

INSERT INTO `reminder` (`id`, `user_id`, `message`, `time`, `reiterate`, `push`) VALUES
(1, 12, 'Test message', '13:48', 'everyday', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `avatar`, `background_image`, `auth_key`, `password_hash`, `password_reset_token`, `birthday`, `country`, `gender`, `height`, `desired_weight`, `email`, `status`, `created_at`) VALUES
(1, 'Admin', NULL, NULL, 'dklsjhgljdfhg', 'skdfhjgbg58yuh', NULL, NULL, NULL, NULL, NULL, NULL, 'prybylov1.v@gmail.com', 0, '2017-09-29 21:00:00'),
(6, 'Vasya', 'avatars/59d4c655b1ca8.jpg', NULL, 'k9KmzLCa2fVAcLIgm-Mv0ZN6W2DluQvx', '$2y$13$hXgOWEPT5gQtYPSokOeOdOxH50jvq/8T2IXp0ySOBjlajWaolK.me', NULL, NULL, NULL, NULL, NULL, NULL, 'test@gmail.com', 0, '2017-09-30 10:02:24'),
(9, 'ALALA', 'avatars/59de1e971f4fd.jpg', 'background_images/59de1e971f4f9.jpg', 'IMYvMozSGPndkSTfafZZyvJOrZ1g4Qgq', '$2y$13$IhXITN88wklA3vNx6uS45.82e7AWsh3zPWIS.FygAiIAhrh.60Pl6', NULL, '12-12-2010', 'USA', 0, NULL, NULL, 'test.test@test.test', 0, '2017-09-30 10:37:57'),
(12, 'Максим Снигур', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/18486023_1892726050945540_2779060632811534807_n.jpg?oh=94616775167ba06dc39bcabb811ea5c1&oe=5A4B1D54', NULL, 'A9a6gk1U_EmK9x1NnjEFjlyMMFm8gxQt', '$2y$13$OlfvIdrnCp6WR7xJa/t8pOHAFM34XhyqdmWvwDPFWirMmzmlb3BkS', NULL, NULL, NULL, NULL, NULL, NULL, 'snigur@16x.zp.ua', 0, '2017-10-02 09:43:59'),
(13, 'Vasya', 'Not set', NULL, '2jevYFNr6b0nCDqlgOMoBtWGn4Un20bW', '$2y$13$AQihNh1se4Air0UqyoPW6OEDhfgIuv0ZOierxrmNCozDuNdP6KBni', NULL, NULL, NULL, NULL, NULL, NULL, 'test@gmail1.com', 0, '2017-10-10 09:06:22');

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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_food`
--

INSERT INTO `user_food` (`id`, `user_id`, `food_category_id`, `product_name`, `protein`, `fat`, `carbs`, `created_at`) VALUES
(1, 6, 1, 'Some product', 33, 29, 12, '2017-10-30 14:43:59'),
(2, 6, 1, 'Some product', 33, 29, 12, '2017-10-30 14:44:24');

-- --------------------------------------------------------

--
-- Структура таблицы `water`
--

CREATE TABLE IF NOT EXISTS `water` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cup` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `water`
--

INSERT INTO `water` (`id`, `user_id`, `cup`, `created_at`) VALUES
(3, 6, 1, '2017-10-25 12:38:11'),
(4, 6, 1, '2017-10-25 12:38:11'),
(5, 6, -1, '2017-10-25 12:38:23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_ibfk_1` (`activity_category_id`);

--
-- Индексы таблицы `activity_category`
--
ALTER TABLE `activity_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_ibfk_1` (`user_id`);

--
-- Индексы таблицы `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercises_ibfk_1` (`user_id`),
  ADD KEY `exercises_ibfk_2` (`activity_category_id`);

--
-- Индексы таблицы `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_ibfk_1` (`food_category_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_ibfk_1` (`user_id`);

--
-- Индексы таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_photo_ibfk_1` (`profile_id`);

--
-- Индексы таблицы `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminder_ibfk_1` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Индексы таблицы `user_food`
--
ALTER TABLE `user_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_food_ibfk_1` (`user_id`),
  ADD KEY `user_food_ibfk_2` (`food_category_id`);

--
-- Индексы таблицы `water`
--
ALTER TABLE `water`
  ADD PRIMARY KEY (`id`),
  ADD KEY `water_ibfk_1` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `profile_photo`
--
ALTER TABLE `profile_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `user_food`
--
ALTER TABLE `user_food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `water`
--
ALTER TABLE `water`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
