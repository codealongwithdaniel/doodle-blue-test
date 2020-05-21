-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 09:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doodleblue`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `imageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `department`, `price`, `imageUrl`) VALUES
(50, 'Gorgeous Wooden Mouse', 'Jewelery', 754, 'http://lorempixel.com/640/480/technics'),
(51, 'Ergonomic Concrete Chicken', 'Books', 371, 'http://lorempixel.com/640/480/technics'),
(52, 'Generic Rubber Keyboard', 'Jewelery', 338, 'http://lorempixel.com/640/480/technics'),
(53, 'Refined Frozen Shirt', 'Grocery', 553, 'http://lorempixel.com/640/480/technics'),
(54, 'Tasty Rubber Ball', 'Automotive', 312, 'http://lorempixel.com/640/480/technics'),
(55, 'Refined Metal Keyboard', 'Clothing', 90, 'http://lorempixel.com/640/480/technics'),
(56, 'Gorgeous Cotton Soap', 'Automotive', 764, 'http://lorempixel.com/640/480/technics'),
(57, 'Gorgeous Rubber Cheese', 'Shoes', 286, 'http://lorempixel.com/640/480/technics'),
(58, 'Small Cotton Shirt', 'Jewelery', 501, 'http://lorempixel.com/640/480/technics'),
(59, 'Ergonomic Rubber Ball', 'Movies', 12, 'http://lorempixel.com/640/480/technics'),
(60, 'Generic Wooden Chair', 'Beauty', 720, 'http://lorempixel.com/640/480/technics'),
(61, 'Sleek Soft Table', 'Industrial', 112, 'http://lorempixel.com/640/480/technics'),
(62, 'Tasty Soft Towels', 'Garden', 716, 'http://lorempixel.com/640/480/technics'),
(63, 'Generic Rubber Keyboard', 'Electronics', 378, 'http://lorempixel.com/640/480/technics'),
(64, 'Incredible Concrete Shoes', 'Automotive', 106, 'http://lorempixel.com/640/480/technics'),
(65, 'Rustic Metal Chips', 'Movies', 816, 'http://lorempixel.com/640/480/technics'),
(66, 'Sleek Plastic Car', 'Health', 602, 'http://lorempixel.com/640/480/technics'),
(67, 'Awesome Cotton Chair', 'Computers', 416, 'http://lorempixel.com/640/480/technics'),
(68, 'Gorgeous Concrete Gloves', 'Music', 536, 'http://lorempixel.com/640/480/technics'),
(69, 'Licensed Concrete Towels', 'Games', 21, 'http://lorempixel.com/640/480/technics'),
(70, 'Fantastic Wooden Shoes', 'Kids', 845, 'http://lorempixel.com/640/480/technics'),
(71, 'Unbranded Granite Pizza', 'Kids', 390, 'http://lorempixel.com/640/480/technics'),
(72, 'Unbranded Rubber Bacon', 'Clothing', 291, 'http://lorempixel.com/640/480/technics'),
(73, 'Fantastic Steel Chips', 'Jewelery', 783, 'http://lorempixel.com/640/480/technics'),
(74, 'Gorgeous Fresh Pants', 'Grocery', 758, 'http://lorempixel.com/640/480/technics'),
(75, 'Unbranded Rubber Computer', 'Grocery', 938, 'http://lorempixel.com/640/480/technics'),
(76, 'Small Frozen Chicken', 'Home', 61, 'http://lorempixel.com/640/480/technics'),
(77, 'Unbranded Fresh Mouse', 'Sports', 732, 'http://lorempixel.com/640/480/technics'),
(78, 'Licensed Concrete Table', 'Sports', 559, 'http://lorempixel.com/640/480/technics'),
(79, 'Incredible Steel Chair', 'Industrial', 198, 'http://lorempixel.com/640/480/technics'),
(80, 'Tasty Plastic Gloves', 'Tools', 440, 'http://lorempixel.com/640/480/technics'),
(81, 'Tasty Frozen Fish', 'Sports', 678, 'http://lorempixel.com/640/480/technics'),
(82, 'Ergonomic Rubber Car', 'Beauty', 250, 'http://lorempixel.com/640/480/technics'),
(83, 'Tasty Cotton Fish', 'Clothing', 14, 'http://lorempixel.com/640/480/technics'),
(84, 'Small Metal Pants', 'Kids', 483, 'http://lorempixel.com/640/480/technics'),
(85, 'Rustic Cotton Shirt', 'Automotive', 164, 'http://lorempixel.com/640/480/technics'),
(86, 'Refined Rubber Soap', 'Baby', 273, 'http://lorempixel.com/640/480/technics'),
(87, 'Ergonomic Wooden Chicken', 'Electronics', 884, 'http://lorempixel.com/640/480/technics'),
(88, 'Ergonomic Wooden Fish', 'Garden', 260, 'http://lorempixel.com/640/480/technics'),
(89, 'Refined Wooden Soap', 'Kids', 872, 'http://lorempixel.com/640/480/technics'),
(90, 'Fantastic Granite Chips', 'Kids', 67, 'http://lorempixel.com/640/480/technics'),
(91, 'Sleek Cotton Chair', 'Games', 1, 'http://lorempixel.com/640/480/technics'),
(92, 'Unbranded Soft Shirt', 'Sports', 791, 'http://lorempixel.com/640/480/technics'),
(93, 'Awesome Steel Shoes', 'Kids', 828, 'http://lorempixel.com/640/480/technics'),
(94, 'Unbranded Granite Tuna', 'Music', 665, 'http://lorempixel.com/640/480/technics'),
(95, 'Ergonomic Granite Mouse', 'Kids', 603, 'http://lorempixel.com/640/480/technics'),
(96, 'Unbranded Granite Soap', 'Games', 584, 'http://lorempixel.com/640/480/technics'),
(97, 'Ergonomic Rubber Pizza', 'Grocery', 713, 'http://lorempixel.com/640/480/technics'),
(98, 'Handmade Frozen Hat', 'Tools', 420, 'http://lorempixel.com/640/480/technics');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `place`, `latitude`, `longitude`) VALUES
(1, 'Evaleen', '$2a$10$3ltjybTK/4Hau9ZHa04ameHoKfJaa2QEZLKbKe5NtqKEc32Jnc.SO', 'Guayaquil', '2', '3'),
(2, 'Kalina', '$2a$10$BPAIKfi5AWIJomoNyzlXtOacjgja5H9RamZ1KoUmRZqD9eMUwlmHC', 'Khartoum', '2', '3'),
(3, 'Romona', '$2a$10$goHiRFoAIRMqjsEhMR16kOYUQusKwn7PWNQrW.ulu8e/JgDIDyN.i', 'Nairobi', '2', '3'),
(4, 'Consuela', '$2a$10$Ii2lJnKeXPjqWeHphhL40unPXYE2PPh/9bUIo89gcgSfvLlqNTJ/m', 'Vilnius', '2', '3'),
(5, 'Queenie', '$2a$10$YV43tj395ouI4pIyRvKnSeFhpJE3eRTaDKseRWHcRqhE5fulPqEte', 'Warsaw', '2', '3'),
(6, 'Valera', '$2a$10$zRDyFsa.Fc5ZQJU4G/lc3urn0mptQHksxLIqaSFd5H54eIWfgoFW.', 'Leeds', '2', '3'),
(7, 'Frank', '$2a$10$a3mrPWxfZFfyrarSvMgHYuKSg1Balx9oDz/Mw27rEYwPvognMCKqO', 'Manzini', '2', '3'),
(8, 'Berget', '$2a$10$8pXZaNk80b/YhpwnE9BCg.SZ/YXe89aUzf7TPYBF.rKsr4WBwPSKq', 'Ahmedabad', '2', '3'),
(9, 'Cathie', '$2a$10$0wAdEcF3unO0SVdYN/71Q.BSBcxblF2H/MODe5Np2pqdLqZ6bClGu', 'Hanover', '2', '3'),
(10, 'Randa', '$2a$10$esgrj58zVEELyDtuKJxE.O0D1zVQe696zFi3vJDu6UQTn5n0A2qzK', 'Barranquilla', '2', '3'),
(11, 'Jerry', '$2a$10$VTxjU.HFxh6TkTOOhkArceSGIDtfzIvKklYkCcKYFLcAVxMharwRe', 'Córdoba', '2', '3'),
(12, 'Ruthe', '$2a$10$XvAXKsFUUi4B0LItUSc.muCMP7SUMLPvlZKcUt8IgMRxjmRet7kjO', 'Lucknow', '2', '3'),
(13, 'Violet', '$2a$10$ADx8baDQb1hJ1SNK4bTLpe51UvOogrl7j.rejaAH7AEAojlAs9Yu6', 'Durban', '2', '3'),
(14, 'Penelopa', '$2a$10$jlQAujYREavnZxhVQyiBPOfmopwYFFqsKJJpjQWVruYZSEas3IzaO', 'Ponta Delgada', '2', '3'),
(15, 'Rozele', '$2a$10$RYGyhhmX.KV/oXtgVL74aeYUDr/iiMWOp11pLB.X6WtmgowNDoMTy', 'Tórshavn', '2', '3'),
(16, 'Dulce', '$2a$10$ahbbfDBES59T6OiFDTIAjOHOYxrtX6Oa54MxBXAk20CINvx9q5ALe', 'Christchurch', '2', '3'),
(17, 'Trudie', '$2a$10$67VFJywvWKO8w5.gj/vbGulAIKtTt8JjbWzdXYhgd5IjnAJtLdyIm', 'Bogotá', '2', '3'),
(18, 'Mariele', '$2a$10$9xtg26nvnVuJ0BDz/Px6fOxTgvKt1lFZl5KkF6PVJvn.zAJvXjXni', 'Portland', '2', '3'),
(19, 'Alejandra', '$2a$10$iQ5wKT0RuHl.hUczVkTIfu3Kncp/c/WbCIPYZ8hzfUjbB2mcER3Gm', 'Málaga', '2', '3'),
(20, 'Donetta', '$2a$10$aHCYuAQr4J1HBCFUo8avr.EC/.xdq4VxtYVAoNOE8cOwbFb1Wf9ry', 'Xi\'an', '2', '3'),
(21, 'Darci', '$2a$10$YTD/iKkbqrjD0qkKFUsSi.AxbFWLcCw9fqQ/LzeLx.YU.oiqvpyx2', 'Wonsan', '2', '3'),
(22, 'Lulita', '$2a$10$TnF7laLQyp2sgTsFntCKWOsLKKjJNBUgNeucx1otxJgsVboMvUcmK', 'Memphis', '2', '3'),
(23, 'Drucie', '$2a$10$2uxEM4rToABazCMfyPgTeeRJBu3.fEnW7VfRRImGY5L/wvNS0zetu', 'Hilo', '2', '3'),
(24, 'Madalyn', '$2a$10$fF30VDotfrU7Jx/aNkxGre2T9WkKyXhy8Ss5sIQXByl7SQpTpQnnq', 'Porto Alegre', '2', '3'),
(25, 'Roberta', '$2a$10$TwDBiHuPbexB8IC6.TZgiepBaNALCZzDoRHP.Xo7cnOHmtF0Qll4G', 'Tamale', '2', '3'),
(26, 'Kial', '$2a$10$XO50EauA2BiYGvGpHCOylO5vVkyZk9Lc90CvzbdkfT/dfhgjBH1f2', 'Serekunda', '2', '3'),
(27, 'Clo', '$2a$10$8iBoC/HXq4Jf27bNyMMBXOOzbCIZotpw/5OWkLAn3f6pk.oS/5Cu.', 'Ciudad del Este', '2', '3'),
(28, 'Tonia', '$2a$10$C6Bqhj5JfZOKD3BFY8CndOd/Y4bwZVy2clCW17ZHsdz8yEe.n8.7C', 'Havana', '2', '3'),
(29, 'Sissy', '$2a$10$9dcfPseiJ13rPpzs2ShMB.HDgfK6iripT69B3hdldJv0GuD8nism.', 'Abuja', '2', '3'),
(30, 'Cherilyn', '$2a$10$bAsw2yBR.KCCITMYBwXDjOBav8FAU6RYET.hvrOqL2gFIdtX1IjIe', 'Lusaka', '2', '3'),
(31, 'Starla', '$2a$10$CJNa1B9ne6B7SjvjT1nAQeGDjFW5kE2rJWhn4P2qxweitSyFSQnwm', 'Munich', '2', '3'),
(32, 'Janis', '$2a$10$JYHQiy1Icl68a30r.ESNzuXddmXVnU3uzfDkiJJpXxSLjfS21bTy.', 'Zagreb', '2', '3'),
(33, 'Tiffie', '$2a$10$FU55jyATkw8VFT/BqGyhouml/kD3g/NuxvoByLVxYsy81r8ltDarS', 'Canberra', '2', '3'),
(34, 'Gabriellia', '$2a$10$vzoYvuUssDBenCHsp2A8HuswyXmEen9yGS86JaWcl1zdvsamjReeG', 'Palikir', '2', '3'),
(35, 'Deane', '$2a$10$Og9BZbLQEUV4LGxI33DU2.ox/85TdYh2V7gx8XDR7oe35oKnNYWpK', 'Bratislava', '2', '3'),
(36, 'Dotty', '$2a$10$q52MUS2g.fWx6wACp.iugOquSk.9YiADvDfZdnTS2TAIH3SvfFIWy', 'Makassar', '2', '3'),
(37, 'Clo', '$2a$10$8yO24eomUBkoto5WY0ZES.uhlaiAlkFK/WurtMAoSOXVZwYHBvruW', 'Adak', '2', '3'),
(38, 'Britte', '$2a$10$ew0AXBiyTVzwUkesHaBX..1Usu3kL9qgqmiE59cuyJvvh9EyWJi3a', 'Cotonou', '2', '3'),
(39, 'Sidoney', '$2a$10$QSqYBPbwRq3UFyy/D/bK7.xYsGMnB4Z4m6MQjadlqfuSmWQ.lcb.i', 'Nukulaelae', '2', '3'),
(40, 'Ilse', '$2a$10$CQdfwHnLZD.3R/xy4LllReerdi.no83rMeAk8nzq6qCB4.9xuq1hS', 'Basse-Terre', '2', '3'),
(41, 'Gui', '$2a$10$/xWreWDUFwJyNGDuHXgDmegXHZh6/0ObEZLaXb.fucgNhfwLJMJbi', 'Düsseldorf', '2', '3'),
(42, 'Ericka', '$2a$10$y4NvZB2FesHmLL34vPJv3uO4HAstLV5OjI5ZxbqKTld3X5dfB7Cz.', 'Saint Petersburg', '2', '3'),
(43, 'Chloris', '$2a$10$bxOpgrB7Cu5VnlRKI8jbkejUJIWpiit6uVKF5D1oeeCzrMFVe0b0i', 'Zhengzhou', '2', '3'),
(44, 'Sybille', '$2a$10$UYjtAJDD1Pg3Ytx.nAk/euEfo1Y1nUqLaxlXYL25K8ECrKM2uI/Z6', 'Bloemfontein', '2', '3'),
(45, 'Aaren', '$2a$10$WO/bnfOSeUQcbLO9NB8aZeX6o4FdbyhMdSirGueucppL8.4ug0TsG', 'Ho Chi Minh City', '2', '3'),
(46, 'Rhea', '$2a$10$F4/sPYX9LfqBNPc8D5SzieaWhbVLnyRkPD07it00KCBsDth60Z7QK', 'Wuhan', '2', '3'),
(47, 'Shirlee', '$2a$10$yn2xiX5.1YPvoh7RSXfjXOE4iy2sZN58kNtU.rleTktd17FSAQyc.', 'Lubumbashi', '2', '3'),
(48, 'Roz', '$2a$10$KBoa4CT3yOccNflJH/E5IOcefYSDjOx/jFrMDFzt0LD.ZXxtc2SL6', 'Santa Cruz de Tenerife', '2', '3'),
(49, 'Ada', '$2a$10$sH1vpDEwqm5e56vIGMGBBeYZHpbzUS2PsnqRDshT.cLO8IQ4mfocm', 'Luxor', '2', '3'),
(50, 'Renie', '$2a$10$igWUJOS.EoAymngA9mYfUus4DfPAfhi4VBp0urSrdOby/v8zHiMg2', 'Cardiff', '2', '3'),
(51, 'Robinia', '$2a$10$taYbAPvrtMqA06HNPE4GJORUtqW2i4siwrmmnfaMb9F8Jov1oXngi', 'Perm', '2', '3'),
(52, 'Nickie', '$2a$10$FRc8HtfRIHlgc0qBMchYOOqRpeiuSleYS1ZXvlFQRHu4G0Rcrjv6C', 'Hangzhou', '2', '3'),
(53, 'Luci', '$2a$10$g8cvuIxKvCtHARbRvMO3vuOsUrz7pJ.KXmTWGRifWv/psD2kooyHe', 'Asunción', '2', '3'),
(54, 'Halette', '$2a$10$59JfyRw.9OdvlLUkDiKzM.ku4AkYKiob9zSQECe4b8iPgqwDAAd/W', 'Wollongong', '2', '3'),
(55, 'Veda', '$2a$10$m0//7y/.HrjXaxOoRDG/hugJLlKnI97eOkyCL4Z84M9f0XM2agvVO', 'Nanning', '2', '3'),
(56, 'Britni', '$2a$10$WpEzQkvYU365BAfOIfF8neNTIx6LDMuzOcLDPKa6cGrK62PtCV/Bi', 'Abuja', '2', '3'),
(57, 'Madeleine', '$2a$10$cdzZBTiML3xOYl6U1eLNPOLFgd4KIA5sCw.O8xj9LpiTHv741UgC6', 'Hamilton', '2', '3'),
(58, 'Lanna', '$2a$10$GBlFobjn9lOwS9jI3L9cyOitLPKh5bcPVyUOJRTylXfx1zrzU/3/2', 'Ciudad del Este', '2', '3'),
(59, 'Larine', '$2a$10$zTP9AC1kSy8dXjYs7/4C5ubNhzjuLeHJygCne7r2VNrm9eXioWI6G', 'Zürich', '2', '3'),
(60, 'Liana', '$2a$10$1.s3cyZ7H9n90iIpSirOO.kTviU3xOHImHKyrjF9i7S.mD.lElF6y', 'Minneapolis', '2', '3'),
(61, 'Harrietta', '$2a$10$uO82b3GYeAAtsF3EHCg82.F7mAefFEjouM04/quysrIrSxxf/x8me', 'Muscat', '2', '3'),
(62, 'Malina', '$2a$10$W5lXG8Le7uA1EJcJEEm5TeM5VnmACKMd35tEG362xUSzE3rRlFuGm', 'Koulikoro', '2', '3'),
(63, 'Cathie', '$2a$10$TtMg/TQ.ajRO4lPrs6xIGOP84xg/M.xPPY.W/LBRE/2NOz.V9PJ1a', 'Chittagong', '2', '3'),
(64, 'Agnese', '$2a$10$5TF/ZsNR3F4NodOBCz91h.b3C8K.dsQltP3TUtUov/uyfn80nJ11u', 'Charlotte', '2', '3'),
(65, 'Glynnis', '$2a$10$tFhSTWMsKx1.XMl1.qiv5eE9H/.wKAIEzH6C9O8OrWp8dsM2u8rxa', 'Las Vegas', '2', '3'),
(66, 'Stacey', '$2a$10$/vwX8t9r/x.y810uxGyFQezMRCle5hV0uD19WxtqWf3sOfBL7Vlsm', 'Linz', '2', '3'),
(67, 'Mady', '$2a$10$TWXJjJFqDEXFnDz9BG1Vg.JDf6JtEeh7YyDO1DWJxFVMFOU/lUEua', 'Vaduz', '2', '3'),
(68, 'Marjie', '$2a$10$bYc.Vh8UXK3nDli/VDxjrOPGDMyN5Cx5S1.QviRnVfjn5QxIJ4PV6', 'San Antonio', '2', '3'),
(69, 'Kassey', '$2a$10$qbmfPQTtG0ibh8W0swNrY.ZpYgWru.c9f8BZ5HlWBHm83mJeJNHNG', 'Rabi Island', '2', '3'),
(70, 'Aili', '$2a$10$x63QDbvSHJfQHIMh4an7yefq1ScaSczPXz1IkJf6RD40h6CcZmdfS', 'Siem Reap', '2', '3'),
(71, 'Sam', '$2a$10$ZC0uc7qo1TI9TUc1sJPQYuspwU8GUcR3xAaDgK3cHIv1bgkFGvWTG', 'Hamburg', '2', '3'),
(72, 'Tami', '$2a$10$DydHXuougBqwHauLCzfPEuwc/7zJN4MWRQv7NYOJspQcU6WQssJBW', 'Sydney', '2', '3'),
(73, 'Corry', '$2a$10$ehOg2eMZHPzQ7OFGKvfj3OtMAFMWxl53XaiakUwUUrGniM9PPydAe', 'Caracas', '2', '3'),
(74, 'Shel', '$2a$10$bO94GHKIFKI0E.CMKIx5G..d8laZSDM/7tqH.myK3IyXYb1G5bAqa', 'Zamboanga City', '2', '3'),
(75, 'Olivette', '$2a$10$8h.WHl.9ITz6PE9GXcN/aO9PnWOaV7swS1K208XqtPNLZKfVACMiG', 'St. George\'s', '2', '3'),
(76, 'Kristan', '$2a$10$5g4CSs0bo4BrydSgQQzGJeh9TBtTtQhDZkEViGROie/Su1d3eOHbm', 'Rabi Island', '2', '3'),
(77, 'Annecorinne', '$2a$10$DRcnxaOs3onJXdDob9ouBu63WoxWtSlko97s6rROf7aOiNM7Rs8ry', 'Tamale', '2', '3'),
(78, 'Ebonee', '$2a$10$/ksF5D/A.ZUNXqpJQYJDGOMNSQFFjmNYXjAj0cKHXMsH9ApRHacNK', 'Kota Bharu', '2', '3'),
(79, 'Florencia', '$2a$10$fmVlfIPWO9qCw.kBpzCVReb7Rcea61vs9CZksfeFb9GpQp/3EdMZ.', 'Fort-de-France', '2', '3'),
(80, 'Kylynn', '$2a$10$h0Tmi25XtjxitpoX/Wu.yuu6/peXTGAuNxcI/LqVBG2Qmpf/3Yr/y', 'San Fernando', '2', '3'),
(81, 'Brynna', '$2a$10$qw3btC0LfZ3c6hJS7Mek/egmKxM32IjsND5Zbr7r8Em2I5jnFe5z.', 'Belmopan', '2', '3'),
(82, 'Clementine', '$2a$10$UnGGcVqeFfm/dEPfx/2sOOciFYoC//T8K6wK1RM/phDdToOuboCZ.', 'Guangzhou', '2', '3'),
(83, 'Joelly', '$2a$10$P8rxgbBHPI.CcwTmiJB0IOpRw1o98mzaMe.5G4Mk3641dPV.U1Sa.', 'Lobamba', '2', '3'),
(84, 'Letizia', '$2a$10$NWwluzphxqlVjTxNOhoFvOEivJL5Hu/PEiy3ZYJ1hra4IqWTOKGgG', 'Ciudad del Este', '2', '3'),
(85, 'Etta', '$2a$10$moAJOt7uZoJBatuMeMVwNepQMl5R..5jkH2FPZm1PeQDVtFCzhE6m', 'Chengdu', '2', '3'),
(86, 'Kirbee', '$2a$10$w7.O8hLGN3fPPraF87ANrO4oFv/yJvXQ.w1ZaSIly9Y.SC3R9eSSK', 'Tehran', '2', '3'),
(87, 'Lilith', '$2a$10$C1pkeapwwyXm1u2OroK48utgV.e4S3UvCqJlTk2pZch4m2PI9X2nW', 'Dushanbe', '2', '3'),
(88, 'Norine', '$2a$10$Ej9y6p.02Dln13/Mc41Z4Obky0cwh.ItVO6fyy9IbpNxKPWIVdVfi', 'San Carlos de Bariloche', '2', '3'),
(89, 'Elmira', '$2a$10$dKYDeiAR8lQU40bpCp5HGuCLObkFC/TWDuipM854QVgQtMk2wtEkC', 'Luxor', '2', '3'),
(90, 'Shel', '$2a$10$mVCOiQyDC8.on42BUb5AJOhjv7mjIiAxXMbyxpQlodXPa0qT0hagC', 'Chişinău', '2', '3'),
(91, 'Briney', '$2a$10$3pr3V7fwxq3o81wC2cNU6eZl.rGkacfxEG3rkJP6wAmubZ3KfKRGS', 'Castries', '2', '3'),
(92, 'Emma', '$2a$10$NC8df5wig0Tay9v7QwZ2D.huHAjVCygFNrFx19aL8LdczBAku5IHu', 'Suez', '2', '3'),
(93, 'Dennie', '$2a$10$KhzEa7uKphzy5i0i7Clwse/TeOd5SDNInJ5ArZUzmoymqQlvVLM76', 'Colombo', '2', '3'),
(94, 'Cacilie', '$2a$10$zj.QMudxb/wTZ2vOPZMciObIhljg5cmWTJ6cQ4pakKPo8vzYM.sNW', 'Dubai', '2', '3'),
(95, 'Nelle', '$2a$10$Es37bjrhHssxr..TTe7eOuWJf8dm6PQPBwuKmDJQ/YiiwjD.ThgDK', 'Sarajevo', '2', '3'),
(96, 'Albertina', '$2a$10$AFU95HCNEh/bUN04jZi3tulsqqW4eD/vsP9SDzWg9tVrJRir.HEQ2', 'Kunming', '2', '3'),
(97, 'Marcelline', '$2a$10$MV2769QvDWinHcUy/DMV5eQ1tgSt.YdYJ8TFvh4IfcH5H39ngNBtW', 'South Tarawa', '2', '3'),
(98, 'Mireielle', '$2a$10$oUvpzn/91IqWiCNO9phuLOyj7gq9jItl4zRfWYWiNptt5rEhr9IEq', 'Providence', '2', '3'),
(99, 'Catharine', '$2a$10$e8JA8rtrw82nOb48WLIu9uafnD/HTpCdXKo8W1gegpPCx4CPeBUSi', 'Ottawa', '2', '3'),
(100, 'Jean', '$2a$10$EHvYuUVdsRvum.VwbUjPnuSLwFViw0DFoDVejlhksKZw6u/3lFu52', 'Kyoto', '2', '3'),
(101, 'Evaleefn', '$2a$10$XG0QnuSXOi5G96wEV2Wrde9BS.Dc3Elt8EYYdGhEetHAwOIa3mYuC', 'Somewhere', '5', '8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
