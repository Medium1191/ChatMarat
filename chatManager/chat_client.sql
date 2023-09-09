-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 20 2023 г., 03:33
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat_client`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `client_from` int(11) NOT NULL,
  `nickname_from` varchar(255) NOT NULL,
  `client_to` int(11) NOT NULL,
  `nickname_to` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `client_from`, `nickname_from`, `client_to`, `nickname_to`, `message`, `time`) VALUES
(1, 1, 'KasperDev2', 1, 'KasperDev', 'Сообщение пользователю', '2023-08-19 15:55:59'),
(2, 2, 'KasperDev', 0, '', 'Сообщение всем', '2023-08-19 15:57:33'),
(3, 1, 'KasperDev', 0, '', 'KasperTop', '2023-08-20 03:42:15'),
(4, 1, 'KasperDev', 2, 'Kasper12345', 'Kasdasdasdasdasdasdasd', '2023-08-20 03:47:50'),
(5, 1, 'KasperDev', 2, 'Kasper12345', 'Ti Gavno', '2023-08-20 03:58:29'),
(6, 1, 'KasperDev', 0, '', 'All you gavno', '2023-08-20 04:17:00'),
(7, 1, 'KasperDev', 1, 'KasperDev', 'asdasdasdasdasd', '2023-08-20 04:33:28');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `login`, `password`) VALUES
(1, 'KasperDev', 'Kasper', '12345'),
(2, 'Kasper12345', 'Kasper12345', 'Kasper12345'),
(3, 'Kasper52045', 'Kasper52045', '123456');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
