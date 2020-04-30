-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 30 2020 г., 04:47
-- Версия сервера: 10.4.8-MariaDB
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dbmidka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `t_company`
--

CREATE TABLE `t_company` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `repos` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t_company`
--

INSERT INTO `t_company` (`id`, `created_at`, `deleted_at`, `updated_at`, `user_email`, `name`, `phone`, `profession`, `repos`) VALUES
(1, '2020-04-30 00:00:00', NULL, NULL, 'Facebook@gmail.com', 'Facebook', '+888888888', 'Web Developer', 'We need web developers with good skills like: Html, css, js, Spring Boot.'),
(2, '2020-04-28 00:00:00', NULL, NULL, 'VK@gmail.com', 'VK', '+777777777', 'Back-end Developer', 'We need Back-end developers with skills like: JS, Jquery, PHP, Django.'),
(3, '2020-04-30 04:02:10', NULL, NULL, 'Instagram@gmail.com', 'INSTAGRAM', '+999999999', 'Mobile Developer', 'We need hard work Developers with skills like: Android developer, IOS developer, will be a plus if you know  Angular '),
(4, '2020-04-30 00:00:00', NULL, NULL, 'Microsoft@boot.com', 'Microsoft', '+111111111', '.Net Developers', 'We need hard work .net Developers.'),
(5, '2020-04-24 00:00:00', NULL, NULL, 'Google@gmail.com', 'Google', '+222222222', 'Cleaner', 'We need cleaners for our office.'),
(6, '2020-04-30 00:00:00', NULL, NULL, 'Twitter@mail.ru', 'Twitter', '+123456789', 'Software developer', 'We need software developers.');

-- --------------------------------------------------------

--
-- Структура таблицы `t_roles`
--

CREATE TABLE `t_roles` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t_roles`
--

INSERT INTO `t_roles` (`id`, `created_at`, `deleted_at`, `updated_at`, `role`) VALUES
(1, '2020-04-28 00:00:00', NULL, NULL, 'ROLE_ADMIN'),
(2, '2020-04-28 00:00:00', NULL, NULL, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Структура таблицы `t_users`
--

CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `repos` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t_users`
--

INSERT INTO `t_users` (`id`, `created_at`, `deleted_at`, `updated_at`, `user_email`, `fname`, `lname`, `user_password`, `data`, `phone`, `profession`, `repos`) VALUES
(1, NULL, '2020-04-30 01:53:37', NULL, 'a@gmail.com', 'Balgynbek', 'Duisen', '$2y$12$uQ6ACR.2h6J0XjswQy6MFOJnfU5.YRE8mRGIgFnn7vJYPdVqqgH.y\r\n', NULL, NULL, NULL, NULL),
(2, NULL, '2020-04-30 02:19:27', NULL, 'b@gmail.com', 'BbbB', 'LllL', '$2y$12$uQ6ACR.2h6J0XjswQy6MFOJnfU5.YRE8mRGIgFnn7vJYPdVqqgH.y\r\n', NULL, NULL, NULL, NULL),
(5, '2020-04-28 15:31:32', NULL, NULL, 'Chika.chikalok@gmail.com', 'Bolat', 'Chikaa', '$2a$10$k480LQQFLGzPLmwwvf8n9ez3Qw4MvnkiPhdOufnfe7aTdeUvuMWTC', NULL, '+7 (747) 499-12-03', 'Web Developer', NULL),
(6, '2020-04-29 12:49:20', '2020-04-29 18:01:10', NULL, 'al@al', 'Tum', 'almaty', '$2a$10$8AWgFadbrEHE4UNx/KkdwuZz87LIxOtCoRTF4t/1CfmNMZUyHsyrS', NULL, '+7 (747) 499-12-03', 'Alee', NULL),
(7, '2020-04-29 17:46:13', '2020-04-29 17:47:15', NULL, 'asdd@gmail.com', 'Turtaev', 'Diyas', '$2a$10$U29gA0S3/CMGx4CvaDf8d.LOu5NtVBFKHrg/gLj5ZXvrLff3Lqzke', NULL, '+7 (747) 499-12-03', 'Web Developer', NULL),
(8, '2020-04-29 17:51:53', '2020-04-29 17:56:09', NULL, 'cc@gg', 'cc', 'cc', '$2a$10$s0O.smej4JpRfBHPpQZAZeTcpTWENcV0x/H0buGiY4qCjmKtRvtQC', NULL, 'asd', 'asd', NULL),
(9, '2020-04-29 20:18:49', NULL, NULL, 'asdasd@ass', 'asdsad', 'asdasd', '$2a$10$6X0OUv.jEH386hpfdlU10.ydT4md5PdQEtkRqa4c15Y1OUQicWepG', NULL, NULL, NULL, NULL),
(10, '2020-04-30 01:55:29', NULL, NULL, 'a@a', 'Balgynbek', 'Duisen', '$2a$10$hQN1XOkm.cxBFqSJ0YOUb.tIOQqS32f.ZAGUoPj1oglOsB7yygt3W', NULL, 'aaaaaa', 'Web Developer', NULL),
(11, '2020-04-30 02:20:52', '2020-04-30 02:22:15', NULL, 'hola@gmail.com', 'Hello', 'Hi', '$2a$10$fpURQzZEgo2xYsVEhPKKAeAYPvALj0XETDsaJsR8lmUJr/.d/5uOC', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `t_users_roles`
--

CREATE TABLE `t_users_roles` (
  `users_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t_users_roles`
--

INSERT INTO `t_users_roles` (`users_id`, `roles_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 1),
(9, 1),
(10, 1),
(11, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `t_company`
--
ALTER TABLE `t_company`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t_users_roles`
--
ALTER TABLE `t_users_roles`
  ADD PRIMARY KEY (`users_id`,`roles_id`),
  ADD KEY `FK9qf4n9htwf2hlfnqoucqmyeg9` (`roles_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `t_company`
--
ALTER TABLE `t_company`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
