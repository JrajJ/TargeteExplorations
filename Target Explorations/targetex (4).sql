-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 01:58 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `targetex`
--

-- --------------------------------------------------------

--
-- Table structure for table `targetex_category`
--

CREATE TABLE `targetex_category` (
  `id` int(255) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `targetex_category`
--

INSERT INTO `targetex_category` (`id`, `category_name`) VALUES
(1, 'IIT-JEE'),
(2, 'NEET');

-- --------------------------------------------------------

--
-- Table structure for table `targetex_like`
--

CREATE TABLE `targetex_like` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `targetex_like`
--

INSERT INTO `targetex_like` (`id`, `user_id`, `video_id`) VALUES
(1, '5', '2'),
(2, '3', '1'),
(3, '1', '3'),
(5, '1', '13'),
(6, '1', '10');

-- --------------------------------------------------------

--
-- Table structure for table `targetex_user`
--

CREATE TABLE `targetex_user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `dob` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `classs` varchar(255) DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `targetex_user`
--

INSERT INTO `targetex_user` (`id`, `name`, `address`, `email`, `gender`, `dob`, `contact`, `classs`, `college_name`, `status`) VALUES
(1, 'Sarang Shende', 'WARDHA', 'decima.sk16@gmail.com', 'male', '10-August-1990', '8308525176', 'bsc', 'jb', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `targetex_video`
--

CREATE TABLE `targetex_video` (
  `id` int(11) NOT NULL,
  `video_title` varchar(255) DEFAULT NULL,
  `video_desc` varchar(999) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_date` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `likes` varchar(255) DEFAULT '0',
  `views` int(255) NOT NULL DEFAULT '0',
  `image_path` varchar(255) DEFAULT NULL,
  `sub_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `targetex_video`
--

INSERT INTO `targetex_video` (`id`, `video_title`, `video_desc`, `video_path`, `video_date`, `category`, `likes`, `views`, `image_path`, `sub_path`) VALUES
(10, 'Life line', 'As a travel writer, I gain inspiration from the world: places, people and the experiences we suck in to live a full, rich life. Most people have some sort of bucket list which includes things like traveling to Peru and hiking Machu Picchu, running a marathon or even learning a new language. But as a life coach, I get inspiration from the human heart; what makes me feel truly alive is leaning into the pulse of our desires.', 'videos/one.mp4', '01/02/2016', '1', '2', 12002, 'images/react_native.jpg', 'subtitles/flash_demo.srt'),
(11, 'Life line 2', 'Most expressions of outward desire come from an internal longing to feel connected to the world around us, a yearning to give and receive love. It inspired me to create a new type of life experience list. One centered in love, truth and honesty.', 'videos/one.mp4', '14/02/2019', '1', '99', 18, 'images/life2.png', 'subtitles/flash2.srt'),
(12, 'Amazing Adventures', 'Amazing Adventures Travel specializes in customizing the perfect escape to fit your travel style and budget. Weve been organizing travel for over 20 years and know the ins and outs of all our destinations. Each destination has some amazing tried and true itineraries to inspire you and get you started with the trip planning.  Whether you are a hard core thrill seeker, lounge lizard or somewhere in between, we offer a trip for every adventurous spirit and will work with you to plan the perfect journey', 'videos/one.mp4', '10/02/2019', '2', '5', 900, 'images/amazing_places.jpg', 'subtitles/flash2.srt'),
(13, 'Amazing Adventures 2', 'Amazing Adventures Travel specializes in customizing the perfect escape to fit your travel style and budget. Weve been organizing travel for over 20 years and know the ins and outs of all our destinations. Each destination has some amazing tried and true itineraries to inspire you and get you started with the trip planning.  Whether you are a hard core thrill seeker, lounge lizard or somewhere in between, we offer a trip for every adventurous spirit and will work with you to plan the perfect journey', 'videos/one.mp4', '10/02/2019', '1', '16', 11, 'images/react_native.jpg', 'subtitles/flash2.srt'),
(14, 'Life line 3', 'Feel your fear and do it anyway. Recognize loneliness is not an invitation to settle. Learn to make confident choices from your heart, not your head.', 'videos/one.mp4', '5/01/2019', '1', '105', 256, 'images/life.jpg', 'subtitles/flash2.srt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `targetex_category`
--
ALTER TABLE `targetex_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targetex_like`
--
ALTER TABLE `targetex_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targetex_user`
--
ALTER TABLE `targetex_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targetex_video`
--
ALTER TABLE `targetex_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `targetex_category`
--
ALTER TABLE `targetex_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `targetex_like`
--
ALTER TABLE `targetex_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `targetex_user`
--
ALTER TABLE `targetex_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `targetex_video`
--
ALTER TABLE `targetex_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
