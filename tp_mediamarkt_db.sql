-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 15 sep. 2026 à 19:19
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`id`, `nom`, `marque`, `description`, `annee`, `duo_carte_sim`, `image`, `prix`, `stock`) VALUES
(1, 'iPhone 11 Pro Max', 'Apple', 'Écran Super Retina XDR 6,5 pouces, triple caméra 12MP, puce A13 Bionic, résistance à l\'eau.', 2019, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTp8xcRi_0NV-M1z1bUP8AUfFbKEr5wm7TUMF3ncSHGg&s=10', 1159, 5),
(2, 'Galaxy S20+', 'Samsung', 'Écran AMOLED 6,7 pouces 120Hz, processeur Exynos 990, quadruple caméra, compatible 5G.', 2020, 1, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ1noseuNW9I4ks1rUM0F1eIq2gLSxjU9n8Jcplpq3ONrnin0rsgNQQ1CABHi2kdJIgOurNraVDM85rJ50gafMhkCEnGxUYrwFLhVc78pwE5P-FBZSGpXqe-gn02o6rnD1HpheNenw&usqp=CAc', 1009, 10),
(3, 'Oppo Reno', 'Oppo', 'Écran AMOLED 6,4 pouces, double caméra 48MP, Snapdragon 710, design mécanisme périscope.', 2019, 1, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRZd3_AfLmOkBjJ8eiYDAhSGVKDQNIg4jmk4x3dl3tgaDVeShraWdzyk9GHSqPGrZ44ofi7T3--3WakqIqDaEPoNeWvJ89i9rHmK2S2ISveftRbkfjKSLlA&usqp=CAc', 449, 7),
(4, 'Nokia 3310', 'Nokia', 'Téléphone classique réédité, écran 2,4 pouces, batterie longue durée (jusqu\'à un mois en veille), jeu Snake intégré.', 2017, 1, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQAZEkc3kEkcwCdx-EH-ZtPFvQWG7RBU0nXnB4Fpy5cro04HE0hZJA-iVJVh2PodbPsP_lwALq8LyHmb1qXXXtBrAcX-9e2hGYgP4gwFYEepWgNub1eJDR8bxqqJYA8vpoQeXavZ98Ra2E&usqp=CAc', 49.9, 3),
(5, 'OnePlus Nord', 'OnePlus', 'Écran Super AMOLED 90Hz 6,44 pouces, Snapdragon 765G, quadruple caméra, charge rapide Warp Charge 30T.', 2020, 1, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTVyiK9t9zlHbbJbR6NjOX016z4C_wC0BBiv4JL2R2cFXV9et-lviQas39mjvrbpOxDrNe_U-qxwQE0r32LuDQcVnsEfsUnzfvNFP4kiqcibVarSoMCyYBtT-GO-vM0RGeOjMADbAo&usqp=CAc', 399, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`id`, `nom`, `marque`, `description`, `annee`, `taille`, `image`, `prix`, `stock`) VALUES
(3, 'LG C2', 'LG', 'Téléviseur OLED evo 4K avec processeur α9 Gen5 AI, plus lumineux que le C1, HDR10, Dolby Vision, 120Hz, HDMI 2.1.', 2022, 55, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHZD95Qn0XEkAIu_lqOjzbzpXF_6DDZxGiHBPR47Kovw&s', 1799, 5),
(4, 'Sony Bravia 8', 'Sony', 'Téléviseur OLED 4K avec processeur XR, Dolby Vision, 120Hz, fonctions exclusives PlayStation 5, Google TV.', 2024, 55, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0kSWmln7pAibsFmkwgYc1XLioSQtUNyJZj45ibndjbg&s=10', 1799, 10),
(5, 'Philips OLED910', 'Philips', 'Téléviseur OLED 4K avec technologie Ambilight, système audio Bowers & Wilkins, compatible tous formats HDR.', 2025, 55, 'https://www.electrodepot.be/media/catalog/product/cache/207e23213cf636ccdef205098cf3c8a3/P10014689.jpg', 1399, 7),
(6, 'Samsung S95D', 'Samsung', 'Téléviseur QD-OLED 4K anti-reflet (Glare Free), processeur NQ4 AI Gen2, Dolby Atmos, Motion Xcelerator 144Hz.', 2024, 77, 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSXT3rQzbzqJN3QY3fe_yb2Njd7UruSxQlFF2wjv3cZYsJDFp9yV78woCqpssAWaB9tEkEkioD8feMbSSb3OowM76HxCRuV09c6x3LtrlCNyGrlLadwl47zqDN3L_uvaQ&usqp=CAc', 4499, 3),
(7, 'Hisense QD6', 'Hisense', 'Téléviseur QLED 4K avec technologie Quantum Dot, Dolby Vision et Dolby Atmos, Fire TV intégré.', 2025, 43, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQec_02XvjsHSbSn3I5YpYTHS-kaUI9zae0x_LCg8DK2A&s=10', 299, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `adresse`, `argent`) VALUES
(1, 'nathalie@user.com', '[]', '$2y$13$NQUJK8DYwg2jHR609jcdhOof.WoZwkPQ6a0e4BVvCZfzj7QvS45c', 'Bond', 'Nathalie', 'Rue de Londres n°7, 2000', 10000),
(2, 'kevin@user.com', '[]', '$2y$13$UzXuhHeYZJCNSG/PbCNz/OCMRgpTbuPkr.cC1APuJTkITYzpRSYSm', 'Hart', 'Kevin', 'Avenue des Citiziens n°14, 3000', 10000),
(3, 'margot@user.com', '[]', '$2y$13$or1Vxs1huMaerTYCqoMg2OTJBs5FxMzXOfst/TI0eNxUXXbq5cx0u', 'Robbie', 'Margot', 'Chaussée de Barbies n°423, 2500', 10000);

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
