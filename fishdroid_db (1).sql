-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 03:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fishdroid_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fish`
--

CREATE TABLE `fish` (
  `id` int(11) NOT NULL,
  `fish_name` varchar(100) NOT NULL,
  `scientific_name` varchar(100) NOT NULL,
  `family_name` varchar(100) NOT NULL,
  `life_span` varchar(100) NOT NULL,
  `fish_image` varchar(100) NOT NULL,
  `fish_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fish`
--

INSERT INTO `fish` (`id`, `fish_name`, `scientific_name`, `family_name`, `life_span`, `fish_image`, `fish_info`) VALUES
(1, 'Chromis', 'Neoglyphidodon nigroris', 'Pomacentridae', '8 - 15 years', 'FISH_IMG_287.jpg', '<p>info ng ifhs</p>\r\n'),
(4, 'Mud Carp', 'Cirrhinus molitorella', 'DADDY', '5 - 6 YEARS', 'FISH_IMG_778.PNG', '<p>fdsdsf</p>\r\n'),
(6, 'Tilapia', 'Oreochromis niloticus', 'Cichlidae', '10 years', 'FISH_IMG_927.jpg', '<p>The Nile tilapia reaches up to 60&nbsp;cm (24&nbsp;in) in length, and can exceed 5&nbsp;kg (11&nbsp;lb). As typical of tilapia, males reach a larger size and grow faster than females.</p>\r\n\r\n<p>The Nile tilapia is native to larger parts of Africa, except Maghreb and almost all of Southern Africa. It is native to tropical West Africa, the Lake Chad basin, and much of the Nile system, including lakes Tana, Albert and Edward&ndash;George, as well as lakes Kivu, Tanganyika, and Turkana, and the Awash and Omo Rivers. In Israel, it is native to coastal river basins</p>\r\n\r\n<p>The Nile tilapia can be found in most types of freshwater habitats, such as rivers, streams, canals, lakes, and ponds, and ranging from sea level to an altitude of 1,830 m (6,000 ft). It also occurs in brackish water, but is unable to survive long-term in full salt water.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE `jokes` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `joke_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`id`, `question`, `answer`, `joke_image`) VALUES
(4, 'Anong isda ang pinaka matanda?', 'Edi Century Tuna', 'JOKE_IMG_898.png'),
(5, 'Anong subject ang paborito ng mga fish?', 'edi FISHycal Education', 'JOKE_IMG_44.gif');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `fish_name` varchar(100) NOT NULL,
  `scientific_name` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `quiz_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `fish_name`, `scientific_name`, `answer`, `option1`, `option2`, `option3`, `quiz_image`) VALUES
(1, 'Milk Fish', 'Chanos', 'Chanidae', 'Pomacentrinae', 'Drum', 'Cichlidae', 'USER_IMG_359.jpg'),
(2, 'Banded Tilapia', 'sadfasdf', 'draad', 'fsadf', 'dsf', 'adsf', 'USER_IMG_993.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `description`) VALUES
(1, 'Guard', 'Watch me!');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `tech_term` varchar(100) NOT NULL,
  `tech_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `tech_term`, `tech_desc`) VALUES
(1, 'Fish Hatchery', 'A fish hatchery is a facility where fish eggs are hatched and young fish, known as fry or fingerlings, are raised under controlled conditions. It provides a controlled environment with proper water temperature, oxygen levels, and nutrition to ensure the healthy growth and survival of the fish. Fish hatcheries play a vital role in replenishing fish populations, supporting aquaculture operations, and conservation efforts.'),
(2, 'Stocking Program', 'A stocking program refers to a management strategy where fish or other aquatic species are introduced or \"stocked\" into natural water bodies to supplement existing populations or establish new populations. This is commonly done by releasing juvenile fish from hatcheries into lakes, rivers, or ponds to enhance recreational fishing opportunities or restore species in decline. Stocking programs help maintain or improve the overall health and diversity of aquatic resources.'),
(3, 'Fish Tagging', 'Fish Tagging: Fish tagging is a method of marking individual fish with unique identifiers to track their movement, behavior, and population dynamics. This involves attaching small tags or electronic devices to fish, which can include physical tags, fin clips, or implanted transmitters. By monitoring tagged fish, researchers gain valuable insights into migration patterns, habitat preferences, and the overall health of fish populations.'),
(4, 'Fishway', 'A fishway, also known as a fish ladder or fish pass, is a structure built in or around dams, weirs, or other barriers in rivers or streams to facilitate the migration of fish. Fishways provide a series of ascending steps or bypass channels that allow fish to navigate around obstacles and reach their spawning grounds or essential habitats. These structures help maintain healthy fish populations by restoring access to critical habitats and promoting natural reproductive processes.'),
(5, 'Water Aeration', 'Water aeration involves the process of adding oxygen to aquatic environments, typically in stagnant or oxygen-deficient bodies of water. This can be done through mechanical means, such as using aerators or pumps, or through natural methods like the introduction of plants or waterfalls. Aeration improves water quality, prevents fish kills, and supports the overall health of aquatic organisms by increasing oxygen levels and reducing harmful substances like ammonia and carbon dioxide.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `img`, `created_at`) VALUES
(1, 'Jomer Dorego', 'omer', 'ommer@gmail.com', '123', 'USER_IMG_221.webp', '2023-05-31 15:33:45'),
(2, 'Shekyna Cayago', 'kaynaa', 'kaynaa@gmail.com', '123', 'USER_IMG_750.webp', '2023-05-31 15:25:52'),
(16, 'Mark Lester Taguiam', 'lest', 'lest@gmail', '123', 'USER_IMG_918.webp', '2023-05-31 15:26:15'),
(20, 'Ivan Gerard Deguzman', 'banban', 'banban@gmail.com', '123', 'USER_IMG_612.webp', '2023-05-31 15:26:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jokes`
--
ALTER TABLE `jokes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fish`
--
ALTER TABLE `fish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jokes`
--
ALTER TABLE `jokes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
