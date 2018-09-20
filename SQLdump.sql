-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table films.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_film_id_index` (`film_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.comments: 1 rows
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `film_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 6, 'asd', 'aaaaa', '2018-09-20 09:18:01', '2018-09-20 09:18:01'),
	(2, 14, 'Maksat Jumayev', 'Zebras have excellent eyesight. It is believed that they can see in color. Like most ungulates, the zebra\'s eyes are on the  sides of its head, giving it a wide field of view.', '2018-09-20 12:36:52', '2018-09-20 12:36:52'),
	(3, 14, 'Vepa', 'Zebras have excellent eyesight. It is believed that they can see in color. Like most ungulates, the zebra\'s eyes are on the  sides of its head, giving it a wide field of view.', '2018-09-20 12:37:17', '2018-09-20 12:37:17');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


-- Dumping structure for table films.films
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` year(4) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.films: 6 rows
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` (`id`, `name`, `description`, `release_date`, `rate`, `price`, `country`, `photo`, `created_at`, `updated_at`, `slug`) VALUES
	(14, 'The Dark Knight', 'Zebras have excellent eyesight. It is believed that they can see in color. Like most ungulates, the zebra\'s eyes are on the  sides of its head, giving it a wide field of view.', '2008', 4, 12.00, 'USA', 'images/films/5ba39415c6946.jpeg', '2018-09-20 12:35:33', '2018-09-20 12:35:33', 'the-dark-knight'),
	(13, 'The Godfather', 'Zebras have excellent eyesight. It is believed that they can see in color. Like most ungulates, the zebra\'s eyes are on the  sides of its head, giving it a wide field of view.', '1974', 3, 12.00, 'USA', 'images/films/5ba393d3ebfd8.jpeg', '2018-09-20 12:34:27', '2018-09-20 12:34:27', 'the-godfather'),
	(12, 'The Shawshank Redemption', 'Zebras have excellent eyesight. It is believed that they can see in color. Like most ungulates, the zebra\'s eyes are on the  sides of its head, giving it a wide field of view.', '1994', 5, 10.00, 'USA', 'images/films/5ba3935e7eeda.jpeg', '2018-09-20 12:32:30', '2018-09-20 12:32:30', 'the-shawshank-redemption');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;


-- Dumping structure for table films.film_genre
CREATE TABLE IF NOT EXISTS `film_genre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.film_genre: 0 rows
/*!40000 ALTER TABLE `film_genre` DISABLE KEYS */;
INSERT INTO `film_genre` (`id`, `film_id`, `genre_id`) VALUES
	(12, 14, 3),
	(11, 14, 2),
	(10, 14, 1),
	(9, 13, 1),
	(8, 12, 4),
	(7, 12, 1),
	(13, 14, 4);
/*!40000 ALTER TABLE `film_genre` ENABLE KEYS */;


-- Dumping structure for table films.genres
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.genres: 0 rows
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` (`id`, `created_at`, `updated_at`, `name`) VALUES
	(1, NULL, NULL, 'Drama'),
	(2, NULL, NULL, 'Action'),
	(3, NULL, NULL, 'Science Fiction'),
	(4, NULL, NULL, 'Biography');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;


-- Dumping structure for table films.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.migrations: 9 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_09_19_163431_create_films_table', 1),
	(4, '2018_09_19_170054_update_flms_table', 2),
	(5, '2018_09_20_082241_create_comments_table', 3),
	(6, '2018_09_20_102751_create_genres_table', 4),
	(7, '2018_09_20_103244_alter_films_table', 4),
	(8, '2018_09_20_104308_create_film_genre_table', 4),
	(9, '2018_09_20_104913_alter_genres_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table films.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table films.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table films.users: 12 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'admin@test.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(2, 'Ms. June Hyatt', 'cconsidine@dietrich.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(3, 'Prof. Verona Hartmann III', 'trau@gmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(4, 'Joelle Padberg', 'lang.julien@yahoo.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(5, 'Vena Gleichner', 'vbradtke@jacobson.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(6, 'Stephen Hagenes', 'elinore47@wuckert.info', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(7, 'Precious Kulas', 'florida.willms@hotmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(8, 'Dr. Jarred Osinski I', 'nyah44@gmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(9, 'Prof. Destin Torphy I', 'gerard.marquardt@hotmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(10, 'Dereck Klocko', 'johnathon.oconnell@hotmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(11, 'Kaelyn Gusikowski IV', 'felicity13@gmail.com', NULL, '$2y$10$quXOTjVAta4Avl544zsRTO/fyfY0rXmq0F2SxPzMI7vpW51rdBZ/2', NULL, '2018-09-19 16:44:50', '2018-09-19 16:44:50'),
	(12, 'Maksat Jumayev', 'devoweb190@gmail.com', NULL, '$2y$10$gmcm9W7q/7NoESECWQeuHem7Wpi2dnuHcnMht3cxrOIzWsvE6dadu', '8cn5g3BgWp86b45DUl84Iakn6tF0k1DGNvqGUiyS1dZ92dC2mIZm6yaPKKtE', '2018-09-20 08:31:00', '2018-09-20 08:31:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
