-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: Cachin_Morgane_info1d_DiscGolf_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS Cachin_Morgane_info1d_DiscGolf_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS Cachin_Morgane_info1d_DiscGolf_164_2023;

-- Utilisation de cette base de donnée

USE Cachin_Morgane_info1d_DiscGolf_164_2023;
-- --------------------------------------------------------

-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.1.72-community - MySQL Community Server (GPL)
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour disc_golf_164
CREATE DATABASE IF NOT EXISTS `disc_golf_164` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `disc_golf_164`;

-- Export de la structure de la table disc_golf_164. t_pers_possess_disc
CREATE TABLE IF NOT EXISTS `t_pers_possess_disc` (
  `id_pers_possess_disc` int(11) NOT NULL AUTO_INCREMENT,
  `fk_person` int(11) DEFAULT NULL,
  `fk_disc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pers_possess_disc`),
  KEY `FK_t_pers_possess_disc_t_person` (`fk_person`),
  KEY `FK_t_pers_possess_disc_t_disc` (`fk_disc`),
  CONSTRAINT `FK_t_pers_possess_disc_t_person` FOREIGN KEY (`fk_person`) REFERENCES `t_person` (`id_person`),
  CONSTRAINT `FK_t_pers_possess_disc_t_disc` FOREIGN KEY (`fk_disc`) REFERENCES `t_disc` (`id_disc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_pers_possess_disc : ~0 rows (environ)
/*!40000 ALTER TABLE `t_pers_possess_disc` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pers_possess_disc` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_adress
CREATE TABLE IF NOT EXISTS `t_adress` (
  `id_adress` int(11) NOT NULL AUTO_INCREMENT,
  `name_adress` varchar(50) NOT NULL,
  `number_adress` int(11) NOT NULL,
  `city_adress` varchar(50) NOT NULL,
  PRIMARY KEY (`id_adress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_adress : ~0 rows (environ)
/*!40000 ALTER TABLE `t_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adress` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_adress_belong_state
CREATE TABLE IF NOT EXISTS `t_adress_belong_state` (
  `id_adress_belong_state` int(11) NOT NULL AUTO_INCREMENT,
  `fk_adress` int(11) DEFAULT NULL,
  `fk_state` int(11) DEFAULT NULL,
  `date_insert_state` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_adress_belong_state`),
  KEY `FK_t_adress_belong_state_t_adress` (`fk_adress`),
  KEY `FK_t_adress_belong_state_t_state` (`fk_state`),
  CONSTRAINT `FK_t_adress_belong_state_t_adress` FOREIGN KEY (`fk_adress`) REFERENCES `t_adress` (`id_adress`),
  CONSTRAINT `FK_t_adress_belong_state_t_state` FOREIGN KEY (`fk_state`) REFERENCES `t_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_adress_belong_state : ~0 rows (environ)
/*!40000 ALTER TABLE `t_adress_belong_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adress_belong_state` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_country
CREATE TABLE IF NOT EXISTS `t_country` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name_country` varchar(50) NOT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_country : ~0 rows (environ)
/*!40000 ALTER TABLE `t_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_country` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_disc
CREATE TABLE IF NOT EXISTS `t_disc` (
  `id_disc` int(11) NOT NULL AUTO_INCREMENT,
  `weight_disc` varchar(50) DEFAULT NULL,
  `colour_disc` varchar(50) DEFAULT NULL,
  `stamp_disc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_disc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_disc : ~0 rows (environ)
/*!40000 ALTER TABLE `t_disc` DISABLE KEYS */;
INSERT INTO `t_disc` (`id_disc`, `weight_disc`, `colour_disc`, `stamp_disc`) VALUES
	(1, '150', 'yellow', 'walkabout');
/*!40000 ALTER TABLE `t_disc` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_login
CREATE TABLE IF NOT EXISTS `t_login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `username_login` varchar(50) NOT NULL,
  `password_login` varchar(50) NOT NULL,
  `date_account` date DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_login : ~0 rows (environ)
/*!40000 ALTER TABLE `t_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_login` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_mail
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `adress_mail` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_mail : ~0 rows (environ)
/*!40000 ALTER TABLE `t_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_mail` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_national_license
CREATE TABLE IF NOT EXISTS `t_national_license` (
  `id_license` int(11) NOT NULL AUTO_INCREMENT,
  `swiss_license` varchar(50) NOT NULL,
  `french_license` varchar(50) NOT NULL,
  PRIMARY KEY (`id_license`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_national_license : ~0 rows (environ)
/*!40000 ALTER TABLE `t_national_license` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_national_license` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_pdga
CREATE TABLE IF NOT EXISTS `t_pdga` (
  `id_PDGA` int(11) NOT NULL AUTO_INCREMENT,
  `number_PDGA` int(11) NOT NULL,
  PRIMARY KEY (`id_PDGA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_pdga : ~0 rows (environ)
/*!40000 ALTER TABLE `t_pdga` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pdga` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_person
CREATE TABLE IF NOT EXISTS `t_person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `first_name_pers` varchar(50) DEFAULT NULL,
  `last_name_pers` varchar(50) DEFAULT NULL,
  `birth_date_pers` date DEFAULT NULL,
  `gender_pers` varchar(50) DEFAULT NULL,
  `nationality_pers` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_person : ~1 rows (environ)
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` (`id_person`, `first_name_pers`, `last_name_pers`, `birth_date_pers`, `gender_pers`, `nationality_pers`) VALUES
	(1, 'Morgane', 'Cachin', '2001-03-08', 'F', 'Suisse');
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_pers_live_adress
CREATE TABLE IF NOT EXISTS `t_pers_live_adress` (
  `id_pers_live_adress` int(11) NOT NULL AUTO_INCREMENT,
  `fk_person` int(11) DEFAULT NULL,
  `fk_adress` int(11) DEFAULT NULL,
  `date_insert_adress` date DEFAULT NULL,
  PRIMARY KEY (`id_pers_live_adress`),
  KEY `FK_t_pers_live_adress_t_person` (`fk_person`),
  KEY `FK_t_pers_live_adress_t_adress` (`fk_adress`),
  CONSTRAINT `FK_t_pers_live_adress_t_adress` FOREIGN KEY (`fk_adress`) REFERENCES `t_adress` (`id_adress`),
  CONSTRAINT `FK_t_pers_live_adress_t_person` FOREIGN KEY (`fk_person`) REFERENCES `t_person` (`id_person`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_pers_live_adress : ~0 rows (environ)
/*!40000 ALTER TABLE `t_pers_live_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pers_live_adress` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_state
CREATE TABLE IF NOT EXISTS `t_state` (
  `id_state` int(11) NOT NULL,
  `name_state` varchar(50) NOT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_state : ~0 rows (environ)
/*!40000 ALTER TABLE `t_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_state` ENABLE KEYS */;

-- Export de la structure de la table disc_golf_164. t_telefon
CREATE TABLE IF NOT EXISTS `t_telefon` (
  `id_tel` int(11) NOT NULL AUTO_INCREMENT,
  `indicatif_tel` varchar(5) NOT NULL,
  `number_tel` int(11) NOT NULL,
  PRIMARY KEY (`id_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table disc_golf_164.t_telefon : ~0 rows (environ)
/*!40000 ALTER TABLE `t_telefon` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_telefon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
