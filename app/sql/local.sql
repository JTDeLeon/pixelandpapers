-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-12-21 13:09:58','2019-12-21 13:09:58','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
INSERT INTO `wp_comments` VALUES (2,49,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-10-23 21:16:26','2019-10-23 21:16:26','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\" rel=\"nofollow ugc\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://pixelandpapers.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://pixelandpapers.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','pixelandpaperslocal','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=51&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";i:1;s:31:\"wp-migrate-db/wp-migrate-db.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','pixelGenesis','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','pixelGenesis','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','24','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','51','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1592485797','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"header-right\";a:0:{}s:7:\"sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:11:\"sidebar-alt\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1580490599;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580519399;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580562598;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580568105;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580568106;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','`A]Io.T|lZz[o+9Z4Q}P(+ jX1E{k7;5mR$*{19TBSWOP{v*[(?~MaP:3buOFM~`','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','tV`L2P|%jZpm~0[b]WI6 9+c}IGM?!/Hq<hVH8NVlN7ECE0) K?PDZ9!h]  J!M-','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1580487342;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576945770;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (143,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (146,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (153,'wpmdb_settings','a:13:{s:3:\"key\";s:40:\"H34ZPoC8mgrZJr/UyOy6Ea5zfSnYxeP1zUOabA/U\";s:10:\"allow_pull\";b:0;s:10:\"allow_push\";b:0;s:8:\"profiles\";a:0:{}s:7:\"licence\";s:0:\"\";s:10:\"verify_ssl\";b:0;s:17:\"whitelist_plugins\";a:0:{}s:11:\"max_request\";i:1048576;s:22:\"delay_between_requests\";i:0;s:18:\"prog_tables_hidden\";b:1;s:21:\"pause_before_finalize\";b:0;s:14:\"allow_tracking\";N;s:28:\"compatibility_plugin_version\";s:3:\"1.2\";}','no');
INSERT INTO `wp_options` VALUES (154,'wpmdb_schema_version','2','no');
INSERT INTO `wp_options` VALUES (158,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580487344;s:7:\"checked\";a:2:{s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.6.4\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:6:\"1.0.11\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"wp-migrate-db/wp-migrate-db.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wp-migrate-db\";s:4:\"slug\";s:13:\"wp-migrate-db\";s:6:\"plugin\";s:31:\"wp-migrate-db/wp-migrate-db.php\";s:11:\"new_version\";s:6:\"1.0.11\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-migrate-db/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wp-migrate-db.1.0.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-256x256.jpg?rev=1809889\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-migrate-db/assets/icon-128x128.jpg?rev=1809889\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wp-migrate-db/assets/banner-1544x500.jpg?rev=1809889\";s:2:\"1x\";s:68:\"https://ps.w.org/wp-migrate-db/assets/banner-772x250.jpg?rev=1809889\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (159,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','Pixel&amp;Papers Genesis','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_pixelGenesis','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (166,'widget_featured-page','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (167,'widget_featured-post','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (168,'widget_user-profile','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (169,'genesis-settings','a:41:{s:6:\"update\";i:1;s:12:\"update_email\";i:0;s:20:\"update_email_address\";s:0:\"\";s:10:\"blog_title\";s:5:\"image\";s:15:\"style_selection\";s:0:\"\";s:11:\"site_layout\";s:15:\"content-sidebar\";s:9:\"superfish\";i:0;s:10:\"nav_extras\";s:0:\"\";s:21:\"nav_extras_twitter_id\";s:0:\"\";s:23:\"nav_extras_twitter_text\";s:20:\"Follow me on Twitter\";s:8:\"feed_uri\";s:0:\"\";s:13:\"redirect_feed\";i:0;s:17:\"comments_feed_uri\";s:0:\"\";s:22:\"redirect_comments_feed\";i:0;s:10:\"adsense_id\";s:0:\"\";s:14:\"comments_pages\";i:0;s:14:\"comments_posts\";i:1;s:16:\"trackbacks_pages\";i:0;s:16:\"trackbacks_posts\";i:1;s:15:\"breadcrumb_home\";i:0;s:21:\"breadcrumb_front_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:15:\"content_archive\";s:4:\"full\";s:25:\"content_archive_thumbnail\";i:0;s:10:\"image_size\";s:0:\"\";s:15:\"image_alignment\";s:9:\"alignleft\";s:9:\"posts_nav\";s:7:\"numeric\";s:8:\"blog_cat\";i:0;s:16:\"blog_cat_exclude\";s:0:\"\";s:12:\"blog_cat_num\";i:10;s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:13:\"theme_version\";s:5:\"2.8.0\";s:10:\"db_version\";i:2800;s:13:\"first_version\";s:5:\"2.8.0\";s:21:\"content_archive_limit\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (170,'genesis-seo-settings','a:29:{s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:23:\"append_description_home\";i:1;s:10:\"home_h1_on\";s:5:\"title\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:18:\"canonical_archives\";i:1;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;s:5:\"noodp\";i:1;s:6:\"noydir\";i:1;s:11:\"home_author\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (208,'_site_transient_timeout_browser_7b17917615f55544b605f1a67477c2e4','1580817809','no');
INSERT INTO `wp_options` VALUES (209,'_site_transient_browser_7b17917615f55544b605f1a67477c2e4','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (210,'_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33','1580817809','no');
INSERT INTO `wp_options` VALUES (211,'_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (235,'_transient_timeout_genesis-update','1580513462','no');
INSERT INTO `wp_options` VALUES (236,'_transient_genesis-update','a:5:{s:5:\"theme\";s:7:\"genesis\";s:3:\"url\";s:41:\"https://my.studiopress.com/themes/genesis\";s:11:\"new_version\";s:5:\"3.2.1\";s:7:\"package\";s:61:\"https://api.genesistheme.com/download/?file=genesis.3.2.1.zip\";s:13:\"changelog_url\";s:63:\"https://studiopress.github.io/genesis/changelog/?TB_iframe=true\";}','no');
INSERT INTO `wp_options` VALUES (253,'_site_transient_timeout_theme_roots','1580489144','no');
INSERT INTO `wp_options` VALUES (254,'_site_transient_theme_roots','a:5:{s:12:\"pixelGenesis\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (255,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580487345;s:7:\"checked\";a:5:{s:12:\"pixelGenesis\";s:5:\"2.8.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (7,7,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (8,12,'_wp_attached_file','2019/12/favicon-122x113-1.png');
INSERT INTO `wp_postmeta` VALUES (9,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:122;s:6:\"height\";i:113;s:4:\"file\";s:29:\"2019/12/favicon-122x113-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (10,13,'_wp_attached_file','2019/12/cropped-favicon-122x113-1.png');
INSERT INTO `wp_postmeta` VALUES (11,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:37:\"2019/12/cropped-favicon-122x113-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"cropped-favicon-122x113-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-favicon-122x113-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (12,13,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (13,29,'_wp_attached_file','2019/12/Pixel-Papers-Logo-e1576877089446.png');
INSERT INTO `wp_postmeta` VALUES (14,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:296;s:4:\"file\";s:44:\"2019/12/Pixel-Papers-Logo-e1576877089446.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Pixel-Papers-Logo-e1576877089446-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (15,29,'_wp_attachment_backup_sizes','a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2036;s:6:\"height\";i:3017;s:4:\"file\";s:21:\"Pixel-Papers-Logo.png\";}s:18:\"full-1576877089446\";a:3:{s:5:\"width\";i:500;s:6:\"height\";i:741;s:4:\"file\";s:36:\"Pixel-Papers-Logo-e1576877040365.png\";}}');
INSERT INTO `wp_postmeta` VALUES (16,29,'_edit_last','3');
INSERT INTO `wp_postmeta` VALUES (17,33,'_wp_attached_file','2019/12/iStock-1010565366.jpg');
INSERT INTO `wp_postmeta` VALUES (18,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:715;s:6:\"height\";i:489;s:4:\"file\";s:29:\"2019/12/iStock-1010565366.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1010565366-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1010565366-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:22:\"commercial illustrator\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:7:\"talking\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (19,34,'_wp_attached_file','2019/12/iStock-1159280981.jpg');
INSERT INTO `wp_postmeta` VALUES (20,34,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1159280981.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1159280981-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1159280981-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:60:\"Human Resourses Leadership Concepts on Blackboard Background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:60:\"Human Resourses Leadership Concepts on Blackboard Background\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (21,35,'_wp_attached_file','2019/12/iStock-1098245024.jpg');
INSERT INTO `wp_postmeta` VALUES (22,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1098245024.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1098245024-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1098245024-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:199:\"Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:199:\"Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (23,36,'_wp_attached_file','2019/12/iStock-1058248290.jpg');
INSERT INTO `wp_postmeta` VALUES (24,36,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1058248290.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1058248290-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1058248290-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:64:\"In a book of business terms, the word \'entrepreneur\' is defined.\";s:17:\"created_timestamp\";s:10:\"1540209254\";s:9:\"copyright\";s:62:\"Rapid Eye Media CC (Rapid Eye Media CC (Photographer) - [None]\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:34:\"Business definitions: Entrepreneur\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"start-up,toned,risk-taker,printed word,nobody,jargon,explanation\";}}}');
INSERT INTO `wp_postmeta` VALUES (25,37,'_wp_attached_file','2019/12/iStock-1165073587.jpg');
INSERT INTO `wp_postmeta` VALUES (26,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1165073587.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1165073587-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1165073587-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:9:\"ILCE-7RM3\";s:7:\"caption\";s:84:\"Young online business owner looking at laptop while preparing deliveries for clients\";s:17:\"created_timestamp\";s:10:\"1559315164\";s:9:\"copyright\";s:62:\"bartekszewczyk.com (bartekszewczyk.com (Photographer) - [None]\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:84:\"Young online business owner looking at laptop while preparing deliveries for clients\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (27,38,'_wp_attached_file','2019/12/iStock-1042569776.jpg');
INSERT INTO `wp_postmeta` VALUES (28,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1042569776.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1042569776-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1042569776-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:180:\"Coworkers working in modern co-working space in Scandinavia. Multi-ethnic group of young business professionals, start-up establishers, freelancers working and developing together.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:45:\"Modern business office with multi-ethnic team\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (29,39,'_wp_attached_file','2019/12/iStock-1063557222.jpg');
INSERT INTO `wp_postmeta` VALUES (30,39,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:29:\"2019/12/iStock-1063557222.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1063557222-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1063557222-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:67:\"Team of young architects working and developing plans in the office\";s:17:\"created_timestamp\";s:10:\"1529326081\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:38:\"Young architects working in the office\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,40,'_wp_attached_file','2019/12/iStock-1124347661.jpg');
INSERT INTO `wp_postmeta` VALUES (32,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:893;s:6:\"height\";i:391;s:4:\"file\";s:29:\"2019/12/iStock-1124347661.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"iStock-1124347661-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iStock-1124347661-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"iStock-1124347661-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:13:\"Canon EOS 5DS\";s:7:\"caption\";s:33:\"Close up of a woman using a phone\";s:17:\"created_timestamp\";s:10:\"1500485498\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:19:\"Woman using a phone\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,41,'_wp_attached_file','2019/12/iStock-1010565366-1.jpg');
INSERT INTO `wp_postmeta` VALUES (34,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:715;s:6:\"height\";i:489;s:4:\"file\";s:31:\"2019/12/iStock-1010565366-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1010565366-1-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1010565366-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:22:\"commercial illustrator\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:7:\"talking\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (35,42,'_wp_attached_file','2019/12/iStock-1159280981-1.jpg');
INSERT INTO `wp_postmeta` VALUES (36,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1159280981-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1159280981-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1159280981-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:60:\"Human Resourses Leadership Concepts on Blackboard Background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:60:\"Human Resourses Leadership Concepts on Blackboard Background\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (37,43,'_wp_attached_file','2019/12/iStock-1098245024-1.jpg');
INSERT INTO `wp_postmeta` VALUES (38,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1098245024-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1098245024-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1098245024-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:199:\"Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:199:\"Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (39,44,'_wp_attached_file','2019/12/iStock-1058248290-1.jpg');
INSERT INTO `wp_postmeta` VALUES (40,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1058248290-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1058248290-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1058248290-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:64:\"In a book of business terms, the word \'entrepreneur\' is defined.\";s:17:\"created_timestamp\";s:10:\"1540209254\";s:9:\"copyright\";s:62:\"Rapid Eye Media CC (Rapid Eye Media CC (Photographer) - [None]\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:34:\"Business definitions: Entrepreneur\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:1:{i:0;s:64:\"start-up,toned,risk-taker,printed word,nobody,jargon,explanation\";}}}');
INSERT INTO `wp_postmeta` VALUES (41,45,'_wp_attached_file','2019/12/iStock-1165073587-1.jpg');
INSERT INTO `wp_postmeta` VALUES (42,45,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1165073587-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1165073587-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1165073587-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:9:\"ILCE-7RM3\";s:7:\"caption\";s:84:\"Young online business owner looking at laptop while preparing deliveries for clients\";s:17:\"created_timestamp\";s:10:\"1559315164\";s:9:\"copyright\";s:62:\"bartekszewczyk.com (bartekszewczyk.com (Photographer) - [None]\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:84:\"Young online business owner looking at laptop while preparing deliveries for clients\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (43,46,'_wp_attached_file','2019/12/iStock-1042569776-1.jpg');
INSERT INTO `wp_postmeta` VALUES (44,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1042569776-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1042569776-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1042569776-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:180:\"Coworkers working in modern co-working space in Scandinavia. Multi-ethnic group of young business professionals, start-up establishers, freelancers working and developing together.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:45:\"Modern business office with multi-ethnic team\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (45,47,'_wp_attached_file','2019/12/iStock-1063557222-1.jpg');
INSERT INTO `wp_postmeta` VALUES (46,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:724;s:6:\"height\";i:483;s:4:\"file\";s:31:\"2019/12/iStock-1063557222-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1063557222-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1063557222-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark IV\";s:7:\"caption\";s:67:\"Team of young architects working and developing plans in the office\";s:17:\"created_timestamp\";s:10:\"1529326081\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:38:\"Young architects working in the office\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (47,48,'_wp_attached_file','2019/12/iStock-1124347661-1.jpg');
INSERT INTO `wp_postmeta` VALUES (48,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:893;s:6:\"height\";i:391;s:4:\"file\";s:31:\"2019/12/iStock-1124347661-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"iStock-1124347661-1-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"iStock-1124347661-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"iStock-1124347661-1-768x336.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.4\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:13:\"Canon EOS 5DS\";s:7:\"caption\";s:33:\"Close up of a woman using a phone\";s:17:\"created_timestamp\";s:10:\"1500485498\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:19:\"Woman using a phone\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (49,49,'_edit_last','3');
INSERT INTO `wp_postmeta` VALUES (50,49,'_wp_old_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (51,49,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (52,49,'_genesis_title','Welcome to Pixel & Papers!');
INSERT INTO `wp_postmeta` VALUES (53,49,'_genesis_description','We teach others the benefits of website optimizations.');
INSERT INTO `wp_postmeta` VALUES (54,49,'_genesis_keywords','website optimizations, welcome, first-post');
INSERT INTO `wp_postmeta` VALUES (55,49,'_genesis_canonical_uri','/first');
INSERT INTO `wp_postmeta` VALUES (56,49,'_genesis_noindex','1');
INSERT INTO `wp_postmeta` VALUES (57,49,'_genesis_nofollow','1');
INSERT INTO `wp_postmeta` VALUES (58,49,'_genesis_scripts_body_position','bottom');
INSERT INTO `wp_postmeta` VALUES (59,50,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (60,51,'_wp_page_template','content/index.php');
INSERT INTO `wp_postmeta` VALUES (61,51,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (62,51,'_genesis_scripts_body_position','bottom');
INSERT INTO `wp_postmeta` VALUES (63,24,'_customize_changeset_uuid','e2ded3c9-5ee8-412d-938f-6ebcebc7b5e4');
INSERT INTO `wp_postmeta` VALUES (64,28,'_edit_last','3');
INSERT INTO `wp_postmeta` VALUES (65,28,'_genesis_title','Welcome to Pixel and Papers!');
INSERT INTO `wp_postmeta` VALUES (66,28,'_genesis_description','Want to learn how to reach your audience, consistently, in the best light possible? We can teach you how to promote your business, improve SEO, boost traffic to your site, and promote your competitive advantage.  We are Pixel and Papers.  We offer a clear, no-nonsense approach and a logical methodology for every project.\n');
INSERT INTO `wp_postmeta` VALUES (67,28,'_genesis_keywords','audience, promote, SEO, search engine optimization, website optimization, boost traffic, competitive advantage');
INSERT INTO `wp_postmeta` VALUES (68,28,'_genesis_scripts_body_position','bottom');
INSERT INTO `wp_postmeta` VALUES (69,28,'_genesis_layout','sidebar-content-sidebar');
INSERT INTO `wp_postmeta` VALUES (70,28,'_thumbnail_id','29');
INSERT INTO `wp_postmeta` VALUES (74,51,'_edit_lock','1576939766:1');
INSERT INTO `wp_postmeta` VALUES (77,54,'_edit_lock','1580212908:1');
INSERT INTO `wp_postmeta` VALUES (78,55,'_edit_lock','1580213063:1');
INSERT INTO `wp_postmeta` VALUES (79,55,'_wp_page_template','content/report-1.php');
INSERT INTO `wp_postmeta` VALUES (80,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (81,55,'_genesis_scripts_body_position','bottom');
INSERT INTO `wp_postmeta` VALUES (82,57,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (83,57,'_wp_trash_meta_time','1580217285');
INSERT INTO `wp_postmeta` VALUES (84,58,'_edit_lock','1580217443:1');
INSERT INTO `wp_postmeta` VALUES (85,59,'_edit_lock','1580429070:1');
INSERT INTO `wp_postmeta` VALUES (86,60,'_edit_lock','1580429227:1');
INSERT INTO `wp_postmeta` VALUES (87,60,'_wp_page_template','content/contactPage.php');
INSERT INTO `wp_postmeta` VALUES (88,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (89,60,'_genesis_scripts_body_position','bottom');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-12-21 13:09:58','2019-12-21 13:09:58','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-12-21 13:09:58','2019-12-21 13:09:58','',0,'http://pixelandpapers.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2019-12-21 13:09:58','2019-12-21 13:09:58','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://pixelandpapers.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-12-21 13:09:58','2019-12-21 13:09:58','',0,'http://pixelandpapers.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2019-12-21 13:09:58','2019-12-21 13:09:58','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://pixelandpapers.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-12-21 13:09:58','2019-12-21 13:09:58','',0,'http://pixelandpapers.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,2,'2019-10-23 21:16:26','2019-10-23 21:16:26','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://pixelandpapers.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2019-10-23 21:16:26','2019-10-23 21:16:26','',0,'http://pixelandpapers.com/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,2,'2019-12-17 21:34:45','2019-12-17 21:34:45','','favicon-122x113','','inherit','open','closed','','favicon-122x113','','','2019-12-17 21:34:45','2019-12-17 21:34:45','',0,'http://pixelandpapers.local/wp-content/uploads/2019/12/favicon-122x113-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (13,2,'2019-12-17 21:34:54','2019-12-17 21:34:54','http://pixelandpapers.local/wp-content/uploads/2019/12/cropped-favicon-122x113-1.png','cropped-favicon-122x113.png','','inherit','open','closed','','cropped-favicon-122x113-png','','','2019-12-17 21:34:54','2019-12-17 21:34:54','',0,'http://pixelandpapers.local/wp-content/uploads/2019/12/cropped-favicon-122x113-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (24,2,'2019-12-17 21:59:20','2019-12-17 21:59:20','','Blog','','publish','closed','closed','','blog','','','2019-12-17 21:59:20','2019-12-17 21:59:20','',0,'https://pixelandpapers.com/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,3,'2019-12-20 22:32:49','2019-12-20 22:32:49','<!-- wp:image {\"id\":12,\"align\":\"center\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter\"><img src=\"http://pixelandpapers.local/wp-content/uploads/2019/12/favicon-122x113-1.png\" alt=\"\" class=\"wp-image-12\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:table -->\n<table class=\"wp-block-table\"><tbody><tr><td><strong>Do You&nbsp;<em>Really</em>&nbsp;Know Your Customers?<br>We do.&nbsp;&nbsp;</strong><br><br>We Can Tell You Everything About Them...&nbsp;&nbsp;How to Reach Them, Predict Their Behavior and Convert Your Shoppers to Customers.&nbsp;&nbsp;<br>Want to Learn How to Market Your Specialty Advantage and your Competitive Advantage?<br><br><strong>We Can Teach You.&nbsp;&nbsp;</strong><br><br>We are&nbsp;<strong>Pixel and Papers.</strong><br>We are a global marketing, advertising and design company.&nbsp;<br>We believe that online marketing success comes from a superfecta of <br>optimizations to your website.&nbsp;&nbsp;&nbsp;<br><br> These perfect four are:&nbsp;<br><strong>Search Engine Optimization<br>Website Optimization<br>Unforgettable Creative<br>Understanding Your Customer</strong><br><br>And Great News!&nbsp;<strong>We know how to perfect all four</strong>.<br><br>Tell us your specialty advantage and your competitive advantage, and we can build entire your entire online marketing platform form the ground up...<br><strong>And Optimize it.We can help you:&nbsp;</strong><br><strong>Boost Conversions<br>Increase Revenue<br>Grow Your Customer List<br>Build Customer Loyalty</strong><br> </td></tr><tr><td>Our Full Stack Developers and Web Designers have the knowledge, experience, and success to teach you how to best reach your audience, consistently, in the best light possible.   <br>We have helped shape some of the largest and smallest companies in operation today. We offer a clear, no-nonsense approach and a logical methodology for every project.<br><br><strong>Let\'s Talk! </strong><br>Call us today, send an email, or schedule a review to find out how we canhelp you.  <br><strong>(650) 382-3807‬</strong><br><strong><a href=\"https://pixelandpapers.com/\">https://pixelandpapers.com/</a></strong><br><strong>https://calendly.com/pixel-and-papers</strong><br><br></td></tr></tbody></table>\n<!-- /wp:table -->\n\n<!-- wp:image {\"id\":35} -->\n<figure class=\"wp-block-image\"><img src=\"http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1098245024.jpg\" alt=\"\" class=\"wp-image-35\"/><figcaption>We can help spark your ideas and teach you how to make traction in your business.</figcaption></figure>\n<!-- /wp:image -->','Welcome to Pixel & Papers!','','publish','open','open','','welcome-to-pixel-papers','','','2019-12-20 22:32:49','2019-12-20 22:32:49','',0,'https://pixelandpapers.com/?p=28',0,'post','',0);
INSERT INTO `wp_posts` VALUES (29,3,'2019-12-20 21:23:42','2019-12-20 21:23:42','','Pixel-Papers-Logo','','inherit','open','closed','','pixel-papers-logo','','','2019-12-20 21:23:42','2019-12-20 21:23:42','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/Pixel-Papers-Logo-e1576877089446.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,3,'2019-12-20 22:15:29','2019-12-20 22:15:29','','talking','commercial illustrator','inherit','open','closed','','talking','','','2019-12-20 22:15:29','2019-12-20 22:15:29','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1010565366.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,3,'2019-12-20 22:15:30','2019-12-20 22:15:30','','Human Resourses Leadership Concepts on Blackboard Background','Human Resourses Leadership Concepts on Blackboard Background','inherit','open','closed','','human-resourses-leadership-concepts-on-blackboard-background','','','2019-12-20 22:15:30','2019-12-20 22:15:30','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1159280981.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (35,3,'2019-12-20 22:15:30','2019-12-20 22:15:30','','Launch your idea','We can help spark your ideas and teach you how to make traction in your business.','inherit','open','closed','','think-differently-being-different-taking-risky-move-for-success-in-life-the-graphic-of-light-bulb-also-represents-the-concept-of-courage-enterprise-confidence-belief-fearless-daring-vector','','','2019-12-20 22:15:30','2019-12-20 22:15:30','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1098245024.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (36,3,'2019-12-20 22:15:31','2019-12-20 22:15:31','','Business definitions: Entrepreneur','In a book of business terms, the word \'entrepreneur\' is defined.','inherit','open','closed','','business-definitions-entrepreneur','','','2019-12-20 22:15:31','2019-12-20 22:15:31','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1058248290.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (37,3,'2019-12-20 22:15:31','2019-12-20 22:15:31','','Young online business owner looking at laptop while preparing deliveries for clients','Young online business owner looking at laptop while preparing deliveries for clients','inherit','open','closed','','young-online-business-owner-looking-at-laptop-while-preparing-deliveries-for-clients','','','2019-12-20 22:15:31','2019-12-20 22:15:31','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1165073587.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (38,3,'2019-12-20 22:15:32','2019-12-20 22:15:32','','Modern business office with multi-ethnic team','Coworkers working in modern co-working space in Scandinavia. Multi-ethnic group of young business professionals, start-up establishers, freelancers working and developing together.','inherit','open','closed','','modern-business-office-with-multi-ethnic-team','','','2019-12-20 22:15:32','2019-12-20 22:15:32','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1042569776.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (39,3,'2019-12-20 22:15:33','2019-12-20 22:15:33','','Young architects working in the office','Team of young architects working and developing plans in the office','inherit','open','closed','','young-architects-working-in-the-office','','','2019-12-20 22:15:33','2019-12-20 22:15:33','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1063557222.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (40,3,'2019-12-20 22:15:34','2019-12-20 22:15:34','','Woman using a phone','Close up of a woman using a phone','inherit','open','closed','','woman-using-a-phone','','','2019-12-20 22:15:34','2019-12-20 22:15:34','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1124347661.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (41,3,'2019-12-20 22:19:50','2019-12-20 22:19:50','','talking','commercial illustrator','inherit','open','closed','','talking-2','','','2019-12-20 22:19:50','2019-12-20 22:19:50','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1010565366-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (42,3,'2019-12-20 22:19:50','2019-12-20 22:19:50','','Human Resourses Leadership Concepts on Blackboard Background','Human Resourses Leadership Concepts on Blackboard Background','inherit','open','closed','','human-resourses-leadership-concepts-on-blackboard-background-2','','','2019-12-20 22:19:50','2019-12-20 22:19:50','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1159280981-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (43,3,'2019-12-20 22:19:51','2019-12-20 22:19:51','','Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector','Think differently - Being different, taking risky, move for success in life -The graphic of light bulb also represents the concept of courage, enterprise, confidence, belief, fearless, daring. Vector','inherit','open','closed','','think-differently-being-different-taking-risky-move-for-success-in-life-the-graphic-of-light-bulb-also-represents-the-concept-of-courage-enterprise-confidence-belief-fearless-daring-vector-2','','','2019-12-20 22:19:51','2019-12-20 22:19:51','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1098245024-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (44,3,'2019-12-20 22:19:52','2019-12-20 22:19:52','','Business definitions: Entrepreneur','In a book of business terms, the word \'entrepreneur\' is defined.','inherit','open','closed','','business-definitions-entrepreneur-2','','','2019-12-20 22:19:52','2019-12-20 22:19:52','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1058248290-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (45,3,'2019-12-20 22:19:52','2019-12-20 22:19:52','','Young online business owner looking at laptop while preparing deliveries for clients','Young online business owner looking at laptop while preparing deliveries for clients','inherit','open','closed','','young-online-business-owner-looking-at-laptop-while-preparing-deliveries-for-clients-2','','','2019-12-20 22:19:52','2019-12-20 22:19:52','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1165073587-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (46,3,'2019-12-20 22:19:53','2019-12-20 22:19:53','','Modern business office with multi-ethnic team','Coworkers working in modern co-working space in Scandinavia. Multi-ethnic group of young business professionals, start-up establishers, freelancers working and developing together.','inherit','open','closed','','modern-business-office-with-multi-ethnic-team-2','','','2019-12-20 22:19:53','2019-12-20 22:19:53','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1042569776-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (47,3,'2019-12-20 22:19:54','2019-12-20 22:19:54','','Young architects working in the office','Team of young architects working and developing plans in the office','inherit','open','closed','','young-architects-working-in-the-office-2','','','2019-12-20 22:19:54','2019-12-20 22:19:54','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1063557222-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (48,3,'2019-12-20 22:19:54','2019-12-20 22:19:54','','Woman using a phone','Close up of a woman using a phone','inherit','open','closed','','woman-using-a-phone-2','','','2019-12-20 22:19:54','2019-12-20 22:19:54','',28,'http://pixelandpapers.local/wp-content/uploads/2019/12/iStock-1124347661-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,2,'2019-10-23 21:16:26','2019-10-23 21:16:26','<!-- wp:image {\"id\":12,\"align\":\"center\",\"width\":187,\"height\":173} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter is-resized\"><img src=\"http://pixelandpapers.local/wp-content/uploads/2019/12/favicon-122x113-1.png\" alt=\"\" class=\"wp-image-12\" width=\"187\" height=\"173\"/><figcaption><strong>Pixel &amp; Papers <br></strong>Website Optimization For All</figcaption></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>This is our first post. We plan on adding many more to teach others the benefits of website optimizations.</p>\n<!-- /wp:paragraph -->','Welcome to Pixel & Papers!','Welcome to the pixel and papers family. ','draft','closed','closed','','firstpost','','','2019-10-23 21:16:26','2019-10-23 21:16:26','',0,'http://pixelandpapers.com/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (50,2,'2019-10-23 21:16:26','2019-10-23 21:16:26','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://pixelandpapers.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page-2','','','2019-10-23 21:16:26','2019-10-23 21:16:26','',0,'http://pixelandpapers.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (51,2,'2019-10-23 22:11:20','2019-10-23 22:11:20','','PixelandPapers','','publish','closed','closed','','pixelandpapers','','','2019-10-23 22:11:20','2019-10-23 22:11:20','',0,'https://pixelandpapers.com/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-01-28 12:03:30','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-01-28 12:03:30','0000-00-00 00:00:00','',0,'http://pixelandpapers.local/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-01-28 12:03:34','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-28 12:03:34','0000-00-00 00:00:00','',0,'http://pixelandpapers.local/?page_id=54',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-01-28 12:04:23','2020-01-28 12:04:23','','Report One','','publish','closed','closed','','report-one','','','2020-01-28 12:04:23','2020-01-28 12:04:23','',0,'http://pixelandpapers.local/?page_id=55',0,'page','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-01-28 12:04:23','2020-01-28 12:04:23','','Report One','','inherit','closed','closed','','55-revision-v1','','','2020-01-28 12:04:23','2020-01-28 12:04:23','',55,'http://pixelandpapers.local/55-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-01-28 13:14:45','2020-01-28 13:14:45','{\n    \"genesis-settings[blog_title]\": {\n        \"value\": \"image\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-28 13:14:45\"\n    }\n}','','','trash','closed','closed','','b321e3d5-dd17-4df8-9fe8-f7ad8b30a106','','','2020-01-28 13:14:45','2020-01-28 13:14:45','',0,'http://pixelandpapers.local/b321e3d5-dd17-4df8-9fe8-f7ad8b30a106/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-01-28 13:17:23','0000-00-00 00:00:00','{\n    \"genesis-settings[blog_title]\": {\n        \"value\": \"image\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-28 13:17:23\"\n    }\n}','','','auto-draft','closed','closed','','94f68e2b-bcd0-46a8-b8c1-24be632a8f4e','','','2020-01-28 13:17:23','0000-00-00 00:00:00','',0,'http://pixelandpapers.local/?p=58',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-01-31 00:06:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-01-31 00:06:40','0000-00-00 00:00:00','',0,'http://pixelandpapers.local/?page_id=59',0,'page','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-01-31 00:07:07','2020-01-31 00:07:07','','Contact Us','','publish','closed','closed','','contact-us','','','2020-01-31 00:07:07','2020-01-31 00:07:07','',0,'http://pixelandpapers.local/?page_id=60',0,'page','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-01-31 00:07:07','2020-01-31 00:07:07','','Contact Us','','inherit','closed','closed','','60-revision-v1','','','2020-01-31 00:07:07','2020-01-31 00:07:07','',60,'http://pixelandpapers.local/60-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (28,1,0);
INSERT INTO `wp_term_relationships` VALUES (49,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Business Value','business-value',0);
INSERT INTO `wp_terms` VALUES (3,'Case Studies','case-studies',0);
INSERT INTO `wp_terms` VALUES (4,'Creative Solutions','creative-solutions',0);
INSERT INTO `wp_terms` VALUES (5,'General','general',0);
INSERT INTO `wp_terms` VALUES (6,'Technical','technical',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"e3d215deb1093b1bc24d4f7e8350b6ff9b9d891ed1f51757eaf92adce96729e5\";a:4:{s:10:\"expiration\";i:1580601995;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580429195;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','53');
INSERT INTO `wp_usermeta` VALUES (18,2,'nickname','Jonathan');
INSERT INTO `wp_usermeta` VALUES (19,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (20,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (21,2,'description','');
INSERT INTO `wp_usermeta` VALUES (22,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (23,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (24,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (25,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (26,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (27,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (28,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (29,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (30,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (31,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (32,3,'nickname','Sharon');
INSERT INTO `wp_usermeta` VALUES (33,3,'first_name','Sharon');
INSERT INTO `wp_usermeta` VALUES (34,3,'last_name','Warttig');
INSERT INTO `wp_usermeta` VALUES (35,3,'description','');
INSERT INTO `wp_usermeta` VALUES (36,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (37,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (38,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (39,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (40,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (41,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (42,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (43,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (44,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (45,3,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$Bqx11g/l0a7aq6k8mmU6.QPd5de/QA1','admin','dev-email@flywheel.local','','2019-12-21 13:09:58','',0,'admin');
INSERT INTO `wp_users` VALUES (2,'Jonathan','$P$Btj/sPMuehnjrn.bc5mzip0KbWzVXR1','jonathan','jondeleon856@gmail.com','','2019-12-21 14:50:46','',0,'Jonathan');
INSERT INTO `wp_users` VALUES (3,'Sharon','$P$BMSDzxuPSjniHDoMWXah/emy5opojK/','sharon','sharon@pixelandpapers.com','','2019-12-21 14:50:46','',0,'Sharon Warttig');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-31 11:31:59
