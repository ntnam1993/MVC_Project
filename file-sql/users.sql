-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2017 at 10:24 AM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-login`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(19, 'ntnam1993', '636d4b86fafa6dcfcf001e282d55cbd2d4c13dd1a8ea2097a544986ba1750f39', 'h=®âaö¿7§qyi‰{ö«™;„³/”«\'ÿ¬Î', 'Thanh Nam', '2017-04-13 16:35:33', 1),
(20, 'nttthao1993', 'c50caad710def6fc22e8ebe7f8e2a965ccde7926ff0c0c164e7f7618af0f84c5', '«¹‘¶o,˜ÝZ1¸»RvóÉ÷!ÕìJ.áùGÒ›é', 'Thu Thao', '2017-04-13 16:39:34', 1),
(21, 'ntnam19931', '1eb514121db31947de164b4e1bb8e1ca5f44a71ee33511b7fdc44418d98aa1b8', '€©n™ºžvfäF†mÌ¹]BÍÒ	Þ8àò $`¾', 'Thanhnam', '2017-04-13 16:43:39', 1),
(22, 'ntnam19932', '49030cd49d0b14f3bfaa0ea23c8ce074d0570f1846c966b1c82c0a0771b7c643', 'CÜy»AŸÛ…W\n¨kRÄkTYÈ8‚(ÅšU»x«‰Ç', 'Thanhnam', '2017-04-13 16:44:32', 1),
(23, 'ntnam19933', 'ce0fe0f05b8d9d8a4e6b6c8194754be1f6df1c5842eb46073ace85c233144186', 'p6\n9õ«³…˜úLq+“§Šˆ­‘_êºmÂ}ú\ZÀ', 'Thanhnam', '2017-04-13 16:45:20', 1),
(24, 'ntnam19935', 'b7af6e9e7ba70a1168047e99ecd0023bc044dcac048bbb7bb1e880da2fbcf0f3', '„×`§°¦Ÿ·	IÁf†®ÀyD¤$c›B¤|—3æwJu', 'thanhnam', '2017-04-13 16:46:28', 1),
(25, 'nguyenthanhnam', '58fa004c1f6de413251dc00642901b9e575e018dbd668cb2569306d17905fe97', '¿4žÄk\"pPvi½§‘EQ[òH‹òU§Õd·', 'htnahnam', '2017-04-14 08:21:54', 1),
(26, 'nam.nt', 'b2d1335d74fc242ad423c20f68812b3376b57b06c2ce71f6d469ad8a5a6bf236', 'ëÖÌ‰»è8l\n‡ÀºÄü6\rÅŒ=–Ñ%8y¡Êyþh', 'thnhnam', '2017-04-14 08:29:07', 1),
(27, 'nam123', '1da8594d2da7b9656e84fde2fdab3430bf0d0f98b955a407c02701a609302d7f', '§2á‚Äu–½NJÒ‡èƒ„²ØÄ	·¨ÝršC¢', 'nguyenthanhnam', '2017-04-14 08:29:53', 1),
(28, 'kin', 'db5e5c8d05b75b5a2df9c8d55793a00ff00a1c833ce8623ddacd2b7069cbfce4', '-jXøßé¬bëxO,Ì¢Y$*T#ª^ørÏ3C©-', 'kinkaka', '2017-04-14 10:16:41', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
