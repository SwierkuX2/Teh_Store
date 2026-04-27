-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2026 at 09:51 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teh_store_database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `img` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `img`, `category`) VALUES
(4, 'sluchawki', 3000, 'https://th.bing.com/th/id/OIP.tB9yDPpF3RoeWIWClVLqRAHaIz?w=157&h=186&c=7&r=0&o=7&pid=1.7&rm=3', 'sluchawki'),
(5, 'Myszka', 5000, 'https://th.bing.com/th/id/OIP.JEQPyalKtwNskiX1Ky_VHAHaHa?w=175&h=180&c=7&r=0&o=7&pid=1.7&rm=3', 'myszki'),
(7, 'Monitor', 5000, 'https://th.bing.com/th/id/OIP.KWtq0RUIAfu9ZYZwJp0QjgHaEw?w=255&h=180&c=7&r=0&o=7&pid=1.7&rm=3', 'monitory'),
(8, 'Ram', 10000, 'https://th.bing.com/th/id/OIP.ljn72w--268N85CVa75lrQHaFF?w=265&h=182&c=7&r=0&o=7&pid=1.7&rm=3', 'ram');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `haslo` varchar(255) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `email`, `haslo`, `nazwa`, `role`) VALUES
(11, 'Admin123@gmail.com', '$2b$10$0XzIyA4GvFMEKKDzBVRch.z5ykcAPsS0Id5B4sYZbQD.tU8XdFUTS', 'Admin123', 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
