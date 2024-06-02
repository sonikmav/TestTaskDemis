-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2024 г., 01:53
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `contacts`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `fullName` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`ID`, `fullName`, `address`, `phone`, `email`) VALUES
(2, 'Мяв', 'Россия, г Тамбов, ул Полынковская, д 12', '+79084696120', 'koltsovasofya@vk.com'),
(3, 'Я Котёнок', 'Тамбог', '+79123456789', 'koltsovasofya@vk.com'),
(8, 'Мяв', 'Россия, г Тамбов, ул Полынковская, д 12', '+79084696120', 'koltsovasofya@vk.com'),
(10, 'Мявxs', 'Россия, г Тамбов, ул Полынковская, д 12', '+79084696120', 'koltsovasofyam@gmail.com'),
(11, 'Мяв', 'Россия, г Тамбов, ул Полынковская, д 12', '+79084696120', 'koltsovasofyam@gmail.com'),
(12, 'hgdfs', 'sdsfasd', '+79084696120', 'koltsovasofya@vk.com');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Text` text NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`ID`, `Name`, `Text`, `Data`) VALUES
(1, 'Первая новость', 'Текст первой новости. Сэр да сэр', '2024-05-09'),
(2, 'Вторая новость', 'Текст второй новости. Люди любят котов', '2024-05-17'),
(3, 'Третья новость', 'Текст третьей новости. Нашенская', '2024-05-21'),
(4, 'Четвертая новость', 'Текст четвертой новости. Вышла Дота 3', '2024-05-29'),
(5, 'Пятая новость', 'Текст пятой новости. Да здравствует 52', '2024-06-01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
