-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : alexiseszvzozo.mysql.db
-- Généré le :  ven. 30 avr. 2021 à 11:22
-- Version du serveur :  5.6.50-log
-- Version de PHP :  7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alexiseszvzozo`
--

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `numero` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `universite` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`identifiant`, `nom`, `prenom`, `mail`, `telephone`, `universite`) VALUES
(1, 'cochard ', 'gerard-michel', 'gerard-michel.cochard@u-picard', '0000000000', 1),
(2, 'BOUNEKKAR ', 'Ahmed', 'ahmed.bounekkar@univ-lyon1.fr', '0472432723', 2),
(3, 'delbot ', 'francois', 'francois.delbot@gmail.com', '000000000', 1),
(4, 'Serasset ', 'Gilles', 'Gilles.Serasset@univ-grenoble-', '00000000', 1),
(5, 'demeure ', 'alexandre', 'alexandre.demeure@univ-grenobl', '00000000', 1),
(6, 'caussanel ', 'jean', 'jean.caussanel@univ-amu.fr', '00000000', 4),
(7, 'saadi ', 'toufik', 'toufik.saadi@u-picardie.fr', '00000000', 1),
(8, 'thimonier ', 'loys', 'loys.thimonier@hotmail.fr', '000000', 5),
(9, 'cochard ', 'gerard-michel', 'gerard-michel.cochard@u-picard', '00000000', 5);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `niveau` int(11) NOT NULL,
  `datedebut` varchar(30) NOT NULL,
  `datefin` varchar(30) NOT NULL,
  `statut` int(11) NOT NULL,
  `miseenligne` int(11) NOT NULL,
  `domaine` varchar(30) NOT NULL,
  `niveauanne` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`identifiant`, `nom`, `niveau`, `datedebut`, `datefin`, `statut`, `miseenligne`, `domaine`, `niveauanne`) VALUES
(1, 'Mathématiques pour l\'informatique 1 ', 0, '2021-04-05', '2021-04-05', 0, 0, 'Mathématiques ', 1),
(2, 'Statistiques descriptives ', 0, '', '', 0, 0, 'mathématiques', 1),
(3, 'Probabilités  ', 0, '', '', 0, 0, 'mathématiques', 1),
(4, 'Géométrie analytique ', 0, '', '', 0, 0, 'mathématiques', 1),
(5, 'Analyse et Fouille de données ', 0, '', '', 0, 0, 'mathématiques', 1),
(6, 'Processus Stochastiques et Simulation Numérique ', 0, '', '', 0, 0, '0informatique', 1),
(7, 'Recherche Opérationnelle ', 0, '', '', 0, 0, '0inconnu', 1),
(8, 'Algèbre linéaire ', 0, '', '', 0, 0, '0informatique', 1),
(9, 'Analyse vectorielle  ', 0, '', '', 0, 1, 'mathématiques0', 1),
(10, 'Théorie des jeux ', 0, '', '', 0, 0, '0informatique', 1),
(11, 'Introduction à l\'Informatique quantique ', 0, '', '', 0, 0, '0informatique', 1),
(12, 'B223 - Unix de base ', 0, '', '', 0, 0, '0informatique', 1),
(15, 'Cybersécurité   ', 1, '2021-03-15', '2021-08-31', 1, 0, 'Web', 5),
(14, 'Programmation C ', 0, '', '', 0, 0, '0informatique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `module` int(11) NOT NULL,
  `niveauanne` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `niveauanne`
--

CREATE TABLE `niveauanne` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveauanne`
--

INSERT INTO `niveauanne` (`identifiant`, `nom`) VALUES
(1, 'L1'),
(2, 'L2'),
(3, 'L3'),
(4, 'M1'),
(5, 'M2');

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `enseignant` int(11) NOT NULL,
  `module` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suivi`
--

INSERT INTO `suivi` (`enseignant`, `module`) VALUES
(1, 1),
(1, 2),
(8, 3),
(1, 4),
(9, 6),
(3, 7),
(1, 8),
(1, 9),
(8, 11),
(2, 15),
(9, 15);

-- --------------------------------------------------------

--
-- Structure de la table `universite`
--

CREATE TABLE `universite` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `universite`
--

INSERT INTO `universite` (`identifiant`, `nom`, `adresse`, `ville`) VALUES
(1, 'Picardie Jules Verne', 'inconnu', 'amiens'),
(2, 'Claude Bernard Lyon 1', 'inconnu', 'lyon'),
(3, 'Côte d\'Azur', 'inconnu', 'nice'),
(4, 'Aix-Marseille ', 'inconnu', 'marseille'),
(5, 'Grenoble Alpes', 'inconnu', 'Grenoble'),
(6, 'Université Lyon 2', 'Boulevard Pierre MENDES FRANCE', 'Lyon');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `identifiant` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `prenom` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`identifiant`, `nom`, `mail`, `password`, `prenom`) VALUES
(7, 'VIVIERS ', 'muriel.viviers@univ-lyon1.fr', '7510d498f23f5815d3376ea7bad64e29', 'Muriel'),
(14, 'usertest ', 'usertest@usertest.com', '806b2af4633e64af88d33fbe4165a06a', 'usertest');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`module`,`niveauanne`);

--
-- Index pour la table `niveauanne`
--
ALTER TABLE `niveauanne`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`module`,`enseignant`);

--
-- Index pour la table `universite`
--
ALTER TABLE `universite`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`identifiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `niveauanne`
--
ALTER TABLE `niveauanne`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `universite`
--
ALTER TABLE `universite`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `identifiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
