-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 06:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favouritethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favouritethings`
--

DROP TABLE IF EXISTS `tbl_favouritethings`;
CREATE TABLE IF NOT EXISTS `tbl_favouritethings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Reason` text NOT NULL,
  `Frequency` text NOT NULL,
  `mystery_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favouritethings`
--

INSERT INTO `tbl_favouritethings` (`ID`, `Title`, `Image`, `Description`, `Reason`, `Frequency`, `mystery_ID`) VALUES
(1, 'Pizza', 'pizza.jpg', 'Description: Well, a circular dough with sauce and cheese! I guess you already knew that! My favourite pizza is just cheese and sauce. Lots of cheese and lots of sauce. I\'m already craving pizza just writing this!', 'Reason: It just tastes amazing! I always say pizza is not just food for the stomach, it\'s also food for the soul.', 'Frequency: at least once a week or I suffer from pizzanemia (low pizza levels in the blood!)', 1),
(2, 'A Good Story', 'book.jpg', 'Description:I love a good story whether it\'s a novel, a movie, an anime or a video game.I also write my own stories. My favourite genre is fantasy, but I love almost everything else except horror.', 'Reason: I really love imagination. ', 'Frequency: Almost every day!', 2),
(3, 'Music', 'music.jpg', 'Description: My favourite music is Rock. y favourite bands are The Cranberries, Within Temptation, Skillet, Linkin Park, and Evanescence. My least favourite is hip hop and rap, although I may like some Ciara or Beyonce occasionally.   ', 'Reason: It\'s not because I like to dance! Actually, I\'m a horrible dancer! I like to sing. Although no-one likes to hear me sing!', 'Frequency: Every single day.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mysteries`
--

DROP TABLE IF EXISTS `tbl_mysteries`;
CREATE TABLE IF NOT EXISTS `tbl_mysteries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Image` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mysteries`
--

INSERT INTO `tbl_mysteries` (`ID`, `Title`, `Image`) VALUES
(1, 'Mystery Item 1', 'question-mark.png'),
(2, 'Mystery Item 2', 'question-mark.png'),
(3, 'Mystery Item 3', 'question-mark.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
