-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 03 Gru 2022, 00:01
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `store_stock_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `date_created`, `description`) VALUES
(5, 'People', 1, '2022-12-01 14:11:13', '&lt;p&gt;People Description&amp;nbsp;People Description&amp;nbsp;People Description&amp;nbsp;People Description&amp;nbsp;People Description&amp;nbsp;People Description&amp;nbsp;People Description&amp;nbsp;People Description&lt;br&gt;&lt;/p&gt;'),
(6, 'Animals', 1, '2022-12-01 14:11:49', '&lt;p&gt;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&amp;nbsp;Animals Description&lt;br&gt;&lt;/p&gt;'),
(7, 'Landscapes', 1, '2022-12-01 14:12:14', '&lt;p&gt;Landscapes Description&amp;nbsp;Landscapes Description&amp;nbsp;Landscapes Description&amp;nbsp;Landscapes Description&amp;nbsp;Landscapes Description&amp;nbsp;Landscapes Description Landscapes Description&lt;br&gt;&lt;/p&gt;'),
(8, 'Art', 1, '2022-12-01 14:12:53', '&lt;p&gt;Art Description&amp;nbsp;Art Description&amp;nbsp;Art Description Art Description&amp;nbsp;Art Description&amp;nbsp;Art Description&amp;nbsp;Art Description&lt;br&gt;&lt;/p&gt;'),
(9, 'Electronics', 1, '2022-12-01 14:13:32', '&lt;p&gt;Electronics&amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Electronics&amp;nbsp;&lt;/span&gt;&lt;/p&gt;'),
(10, 'Clothing', 1, '2022-12-01 14:13:45', '&lt;p&gt;Clothing&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothing&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `default_delivery_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double(10,2) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(5, 5, 200, 20.00, '2022-12-01 14:24:11', NULL),
(6, 6, 2022, 15.00, '2022-12-01 14:27:24', NULL),
(7, 7, 200, 12.00, '2022-12-01 14:28:39', NULL),
(8, 8, 200, 20.00, '2022-12-02 21:59:00', NULL),
(9, 10, 100, 17.00, '2022-12-02 21:59:35', '2022-12-02 22:02:32'),
(10, 11, 250, 19.00, '2022-12-02 21:59:56', '2022-12-02 22:02:38'),
(11, 9, 300, 25.00, '2022-12-02 22:00:20', '2022-12-02 22:02:43'),
(12, 12, 220, 19.00, '2022-12-02 22:02:11', '2022-12-02 22:02:48'),
(13, 13, 120, 25.00, '2022-12-02 22:04:49', NULL),
(14, 14, 240, 18.00, '2022-12-02 22:08:33', NULL),
(15, 15, 330, 30.00, '2022-12-02 22:10:04', NULL),
(16, 16, 250, 12.00, '2022-12-02 22:11:29', NULL),
(17, 17, 260, 24.00, '2022-12-02 22:12:37', NULL),
(18, 18, 200, 40.00, '2022-12-02 22:14:32', NULL),
(19, 19, 160, 30.00, '2022-12-02 22:15:51', NULL),
(20, 20, 130, 29.00, '2022-12-02 22:17:29', NULL),
(21, 21, 290, 32.00, '2022-12-02 22:19:10', NULL),
(22, 22, 310, 28.00, '2022-12-02 22:22:13', NULL),
(23, 23, 255, 27.00, '2022-12-02 22:23:25', NULL),
(24, 24, 230, 18.00, '2022-12-02 22:24:58', NULL),
(25, 25, 170, 19.00, '2022-12-02 22:27:05', NULL),
(26, 26, 290, 20.00, '2022-12-02 22:29:30', NULL),
(27, 27, 300, 14.00, '2022-12-02 22:30:54', NULL),
(28, 28, 280, 26.00, '2022-12-02 22:33:10', NULL),
(29, 29, 220, 22.00, '2022-12-02 22:34:22', NULL),
(30, 30, 180, 23.00, '2022-12-02 22:35:28', NULL),
(31, 31, 300, 33.00, '2022-12-02 22:36:51', NULL),
(32, 32, 290, 24.00, '2022-12-02 22:38:06', NULL),
(33, 33, 190, 26.00, '2022-12-02 22:40:01', NULL),
(34, 34, 200, 19.00, '2022-12-02 22:41:53', NULL),
(35, 35, 220, 29.00, '2022-12-02 22:43:59', NULL),
(36, 36, 300, 24.00, '2022-12-02 22:45:40', NULL),
(37, 37, 250, 19.00, '2022-12-02 22:46:35', NULL),
(38, 39, 280, 35.00, '2022-12-02 22:50:08', NULL),
(39, 40, 298, 22.00, '2022-12-02 22:53:09', NULL),
(40, 41, 300, 32.00, '2022-12-02 22:55:10', NULL),
(41, 42, 320, 18.00, '2022-12-02 22:56:37', NULL),
(42, 43, 340, 25.00, '2022-12-02 22:57:58', NULL),
(43, 44, 235, 21.00, '2022-12-02 22:59:28', NULL),
(44, 45, 270, 28.00, '2022-12-02 23:04:24', NULL),
(45, 46, 300, 28.00, '2022-12-02 23:05:47', NULL),
(46, 47, 230, 20.00, '2022-12-02 23:07:23', NULL),
(47, 48, 190, 24.00, '2022-12-02 23:09:26', NULL),
(48, 49, 350, 30.00, '2022-12-02 23:10:34', NULL),
(49, 50, 270, 26.00, '2022-12-02 23:11:42', NULL),
(50, 51, 199, 24.00, '2022-12-02 23:13:00', NULL),
(51, 52, 235, 28.00, '2022-12-02 23:15:17', NULL),
(52, 53, 340, 39.00, '2022-12-02 23:16:33', NULL),
(53, 54, 289, 32.00, '2022-12-02 23:18:23', NULL),
(54, 38, 260, 22.00, '2022-12-02 23:19:58', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `product_id`, `quantity`, `price`, `total`) VALUES
(1, 1, 2, 1, 35, 35),
(2, 1, 1, 2, 25, 50),
(3, 4, 3, 2, 25, 50);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sub_category_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(250) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `status`, `date_created`, `title`, `author`, `description`) VALUES
(5, 5, 9, 1, '2022-12-01 14:23:41', 'Starsza pani', 'Autor Starszej Pani', '&lt;p&gt;Opis Starszej Pani&amp;nbsp;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;span style=\\&quot;font-size: 1rem;\\&quot;&gt;Opis Starszej Pani&amp;nbsp;&lt;/span&gt;&lt;/p&gt;'),
(6, 5, 8, 1, '2022-12-01 14:27:01', 'Pani w Białej Czapce', 'Autor Pani w Białej Czapce', '&lt;p&gt;Opis Pani w Białej Czapce&lt;br&gt;&lt;/p&gt;'),
(7, 8, 16, 1, '2022-12-01 14:28:22', 'Postać Anime', 'Autor Postać Anime', '&lt;p&gt;Postać Anime Postać Anime&amp;nbsp;Postać Anime&amp;nbsp;Postać Anime&amp;nbsp;Postać Anime&amp;nbsp;Postać Anime&lt;br&gt;&lt;/p&gt;'),
(8, 5, 8, 1, '2022-12-02 21:47:57', 'Szaman', 'Autor Szaman', '&lt;p&gt;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&amp;nbsp;Szaman&lt;br&gt;&lt;/p&gt;'),
(9, 8, 17, 1, '2022-12-02 21:49:45', 'Kittiie', 'Autor Kittiie', '&lt;p&gt;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&amp;nbsp;Kittiie&lt;br&gt;&lt;/p&gt;'),
(10, 8, 17, 1, '2022-12-02 21:51:34', 'Oko ze Snu', 'Autor Oko ze snu', '&lt;p&gt;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&amp;nbsp;Oko ze Snu&lt;br&gt;&lt;/p&gt;'),
(11, 8, 17, 1, '2022-12-02 21:52:21', 'Mały Jedi', 'Autor Mały Jedi', '&lt;p&gt;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&amp;nbsp;Mały Jedi&lt;br&gt;&lt;/p&gt;'),
(12, 5, 8, 1, '2022-12-02 22:01:51', 'Indianin z Pióropuszem', 'Autor Indianin z Pióropuszem', '&lt;p&gt;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&amp;nbsp;Indianin z Pi&oacute;ropuszem&lt;br&gt;&lt;/p&gt;'),
(13, 6, 19, 1, '2022-12-02 22:04:17', 'Byczek i Kwiatek', 'Autor Byczek i Kwiatek', '&lt;p&gt;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&amp;nbsp;Byczek i Kwiatek&lt;br&gt;&lt;/p&gt;'),
(14, 6, 19, 1, '2022-12-02 22:08:14', 'Żubr po LSD', 'Autor Żubr po LSD', '&lt;p&gt;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&amp;nbsp;Żubr po LSD&lt;br&gt;&lt;/p&gt;'),
(15, 8, 17, 1, '2022-12-02 22:09:48', 'Imagination', 'Autor Imagination', '&lt;p&gt;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&amp;nbsp;Imagination&lt;br&gt;&lt;/p&gt;'),
(16, 8, 17, 1, '2022-12-02 22:11:07', 'Mały Robot', 'Autor Mały robot', '&lt;p&gt;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&amp;nbsp;Mały Robot&lt;br&gt;&lt;/p&gt;'),
(17, 6, 19, 1, '2022-12-02 22:12:18', 'Dziki Sonic', 'Autor Dziki Sonic', '&lt;p&gt;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&amp;nbsp;Dziki Sonic&lt;br&gt;&lt;/p&gt;'),
(18, 5, 8, 1, '2022-12-02 22:14:12', 'Kobieta Cyberpunk', 'Autor Kobieta Cyberpunk', '&lt;p&gt;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&amp;nbsp;Kobieta Cyberpunk&lt;br&gt;&lt;/p&gt;'),
(19, 8, 17, 1, '2022-12-02 22:15:32', 'Elegancki Jaszczur', 'Autor Elegancki Jaszczur', '&lt;p&gt;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&amp;nbsp;Elegancki Jaszczur&lt;br&gt;&lt;/p&gt;'),
(20, 7, 11, 1, '2022-12-02 22:16:50', 'Brama do Innego Wymiaru', 'Autor Brama do Innego Wymiaru', '&lt;p&gt;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&amp;nbsp;Brama do Innego Wymiaru&lt;br&gt;&lt;/p&gt;'),
(21, 6, 19, 1, '2022-12-02 22:18:52', 'Żaba Odkrywca', 'Autor Żaba Odkrywca', '&lt;p&gt;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&amp;nbsp;Żaba Odkrywca&lt;br&gt;&lt;/p&gt;'),
(22, 8, 16, 1, '2022-12-02 22:21:55', 'Dziewczyna z Krawatem', 'Autor Dziewczyna z Krawatem', '&lt;p&gt;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&amp;nbsp;Dziewczyna z Krawatem&lt;br&gt;&lt;/p&gt;'),
(23, 5, 8, 1, '2022-12-02 22:23:06', 'Ludzie Natury', 'Autor Ludzie Natury', '&lt;p&gt;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&amp;nbsp;Ludzie Natury&lt;br&gt;&lt;/p&gt;'),
(24, 5, 9, 1, '2022-12-02 22:24:38', 'Techno Batman', 'Autor Techno Batman', '&lt;p&gt;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&amp;nbsp;Techno Batman&lt;br&gt;&lt;/p&gt;'),
(25, 8, 16, 1, '2022-12-02 22:26:36', 'Samuraj Kwitnącej Wiśni', 'Autor Samuraj Kwitnącej Wiśni', '&lt;p&gt;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&amp;nbsp;Samuraj Kwitnącej Wiśni&lt;br&gt;&lt;/p&gt;'),
(26, 8, 16, 1, '2022-12-02 22:29:09', 'Złotowłosa', 'Autor Złotowłosa', '&lt;p&gt;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&amp;nbsp;Złotowłosa&lt;br&gt;&lt;/p&gt;'),
(27, 7, 11, 1, '2022-12-02 22:30:30', 'Dom nad Wodą', 'Autor Dom nad Wodą', '&lt;p&gt;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&amp;nbsp;Dom nad Wodą&lt;br&gt;&lt;/p&gt;'),
(28, 8, 17, 1, '2022-12-02 22:32:29', 'Pies Przyszłości', 'Autor Pies Przyszłości', '&lt;p&gt;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&amp;nbsp;Pies Przyszłości&lt;br&gt;&lt;/p&gt;'),
(29, 8, 17, 1, '2022-12-02 22:34:01', 'Księżycowy Zamek', 'Autor Księżycowy Zamek', '&lt;p&gt;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&amp;nbsp;Księżycowy Zamek&lt;br&gt;&lt;/p&gt;'),
(30, 5, 9, 1, '2022-12-02 22:35:09', 'Akt', 'Autor Akt', '&lt;p&gt;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&amp;nbsp;Akt&lt;br&gt;&lt;/p&gt;'),
(31, 6, 19, 1, '2022-12-02 22:36:36', 'Zmarszcz Nos Owca', 'Autor Zmarszcz Nos Owca', '&lt;p&gt;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&amp;nbsp;Zmarszcz Nos Owca&lt;br&gt;&lt;/p&gt;'),
(32, 8, 16, 1, '2022-12-02 22:37:40', 'Przerwa na Kawę', 'Autor Przerwa na Kawę', '&lt;p&gt;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&amp;nbsp;Przerwa na Kawę&lt;br&gt;&lt;/p&gt;'),
(33, 5, 8, 1, '2022-12-02 22:39:26', 'Toczący Kamień', 'Autor Toczący Kamień', '&lt;p&gt;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&amp;nbsp;Toczący Kamień&lt;br&gt;&lt;/p&gt;'),
(34, 8, 17, 1, '2022-12-02 22:41:40', 'Miłość Oceanu', 'Autor Miłość Oceanu', '&lt;p&gt;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&amp;nbsp;Miłość Oceanu&lt;br&gt;&lt;/p&gt;'),
(35, 7, 11, 1, '2022-12-02 22:43:32', 'Góry Orle', 'Autor Góry Orle', '&lt;p&gt;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&amp;nbsp;G&oacute;ry Orle&lt;br&gt;&lt;/p&gt;'),
(36, 8, 17, 1, '2022-12-02 22:45:10', 'Moc Owoców', 'Autor Moc Owoców', '&lt;p&gt;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&amp;nbsp;Moc Owoc&oacute;w&lt;br&gt;&lt;/p&gt;'),
(37, 5, 8, 1, '2022-12-02 22:46:18', 'Brązowe Oczy', 'Autor Brązowe Oczy', '&lt;p&gt;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&amp;nbsp;Brązowe Oczy&lt;br&gt;&lt;/p&gt;'),
(38, 8, 17, 1, '2022-12-02 22:48:13', 'Kobieta w Masce', 'Autor Kobieta w Masce', '&lt;p&gt;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&amp;nbsp;Kobieta w Masce&lt;br&gt;&lt;/p&gt;'),
(39, 8, 16, 1, '2022-12-02 22:49:50', 'Ronin w Mieście', 'Autor Ronin w Mieście', '&lt;p&gt;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&amp;nbsp;Ronin w Mieście&lt;br&gt;&lt;/p&gt;'),
(40, 8, 17, 1, '2022-12-02 22:52:46', 'Kot z Akwarium', 'Autor Kot z Akwarium', '&lt;p&gt;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&amp;nbsp;Kot z Akwarium&lt;br&gt;&lt;/p&gt;'),
(41, 8, 17, 1, '2022-12-02 22:54:52', 'Proszę Piwo dla Pingu ', 'Autor Proszę Piwo dla Pingu ', '&lt;p&gt;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&amp;nbsp;Proszę Piwo dla Pingu&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(42, 5, 8, 1, '2022-12-02 22:56:11', 'Wrogie Zamiary', 'Autor Wrogie Zamiary', '&lt;p&gt;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&amp;nbsp;Wrogie Zamiary&lt;br&gt;&lt;/p&gt;'),
(43, 5, 9, 1, '2022-12-02 22:57:38', 'Amazonka', 'Autor Amazonka', '&lt;p&gt;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&amp;nbsp;Amazonka&lt;br&gt;&lt;/p&gt;'),
(44, 8, 17, 1, '2022-12-02 22:59:09', 'Grill', 'Autor Grill', '&lt;p&gt;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill&amp;nbsp;Grill Grill Grill&amp;nbsp;Grill&amp;nbsp;Grill Grill&lt;br&gt;&lt;/p&gt;'),
(45, 8, 17, 1, '2022-12-02 23:04:04', 'Lich', 'Autor Lich', '&lt;p&gt;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&amp;nbsp;Lich&lt;br&gt;&lt;/p&gt;'),
(46, 5, 8, 1, '2022-12-02 23:05:32', 'Hapek', 'Autor Hapek', '&lt;p&gt;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&amp;nbsp;Hapek&lt;br&gt;&lt;/p&gt;'),
(47, 8, 17, 1, '2022-12-02 23:06:35', 'Hamlet', 'Autor Hamlet', '&lt;p&gt;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet Hamlet&amp;nbsp;Hamlet&amp;nbsp;Hamlet Hamlet&lt;br&gt;&lt;/p&gt;'),
(48, 6, 19, 1, '2022-12-02 23:08:56', 'Slytherin', 'Autor Slytherin', '&lt;p&gt;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&amp;nbsp;Slytherin&lt;br&gt;&lt;/p&gt;'),
(49, 5, 8, 1, '2022-12-02 23:10:15', 'Mroczna Kobieta', 'Autor Mroczna Kobieta', '&lt;p&gt;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&amp;nbsp;Mroczna Kobieta Mroczna Kobieta&amp;nbsp;Mroczna Kobieta&lt;br&gt;&lt;/p&gt;'),
(50, 8, 17, 1, '2022-12-02 23:11:18', 'Słoneczna dama', 'Autor Słoneczna dama', '&lt;p&gt;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&amp;nbsp;Słoneczna dama&lt;br&gt;&lt;/p&gt;'),
(51, 5, 8, 1, '2022-12-02 23:12:43', 'Książe Nowego Yorku', 'Autor Książe Nowego Yorku', '&lt;p&gt;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&amp;nbsp;Książe Nowego Yorku&lt;br&gt;&lt;/p&gt;'),
(52, 8, 17, 1, '2022-12-02 23:14:52', 'Wróżka Zębuszka', 'Autor Wróżka Zębuszka', '&lt;p&gt;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka&amp;nbsp;Wr&oacute;żka Zębuszka Wr&oacute;żka Zębuszka&lt;br&gt;&lt;/p&gt;'),
(53, 5, 9, 1, '2022-12-02 23:16:18', 'Święty Mikołaj', 'Autor Święty Mikołaj', '&lt;p&gt;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj Święty Mikołaj&amp;nbsp;Święty Mikołaj&amp;nbsp;Święty Mikołaj&lt;br&gt;&lt;/p&gt;'),
(54, 10, 14, 1, '2022-12-02 23:18:03', 'Suknia Wieczorowa', 'Autor Suknia Wieczorowa', '&lt;p&gt;Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa Suknia Wieczorowa Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa&amp;nbsp;Suknia Wieczorowa&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(30) NOT NULL,
  `parent_id` int(30) NOT NULL,
  `sub_category` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `parent_id`, `sub_category`, `status`, `date_created`, `description`) VALUES
(8, 5, 'Faces', 1, '2022-12-01 14:16:22', '&lt;p&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Faces&amp;nbsp;Faces&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(9, 5, 'Body ', 1, '2022-12-01 14:16:35', '&lt;p&gt;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;Body&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(10, 5, 'Clothes', 1, '2022-12-01 14:16:55', '&lt;p&gt;Clothes&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothes&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothes&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothes&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Clothes&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(11, 7, 'Mountains', 1, '2022-12-01 14:17:27', '&lt;p&gt;Mountains&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Mountains&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(12, 7, 'Fields', 1, '2022-12-01 14:17:55', '&lt;p&gt;Fields&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Fields&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;'),
(13, 9, 'Phones', 1, '2022-12-01 14:18:23', '&lt;p&gt;Phones&amp;nbsp;Phones&amp;nbsp;Phones&amp;nbsp;Phones&amp;nbsp;Phones&amp;nbsp;Phones&amp;nbsp;Phones&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(14, 10, 'Black', 1, '2022-12-01 14:18:45', '&lt;p&gt;Black&amp;nbsp;Black&amp;nbsp;Black&amp;nbsp;Black&amp;nbsp;Black&amp;nbsp;Black&amp;nbsp;Black&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(15, 10, 'White', 1, '2022-12-01 14:19:03', '&lt;p&gt;White&amp;nbsp;White&amp;nbsp;White&amp;nbsp;White&amp;nbsp;White&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(16, 8, 'Anime', 1, '2022-12-01 14:19:20', '&lt;p&gt;Anime&amp;nbsp;Anime&amp;nbsp;AnimeAnime&amp;nbsp;AnimeAnimeAnime&amp;nbsp;Anime&amp;nbsp;Anime&amp;nbsp;Anime&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(17, 8, 'Paintings', 1, '2022-12-01 14:19:46', '&lt;p&gt;Paintings&amp;nbsp;Paintings&amp;nbsp;Paintings&amp;nbsp;Paintings&amp;nbsp;Paintings&amp;nbsp;Paintings&amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(18, 6, 'Pets', 1, '2022-12-01 14:20:28', '&lt;p&gt;Pets&amp;nbsp;Pets&amp;nbsp;Pets&amp;nbsp;Pets&amp;nbsp;Pets&amp;nbsp;Pets&amp;nbsp;&lt;br&gt;&lt;/p&gt;'),
(19, 6, 'Wild animals', 1, '2022-12-01 14:20:52', '&lt;p&gt;Wild animals&amp;nbsp;Wild animals&amp;nbsp;Wild animals&amp;nbsp;Wild animalsWild animals&amp;nbsp;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Image Shop'),
(6, 'short_name', 'Images'),
(11, 'logo', 'uploads/image_logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1626397620_images.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT dla tabeli `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
