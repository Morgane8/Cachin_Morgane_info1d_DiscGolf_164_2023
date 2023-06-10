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

-- Export de la structure de la base pour cachin_morgane_info1d_discgolf_164_2023
CREATE DATABASE IF NOT EXISTS `cachin_morgane_info1d_discgolf_164_2023` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cachin_morgane_info1d_discgolf_164_2023`;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_adress
CREATE TABLE IF NOT EXISTS `t_adress` (
  `id_adress` int(11) NOT NULL AUTO_INCREMENT,
  `name_adress` varchar(50) DEFAULT NULL,
  `number_adress` int(11) DEFAULT NULL,
  `city_adress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_adress : ~0 rows (environ)
/*!40000 ALTER TABLE `t_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adress` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_adress_belong_state
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

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_adress_belong_state : ~0 rows (environ)
/*!40000 ALTER TABLE `t_adress_belong_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_adress_belong_state` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_country
CREATE TABLE IF NOT EXISTS `t_country` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `name_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_country : ~0 rows (environ)
/*!40000 ALTER TABLE `t_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_country` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_disc
CREATE TABLE IF NOT EXISTS `t_disc` (
  `id_disc` int(11) NOT NULL AUTO_INCREMENT,
  `weight_disc` varchar(50) DEFAULT NULL,
  `color_disc` varchar(50) DEFAULT NULL,
  `stamp_disc` varchar(50) DEFAULT NULL,
  `label_disc` varchar(50) DEFAULT NULL,
  `type_disc` varchar(50) DEFAULT NULL,
  `image_disc` longtext,
  PRIMARY KEY (`id_disc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_disc : ~2 rows (environ)
/*!40000 ALTER TABLE `t_disc` DISABLE KEYS */;
INSERT INTO `t_disc` (`id_disc`, `weight_disc`, `color_disc`, `stamp_disc`, `label_disc`, `type_disc`, `image_disc`) VALUES
	(1, '150g', 'yellow', 'walkabout', 'valkyrie', NULL, 'data:image/jpeg;base64,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'),
	(4, '180g', 'bleu', 'Innova Disc Golf', 'mako3', NULL, 'https://otbdiscs.com/wp-content/uploads/2021/09/Ch_Mako3_600px-1.jpg'),
	(5, '168g', 'bleu', 'proton', 'wave', NULL, 'https://mvpdiscsports.com/wp-content/uploads/2020/07/protonwave_blue1K-500x500.jpg'),
	(6, '175g', 'blanc', 'loft', 'hydrogen', 'putter', 'https://discsport.eu/img/disc/loft/hydrogen-alpha.jpg');
/*!40000 ALTER TABLE `t_disc` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_disc_have_plastic
CREATE TABLE IF NOT EXISTS `t_disc_have_plastic` (
  `id_disc_have_plastic` int(11) NOT NULL AUTO_INCREMENT,
  `fk_disc` int(11) DEFAULT NULL,
  `fk_plastic` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_disc_have_plastic`),
  KEY `FK_t_disc_have_plastic_t_disc` (`fk_disc`),
  KEY `FK_t_disc_have_plastic_t_plastic_type` (`fk_plastic`),
  CONSTRAINT `FK_t_disc_have_plastic_t_disc` FOREIGN KEY (`fk_disc`) REFERENCES `t_disc` (`id_disc`),
  CONSTRAINT `FK_t_disc_have_plastic_t_plastic_type` FOREIGN KEY (`fk_plastic`) REFERENCES `t_plastic_type` (`id_plastic_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_disc_have_plastic : ~1 rows (environ)
/*!40000 ALTER TABLE `t_disc_have_plastic` DISABLE KEYS */;
INSERT INTO `t_disc_have_plastic` (`id_disc_have_plastic`, `fk_disc`, `fk_plastic`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `t_disc_have_plastic` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_mail
CREATE TABLE IF NOT EXISTS `t_mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `adress_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_mail : ~1 rows (environ)
/*!40000 ALTER TABLE `t_mail` DISABLE KEYS */;
INSERT INTO `t_mail` (`id_mail`, `adress_mail`) VALUES
	(1, 'morgane.cachin@eduvaud.ch');
/*!40000 ALTER TABLE `t_mail` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_national_license
CREATE TABLE IF NOT EXISTS `t_national_license` (
  `id_license` int(11) NOT NULL AUTO_INCREMENT,
  `swiss_license` varchar(50) DEFAULT NULL,
  `french_license` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_license`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_national_license : ~0 rows (environ)
/*!40000 ALTER TABLE `t_national_license` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_national_license` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_pdga
CREATE TABLE IF NOT EXISTS `t_pdga` (
  `id_PDGA` int(11) NOT NULL AUTO_INCREMENT,
  `number_PDGA` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_PDGA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_pdga : ~0 rows (environ)
/*!40000 ALTER TABLE `t_pdga` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pdga` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_person
CREATE TABLE IF NOT EXISTS `t_person` (
  `id_person` int(11) NOT NULL AUTO_INCREMENT,
  `first_name_pers` varchar(50) DEFAULT NULL,
  `last_name_pers` varchar(50) DEFAULT NULL,
  `birth_date_pers` date DEFAULT NULL,
  `gender_pers` varchar(50) DEFAULT NULL,
  `nationality_pers` varchar(50) DEFAULT NULL,
  `fk_mail` int(11) DEFAULT NULL,
  `fk_pdga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_person`),
  KEY `FK_t_person_t_mail` (`fk_mail`),
  KEY `FK_t_person_t_pdga` (`fk_pdga`),
  CONSTRAINT `FK_t_person_t_mail` FOREIGN KEY (`fk_mail`) REFERENCES `t_mail` (`id_mail`),
  CONSTRAINT `FK_t_person_t_pdga` FOREIGN KEY (`fk_pdga`) REFERENCES `t_pdga` (`id_PDGA`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_person : ~2 rows (environ)
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` (`id_person`, `first_name_pers`, `last_name_pers`, `birth_date_pers`, `gender_pers`, `nationality_pers`, `fk_mail`, `fk_pdga`) VALUES
	(1, 'Morgane', 'Cachin', '2001-03-08', 'F', 'Suisse', NULL, NULL),
	(2, 'Florian', 'Chollet', '2002-01-02', 'M', 'Suisse', NULL, NULL);
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_pers_live_adress
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

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_pers_live_adress : ~0 rows (environ)
/*!40000 ALTER TABLE `t_pers_live_adress` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_pers_live_adress` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_pers_possess_disc
CREATE TABLE IF NOT EXISTS `t_pers_possess_disc` (
  `id_pers_possess_disc` int(11) NOT NULL AUTO_INCREMENT,
  `fk_person` int(11) DEFAULT NULL,
  `fk_disc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pers_possess_disc`),
  KEY `FK_t_pers_possess_disc_t_person` (`fk_person`),
  KEY `FK_t_pers_possess_disc_t_disc` (`fk_disc`),
  CONSTRAINT `FK_t_pers_possess_disc_t_disc` FOREIGN KEY (`fk_disc`) REFERENCES `t_disc` (`id_disc`),
  CONSTRAINT `FK_t_pers_possess_disc_t_person` FOREIGN KEY (`fk_person`) REFERENCES `t_person` (`id_person`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_pers_possess_disc : ~1 rows (environ)
/*!40000 ALTER TABLE `t_pers_possess_disc` DISABLE KEYS */;
INSERT INTO `t_pers_possess_disc` (`id_pers_possess_disc`, `fk_person`, `fk_disc`) VALUES
	(1, 1, 1);
/*!40000 ALTER TABLE `t_pers_possess_disc` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_plastic_type
CREATE TABLE IF NOT EXISTS `t_plastic_type` (
  `id_plastic_type` int(11) NOT NULL AUTO_INCREMENT,
  `name_plastic_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_plastic_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_plastic_type : ~8 rows (environ)
/*!40000 ALTER TABLE `t_plastic_type` DISABLE KEYS */;
INSERT INTO `t_plastic_type` (`id_plastic_type`, `name_plastic_type`) VALUES
	(1, 'alostar'),
	(2, 'champion'),
	(3, 'star'),
	(5, 'proton'),
	(6, 'fission'),
	(7, 'plasma'),
	(8, 'alpha-solid'),
	(9, 'beta-solid');
/*!40000 ALTER TABLE `t_plastic_type` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_state
CREATE TABLE IF NOT EXISTS `t_state` (
  `id_state` int(11) NOT NULL AUTO_INCREMENT,
  `name_state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_state : ~0 rows (environ)
/*!40000 ALTER TABLE `t_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_state` ENABLE KEYS */;

-- Export de la structure de la table cachin_morgane_info1d_discgolf_164_2023. t_telefon
CREATE TABLE IF NOT EXISTS `t_telefon` (
  `id_tel` int(11) NOT NULL AUTO_INCREMENT,
  `indicatif_tel` varchar(5) DEFAULT NULL,
  `number_tel` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Export de données de la table cachin_morgane_info1d_discgolf_164_2023.t_telefon : ~0 rows (environ)
/*!40000 ALTER TABLE `t_telefon` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_telefon` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;