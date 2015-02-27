# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34)
# Database: infoshift
# Generation Time: 2015-02-27 11:35:32 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bookmarks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bookmarks`;

CREATE TABLE `bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;

INSERT INTO `bookmarks` (`id`, `url`)
VALUES
	(2,'test'),
	(3,'http://www.example.com'),
	(4,'http://www.example.com'),
	(5,'http://www.example.ddd'),
	(6,'http://www.example.ddd'),
	(7,'http://www.example.ddd'),
	(8,'http://www.example.ddd'),
	(9,'http://www.example.ddd'),
	(10,'http://www.example.ddd'),
	(11,'http://www.example.ddd'),
	(12,'http://www.example.ddd'),
	(13,'http://www.example.ddd'),
	(14,'http://www.example.ddd'),
	(15,'http://www.example.ddd'),
	(16,'http://www.example.ddd'),
	(17,'http://www.example.ddd'),
	(18,'http://www.example.ddd'),
	(19,'http://www.example.ddd'),
	(20,'http://www.example.ddd'),
	(21,'http://www.example.ddd'),
	(22,'http://www.example.ddd'),
	(23,'http://www.example.ddd'),
	(24,'http://www.example.ddd'),
	(25,'http://www.example.ddd'),
	(26,'http://www.example.ddd'),
	(27,'http://www.example.ddd'),
	(28,'http://www.example.ddd'),
	(29,'http://www.example.ddd'),
	(30,'http://www.example.ddd'),
	(31,'http://www.example.ddd'),
	(32,'http://www.example.ddd');

/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
