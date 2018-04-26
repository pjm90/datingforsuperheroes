-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2018 at 05:34 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `examdatingplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(6) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`) VALUES
(6, 'How are you?');

-- --------------------------------------------------------

--
-- Table structure for table `superheroes`
--

CREATE TABLE `superheroes` (
  `email` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `current_location` varchar(60) NOT NULL,
  `amount_of_likes` int(3) NOT NULL,
  `picture` varchar(256) NOT NULL,
  `superpowers` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superheroes`
--

INSERT INTO `superheroes` (`email`, `name`, `age`, `sex`, `current_location`, `amount_of_likes`, `picture`, `superpowers`) VALUES
('batman@yahoo.com', 'batman', 20, 'male', 'Miami, America', 0, 'https://vignette.wikia.nocookie.net/batman/images/7/7a/XxLycanInfernoxX.png/revision/latest?cb=20131010183444', ' Martial arts abilities, detective skills'),
('capitanamerica@yahoo.com', 'Capitan-America', 33, 'male', 'America', 25, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcqLwT6hOuDkcyQPwRfIjgB843KtXdzdWQBBVFfhVMBgtnVPS0eg', 'strong'),
('ironman@gmail.com', 'Iron-Man', 38, 'male', 'Aarhus,Denmark', 0, 'https://i0.wp.com/augmentedtomorrow.com/smuc/wp-content/uploads/2012/10/iron_man_2_200px.jpg?resize=250%2C250', 'Genius-level intellect, Powered armor suit'),
('spiderman@yahoo.com', 'Spider-Man', 33, 'male', 'Miami, America', 0, 'http://img.kbhgames.com/2013/07/the-amazing-spider-man.jpg', 'Durability, healing factor, jumping, leaping, and speed. '),
('supergirl@yahoo.com', 'Supergirl', 0, 'female', 'Canada', 0, 'https://orig00.deviantart.net/6e06/f/2017/253/1/b/kira_kosarin_supergirl_2_by_thetflord-dbmyqz9.jpg', 'strength, speed, and stamina'),
('superman@gmail.com', 'Super-Man', 32, 'male', 'New Delhi, India', 0, 'https://vignette.wikia.nocookie.net/dcmovies/images/2/25/S1.jpg/revision/latest/scale-to-width-down/250?cb=20130514023903', 'Invulnerability,Vision,Hearing'),
('superWomen', 'SuperWomen', 23, 'Woman', 'aarhus, Demark', 0, 'http://tib.cjcs.com/files/2017/01/SG2mid-800-250x300.jpg', 'strength and flight'),
('thor@yahoo.com', 'Thor', 40, 'male', 'Paris, France', 0, 'https://cdn.movieweb.com/img.news.tops/NEBrGPusJFoVFI_3_b/5-Things-That-Must-Happen-In-Thor-The.jpg', 'Superhuman strength, speed, durability, and longevity'),
('wolverine@gmail.com', 'Wolverine', 50, 'male', 'Miami, America', 0, 'https://cdn.movieweb.com/img.news.tops/NEg6BK0AFzDMjp_2_b/The-Wolverine-Takes-Place-After-X-Men-3.jpg', 'Flight and the Avengers.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superheroes`
--
ALTER TABLE `superheroes`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
