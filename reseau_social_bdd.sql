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
-- Base de données :  `reseau_social_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `amis`
--

CREATE TABLE `amis` (
  `id_amis` int(11) NOT NULL,
  `id_utilisateur_1` int(11) NOT NULL,
  `id_utilisateur_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `amis`
--

INSERT INTO `amis` (`id_amis`, `id_utilisateur_1`, `id_utilisateur_2`) VALUES
(1, 1, 5),
(2, 5, 1),
(3, 2, 7),
(4, 7, 2),
(5, 7, 1),
(6, 1, 7),
(7, 4, 8),
(8, 3, 4),
(9, 8, 4),
(10, 4, 3),
(11, 8, 11),
(12, 11, 8),
(13, 8, 12),
(14, 12, 8),
(15, 9, 3),
(16, 1, 3),
(17, 3, 9),
(18, 3, 1),
(19, 6, 3),
(20, 3, 6),
(21, 5, 8),
(22, 8, 5),
(23, 3, 5),
(24, 5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id_commentaire` int(11) NOT NULL,
  `contenu_commentaire` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_publication` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `contenu_commentaire`, `id_utilisateur`, `id_publication`) VALUES
(1, 'ça fais peur :s', 4, 2),
(2, 'Trop bien #jalousieExtreme', 6, 3),
(3, 'j\'aimerai y être ', 10, 3),
(4, 'merguez', 3, 2),
(5, 'Je m\'en fiche du texte ! ', 3, 1),
(8, 'Je n\'aime pas ne pas savoir quoi ecrire', 1, 3),
(9, 'Je m\'en fiche complètement.', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_evenement` int(11) NOT NULL,
  `nom_evenement` varchar(255) NOT NULL,
  `date_evenement` date NOT NULL,
  `heure_evenement` varchar(5) NOT NULL,
  `confidentialite_evenement` varchar(30) NOT NULL,
  `id_utilisateur_createur` int(11) NOT NULL,
  `contenu_evenement` varchar(255) NOT NULL,
  `lieu_evenement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `evenement`
--

INSERT INTO `evenement` (`id_evenement`, `nom_evenement`, `date_evenement`, `heure_evenement`, `confidentialite_evenement`, `id_utilisateur_createur`, `contenu_evenement`, `lieu_evenement`) VALUES
(1, 'café voyage', '2016-12-15', '17:00', 'public', 3, '', ''),
(2, 'Noël au balcon ', '2016-12-24', '23:00', 'public', 8, '', ''),
(3, 'pêche entre copain', '2016-12-20', '06:00', 'privé', 1, '', ''),
(4, 'concert de piano', '2016-12-26', '23:00', 'privé', 5, '', ''),
(5, 'paris manga', '2016-12-17', '13:00', 'public', 4, '', ''),
(6, 'Conférence Chili', '2017-01-25', '18:00', 'public', 10, '', ''),
(13, 'Argentine en folie154564564', '2017-02-10', '10:20', 'public', 19, 'Les argentins dans toute leur splendeur', 'grenoble'),
(16, 'noel', '2017-02-09', '10:20', 'public', 22, 'eraygrstujytrsujdtyjjyt', 'grenoble');

-- --------------------------------------------------------

--
-- Structure de la table `groupe_voyage`
--

CREATE TABLE `groupe_voyage` (
  `id_groupe_voyage` int(11) NOT NULL,
  `nom_groupe` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `contenu` text NOT NULL,
  `pays` varchar(100) NOT NULL,
  `confidentialite_groupe` varchar(30) NOT NULL,
  `id_utilisateur_createur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe_voyage`
--

INSERT INTO `groupe_voyage` (`id_groupe_voyage`, `nom_groupe`, `description`, `contenu`, `pays`, `confidentialite_groupe`, `id_utilisateur_createur`) VALUES
(1, 'groupe madagascar', 'un groupe sur madagascar quoi!!', 'plein de trucs concernant madagascar', 'madagascar', 'public', 10),
(11, 'Voyage japon', 'Voyage au japon\r\nbudget 500€', 'On va voir Tokyo c\'est trop cool !\r\n\r\n', 'Japon', 'public', 3),
(12, 'Voyage Australie', 'Tour complet de l’Australie', 'Tout ce que vous avez toujours voulu savoir sur l\'Australie', 'Australie', 'privé', 4),
(13, 'Voyage Portugal', 'Venez au pays du ciment ', 'Truelle, brouette et bétonnière requis', 'Portugal', 'public', 7),
(14, 'Voyage en Chine', 'Voir la muraille de chine !', 'Nous vous déconseillons de ramenez votre chien', 'Chine', 'privé', 5);

-- --------------------------------------------------------

--
-- Structure de la table `membre_evenement`
--

CREATE TABLE `membre_evenement` (
  `id_membre_evenement` int(11) NOT NULL,
  `id_evenement` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre_evenement`
--

INSERT INTO `membre_evenement` (`id_membre_evenement`, `id_evenement`, `id_utilisateur`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 2),
(4, 2, 7),
(5, 2, 10),
(6, 6, 8),
(7, 4, 8),
(8, 5, 5),
(9, 5, 3),
(10, 1, 10),
(11, 1, 12);

-- --------------------------------------------------------

--
-- Structure de la table `membre_groupe_voyage`
--

CREATE TABLE `membre_groupe_voyage` (
  `id_nombre_groupe` int(11) NOT NULL,
  `id_groupe_voyage` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre_groupe_voyage`
--

INSERT INTO `membre_groupe_voyage` (`id_nombre_groupe`, `id_groupe_voyage`, `id_utilisateur`) VALUES
(1, 1, 5),
(2, 1, 7),
(3, 1, 1),
(4, 1, 10),
(10, 13, 7),
(11, 13, 10),
(12, 13, 5),
(13, 12, 10);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_message` int(11) NOT NULL,
  `id_utilisateur_1` int(11) NOT NULL,
  `id_utilisateur_2` int(11) NOT NULL,
  `date_message` date NOT NULL,
  `heure_message` varchar(5) NOT NULL,
  `contenu_message` varchar(364) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`id_message`, `id_utilisateur_1`, `id_utilisateur_2`, `date_message`, `heure_message`, `contenu_message`) VALUES
(1, 1, 3, '2016-12-14', '15:49', 'Salut ça va'),
(2, 3, 1, '2016-12-14', '15:50', 'ça va merci et toi ?'),
(3, 1, 3, '2016-12-14', '15:52', 'Super merci !'),
(4, 1, 3, '2016-12-14', '15:52', 'Tu fais quoi ?'),
(5, 3, 1, '2016-12-14', '15:54', 'Je regarde un film lol et toi '),
(6, 1, 3, '2016-12-14', '15:55', 'rien '),
(7, 4, 2, '2016-12-18', '18:42', 'RDV a 18 heure pour le champagne !! ');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_01_26_151708_create_sessions_table', 1),
(2, '2017_01_26_154119_add_Timestamp_To_publication', 1),
(3, '2017_01_27_121931_add_column_Descriptions_in_table_Utilisateurs', 1),
(4, '2017_01_29_140434_add_contenu_to_evenement_table', 1),
(5, '2017_01_29_140457_add_lieu_to_evenement_table', 1),
(6, '2017_02_02_083843_add_timestamp_in_utilisateur_table', 2),
(8, '2017_02_02_095503_add_remember_token_in_utilisateur_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `partage`
--

CREATE TABLE `partage` (
  `id_partage` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_publication` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `partage`
--

INSERT INTO `partage` (`id_partage`, `id_utilisateur`, `id_publication`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 1, 3),
(4, 7, 2),
(5, 8, 2),
(6, 3, 3),
(7, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id_publication` int(11) NOT NULL,
  `titre_publication` varchar(100) NOT NULL,
  `contenu_publication` varchar(364) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `date_publication` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `publication`
--

INSERT INTO `publication` (`id_publication`, `titre_publication`, `contenu_publication`, `id_utilisateur`, `date_publication`, `created_at`, `updated_at`) VALUES
(1, 'voyage Japon', 'J\'aime les samouraï et  voyage\r\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Samurai_with_sword.jpg/220px-Samurai_with_sword.jpg', 2, '2016-12-14', NULL, NULL),
(2, 'café à Marseille', 'ça tire dans tous les coins !!!!!!', 10, '2016-12-13', NULL, NULL),
(3, 'plongé à Bali ', 'c\'est mieux qu\'Uncharted en voyage informatique', 7, '2016-07-20', NULL, NULL),
(4, 'Le poulet c\'est bon', 'Recette du poulet', 3, '2017-02-09', NULL, NULL),
(5, 'Pain perdu !', 'Recette du pain perdu ! Qui va le retrouver en premier ? ', 8, '2017-01-12', NULL, NULL),
(8, 'Les merguez d\'Argentine ', 'Tout sur les merguez et voyage  d\'Argentine', 6, '2017-04-13', NULL, NULL),
(9, 'La cordillère des Andes', 'Tout les informations sur les randonnées de la cordillère et voyage', 5, '2016-12-04', NULL, NULL),
(10, 'chine', 'la chine c bien et c des beaux voyages', 2, '2017-01-02', NULL, NULL),
(11, 'chine2', 'la chine c un super voyage ', 2, '2017-01-04', NULL, NULL),
(12, 'PHP', 'php est un langage informatique', 7, '2017-01-10', NULL, NULL),
(13, 'Les requêtes SQL', 'Pour traiter des bases de données en informatique', 6, '2017-01-01', NULL, NULL);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `signalement`
--

CREATE TABLE `signalement` (
  `id_signalement` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `contenu_signalement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `signalement`
--

INSERT INTO `signalement` (`id_signalement`, `id_utilisateur`, `contenu_signalement`) VALUES
(1, 1, 'quelque chose'),
(2, 2, 'autre chose'),
(3, 2, 'men fou des signalemen'),
(4, 7, 'Je me suis fait insulter dans le groupe du voyage au japon :\'( '),
(5, 9, 'L\'utilisateur X n\'est pas respectueux envers les autres utilisateurs, plusieurs insulte sur le liens suivant : www.insulte.com');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `date_naissance` date NOT NULL,
  `confidentialite_user` varchar(255) DEFAULT NULL,
  `email` text NOT NULL,
  `mot_de_passe` text NOT NULL COMMENT 'criptage',
  `pays` varchar(255) DEFAULT NULL,
  `est_admin` tinyint(1) DEFAULT NULL,
  `Description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `prenom`, `nom`, `ville`, `date_naissance`, `confidentialite_user`, `email`, `mot_de_passe`, `pays`, `est_admin`, `Description`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Hannah', 'Huffman', 'Hody', '1938-12-02', 'lorem', 'Maecenas.malesuada@sagittisfelis.org', '736gtRiG', 'United States Minor Outlying Islands', 0, '', NULL, NULL, NULL),
(2, 'Jesse', 'Johnson', 'Forchtenstein', '1926-10-05', 'Fusce', 'purus.Nullam.scelerisque@elementum.edu', 'J5yf2fV3', 'Gambia', 0, '', NULL, NULL, NULL),
(3, 'Alea', 'Randolph', 'Upplands Väsby', '1971-12-29', 'est,', 'scelerisque.neque.sed@lectusasollicitudin.co.uk', '77qYZan9', 'United States', 0, '', NULL, NULL, NULL),
(4, 'Glenna', 'Nguyen', 'Wabamun', '1943-12-13', 'lorem', 'porttitor@risus.ca', '449dLfiX', 'Maldives', 0, '', NULL, NULL, NULL),
(5, 'Nehru', 'Roberts', 'Kawartha Lakes', '2000-05-20', 'commodo', 'Aliquam@mauris.net', '2u6i6PEr', 'Bonaire, Sint Eustatius and Saba', 0, '', NULL, NULL, NULL),
(6, 'Holmes', 'Cash', 'Pinto', '1923-09-04', 'id', 'semper.tellus@pedenecante.org', 'Y2snX69f', 'Namibia', 0, '', NULL, NULL, NULL),
(7, 'Keiko', 'Benjamin', 'Coleville Lake', '1932-01-14', 'consequat', 'id.magna.et@interdumenimnon.co.uk', 'Du7ig9W7', 'American Samoa', 0, '', NULL, NULL, NULL),
(8, 'Eaton', 'Boyer', 'San Jose', '1930-07-11', 'pharetra', 'sed@nectellusNunc.ca', 'KG5qks22', 'Guyana', 0, '', NULL, NULL, NULL),
(9, 'Mary', 'Tyler', 'College', '1934-08-05', 'fringilla', 'Proin.velit@necligulaconsectetuer.edu', '2N7kDsa2', 'Bosnia and Herzegovina', 0, '', NULL, NULL, NULL),
(10, 'Adena', 'Bradley', 'Stourbridge', '1984-07-26', 'augue', 'in.consequat@Etiamgravida.edu', 'Dj524iCw', 'Rwanda', 0, '', NULL, NULL, NULL),
(11, 'georges', 'lafrais', 'San Jose', '1995-12-09', 'etryh', 'salut@rien.com', 'patapouffe', 'Guyana', 0, '', NULL, NULL, NULL),
(12, 'fred', 'lemrachais', 'San Jose', '1990-01-18', 'zrth', 'salut@rien.com', 'zrthz', 'Guyana', 0, '', NULL, NULL, NULL),
(13, 'sfgh', 'oihglkjhg', 'kjhmkjh', '1989-12-12', NULL, 'qdfhg@qdfh.com', '$2y$10$3Z1a6yVlYVdA.3OPfNHP5OXufyVUw/ncEg6bUu9WLirMtFBj3hTQO', NULL, NULL, NULL, '2017-02-02 08:07:36', '2017-02-02 08:07:36', NULL),
(14, 'boris', 'fournier', 'grenoble', '1982-06-06', NULL, 'the_eub@hotmail.com', '$2y$10$rYlH4EDcv87oiUzlXtJjfevCS2mFRce6Ze7kUzX9V1mbk.QpEL34i', NULL, NULL, NULL, '2017-02-02 08:11:26', '2017-02-02 08:11:26', NULL),
(15, 'erth', 'rtehtrh', 'rthrtzh', '1999-02-10', NULL, 'rzth@hotmail.com', '$2y$10$itooZYEaDIVx/1h6gyPo.eEdady.QFekvSJ0XMCrluoZzq4Yg3G.m', NULL, NULL, NULL, '2017-02-02 13:45:32', '2017-02-02 13:45:32', NULL),
(16, 'rth', 'rsth', 'fsghfgsh', '1995-10-10', NULL, 'rth@rzsth.com', '$2y$10$gexUU026kEMXl.pKyaxukeZEsWi2Qgwz.92AO319WYlqorCqvwYna', NULL, NULL, NULL, '2017-02-02 13:56:04', '2017-02-02 13:56:21', '2L0ixcTMi5HQZPzVltpS6PD5rvCFpA9VQdVnjqQWyViAvs1J9JsZcy8i76Id'),
(17, 'boris', 'fournier', 'edhgsdhg', '1995-10-10', NULL, 'the_eub@hotmail.com', '$2y$10$qD0rLbCSqHXNz8K0d/wDgeT54hg.23yQrWPHgFzVQCrByiyfCkO8a', NULL, NULL, NULL, '2017-02-02 13:58:51', '2017-02-02 13:58:55', '2LwWGzOi65GiGhBMISwp8hP3aK9VVQxL9Z5USVWOOA7kPOsn7nPfcZ0doXFO'),
(18, 'boris', 'fournier', 'grenoble', '1982-06-06', 'public', 'boris@email.com', '$2y$10$WprcYSvkH7TVblFet0B7kORI95Hs63VA40TdA1w1U1h9Fe1bRGZT2', NULL, NULL, NULL, '2017-02-03 11:46:16', '2017-02-03 13:34:03', '2WvT4FqWIY8e7uXYCXvOPJ1ev0CgRfQyrSBz3oI36CEs4t4MaspxpOpqhjlf'),
(19, 'boris', 'fournier', 'grenoble', '1982-12-20', 'public', 'the_eub@hotmail.com', '$2y$10$tlCyGTNCWX.u3iThcmEMA.lCyFUZq4toFW/d1SKRwHXLSCbNyZ1z.', NULL, NULL, NULL, '2017-02-03 13:38:01', '2017-02-03 13:38:01', NULL),
(20, 'boris', 'fournier', 'grenoble', '1982-06-06', 'public', 'the_eub@hotmail.com', '$2y$10$9LEIvQpcI61SBR6rv4qJpOgnoLkIAdI0Rhm9utIiKhY/zPkfD7Mqy', NULL, NULL, NULL, '2017-02-06 07:39:58', '2017-02-06 07:40:54', 'q6h5EuN4VNUVxDjFbtou97cGXTbjoyJTEFZjMKtvdTgrdA494fT0uIjm6rwP'),
(21, 'boris', 'fournier', 'gre', '1985-06-06', 'public', 'the_eub@hotmail.com', '$2y$10$6uytmTV3WYfMmFgUZTWZl.dbDEbpknJSURfigBzMCCB2mcQIjQ8rW', NULL, NULL, NULL, '2017-02-06 07:48:31', '2017-02-06 07:48:38', 'Gnng7Sof97XY6XQxFumbQGD2mXKxJWMIoYWYGUxzm9oP1EVj62i1C84CX3Zz'),
(22, 'paulo', 'georges', 'moutiers', '1985-04-06', 'public', 'exemple@hotmail.com', '$2y$10$XQ.rL1gSwDsgKXH5jt1Bwughvqw3qrO92ZdXljEz5tpTzSSAwXvS.', NULL, NULL, NULL, '2017-02-06 07:52:27', '2017-02-06 14:49:21', '9TdigcwgYbsxGsTjKvrA04cCXd5dpD6nLSqQC1ha1skcSImtIJ0qi3vsqsjj');

-- --------------------------------------------------------

--
-- Structure de la table `_like`
--

CREATE TABLE `_like` (
  `id_like` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_publication` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `_like`
--

INSERT INTO `_like` (`id_like`, `id_utilisateur`, `id_publication`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 9),
(5, 10, 8),
(6, 5, 9),
(8, 7, 2),
(9, 8, 9),
(10, 1, 4),
(11, 4, 10),
(12, 2, 4),
(13, 3, 4),
(14, 9, 4),
(15, 6, 4),
(16, 3, 12),
(17, 6, 13),
(18, 12, 12),
(19, 11, 13),
(20, 10, 12),
(21, 1, 13);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `amis`
--
ALTER TABLE `amis`
  ADD PRIMARY KEY (`id_amis`),
  ADD KEY `id_utilisateur_1` (`id_utilisateur_1`),
  ADD KEY `id_utilisateur_2` (`id_utilisateur_2`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id_commentaire`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_publication` (`id_publication`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_evenement`),
  ADD KEY `id_utilisateur` (`id_utilisateur_createur`);

--
-- Index pour la table `groupe_voyage`
--
ALTER TABLE `groupe_voyage`
  ADD PRIMARY KEY (`id_groupe_voyage`),
  ADD KEY `createur_id` (`id_utilisateur_createur`),
  ADD KEY `createur_id_2` (`id_utilisateur_createur`),
  ADD KEY `createur_id_3` (`id_utilisateur_createur`);

--
-- Index pour la table `membre_evenement`
--
ALTER TABLE `membre_evenement`
  ADD PRIMARY KEY (`id_membre_evenement`),
  ADD KEY `id_evenement` (`id_evenement`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `membre_groupe_voyage`
--
ALTER TABLE `membre_groupe_voyage`
  ADD PRIMARY KEY (`id_nombre_groupe`),
  ADD KEY `id_groupe_voyage` (`id_groupe_voyage`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_utilisateur_1` (`id_utilisateur_1`),
  ADD KEY `id_utilisateur_2` (`id_utilisateur_2`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partage`
--
ALTER TABLE `partage`
  ADD PRIMARY KEY (`id_partage`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_publication` (`id_publication`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id_publication`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Index pour la table `signalement`
--
ALTER TABLE `signalement`
  ADD PRIMARY KEY (`id_signalement`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- Index pour la table `_like`
--
ALTER TABLE `_like`
  ADD PRIMARY KEY (`id_like`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_publication` (`id_publication`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `amis`
--
ALTER TABLE `amis`
  MODIFY `id_amis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id_commentaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_evenement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `groupe_voyage`
--
ALTER TABLE `groupe_voyage`
  MODIFY `id_groupe_voyage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `membre_evenement`
--
ALTER TABLE `membre_evenement`
  MODIFY `id_membre_evenement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `membre_groupe_voyage`
--
ALTER TABLE `membre_groupe_voyage`
  MODIFY `id_nombre_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `partage`
--
ALTER TABLE `partage`
  MODIFY `id_partage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `id_publication` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `signalement`
--
ALTER TABLE `signalement`
  MODIFY `id_signalement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `_like`
--
ALTER TABLE `_like`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `amis`
--
ALTER TABLE `amis`
  ADD CONSTRAINT `amis_ibfk_1` FOREIGN KEY (`id_utilisateur_1`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `amis_ibfk_2` FOREIGN KEY (`id_utilisateur_2`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `commentaire_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `commentaire_ibfk_2` FOREIGN KEY (`id_publication`) REFERENCES `publication` (`id_publication`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `evenement_ibfk_1` FOREIGN KEY (`id_utilisateur_createur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `groupe_voyage`
--
ALTER TABLE `groupe_voyage`
  ADD CONSTRAINT `groupe_voyage_ibfk_1` FOREIGN KEY (`id_utilisateur_createur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `membre_evenement`
--
ALTER TABLE `membre_evenement`
  ADD CONSTRAINT `membre_evenement_ibfk_1` FOREIGN KEY (`id_evenement`) REFERENCES `evenement` (`id_evenement`),
  ADD CONSTRAINT `membre_evenement_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `membre_groupe_voyage`
--
ALTER TABLE `membre_groupe_voyage`
  ADD CONSTRAINT `membre_groupe_voyage_ibfk_1` FOREIGN KEY (`id_groupe_voyage`) REFERENCES `groupe_voyage` (`id_groupe_voyage`),
  ADD CONSTRAINT `membre_groupe_voyage_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`id_utilisateur_1`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`id_utilisateur_2`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `partage`
--
ALTER TABLE `partage`
  ADD CONSTRAINT `partage_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `partage_ibfk_2` FOREIGN KEY (`id_publication`) REFERENCES `publication` (`id_publication`);

--
-- Contraintes pour la table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `signalement`
--
ALTER TABLE `signalement`
  ADD CONSTRAINT `signalement_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `_like`
--
ALTER TABLE `_like`
  ADD CONSTRAINT `_like_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `_like_ibfk_2` FOREIGN KEY (`id_publication`) REFERENCES `publication` (`id_publication`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
