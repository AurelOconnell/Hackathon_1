-- Adminer 4.8.1 MySQL 8.0.32 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `hackathon_1`;
CREATE DATABASE `hackathon_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hackathon_1`;

DROP TABLE IF EXISTS `kata`;
CREATE TABLE `kata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `énoncé` text NOT NULL,
  `correction` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `kata` (`id`, `titre`, `énoncé`, `correction`) VALUES
(1,	'Titre 1',	'ENONCE 1',	'Correction 1'),
(2,	'Titre 2',	'ENONCE 2',	'Correction 2'),
(3,	'Titre 3',	'ENONCE 3',	'Correction 3'),
(4,	'Titre 4',	'ENONCE 4',	'Correction 4'),
(5,	'Titre 5',	'ENONCE 5',	'Correction 5');

-- 2023-05-11 12:39:43
