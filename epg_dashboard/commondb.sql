-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: EPG_COMMONDB
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb7u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `epg_source_stats`
--

DROP TABLE IF EXISTS `epg_source_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epg_source_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `reference_url` text COLLATE utf8_unicode_ci,
  `crawl_status` text COLLATE utf8_unicode_ci,
  `priority` text COLLATE utf8_unicode_ci,
  `db_ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_name` varchar(52) COLLATE utf8_unicode_ci NOT NULL,
  `meta_language` text COLLATE utf8_unicode_ci,
  `is_inactive` text COLLATE utf8_unicode_ci,
  `is_robots` text COLLATE utf8_unicode_ci,
  `is_relevance` text COLLATE utf8_unicode_ci,
  `is_sanity` text COLLATE utf8_unicode_ci,
  `is_parser` text COLLATE utf8_unicode_ci,
  `is_merge` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `is_crew_merge` text COLLATE utf8_unicode_ci,
  `merge_type` text COLLATE utf8_unicode_ci,
  `overall_merge` float DEFAULT '0',
  `rovi_merge` float DEFAULT '0',
  `is_keepup` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `is_catchup` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `crawl_frequency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `movies_count` int(11) DEFAULT '0',
  `tvshows_count` int(11) DEFAULT '0',
  `episodes_count` int(11) DEFAULT '0',
  `othermedia_count` int(11) DEFAULT '0',
  `DRI` text COLLATE utf8_unicode_ci,
  `inactive_reason` int(11) DEFAULT '0',
  `analysis` text COLLATE utf8_unicode_ci NOT NULL,
  `exception` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `source_name` (`source_name`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epg_source_stats`
--

LOCK TABLES `epg_source_stats` WRITE;
/*!40000 ALTER TABLE `epg_source_stats` DISABLE KEYS */;
INSERT INTO `epg_source_stats` VALUES (1,'astro','MALAYSIA','EPG','','Done','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(2,'hypptv','MALAYSIA','EPG','','Done','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(3,'alhijrah','MALAYSIA','EPG','','Done','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:21'),(4,'kairalitv','MALAYSIA','EPG','','Done','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:59'),(5,'etv','MALAYSIA','EPG','','Hold','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(6,'bbcasia','MALAYSIA','EPG','','Done','','10.4.2.207','EPG_SEA_MALAYSIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:27'),(7,'burrp','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(8,'starplus','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(9,'starjalsha','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(10,'pogo','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(11,'starutsav','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(12,'sunnetwork','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(13,'starworld','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(14,'cnbc','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:21'),(15,'etvbangla','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(16,'zeeaflam','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(17,'zeejagran','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(18,'zee','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(19,'zeevariasi','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(20,'zeetalkies','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(21,'aath','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-05 12:06:28'),(22,'andpictures','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(23,'saharaone','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(24,'zeetelugutamizh','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(25,'indiatv','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:21'),(26,'filmy','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(27,'mastiii','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:21'),(28,'zeesalaam','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','WEEKLY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:33:21'),(29,'starpravah','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(30,'sonysix','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(31,'okgold','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(32,'etvnetwork','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(33,'zeestudio','INDIA','EPG','','Done','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(34,'cinematv','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(35,'discoverynetwork','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(36,'suvarnaplus','INDIA','EPG','','Hold','','10.4.2.207','EPG_SEA_INDIA','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(37,'starhubtv','SINGAPORE','EPG','','Done','','10.4.2.207','EPG_SE_SINGAPORE','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(38,'xinmsn','SINGAPORE','EPG','','Hold','','10.4.2.207','EPG_SE_SINGAPORE','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(39,'singteltv','SINGAPORE','EPG','','Done','','10.4.2.207','EPG_SE_SINGAPORE','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2015-11-17 12:31:37'),(40,'astrochinese','CHINA','EPG','','Hold','','','HOLD','','0','0','0','1','0','0','0','',0,0,'0','1','DAILY',0,0,0,0,'Yeswanth',0,'','','2015-11-17 07:20:10','2016-02-03 04:31:20'),(41,'indiatimes','INDIA','EPG','http://timesofindia.indiatimes.com/tv/tvlistings','Done',NULL,'10.4.2.207','EPG_SEA_INDIA',NULL,NULL,NULL,NULL,'1',NULL,'',NULL,NULL,0,0,'','1','DAILY',0,0,0,0,'Yeswanth',0,'','','0000-00-00 00:00:00','2016-02-02 05:21:20');
/*!40000 ALTER TABLE `epg_source_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-06  7:24:03
