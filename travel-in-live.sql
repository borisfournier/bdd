-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 31 Mars 2017 à 07:05
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `travel-in-live`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'c pourri comme publication', 3, 17, '2017-02-15 09:59:01', '2017-02-15 09:59:01'),
(2, 'ca veut rien dire du tout', 3, 10, '2017-02-15 09:59:33', '2017-02-15 09:59:33');

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_hour` varchar(5) NOT NULL,
  `event_confidentiality` text NOT NULL,
  `creator_user_id` int(11) NOT NULL,
  `event_content` varchar(255) NOT NULL,
  `event_location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_date`, `event_hour`, `event_confidentiality`, `creator_user_id`, `event_content`, `event_location`, `created_at`, `updated_at`, `url`) VALUES
(2, 'LEverest ou le toit du monde', '2017-02-10', '12:20', 'public', 3, 'l\'everest c\'est le toit du monde et puis c tout', 'grenoble', '2017-02-07 12:14:19', '2017-02-15 16:07:38', '1487178458.jpg'),
(3, 'un autre evenenemnt', '2017-02-03', '14:40', 'public', 3, 'dsfhgfdqtsujhtfytrdikdstyèuje(-uézar-(uz-(truhplaceholder="{{$event_in_view->event_date}}"placeholder="{{$event_in_view->event_date}}"placeholder="{{$event_in_view->event_date}}"placeholder="{{$event_in_view->event_date}}"placeholder="', 'ici meme', '2017-02-07 12:50:12', '2017-02-07 12:50:12', NULL),
(4, 'nom évenement', '2017-02-23', '20:50', 'private', 3, 'du contenu', 'evenement', '2017-02-08 08:49:50', '2017-02-08 08:49:50', NULL),
(5, 'burkina fasso', '2017-02-16', '14:30', 'public', 10, 'bisso na bisso', 'ougadougou', NULL, NULL, NULL),
(6, 'j\'essaie un vrai nom', '2017-02-16', '04:02', 'public', 3, 'dgtyj', 'edgedagrerg', '2017-02-08 12:55:33', '2017-02-08 13:42:55', NULL),
(7, 'event privé', '2017-02-22', '20:20', 'private', 10, 'edqgfretrgeartgeargear', 'par la', NULL, NULL, NULL),
(8, 'un nom', '2017-05-26', '12:20', 'private', 11, 'ergergfeaqrzgfergergerqgeaqrg', 'ici', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `event_user`
--

CREATE TABLE `event_user` (
  `event_user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `event_user`
--

INSERT INTO `event_user` (`event_user_id`, `event_id`, `user_id`) VALUES
(17, 2, 4),
(18, 2, 10),
(19, 3, 15),
(20, 3, 10),
(21, 7, 3),
(22, 5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `friends`
--

CREATE TABLE `friends` (
  `friend_id` int(11) NOT NULL,
  `user_1_id` int(11) NOT NULL,
  `user_2_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `friends`
--

INSERT INTO `friends` (`friend_id`, `user_1_id`, `user_2_id`, `created_at`, `updated_at`) VALUES
(1, 3, 10, '2017-02-12 23:00:00', '2017-02-12 23:00:00'),
(2, 10, 3, '2017-02-12 23:00:00', '2017-02-12 23:00:00'),
(3, 23, 3, '2017-02-14 08:06:22', '2017-02-14 08:06:22'),
(4, 3, 23, '2017-02-14 08:06:22', '2017-02-14 08:06:22');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `likes`
--

INSERT INTO `likes` (`like_id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(2, 3, 17, '2017-02-15 09:58:46', '2017-02-15 09:58:46'),
(3, 3, 10, '2017-02-15 09:59:36', '2017-02-15 09:59:36');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_1_id` int(11) NOT NULL,
  `user_2_id` int(11) NOT NULL,
  `message_content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2017_01_26_151708_create_sessions_table', 1),
(14, '2017_01_27_121931_add_column_Descriptions_in_table_Utilisateurs', 1),
(15, '2017_01_29_140434_add_contenu_to_evenement_table', 1),
(16, '2017_01_29_140457_add_lieu_to_evenement_table', 1),
(17, '2017_02_02_095503_add_remember_token_in_utilisateur_table', 1),
(18, '2017_02_02_144505_add_utilisateur_url_image', 1),
(19, '2017_02_03_153953_add_timestamps_multiple_table', 2),
(20, '2017_02_06_081811_add_column_nbPost_in_reports', 3),
(22, '2017_02_07_105742_add_nullable_to_description_users', 4),
(23, '2017_02_07_102724_rm_date_and_hour_in_table_messages', 5),
(24, '2017_02_07_103128_rm_date_in_table_comments', 5),
(25, '2017_02_07_125654_change_type_of_hour_event', 5),
(26, '2017_02_07_131202_make__nullable_in_table_reports', 6),
(27, '2017_02_07_155031_Create_Password_Resets_Table', 7),
(28, '2017_02_08_125653_add_column_activities_and_travels_in_users_table', 8),
(29, '2017_02_08_151400_add_url_to_travelgroups_table', 8),
(30, '2017_02_14_135659_add_url_event', 8),
(31, '2017_02_15_134751_add_column_event_id_to_Posts', 9);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('sandrine@hotmail.com', '962e984907254ad52539ad20c3834da6fdb4f2356c8c8da805fac9e190f2ac55', '2017-02-10 11:44:41', NULL),
('sylvain@hotmail.com', '42f75817e13d02fd8d7a70bcc4da46d62bf34c393b47f372fe1f72198a53cdb8', '2017-02-10 12:10:32', NULL),
('laurent@hotmail.com', '7f88aa6d9c52399e6e913de09deeb51947e1a048acb8abfc262b0a1d829a3d60', '2017-02-10 12:39:23', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_id` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`post_id`, `post_content`, `user_id`, `created_at`, `updated_at`, `event_id`) VALUES
(1, 'I ought to go down the chimney!\' \'Oh! So Bill\'s got.', 12, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(2, 'Lobster Quadrille?\' the Gryphon answered, very.', 15, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(3, 'Alice rather unwillingly took the hookah out of his.', 15, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(4, 'I think you\'d better leave off,\' said the March Hare. \'He denies it,\' said the Hatter:.', 1, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(5, 'So she began: \'O Mouse, do you mean that you had been of late much.', 9, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(6, 'But the snail replied "Too far, too far!" and gave a little anxiously. \'Yes,\' said Alice,.', 8, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(7, 'I shall think nothing.', 9, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(8, 'I vote the young lady to see how the Dodo.', 3, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(9, 'After a time she saw them, they set to work very diligently to write.', 9, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(10, 'Alice hastily replied; \'only one doesn\'t like.', 10, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(11, 'The Mouse looked at poor Alice, \'when one wasn\'t always growing larger and.', 2, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(12, 'The first question of course was, how to spell \'stupid,\' and.', 16, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(13, 'The further off from England the.', 17, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(14, 'Gryphon..', 12, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(15, 'The Hatter\'s.', 17, '2017-02-07 14:37:05', '2017-02-07 14:37:05', NULL),
(16, 'c mon anniversaire le 29/03', 21, '2017-02-10 09:27:10', '2017-02-10 09:27:43', NULL),
(17, 'salut salut', 3, '2017-02-15 09:58:39', '2017-02-15 09:58:39', NULL),
(18, 'fdghfdsgjfdshgj', 3, '2017-02-15 13:48:20', '2017-02-15 13:48:20', '2'),
(19, 'ca va?\r\n', 3, '2017-02-15 13:50:08', '2017-02-15 13:50:08', '2'),
(20, 'c quand cet événement?', 3, '2017-02-15 13:50:22', '2017-02-15 13:50:22', '2'),
(21, 'c ou cet evenement exactement?', 3, '2017-02-15 13:51:33', '2017-02-15 13:51:33', '5');

-- --------------------------------------------------------

--
-- Structure de la table `post_user`
--

CREATE TABLE `post_user` (
  `post_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `report_content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `travelgroups`
--

CREATE TABLE `travelgroups` (
  `travelgroup_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `description` varchar(364) NOT NULL,
  `country` varchar(100) NOT NULL,
  `group_confidentiality` tinyint(1) NOT NULL,
  `creator_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `travelgroups`
--

INSERT INTO `travelgroups` (`travelgroup_id`, `group_name`, `description`, `country`, `group_confidentiality`, `creator_user_id`, `created_at`, `updated_at`, `url`) VALUES
(1, 'Super', 'vzecerzs', 'France', 1, NULL, NULL, NULL, NULL),
(2, 'eczcezsf', 'gfzecezs', 'France', 1, NULL, NULL, NULL, NULL),
(3, 'fezfez', 'bergerv', 'France', 1, NULL, NULL, NULL, NULL),
(4, 'voyage', 'poulet', 'Bangladesh', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `travelgroup_user`
--

CREATE TABLE `travelgroup_user` (
  `travelgroup_user_id` int(11) NOT NULL,
  `travelgroup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `user_confidentiality` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL COMMENT 'cryptage',
  `country` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `description` text,
  `remember_token` varchar(100) DEFAULT NULL,
  `url_user` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activities` text NOT NULL,
  `travels` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `city`, `birth_date`, `user_confidentiality`, `email`, `password`, `country`, `is_admin`, `description`, `remember_token`, `url_user`, `created_at`, `updated_at`, `activities`, `travels`) VALUES
(1, 'Poulet', 'Renaut', 'la tour du pin ', NULL, '1', 'jesaispas@hotmail.fr', '$2y$10$.vblZ2Etss6upi7Ls6Eoy.6/S7hd008DpLpnyaT8IzoWTICxokUiW', NULL, NULL, '', NULL, '', NULL, NULL, '', ''),
(2, 'Steeven', 'Renaut', 'la tour du pin ', NULL, '1', 'renaut69@hotmail.fr', '$2y$10$ynbgYzoeIl3GfkNUmMrHOumUirP.0qn5lwMfD58oSwncfanZ6PsS.', NULL, NULL, '', NULL, '', NULL, NULL, '', ''),
(3, 'boris', 'fournier', 'grenoble', NULL, 'public', 'the_eub@hotmail.com', '$2y$10$uEyP1Fq.KMsI.9aqU7N5uOpfadNo./S6sxSBpGnewMJWhYAAsjiNG', NULL, NULL, 'je suis chanteur', '51cxLkiViemFG9NncuE4ucJXwZATIUqf8EiCeCoxyR4uJxEmoBJ3RLyB0VyA', NULL, '2017-02-07 11:35:34', '2017-02-15 10:01:12', 'Je m\'appelle henri', ''),
(4, 'Elyssa', 'Lang', 'North Novabury', NULL, 'public', 'kayden29@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Seychelles', NULL, 'Duchess; \'and the moral of that is--"Birds of a water-well,\' said the.', 'IMkrF5aFqQ', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(5, 'Eula', 'Towne', 'West Liaberg', NULL, 'public', 'leopold.bruen@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Italy', NULL, 'Alice, flinging the baby at her hands, and began:--.', 'JGa0zWEF69', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(6, 'Gilberto', 'Mertz', 'O\'Konview', NULL, 'public', 'yschroeder@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'France', NULL, 'Hatter. \'Does YOUR watch tell you.', 'l41DEihudY', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(7, 'Ken', 'Halvorson', 'Gusikowskiton', NULL, 'public', 'rollin49@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Turks and Caicos Islands', NULL, 'King said, for about the reason is--\' here the.', 'f7VW7nbVbE', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(8, 'Lexus', 'Sanford', 'Lynchburgh', NULL, 'public', 'kenya.raynor@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Nepal', NULL, 'King was the Duchess\'s knee, while plates and dishes.', 'dU6yEsd1Xv', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(9, 'Nedra', 'Mosciski', 'Boyleview', NULL, 'public', 'irath@example.net', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Serbia', NULL, 'YOU sing,\' said.', 'CQMrx6D1Cc', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(10, 'Kory', 'Jast', 'Lake Kipshire', NULL, 'public', 'mosciski.elnora@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Mayotte', NULL, 'Alice; and Alice looked down into a line along the.', 'bS10nphIQO', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(11, 'Antonetta', 'Boyle', 'East Citlalli', NULL, 'public', 'krippin@example.net', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Pakistan', NULL, 'Bill! I wouldn\'t say anything about it, even if I.', 'YOzlXgNP7H', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(12, 'Retta', 'Gerlach', 'Jedidiahshire', NULL, 'public', 'qgreenfelder@example.net', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Guinea-Bissau', NULL, 'King. \'Shan\'t,\' said the Mock Turtle, and said to.', 'GiADOvpKSE', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(13, 'Milford', 'Connelly', 'Nikostad', NULL, 'public', 'enos.orn@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Libyan Arab Jamahiriya', NULL, 'Dormouse shall!\' they both bowed.', 'ZENVopf6uu', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(14, 'Karl', 'Jast', 'Blaisechester', NULL, 'public', 'renner.rudy@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Austria', NULL, 'Why, I do wonder what they\'ll do well.', 'YvYx3KSEOs', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(15, 'Kaci', 'Hermiston', 'Harrishaven', NULL, 'public', 'eula18@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Angola', NULL, 'King triumphantly, pointing to the Mock Turtle, \'Drive on, old.', 'B4YmJXlOlt', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(16, 'Maybell', 'Kirlin', 'Kaelachester', NULL, 'public', 'dusty58@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Cameroon', NULL, 'And she began shrinking directly. As soon as look at the house,.', 'W8L1lE4NhZ', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(17, 'Orland', 'McLaughlin', 'South Dolorestown', NULL, 'public', 'fahey.jeffrey@example.org', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Samoa', NULL, 'I can\'t show it you myself,\' the Mock Turtle went on again:-- \'You may.', 'jX6ibc72YG', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(18, 'Micah', 'Feest', 'West Emely', NULL, 'public', 'dparker@example.com', '$2y$10$s7dtf.vf.ZXlscPZhW72B.jGY02KcC7r8nVf.cHEYnQ.dabBJdLUO', 'Taiwan', NULL, 'I\'m afraid, sir\' said Alice, \'and why it is almost certain to disagree with you,.', '8uJuoMkCvz', NULL, '2017-02-07 14:37:05', '2017-02-07 14:37:05', '', ''),
(19, 'jerome', 'marre', 'grenoble', '1987-01-03', 'public', 'jeromemarre@hotmail.com', '$2y$10$6NMIbHyO0qp0cFo6C8NQ5uk0.N3e96MhdbTEDqHgdQQ.UhiMKO4Oi', NULL, NULL, NULL, 'bl1P1TCuzikd53IbTADmHbtprINxeSLWdinU9qZx3lDR9YzTOwcln0iylLwk', NULL, '2017-02-07 15:00:36', '2017-02-07 15:01:05', '', ''),
(20, 'sylvain', 'durand', 'montreal', '1980-03-29', 'public', 'sylvain@hotmail.com', '$2y$10$wJbv.43y4T37a3BLh0gituNb8MyU1Qm7vmvwjVA3cxJjSK3z6DUe2', NULL, NULL, NULL, 'migboEz4GqZTxfghlYv8qK8YEh3qsw9fixzSLSvrVzoR1C27lebdfINUdVz6', NULL, '2017-02-10 07:48:51', '2017-02-10 07:57:14', '', ''),
(21, 'sandrine', 'hugues', 'londres', '1978-05-25', 'public', 'sandrine@hotmail.com', '$2y$10$xQPr4XERIVFYCxGxCadJBeJXkYGHoAQznpz/GsFwfmkt7mQ2gM32C', NULL, NULL, NULL, 'yYcTIpRUBTDK38aBqCc37mFJpRPMl7DXZgTfmDJVWHLk4fOWONZFsobpK2nU', NULL, '2017-02-10 08:09:55', '2017-02-10 11:01:54', '', ''),
(22, 'zeryzteryzrtyrzty', 'rztyrtyuteryu', 'rsthfsthsft', '1985-02-02', 'public', 'teryuetryuetyu@rzsthy.com', '$2y$10$su1fS/5yL/czqBbm4Ft/F.rY77bg2kyD0zB30XkadrWiVjHfCM4b6', NULL, NULL, NULL, 'wlLWyRNvD51TzV4fXNdYrtOkrXDRGX2LehgZVJ1WEi94CTKVILYQowTuMxo5', NULL, '2017-02-10 08:20:51', '2017-02-10 08:24:40', '', ''),
(23, 'laurent', 'beauvisage', 'grenoble', '1982-06-06', 'public', 'laurent@hotmail.com', '$2y$10$ICnvFfpSqjxDySzkLttChO7zKOJKwE5xrTLET/OGsa7Ur.B7axA.a', NULL, NULL, NULL, 'qbvCGYqq1YArQavibOxIoCG68ygWogGsxz0wHqdFvG07i7CVVbSmmGDzq721', NULL, '2017-02-10 12:32:18', '2017-02-10 12:32:51', '', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publication_id` (`post_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `creator_user_id` (`creator_user_id`);

--
-- Index pour la table `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`event_user_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`friend_id`),
  ADD KEY `user_1_id` (`user_1_id`),
  ADD KEY `user_2_id` (`user_2_id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publication_id` (`post_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_1_id` (`user_1_id`),
  ADD KEY `user_2_id` (`user_2_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`post_user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publication_id` (`post_id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Index pour la table `travelgroups`
--
ALTER TABLE `travelgroups`
  ADD PRIMARY KEY (`travelgroup_id`),
  ADD KEY `creator_user_id` (`creator_user_id`);

--
-- Index pour la table `travelgroup_user`
--
ALTER TABLE `travelgroup_user`
  ADD PRIMARY KEY (`travelgroup_user_id`),
  ADD KEY `travel_group_id` (`travelgroup_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `event_user`
--
ALTER TABLE `event_user`
  MODIFY `event_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `friends`
--
ALTER TABLE `friends`
  MODIFY `friend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `post_user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `travelgroups`
--
ALTER TABLE `travelgroups`
  MODIFY `travelgroup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `travelgroup_user`
--
ALTER TABLE `travelgroup_user`
  MODIFY `travelgroup_user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`creator_user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `event_user`
--
ALTER TABLE `event_user`
  ADD CONSTRAINT `event_user_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `event_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_1_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`user_2_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_1_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_2_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `post_user_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Contraintes pour la table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `travelgroups`
--
ALTER TABLE `travelgroups`
  ADD CONSTRAINT `travelgroups_ibfk_1` FOREIGN KEY (`creator_user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `travelgroup_user`
--
ALTER TABLE `travelgroup_user`
  ADD CONSTRAINT `travelgroup_user_ibfk_1` FOREIGN KEY (`travelgroup_id`) REFERENCES `travelgroups` (`travelgroup_id`),
  ADD CONSTRAINT `travelgroup_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
