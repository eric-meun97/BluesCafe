-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 04:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluescafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `pageId` int(10) UNSIGNED NOT NULL,
  `title` varchar(450) NOT NULL,
  `name` text NOT NULL,
  `content` longtext NOT NULL,
  `footer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pageId`, `title`, `name`, `content`, `footer`) VALUES
(1, '', 'home', ' <div class=\"welcome-text\">\r\n        <h2>WE ARE BLUES CAFE</h2>\r\n        <a href=\"https://www.youtube.com/watch?v=-5KAN9_CzSA\">Subscribe</a>\r\n    </div>', '<div>Copyright Blues Café. All rights Reserved.</div>'),
(2, 'Shop at Blues Cafe', 'Shop', '<h10>We are Located in Rue 340 Mountain, Chelsea, Quebec, 910 N38</h10>\r\n<p3>\r\n<div class=\"cafe\">\r\n<li><a href=\"https://www.biscottichelsea.ca/\">Biscotti</a><li>\r\n<li><a href=\"http://www.cafelessaisons.com/\">Cafe Saisons</a><li>\r\n<li><a href=\"https://www.cafepalmier.ca/\">Cafe Palmier</a><li>\r\n</div>\r\n<img id=\"images\" src=\"img/coffee2.jpg\">', ''),
(4, 'Live Entertainment', 'music ', '<div class=\"calendar-container\">\r\n\r\n<div class=\"header\">\r\n<ul class=\"weekdays\">\r\n<li>Sunday</li>\r\n<li>Monday</li>\r\n<li>Tuesday</li>\r\n<li>Wednesday</li>\r\n<li>Thursday</li>\r\n<li>Friday</li>\r\n<li>Saturday</li>\r\n</ul>\r\n\r\n<ul class=\"daynumbers\">\r\n<li>6</li>\r\n<li>7</li>\r\n<li>8</li>\r\n<li>9</li>\r\n<li>10</li>\r\n<li>11</li>\r\n<li>12</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"timeslots-container\">\r\n<ul class=\"timeslots\">\r\n<li>6pm</li>\r\n<li>7pm</li>\r\n<li>8pm</li>\r\n<li>9pm</li>\r\n<li>10pm</li>\r\n<li>11pm</li>\r\n<li>12am</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"event-container\">\r\n\r\n<div class=\"slot slot-1\">\r\n<div class=\"event-status\"></div>\r\n<span>Country Music</span>\r\n\r\n<div class=\"music slot-2\">\r\n<div class=\"event-status\"></div>\r\n<span>Jazz</span>\r\n\r\n<div class=\"slot3 slot-3\">\r\n<div class=\"event-status\"></div>\r\n<span>Blues</span>\r\n\r\n</div>\r\n\r\n</div>\r\n\r\n\r\n\r\n\r\n\r\n</div>\r\n</div>\r\n\r\n\r\n\r\n\r\n', ''),
(5, 'Coffee', 'beans ', '   <section class=\"services\">\r\n        <h1>Our Coffee</h1>\r\n     <div class=\"container\">\r\n            <div class=\"box1\">\r\n                <img src=\"img/keep.jpg\">\r\n                <div class=\"info\">\r\n                    <h8></h8>\r\n\r\n                    <p1>\r\n                    </p>\r\n              \r\n\r\n<p>\r\n                </div>\r\n            </div>\r\n            <div class=\"box\">\r\n                <img src=\"img/lightroast.jpg\">\r\n                <div class=\"info\">\r\n                    <h3>Light Roast</h3>\r\n\r\n                    <p2>Light roast beans are roasted for less time than medium or dark roast beans. They taste fruity, bright, and complex. Lightly roasting beans preserves the flavors of the bean\'s origins. They are fast becoming a favorite of craft roasters, baristas, and coffee lovers</p>\r\n                    <button class=\"btn\">More</button>\r\n\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"box\">\r\n                <img src=\"img/medium.jpg\">\r\n                <div class=\"info\">\r\n                    <h3>Medium Roast</h3>\r\n\r\n                    <p> Medium Roast coffees are brown and have a little thicker body than a Light Roast. Unlike Light, Medium starts to take on a bit of the taste from the roasting process, losing some of the bright floral flavors that are typical of a Light Roast</p>\r\n                    <button class=\"btn\">More</button>\r\n\r\n\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"box\">\r\n                <img src=\"img/coffee3.jpg\">\r\n                <div class=\"info\">\r\n                    <h3>Ice Coffee</h3>\r\n\r\n                    <p>Enjoy a chilled iced coffee, typically sweetened or \r\nflavored and served over ice.\r\n                    </p>\r\n                    <button class=\"btn\">More</button>\r\n\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"box\">\r\n                <img src=\"img/darkroast.jpg\">\r\n                <div class=\"info\">\r\n                    <h3>Dark Roast</h3>\r\n\r\n                    <p>Dark roast coffee beans have been roasted longer than other types, resulting in a darker bean and a more full-bodied cup of joe. A longer roast moderates bright flavors and reduces caffeine levels, so dark roast coffee is less sour and more bitter than a light roast. Coffee isn\'t just about flavor and energy, though.</p>\r\n                    <button class=\"btn\">More</button>\r\n\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"box\">\r\n                <img src=\"img/tea.jpg\">\r\n                <div class=\"info\">\r\n                    <h3>Tea</h3>\r\n\r\n                    <p>We offer Black Tea, Green Tea, Herbal Tea, Ginger Orange and many more.</p>\r\n                    <button class=\"btn\">More</button>\r\n\r\n\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>\r\n', ''),
(6, '', 'number', '<h6>☕Contact Blues Café☕</h6>\r\n<hr>\r\n<div class=\"wrapp\">\r\n<h4>Contact Form<h4>\r\n<h5>We will try to contact within 24 Hours!</h5>\r\n<input type=\"text\" name=\"\" id=\"\"\r\n placeholder=\"Enter your Name\">\r\n<input type=\"email\" name=\"\" id=\"\"\r\n placeholder=\"Enter your Email\">\r\n<input type=\"text\" name=\"\" id=\"\"\r\n placeholder=\"Enter your Phone Number\">\r\n<textarea name=\"\" id\"\" cols\"30\" rows=\"10\"\r\n placeholder=\"Type your message here\">\r\n</textarea>\r\n<a href=\"#\">Submit</a>', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pageId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `pageId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
