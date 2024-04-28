-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 19 juin 2023 à 08:24
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `radiateurf`
--

-- --------------------------------------------------------

--
-- Structure de la table `acepter_sousadmin`
--

CREATE TABLE `acepter_sousadmin` (
  `idAce` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `LOGIN` varchar(60) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Adress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `acepter_sousadmin`
--

INSERT INTO `acepter_sousadmin` (`idAce`, `name`, `LOGIN`, `Password`, `Adress`) VALUES
(6, 'said', 'saidelilo@gmail.com', '12345678', 'lehoda');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `IdAdmin` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `LOGIN` varchar(60) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`IdAdmin`, `name`, `LOGIN`, `Password`) VALUES
(1, 'youssef', 'rahliyoussef43@gmail.com', '12345678'),
(3, 'ZAKARIA', 'zakariaelfakhar@gmail.com', 'hhhhhhhh');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `adresseClient` varchar(100) NOT NULL,
  `Ville` varchar(30) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `name`, `adresseClient`, `Ville`, `tel`) VALUES
('ET43556', 'Omar', 'Sbata04', 'CASABLANCA', '0711123554'),
('JT46427', 'Rida', 'HAY NAHDA', 'CASABLANCA', '0739872624'),
('RE34456', 'ALi', 'Massira2', 'Marrakech', '0876434465'),
('RR45335', 'Karim', 'Sbata04', 'CASABLANCA', '0712223453'),
('WA4345', 'dahir Said', 'HAY SEDRI', 'CASABLANCA', '0836702838'),
('YR23486', 'Omar', 'Hay RIAD', 'Dakhla', '0937644288'),
('ZA34225', 'Jamal', 'Azli', 'Marrakech', '0364887283'),
('ZD34523', 'karim', 'hay nahda', 'Chichaoua', '0954335675'),
('ZE23424', 'Rida', 'Hay Nahda', 'CASABLANCA', '07763884948');

-- --------------------------------------------------------

--
-- Structure de la table `newprod`
--

CREATE TABLE `newprod` (
  `Ref` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `Qte` int(11) NOT NULL,
  `PrixU` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `Ref` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `Quantite` int(11) NOT NULL,
  `PrixU` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Ref`, `designation`, `Quantite`, `PrixU`) VALUES
('A1322', 'BMW', 781, '2000'),
('A678', 'DACIA', 1825, '2000'),
('H123', 'DACIA', 1034, '900'),
('M3213', 'YUYU', 975, '700'),
('N354', 'Jeb', 1820, '1000'),
('P5747', 'ZIBRA', 1440, '500'),
('V324', 'Santaf', 1660, '800');

-- --------------------------------------------------------

--
-- Structure de la table `sous_admin`
--

CREATE TABLE `sous_admin` (
  `IDSou` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `LOGIN` varchar(60) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `ADRESS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `sous_admin`
--

INSERT INTO `sous_admin` (`IDSou`, `name`, `LOGIN`, `Password`, `ADRESS`) VALUES
(2, 'YOU', 'santooff43@gmail.com', '12345678', 'casablanca'),
(5, 'HASSAN', 'hassan45@gmail.com', 'aaaaaaaa', 'OULEFA'),
(10, 'hamada', 'hamadalayelayu@gmail.com', '33333333', 'hay sederi');

-- --------------------------------------------------------

--
-- Structure de la table `vante`
--

CREATE TABLE `vante` (
  `idVante` int(11) NOT NULL,
  `Modepaiment` varchar(30) NOT NULL,
  `date` varchar(12) NOT NULL,
  `Ref` varchar(10) NOT NULL,
  `idClient` varchar(30) NOT NULL,
  `Qte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `vante`
--

INSERT INTO `vante` (`idVante`, `Modepaiment`, `date`, `Ref`, `idClient`, `Qte`) VALUES
(25, 'CACHE', '2023-06-17', 'H123', 'WA4345', 15),
(26, 'Cache', '2023-06-18', 'A678', 'ZA34225', 20),
(29, 'Cache', '2023-06-18', 'A1322', 'ZD34523', 12),
(33, 'Cache', '2023-06-18', 'A1322', 'JT46427', 10),
(34, 'Cache', '2023-06-18', 'P5747', 'ZE23424', 5),
(36, 'Cache', '2023-06-18', 'M3213', 'YR23486', 5),
(38, 'Cache', '2023-06-18', 'P5747', 'RE34456', 15),
(39, 'Cache', '2023-06-18', 'V324', 'RE34456', 2),
(40, 'Cache', '2023-06-18', 'M3213', 'RR45335', 50),
(45, 'Cache', '2023-06-18', 'V324', 'ET43556', 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acepter_sousadmin`
--
ALTER TABLE `acepter_sousadmin`
  ADD PRIMARY KEY (`idAce`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IdAdmin`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `newprod`
--
ALTER TABLE `newprod`
  ADD PRIMARY KEY (`Ref`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`Ref`);

--
-- Index pour la table `sous_admin`
--
ALTER TABLE `sous_admin`
  ADD PRIMARY KEY (`IDSou`);

--
-- Index pour la table `vante`
--
ALTER TABLE `vante`
  ADD PRIMARY KEY (`idVante`),
  ADD KEY `Ref` (`Ref`),
  ADD KEY `idClient` (`idClient`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acepter_sousadmin`
--
ALTER TABLE `acepter_sousadmin`
  MODIFY `idAce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `IdAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sous_admin`
--
ALTER TABLE `sous_admin`
  MODIFY `IDSou` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `vante`
--
ALTER TABLE `vante`
  MODIFY `idVante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `vante`
--
ALTER TABLE `vante`
  ADD CONSTRAINT `vante_ibfk_1` FOREIGN KEY (`Ref`) REFERENCES `produit` (`Ref`),
  ADD CONSTRAINT `vante_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
