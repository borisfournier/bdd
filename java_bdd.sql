-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 31 Mars 2017 à 07:03
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `java_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `expediteur` varchar(30) NOT NULL,
  `destinataire` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `role` varchar(30) NOT NULL,
  `pseudo` varchar(30) DEFAULT NULL,
  `niveau` varchar(30) DEFAULT NULL,
  `salaire` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id`, `prenom`, `nom`, `age`, `role`, `pseudo`, `niveau`, `salaire`) VALUES
(2, 'georges', 'michael', 54, 'moderateur', '', NULL, 0),
(4, 'salut', 'cava', 47, 'directeur', '', NULL, 0),
(5, 'adrien', 'juhem', 26, 'utilisateur', '', NULL, 0),
(6, 'marc', 'fayolle', 40, 'directeur', '', NULL, 0),
(7, 'bobo', 'mistral', 45, 'utilisateur', '', NULL, 0),
(10, 'bobo', 'l\'asticot', 99, 'directeur', NULL, NULL, 5000),
(11, 'coucou', 'bonjour', 53, 'moderateur', 'modo', 'Niveau 2', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
