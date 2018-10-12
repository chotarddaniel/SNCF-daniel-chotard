-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 10 oct. 2018 à 17:46
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sncf`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `numero` int(11) NOT NULL,
  `libelle` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`numero`, `libelle`) VALUES
(1, 'Exploitation'),
(2, 'Traction'),
(3, 'Matériel'),
(4, 'Gestion'),
(5, 'Voyageurs'),
(6, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

CREATE TABLE `agent` (
  `code` varchar(255) NOT NULL,
  `civilite` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse1` varchar(255) NOT NULL,
  `codePostal` int(10) NOT NULL,
  `ville` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`code`, `civilite`, `prenom`, `nom`, `adresse1`, `codePostal`, `ville`) VALUES
('5207415J', 'Mme', 'Stéphanie', 'Denoual', '51 RUE PLINE PARMENTIER', 33500, 'LIBOURNE'),
('5227945Z', 'M.', 'Laurent', 'Cabaco', '125 COURS GAMBETTA', 33400, 'TALENCE'),
('5258943T', 'M.', 'Benoit', 'Haquet', '13 RUE CHARLES GOUNOD', 33290, 'BLANQUEFORT'),
('5268414M', 'Mme', 'Sandrine', 'Auclerc', 'N? 52 B 41 RUE DE LA PAIX', 33700, 'MERIGNAC'),
('5271776R', 'Mme', 'Karine', 'Bettcher', '32 RUE LOUIS MIE', 33000, 'BORDEAUX'),
('5289449B', 'Mme', 'Isabelle', 'Lardy', '10 RUE CLAUDE DEBUSSY', 33520, 'BRUGES'),
('5290570V', 'Mme', 'Carine', 'Richard', '52 CHEMIN DU ROC', 86100, 'CHATELLERAULT'),
('5294136W', 'M.', 'Xavier', 'Billa', '8 RUE DU MARECHAL JUIN', 64140, 'LONS'),
('5314211R', 'Mme', 'Céline', 'Chouraqui', '36 RUE GINER DE LOS RIOS', 33800, 'BORDEAUX'),
('5316900P', 'Mme', 'Sandrine', 'Taxile', 'LA CHARTREUSE  RN 21', 24660, 'NOTRE DAME DE SAVILLE');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `code` varchar(255) NOT NULL,
  `numeroActivite` int(1) NOT NULL,
  `intitule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`code`, `numeroActivite`, `intitule`) VALUES
('E0311', 1, 'La maîtrise des ouvrages Module 1'),
('E0323', 1, 'Formation conception des roulements'),
('E0533', 1, 'Formation chef de chantier roulant'),
('G0366', 4, 'Formation comptable module A'),
('G0417', 4, 'Formation assistant de direction'),
('I0357', 6, 'Formation aux outils bureautiques : Excel module A'),
('I0456', 6, 'Formation réseaux informatiques niveau 1'),
('I0553', 6, 'Formation administrateur de bases de données'),
('M0522', 3, 'Formation paramétrage des stocks'),
('M0546', 3, 'Formation gestion de stocks'),
('M0566', 3, 'Gérer le patrimoine Module 1'),
('T0330', 2, 'Formation contrôleur sur lignes module A'),
('T0431', 2, 'Formation conducteur de marchandises niveau 1'),
('T0447', 2, 'Formation conducteur de ligne module 1'),
('T0476', 2, 'Formation conducteur TGV module 1'),
('V0377', 5, 'Rédacteur au contentieux');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `numeroFormation` varchar(255) NOT NULL,
  `codeAgent` varchar(255) NOT NULL,
  `presence` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`numeroFormation`, `codeAgent`, `presence`) VALUES
('E0311', '5207415J', 0),
('E0311', '5227945Z', 0),
('E0311', '5258943T', 0),
('E0311', '5268414M', 0),
('E0311', '5271776R', 1),
('E0311', '5289449B', 1),
('E0311', '5294136W', 1),
('E0311', '5314211R', 1),
('E0311', '5316900P', 1),
('E0323', '5294136W', 1),
('E0323', '5316900P', 0),
('I0357', '5227945Z', 0),
('I0357', '5290570V', 0),
('T0330', '5207415J', 1),
('T0330', '5227945Z', 0),
('T0330', '5258943T', 1),
('T0330', '5271776R', 0),
('T0330', '5290570V', 1),
('T0330', '5314211R', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`numero`);

--
-- Index pour la table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`code`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`code`),
  ADD KEY `numeroActivite` (`numeroActivite`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`numeroFormation`,`codeAgent`),
  ADD KEY `codeAgent` (`codeAgent`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`numeroActivite`) REFERENCES `activite` (`numero`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`codeAgent`) REFERENCES `agent` (`code`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`numeroFormation`) REFERENCES `formation` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
