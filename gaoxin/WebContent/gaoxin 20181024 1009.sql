-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.16


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gaoxin
--

CREATE DATABASE IF NOT EXISTS gaoxin;
USE gaoxin;

--
-- Definition of table `xiaofu`
--

DROP TABLE IF EXISTS `xiaofu`;
CREATE TABLE `xiaofu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sn` varchar(45) DEFAULT NULL COMMENT '学号',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `sex` enum('M','F') DEFAULT 'M',
  `d1` int(10) unsigned DEFAULT NULL,
  `d2` int(10) unsigned DEFAULT NULL,
  `d3` int(10) unsigned DEFAULT NULL,
  `d4` int(10) unsigned DEFAULT NULL,
  `d5` int(10) unsigned DEFAULT NULL,
  `d6` int(10) unsigned DEFAULT NULL,
  `d7` int(10) unsigned DEFAULT NULL,
  `txt` text COMMENT '备注',
  `size` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='校服';

--
-- Dumping data for table `xiaofu`
--

/*!40000 ALTER TABLE `xiaofu` DISABLE KEYS */;
INSERT INTO `xiaofu` (`id`,`sn`,`name`,`sex`,`d1`,`d2`,`d3`,`d4`,`d5`,`d6`,`d7`,`txt`,`size`) VALUES 
 (8,'0720','刘安炆','M',1,0,1,1,1,1,1,'','130'),
 (9,'0723','小明明','F',1,1,1,1,1,1,1,'','120'),
 (10,'0723','李明','M',1,1,1,1,0,1,1,'','140');
/*!40000 ALTER TABLE `xiaofu` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
