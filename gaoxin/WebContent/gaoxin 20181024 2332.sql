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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='校服';

--
-- Dumping data for table `xiaofu`
--

/*!40000 ALTER TABLE `xiaofu` DISABLE KEYS */;
INSERT INTO `xiaofu` (`id`,`sn`,`name`,`sex`,`d1`,`d2`,`d3`,`d4`,`d5`,`d6`,`d7`,`txt`,`size`) VALUES 
 (13,'0726','员程宇','M',1,1,0,0,1,1,1,'','120'),
 (14,'0736','赵嘉晨','F',0,0,0,0,0,1,1,'','140'),
 (15,'0752','金钰瑶','F',1,1,1,1,1,1,1,'','120'),
 (20,'0754','仝忻玥','F',1,1,1,1,2,1,1,'','140'),
 (21,'0723','刘润泽','M',0,0,0,0,1,1,1,'','130'),
 (22,'0721','王浩文','M',1,1,1,1,0,1,1,'','120'),
 (26,'0728','邓元翰','M',1,1,1,1,1,1,1,'','120'),
 (27,'0702','舒歆博','M',1,1,0,0,0,1,0,'','140'),
 (28,'0738','刘睿汐','F',1,0,0,1,0,1,0,'','130'),
 (30,'0707','屈昱辰','M',1,1,0,0,1,1,0,'','120'),
 (31,'0748','王雪菁','F',0,0,0,0,1,1,0,'','130'),
 (32,'0739','何沐遥','F',0,0,0,0,1,1,0,'','130'),
 (35,'0747','邹乐桐','F',0,0,0,0,0,1,0,'','120'),
 (36,'0727','刘桓钰','M',1,1,0,0,1,1,0,'','130'),
 (37,'0722','淳浩宸','M',1,1,0,0,1,1,1,'','120'),
 (38,'0733','刘雨涵','F',1,1,0,0,1,1,1,'','130'),
 (39,'0729','李柏岑','M',0,0,0,0,0,0,0,'','130'),
 (40,'0740','王辰鑫','F',1,1,1,1,1,1,1,'','120'),
 (41,'0703','陶飞羽','M',2,2,1,1,2,1,1,'','120'),
 (43,'0715','沈鑫阳','M',0,0,0,0,1,1,0,'','130'),
 (46,'0708','吴宇宸','M',0,1,0,0,0,0,0,'','130'),
 (47,'0704','史泰宇','M',1,1,0,0,0,1,0,'','130'),
 (48,'0730','朱若晴','F',1,1,0,0,0,1,0,'','120'),
 (50,'0713','曾子康','M',1,1,0,0,1,1,0,'','120'),
 (51,'0706','廖天麒','M',1,0,0,0,1,1,0,'','120'),
 (52,'0724','李哲瑄','M',0,1,0,0,1,1,0,'','130'),
 (54,'0717','杨轶翔','M',1,1,1,1,1,1,1,'','130'),
 (55,'0701','徐子轩','M',0,0,0,0,0,0,1,'','130'),
 (56,'0744','杨紫喻','F',1,1,1,1,1,1,1,'','130'),
 (58,'0714','訾博豪','M',1,1,0,0,1,1,1,'','120'),
 (60,'0749','向慕雪','F',1,1,0,0,1,1,0,'','130'),
 (61,'0731','张慕阳','F',0,1,0,0,0,1,0,'','130'),
 (62,'0709','魏子博','M',0,0,0,0,0,1,0,'','120'),
 (64,'0743','孟子熙','F',1,1,0,1,1,1,1,'','130'),
 (65,'0710','赵晨','M',0,1,0,0,0,1,0,'','140'),
 (66,'0755','李佳音','F',1,1,0,0,1,1,1,'蓝裤子130','140'),
 (68,'0753','胡曦月','F',1,0,0,0,1,1,1,'','120'),
 (69,'0716','翟泓钦','M',1,1,0,0,1,1,0,'','130'),
 (70,'0742','蔡雨昕','F',1,1,0,0,0,0,1,'','120');
/*!40000 ALTER TABLE `xiaofu` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
