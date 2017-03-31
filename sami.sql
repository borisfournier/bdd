-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 31 Mars 2017 à 07:04
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sami`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(3) DEFAULT NULL,
  `first_name` varchar(11) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `email` varchar(29) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `gender`) VALUES
(1, 'Julie', 'Torres', 'jtorres0@foxnews.com', 'Female'),
(2, 'Matthew', 'Parker', 'mparker1@chicagotribune.com', 'Male'),
(3, 'Frank', 'Cruz', 'fcruz2@mozilla.com', 'Male'),
(4, 'Donna', 'Smith', 'dsmith3@wordpress.org', 'Female'),
(5, 'Randy', 'Baker', 'rbaker4@economist.com', 'Male'),
(6, 'Jacqueline', 'Wallace', 'jwallace5@washingtonpost.com', 'Female'),
(7, 'Walter', 'Myers', 'wmyers6@symantec.com', 'Male'),
(8, 'Keith', 'Rose', 'krose7@t-online.de', 'Male'),
(9, 'Willie', 'Richardson', 'wrichardson8@bizjournals.com', 'Male'),
(10, 'Robin', 'Miller', 'rmiller9@wufoo.com', 'Female'),
(11, 'Sara', 'Franklin', 'sfranklina@storify.com', 'Female'),
(12, 'Steven', 'Watson', 'swatsonb@jigsy.com', 'Male'),
(13, 'Kenneth', 'Grant', 'kgrantc@hc360.com', 'Male'),
(14, 'Mildred', 'Jacobs', 'mjacobsd@webmd.com', 'Female'),
(15, 'Shawn', 'Sanders', 'ssanderse@imdb.com', 'Male'),
(16, 'Terry', 'Myers', 'tmyersf@yelp.com', 'Male'),
(17, 'Johnny', 'Hamilton', 'jhamiltong@cornell.edu', 'Male'),
(18, 'Harold', 'Barnes', 'hbarnesh@gizmodo.com', 'Male'),
(19, 'Richard', 'Bailey', 'rbaileyi@vk.com', 'Male'),
(20, 'Maria', 'Fowler', 'mfowlerj@mlb.com', 'Female'),
(21, 'Willie', 'Hicks', 'whicksk@oakley.com', 'Male'),
(22, 'Janice', 'Hicks', 'jhicksl@jigsy.com', 'Female'),
(23, 'Earl', 'Robertson', 'erobertsonm@artisteer.com', 'Male'),
(24, 'Teresa', 'Welch', 'twelchn@people.com.cn', 'Female'),
(25, 'Jean', 'Hill', 'jhillo@parallels.com', 'Female'),
(26, 'Jessica', 'Miller', 'jmillerp@usnews.com', 'Female'),
(27, 'Sharon', 'Ford', 'sfordq@i2i.jp', 'Female'),
(28, 'Kathleen', 'Burke', 'kburker@4shared.com', 'Female'),
(29, 'Donald', 'Gordon', 'dgordons@bizjournals.com', 'Male'),
(30, 'Lori', 'Ellis', 'lellist@dropbox.com', 'Female'),
(31, 'Cynthia', 'Walker', 'cwalkeru@rambler.ru', 'Female'),
(32, 'Nicole', 'Duncan', 'nduncanv@google.co.uk', 'Female'),
(33, 'Adam', 'Ross', 'arossw@infoseek.co.jp', 'Male'),
(34, 'Mark', 'Mills', 'mmillsx@amazonaws.com', 'Male'),
(35, 'Matthew', 'Mendoza', 'mmendozay@fastcompany.com', 'Male'),
(36, 'Willie', 'Ferguson', 'wfergusonz@ycombinator.com', 'Male'),
(37, 'Frances', 'Long', 'flong10@nifty.com', 'Female'),
(38, 'Mark', 'Cook', 'mcook11@geocities.com', 'Male'),
(39, 'Maria', 'Gardner', 'mgardner12@naver.com', 'Female'),
(40, 'Philip', 'Rice', 'price13@goo.gl', 'Male'),
(41, 'Bonnie', 'Burns', 'bburns14@senate.gov', 'Female'),
(42, 'Jeffrey', 'Armstrong', 'jarmstrong15@amazonaws.com', 'Male'),
(43, 'Diana', 'Edwards', 'dedwards16@wsj.com', 'Female'),
(44, 'Joe', 'Wheeler', 'jwheeler17@tuttocitta.it', 'Male'),
(45, 'Jeremy', 'Russell', 'jrussell18@gov.uk', 'Male'),
(46, 'Christopher', 'Welch', 'cwelch19@shop-pro.jp', 'Male'),
(47, 'Willie', 'Spencer', 'wspencer1a@imageshack.us', 'Male'),
(48, 'Melissa', 'Gardner', 'mgardner1b@ucoz.com', 'Female'),
(49, 'Kathy', 'Weaver', 'kweaver1c@nbcnews.com', 'Female'),
(50, 'Frank', 'Sullivan', 'fsullivan1d@ox.ac.uk', 'Male'),
(51, 'Dorothy', 'Evans', 'devans1e@simplemachines.org', 'Female'),
(52, 'Michelle', 'Marshall', 'mmarshall1f@sourceforge.net', 'Female'),
(53, 'Martin', 'Butler', 'mbutler1g@stumbleupon.com', 'Male'),
(54, 'Mark', 'Welch', 'mwelch1h@msu.edu', 'Male'),
(55, 'Gary', 'Ellis', 'gellis1i@qq.com', 'Male'),
(56, 'Phillip', 'Hamilton', 'phamilton1j@phpbb.com', 'Male'),
(57, 'Diana', 'Robinson', 'drobinson1k@squarespace.com', 'Female'),
(58, 'Gloria', 'Wheeler', 'gwheeler1l@latimes.com', 'Female'),
(59, 'Anna', 'Davis', 'adavis1m@epa.gov', 'Female'),
(60, 'Matthew', 'Miller', 'mmiller1n@xinhuanet.com', 'Male'),
(61, 'Michelle', 'Alvarez', 'malvarez1o@wp.com', 'Female'),
(62, 'Christina', 'Robertson', 'crobertson1p@dropbox.com', 'Female'),
(63, 'Doris', 'Duncan', 'dduncan1q@reddit.com', 'Female'),
(64, 'Jean', 'Nelson', 'jnelson1r@seattletimes.com', 'Female'),
(65, 'Amanda', 'Duncan', 'aduncan1s@booking.com', 'Female'),
(66, 'Kevin', 'James', 'kjames1t@free.fr', 'Male'),
(67, 'Janice', 'Reynolds', 'jreynolds1u@artisteer.com', 'Female'),
(68, 'Gregory', 'Stephens', 'gstephens1v@cbc.ca', 'Male'),
(69, 'Evelyn', 'Black', 'eblack1w@wired.com', 'Female'),
(70, 'Teresa', 'Perry', 'tperry1x@youtube.com', 'Female'),
(71, 'Steven', 'Weaver', 'sweaver1y@istockphoto.com', 'Male'),
(72, 'Victor', 'Daniels', 'vdaniels1z@flavors.me', 'Male'),
(73, 'Angela', 'Cox', 'acox20@vk.com', 'Female'),
(74, 'Amy', 'Willis', 'awillis21@netlog.com', 'Female'),
(75, 'Kathleen', 'Cruz', 'kcruz22@mysql.com', 'Female'),
(76, 'Patrick', 'Bell', 'pbell23@google.com', 'Male'),
(77, 'Jean', 'Austin', 'jaustin24@mit.edu', 'Female'),
(78, 'Stephen', 'Powell', 'spowell25@about.me', 'Male'),
(79, 'Jimmy', 'Montgomery', 'jmontgomery26@yahoo.co.jp', 'Male'),
(80, 'Betty', 'Wilson', 'bwilson27@admin.ch', 'Female'),
(81, 'Edward', 'Nguyen', 'enguyen28@ihg.com', 'Male'),
(82, 'Raymond', 'Taylor', 'rtaylor29@scribd.com', 'Male'),
(83, 'Ruth', 'Foster', 'rfoster2a@scribd.com', 'Female'),
(84, 'Wanda', 'Baker', 'wbaker2b@weather.com', 'Female'),
(85, 'Diana', 'Washington', 'dwashington2c@theatlantic.com', 'Female'),
(86, 'Ernest', 'Walker', 'ewalker2d@webnode.com', 'Male'),
(87, 'Patrick', 'Russell', 'prussell2e@a8.net', 'Male'),
(88, 'Bruce', 'Dunn', 'bdunn2f@odnoklassniki.ru', 'Male'),
(89, 'Bobby', 'Jenkins', 'bjenkins2g@sitemeter.com', 'Male'),
(90, 'Cynthia', 'Willis', 'cwillis2h@prnewswire.com', 'Female'),
(91, 'Jennifer', 'Wilson', 'jwilson2i@tinyurl.com', 'Female'),
(92, 'Helen', 'Cooper', 'hcooper2j@ehow.com', 'Female'),
(93, 'Clarence', 'Jenkins', 'cjenkins2k@apache.org', 'Male'),
(94, 'Christine', 'Scott', 'cscott2l@quantcast.com', 'Female'),
(95, 'Michael', 'Owens', 'mowens2m@flavors.me', 'Male'),
(96, 'Norma', 'Reyes', 'nreyes2n@aboutads.info', 'Female'),
(97, 'Walter', 'Knight', 'wknight2o@marriott.com', 'Male'),
(98, 'Bobby', 'Taylor', 'btaylor2p@shop-pro.jp', 'Male'),
(99, 'Andrea', 'Alexander', 'aalexander2q@quantcast.com', 'Female'),
(100, 'Jane', 'Gonzales', 'jgonzales2r@patch.com', 'Female'),
(NULL, 'amine', 'azdez', 'dazd@gmail.com', 'Male'),
(NULL, 'amine', 'azdez', 'dazd@gmail.com', 'Male'),
(NULL, 'toto', 'toto', 'toto', 'toto'),
(NULL, 'toto', 'toto', 'toto', 'toto'),
(NULL, 'toto', 'toto', 'toto', 'toto'),
(NULL, 'toto', 'toto', 'toto', 'toto');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
