-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 15 sep. 2026 à 21:06
-- Version du serveur : 8.4.7
-- Version de PHP : 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_mediamarkt_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20260914090210', '2026-09-14 09:03:55', 496);

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

DROP TABLE IF EXISTS `smartphones`;
CREATE TABLE IF NOT EXISTS `smartphones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `annee` int NOT NULL,
  `duo_carte_sim` tinyint NOT NULL,
  `image` varchar(500) NOT NULL,
  `prix` double NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `annee` int NOT NULL,
  `taille` int NOT NULL,
  `image` varchar(500) NOT NULL,
  `prix` double NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(500) NOT NULL,
  `argent` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_smartphone`
--

DROP TABLE IF EXISTS `user_smartphone`;
CREATE TABLE IF NOT EXISTS `user_smartphone` (
  `user_id` int NOT NULL,
  `smartphone_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`smartphone_id`),
  KEY `IDX_81D7B8C2A76ED395` (`user_id`),
  KEY `IDX_81D7B8C22E4F4908` (`smartphone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_tv`
--

DROP TABLE IF EXISTS `user_tv`;
CREATE TABLE IF NOT EXISTS `user_tv` (
  `user_id` int NOT NULL,
  `tv_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`tv_id`),
  KEY `IDX_ABBBCEC1A76ED395` (`user_id`),
  KEY `IDX_ABBBCEC11D245270` (`tv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user_smartphone`
--
ALTER TABLE `user_smartphone`
  ADD CONSTRAINT `FK_81D7B8C22E4F4908` FOREIGN KEY (`smartphone_id`) REFERENCES `smartphones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_81D7B8C2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_tv`
--
ALTER TABLE `user_tv`
  ADD CONSTRAINT `FK_ABBBCEC11D245270` FOREIGN KEY (`tv_id`) REFERENCES `tvs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ABBBCEC1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
