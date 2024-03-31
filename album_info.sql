-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 30, 2024 at 11:28 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: album_info
--

-- --------------------------------------------------------

--
-- Table structure for table albums
--

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  album_name varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  release_date varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  album_cover varchar(500) NOT NULL,
  artist varchar(100) NOT NULL,
  favourite_song varchar(200) NOT NULL,
  song_sample varchar(200) NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table albums
--

INSERT INTO albums (id, album_name, release_date, album_cover, artist, favourite_song, song_sample, created_at, updated_at) VALUES
(1, 'Dirt', 'September 29, 1992', 'images/dirt.jpg', 'Alice In Chains', 'Would?', 'audio/would.mp3', '2024-03-17 23:39:36', '2024-03-17 23:39:36'),
(2, 'Thirteenth Step', 'September 16, 2003', 'images/thirteenth-step.jpg', 'A Perfect Circle', 'Pet', 'audio/pet.mp3', '2024-03-17 23:45:33', '2024-03-17 23:45:33'),
(3, 'Around The Fur', 'October 28, 1997', 'images/around-the-fur.jpg', 'Deftones', 'Lotion', 'audio/lotion.mp3', '2024-03-17 23:45:33', '2024-03-17 23:45:33'),
(4, 'Cognitive', 'February 15, 2012', 'images/cognitive.jpg', 'Soen', 'Savia', 'audio/savia.mp3', '2024-03-17 23:51:02', '2024-03-17 23:51:02'),
(5, 'Terras Fames', 'August 21, 2004', 'images/terras-fames.jpg', 'Rishloo', 'Illumination', 'audio/illumination.mp3', '2024-03-17 23:51:02', '2024-03-17 23:51:02'),
(6, 'Lateralus', 'May 15, 2001', 'images/lateralus.jpg', 'Tool', 'The Patient', 'audio/the-patient.mp3', '2024-03-17 23:52:25', '2024-03-17 23:52:25'),
(7, 'Sci-Fi Crimes', 'August 31, 2009', 'images/sci-fi-crimes.jpg', 'Chevelle', 'Roswell’s Spell', 'audio/roswells-spell.mp3', '2024-03-17 23:52:25', '2024-03-17 23:52:25'),
(8, 'The Dead Eye', 'October 30, 2006', 'images/the-dead-eye.jpg', 'The Haunted', 'The Flood', 'audio/the-flood.mp3', '2024-03-17 23:53:18', '2024-03-17 23:53:18'),
(9, 'Discovering the Waterfront', 'August 16, 2005', 'images/discovering-the-waterfront.jpg', 'Silverstein', 'Already Dead', 'audio/already-dead.mp3', '2024-03-17 23:55:04', '2024-03-17 23:55:04'),
(10, 'AC/DC Live', 'October 12, 1992', 'images/acdc-live.jpg', 'AC/DC', 'Thunderstruck', 'audio/thunderstruck.mp3', '2024-03-18 00:23:18', '2024-03-18 00:23:18');

-- --------------------------------------------------------

--
-- Table structure for table tracks
--

DROP TABLE IF EXISTS tracks;
CREATE TABLE IF NOT EXISTS tracks (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  song_name varchar(300) NOT NULL,
  album int UNSIGNED NOT NULL,
  created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table tracks
--

INSERT INTO tracks (id, song_name, album, created_at, updated_at) VALUES
(1, 'Them Bones', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(2, 'Dam That River', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(3, 'Rain When I Die', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(4, 'Down In A Hole', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(5, 'Sickman', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(6, 'Rooster', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(7, 'Junkhead', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(8, 'Dirt', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(9, 'Godsmack', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(10, 'Intro (Dream Sequence)', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(11, 'Hate To Feel', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(12, 'Angry Chair', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(13, 'Would?', 1, '2024-03-24 02:34:11', '2024-03-24 02:34:11'),
(14, 'The Package', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(15, 'Weak and Powerless', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(16, 'The Noose', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(17, 'Blue', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(18, 'Vanishing', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(19, 'A Stranger', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(20, 'The Outside', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(21, 'Crimes', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(22, 'The Nurse Who Loved Me', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(23, 'Pet', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(24, 'Lullaby', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(25, 'Gravity', 2, '2024-03-24 02:35:36', '2024-03-24 02:35:36'),
(26, 'My Own Summer (Shove It)', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(27, 'Lhabia', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(28, 'Mascara', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(29, 'Around The Fur', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(30, 'Rickets', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(31, 'Be Quiet and Drive (Far Away)', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(32, 'Lotion', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(33, 'Dai the Flu', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(34, 'Headup', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(35, 'MX', 3, '2024-03-24 02:37:16', '2024-03-24 02:37:16'),
(36, 'Fraktal', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(37, 'Fraccions', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(38, 'Delenda', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(39, 'Last Light', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(40, 'Oscillation', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(41, 'Canvas', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(42, 'Ideate', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(43, 'Purpose', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(44, 'Slithering', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(45, 'Savia', 4, '2024-03-24 02:41:01', '2024-03-24 02:41:01'),
(46, 'Romance of a Dead Kingdom', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(47, 'The Passage', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(48, 'Blitz', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(49, 'Harlequin', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(50, 'Seven Rings Left', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(51, 'The Water Is Fine', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(52, 'The Lovely Room', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(53, 'Fenris', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(54, 'Narcissist Code', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(55, 'Illumination', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(56, 'Terras', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(57, 'Fames', 5, '2024-03-24 02:44:09', '2024-03-24 02:44:09'),
(58, 'The Grudge', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(59, 'Eon Blue Apocalypse', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(60, 'The Patient', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(61, 'Mantra', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(62, 'Schism', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(63, 'Parabol', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(64, 'Parabola', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(65, 'Ticks & Leeches', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(66, 'Lateralus', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(67, 'Disposition', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(68, 'Reflection', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(69, 'Triad', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(70, 'Faaip de Oiad', 6, '2024-03-24 02:49:22', '2024-03-24 02:49:22'),
(71, 'Sleep Apnea', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(72, 'Mexican Sun', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(73, 'Shameful Metaphors', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(74, 'Jars', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(75, 'Fell Into Your Shoes', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(76, 'Letter from a Thief', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(77, 'Highland\'s Apparition', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(78, 'Roswell\'s Spell', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(79, 'Interlewd', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(80, 'A New Momentum', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(81, 'This Circus', 7, '2024-03-24 02:52:40', '2024-03-24 02:52:40'),
(82, 'The Premonition', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(83, 'The Flood', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(84, 'The Medication', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(85, 'The Drowning', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(86, 'The Reflection', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(87, 'The Prosecution', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(88, 'The Fallout', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(89, 'The Medusa', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(90, 'The Shifter', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(91, 'The Cynic', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(92, 'The Failure', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(93, 'The Stain', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(94, 'The Guilt Trip', 8, '2024-03-24 02:54:51', '2024-03-24 02:54:51'),
(95, 'Your Sword Versus my Dagger', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(96, 'Smile in Your Sleep', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(97, 'The Idles of March', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(98, 'Fist Wrapped in Blood', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(99, 'Discovering the Waterfront', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(100, 'Defend You', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(101, 'My Heroine', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(102, 'Always and Never', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(103, 'Already Dead', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(104, 'Three Hours Back', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(105, 'Call It Karma', 9, '2024-03-24 02:57:40', '2024-03-24 02:57:40'),
(106, 'Thunderstruck', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(107, 'Shoot to Thrill', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(108, 'Back in Black', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(109, 'Who Made Who', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(110, 'Heatseeker', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(111, 'The Jack', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(112, 'Moneytalks', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(113, 'Hells Bells', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(114, 'Dirty Deeds Done Dirt Cheap', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(115, 'Whole Lotta Rosie', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(116, 'You Shook Me All Night Long', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(117, 'Highway to Hell', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(118, 'T.N.T.', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21'),
(119, 'For Those About To Rock (We Salute You)', 10, '2024-03-24 03:07:21', '2024-03-24 03:07:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
