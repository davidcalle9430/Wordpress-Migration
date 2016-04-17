# WordPress MySQL database migration
#
# Generated: Sunday 17. April 2016 13:23 UTC
# Hostname: 0.0.0.0
# Database: `c9`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Señor WordPress', '', 'https://wordpress.org/', '', '2016-03-17 22:08:38', '2016-03-17 22:08:38', 'Hola, esto es un comentario.\nPara eliminar un comentario, sólo necesita iniciar sesión y ver los comentarios de la entrada. Allí tendrá la opción de editar o eliminarlos.', 0, '1', '', '', 0, 0),
(2, 4, '¡Hola mundo! &#8211; Seguridad Informática', '', 'https://192.168.99.100/2016/03/17/hola-mundo/', '10.240.0.75', '2016-03-17 22:33:26', '2016-03-17 22:33:26', '[&#8230;] Seguridad en las comunicaciones [&#8230;]', 0, '0', 'The Incutio XML-RPC PHP Library -- WordPress/4.4.2', 'pingback', 0, 0),
(3, 27, 'David', 'davidcalle9430@gmail.com', '', '10.240.0.203', '2016-03-22 17:10:04', '2016-03-22 17:10:04', 'No cumple con los requisitos', 0, '0', 'Mozilla/5.0 (Linux; Android 5.1; XT1033 Build/LPB23.13-56) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile Safari/537.36', '', 0, 0),
(4, 4, 'Bienvenido! &#8211; carlos', '', 'https://prueba-liugart.c9users.io/2016/03/17/bienvenido/', '10.240.0.197', '2016-03-29 01:17:16', '2016-03-29 01:17:16', '[&#8230;] Seguridad en las comunicaciones [&#8230;]', 0, '0', 'The Incutio XML-RPC PHP Library -- WordPress/4.4.2', 'pingback', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_duplicator_packages`
#

DROP TABLE IF EXISTS `wp_duplicator_packages`;


#
# Table structure of table `wp_duplicator_packages`
#

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_duplicator_packages`
#
INSERT INTO `wp_duplicator_packages` ( `id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(1, 'PruebaManrique', '56f54503903e91864160325140243', 100, '2016-03-25 14:07:44', 'seguridad', 'O:11:"DUP_Package":21:{s:2:"ID";i:1;s:4:"Name";s:14:"PruebaManrique";s:4:"Hash";s:29:"56f54503903e91864160325140243";s:8:"NameHash";s:44:"PruebaManrique_56f54503903e91864160325140243";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:30:"/var/www/html/wp-snapshots/tmp";s:8:"StoreURL";s:36:"https://192.168.99.100/wp-snapshots/";s:8:"ScanFile";s:54:"PruebaManrique_56f54503903e91864160325140243_scan.json";s:7:"Runtime";s:9:"6.50 sec.";s:7:"ExeSize";s:8:"318.87KB";s:7:"ZipSize";s:7:"17.33MB";s:6:"Status";N;s:6:"WPUser";s:9:"seguridad";s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";s:56:"PruebaManrique_56f54503903e91864160325140243_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:13:"/var/www/html";s:4:"Size";i:18170188;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":21:{s:2:"ID";i:1;s:4:"Name";s:14:"PruebaManrique";s:4:"Hash";s:29:"56f54503903e91864160325140243";s:8:"NameHash";s:44:"PruebaManrique_56f54503903e91864160325140243";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:39:"/home/ubuntu/workspace/wp-snapshots/tmp";s:8:"StoreURL";s:70:"https://administracionriesgos-davidcalle94301.c9users.io/wp-snapshots/";s:8:"ScanFile";s:54:"PruebaManrique_56f54503903e91864160325140243_scan.json";s:7:"Runtime";s:9:"6.50 sec.";s:7:"ExeSize";s:8:"318.87KB";s:7:"ZipSize";s:7:"17.33MB";s:6:"Status";N;s:6:"WPUser";s:9:"seguridad";s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";s:56:"PruebaManrique_56f54503903e91864160325140243_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:22:"/home/ubuntu/workspace";s:4:"Size";i:18170188;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";r:50;}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:58:"PruebaManrique_56f54503903e91864160325140243_installer.php";s:4:"Size";i:326524;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:511175;s:4:"File";s:57:"PruebaManrique_56f54503903e91864160325140243_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";s:97:"/home/ubuntu/workspace/wp-snapshots/tmp/PruebaManrique_56f54503903e91864160325140243_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:58:"PruebaManrique_56f54503903e91864160325140243_installer.php";s:4:"Size";i:326524;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:511175;s:4:"File";s:57:"PruebaManrique_56f54503903e91864160325140243_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";s:97:"/home/ubuntu/workspace/wp-snapshots/tmp/PruebaManrique_56f54503903e91864160325140243_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}'),
(2, 'temaBlog', '56f9da4df20312960160329012845', 100, '2016-03-29 01:29:31', 'seguridad', 'O:11:"DUP_Package":21:{s:2:"ID";i:2;s:4:"Name";s:8:"temaBlog";s:4:"Hash";s:29:"56f9da4df20312960160329012845";s:8:"NameHash";s:38:"temaBlog_56f9da4df20312960160329012845";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:30:"/var/www/html/wp-snapshots/tmp";s:8:"StoreURL";s:36:"https://192.168.99.100/wp-snapshots/";s:8:"ScanFile";s:48:"temaBlog_56f9da4df20312960160329012845_scan.json";s:7:"Runtime";s:10:"10.81 sec.";s:7:"ExeSize";s:8:"318.86KB";s:7:"ZipSize";s:7:"17.33MB";s:6:"Status";N;s:6:"WPUser";s:9:"seguridad";s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";s:50:"temaBlog_56f9da4df20312960160329012845_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:13:"/var/www/html";s:4:"Size";i:18168089;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":21:{s:2:"ID";i:2;s:4:"Name";s:8:"temaBlog";s:4:"Hash";s:29:"56f9da4df20312960160329012845";s:8:"NameHash";s:38:"temaBlog_56f9da4df20312960160329012845";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:39:"/home/ubuntu/workspace/wp-snapshots/tmp";s:8:"StoreURL";s:70:"https://administracionriesgos-davidcalle94301.c9users.io/wp-snapshots/";s:8:"ScanFile";s:48:"temaBlog_56f9da4df20312960160329012845_scan.json";s:7:"Runtime";s:10:"10.81 sec.";s:7:"ExeSize";s:8:"318.86KB";s:7:"ZipSize";s:7:"17.33MB";s:6:"Status";N;s:6:"WPUser";s:9:"seguridad";s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";s:50:"temaBlog_56f9da4df20312960160329012845_archive.zip";s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:22:"/home/ubuntu/workspace";s:4:"Size";i:18168089;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";r:50;}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:52:"temaBlog_56f9da4df20312960160329012845_installer.php";s:4:"Size";i:326512;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:507965;s:4:"File";s:51:"temaBlog_56f9da4df20312960160329012845_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";s:91:"/home/ubuntu/workspace/wp-snapshots/tmp/temaBlog_56f9da4df20312960160329012845_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";s:52:"temaBlog_56f9da4df20312960160329012845_installer.php";s:4:"Size";i:326512;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";i:507965;s:4:"File";s:51:"temaBlog_56f9da4df20312960160329012845_database.sql";s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";s:91:"/home/ubuntu/workspace/wp-snapshots/tmp/temaBlog_56f9da4df20312960160329012845_database.sql";s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}') ;

#
# End of data contents of table `wp_duplicator_packages`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://192.168.99.100', 'yes'),
(2, 'home', 'https://192.168.99.100', 'yes'),
(3, 'blogname', 'Seguridad Informática', 'yes'),
(4, 'blogdescription', 'Siguiendo las normas ISO 27002', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'davidcalle9430@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:3:{i:0;s:25:"duplicator/duplicator.php";i:1;s:29:"wp-hide-post/wp-hide-post.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', 'a:3:{i:0;s:52:"/var/www/html/wp-content/plugins/akismet/akismet.php";i:2;s:55:"/var/www/html/wp-content/themes/twentyfifteen/style.css";i:3;s:0:"";}', 'no'),
(39, 'template', 'customizr', 'yes'),
(40, 'stylesheet', 'customizr', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'page', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '2', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', 'es_CO', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:4:"left";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:5:"right";N;s:10:"footer_one";N;s:10:"footer_two";N;s:12:"footer_three";N;s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1460930918;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1460930958;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460931478;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, 'nonce_key', 'pOiU7k %lIT#~}<7.iQ?nt4m:gE$s?I|Km047Si)aLWs4nqK)nj/SoWR8ZV<fbF.', 'yes'),
(108, 'nonce_salt', 'S+}9~`<G3_u5oAFr$Hw$=?n`nLbZ?yhuzW3KL[Ki4UG?~i/!~TiW 2{uoT69`UYr', 'yes'),
(121, 'secure_auth_key', '1Zb4eiPEi4Xa?/Tz.X-Xar?>$FC3yRur>`PhcwA6boW$$T4V+]Z#04<>$[<!bGT:', 'yes'),
(122, 'secure_auth_salt', '0yZA}u!3d*KeKK1FhWXy^&H}mz:_6K[N,TjoQ!5z`O;qC=8%?-4YjI<8PZ*=/{lK', 'yes'),
(123, 'logged_in_key', 'wN65da}BD@r.soLtf>-9eQ^).1ts*z3}{/|>~3VZ_w|@h@2Nx^A>j~9%RHQ{|oBq', 'yes'),
(124, 'logged_in_salt', 'y/!rEpxTxB<bGqY#t(X>rrq.fbcU!q< Bsk3u/iSuJFQQ*fur3e&V`sir|Aosxkk', 'yes'),
(132, 'can_compress_scripts', '0', 'yes'),
(149, 'auth_key', 'RN7R59Yxfm$r%~<2(3[%^}wp@u-CGzd/Wy|!!#V~cC<t<OM0Lp)~o$}VVOFYhfu%', 'yes'),
(150, 'auth_salt', 'mKJ_6Con4>$4gtpS>3_t%o,ei[rY(jG2r~K5PJW3W:^/c!~,L#@p)Ne$DX5Qk h[', 'yes'),
(153, 'theme_mods_twentysixteen', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458664917;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(154, 'current_theme', 'Customizr', 'yes'),
(155, 'theme_mods_twentyfifteen', 'a:7:{i:0;b:0;s:16:"background_color";s:6:"e9f2f9";s:12:"color_scheme";s:4:"blue";s:17:"sidebar_textcolor";s:7:"#ffffff";s:23:"header_background_color";s:7:"#55c3dc";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458664949;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(191, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:1;i:5;}}', 'yes'),
(234, 'theme_mods_bushwick', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458662338;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}}}}', 'yes'),
(243, 'theme_mods_square', 'a:10:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"header_textcolor";s:6:"000000";s:16:"square_header_bg";s:8:"sq-black";s:21:"square_page_header_bg";s:0:"";s:20:"square_slider_title1";s:22:"Seguridad Informática";s:23:"square_slider_subtitle1";s:26:"Presentado a: Rafael Páez";s:20:"square_slider_image2";s:0:"";s:20:"square_slider_image3";s:0:"";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663072;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:20:"square-right-sidebar";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}s:19:"square-left-sidebar";N;s:19:"square-shop-sidebar";N;s:14:"square-footer1";N;s:14:"square-footer2";N;s:14:"square-footer3";N;s:14:"square-footer4";N;s:19:"square-about-footer";N;}}}', 'yes'),
(244, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"325";s:6:"height";s:3:"380";s:4:"crop";i:1;}', 'yes'),
(245, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(246, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"120";s:6:"height";s:3:"120";s:4:"crop";i:1;}', 'yes'),
(250, 'theme_mods_business-elite', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"background_color";s:6:"ffffff";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663122;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}s:9:"sidebar-2";N;s:26:"primary-footer-widget-area";N;s:28:"secondary-footer-widget-area";N;}}}', 'yes'),
(251, 'widget_business_elite_adsens', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_business_elite_adv', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_business_elite_percent', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_business_elite_social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_business_elite_random_post', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'business_elite_options', 'a:1:{s:13:"theme_version";s:5:"1.1.6";}', 'yes'),
(260, 'widget_business_elite_categ', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_business_elite_categ_tabs', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_business_elite_events_categ', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(272, 'theme_mods_lifestyle', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663376;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:7:"primary";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}s:6:"banner";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;}}}', 'yes'),
(276, 'theme_mods_zerif-lite', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663399;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:4:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:17:"recent-comments-2";i:3;s:14:"recent-posts-2";}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:1;s:12:"categories-2";}s:15:"sidebar-aboutus";N;s:20:"zerif-sidebar-footer";N;s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;s:16:"sidebar-ourfocus";a:4:{i:0;s:17:"ctup-ads-widget-1";i:1;s:17:"ctup-ads-widget-2";i:2;s:17:"ctup-ads-widget-3";i:3;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:3:{i:0;s:21:"zerif_testim-widget-1";i:1;s:21:"zerif_testim-widget-2";i:2;s:21:"zerif_testim-widget-3";}s:15:"sidebar-ourteam";a:4:{i:0;s:19:"zerif_team-widget-1";i:1;s:19:"zerif_team-widget-2";i:2;s:19:"zerif_team-widget-3";i:3;s:19:"zerif_team-widget-4";}}}}', 'yes'),
(277, 'widget_ctup-ads-widget', 'a:5:{i:1;a:4:{s:5:"title";s:15:"PARALLAX EFFECT";s:4:"text";s:163:"Create memorable pages with smooth parallax effects that everyone loves. Also, use our lightweight content slider offering you smooth and great-looking animations.";s:4:"link";s:1:"#";s:9:"image_uri";s:71:"https://192.168.99.100/wp-content/themes/zerif-lite/images/parallax.png";}i:2;a:4:{s:5:"title";s:11:"WOOCOMMERCE";s:4:"text";s:166:"Build a front page for your WooCommerce store in a matter of minutes. The neat and clean presentation will help your sales and make your store accessible to everyone.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"https://192.168.99.100/wp-content/themes/zerif-lite/images/woo.png";}i:3;a:4:{s:5:"title";s:21:"CUSTOM CONTENT BLOCKS";s:4:"text";s:164:"Showcase your team, products, clients, about info, testimonials, latest posts from the blog, contact form, additional calls to action. Everything translation ready.";s:4:"link";s:1:"#";s:9:"image_uri";s:66:"https://192.168.99.100/wp-content/themes/zerif-lite/images/ccc.png";}i:4;a:4:{s:5:"title";s:24:"GO PRO FOR MORE FEATURES";s:4:"text";s:186:"Get new content blocks: pricing table, Google Maps, and more. Change the sections order, display each block exactly where you need it, customize the blocks with whatever colors you wish.";s:4:"link";s:1:"#";s:9:"image_uri";s:70:"https://192.168.99.100/wp-content/themes/zerif-lite/images/ti-logo.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_zerif_testim-widget', 'a:4:{i:1;a:3:{s:5:"title";s:10:"Dana Lorem";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"https://192.168.99.100/wp-content/themes/zerif-lite/images/testimonial1.jpg";}i:2;a:3:{s:5:"title";s:13:"Linda Guthrie";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"https://192.168.99.100/wp-content/themes/zerif-lite/images/testimonial2.jpg";}i:3;a:3:{s:5:"title";s:13:"Cynthia Henry";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:75:"https://192.168.99.100/wp-content/themes/zerif-lite/images/testimonial3.jpg";}s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_zerif_clients-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_zerif_team-widget', 'a:5:{i:1;a:9:{s:4:"name";s:14:"ASHLEY SIMMONS";s:8:"position";s:15:"Project Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"https://192.168.99.100/wp-content/themes/zerif-lite/images/team1.png";}i:2;a:9:{s:4:"name";s:13:"TIMOTHY SPRAY";s:8:"position";s:12:"Art Director";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"https://192.168.99.100/wp-content/themes/zerif-lite/images/team2.png";}i:3;a:9:{s:4:"name";s:12:"TONYA GARCIA";s:8:"position";s:15:"Account Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"https://192.168.99.100/wp-content/themes/zerif-lite/images/team3.png";}i:4;a:9:{s:4:"name";s:10:"JASON LANE";s:8:"position";s:20:"Business Development";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:68:"https://192.168.99.100/wp-content/themes/zerif-lite/images/team4.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'theme_mods_enigma', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663688;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"footer-widget-area";N;}}}', 'yes'),
(291, 'theme_mods_ample', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1458663910;s:4:"data";a:10:{s:19:"wp_inactive_widgets";a:0:{}s:19:"ample_right_sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"ample_left_sidebar";N;s:22:"ample_business_sidebar";N;s:28:"ample_error_404_page_sidebar";N;s:26:"ample_contact_page_sidebar";N;s:21:"ample_footer_sidebar1";N;s:21:"ample_footer_sidebar2";N;s:21:"ample_footer_sidebar3";N;s:21:"ample_footer_sidebar4";N;}}}', 'yes'),
(292, 'widget_ample_service_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(293, 'widget_ample_portfolio_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(294, 'widget_ample_call_to_action_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(295, 'widget_ample_featured_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(303, 'theme_mods_customizr', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:4:"main";i:3;}}', 'yes'),
(304, 'tc_theme_options', 'a:180:{s:14:"tc_logo_upload";N;s:14:"tc_logo_resize";b:1;s:21:"tc_sticky_logo_upload";N;s:13:"tc_fav_upload";N;s:7:"tc_skin";s:9:"blue3.css";s:14:"tc_skin_random";b:0;s:8:"tc_fonts";s:19:"_g_fjalla_cantarell";s:17:"tc_body_font_size";i:15;s:6:"tc_rss";s:32:"https://192.168.99.100/feed/rss/";s:8:"tc_email";N;s:10:"tc_twitter";N;s:11:"tc_facebook";N;s:9:"tc_google";N;s:12:"tc_instagram";N;s:9:"tc_tumblr";N;s:9:"tc_flickr";N;s:12:"tc_wordpress";N;s:10:"tc_youtube";N;s:12:"tc_pinterest";N;s:9:"tc_github";N;s:11:"tc_dribbble";N;s:11:"tc_linkedin";N;s:5:"tc_vk";N;s:7:"tc_yelp";N;s:7:"tc_xing";N;s:18:"tc_show_title_icon";b:1;s:23:"tc_show_page_title_icon";b:0;s:23:"tc_show_post_title_icon";b:0;s:26:"tc_show_archive_title_icon";b:1;s:28:"tc_show_post_list_title_icon";b:0;s:27:"tc_show_sidebar_widget_icon";b:1;s:26:"tc_show_footer_widget_icon";b:1;s:14:"tc_link_scroll";b:0;s:20:"tc_link_hover_effect";b:1;s:17:"tc_ext_link_style";b:0;s:18:"tc_ext_link_target";b:0;s:11:"tc_fancybox";b:1;s:21:"tc_fancybox_autoscale";b:1;s:17:"tc_retina_support";b:0;s:23:"tc_display_slide_loader";b:0;s:20:"tc_center_slider_img";b:1;s:13:"tc_center_img";b:1;s:18:"tc_resp_slider_img";b:0;s:18:"tc_resp_thumbs_img";b:0;s:16:"tc_block_reorder";b:1;s:19:"tc_show_author_info";b:1;s:15:"tc_smoothscroll";b:1;s:16:"tc_header_layout";s:4:"left";s:13:"tc_top_border";b:1;s:15:"tc_show_tagline";b:1;s:26:"tc_woocommerce_header_cart";b:1;s:19:"tc_social_in_header";b:1;s:23:"tc_display_boxed_navbar";b:0;s:16:"tc_sticky_header";b:1;s:22:"tc_sticky_show_tagline";b:0;s:33:"tc_woocommerce_header_cart_sticky";b:1;s:25:"tc_sticky_show_title_logo";b:1;s:27:"tc_sticky_shrink_title_logo";b:1;s:19:"tc_sticky_show_menu";b:1;s:31:"tc_sticky_transparent_on_scroll";b:1;s:17:"tc_sticky_z_index";i:100;s:22:"tc_display_second_menu";b:0;s:13:"tc_menu_style";s:6:"navbar";s:39:"tc_menu_resp_dropdown_limit_to_viewport";b:0;s:21:"tc_display_menu_label";b:0;s:16:"tc_menu_position";s:14:"pull-menu-left";s:23:"tc_second_menu_position";s:14:"pull-menu-left";s:12:"tc_menu_type";s:5:"hover";s:27:"tc_menu_submenu_fade_effect";b:1;s:32:"tc_menu_submenu_item_move_effect";b:1;s:27:"tc_second_menu_resp_setting";s:12:"in-sn-before";s:17:"tc_hide_all_menus";b:0;s:28:"tc_show_post_navigation_home";b:1;s:23:"tc_blog_restrict_by_cat";a:0:{}s:15:"tc_front_layout";s:1:"f";s:15:"tc_front_slider";s:1:"0";s:22:"tc_posts_slider_number";i:1;s:24:"tc_posts_slider_stickies";b:0;s:21:"tc_posts_slider_title";b:1;s:20:"tc_posts_slider_text";b:1;s:20:"tc_posts_slider_link";s:3:"cta";s:27:"tc_posts_slider_button_text";s:17:"Read more &raquo;";s:15:"tc_slider_width";b:1;s:15:"tc_slider_delay";i:5000;s:24:"tc_slider_default_height";i:500;s:34:"tc_slider_default_height_apply_all";b:1;s:33:"tc_slider_change_default_img_size";b:0;s:22:"tc_show_featured_pages";s:1:"0";s:26:"tc_show_featured_pages_img";b:0;s:28:"tc_featured_page_button_text";s:17:"Read more &raquo;";s:20:"tc_featured_page_one";N;s:20:"tc_featured_page_two";N;s:22:"tc_featured_page_three";N;s:20:"tc_featured_text_one";N;s:20:"tc_featured_text_two";N;s:22:"tc_featured_text_three";N;s:24:"tc_sidebar_global_layout";s:1:"f";s:23:"tc_sidebar_force_layout";b:0;s:22:"tc_sidebar_post_layout";s:1:"f";s:19:"tc_post_list_length";s:7:"excerpt";s:22:"tc_sidebar_page_layout";s:1:"l";s:22:"tc_comment_show_bubble";b:1;s:23:"tc_comment_bubble_shape";s:7:"default";s:28:"tc_comment_bubble_color_type";s:4:"skin";s:23:"tc_comment_bubble_color";s:7:"#27CDA5";s:16:"tc_page_comments";b:0;s:16:"tc_post_comments";b:1;s:20:"tc_show_comment_list";b:1;s:13:"tc_breadcrumb";b:1;s:23:"tc_show_breadcrumb_home";b:0;s:27:"tc_show_breadcrumb_in_pages";b:1;s:34:"tc_show_breadcrumb_in_single_posts";b:1;s:32:"tc_show_breadcrumb_in_post_lists";b:1;s:18:"tc_show_post_metas";b:1;s:20:"tc_post_metas_design";s:10:"no-buttons";s:23:"tc_show_post_metas_home";b:0;s:30:"tc_show_post_metas_single_post";b:1;s:29:"tc_show_post_metas_post_lists";b:1;s:29:"tc_show_post_metas_categories";b:1;s:23:"tc_show_post_metas_tags";b:1;s:35:"tc_show_post_metas_publication_date";b:1;s:25:"tc_show_post_metas_author";b:1;s:30:"tc_show_post_metas_update_date";b:0;s:32:"tc_post_metas_update_date_format";s:4:"days";s:36:"tc_post_metas_update_notice_in_title";b:0;s:36:"tc_post_metas_update_notice_interval";i:10;s:32:"tc_post_metas_update_notice_text";s:18:"Recently updated !";s:34:"tc_post_metas_update_notice_format";s:13:"label-default";s:27:"tc_post_list_excerpt_length";i:50;s:23:"tc_post_list_show_thumb";b:1;s:36:"tc_post_list_use_attachment_as_thumb";b:1;s:26:"tc_post_list_default_thumb";N;s:24:"tc_post_list_thumb_shape";s:7:"rounded";s:25:"tc_post_list_thumb_height";i:250;s:27:"tc_post_list_thumb_position";s:5:"right";s:28:"tc_post_list_thumb_alternate";b:1;s:12:"tc_cat_title";s:0:"";s:12:"tc_tag_title";s:0:"";s:15:"tc_author_title";s:0:"";s:15:"tc_search_title";s:20:"Search Results for :";s:17:"tc_post_list_grid";s:4:"grid";s:15:"tc_grid_columns";s:1:"3";s:23:"tc_grid_expand_featured";b:1;s:15:"tc_grid_in_blog";b:1;s:18:"tc_grid_in_archive";b:1;s:17:"tc_grid_in_search";b:1;s:14:"tc_grid_shadow";b:1;s:21:"tc_grid_bottom_border";b:1;s:13:"tc_grid_icons";b:1;s:17:"tc_grid_num_words";i:10;s:20:"tc_grid_thumb_height";i:350;s:29:"tc_single_post_thumb_location";s:4:"hide";s:27:"tc_single_post_thumb_height";i:250;s:17:"tc_enable_gallery";b:1;s:19:"tc_gallery_fancybox";b:1;s:16:"tc_gallery_style";b:1;s:17:"tc_enable_dropcap";b:0;s:19:"tc_dropcap_minwords";i:50;s:17:"tc_dropcap_design";s:11:"skin-shadow";s:15:"tc_post_dropcap";b:0;s:15:"tc_page_dropcap";b:0;s:23:"tc_show_post_navigation";b:1;s:28:"tc_show_post_navigation_page";b:0;s:30:"tc_show_post_navigation_single";b:1;s:31:"tc_show_post_navigation_archive";b:1;s:25:"tc_social_in_left-sidebar";b:0;s:26:"tc_social_in_right-sidebar";b:0;s:26:"tc_social_in_sidebar_title";s:12:"Social links";s:19:"tc_social_in_footer";b:1;s:16:"tc_sticky_footer";b:1;s:19:"tc_show_back_to_top";b:1;s:13:"tc_custom_css";N;s:16:"tc_minified_skin";b:1;s:17:"tc_img_smart_load";b:0;s:21:"tc_display_front_help";b:1;s:21:"tc_font_awesome_icons";b:1;s:19:"tc_font_awesome_css";b:0;s:3:"ver";s:6:"3.4.20";s:18:"last_update_notice";a:2:{s:7:"version";s:6:"3.4.20";s:13:"display_count";i:0;}s:8:"defaults";a:178:{s:14:"tc_logo_upload";N;s:14:"tc_logo_resize";b:1;s:21:"tc_sticky_logo_upload";N;s:13:"tc_fav_upload";N;s:7:"tc_skin";s:9:"blue3.css";s:14:"tc_skin_random";b:0;s:8:"tc_fonts";s:19:"_g_fjalla_cantarell";s:17:"tc_body_font_size";i:15;s:6:"tc_rss";s:32:"https://192.168.99.100/feed/rss/";s:8:"tc_email";N;s:10:"tc_twitter";N;s:11:"tc_facebook";N;s:9:"tc_google";N;s:12:"tc_instagram";N;s:9:"tc_tumblr";N;s:9:"tc_flickr";N;s:12:"tc_wordpress";N;s:10:"tc_youtube";N;s:12:"tc_pinterest";N;s:9:"tc_github";N;s:11:"tc_dribbble";N;s:11:"tc_linkedin";N;s:5:"tc_vk";N;s:7:"tc_yelp";N;s:7:"tc_xing";N;s:18:"tc_show_title_icon";b:1;s:23:"tc_show_page_title_icon";b:0;s:23:"tc_show_post_title_icon";b:0;s:26:"tc_show_archive_title_icon";b:1;s:28:"tc_show_post_list_title_icon";b:0;s:27:"tc_show_sidebar_widget_icon";b:1;s:26:"tc_show_footer_widget_icon";b:1;s:14:"tc_link_scroll";b:0;s:20:"tc_link_hover_effect";b:1;s:17:"tc_ext_link_style";b:0;s:18:"tc_ext_link_target";b:0;s:11:"tc_fancybox";b:1;s:21:"tc_fancybox_autoscale";b:1;s:17:"tc_retina_support";b:0;s:23:"tc_display_slide_loader";b:0;s:20:"tc_center_slider_img";b:1;s:13:"tc_center_img";b:1;s:18:"tc_resp_slider_img";b:0;s:18:"tc_resp_thumbs_img";b:0;s:16:"tc_block_reorder";b:1;s:19:"tc_show_author_info";b:1;s:15:"tc_smoothscroll";b:1;s:16:"tc_header_layout";s:4:"left";s:13:"tc_top_border";b:1;s:15:"tc_show_tagline";b:1;s:26:"tc_woocommerce_header_cart";b:1;s:19:"tc_social_in_header";b:1;s:23:"tc_display_boxed_navbar";b:0;s:16:"tc_sticky_header";b:1;s:22:"tc_sticky_show_tagline";b:0;s:33:"tc_woocommerce_header_cart_sticky";b:1;s:25:"tc_sticky_show_title_logo";b:1;s:27:"tc_sticky_shrink_title_logo";b:1;s:19:"tc_sticky_show_menu";b:1;s:31:"tc_sticky_transparent_on_scroll";b:1;s:17:"tc_sticky_z_index";i:100;s:22:"tc_display_second_menu";b:0;s:13:"tc_menu_style";s:5:"aside";s:39:"tc_menu_resp_dropdown_limit_to_viewport";b:0;s:21:"tc_display_menu_label";b:0;s:16:"tc_menu_position";s:15:"pull-menu-right";s:23:"tc_second_menu_position";s:14:"pull-menu-left";s:12:"tc_menu_type";s:5:"hover";s:27:"tc_menu_submenu_fade_effect";b:1;s:32:"tc_menu_submenu_item_move_effect";b:1;s:27:"tc_second_menu_resp_setting";s:12:"in-sn-before";s:17:"tc_hide_all_menus";b:0;s:28:"tc_show_post_navigation_home";b:1;s:23:"tc_blog_restrict_by_cat";a:0:{}s:15:"tc_front_layout";s:1:"f";s:15:"tc_front_slider";s:4:"demo";s:22:"tc_posts_slider_number";i:1;s:24:"tc_posts_slider_stickies";b:0;s:21:"tc_posts_slider_title";b:1;s:20:"tc_posts_slider_text";b:1;s:20:"tc_posts_slider_link";s:3:"cta";s:27:"tc_posts_slider_button_text";s:17:"Read more &raquo;";s:15:"tc_slider_width";b:1;s:15:"tc_slider_delay";i:5000;s:24:"tc_slider_default_height";i:500;s:34:"tc_slider_default_height_apply_all";b:1;s:33:"tc_slider_change_default_img_size";b:0;s:22:"tc_show_featured_pages";i:1;s:26:"tc_show_featured_pages_img";b:1;s:28:"tc_featured_page_button_text";s:17:"Read more &raquo;";s:20:"tc_featured_page_one";N;s:20:"tc_featured_page_two";N;s:22:"tc_featured_page_three";N;s:20:"tc_featured_text_one";N;s:20:"tc_featured_text_two";N;s:22:"tc_featured_text_three";N;s:24:"tc_sidebar_global_layout";s:1:"l";s:23:"tc_sidebar_force_layout";b:0;s:22:"tc_sidebar_post_layout";s:1:"l";s:19:"tc_post_list_length";s:7:"excerpt";s:22:"tc_sidebar_page_layout";s:1:"l";s:22:"tc_comment_show_bubble";b:1;s:23:"tc_comment_bubble_shape";s:7:"default";s:28:"tc_comment_bubble_color_type";s:4:"skin";s:23:"tc_comment_bubble_color";s:7:"#27CDA5";s:16:"tc_page_comments";b:0;s:16:"tc_post_comments";b:1;s:20:"tc_show_comment_list";b:1;s:13:"tc_breadcrumb";b:1;s:23:"tc_show_breadcrumb_home";b:0;s:27:"tc_show_breadcrumb_in_pages";b:1;s:34:"tc_show_breadcrumb_in_single_posts";b:1;s:32:"tc_show_breadcrumb_in_post_lists";b:1;s:18:"tc_show_post_metas";b:1;s:20:"tc_post_metas_design";s:10:"no-buttons";s:23:"tc_show_post_metas_home";b:0;s:30:"tc_show_post_metas_single_post";b:1;s:29:"tc_show_post_metas_post_lists";b:1;s:29:"tc_show_post_metas_categories";b:1;s:23:"tc_show_post_metas_tags";b:1;s:35:"tc_show_post_metas_publication_date";b:1;s:25:"tc_show_post_metas_author";b:1;s:30:"tc_show_post_metas_update_date";b:0;s:32:"tc_post_metas_update_date_format";s:4:"days";s:36:"tc_post_metas_update_notice_in_title";b:0;s:36:"tc_post_metas_update_notice_interval";i:10;s:32:"tc_post_metas_update_notice_text";s:18:"Recently updated !";s:34:"tc_post_metas_update_notice_format";s:13:"label-default";s:27:"tc_post_list_excerpt_length";i:50;s:23:"tc_post_list_show_thumb";b:1;s:36:"tc_post_list_use_attachment_as_thumb";b:1;s:26:"tc_post_list_default_thumb";N;s:24:"tc_post_list_thumb_shape";s:7:"rounded";s:25:"tc_post_list_thumb_height";i:250;s:27:"tc_post_list_thumb_position";s:5:"right";s:28:"tc_post_list_thumb_alternate";b:1;s:12:"tc_cat_title";s:0:"";s:12:"tc_tag_title";s:0:"";s:15:"tc_author_title";s:0:"";s:15:"tc_search_title";s:20:"Search Results for :";s:17:"tc_post_list_grid";s:4:"grid";s:15:"tc_grid_columns";s:1:"3";s:23:"tc_grid_expand_featured";b:1;s:15:"tc_grid_in_blog";b:1;s:18:"tc_grid_in_archive";b:1;s:17:"tc_grid_in_search";b:1;s:14:"tc_grid_shadow";b:1;s:21:"tc_grid_bottom_border";b:1;s:13:"tc_grid_icons";b:1;s:17:"tc_grid_num_words";i:10;s:20:"tc_grid_thumb_height";i:350;s:29:"tc_single_post_thumb_location";s:4:"hide";s:27:"tc_single_post_thumb_height";i:250;s:17:"tc_enable_gallery";b:1;s:19:"tc_gallery_fancybox";b:1;s:16:"tc_gallery_style";b:1;s:17:"tc_enable_dropcap";b:0;s:19:"tc_dropcap_minwords";i:50;s:17:"tc_dropcap_design";s:11:"skin-shadow";s:15:"tc_post_dropcap";b:0;s:15:"tc_page_dropcap";b:0;s:23:"tc_show_post_navigation";b:1;s:28:"tc_show_post_navigation_page";b:0;s:30:"tc_show_post_navigation_single";b:1;s:31:"tc_show_post_navigation_archive";b:1;s:25:"tc_social_in_left-sidebar";b:0;s:26:"tc_social_in_right-sidebar";b:0;s:26:"tc_social_in_sidebar_title";s:12:"Social links";s:19:"tc_social_in_footer";b:1;s:16:"tc_sticky_footer";b:1;s:19:"tc_show_back_to_top";b:1;s:13:"tc_custom_css";N;s:16:"tc_minified_skin";b:1;s:17:"tc_img_smart_load";b:0;s:21:"tc_display_front_help";b:1;s:21:"tc_font_awesome_icons";b:1;s:19:"tc_font_awesome_css";b:0;s:3:"ver";s:6:"3.4.20";}}', 'yes'),
(311, 'category_children', 'a:1:{i:2;a:2:{i:0;i:1;i:1;i:4;}}', 'yes'),
(319, 'rewrite_rules', 'a:79:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(347, 'duplicator_settings', 'a:10:{s:7:"version";s:5:"1.1.4";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:0;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;}', 'yes'),
(348, 'duplicator_version_plugin', '1.1.4', 'yes'),
(349, 'duplicator_package_active', 'O:11:"DUP_Package":21:{s:2:"ID";N;s:4:"Name";s:8:"temaBlog";s:4:"Hash";s:29:"56f9da4df20312960160329012845";s:8:"NameHash";s:38:"temaBlog_56f9da4df20312960160329012845";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:30:"/var/www/html/wp-snapshots/tmp";s:8:"StoreURL";s:36:"https://192.168.99.100/wp-snapshots/";s:8:"ScanFile";s:48:"temaBlog_56f9da4df20312960160329012845_scan.json";s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:13:"/var/www/html";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";O:11:"DUP_Package":21:{s:2:"ID";N;s:4:"Name";s:8:"temaBlog";s:4:"Hash";s:29:"56f9da4df20312960160329012845";s:8:"NameHash";s:38:"temaBlog_56f9da4df20312960160329012845";s:7:"Version";s:5:"1.1.4";s:9:"VersionWP";s:5:"4.4.2";s:9:"VersionDB";s:23:"5.5.47-0ubuntu0.14.04.1";s:10:"VersionPHP";s:17:"5.5.9-1ubuntu4.14";s:4:"Type";i:0;s:5:"Notes";s:0:"";s:9:"StorePath";s:39:"/home/ubuntu/workspace/wp-snapshots/tmp";s:8:"StoreURL";s:70:"https://administracionriesgos-davidcalle94301.c9users.io/wp-snapshots/";s:8:"ScanFile";N;s:7:"Runtime";N;s:7:"ExeSize";N;s:7:"ZipSize";N;s:6:"Status";N;s:6:"WPUser";N;s:7:"Archive";O:11:"DUP_Archive":13:{s:10:"FilterDirs";s:0:"";s:10:"FilterExts";s:0:"";s:13:"FilterDirsAll";a:0:{}s:13:"FilterExtsAll";a:0:{}s:8:"FilterOn";i:0;s:4:"File";N;s:6:"Format";s:3:"ZIP";s:7:"PackDir";s:22:"/home/ubuntu/workspace";s:4:"Size";i:0;s:4:"Dirs";a:0:{}s:5:"Files";a:0:{}s:10:"FilterInfo";O:23:"DUP_Archive_Filter_Info":6:{s:4:"Dirs";O:34:"DUP_Archive_Filter_Scope_Directory":4:{s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:5:"Files";O:29:"DUP_Archive_Filter_Scope_File":5:{s:4:"Size";a:0:{}s:7:"Warning";a:0:{}s:10:"Unreadable";a:0:{}s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:4:"Exts";O:29:"DUP_Archive_Filter_Scope_Base":2:{s:4:"Core";a:0:{}s:8:"Instance";a:0:{}}s:9:"UDirCount";i:0;s:10:"UFileCount";i:0;s:9:"UExtCount";i:0;}s:10:"\0*\0Package";r:50;}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}}s:9:"Installer";O:13:"DUP_Installer":12:{s:4:"File";N;s:4:"Size";i:0;s:10:"OptsDBHost";s:0:"";s:10:"OptsDBPort";s:0:"";s:10:"OptsDBName";s:0:"";s:10:"OptsDBUser";s:0:"";s:12:"OptsSSLAdmin";i:0;s:12:"OptsSSLLogin";i:0;s:11:"OptsCacheWP";i:0;s:13:"OptsCachePath";i:0;s:10:"OptsURLNew";s:0:"";s:10:"\0*\0Package";r:50;}s:8:"Database";O:12:"DUP_Database":12:{s:4:"Type";s:5:"MySQL";s:4:"Size";N;s:4:"File";N;s:4:"Path";N;s:12:"FilterTables";s:0:"";s:8:"FilterOn";i:0;s:4:"Name";N;s:10:"Compatible";s:0:"";s:10:"\0*\0Package";r:50;s:25:"\0DUP_Database\0dbStorePath";N;s:23:"\0DUP_Database\0EOFMarker";s:0:"";s:26:"\0DUP_Database\0networkFlush";b:0;}}', 'yes'),
(376, 'duplicator_ui_view_state', 'a:3:{s:29:"dup-package-dtl-general-panel";s:1:"0";s:29:"dup-package-dtl-archive-panel";s:1:"1";s:29:"dup-package-dtl-install-panel";s:1:"1";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1458263606:1'),
(10, 4, '_wplp_post_front', '1'),
(13, 1, '_edit_lock', '1458264166:1'),
(14, 1, '_edit_last', '1'),
(17, 1, '_oembed_a57dae8a764b65d5027f83abbfba28a3', '{{unknown}}'),
(18, 1, '_oembed_6a44a5bcfa03c18cd67a846f5c591eac', '{{unknown}}'),
(19, 15, '_menu_item_type', 'taxonomy'),
(20, 15, '_menu_item_menu_item_parent', '0'),
(21, 15, '_menu_item_object_id', '2'),
(22, 15, '_menu_item_object', 'category'),
(23, 15, '_menu_item_target', ''),
(24, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 15, '_menu_item_xfn', ''),
(26, 15, '_menu_item_url', ''),
(27, 15, '_menu_item_orphaned', '1458662005'),
(28, 16, '_menu_item_type', 'taxonomy'),
(29, 16, '_menu_item_menu_item_parent', '0'),
(30, 16, '_menu_item_object_id', '4'),
(31, 16, '_menu_item_object', 'category'),
(32, 16, '_menu_item_target', ''),
(33, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 16, '_menu_item_xfn', ''),
(35, 16, '_menu_item_url', ''),
(36, 16, '_menu_item_orphaned', '1458662005'),
(37, 17, '_menu_item_type', 'taxonomy'),
(38, 17, '_menu_item_menu_item_parent', '0'),
(39, 17, '_menu_item_object_id', '2'),
(40, 17, '_menu_item_object', 'category'),
(41, 17, '_menu_item_target', ''),
(42, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 17, '_menu_item_xfn', ''),
(44, 17, '_menu_item_url', ''),
(45, 17, '_menu_item_orphaned', '1458662035'),
(46, 18, '_menu_item_type', 'taxonomy'),
(47, 18, '_menu_item_menu_item_parent', '0'),
(48, 18, '_menu_item_object_id', '4'),
(49, 18, '_menu_item_object', 'category'),
(50, 18, '_menu_item_target', ''),
(51, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 18, '_menu_item_xfn', ''),
(53, 18, '_menu_item_url', ''),
(54, 18, '_menu_item_orphaned', '1458662035'),
(55, 19, '_menu_item_type', 'taxonomy'),
(56, 19, '_menu_item_menu_item_parent', '0'),
(57, 19, '_menu_item_object_id', '2'),
(58, 19, '_menu_item_object', 'category'),
(59, 19, '_menu_item_target', ''),
(60, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 19, '_menu_item_xfn', ''),
(62, 19, '_menu_item_url', ''),
(63, 20, '_menu_item_type', 'taxonomy'),
(64, 20, '_menu_item_menu_item_parent', '21'),
(65, 20, '_menu_item_object_id', '4'),
(66, 20, '_menu_item_object', 'category'),
(67, 20, '_menu_item_target', ''),
(68, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 20, '_menu_item_xfn', ''),
(70, 20, '_menu_item_url', ''),
(71, 21, '_menu_item_type', 'taxonomy'),
(72, 21, '_menu_item_menu_item_parent', '19'),
(73, 21, '_menu_item_object_id', '1'),
(74, 21, '_menu_item_object', 'category'),
(75, 21, '_menu_item_target', ''),
(76, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(77, 21, '_menu_item_xfn', ''),
(78, 21, '_menu_item_url', ''),
(79, 1, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(80, 2, '_edit_lock', '1458664592:1'),
(81, 2, '_edit_last', '1'),
(82, 2, 'layout_key', ''),
(83, 2, 'post_slider_check_key', '0'),
(84, 2, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(85, 2, '_oembed_583e433d5feea7bc8e3623b69160e444', '{{unknown}}'),
(86, 2, '_oembed_aafd05be4fb990e71007f0a6f01c06fb', '{{unknown}}'),
(87, 2, '_oembed_2891a102c3e89f1edc6a59d69213ac1e', '{{unknown}}'),
(88, 2, '_oembed_18616aeedd1d9248fc95bf038b5335e4', '{{unknown}}'),
(89, 19, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(90, 20, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(91, 21, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(92, 4, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(93, 27, '_edit_last', '1'),
(94, 27, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(95, 27, '_edit_lock', '1460071390:1'),
(98, 27, 'layout_key', ''),
(99, 27, 'post_slider_check_key', '0'),
(100, 34, '_edit_last', '1'),
(101, 34, 'tc-thumb-fld', 'a:2:{s:9:"_thumb_id";b:0;s:11:"_thumb_type";s:10:"attachment";}'),
(102, 34, '_edit_lock', '1459699370:1'),
(105, 34, 'layout_key', ''),
(106, 34, 'post_slider_check_key', '0') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-03-17 22:08:38', '2016-03-17 22:08:38', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n<img class="alignnone" src="http://www.2r0consulting.com/wp-content/uploads/2015/07/27.jpg" alt="" width="1000" height="400" />\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;', 'Bienvenido!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '\nhttps://192.168.99.100/2016/03/17/quiz-windows-vista/', '2016-03-18 01:16:02', '2016-03-18 01:16:02', '', 0, 'https://192.168.99.100/?p=1', 0, 'post', '', 1),
(2, 1, '2016-03-17 22:08:38', '2016-03-17 22:08:38', 'El presente trabajo contiene tutoriales sobre seguridad informática.\r\n\r\n&nbsp;\r\n\r\n<img class="aligncenter" src="http://www.dhlconsultant.com/wp-content/uploads/2014/10/IT-Security.jpg?quality=100.3015072922390" alt="" width="688" height="516" />\r\n\r\n&nbsp;\r\n\r\nPresentado a Rafael Páez\r\n\r\nCategorias a Tratar\r\n<ul>\r\n	<li>Seguridad de las comunicaciones</li>\r\n	<li>Categoría 2</li>\r\n	<li>Categoría 3</li>\r\n</ul>\r\nIntegrantes:\r\n<ul>\r\n	<li>Carlos Manrique</li>\r\n	<li>David Calle</li>\r\n	<li>....</li>\r\n</ul>', 'Inicio', '', 'publish', 'closed', 'open', '', 'pagina-de-ejemplo', '', '', '2016-03-22 16:37:34', '2016-03-22 16:37:34', '', 0, 'https://192.168.99.100/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-03-17 22:19:40', '2016-03-17 22:19:40', 'Windows vista es un sistema operativo\r\n<blockquote>Un poco Inseguro  - Páez</blockquote>\r\n<ul>\r\n	<li>Descontinuado</li>\r\n	<li>Nadie lo usa</li>\r\n	<li>Muy lento</li>\r\n</ul>\r\nSe va a utilizar WP HIDE POSTS\r\n\r\nasdnasos', 'Quiz Windows Vista', '', 'publish', 'open', 'open', '', 'quiz-windows-vista', '', '', '2016-03-18 01:15:03', '2016-03-18 01:15:03', '', 0, 'https://192.168.99.100/?p=4', 0, 'post', '', 0),
(5, 1, '2016-03-17 22:19:40', '2016-03-17 22:19:40', 'Windows vista es un sistema operativo\r\n<blockquote>Un poco Inseguro  - Páez</blockquote>\r\n<ul>\r\n	<li>Descontinuado</li>\r\n	<li>Nadie lo usa</li>\r\n	<li>Muy lento</li>\r\n</ul>', 'Quiz Windows Vista', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-03-17 22:19:40', '2016-03-17 22:19:40', '', 4, 'https://192.168.99.100/2016/03/17/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-03-17 22:20:48', '2016-03-17 22:20:48', 'Windows vista es un sistema operativo\n<blockquote>Un poco Inseguro  - Páez</blockquote>\n<ul>\n	<li>Descontinuado</li>\n	<li>Nadie lo usa</li>\n	<li>Muy lento</li>\n</ul>\nSe va a utilizar WP HIDE POSTS', 'Quiz Windows Vista', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2016-03-17 22:20:48', '2016-03-17 22:20:48', '', 4, 'https://192.168.99.100/2016/03/17/4-autosave-v1/', 0, 'revision', '', 0),
(7, 1, '2016-03-17 22:20:58', '2016-03-17 22:20:58', 'Windows vista es un sistema operativo\r\n<blockquote>Un poco Inseguro  - Páez</blockquote>\r\n<ul>\r\n	<li>Descontinuado</li>\r\n	<li>Nadie lo usa</li>\r\n	<li>Muy lento</li>\r\n</ul>\r\nSe va a utilizar WP HIDE POSTS', 'Quiz Windows Vista', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-03-17 22:20:58', '2016-03-17 22:20:58', '', 4, 'https://192.168.99.100/2016/03/17/4-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2016-03-17 22:32:34', '2016-03-17 22:32:34', 'Segundo proyecto de seguridad informática. Presenta\n\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\n\n&nbsp;', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2016-03-17 22:32:34', '2016-03-17 22:32:34', '', 1, 'https://192.168.99.100/2016/03/17/1-autosave-v1/', 0, 'revision', '', 0),
(9, 1, '2016-03-17 22:33:24', '2016-03-17 22:33:24', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n&nbsp;\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-17 22:33:24', '2016-03-17 22:33:24', '', 1, 'https://192.168.99.100/2016/03/17/1-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2016-03-17 22:38:06', '2016-03-17 22:38:06', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n<img class="alignnone" src="http://www.2r0consulting.com/wp-content/uploads/2015/07/27.jpg" alt="" width="1000" height="400" />\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-17 22:38:06', '2016-03-17 22:38:06', '', 1, 'https://192.168.99.100/2016/03/17/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-03-17 22:38:50', '2016-03-17 22:38:50', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n<img class="alignnone" src="http://www.2r0consulting.com/wp-content/uploads/2015/07/27.jpg" alt="" width="1000" height="400" />\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Bienvenido!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-17 22:38:50', '2016-03-17 22:38:50', '', 1, 'https://192.168.99.100/2016/03/17/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2016-03-17 22:43:51', '2016-03-17 22:43:51', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n<img class="alignnone" src="http://www.2r0consulting.com/wp-content/uploads/2015/07/27.jpg" alt="" width="1000" height="400" />\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;\r\n\r\n&lt;?php wp_list_categories( $args ); ?&gt;', 'Bienvenido!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-17 22:43:51', '2016-03-17 22:43:51', '', 1, 'https://192.168.99.100/2016/03/17/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-03-17 22:44:57', '2016-03-17 22:44:57', 'Segundo proyecto de seguridad informática. Presentado a Páez\r\n\r\n<img class="alignnone" src="http://www.2r0consulting.com/wp-content/uploads/2015/07/27.jpg" alt="" width="1000" height="400" />\r\n\r\n<a href="https://192.168.99.100/2016/03/17/quiz-windows-vista/">Seguridad en las comunicaciones</a>\r\n\r\n&nbsp;', 'Bienvenido!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-03-17 22:44:57', '2016-03-17 22:44:57', '', 1, 'https://192.168.99.100/2016/03/17/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2016-03-18 01:15:03', '2016-03-18 01:15:03', 'Windows vista es un sistema operativo\r\n<blockquote>Un poco Inseguro  - Páez</blockquote>\r\n<ul>\r\n	<li>Descontinuado</li>\r\n	<li>Nadie lo usa</li>\r\n	<li>Muy lento</li>\r\n</ul>\r\nSe va a utilizar WP HIDE POSTS\r\n\r\nasdnasos', 'Quiz Windows Vista', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-03-18 01:15:03', '2016-03-18 01:15:03', '', 4, 'https://192.168.99.100/2016/03/18/4-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-03-22 15:53:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-22 15:53:25', '0000-00-00 00:00:00', '', 0, 'https://192.168.99.100/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2016-03-22 15:53:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-22 15:53:25', '0000-00-00 00:00:00', '', 2, 'https://192.168.99.100/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2016-03-22 15:53:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-22 15:53:55', '0000-00-00 00:00:00', '', 0, 'https://192.168.99.100/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2016-03-22 15:53:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-03-22 15:53:55', '0000-00-00 00:00:00', '', 2, 'https://192.168.99.100/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-03-22 16:19:36', '2016-03-22 16:19:36', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2016-03-22 16:40:19', '2016-03-22 16:40:19', '', 0, 'https://192.168.99.100/2016/03/22/19/', 1, 'nav_menu_item', '', 0),
(20, 1, '2016-03-22 16:19:36', '2016-03-22 16:19:36', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2016-03-22 16:40:19', '2016-03-22 16:40:19', '', 2, 'https://192.168.99.100/2016/03/22/20/', 3, 'nav_menu_item', '', 0),
(21, 1, '2016-03-22 16:19:36', '2016-03-22 16:19:36', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2016-03-22 16:40:19', '2016-03-22 16:40:19', '', 2, 'https://192.168.99.100/2016/03/22/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2016-03-22 16:34:43', '2016-03-22 16:34:43', 'El presente trabajo contiene tutoriales sobre seguridad informática.\r\n\r\n&nbsp;\r\n\r\nPresentado a Rafael Páez\r\n\r\n&nbsp;\r\n\r\nIntegrantes:\r\n<ul>\r\n	<li>Carlos Manrique</li>\r\n	<li>David Calle</li>\r\n	<li>....</li>\r\n</ul>', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-22 16:34:43', '2016-03-22 16:34:43', '', 2, 'https://192.168.99.100/2016/03/22/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-03-22 16:35:24', '2016-03-22 16:35:24', 'El presente trabajo contiene tutoriales sobre seguridad informática.\r\n\r\n&nbsp;\r\n\r\nPresentado a Rafael Páez\r\n\r\nCategorias a Tratar\r\n<ul>\r\n	<li>Seguridad de las comunicaciones</li>\r\n	<li>Categoría 2</li>\r\n	<li>Categoría 3</li>\r\n</ul>\r\nIntegrantes:\r\n<ul>\r\n	<li>Carlos Manrique</li>\r\n	<li>David Calle</li>\r\n	<li>....</li>\r\n</ul>', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-22 16:35:24', '2016-03-22 16:35:24', '', 2, 'https://192.168.99.100/2016/03/22/2-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2016-03-22 16:35:42', '2016-03-22 16:35:42', 'El presente trabajo contiene tutoriales sobre seguridad informática.\r\n\r\n&nbsp;\r\n\r\nPresentado a Rafael Páez\r\n\r\nCategorias a Tratar\r\n<ul>\r\n	<li>Seguridad de las comunicaciones</li>\r\n	<li>Categoría 2</li>\r\n	<li>Categoría 3</li>\r\n</ul>\r\nIntegrantes:\r\n<ul>\r\n	<li>Carlos Manrique</li>\r\n	<li>David Calle</li>\r\n	<li>....</li>\r\n</ul>', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-22 16:35:42', '2016-03-22 16:35:42', '', 2, 'https://192.168.99.100/2016/03/22/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-03-22 16:36:44', '2016-03-22 16:36:44', 'El presente trabajo contiene tutoriales sobre seguridad informática.\n\n&nbsp;\n\n&nbsp;\n\n&nbsp;\n\nPresentado a Rafael Páez\n\nCategorias a Tratar\n<ul>\n	<li>Seguridad de las comunicaciones</li>\n	<li>Categoría 2</li>\n	<li>Categoría 3</li>\n</ul>\nIntegrantes:\n<ul>\n	<li>Carlos Manrique</li>\n	<li>David Calle</li>\n	<li>....</li>\n</ul>', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2016-03-22 16:36:44', '2016-03-22 16:36:44', '', 2, 'https://192.168.99.100/2016/03/22/2-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2016-03-22 16:37:34', '2016-03-22 16:37:34', 'El presente trabajo contiene tutoriales sobre seguridad informática.\r\n\r\n&nbsp;\r\n\r\n<img class="aligncenter" src="http://www.dhlconsultant.com/wp-content/uploads/2014/10/IT-Security.jpg?quality=100.3015072922390" alt="" width="688" height="516" />\r\n\r\n&nbsp;\r\n\r\nPresentado a Rafael Páez\r\n\r\nCategorias a Tratar\r\n<ul>\r\n	<li>Seguridad de las comunicaciones</li>\r\n	<li>Categoría 2</li>\r\n	<li>Categoría 3</li>\r\n</ul>\r\nIntegrantes:\r\n<ul>\r\n	<li>Carlos Manrique</li>\r\n	<li>David Calle</li>\r\n	<li>....</li>\r\n</ul>', 'Inicio', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2016-03-22 16:37:34', '2016-03-22 16:37:34', '', 2, 'https://192.168.99.100/2016/03/22/2-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-03-22 16:53:41', '2016-03-22 16:53:41', '<h1><strong>Instalación de Dependencias</strong></h1>\r\n<span style="font-weight: 400;">Funciona para <del>Debian o</del> Ubuntu</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">apt-get install krb5-admin-server krb5-kdc</span>\r\n\r\n<span style="font-weight: 400;">Ingresa el nombre del REINO. Un ejemplo es KERBEROS.COM</span></blockquote>\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">va a preguntar por los servidores administrativos y default. Se pueden dejar como la ip del servidor actual. Sin embargo, no es recomendado y es preferible usar un nombre de dominio ( kerberos.com ).</span>\r\n\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">No hay problema si no se tiene los dominios. Modificando el archivo </span><span style="font-weight: 400;">/etc/hosts se puede agregar una ip y asignarle un dominio para el ejercicio.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">104.236.218.243 </span><span style="font-weight: 400;">kerberos.com </span>\r\n\r\n<span style="font-weight: 400;">45.55.68.26 ssh.com  </span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Generalmente se tarda mucho tiempo para crear un nuevo reino al trabajar sobre una máquina virtual, con estos comandos, a pesar de no ser recomendados para producción, se logra agilizar el proceso.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">$ sudo aptitude install rng-tools -y </span>\r\n\r\n<span style="font-weight: 400;">$ sudo rngd -r /dev/urandom -o /dev/random # don\'t do this in production!</span></blockquote>\r\n&nbsp;\r\n\r\n<h2><strong>Configuración del servidor</strong></h2>\r\n\r\n<span style="font-weight: 400;">Para crear un nuevo reino</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">krb5_newrealm</span></blockquote>\r\n<span style="font-weight: 400;">Pedirá la clave única para el reino</span>\r\n\r\n<span style="font-weight: 400;"> Editar el archivo /etc/krb5.conf</span>\r\n<blockquote>&nbsp;\r\n\r\n<span style="font-weight: 400;">[libdefaults]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        default_realm = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[realms]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kdc = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        admin_server = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[domain_realm]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kerberos.com = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        .kerberos.com = KERBEROS.COM</span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Para agregar usuarios</span>\r\n<blockquote><span style="font-weight: 400;">kadmin.local</span>\r\n\r\n<span style="font-weight: 400;">addprinc &lt;username&gt;</span>\r\n\r\n<span style="font-weight: 400;">addprinc -randkey ssh.com   // la clave que genera es automátic</span>\r\n\r\n<span style="font-weight: 400;">ktadd -k /tmp/ssh.com.keytab ssh.com   </span><span style="font-weight: 400;"> // obetener el keytab de ssh.com y guardarlo en /tmp/ssh.com</span></blockquote>\r\n&nbsp;', 'Kerberos en Linux', '', 'publish', 'open', 'open', '', 'kerberos-en-linux', '', '', '2016-03-22 16:58:02', '2016-03-22 16:58:02', '', 0, 'https://192.168.99.100/?p=27', 0, 'post', '', 0),
(28, 1, '2016-03-22 16:53:41', '2016-03-22 16:53:41', '<span style="font-weight: 400;">Funciona para Debian o Ubuntu</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">apt-get install krb5-admin-server krb5-kdc</span>\r\n\r\n<span style="font-weight: 400;">Ingresa el nombre del REINO. Un ejemplo es KERBEROS.COM</span></blockquote>\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">va a preguntar por los servidores administrativos y default. Se pueden dejar como la ip del servidor actual. Sin embargo, no es recomendado y es preferible usar un nombre de dominio ( kerberos.com ).</span>\r\n\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">No hay problema si no se tiene los dominios. Modificando el archivo </span><span style="font-weight: 400;">/etc/hosts se puede agregar una ip y asignarle un dominio para el ejercicio.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">104.236.218.243 </span><span style="font-weight: 400;">kerberos.com </span>\r\n\r\n<span style="font-weight: 400;">45.55.68.26 ssh.com  </span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Generalmente se tarda mucho tiempo para crear un nuevo reino al trabajar sobre una máquina virtual, con estos comandos, a pesar de no ser recomendados para producción, se logra agilizar el proceso.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">$ sudo aptitude install rng-tools -y </span>\r\n\r\n<span style="font-weight: 400;">$ sudo rngd -r /dev/urandom -o /dev/random # don\'t do this in production!</span></blockquote>\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">Para crear un nuevo reino</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">krb5_newrealm</span></blockquote>\r\n<span style="font-weight: 400;">Pedirá la clave única para el reino</span>\r\n\r\n<span style="font-weight: 400;"> Editar el archivo /etc/krb5.conf</span>\r\n<blockquote>&nbsp;\r\n\r\n<span style="font-weight: 400;">[libdefaults]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        default_realm = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[realms]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kdc = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        admin_server = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[domain_realm]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kerberos.com = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        .kerberos.com = KERBEROS.COM</span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Para agregar usuarios</span>\r\n<blockquote><span style="font-weight: 400;">kadmin.local</span>\r\n\r\n<span style="font-weight: 400;">addprinc &lt;username&gt;</span>\r\n\r\n<span style="font-weight: 400;">addprinc -randkey ssh.com   // la clave que genera es automátic</span>\r\n\r\n<span style="font-weight: 400;">ktadd -k /tmp/ssh.com.keytab ssh.com   </span><span style="font-weight: 400;"> // obetener el keytab de ssh.com y guardarlo en /tmp/ssh.com</span></blockquote>\r\n&nbsp;', 'Kerberos en Linux', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-03-22 16:53:41', '2016-03-22 16:53:41', '', 27, 'https://192.168.99.100/2016/03/22/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-03-22 16:55:55', '2016-03-22 16:55:55', '<strong>Instalación de Dependencias</strong>\r\n\r\n<span style="font-weight: 400;">Funciona para Debian o Ubuntu</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">apt-get install krb5-admin-server krb5-kdc</span>\r\n\r\n<span style="font-weight: 400;">Ingresa el nombre del REINO. Un ejemplo es KERBEROS.COM</span></blockquote>\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">va a preguntar por los servidores administrativos y default. Se pueden dejar como la ip del servidor actual. Sin embargo, no es recomendado y es preferible usar un nombre de dominio ( kerberos.com ).</span>\r\n\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">No hay problema si no se tiene los dominios. Modificando el archivo </span><span style="font-weight: 400;">/etc/hosts se puede agregar una ip y asignarle un dominio para el ejercicio.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">104.236.218.243 </span><span style="font-weight: 400;">kerberos.com </span>\r\n\r\n<span style="font-weight: 400;">45.55.68.26 ssh.com  </span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Generalmente se tarda mucho tiempo para crear un nuevo reino al trabajar sobre una máquina virtual, con estos comandos, a pesar de no ser recomendados para producción, se logra agilizar el proceso.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">$ sudo aptitude install rng-tools -y </span>\r\n\r\n<span style="font-weight: 400;">$ sudo rngd -r /dev/urandom -o /dev/random # don\'t do this in production!</span></blockquote>\r\n&nbsp;\r\n\r\n<strong>Configuración del servidor</strong>\r\n\r\n<span style="font-weight: 400;">Para crear un nuevo reino</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">krb5_newrealm</span></blockquote>\r\n<span style="font-weight: 400;">Pedirá la clave única para el reino</span>\r\n\r\n<span style="font-weight: 400;"> Editar el archivo /etc/krb5.conf</span>\r\n<blockquote>&nbsp;\r\n\r\n<span style="font-weight: 400;">[libdefaults]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        default_realm = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[realms]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kdc = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        admin_server = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[domain_realm]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kerberos.com = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        .kerberos.com = KERBEROS.COM</span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Para agregar usuarios</span>\r\n<blockquote><span style="font-weight: 400;">kadmin.local</span>\r\n\r\n<span style="font-weight: 400;">addprinc &lt;username&gt;</span>\r\n\r\n<span style="font-weight: 400;">addprinc -randkey ssh.com   // la clave que genera es automátic</span>\r\n\r\n<span style="font-weight: 400;">ktadd -k /tmp/ssh.com.keytab ssh.com   </span><span style="font-weight: 400;"> // obetener el keytab de ssh.com y guardarlo en /tmp/ssh.com</span></blockquote>\r\n&nbsp;', 'Kerberos en Linux', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-03-22 16:55:55', '2016-03-22 16:55:55', '', 27, 'https://192.168.99.100/2016/03/22/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-03-22 16:56:58', '2016-03-22 16:56:58', '<strong>Instalación de Dependencias</strong>\n\n<span style="font-weight: 400;">Funciona para <del>Debian o</del> Ubuntu</span>\n\n&nbsp;\n<blockquote><span style="font-weight: 400;">apt-get install krb5-admin-server krb5-kdc</span>\n\n<span style="font-weight: 400;">Ingresa el nombre del REINO. Un ejemplo es KERBEROS.COM</span></blockquote>\n&nbsp;\n\n<span style="font-weight: 400;">va a preguntar por los servidores administrativos y default. Se pueden dejar como la ip del servidor actual. Sin embargo, no es recomendado y es preferible usar un nombre de dominio ( kerberos.com ).</span>\n\n&nbsp;\n\n<span style="font-weight: 400;">No hay problema si no se tiene los dominios. Modificando el archivo </span><span style="font-weight: 400;">/etc/hosts se puede agregar una ip y asignarle un dominio para el ejercicio.</span>\n\n&nbsp;\n<blockquote><span style="font-weight: 400;">104.236.218.243 </span><span style="font-weight: 400;">kerberos.com </span>\n\n<span style="font-weight: 400;">45.55.68.26 ssh.com  </span>\n\n&nbsp;</blockquote>\n<span style="font-weight: 400;">Generalmente se tarda mucho tiempo para crear un nuevo reino al trabajar sobre una máquina virtual, con estos comandos, a pesar de no ser recomendados para producción, se logra agilizar el proceso.</span>\n\n&nbsp;\n<blockquote><span style="font-weight: 400;">$ sudo aptitude install rng-tools -y </span>\n\n<span style="font-weight: 400;">$ sudo rngd -r /dev/urandom -o /dev/random # don\'t do this in production!</span></blockquote>\n&nbsp;\n\n<strong>Configuración del servidor</strong>\n\n<span style="font-weight: 400;">Para crear un nuevo reino</span>\n\n&nbsp;\n<blockquote><span style="font-weight: 400;">krb5_newrealm</span></blockquote>\n<span style="font-weight: 400;">Pedirá la clave única para el reino</span>\n\n<span style="font-weight: 400;"> Editar el archivo /etc/krb5.conf</span>\n<blockquote>&nbsp;\n\n<span style="font-weight: 400;">[libdefaults]</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">        default_realm = KERBEROS.COM</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">[realms]</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">        kdc = kerberos.com</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">        admin_server = kerberos.com</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">[domain_realm]</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">        kerberos.com = KERBEROS.COM</span><span style="font-weight: 400;">\n</span><span style="font-weight: 400;">        .kerberos.com = KERBEROS.COM</span>\n\n&nbsp;</blockquote>\n<span style="font-weight: 400;">Para agregar usuarios</span>\n<blockquote><span style="font-weight: 400;">kadmin.local</span>\n\n<span style="font-weight: 400;">addprinc &lt;username&gt;</span>\n\n<span style="font-weight: 400;">addprinc -randkey ssh.com   // la clave que genera es automátic</span>\n\n<span style="font-weight: 400;">ktadd -k /tmp/ssh.com.keytab ssh.com   </span><span style="font-weight: 400;"> // obetener el keytab de ssh.com y guardarlo en /tmp/ssh.com</span></blockquote>\n&nbsp;', 'Kerberos en Linux', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2016-03-22 16:56:58', '2016-03-22 16:56:58', '', 27, 'https://192.168.99.100/2016/03/22/27-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2016-03-22 16:58:02', '2016-03-22 16:58:02', '<h1><strong>Instalación de Dependencias</strong></h1>\r\n<span style="font-weight: 400;">Funciona para <del>Debian o</del> Ubuntu</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">apt-get install krb5-admin-server krb5-kdc</span>\r\n\r\n<span style="font-weight: 400;">Ingresa el nombre del REINO. Un ejemplo es KERBEROS.COM</span></blockquote>\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">va a preguntar por los servidores administrativos y default. Se pueden dejar como la ip del servidor actual. Sin embargo, no es recomendado y es preferible usar un nombre de dominio ( kerberos.com ).</span>\r\n\r\n&nbsp;\r\n\r\n<span style="font-weight: 400;">No hay problema si no se tiene los dominios. Modificando el archivo </span><span style="font-weight: 400;">/etc/hosts se puede agregar una ip y asignarle un dominio para el ejercicio.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">104.236.218.243 </span><span style="font-weight: 400;">kerberos.com </span>\r\n\r\n<span style="font-weight: 400;">45.55.68.26 ssh.com  </span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Generalmente se tarda mucho tiempo para crear un nuevo reino al trabajar sobre una máquina virtual, con estos comandos, a pesar de no ser recomendados para producción, se logra agilizar el proceso.</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">$ sudo aptitude install rng-tools -y </span>\r\n\r\n<span style="font-weight: 400;">$ sudo rngd -r /dev/urandom -o /dev/random # don\'t do this in production!</span></blockquote>\r\n&nbsp;\r\n\r\n<h2><strong>Configuración del servidor</strong></h2>\r\n\r\n<span style="font-weight: 400;">Para crear un nuevo reino</span>\r\n\r\n&nbsp;\r\n<blockquote><span style="font-weight: 400;">krb5_newrealm</span></blockquote>\r\n<span style="font-weight: 400;">Pedirá la clave única para el reino</span>\r\n\r\n<span style="font-weight: 400;"> Editar el archivo /etc/krb5.conf</span>\r\n<blockquote>&nbsp;\r\n\r\n<span style="font-weight: 400;">[libdefaults]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        default_realm = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[realms]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kdc = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        admin_server = kerberos.com</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">[domain_realm]</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">...</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        kerberos.com = KERBEROS.COM</span><span style="font-weight: 400;">\r\n</span><span style="font-weight: 400;">        .kerberos.com = KERBEROS.COM</span>\r\n\r\n&nbsp;</blockquote>\r\n<span style="font-weight: 400;">Para agregar usuarios</span>\r\n<blockquote><span style="font-weight: 400;">kadmin.local</span>\r\n\r\n<span style="font-weight: 400;">addprinc &lt;username&gt;</span>\r\n\r\n<span style="font-weight: 400;">addprinc -randkey ssh.com   // la clave que genera es automátic</span>\r\n\r\n<span style="font-weight: 400;">ktadd -k /tmp/ssh.com.keytab ssh.com   </span><span style="font-weight: 400;"> // obetener el keytab de ssh.com y guardarlo en /tmp/ssh.com</span></blockquote>\r\n&nbsp;', 'Kerberos en Linux', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-03-22 16:58:02', '2016-03-22 16:58:02', '', 27, 'https://192.168.99.100/2016/03/22/27-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-04-03 16:05:10', '2016-04-03 16:05:10', 'Es un salido en mi blogcito', 'Saludo', '', 'publish', 'open', 'open', '', 'saludo', '', '', '2016-04-03 16:05:10', '2016-04-03 16:05:10', '', 0, 'https://192.168.99.100/?p=34', 0, 'post', '', 0),
(35, 1, '2016-04-03 16:05:10', '2016-04-03 16:05:10', 'Es un salido en mi blogcito', 'Saludo', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-04-03 16:05:10', '2016-04-03 16:05:10', '', 34, 'https://192.168.99.100/2016/04/03/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-04-12 11:20:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-12 11:20:36', '0000-00-00 00:00:00', '', 0, 'https://192.168.99.100/?p=36', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 4, 0),
(4, 2, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(27, 4, 0),
(34, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 2, 0),
(2, 2, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', '', 2, 2),
(5, 5, 'nav_menu', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Autorización', 'autorizacion', 0),
(2, 'Seguridad de Comunicaciones', 'seguridad-de-comunicaciones', 0),
(3, 'Seguridad en las comunicaciones', 'seguridad-en-las-comunicaciones', 0),
(4, 'Autenticación', 'auth', 0),
(5, 'Linux', 'linux', 0),
(6, 'Windows Server', 'windows-server', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'seguridad'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(16, 1, 'wporg_favorites', ''),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'wp_user-settings', 'wplink=1&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1459699408'),
(21, 1, 'nav_menu_recently_edited', '3'),
(22, 1, 'wp_media_library_mode', 'list'),
(23, 1, 'session_tokens', 'a:2:{s:64:"0ce7009f999a16fbe202325333b42f2abf39cc344ab7308a51fb300e2fb8578d";a:4:{s:10:"expiration";i:1461039169;s:2:"ip";s:12:"10.240.0.165";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36";s:5:"login";i:1460866369;}s:64:"5b720a8ffdc0f83091753be58cd0c83325164b4a961aaa53dd593a769d50c9e5";a:4:{s:10:"expiration";i:1461072085;s:2:"ip";s:12:"10.240.0.192";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36";s:5:"login";i:1460899285;}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'seguridad', '$P$B051jOlGUX1xuUWHcOB4CUxf1j2kMI/', 'seguridad', 'davidcalle9430@gmail.com', '', '2016-03-17 22:08:38', '', 0, 'seguridad') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

