-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 07:25 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `body` mediumtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `title`, `body`, `created_at`) VALUES
(3, 'Updated Title', 'Test Body', '2018-04-12 15:30:02'),
(4, 'test', 'sadsds', '2018-04-12 17:09:16'),
(5, 'tesing with vuejs', 'shit this is fun', '2018-04-12 17:09:38'),
(6, 'edited test', '456', '2018-04-12 17:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `receipes`
--

CREATE TABLE `receipes` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipes`
--

INSERT INTO `receipes` (`id`, `description`) VALUES
(1, 'This is recipe 1'),
(2, 'recepi 2'),
(3, 'lorem ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marquis Dicki', 'tierra.tillman@yahoo.com', '$2y$10$owL7PDR5NT42eN1Eqn94POLGRj8TES8yhIPV2Ei24RLXGffjglrTS', 'VUXXdBm3sp4pRVRAhgfRfKKZzqR6FbfSvYs6Xz7HYuFu3m6YSTNiytO3uG2N', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(2, 'Prof. Maybelle White', 'bernier.ivah@gmail.com', '$2y$10$8Mn7VC/w/lxUuw5set/BFe3ApU7dV9wFi5g98gfcNlOadhw9EZa3G', 'z6I566wFfNx4hUpOfnS4lvpk7MuItxAklqkVWNthPSBEiQOuG3B8Yvq7WJdD', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(3, 'Miss Rosetta Tillman Jr.', 'britney.considine@volkman.com', '$2y$10$a7qe9CuYBpXX5bJcqvc6B.cqkKDf6IbPn6yDhB.1PCZuN7TGUEUDm', '97H24Q3xOwH2aNd7RP4GQyoeVza2pjdo2NJLIJHnDihRQWrt2UeuTb9frMI9', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(4, 'Dr. Edna Kilback IV', 'hgoodwin@hane.org', '$2y$10$jjE9nzBnp4SWogxWblnqaeXizxfN/2voQf2ybuBPk2RrkZZrqYT9y', 'T0zmw6Nk47wOeSn0jv1lxdMsttjHdPsI2FOLrkgQbMl7t7y1hdxOSlr7RQAw', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(5, 'Miss Ettie Waters Jr.', 'abernathy.elmira@hotmail.com', '$2y$10$YqxuKbts5y.GgjVY4mvSIusOLtMtVrvRAWb0VzIZyBi5phqNup/z2', 'ep4YXEO51W8VaDs86RvZWVe7O78fhFb1sTsPSLDwC6zNuRdBRbzwzQ1Ljc1K', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(6, 'Armando Auer', 'jacobson.kira@yahoo.com', '$2y$10$.Fn40erx4VXaRR.X32NcoOhqf1OZWwtHm5pJ/YBExRaz7koSTdBvS', 'fpJhNz3MF9c07jV1utFeCrzj8VUNsuMmFx8JhoIBOVflpuVWy4hReOd2bL7m', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(7, 'Tracy Will', 'eulah.effertz@kilback.com', '$2y$10$C5fZo4nKD5fKLLhrgRRRmO3AW4bxsASZubpWOwItC5RIagL98Vlf6', 'kS9JmtpQKaEbAyI4Og3Ezi8A7olcAIXmruYoBzPYqE9efjcILzHLIEghMX4Z', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(8, 'Lurline Sauer', 'quitzon.kadin@yahoo.com', '$2y$10$b6ZLvLGcJYQaM5FozxOAxOvfkXqRPVLTYwjGJ4SRmcKGTwbGWV7zm', 'nDD2j3NVecF6FKttiuQwaWuk4BoG2FHiZLPadWmXYQZiTPFPp8VD0egc5yTT', NULL, '2018-01-09 13:58:01', '2018-01-09 13:58:01'),
(9, 'Adeline Boyer', 'daija57@hotmail.com', '$2y$10$aHB.0TnM.BQVL73X0GQpeuDDUaPQ1j4hUqqMYRXV4LqqTG45n61Oi', 'rKHKUlQDMdxCnbkfZHOGbI1Bu3TZaaRW62lBFFDy4jsaAM24M4Db2VAQzalo', NULL, '2018-01-09 13:58:02', '2018-01-09 13:58:02'),
(10, 'Mrs. Amalia Kuphal III', 'tyree65@hotmail.com', '$2y$10$S44MohPTRIP.HZ1ZHcoHZ.6Y2WkStW4KEM5uJUNBtGHhTN4Q8jayO', 'h7Xjfpx5OUvxNP9VZ92mHcQKJd5GgGPVgUfjQQTEvpE3zF1LbzLDgB7X3hl6', NULL, '2018-01-09 13:58:02', '2018-01-09 13:58:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `receipes`
--
ALTER TABLE `receipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `receipes`
--
ALTER TABLE `receipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
