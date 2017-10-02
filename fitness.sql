-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2017 г., 13:00
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
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `avatar`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`) VALUES
(1, 'Admin', NULL, 'dklsjhgljdfhg', 'skdfhjgbg58yuh', NULL, 'prybylov1.v@gmail.com', 0, '2017-09-29 21:00:00'),
(6, 'Vasya', NULL, 'P6IlrvwsM6oxXXptjmcjDGjC3BlOpB4o', '$2y$13$1S55fgkihhaPFwxKSAghmOFXDvnKDLFbYUGo2WT./pmvTSOoUw4tC', NULL, 'test@gmail.com', 0, '2017-09-30 10:02:24'),
(9, 'test', 'avatars/59cf8e6808ed5.jpg', 'IMYvMozSGPndkSTfafZZyvJOrZ1g4Qgq', '$2y$13$IhXITN88wklA3vNx6uS45.82e7AWsh3zPWIS.FygAiIAhrh.60Pl6', NULL, 'prybylov.v@gmail.com', 0, '2017-09-30 10:37:57'),
(12, 'Максим Снигур', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p200x200/18486023_1892726050945540_2779060632811534807_n.jpg?oh=94616775167ba06dc39bcabb811ea5c1&oe=5A4B1D54', 'A9a6gk1U_EmK9x1NnjEFjlyMMFm8gxQt', '$2y$13$OlfvIdrnCp6WR7xJa/t8pOHAFM34XhyqdmWvwDPFWirMmzmlb3BkS', NULL, 'snigur@16x.zp.ua', 0, '2017-10-02 09:43:59');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
