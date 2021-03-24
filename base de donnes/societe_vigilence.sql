-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2021 at 10:05 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `las_ociete_vigilence`
--

-- --------------------------------------------------------

--
-- Table structure for table `bien_immobilier`
--

DROP TABLE IF EXISTS `bien_immobilier`;
CREATE TABLE IF NOT EXISTS `bien_immobilier` (
  `code_bien` int(11) NOT NULL AUTO_INCREMENT,
  `adresse_bien` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `num_enregistrement` int(11) DEFAULT NULL,
  `superficie` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `type` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `code_quartier` int(11) DEFAULT NULL,
  `date_construction` date DEFAULT NULL,
  PRIMARY KEY (`code_bien`),
  KEY `code_quartier` (`code_quartier`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bien_immobilier`
--

INSERT INTO `bien_immobilier` (`code_bien`, `adresse_bien`, `num_enregistrement`, `superficie`, `type`, `code_quartier`, `date_construction`) VALUES
(1, 'hay', 123, 'sprfc', 'dar', 0, '2021-12-12'),
(2, 'hay', 123, 'sprfc', 'dar', 0, '2021-12-12'),
(3, 'hay', 123, 'sprfc', 'dar', 0, '2021-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `nummcontart` int(11) NOT NULL AUTO_INCREMENT,
  `prix_mensuel` double DEFAULT NULL,
  `code_bien` int(11) DEFAULT NULL,
  `code_syndic` int(11) DEFAULT NULL,
  `etat` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`nummcontart`),
  KEY `code_bien` (`code_bien`),
  KEY `code_syndic` (`code_syndic`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contrat`
--

INSERT INTO `contrat` (`nummcontart`, `prix_mensuel`, `code_bien`, `code_syndic`, `etat`) VALUES
(1, 132.9, 3, 2, 'actif'),
(2, 142.9, 4, 3, 'actif'),
(3, 152.9, 5, 4, 'actif');

-- --------------------------------------------------------

--
-- Table structure for table `quartier`
--

DROP TABLE IF EXISTS `quartier`;
CREATE TABLE IF NOT EXISTS `quartier` (
  `code_quartier` int(11) NOT NULL AUTO_INCREMENT,
  `nom_quartier` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `population_quartier` int(11) DEFAULT NULL,
  `code_ville` int(11) DEFAULT NULL,
  `total_quartier` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`code_quartier`),
  KEY `code_ville` (`code_ville`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quartier`
--

INSERT INTO `quartier` (`code_quartier`, `nom_quartier`, `population_quartier`, `code_ville`, `total_quartier`) VALUES
(123, 'qods', 345, 678, 'wa7d'),
(124, 'qods', 345, 678, 'wa7d'),
(125, 'qods', 345, 678, 'wa7d'),
(126, 'qods', 345, 678, 'wa7d');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `code_region` int(11) NOT NULL AUTO_INCREMENT,
  `nom_region` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `population_region` int(11) DEFAULT NULL,
  `total_region` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`code_region`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`code_region`, `nom_region`, `population_region`, `total_region`) VALUES
(1, 'mo9ata3a', 123, 'jouj'),
(2, 'mo9ata3a', 123, 'jouj'),
(3, 'mo9ata3a', 123, 'jouj');

-- --------------------------------------------------------

--
-- Table structure for table `syndic`
--

DROP TABLE IF EXISTS `syndic`;
CREATE TABLE IF NOT EXISTS `syndic` (
  `code_syndic` int(11) NOT NULL AUTO_INCREMENT,
  `nom_syndic` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `prenom_syndic` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `telephone_syndic` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `mot_depasse` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`code_syndic`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syndic`
--

INSERT INTO `syndic` (`code_syndic`, `nom_syndic`, `prenom_syndic`, `telephone_syndic`, `mot_depasse`) VALUES
(1, 'passe', 'sandiqua', 'prnm_syndiquat', 'num_tele'),
(2, 'passe', 'sandiqua', 'prnm_syndiquat', 'num_tele'),
(3, 'passe', 'sandiqua', 'prnm_syndiquat', 'num_tele');

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `code_ville` int(11) NOT NULL AUTO_INCREMENT,
  `nom_ville` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `code_region` int(11) DEFAULT NULL,
  `total_ville` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`code_ville`),
  KEY `code_region` (`code_region`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`code_ville`, `nom_ville`, `code_region`, `total_ville`) VALUES
(1, 'berkane', 123, 'jouj'),
(2, 'berkane', 123, 'jouj'),
(3, 'berkane', 123, 'jouj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
