-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 27 2022 г., 19:11
-- Версия сервера: 8.0.11
-- Версия PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `petshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`ID`, `Name`) VALUES
(1, 'Уходовые средства'),
(2, 'Питание для животных'),
(3, 'Игрушки для животных'),
(4, 'Лекарственные средства'),
(5, 'корм для рыб'),
(6, 'Кори для хомяков'),
(7, 'Корм для хомяков'),
(8, 'игрушка для хомяка'),
(9, 'корм для попугаев');

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`ID`, `Name`, `Address`) VALUES
(1, 'Зоосалон', 'ул. Ленина, 16'),
(2, 'Зоомагия', 'ул. Макаренко, 34'),
(3, 'Умка', 'ул. Бронная, 54'),
(4, 'Зообум', 'Красный проспект, 78'),
(5, 'ул Ленина, 98', 'в мире животных'),
(6, 'зоошоп', 'ул мира, 6'),
(7, 'зоомагазин \"пчелка\"', 'ул. Советская, 65'),
(8, 'мир рыб', 'ул. Покрышкина, 45');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_product`
--

CREATE TABLE `shop_product` (
  `ID_Shop` int(11) NOT NULL,
  `ID_Product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `shop_product`
--

INSERT INTO `shop_product` (`ID_Shop`, `ID_Product`) VALUES
(3, 1),
(2, 2),
(1, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `shop_product`
--
ALTER TABLE `shop_product`
  ADD UNIQUE KEY `ID_Shop` (`ID_Shop`),
  ADD UNIQUE KEY `ID_Name` (`ID_Product`),
  ADD UNIQUE KEY `ID_Shop_4` (`ID_Shop`),
  ADD KEY `ID_Shop_2` (`ID_Shop`),
  ADD KEY `ID_Shop_3` (`ID_Shop`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `shop_product_ibfk_1` FOREIGN KEY (`ID_Shop`) REFERENCES `shop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shop_product_ibfk_2` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
