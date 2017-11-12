-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: localhost    Database: dingli
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add person',7,'add_person'),(20,'Can change person',7,'change_person'),(21,'Can delete person',7,'delete_person'),(22,'Can add news',8,'add_news'),(23,'Can change news',8,'change_news'),(24,'Can delete news',8,'delete_news'),(25,'Can add image',9,'add_image'),(26,'Can change image',9,'change_image'),(27,'Can delete image',9,'delete_image'),(28,'Can add im g_up',10,'add_img_up'),(29,'Can change im g_up',10,'change_img_up'),(30,'Can delete im g_up',10,'delete_img_up');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$HmprKC9yzJqz$0/oSWGiYDVXEVuko09ngyRxEyLAcPo1wOtdquScV240=','2017-11-07 07:15:58.224353',1,'root','','','simao234430@163.com',1,1,'2017-10-16 11:30:40.009660');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-16 13:02:26.227368','1','Person object',1,'[{\"added\": {}}]',7,1),(2,'2017-10-16 14:45:28.314691','1','Person object',1,'[{\"added\": {}}]',7,1),(3,'2017-10-16 15:03:58.723860','1','Person object',2,'[]',7,1),(4,'2017-10-24 13:26:39.564550','1','Person object',1,'[{\"added\": {}}]',7,1),(5,'2017-10-24 13:29:52.905565','1','Person object',1,'[{\"added\": {}}]',7,1),(6,'2017-10-24 13:30:10.405115','1','Person object',2,'[]',7,1),(7,'2017-10-24 14:17:45.568191','1','Person object',2,'[{\"changed\": {\"fields\": [\"image_url\"]}}]',7,1),(8,'2017-10-30 02:52:09.422352','1','News object',1,'[{\"added\": {}}]',8,1),(9,'2017-10-30 03:12:19.622053','1','10月19日，清华大学生命科学学院隋森芳教授研究组在《自然》',2,'[]',8,1),(10,'2017-10-30 03:13:36.065354','2','一场秋雨润泽大地。10月18日上午，备受瞩目的中国共产党第十',1,'[{\"added\": {}}]',8,1),(11,'2017-10-30 03:31:34.299580','3','10月3日上午9：00，为帮助全校师生员工领略十八大以来党和',1,'[{\"added\": {}}]',8,1),(12,'2017-10-30 03:32:17.268716','2','一场秋雨润泽大地。10月18日上午，备受瞩目的中国共产党第十',2,'[{\"changed\": {\"fields\": [\"brief_image_url\"]}}]',8,1),(13,'2017-10-30 03:32:23.178705','1','10月19日，清华大学生命科学学院隋森芳教授研究组在《自然》',2,'[{\"changed\": {\"fields\": [\"brief_image_url\"]}}]',8,1),(14,'2017-10-30 06:50:01.025215','4','help_text¶\r\n\r\nField.help_text¶',1,'[{\"added\": {}}]',8,1),(15,'2017-10-30 07:26:31.446026','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"importance\"]}}]',8,1),(16,'2017-10-30 07:29:37.370517','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"importance\"]}}]',8,1),(17,'2017-10-30 07:47:23.735355','2','清华师生热切关注党的十九大开幕',2,'[{\"changed\": {\"fields\": [\"brief_content\"]}}]',8,1),(18,'2017-10-30 12:36:56.593719','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"PV\"]}}]',8,1),(19,'2017-10-30 12:41:35.488570','2','清华师生热切关注党的十九大开幕',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(20,'2017-10-30 13:31:26.003628','2','清华师生热切关注党的十九大开幕',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(21,'2017-11-05 12:11:52.812358','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"ph\"]}}]',8,1),(22,'2017-11-06 12:57:52.941296','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(23,'2017-11-06 13:00:47.215467','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(24,'2017-11-06 13:46:18.437030','4','hahha 这是测试',2,'[]',8,1),(25,'2017-11-07 07:24:55.199876','1','1-7.png',1,'[{\"added\": {}}]',9,1),(26,'2017-11-07 07:25:47.879520','1','1-7.png',2,'[]',9,1),(27,'2017-11-07 07:27:45.713410','3','20171031141705708997580.jpg',3,'',9,1),(28,'2017-11-08 09:35:03.451884','4','hahha 这是测试',2,'[{\"changed\": {\"fields\": [\"brief_content\"]}}]',8,1),(29,'2017-11-09 01:48:20.211256','5','软件系',1,'[{\"added\": {}}]',8,1),(30,'2017-11-09 02:37:18.436807','5','软件系',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(31,'2017-11-09 02:38:38.262479','5','软件系',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(32,'2017-11-09 02:41:59.326304','5','软件系',2,'[]',8,1),(33,'2017-11-09 02:51:22.503514','5','软件系',2,'[]',8,1),(34,'2017-11-09 03:01:17.841920','5','软件系',2,'[]',8,1),(35,'2017-11-09 03:02:31.138672','5','软件系',2,'[]',8,1),(36,'2017-11-09 03:08:26.047068','5','软件系',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(37,'2017-11-09 03:09:28.224844','5','软件系',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1),(38,'2017-11-09 03:11:38.369423','6','电子系',1,'[{\"added\": {}}]',8,1),(39,'2017-11-09 03:14:23.118020','7','电子系',1,'[{\"added\": {}}]',8,1),(40,'2017-11-09 03:14:39.309444','6','通信系',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',8,1),(41,'2017-11-09 03:15:06.405661','5','软件系',2,'[]',8,1),(42,'2017-11-09 03:15:14.854634','7','电子系',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',8,1),(43,'2017-11-10 03:27:39.818948','8','校长致辞',1,'[{\"added\": {}}]',8,1),(44,'2017-11-10 03:32:36.236698','8','校长致辞',2,'[]',8,1),(45,'2017-11-10 03:33:39.619669','9','学院介绍',1,'[{\"added\": {}}]',8,1),(46,'2017-11-10 03:34:31.925397','9','学院介绍',2,'[]',8,1),(47,'2017-11-10 03:35:21.151277','10','世纪鼎利',1,'[{\"added\": {}}]',8,1),(48,'2017-11-10 03:36:18.910682','11','鼎利教育研究院',1,'[{\"added\": {}}]',8,1),(49,'2017-11-10 03:36:26.229206','10','世纪鼎利',2,'[{\"changed\": {\"fields\": [\"index\"]}}]',8,1),(50,'2017-11-10 03:37:03.455181','12','现任领导',1,'[{\"added\": {}}]',8,1),(51,'2017-11-10 03:40:14.982155','13','组织机构',1,'[{\"added\": {}}]',8,1),(52,'2017-11-10 03:41:28.367330','12','现任领导',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(9,'web','image'),(10,'web','img_up'),(8,'web','news'),(7,'web','person');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-16 11:11:10.831529'),(2,'auth','0001_initial','2017-10-16 11:11:11.097034'),(3,'admin','0001_initial','2017-10-16 11:11:11.166325'),(4,'admin','0002_logentry_remove_auto_add','2017-10-16 11:11:11.191655'),(5,'contenttypes','0002_remove_content_type_name','2017-10-16 11:11:11.241593'),(6,'auth','0002_alter_permission_name_max_length','2017-10-16 11:11:11.262356'),(7,'auth','0003_alter_user_email_max_length','2017-10-16 11:11:11.287473'),(8,'auth','0004_alter_user_username_opts','2017-10-16 11:11:11.303028'),(9,'auth','0005_alter_user_last_login_null','2017-10-16 11:11:11.332842'),(10,'auth','0006_require_contenttypes_0002','2017-10-16 11:11:11.335869'),(11,'auth','0007_alter_validators_add_error_messages','2017-10-16 11:11:11.348739'),(12,'auth','0008_alter_user_username_max_length','2017-10-16 11:11:11.381392'),(13,'sessions','0001_initial','2017-10-16 11:11:11.405232'),(21,'web','0001_initial','2017-10-24 13:28:43.542626'),(22,'web','0002_news','2017-10-30 02:39:22.554678'),(23,'web','0003_auto_20171030_0248','2017-10-30 02:48:30.385528'),(24,'web','0004_auto_20171030_0318','2017-10-30 03:18:14.902650'),(25,'web','0005_auto_20171030_0323','2017-10-30 03:23:51.983079'),(26,'web','0006_auto_20171030_0331','2017-10-30 03:31:28.789447'),(27,'web','0007_auto_20171030_0647','2017-10-30 06:48:00.960847'),(28,'web','0008_auto_20171030_0938','2017-10-30 09:38:56.219909'),(29,'web','0009_news_ph','2017-11-05 12:10:28.274772'),(30,'web','0010_auto_20171106_1244','2017-11-06 12:44:29.530082'),(31,'web','0011_auto_20171106_1350','2017-11-06 13:50:17.777761'),(32,'web','0012_auto_20171106_1352','2017-11-06 13:52:23.038936'),(33,'web','0013_auto_20171106_1353','2017-11-06 13:53:08.457021'),(34,'web','0014_auto_20171106_1355','2017-11-06 13:55:10.660339'),(35,'web','0015_image_img_up','2017-11-07 07:16:47.592166'),(36,'web','0016_auto_20171108_0933','2017-11-08 09:34:02.088045'),(37,'web','0017_auto_20171109_0148','2017-11-09 01:48:09.163515'),(38,'web','0018_auto_20171110_0250','2017-11-10 02:50:09.182725');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('afcgftrhyhs0y28knk9yamakrxttq4js','MTk2NTEzNjIzMmM1OWVkODdmZWNjMTMyNmFhOTJlNWYyZjI1ODhmZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NWY0YTAyNzhhZTI4NmEyOTZmNmE0MmEzMzUyZDBkNWM3MDM3MGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-11-06 14:00:44.033523'),('dejym5myijop24eva5ptc8kuu5dp9xb8','MTk2NTEzNjIzMmM1OWVkODdmZWNjMTMyNmFhOTJlNWYyZjI1ODhmZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NWY0YTAyNzhhZTI4NmEyOTZmNmE0MmEzMzUyZDBkNWM3MDM3MGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-10-30 11:31:11.988356'),('pqbqvshhd31ylkt836jpu6ichy6sr8bv','MTk2NTEzNjIzMmM1OWVkODdmZWNjMTMyNmFhOTJlNWYyZjI1ODhmZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NWY0YTAyNzhhZTI4NmEyOTZmNmE0MmEzMzUyZDBkNWM3MDM3MGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-11-07 10:38:20.433774'),('r55jty1aw88wuxqa4t4g1pzahn726t5b','MTk2NTEzNjIzMmM1OWVkODdmZWNjMTMyNmFhOTJlNWYyZjI1ODhmZTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0NWY0YTAyNzhhZTI4NmEyOTZmNmE0MmEzMzUyZDBkNWM3MDM3MGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-11-21 07:15:58.235089');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_image`
--

DROP TABLE IF EXISTS `web_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_image`
--

LOCK TABLES `web_image` WRITE;
/*!40000 ALTER TABLE `web_image` DISABLE KEYS */;
INSERT INTO `web_image` VALUES (1,'images/1-7.png'),(2,'images/2721505109647_.pic.jpg');
/*!40000 ALTER TABLE `web_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_img_up`
--

DROP TABLE IF EXISTS `web_img_up`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_img_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_img_up`
--

LOCK TABLES `web_img_up` WRITE;
/*!40000 ALTER TABLE `web_img_up` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_img_up` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_news`
--

DROP TABLE IF EXISTS `web_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brief_content` longtext NOT NULL,
  `content` longtext NOT NULL,
  `title` varchar(60) NOT NULL,
  `brief_image_url` varchar(60),
  `edit_person` varchar(30) NOT NULL,
  `edit_time` date NOT NULL,
  `category` varchar(4) NOT NULL,
  `importance` int(11) NOT NULL,
  `PV` int(11) NOT NULL,
  `ph` varchar(100) DEFAULT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_news`
--

LOCK TABLES `web_news` WRITE;
/*!40000 ALTER TABLE `web_news` DISABLE KEYS */;
INSERT INTO `web_news` VALUES (1,'10月19日，清华大学生命科学学院隋森芳教授研究组在《自然》（Nature）期刊上在线发表题为《海洋红藻藻胆体的结构》的研究论文，......','<article class=\"article\">\r\n   <h1 style=\"text-align: justify; -ms-text-justify: inter-ideograph;\">生命学院隋森芳研究组发文报道首个完整藻胆体的冷冻电镜三维结构</h1><hr><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\"><strong>清华新闻网10月24日电</strong> 10月19日，清华大学生命科学学院隋森芳教授研究组在《自然》（<em>Nature</em>）期刊上在线发表题为《海洋红藻藻胆体的结构》（Structure of phycobilisome from the red alga <em>Griffithsia pacifica</em>）的研究论文，首次报道世界上第一个完整藻胆体的近原子分辨率的冷冻电镜三维结构，为揭示藻胆体的组装机制和光能传递途径奠定了重要基础。</p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\">光合作用是地球上的生物赖以生存的基础。为了获取更多的光能，生物体发展出了多种捕光蛋白系统。其中，存在于蓝藻和红藻中的藻胆体是迄今已知最大的捕光蛋白复合物，它位于膜表面，并与位于膜中的光合反应中心结合，能将吸收的太阳光以极高的效率传递给光合反应中心以进一步转化为有机物并释放氧气。这个巨大的超分子复合体的组装机制和光能在其中的传递机制一直是光合作用研究领域的前沿热点。</p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\">隋森芳教授研究组长期致力于利用冷冻电镜技术研究与生物膜相关的重要蛋白质复合物的结构与功能。此前曾于2005年在《欧洲生物化学学会联合会期刊》（<em>FEBS Letter</em>）杂志报道了来源于蓝藻发菜的完整藻胆体的电镜结构，分辨率约为30埃。随后又于2015年在《细胞研究》（<em>Cell Research</em>）杂志报道了来源于蓝藻鱼腥藻的完整藻胆体的负染电镜结构，分辨率约为20埃。在此次发表的论文中，隋森芳教授研究组攻克了藻胆体在冷冻制样时盐浓度高、稳定性差、具有优势取向等难题，获得了近原子分辨率的冷冻电镜结构，其中整体结构分辨率为3.5埃，核心区域分辨率达到3.2埃。这是第一个完整藻胆体的近原子分辨率的三维结构，也是迄今为止报道过的分辨率高于4埃的最大的蛋白复合体结构，该复合体理论分子量为16.8MDa，包含862个蛋白亚基。这项工作第一次解析出了所有连接蛋白在功能组装状态下的结构，包括4个核内连接蛋白、16个核杆连接蛋白、52个杆连接蛋白的结构，第一次观察到这些连接蛋白有序地形成了超分子复合体的结构骨架，为色素蛋白的精密组装及高效率的能量传递提供了结构基础。</p><p style=\"text-align: center; text-indent: 0px;\">&nbsp;<img title=\"image002.jpg\" src=\"/publish/thunews/9659/20171024082158480219410/1508804686461.jpg\" data-bd-imgshare-binded=\"1\"></p><p style=\"text-align: center; text-indent: 0em; -ms-text-justify: inter-ideograph;\"><span style=\"font-family: 楷体,楷体_GB2312, SimKai;\">红藻藻胆体的三维结构：a b分别为正面和底面两个不同取向，c为由连接蛋白形成的结构骨架，d为色素的整体分布。</span></p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\">值得一提的是该工作第一次确定了藻胆体中全部2048个色素的整体排布，并推测出了多条新的能量传递途径，为进一步理解藻胆体内的能量传递机制提供了坚实基础。</p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\">清华大学生命学院隋森芳教授和孙珊副研究员为本文的共同通讯作者；生命学院已出站博士生张君、在读三年级博士生马建飞为本文的共同第一作者。生命学院博士后刘德生参与了结构模型的优化，中国科学院烟台海岸带研究所的秦松研究员参与了前期样品筛选，北京大学生命科学学院的赵进东教授参与了生化数据的分析和撰稿。国家蛋白质科学研究（北京）设施清华基地冷冻电镜平台和计算平台，以及清华大学高性能计算平台为数据收集和处理提供了支持。膜生物学国家重点实验室、北京市结构生物学高精尖创新中心、科技部、国家自然科学基金等为本研究提供了经费支持。</p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\"><span style=\"font-family: 楷体,楷体_GB2312, SimKai;\">原文链接：</span></p><p style=\"text-align: justify; text-indent: 2em; -ms-text-justify: inter-ideograph;\"><a style=\"font-family: 楷体,楷体_GB2312, SimKai; text-decoration: underline;\" href=\"http://www.nature.com/nature/journal/vaop/ncurrent/full/nature24278.html\"><span style=\"font-family: 楷体,楷体_GB2312, SimKai;\">http://www.nature.com/nature/journal/vaop/ncurrent/full/nature24278.html</span></a></p><p style=\"text-align: right; text-indent: 2em; -ms-text-justify: inter-ideograph;\">供稿：生命学院 编辑：悸寔 华山<br></p>\r\n    <div class=\"articletimewrapper\">\r\n \r\n            <div class=\"articletime\"><i class=\"thunews-clock-o\"></i>2017年10月24日 08:21:58　　清华新闻网</div>\r\n          </div>\r\n   </article>','生命学院隋森芳研究组发文报道首个完整藻胆体的冷冻电镜三维结构',NULL,'test1','2017-10-24','0',1000,0,NULL,0),(2,'一场秋雨润泽大地。10月18日上午，备受瞩目的中国共产党第十九次全国代表大会在人民大会堂开幕，习近平总书记代表第十八届中央委员会向在人民大会堂开幕，习近平总书记代表第十八届中央委员会向在人民大会堂开幕，习近平总书记代表第十八届中央委员会向','<p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    <strong>清华新闻网10月18日电</strong>（记者 <strong>刘蔚如</strong> 通讯员<strong> 余韵寒</strong>）一场秋雨润泽大地。10月18日上午，备受瞩目的中国共产党第十九次全国代表大会在人民大会堂开幕，习近平总书记代表第十八届中央委员会向大会作报告。清华大学党委书记陈旭作为十九大代表出席开幕会，并在大会预备会议上当选为十九大代表资格审查委员会委员和十九大主席团成员。副校长施一公，校务委员会副主任、原副校长袁驷等列席开幕会，在人民大会堂聆听了总书记的报告。清华师生聚集在各会议室、办公室和实验室，围坐收看开幕会盛况，关注热议总书记报告。\r\n                </p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image003.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326027750.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">中国共产党第十九次全国代表大会召开。</span>\r\n                </p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image005.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326037344.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">十九大代表开幕会现场。</span></p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    陈旭在开幕会后表示，习近平总书记的报告内涵丰富、思想深邃、高屋建瓴，启迪思想、鼓舞人心、催人奋进，具有很强的思想性、战略性、前瞻性、指导性，具有重大的政治意义、理论意义、实践意义，是一篇蕴含着巨大真理力量、具有历史里程碑意义的马克思主义纲领性文献。</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image007.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326261906.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span\r\n                        style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">清华大学党委书记陈旭在开幕会后发表感想。</span></p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    陈旭表示，清华大学党委和全校师生员工将认真学习贯彻十九大报告精神，进一步增强“四个意识”，自觉在思想上政治上行动上同以习近平同志为核心的党中央保持高度一致，坚持正确方向、坚持立德树人、坚持服务国家、坚持改革创新，加强党对学校工作的全面领导，全面推进综合改革，加快一流大学和一流学科建设，深入推进全面从严治党，扎根中国大地办好社会主义大学，努力在创建世界一流大学方面走在前列，为实现高等教育内涵式发展和建设教育强国的目标，为国家发展、人民幸福、人类文明进步作出新的更大的贡献。</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image009.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326299676.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">校党委理论中心组成员与部分教师在工字厅观看开幕会。 记者 <strong>苑 洁</strong> 摄</span>\r\n                </p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    在清华园内，上午9:00不到，师生们早早聚集到各会议室、办公室和实验室，围坐在屏幕前收看开幕会盛况。在工字厅东厅，“清华师生热烈庆祝党的十九大胜利召开”的横幅分外鲜明，校党委理论中心组成员与学校老领导、教师代表们共同收看十九大开幕会直播。在总书记三个半小时的报告过程中，收看现场不时自发响起热烈的掌声。</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image011.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326328857.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">校长邱勇在直播结束后讲话。 记者<strong> 苑 洁</strong> 摄</span>\r\n                </p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    清华大学校长邱勇在直播结束后说，习近平总书记的报告对于党和国家事业具有重大的历史意义，报告旗帜鲜明、内容丰富、思想深刻，让人倍受鼓舞。清华大学将深入学习贯彻党的十九大报告精神，加强党的领导，完善党委领导下的校长负责制，进一步增强政治意识、大局意识、核心意识、看齐意识，进一步坚定道路自信、理论自信、制度自信、文化自信，真正把全校党员干部和师生员工的思想统一到十九大精神上来，把力量凝聚到实现十九大确定的各项任务上来。清华大学将继续按照习近平总书记贺信精神，坚持正确方向、坚持立德树人、坚持服务国家、坚持改革创新，进一步弘扬“又红又专、全面发展”的培养特色，全面推进综合改革和“双一流”建设，不断提高办学质量，为党和国家事业发展提供源源不断的优秀人才，努力在创建世界一流大学方面走在前列。</p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    公管学院胡鞍钢教授，新闻传播学院党委书记胡钰教授，马克思主义学院副院长肖贵清教授，物理系周树云教授，致公党北京市委副主委、水利系安雪晖教授，航院党委书记李俊峰教授等纷纷表示，这次会议为中国未来三十多年的长远发展描绘了宏伟蓝图，大会报告具有极强的使命感、自信感、理论感，概括了党和国家内政外交、党的建设等各方面的整体工作。</p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    大家纷纷表示，听完报告倍感欢欣鼓舞、倍感责任重大，要进一步思考如何将十九大的精神融入教育教学中，与教学科研结合起来，与学校“双一流”建设结合起来，全面贯彻到人才培养、学术科研、社会服务、文化传承创新、国际交流合作等各项工作中。</p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    在校团委大会议室，近60名师生代表齐聚，共同收看开幕会直播。直播结束后，大家畅谈了感想和体会，基层班团、文艺体育、实践创业及国防生、飞行学员班等多个领域的学生代表，与团委、研团委、学生会、研究生会以及各院系的师生骨干们，纷纷结合自身专业学习和工作特点，展开热烈的讨论。</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image013.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326386648.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">师生在校团委会议室齐唱国歌。记者 <strong>张 宇</strong> 摄</span>\r\n                </p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    学生部部长丛振涛表示，听完总书记的报告大家都很振奋，希望同学们谨记总书记在报告中对青年一代的殷切厚望，坚定理想信念，志存高远，脚踏实地，不负嘱托、牢记使命，在实现中国梦的生动实践中做出自己的贡献。</p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    新闻学院本科生次仁曲吉是一名藏族同学，她对报告中关于边疆地区、少数民族地区的发展等内容印象深刻。她说：“我自己来自西藏，家乡在这些年来发生的所有变化历历在目，一直切身体会着党和祖国对西藏地区的关心，也对这一切心存感激！希望在毕业后能够回到家乡，为家乡的进一步发展作出自己的贡献！”</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image015.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326422556.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">同学们认真观看直播并做笔记。 记者 <strong>张 宇 </strong>摄</span>\r\n                </p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    校学生会主席、社科学院研究生李秋甫，校研究生会主席、土木系研究生苏舒，热能系本科生张效铭，计算机系本科生姜伟峰，建筑学院研究生程正雨，环境学院本科生阮梓纹，土木系研究生王中兴，新闻学院本科生寇纪美，水利系本科生崔世博等纷纷表示，总书记的报告让人振奋和鼓舞，让我们深刻体会到过去取得的成绩来之不易，对未来充满了憧憬。作为当代大学生、作为清华学生，我们要把握历史机遇，更要肩负伟大的历史责任，掌握扎实本领，不断用自己的实际行动将个人梦和中国梦相结合，为中华民族的伟大复兴贡献自己的力量。</p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><img title=\"image017.jpg\"\r\n                                                                      src=\"/publish/thunews/9658/20171018192502813384506/1508326446201.jpg\"\r\n                                                                      data-bd-imgshare-binded=\"1\"></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">航院师生集体收看开幕会直播。</span></p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image019.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326457703.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">电子系组织师生观看十九大开幕会。</span>\r\n                </p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image021.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326466115.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span\r\n                        style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">公管学院组织师生分多个场地观看开幕会直播。 记者 <strong>张 宇</strong> 摄</span>\r\n                </p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image023.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326487093.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">法学院师生齐唱国歌。</span></p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image025.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326492649.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span\r\n                        style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">校机关党委组织观看十九大开幕会。 记者 <strong>苑 洁</strong> 摄</span></p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image027.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326509112.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span\r\n                        style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">第一附属医院组织医护人员观看十九大开幕会。</span></p>\r\n                <p style=\"text-align: center; text-indent: 0px;\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\"><img\r\n                        title=\"image029.jpg\" src=\"/publish/thunews/9658/20171018192502813384506/1508326521518.jpg\"\r\n                        data-bd-imgshare-binded=\"1\"></span></p>\r\n                <p style=\"TEXT-ALIGN: center\"><span style=\"FONT-FAMILY: 楷体,楷体_GB2312, SimKai\">清华附中观看十九大开幕会感言板。</span>\r\n                </p>\r\n                <p style=\"TEXT-ALIGN: justify; TEXT-INDENT: 2em; -ms-text-justify: inter-ideograph\">\r\n                    这一天的清华园里，各院系、各部处都分别组织教职工和学生收看、收听了开幕会直播，一些出差在外的师生们，也都通过手机等方式自发地收看收听，师生们纷纷畅谈对国家和学校未来发展的期盼与建议。</p>','清华师生热切关注党的十九大开幕',NULL,'test2','2017-11-06','0',1000,3,'',0),(3,'10月3日上午9：00，为帮助全校师生员工领略十八大以来党和国家事业的非凡历程和取得的辉煌成就，清华大学第三批组织电子系、计算机系......','10月3日上午9：00，为帮助全校师生员工领略十八大以来党和国家事业的非凡历程和取得的辉煌成就，清华大学第三批组织电子系、计算机系......','清华组织全校师生员工参观“砥砺奋进的五年”大型成就展',NULL,'test1','2017-10-01','0',1000,0,NULL,0),(4,'<p>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example</p>','<p>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp; <strong>test</strong>&nbsp;<span style=\"text-decoration: underline;\">testhelp_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp;&nbsp;<strong>test</strong>&nbsp;<span>test</span>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp;&nbsp;<strong>test</strong>&nbsp;<span>test</span>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp;&nbsp;<strong>test</strong>&nbsp;<span>test</span>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp;&nbsp;<strong>test</strong>&nbsp;<span>test</span>help_text&para; Field.help_text&para; Extra &ldquo;help&rdquo; text to be displayed with the form widget. It&rsquo;s useful for documentation even if your field isn&rsquo;t used on a form. Note that this value is not HTML-escaped in automatically-generated forms. This lets you include HTML in help_text if you so desire. For example&nbsp;&nbsp;<strong>test</strong>&nbsp;<span>test</span></span></p>','hahha 这是测试',NULL,'test13','2017-11-08','0',999,6,'uploadImages/20171031141705708997580.jpg',0),(5,'<p>无</p>','<p><strong>软件技术</strong></p>\r\n<p><strong>培育软件应用开发技术、管理型人才</strong></p>\r\n<p><strong>培养目标:</strong>培养掌握计算机理论基础、软件开发相关技术，具备软件项目设计、开发、测试、配置、管理与维护技能，具有项目设计与项目管理能力的高端技术技能型人才。</p>\r\n<p><strong>就业方向:</strong>软件开发类方向，主要从事软件开发工程师、系统管理工程师、软件测试工程等管理岗位。</p>\r\n<p><strong>毕业薪资:</strong>应届毕业生平均就业薪资5K/月左右。 初级测试工程师年薪约在4-7万元左右；测试工程师年薪约在7-12万元左右高级测试工程师年薪约12-18万元左右；Team Leader（测试主管）年薪在18+万，一般具有5年左右工作经验；测试经理年薪在22+万。</p>\r\n<p><img src=\"../../../../../static/images/20170302104718979.jpg\" alt=\"\" border=\"0\" /></p>','软件系',NULL,'test1','2017-11-09','101',1000,0,'',0),(6,'<p>无</p>','<p><strong>通信技术</strong></p>\r\n<p><strong>培育移动技术、管理工程师</strong></p>\r\n<p><strong>培养目标:</strong>掌握全面的移动互联软件系统开发设计的基本知识与应用技能，培养具有一定的移动应用类软件系统的开发、设计及应用能力的高端技术技能型人才。</p>\r\n<p><strong>就业方向:</strong>ICT（通信、信息和技术）领域，从事岗位主要有：软件开发工程师、软件测试工程师、售后技术工程等管理岗位。</p>\r\n<p><strong>毕业薪资:</strong>应届毕业生平均就业薪资6K/月左右。</p>\r\n<p><img src=\"../../../../static/images/20170302104920373.jpg\" alt=\"\" border=\"0\" /></p>','通信系',NULL,'test1','2017-11-09','101',1000,0,'',1),(7,'<p>无</p>','<p><strong>电子信息工程技术（物联网应用与技术方向）</strong></p>\r\n<p><strong>培育物联网高级工程师</strong></p>\r\n<p><strong>培养目标:</strong>学习物联网相关技术，掌握物联网行业规范、系统性能与技术指标、物联网设备相关软件开发技术的相关理论与技能，从事物联网相关行业的高端技能型人才。</p>\r\n<p><strong>就业方向:</strong>物联网行业方向，主要从事：物联网工程师、物联网项目经理、项目管理工程师、产品开发工程师等管理岗位。</p>\r\n<p><strong>毕业薪资:</strong>物联网专业目前是比较火的专业之一，薪水的起步是相对比较高，物联网工程师平均工资8K/月左右。</p>\r\n<p><img src=\"../../../../static/images/20170302104953889.jpg\" alt=\"\" border=\"0\" /></p>','电子系',NULL,'test1','2017-11-09','101',1000,0,'',2),(8,'<p>w </p>','<p> </p>\r\n<!--内容-->\r\n<p>　　2016年，是清华大学发展进程中不平凡的一年。2016年4月22日，在清华大学105周年校庆之际，习近平总书记给母校写来贺信。总书记充分肯定了清华大学一百余年来的办学成就和优秀传统，要求学校坚持正确方向、坚持立德树人、坚持服务国家、坚持改革创新，面向世界、勇于进取，树立自信、保持特色，广育祖国和人民需要的各类人才，深度参与创新驱动发展战略实施，努力在创建世界一流大学方面走在前列。这既是对所有清华人的极大鼓舞，更是对我们的巨大鞭策。</p>\r\n<p>　　过去一年，清华大学深入贯彻落实党的十八届六中全会和全国高校思想政治工作会议精神，全面推进综合改革和事业发展，加快建设中国特色世界一流大学，朝着更创新、更国际、更人文的目标奋力迈进。</p>\r\n<p>　　——更创新的清华，全心培养拔尖创新人才，努力创造高水平的研究成果。推进大类培养，将49个本科招生专业整合为16个大类专业，强化通识教育，为创新人才培养搭建更加广阔的平台。实施博士生招生改革，采用“申请-审核”制，优先选拔具备浓厚学术志趣与良好学术潜质的学生。设立“开放交流时间”（Open Office Hour），教师每周固定时间接待学生自由咨询，缩短师生距离，让师生在面对面交流中迸发思想火花。设立长聘教授讲坛，让最优秀的学者展示他们的学术水平和丰富的学养，推动跨学科、跨领域的交流。科研体制机制改革正式启动，聚焦学科交叉、军民融合、前沿部署和科技成果转化，创造有利于创新的学术生态。</p>\r\n<p>　　首座高温气冷堆商业示范核电站建设工程进展顺利，核能技术继续领跑全球。量子计算、类脑计算、界面高温超导、下一代互联网等一批前沿研究布局到位，呈现出蓬勃的创新活力。杨知行教授领衔的团队获国家科技进步奖一等奖，3项科研成果入选2016年度“中国高等学校十大科技进展”，出土文献研究与保护中心发现的清华简算表被认定为世界上最早的十进制乘法表。薛其坤院士获得首届“未来科学大奖”，施一公院士获得“何梁何利基金科学与技术成就奖”，钱颖一教授获2016年中国经济学奖。</p>\r\n<p>　　——更国际的清华，全面深化全球交流合作，拓展学生的国际视野，更好地联结中国与世界。全球战略颁布实施，国际化办学能力和全球影响力持续提升。旨在培养未来世界领导者的苏世民书院正式开学，国家主席习近平和美国总统奥巴马分别发来贺信。</p>\r\n<p>　　与美国华盛顿大学、微软公司共建的全球创新学院招收了首批学生；与瑞士日内瓦大学开展全面合作，共建可持续发展研究中心，在日内瓦建立培养和输送中国大学生赴国际组织实习与就业的基地；推动与意大利米兰理工大学建立战略合作伙伴关系，在米兰共同打造中意设计创新基地；启动建设清华大学深圳国际校区，全面提升学校在前沿创新、国际合作和高端人才培养方面的水平。</p>\r\n<p>　　支持学生广泛参与国际学术交流和文化交流，2016年学生出国学习交流人数再创新高。首次启动清华全球南方文化浸润系列项目，大力推进发展中国家研究博士生项目建设，积极推动学生到非洲、欧洲、中东等地开展社会实践活动。在清华大学的倡议下，亚洲15所代表性大学共同创建的亚洲大学联盟正式成立，国务院副总理刘延东出席成立大会并发表主旨演讲。</p>\r\n<p>　　——更人文的清华，进一步深厚人文底蕴，提升学生的人文素养，推动文理渗透，培养更多能够真正肩负未来使命的优秀人才。人文清华讲坛开启以来共举办8场演讲，文学家格非、国学家陈来、社会学家李强、伦理学家万俊人、历史学家彭林、思想史家汪晖、国际关系权威专家阎学通等一批清华知名学者在讲坛上分享灼见，让清华新的人文之光照耀校园、辐射社会。</p>\r\n<p>　　艺术博物馆落成并正式对外开放，推动艺术与科学的融合，展示艺术之美和科学之美，开启清华人文艺术新篇章。大力营造校园读书氛围，连续两年向本科新生赠书，实施学生深度阅读计划，发布首届水木书榜，推动学生热爱读书、勤于思考，建设更加人文、更加宁静的书香校园。顺利召开第五届世界和平论坛，国际影响力不断提升。格非教授的长篇小说《望春风》荣获《当代》年度最佳长篇小说。</p>\r\n<p>　　回顾过去的一年，我们辛勤耕耘、成果丰硕。站在新的起点上，全校师生员工正满怀期待、充满信心，共同用扎实的工作深入推进综合改革，加快世界一流大学建设步伐，努力开创新百年发展的新格局，以优异成绩迎接党的十九大胜利召开。我相信，在党和政府的大力支持下，在社会各界的热心帮助下，在所有清华人的共同努力下，清华大学的明天一定会更加美好！</p>\r\n<!--内容结束-->\r\n<p> </p>','校长致辞',NULL,'test1','2017-11-10','102',1000,0,'',0),(9,'<p>f </p>','<p> </p>\r\n<!--内容-->\r\n<p>川科鼎利学院（互联网+学院）自成立以来就是四川科技职业学院重点打造的院系，是学校与上市公司世纪鼎利（股票代码：300050）校企合作的示范，致力于应用型人才的培养，特别重视产学结合、创新创业在人才培养中的重要作用</p>\r\n<p>鼎利学院注重引进上市企业核心技术和资源，现拥有近百项软件专利、227项软件著作权、40余项自研高新技术产品，完成100多项软件和通信领域内的项目开发，便于学生进行仿真模拟实训。鼎利学院共享智翔教育研究院成果，学院采用独特的UBL人才培养模式，带领学生进行项目导入式教学。目前学院开设有通信技术、电子信息工程技术、计算机网络技术、软件技术、机械制造与自动化、工业机器人技术、大数据技术与应用、物联网应用技术、模具设计与制造、数控技术等专业。</p>\r\n<p>学院与微软、IBM、华为、上海电气自动化研究所、南京人社局、中核、中船、中国移动、中国电信、大唐移动通信、北京交通大学、示范性软件联盟、德国普福尔茨海姆应用技术大学、德国伊斯尼应用技术大学、德国工商大会上海代表处、英国哈德斯菲尔德大学等国内外大型企业、知名高校建立了合作伙伴关系，学生在学习期间可享受丰富的教育资源，毕业时经考核合格后可直接推荐就业于国内外知名合作企业。同时针对省内行业需求，学院积极拓展天府软件园、孵化园、青羊工业园区、绵阳科技城等高新技术园区企业就业渠道，立足地方，服务区域经济。</p>\r\n<!--内容结束-->\r\n<p> </p>','学院介绍',NULL,'test1','2017-11-10','102',1000,0,'',1),(10,'<p>f </p>','<p>世纪鼎利</p>','世纪鼎利',NULL,'test1','2017-11-10','102',1000,0,'',2),(11,'<p>e</p>','<p>鼎利教育研究院</p>','鼎利教育研究院',NULL,'test1','2017-11-10','102',1000,0,'',3),(12,'<p>ef</p>','<h3 class=\"hhh\">学院领导</h3>\r\n<table class=\"liren\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr bgcolor=\"#F7F7F7\">\r\n<td class=\"tdline nr tdborder\" width=\"15%\">学院院长</td>\r\n<td class=\"tdline tdborder\"><a class=\"_plugbox\" href=\"#\">叶　林</a></td>\r\n<td class=\"nr tdborder\" width=\"15%\">学院党支书记</td>\r\n<td class=\"tdline tdborder\"><a class=\"_plugbox\" href=\"#\">叶　林(兼)</a></td>\r\n<td class=\"tdline tdborder\"> </td>\r\n</tr>\r\n<!--  <tr bgcolor=\"#F7F7F7\">\r\n\r\n                                 <td class=\"tdline nr tdborder\">常务副校长</td>\r\n                                 <td class=\"tdline tdborder\"><a href=\"#\" class=\"_plugbox\" boxid=\"2\"></a></td>\r\n                                 <td class=\"tdborder\">党委常务副书记</td>\r\n                                 <td class=\"tdline tdborder\"><a href=\"#\" class=\"_plugbox\" boxid=\"6\">姜胜耀</a></td>\r\n\r\n                                 <td class=\"tdline tdborder\"></td>\r\n\r\n                             </tr> -->\r\n<tr>\r\n<td class=\"nr\">教学副院长<br />产业副院长<br />科研副院长<br />软件教研室主任<br />电子教研室主任<br />双创教研室主任</td>\r\n<td class=\"tdline\"><a class=\"_plugbox\" href=\"#\">李 晓</a><br /> <a class=\"_plugbox\" href=\"#\">张 继</a><br /> <a class=\"_plugbox\" href=\"#\">罗 勇</a><br /> <a class=\"_plugbox\" href=\"#\">罗 勇(兼)</a><br /> <a class=\"_plugbox\" href=\"#\">陶薇薇</a><br /> <a class=\"_plugbox\" href=\"#\">王俊海</a></td>\r\n<td class=\"nr\">党支副书记<br />学 工 主 管<br />学生党支部书记<br />学生团支部书记<br />宣传部长</td>\r\n<td class=\"tdline\"><a class=\"_plugbox\" href=\"#\">赵玮玮</a><br /> <a class=\"_plugbox\" href=\"#\">杨 建</a><br /> <a class=\"_plugbox\" href=\"#\">周佳蓉</a><br /> <a class=\"_plugbox\" href=\"#\">蒋红琼</a><br /> <a class=\"_plugbox\" href=\"#\">唐 文</a></td>\r\n<!--<td class=\"nr\">党支副书记<br>学工主管<br>学生党支部书记<br>学生团支部书记<br>宣传部长</td>--> <!--<td class=\"tdline\">--> <!--<a href=\"#\" class=\"_plugbox\" boxid=\"5\">赵玮玮</a><br>--> <!--<a href=\"#\" class=\"_plugbox\" boxid=\"6\">杨  建</a><br>--> <!--<a href=\"#\" class=\"_plugbox\" boxid=\"12\">周佳蓉</a><br>--> <!--<a href=\"#\" class=\"_plugbox\" boxid=\"12\">蒋红琼</a><br>--> <!--<a href=\"#\" class=\"_plugbox\" boxid=\"12\">唐 文</a><br>--> <!--</td>--></tr>\r\n<tr bgcolor=\"#F7F7F7\">\r\n<td class=\"nr tdborder\">行政秘书</td>\r\n<td class=\"tdline tdborder\"><a class=\"_plugbox\" href=\"#\">程冬梅</a></td>\r\n<td class=\"tdborder\"> </td>\r\n<td class=\"tdline tdborder\"> </td>\r\n<td class=\"tdline tdborder\"> </td>\r\n</tr>\r\n<tr>\r\n<td class=\"tdline nr\">教学秘书</td>\r\n<td class=\"tdline\"><a class=\"_plugbox\" href=\"#\">邱晓波</a></td>\r\n<td> </td>\r\n<td class=\"tdline\"> </td>\r\n</tr>\r\n<tr bgcolor=\"#F7F7F7\">\r\n<td class=\"tdline nr tdborder\">产业秘书</td>\r\n<td class=\"tdline tdborder\"><a class=\"_plugbox\" href=\"#\">杜思佩</a></td>\r\n<td class=\"tdborder\"> </td>\r\n<td class=\"tdline tdborder\"> </td>\r\n<td class=\"tdline tdborder\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--内容结束-->\r\n<p> </p>','现任领导',NULL,'test1','2017-11-10','102',1000,0,'',4),(13,'<p>ef</p>','<p>组织机构</p>','组织机构',NULL,'test1','2017-11-10','102',1000,0,'',5);
/*!40000 ALTER TABLE `web_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_person`
--

DROP TABLE IF EXISTS `web_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image_url` varchar(30) NOT NULL,
  `detail` longtext NOT NULL,
  `detail_more` longtext NOT NULL,
  `group` varchar(30) NOT NULL,
  `contact` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_person`
--

LOCK TABLES `web_person` WRITE;
/*!40000 ALTER TABLE `web_person` DISABLE KEYS */;
INSERT INTO `web_person` VALUES (1,'渠成','Netconcepts创始人兼CEO','/static/images/allen@2x.png','渠成先生，毕业于新西兰奥克兰大学，中国电子商务专家、著名百度特聘专家、百度认证钻石讲师、全球跨境电子商务协会主席、北京航空航天大学互联网营销专业特聘教授、北京开放大学特聘讲师。','过去的十几年间，渠成先生一直致力于互联网与智能营销领域的研究与应用，全球独家提出360°优化理念和SEO\r\n                                3.0S全新优化策略.，曾带领Netconcepts中国团队先后为中国、美国、澳大利亚、新西兰、日本、香港等地众多世界500强企业提供智能网络营销咨询与服务，并于2011年创立中国SEO大学和中国SEO排行榜，为中国SEO行业的发展和创新起到了推动作用。','领导','allen@netconcepts.cn');
/*!40000 ALTER TABLE `web_person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-12 19:31:48
