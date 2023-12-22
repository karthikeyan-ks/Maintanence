-- MariaDB dump 10.19-11.1.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: Maintanence
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add machine',7,'add_machine'),
(26,'Can change machine',7,'change_machine'),
(27,'Can delete machine',7,'delete_machine'),
(28,'Can view machine',7,'view_machine'),
(29,'Can add activity',8,'add_activity'),
(30,'Can change activity',8,'change_activity'),
(31,'Can delete activity',8,'delete_activity'),
(32,'Can view activity',8,'view_activity'),
(33,'Can add component',9,'add_component'),
(34,'Can change component',9,'change_component'),
(35,'Can delete component',9,'delete_component'),
(36,'Can view component',9,'view_component'),
(37,'Can add schedule',10,'add_schedule'),
(38,'Can change schedule',10,'change_schedule'),
(39,'Can delete schedule',10,'delete_schedule'),
(40,'Can view schedule',10,'view_schedule'),
(41,'Can add status',11,'add_status'),
(42,'Can change status',11,'change_status'),
(43,'Can delete status',11,'delete_status'),
(44,'Can view status',11,'view_status'),
(45,'Can add change seeker',12,'add_changeseeker'),
(46,'Can change change seeker',12,'change_changeseeker'),
(47,'Can delete change seeker',12,'delete_changeseeker'),
(48,'Can view change seeker',12,'view_changeseeker'),
(49,'Can add change type',13,'add_changetype'),
(50,'Can change change type',13,'change_changetype'),
(51,'Can delete change type',13,'delete_changetype'),
(52,'Can view change type',13,'view_changetype'),
(53,'Can add report',14,'add_report'),
(54,'Can change report',14,'change_report'),
(55,'Can delete report',14,'delete_report'),
(56,'Can view report',14,'view_report'),
(57,'Can add users',15,'add_users'),
(58,'Can change users',15,'change_users'),
(59,'Can delete users',15,'delete_users'),
(60,'Can view users',15,'view_users'),
(61,'Can add task',16,'add_task'),
(62,'Can change task',16,'change_task'),
(63,'Can delete task',16,'delete_task'),
(64,'Can view task',16,'view_task');
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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$720000$Hbey9wp7QN6dcCo1tc7YV5$JkLdmT0LkHOo7y7PS4AHF7pkH3dEfaKutJ2Bs+adym0=','2023-12-22 02:32:22.898755',1,'sufiyan','','','jtfinu@gmail.com',1,1,'2023-12-18 10:11:55.429147');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2023-12-18 10:30:53.854450','1','Machine object (1)',1,'[{\"added\": {}}]',7,1),
(2,'2023-12-18 10:31:14.716607','2','Machine object (2)',1,'[{\"added\": {}}]',7,1),
(3,'2023-12-18 10:31:42.305448','3','Machine object (3)',1,'[{\"added\": {}}]',7,1),
(4,'2023-12-18 10:33:14.266503','1','Component object (1)',1,'[{\"added\": {}}]',9,1),
(5,'2023-12-18 10:33:55.909623','2','Component object (2)',1,'[{\"added\": {}}]',9,1),
(6,'2023-12-18 10:34:12.035159','3','Component object (3)',1,'[{\"added\": {}}]',9,1),
(7,'2023-12-18 10:34:33.480007','1','Schedule object (1)',1,'[{\"added\": {}}]',10,1),
(8,'2023-12-18 10:34:43.651146','2','Schedule object (2)',1,'[{\"added\": {}}]',10,1),
(9,'2023-12-18 14:06:43.742018','1','Status object (1)',1,'[{\"added\": {}}]',11,1),
(10,'2023-12-18 17:00:20.468111','6','Activity object (6)',1,'[{\"added\": {}}]',8,1),
(11,'2023-12-18 17:32:37.654624','7','Activity object (7)',1,'[{\"added\": {}}]',8,1),
(12,'2023-12-18 17:54:53.491487','8','Activity object (8)',1,'[{\"added\": {}}]',8,1),
(13,'2023-12-18 17:56:04.107872','9','Activity object (9)',1,'[{\"added\": {}}]',8,1),
(14,'2023-12-18 17:58:30.944269','10','Activity object (10)',1,'[{\"added\": {}}]',8,1),
(15,'2023-12-18 17:59:56.406463','10','Activity object (10)',2,'[{\"changed\": {\"fields\": [\"Activity name\"]}}]',8,1),
(16,'2023-12-18 18:00:55.328289','10','Activity object (10)',3,'',8,1),
(17,'2023-12-19 15:24:06.249082','22','Activity object (22)',3,'',8,1),
(18,'2023-12-19 15:25:26.042619','21','Activity object (21)',3,'',8,1),
(19,'2023-12-19 15:32:39.176225','20','Activity object (20)',3,'',8,1),
(20,'2023-12-19 15:56:45.884847','19','Activity object (19)',3,'',8,1),
(21,'2023-12-19 16:00:41.523699','18','Activity object (18)',3,'',8,1),
(22,'2023-12-19 16:13:12.538558','17','Activity object (17)',3,'',8,1),
(23,'2023-12-19 16:13:35.511546','16','Activity object (16)',3,'',8,1),
(24,'2023-12-19 16:56:45.906858','24','Activity object (24)',1,'[{\"added\": {}}]',8,1),
(25,'2023-12-19 17:01:40.735606','24','Activity object (24)',3,'',8,1),
(26,'2023-12-19 17:02:39.292817','15','Activity object (15)',3,'',8,1),
(27,'2023-12-19 17:12:18.669523','25','Activity object (25)',1,'[{\"added\": {}}]',8,1),
(28,'2023-12-20 06:49:12.194178','26','Activity object (26)',3,'',8,1),
(29,'2023-12-20 06:52:05.520882','25','Activity object (25)',3,'',8,1),
(30,'2023-12-20 08:54:13.588716','44','Activity object (44)',3,'',8,1),
(31,'2023-12-20 09:39:54.655583','43','Activity object (43)',3,'',8,1),
(32,'2023-12-20 09:40:22.080968','42','Activity object (42)',3,'',8,1),
(33,'2023-12-20 09:41:06.685220','41','Activity object (41)',3,'',8,1),
(34,'2023-12-20 09:41:36.496853','40','Activity object (40)',3,'',8,1),
(35,'2023-12-20 09:41:52.708645','39','Activity object (39)',3,'',8,1),
(36,'2023-12-20 10:16:01.081455','38','Activity object (38)',3,'',8,1),
(37,'2023-12-20 10:16:14.667664','37','Activity object (37)',3,'',8,1),
(38,'2023-12-20 10:16:23.125025','36','Activity object (36)',3,'',8,1),
(39,'2023-12-20 10:16:31.930146','35','Activity object (35)',3,'',8,1),
(40,'2023-12-20 10:16:45.134139','34','Activity object (34)',3,'',8,1),
(41,'2023-12-20 10:16:54.717697','33','Activity object (33)',3,'',8,1),
(42,'2023-12-20 10:17:08.129040','32','Activity object (32)',3,'',8,1),
(43,'2023-12-20 10:36:27.455473','45','Activity object (45)',3,'',8,1),
(44,'2023-12-20 10:36:27.463331','31','Activity object (31)',3,'',8,1),
(45,'2023-12-20 10:36:27.468547','30','Activity object (30)',3,'',8,1),
(46,'2023-12-20 10:36:27.473104','29','Activity object (29)',3,'',8,1),
(47,'2023-12-20 10:36:27.483260','28','Activity object (28)',3,'',8,1),
(48,'2023-12-20 10:36:49.396919','51','Activity object (51)',3,'',8,1),
(49,'2023-12-20 10:36:49.401002','50','Activity object (50)',3,'',8,1),
(50,'2023-12-20 10:36:49.405852','49','Activity object (49)',3,'',8,1),
(51,'2023-12-20 10:36:49.411188','48','Activity object (48)',3,'',8,1),
(52,'2023-12-20 10:36:49.416314','47','Activity object (47)',3,'',8,1),
(53,'2023-12-20 10:36:49.419950','46','Activity object (46)',3,'',8,1),
(54,'2023-12-20 10:42:57.730632','56','Activity object (56)',3,'',8,1),
(55,'2023-12-20 10:43:10.646541','55','Activity object (55)',3,'',8,1),
(56,'2023-12-20 10:43:38.800375','54','Activity object (54)',3,'',8,1),
(57,'2023-12-21 10:39:13.879968','57','Activity object (57)',3,'',8,1),
(58,'2023-12-21 10:39:42.636248','53','Activity object (53)',3,'',8,1),
(59,'2023-12-21 12:33:28.829682','1','Status object (1)',2,'[]',11,1),
(60,'2023-12-21 12:33:45.944282','2','Status object (2)',1,'[{\"added\": {}}]',11,1),
(61,'2023-12-21 12:33:56.629127','3','Status object (3)',1,'[{\"added\": {}}]',11,1),
(62,'2023-12-21 12:34:15.995788','4','Status object (4)',1,'[{\"added\": {}}]',11,1),
(63,'2023-12-21 12:34:52.206903','2','Status object (2)',2,'[{\"changed\": {\"fields\": [\"Status name\"]}}]',11,1),
(64,'2023-12-21 12:35:03.723567','2','Status object (2)',2,'[{\"changed\": {\"fields\": [\"Status name\"]}}]',11,1),
(65,'2023-12-21 12:35:18.682946','1','Status object (1)',2,'[{\"changed\": {\"fields\": [\"Status name\"]}}]',11,1),
(66,'2023-12-21 13:19:22.684337','27','Activity object (27)',2,'[{\"changed\": {\"fields\": [\"Activity issued date\"]}}]',8,1),
(67,'2023-12-21 13:44:44.111968','52','Activity object (52)',2,'[{\"changed\": {\"fields\": [\"Activity description\", \"Activity status id\"]}}]',8,1),
(68,'2023-12-21 14:59:13.627379','1','Users object (1)',1,'[{\"added\": {}}]',15,1),
(69,'2023-12-21 14:59:54.459408','1','Report object (1)',1,'[{\"added\": {}}]',14,1),
(70,'2023-12-21 15:07:29.176566','1','Report object (1)',3,'',14,1),
(71,'2023-12-21 15:15:49.300398','2','Report object (2)',1,'[{\"added\": {}}]',14,1),
(72,'2023-12-21 18:40:05.950010','1','Users object (1)',2,'[]',15,1),
(73,'2023-12-21 18:40:25.098010','2','Users object (2)',1,'[{\"added\": {}}]',15,1),
(74,'2023-12-21 19:20:09.339124','1','Task object (1)',1,'[{\"added\": {}}]',16,1),
(75,'2023-12-21 19:20:21.973129','2','Task object (2)',1,'[{\"added\": {}}]',16,1),
(76,'2023-12-22 02:43:06.856313','2','Task object (2)',3,'',16,1),
(77,'2023-12-22 02:43:06.863463','1','Task object (1)',3,'',16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(8,'home','activity'),
(12,'home','changeseeker'),
(13,'home','changetype'),
(9,'home','component'),
(7,'home','machine'),
(14,'home','report'),
(10,'home','schedule'),
(11,'home','status'),
(16,'home','task'),
(15,'home','users'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-12-18 10:04:52.803311'),
(2,'auth','0001_initial','2023-12-18 10:04:53.879585'),
(3,'admin','0001_initial','2023-12-18 10:04:54.116241'),
(4,'admin','0002_logentry_remove_auto_add','2023-12-18 10:04:54.137334'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-12-18 10:04:54.156642'),
(6,'contenttypes','0002_remove_content_type_name','2023-12-18 10:04:54.313070'),
(7,'auth','0002_alter_permission_name_max_length','2023-12-18 10:04:54.408038'),
(8,'auth','0003_alter_user_email_max_length','2023-12-18 10:04:54.470161'),
(9,'auth','0004_alter_user_username_opts','2023-12-18 10:04:54.491095'),
(10,'auth','0005_alter_user_last_login_null','2023-12-18 10:04:54.581775'),
(11,'auth','0006_require_contenttypes_0002','2023-12-18 10:04:54.585473'),
(12,'auth','0007_alter_validators_add_error_messages','2023-12-18 10:04:54.606006'),
(13,'auth','0008_alter_user_username_max_length','2023-12-18 10:04:54.659905'),
(14,'auth','0009_alter_user_last_name_max_length','2023-12-18 10:04:54.714460'),
(15,'auth','0010_alter_group_name_max_length','2023-12-18 10:04:54.771694'),
(16,'auth','0011_update_proxy_permissions','2023-12-18 10:04:54.783017'),
(17,'auth','0012_alter_user_first_name_max_length','2023-12-18 10:04:54.838232'),
(18,'sessions','0001_initial','2023-12-18 10:04:54.927983'),
(19,'home','0001_initial','2023-12-18 10:15:40.534269'),
(20,'home','0002_status','2023-12-18 14:05:55.622696'),
(21,'home','0003_activity_activity_status_id','2023-12-18 14:10:00.920099'),
(22,'home','0004_changeseeker','2023-12-18 14:42:40.398395'),
(23,'home','0005_alter_changeseeker_changeseeker_id','2023-12-18 15:44:49.165950'),
(24,'home','0006_changetype','2023-12-18 15:55:45.485355'),
(25,'home','0007_changeseeker_change_activity_type_id','2023-12-18 16:00:26.566436'),
(26,'home','0008_alter_changeseeker_changed_activity_id','2023-12-18 17:19:09.128300'),
(27,'home','0009_alter_changeseeker_changed_activity_id','2023-12-18 17:39:58.151466'),
(28,'home','0010_alter_changeseeker_changed_activity_id','2023-12-18 17:45:08.046477'),
(29,'home','0011_changeseeker_position_number','2023-12-19 16:29:58.406703'),
(30,'home','0012_activity_activity_issued_date','2023-12-21 12:43:58.387946'),
(31,'home','0013_schedule_schedule_value','2023-12-21 12:45:49.506655'),
(32,'home','0014_report','2023-12-21 13:57:12.523687'),
(33,'home','0015_users_report_report_user_id','2023-12-21 14:55:18.324098'),
(34,'home','0016_task','2023-12-21 17:56:39.319106'),
(35,'home','0017_alter_users_user_name','2023-12-21 18:15:45.861566');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('91echfqz5rnbw1ic7vm28krokl1b4w9s','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rFqO0:9tGbLGd7s4keUzqgEO7l-Fq3oAMLuxVD0FkjWixdw8Y','2024-01-03 06:48:56.430747'),
('dz3tc4oge66vagnblfvoyk9b9zvqp6ti','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rFAbn:0oO7C6l1TNvkRSQJ1Y3CjOULO5FEm5_hGzlLm5O__zc','2024-01-01 10:12:23.815215'),
('gimci78brolwvxsky3ipmagaos1c7yrf','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rFAsx:Dne9nQ-ASkEIefM5AMpU4rpZOghkVh30qokMcLrlpdE','2024-01-01 10:30:07.339924'),
('is7rg3mi22zfwjaredi77rzakmp5naak','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rFbwX:flLXD_2Xy7yNJC5prkn7e1XaH9J1sILVTOSr7UIT6SM','2024-01-02 15:23:37.029162'),
('jniztazu63lphgz29qt55uviutlt8ssv','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rGGS9:a0ySC2B9h-X5_hHoz69I7T-lZ94utg_JxN3jZ8SWmmk','2024-01-04 10:38:57.861415'),
('kvz9ayrsppt8e6s6nj4rol04ud2vsf42','.eJxVjMEOwiAQRP-FsyGluLj16L3fQJZdkKqBpLQn47_bJj3obTLvzbyVp3XJfm1x9pOoqzLq9NsF4mcsO5AHlXvVXMsyT0Hvij5o02OV-Lod7t9Bppa39WACObbkzii9Q-TYGXEoFgKkvmOGLVogTtGkPiLiBawQB-RhACD1-QLp0ThA:1rGVKo:E8jKskWGGonHpHY38UGk9mQHOt0SqLPg7J2ediM6frM','2024-01-05 02:32:22.905257');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_activity`
--

DROP TABLE IF EXISTS `home_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(30) NOT NULL,
  `activity_description` longtext NOT NULL,
  `activity_component_id_id` int(11) NOT NULL,
  `activity_machine_id_id` int(11) NOT NULL,
  `activity_schedule_id_id` int(11) NOT NULL,
  `activity_status_id_id` int(11) NOT NULL,
  `activity_issued_date` date NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `home_activity_activity_component_i_eae38210_fk_home_comp` (`activity_component_id_id`),
  KEY `home_activity_activity_machine_id__1333f1e9_fk_home_mach` (`activity_machine_id_id`),
  KEY `home_activity_activity_schedule_id_afc8d5f2_fk_home_sche` (`activity_schedule_id_id`),
  KEY `home_activity_activity_status_id_i_af5a4014_fk_home_stat` (`activity_status_id_id`),
  CONSTRAINT `home_activity_activity_component_i_eae38210_fk_home_comp` FOREIGN KEY (`activity_component_id_id`) REFERENCES `home_component` (`component_id`),
  CONSTRAINT `home_activity_activity_machine_id__1333f1e9_fk_home_mach` FOREIGN KEY (`activity_machine_id_id`) REFERENCES `home_machine` (`machine_id`),
  CONSTRAINT `home_activity_activity_schedule_id_afc8d5f2_fk_home_sche` FOREIGN KEY (`activity_schedule_id_id`) REFERENCES `home_schedule` (`schedule_id`),
  CONSTRAINT `home_activity_activity_status_id_i_af5a4014_fk_home_stat` FOREIGN KEY (`activity_status_id_id`) REFERENCES `home_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_activity`
--

LOCK TABLES `home_activity` WRITE;
/*!40000 ALTER TABLE `home_activity` DISABLE KEYS */;
INSERT INTO `home_activity` VALUES
(11,'motor check ','checking motor brushes ever week ',1,1,1,4,'2023-12-21'),
(12,'grease the machine ','greasing machine  brushes ever week ',1,1,1,4,'2023-12-21'),
(13,'grease the machine ','greasing machine  brushes ever week ',1,1,1,1,'2023-12-21'),
(14,'grease the machine ','greasing machine  brushes ever week ',1,1,1,1,'2023-12-21'),
(27,'new','schj',1,1,1,1,'2023-12-19'),
(52,'fjcdguuu','fgyjk',1,1,1,3,'2023-12-21');
/*!40000 ALTER TABLE `home_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger change_seeker_insert after insert on home_activity for each row begin declare position int; select row_position into position from(select *,row_number() over (order by activity_id) as row_position from home_activity) as r where r.activity_id=NEW.activity_id; insert into home_changeseeker(Changed_activity_id ,change_activity_type_id_id,position_number) values(NEW.activity_id ,1,position); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger change_seeker_delete before delete on home_activity for each row begin declare position int; select row_position into position from(select *,row_number() over (order by activity_id) as row_position from home_activity) as r where r.activity_id=OLD.activity_id; insert into home_changeseeker(Changed_activity_id ,change_activity_type_id_id,position_number) values(OLD.activity_id ,3,position); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `home_changeseeker`
--

DROP TABLE IF EXISTS `home_changeseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_changeseeker` (
  `ChangeSeeker_id` int(11) NOT NULL AUTO_INCREMENT,
  `Changed_activity_id` int(11) NOT NULL,
  `change_activity_type_id_id` int(11) NOT NULL,
  `position_number` int(11) NOT NULL,
  PRIMARY KEY (`ChangeSeeker_id`),
  KEY `home_changeseeker_change_activity_type_67e87f23_fk_home_chan` (`change_activity_type_id_id`),
  CONSTRAINT `home_changeseeker_change_activity_type_67e87f23_fk_home_chan` FOREIGN KEY (`change_activity_type_id_id`) REFERENCES `home_changetype` (`change_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_changeseeker`
--

LOCK TABLES `home_changeseeker` WRITE;
/*!40000 ALTER TABLE `home_changeseeker` DISABLE KEYS */;
INSERT INTO `home_changeseeker` VALUES
(42,24,1,6),
(43,24,1,6),
(44,15,1,5),
(45,25,1,5),
(46,26,1,6),
(47,26,2,6),
(48,26,3,6),
(49,25,3,5),
(50,27,1,5),
(51,27,2,5),
(52,28,1,6),
(53,28,2,6),
(54,29,1,7),
(55,30,1,8),
(56,31,1,9),
(57,32,1,10),
(58,33,1,11),
(59,34,1,12),
(60,35,1,13),
(61,36,1,14),
(62,37,1,15),
(63,38,1,16),
(64,39,1,17),
(65,40,1,18),
(66,41,1,19),
(67,42,1,20),
(68,43,1,21),
(69,44,1,22),
(70,44,3,22),
(71,43,3,21),
(72,42,3,20),
(73,41,3,19),
(74,40,3,18),
(75,39,3,17),
(76,38,3,16),
(77,37,3,15),
(78,36,3,14),
(79,35,3,13),
(80,34,3,12),
(81,33,3,11),
(82,32,3,10),
(83,45,1,10),
(84,46,1,11),
(85,47,1,12),
(86,48,1,13),
(87,49,1,14),
(88,50,1,15),
(89,51,1,16),
(90,28,3,6),
(91,29,3,6),
(92,30,3,6),
(93,31,3,6),
(94,45,3,6),
(95,46,3,6),
(96,47,3,6),
(97,48,3,6),
(98,49,3,6),
(99,50,3,6),
(100,51,3,6),
(101,52,1,6),
(102,53,1,7),
(103,54,1,8),
(104,55,1,9),
(105,56,1,10),
(106,56,3,10),
(107,55,3,9),
(108,54,3,8),
(109,57,1,8),
(110,57,3,8),
(111,53,3,7);
/*!40000 ALTER TABLE `home_changeseeker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_changetype`
--

DROP TABLE IF EXISTS `home_changetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_changetype` (
  `change_type_id` int(11) NOT NULL,
  `change_type` varchar(30) NOT NULL,
  PRIMARY KEY (`change_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_changetype`
--

LOCK TABLES `home_changetype` WRITE;
/*!40000 ALTER TABLE `home_changetype` DISABLE KEYS */;
INSERT INTO `home_changetype` VALUES
(1,'insert'),
(2,'update'),
(3,'delete');
/*!40000 ALTER TABLE `home_changetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_component`
--

DROP TABLE IF EXISTS `home_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_component` (
  `component_name` varchar(50) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_component`
--

LOCK TABLES `home_component` WRITE;
/*!40000 ALTER TABLE `home_component` DISABLE KEYS */;
INSERT INTO `home_component` VALUES
('belt',1),
('mudcard',2),
('stearing',3);
/*!40000 ALTER TABLE `home_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_machine`
--

DROP TABLE IF EXISTS `home_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_machine` (
  `machine_name` varchar(50) NOT NULL,
  `machine_id` int(11) NOT NULL,
  PRIMARY KEY (`machine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_machine`
--

LOCK TABLES `home_machine` WRITE;
/*!40000 ALTER TABLE `home_machine` DISABLE KEYS */;
INSERT INTO `home_machine` VALUES
('motor',1),
('grinder',2),
('heater',3);
/*!40000 ALTER TABLE `home_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_report`
--

DROP TABLE IF EXISTS `home_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `report_text` longtext NOT NULL,
  `report_activity_id` int(11) NOT NULL,
  `report_user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `home_report_report_activity_id_791f6d3c_fk_home_acti` (`report_activity_id`),
  KEY `home_report_report_user_id_id_27885e94_fk_home_users_user_id` (`report_user_id_id`),
  CONSTRAINT `home_report_report_activity_id_791f6d3c_fk_home_acti` FOREIGN KEY (`report_activity_id`) REFERENCES `home_activity` (`activity_id`),
  CONSTRAINT `home_report_report_user_id_id_27885e94_fk_home_users_user_id` FOREIGN KEY (`report_user_id_id`) REFERENCES `home_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_report`
--

LOCK TABLES `home_report` WRITE;
/*!40000 ALTER TABLE `home_report` DISABLE KEYS */;
INSERT INTO `home_report` VALUES
(2,'sdcsudfuiweg;ifuwegi',11,1),
(3,'theyjk',11,1),
(4,'djnfykvtijg',12,1);
/*!40000 ALTER TABLE `home_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger change_status after insert on home_report for each row begin 
update home_activity set activity_status_id_id =4 where activity_id=NEW.report_activity_id;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger new_report after insert on home_report for each row begin delete from home_task where task_activity_id_id=NEW.report_activity_id and task_assigned_to_id=NEW.report_user_id_id; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `home_schedule`
--

DROP TABLE IF EXISTS `home_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_schedule` (
  `schedule_id` int(11) NOT NULL,
  `schedule_type` varchar(10) NOT NULL,
  `schedule_value` int(11) NOT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_schedule`
--

LOCK TABLES `home_schedule` WRITE;
/*!40000 ALTER TABLE `home_schedule` DISABLE KEYS */;
INSERT INTO `home_schedule` VALUES
(1,'weekly',7),
(2,'monthly',7);
/*!40000 ALTER TABLE `home_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_status`
--

DROP TABLE IF EXISTS `home_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_status`
--

LOCK TABLES `home_status` WRITE;
/*!40000 ALTER TABLE `home_status` DISABLE KEYS */;
INSERT INTO `home_status` VALUES
(1,'inert'),
(2,'issued'),
(3,'pending'),
(4,'reported');
/*!40000 ALTER TABLE `home_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_task`
--

DROP TABLE IF EXISTS `home_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_activity_id_id` int(11) NOT NULL,
  `task_assign_to_id` int(11) NOT NULL,
  PRIMARY KEY (`task_id`),
  KEY `home_task_task_activity_id_id_81f289b6_fk_home_acti` (`task_activity_id_id`),
  KEY `home_task_task_assign_to_id_b1362539_fk_home_users_user_id` (`task_assign_to_id`),
  CONSTRAINT `home_task_task_activity_id_id_81f289b6_fk_home_acti` FOREIGN KEY (`task_activity_id_id`) REFERENCES `home_activity` (`activity_id`),
  CONSTRAINT `home_task_task_assign_to_id_b1362539_fk_home_users_user_id` FOREIGN KEY (`task_assign_to_id`) REFERENCES `home_users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_task`
--

LOCK TABLES `home_task` WRITE;
/*!40000 ALTER TABLE `home_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_users`
--

DROP TABLE IF EXISTS `home_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(15) NOT NULL,
  `user_mode` varchar(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `home_users_user_name_4dcf39a8_uniq` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_users`
--

LOCK TABLES `home_users` WRITE;
/*!40000 ALTER TABLE `home_users` DISABLE KEYS */;
INSERT INTO `home_users` VALUES
(1,'user1','user1','B'),
(2,'user2','user2','A');
/*!40000 ALTER TABLE `home_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-22 15:08:28
