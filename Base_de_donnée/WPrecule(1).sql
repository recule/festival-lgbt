-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Jeu 31 Janvier 2013 à 14:42
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `WPrecule`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-14 15:01:42', '2013-01-14 15:01:42', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=308 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~recule/Festival_cinema/wordpress', 'yes'),
(2, 'blogname', 'Festival LGBT', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'Alexandre.recule@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~recule/Festival_cinema/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '0', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:3:{i:2;a:3:{s:5:"title";s:6:"Agenda";s:4:"text";s:666:"<strong>Vendredi 24 septembre : 20h00</strong>\r\nSoirée d’ouverture : séance de courts métrages\r\nRencontre-débat avec un réalisateur.\r\n\r\n<strong>Samedi 25 septembre : 19h30</strong>\r\nDocumentaire :\r\nIt’s elementary, talking about gays issues in school\r\n(C’est élémentaire - Parler de l’homosexualité à l’école)\r\nRencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret\r\nsur les interventions en milieu scolaire.\r\n\r\n<strong>Samedi 25 septembre : 21h45</strong>\r\nFiction : Ander\r\n\r\n<strong>Dimanche 26 septembre : 16h00</strong>\r\nFiction : El niño pez\r\n\r\n<strong>Dimanche 26 septembre : 18h00</strong>\r\nFiction : I can’t think straight";s:6:"filter";b:1;}i:3;a:3:{s:5:"title";s:12:"Rejoins nous";s:4:"text";s:236:"<ul>\r\n	<li><a href="https://fr-fr.facebook.com/">Ajouter nous sur Facebook</a></li>\r\n	<li><a href="https://twitter.com/">Ajouter nous sur Twitter</a></li>\r\n	<li><a href="https://new.myspace.com/">Ajouter nous sur MySpace</a></li>\r\n</ul>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '5', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:6:"text-3";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1359558126;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1359558203;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359558495;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1359644526;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1359639756;}', 'yes'),
(102, '_transient_random_seed', 'ab55d1665792c5fc056be8121ae10f39', 'yes'),
(103, 'auth_key', 'A|ZT%YNO*mO$N_+GAyd_U]Uj(+/y0}Mw$.#YK#fauZae^I_?|kpGZDb=/3Q?a? c', 'yes'),
(104, 'auth_salt', 'boUuD{.EZZ!IlVR`R?Y+2XWf*~}]nfP(:Hau c%X)vX{Xm]E,ZqIU*Adsg,|>(B%', 'yes'),
(105, 'logged_in_key', 'Dm nU5iLT~!qbNx>FT !e{~|g-b[SeH?>/T:^=HmGia<T;7v#7X>GQRc$!o|J $n', 'yes'),
(106, 'logged_in_salt', 'Un@zY:qkbSR3Nzd7nMoWFgl6(k qX<HxDOl[RdMp)<O1AUxQxuHq/$*`+jXZu2yJ', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359639759;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1359639763;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:50:"http://localhost/~recule/Festival_cinema/wordpress";s:4:"link";s:126:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~recule/Festival_cinema/wordpress/";s:3:"url";s:159:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~recule/Festival_cinema/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', 'tgd@M/9GbJ<TnVd9r6an:r@8h%o.NLYC]pDFr@sCbNT-Wb(>y/BK|^+W^jS-=tz_', 'yes'),
(113, 'nonce_salt', 'PLafLnGPw-ugiGuEdk}NI7Afj`:k~<gF/=$[;}rka/#c.G#e`&*W>1$pP;|v(,sP', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(135, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:5;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358782103;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(136, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(183, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(196, 'current_theme', 'Festival', 'yes'),
(197, 'theme_mods_festival', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:5;}s:16:"header_textcolor";s:5:"blank";}', 'yes'),
(198, 'theme_switched', '', 'yes'),
(199, 'theme_mods_twentyeleven', 'a:9:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:5;}s:16:"header_textcolor";s:3:"000";s:16:"background_color";s:6:"e2e2e2";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358845914;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:6:"text-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";N;s:9:"sidebar-5";N;}}}', 'yes'),
(210, 'twentyeleven_theme_options', 'a:3:{s:12:"color_scheme";s:5:"light";s:10:"link_color";s:7:"#1b8be0";s:12:"theme_layout";s:15:"content-sidebar";}', 'yes'),
(233, 'recently_activated', 'a:0:{}', 'yes'),
(262, 'category_children', 'a:0:{}', 'yes'),
(293, '_site_transient_timeout_wporg_theme_feature_list', '1359544224', 'yes'),
(294, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(301, '_transient_timeout_plugin_slugs', '1359619920', 'no'),
(302, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(305, '_transient_doing_cron', '1359639755.5192339420318603515625', 'yes'),
(306, '_site_transient_timeout_theme_roots', '1359641563', 'yes'),
(307, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=287 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1358176087'),
(4, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1359452882:1'),
(9, 8, '_menu_item_type', 'post_type'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '5'),
(12, 8, '_menu_item_object', 'page'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-rouge";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', ''),
(18, 9, '_menu_item_type', 'taxonomy'),
(19, 9, '_menu_item_menu_item_parent', '0'),
(20, 9, '_menu_item_object_id', '3'),
(21, 9, '_menu_item_object', 'category'),
(22, 9, '_menu_item_target', ''),
(23, 9, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-orange";}'),
(24, 9, '_menu_item_xfn', ''),
(25, 9, '_menu_item_url', ''),
(27, 10, '_menu_item_type', 'taxonomy'),
(28, 10, '_menu_item_menu_item_parent', '0'),
(29, 10, '_menu_item_object_id', '2'),
(30, 10, '_menu_item_object', 'category'),
(31, 10, '_menu_item_target', ''),
(32, 10, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-jaune";}'),
(33, 10, '_menu_item_xfn', ''),
(34, 10, '_menu_item_url', ''),
(36, 11, '_edit_last', '1'),
(37, 11, '_edit_lock', '1358177534:1'),
(38, 11, '_wp_page_template', 'default'),
(39, 14, '_edit_last', '1'),
(40, 14, '_edit_lock', '1358177592:1'),
(41, 14, '_wp_page_template', 'default'),
(42, 16, '_edit_last', '1'),
(43, 16, '_edit_lock', '1358177642:1'),
(44, 16, '_wp_page_template', 'default'),
(45, 18, '_menu_item_type', 'post_type'),
(46, 18, '_menu_item_menu_item_parent', '0'),
(47, 18, '_menu_item_object_id', '11'),
(48, 18, '_menu_item_object', 'page'),
(49, 18, '_menu_item_target', ''),
(50, 18, '_menu_item_classes', 'a:2:{i:0;s:7:"fg-vert";i:1;s:0:"";}'),
(51, 18, '_menu_item_xfn', ''),
(52, 18, '_menu_item_url', ''),
(54, 19, '_menu_item_type', 'post_type'),
(55, 19, '_menu_item_menu_item_parent', '0'),
(56, 19, '_menu_item_object_id', '14'),
(57, 19, '_menu_item_object', 'page'),
(58, 19, '_menu_item_target', ''),
(59, 19, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-bleu";}'),
(60, 19, '_menu_item_xfn', ''),
(61, 19, '_menu_item_url', ''),
(63, 20, '_menu_item_type', 'post_type'),
(64, 20, '_menu_item_menu_item_parent', '0'),
(65, 20, '_menu_item_object_id', '16'),
(66, 20, '_menu_item_object', 'page'),
(67, 20, '_menu_item_target', ''),
(68, 20, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-violet";}'),
(69, 20, '_menu_item_xfn', ''),
(70, 20, '_menu_item_url', ''),
(72, 21, '_edit_last', '1'),
(73, 21, '_edit_lock', '1359386644:1'),
(78, 24, '_edit_last', '1'),
(79, 24, '_edit_lock', '1359386552:1'),
(82, 26, '_edit_last', '1'),
(83, 26, '_edit_lock', '1359386577:1'),
(86, 21, 'Année', '2009'),
(87, 21, 'Réalisateur', 'Pascal-Alex Vincent'),
(88, 21, 'Pays', 'France'),
(89, 21, 'Durée', '8 minutes'),
(94, 24, 'Année', '2009 '),
(95, 24, 'Réalisateur', 'Céline Sciamma'),
(96, 24, 'Pays', 'France'),
(99, 26, 'Durée', '9 minutes'),
(100, 26, 'Réalisateur', 'Sébastien Gabriel'),
(101, 26, 'Année', '2009 '),
(102, 26, 'Pays', 'France '),
(105, 35, '_edit_last', '1'),
(106, 35, '_edit_lock', '1359386516:1'),
(107, 35, 'Durée', '10 minutes '),
(108, 35, 'Année', '2006'),
(109, 35, 'Réalisateur', ' Bénédicte Delgéhier'),
(110, 35, 'Pays', 'France '),
(113, 37, '_edit_last', '1'),
(114, 37, '_edit_lock', '1359386489:1'),
(115, 37, 'Durée', '17 minutes'),
(116, 37, 'Languages', 'VOST '),
(119, 37, 'Réalisateur', 'René Guerra Luiz'),
(120, 37, 'Pays', 'Brésil'),
(121, 37, 'Année', '2008 '),
(124, 42, '_edit_last', '1'),
(125, 42, '_edit_lock', '1359386399:1'),
(126, 42, 'Durée ', '26 minutes '),
(127, 42, 'Année ', '2006 '),
(128, 42, 'Réalisateur', 'Jean Baptiste Erreca'),
(129, 42, 'Pays ', 'France'),
(134, 45, '_edit_last', '1'),
(135, 45, '_edit_lock', '1359386351:1'),
(136, 45, 'Durée', '4 minutes '),
(137, 45, 'Année', '2008'),
(138, 45, 'Réalisateur', 'Patricia & Colette'),
(139, 45, 'Pays', ' France'),
(144, 48, '_edit_last', '1'),
(145, 48, '_edit_lock', '1359387817:1'),
(146, 48, 'Durée', '01h20'),
(147, 48, 'Année', '1996 '),
(148, 48, 'Réalisateur', 'Debra Chasnoff'),
(149, 48, 'Pays', 'Etats-Unis'),
(150, 48, 'Type', 'Documentaire'),
(151, 48, 'Titre original', 'It’s elementary, talking about gays issues in school'),
(162, 24, 'Durée', '7 minutes.'),
(177, 64, '_edit_last', '1'),
(178, 64, '_edit_lock', '1359387512:1'),
(179, 64, 'Réalisateur', 'Roberto Castón'),
(180, 64, 'Pays', 'Espagne'),
(181, 64, 'Année', '2009'),
(182, 64, 'Durée', '02h08'),
(183, 64, 'Languages', 'VOSTF'),
(184, 64, 'interprétation', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(187, 64, 'Prix', 'Festival International de Berlin (2009)\r\nViolette d’or du meilleur film – Festival Cinespaña - Toulouse (2009)\r\nGrand prix du jury – Festival Cinehorizontes (2009)'),
(190, 68, '_edit_last', '1'),
(191, 68, '_edit_lock', '1359387434:1'),
(192, 68, 'Réalisateur', 'Lucía Puenzo'),
(193, 68, 'Pays', 'Argentine'),
(194, 68, 'Année', '2008'),
(195, 68, 'Durée', '01h36'),
(196, 68, 'Languages', 'VOSTF'),
(197, 68, 'interprétation', 'Inés Efron, Mariela Vitale, Pep Munne'),
(200, 70, '_edit_last', '1'),
(201, 70, '_edit_lock', '1359388391:1'),
(202, 70, 'Réalisateur', 'Shamim Sari'),
(203, 70, 'Pays', 'Grande Bretagne'),
(204, 70, 'Année', '2007'),
(205, 70, 'Durée', '01h20'),
(206, 70, 'Genre', 'Comédie romantique'),
(207, 70, 'Languages', 'VOSTF'),
(208, 70, 'interprétation', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(213, 70, 'Prix', 'Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)'),
(216, 2, '_edit_lock', '1358241899:1'),
(217, 2, '_wp_trash_meta_status', 'publish'),
(218, 2, '_wp_trash_meta_time', '1358242016'),
(219, 5, '_wp_page_template', 'default'),
(220, 79, '_wp_attached_file', '2013/01/37_it_s_still_elementary.jpg'),
(221, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:228;s:4:"file";s:36:"2013/01/37_it_s_still_elementary.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"37_it_s_still_elementary-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(222, 80, '_wp_attached_file', '2013/01/American-boy.png'),
(223, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(224, 81, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(225, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1067;s:6:"height";i:600;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x350.jpg";s:5:"width";i:624;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(226, 82, '_wp_attached_file', '2013/01/ANDER2.jpg'),
(227, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:506;s:4:"file";s:18:"2013/01/ANDER2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER2-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER2-624x350.jpg";s:5:"width";i:624;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(228, 83, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(229, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(230, 84, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(231, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:615;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(232, 85, '_wp_attached_file', '2013/01/EL-NINO-PEZ-2.jpg'),
(233, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:608;s:6:"height";i:900;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-2-202x300.jpg";s:5:"width";i:202;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(234, 86, '_wp_attached_file', '2013/01/EN_COLO.jpg'),
(235, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:917;s:6:"height";i:600;s:4:"file";s:19:"2013/01/EN_COLO.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"EN_COLO-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:19:"EN_COLO-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(236, 87, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(237, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(238, 88, '_wp_attached_file', '2013/01/I-cant-think-straight-2.jpg'),
(239, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:35:"2013/01/I-cant-think-straight-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:35:"I-cant-think-straight-2-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(240, 89, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(241, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(242, 90, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(243, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(244, 91, '_wp_attached_file', '2013/01/Odile-.jpg'),
(245, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:886;s:6:"height";i:600;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(246, 92, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(247, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(248, 93, '_wp_attached_file', '2013/01/Os-sapatos-de-Aristeu.jpg'),
(249, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:33:"2013/01/Os-sapatos-de-Aristeu.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:33:"Os-sapatos-de-Aristeu-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:26:"Canon EOS DIGITAL REBEL XT";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1161573055;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"75";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(250, 94, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(251, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:600;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(252, 70, '_thumbnail_id', '88'),
(256, 68, '_thumbnail_id', '85'),
(259, 64, '_thumbnail_id', '82'),
(262, 48, '_thumbnail_id', '79'),
(265, 45, '_thumbnail_id', '80'),
(268, 42, '_thumbnail_id', '83'),
(271, 37, '_thumbnail_id', '93'),
(274, 35, '_thumbnail_id', '91'),
(277, 26, '_thumbnail_id', '92'),
(280, 24, '_thumbnail_id', '94'),
(286, 21, '_thumbnail_id', '86');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=147 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-14 15:01:42', '2013-01-14 15:01:42', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-14 16:08:07', '2013-01-14 15:08:07', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-14 15:01:42', '2013-01-14 15:01:42', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~recule/Festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2013-01-15 10:26:56', '2013-01-15 09:26:56', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2013-01-14 15:01:42', '2013-01-14 15:01:42', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2013-01-14 15:01:42', '2013-01-14 15:01:42', '', 1, 'http://localhost/~recule/Festival_cinema/wordpress/?p=4', 0, 'revision', '', 0),
(5, 1, '2013-01-14 16:12:11', '2013-01-14 15:12:11', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'edito', '', '', '2013-01-29 10:49:48', '2013-01-29 09:49:48', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=5', 0, 'page', '', 0),
(6, 1, '2013-01-14 16:10:16', '2013-01-14 15:10:16', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '5-revision', '', '', '2013-01-14 16:10:16', '2013-01-14 15:10:16', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2013-01-14 16:11:34', '2013-01-14 15:11:34', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '5-revision-2', '', '', '2013-01-14 16:11:34', '2013-01-14 15:11:34', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2013-01-14 16:29:12', '2013-01-14 15:29:12', ' ', '', '', 'publish', 'open', 'closed', '', '8', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2013-01-14 16:29:44', '2013-01-14 15:29:44', ' ', '', '', 'publish', 'open', 'closed', '', '9', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2013-01-14 16:29:44', '2013-01-14 15:29:44', ' ', '', '', 'publish', 'open', 'closed', '', '10', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2013-01-14 16:33:54', '2013-01-14 15:33:54', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans...\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc Impression : Prevost Offset\r\n\r\nContacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-01-21 17:13:45', '2013-01-21 16:13:45', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2013-01-14 16:32:55', '2013-01-14 15:32:55', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\nTarifs : Plein tarif : 7,50 €\n\nPass Festival : 25 € (5 séances)\n\nSoirée courts métrages : 6 € (vendredi)\n\n2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées :\n\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans... Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents. Equipe : Direction artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2013-01-14 16:32:55', '2013-01-14 15:32:55', '', 11, 'http://localhost/~recule/Festival_cinema/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2013-01-14 16:33:55', '2013-01-14 15:33:55', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\n\nTarifs : Plein tarif : 7,50 €\n\nPass Festival : 25 € (5 séances)\n\nSoirée courts métrages : 6 € (vendredi)\n\n2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées :\n\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans...\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\n\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\n\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\n\nCommunication &amp; partenariats : Christel Guillard\n\nConception graphique : Yannis Bellair\n\nConception du site internet : rccc Impression : Prevost Offset\n\nContacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'open', 'open', '', '11-autosave', '', '', '2013-01-14 16:33:55', '2013-01-14 15:33:55', '', 11, 'http://localhost/~recule/Festival_cinema/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-14 16:35:04', '2013-01-14 15:35:04', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL - Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay - Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-01-21 17:13:45', '2013-01-21 16:13:45', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2013-01-14 16:34:30', '2013-01-14 15:34:30', '', 'Partenaires', '', 'inherit', 'open', 'open', '', '14-revision', '', '', '2013-01-14 16:34:30', '2013-01-14 15:34:30', '', 14, 'http://localhost/~recule/Festival_cinema/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-14 16:35:53', '2013-01-14 15:35:53', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret - Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu - Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-21 17:13:45', '2013-01-21 16:13:45', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?page_id=16', 0, 'page', '', 0),
(17, 1, '2013-01-14 16:35:16', '2013-01-14 15:35:16', '', 'Remerciements', '', 'inherit', 'open', 'open', '', '16-revision', '', '', '2013-01-14 16:35:16', '2013-01-14 15:35:16', '', 16, 'http://localhost/~recule/Festival_cinema/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2013-01-14 16:36:23', '2013-01-14 15:36:23', ' ', '', '', 'publish', 'open', 'closed', '', '18', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2013-01-14 16:36:23', '2013-01-14 15:36:23', ' ', '', '', 'publish', 'open', 'closed', '', '19', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2013-01-14 16:36:23', '2013-01-14 15:36:23', ' ', '', '', 'publish', 'open', 'closed', '', '20', '', '', '2013-01-22 10:33:08', '2013-01-22 09:33:08', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=20', 6, 'nav_menu_item', '', 0),
(21, 1, '2013-01-14 16:38:12', '2013-01-14 15:38:12', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.http://localhost/~recule/Festival_cinema/wordpress/wp-admin/media-upload.php?post_id=21&amp;type=image&amp;TB_iframe=1', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-01-28 16:25:03', '2013-01-28 15:25:03', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2013-01-14 16:37:46', '2013-01-14 15:37:46', '', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2013-01-14 16:37:46', '2013-01-14 15:37:46', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-14 16:38:12', '2013-01-14 15:38:12', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '21-revision-2', '', '', '2013-01-14 16:38:12', '2013-01-14 15:38:12', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-14 16:39:12', '2013-01-14 15:39:12', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'publish', 'closed', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-01-28 16:24:06', '2013-01-28 15:24:06', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=24', 0, 'post', '', 0),
(25, 1, '2013-01-14 16:38:38', '2013-01-14 15:38:38', '', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '24-revision', '', '', '2013-01-14 16:38:38', '2013-01-14 15:38:38', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=25', 0, 'revision', '', 0),
(26, 1, '2013-01-14 16:40:43', '2013-01-14 15:40:43', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'publish', 'closed', 'open', '', 'omar-sebastien-gabriel', '', '', '2013-01-28 16:24:44', '2013-01-28 15:24:44', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=26', 0, 'post', '', 0),
(27, 1, '2013-01-14 16:40:18', '2013-01-14 15:40:18', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2013-01-14 16:40:18', '2013-01-14 15:40:18', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-21 15:48:32', '2013-01-21 14:48:32', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.http://localhost/~recule/Festival_cinema/wordpress/wp-admin/media-upload.php?post_id=21&type=image&TB_iframe=1', 'En colo', '', 'inherit', 'open', 'open', '', '21-autosave', '', '', '2013-01-21 15:48:32', '2013-01-21 14:48:32', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2013-01-14 16:38:24', '2013-01-14 15:38:24', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'open', 'open', '', '21-revision-3', '', '', '2013-01-14 16:38:24', '2013-01-14 15:38:24', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-14 16:48:17', '2013-01-14 15:48:17', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent', '', 'inherit', 'open', 'open', '', '21-revision-4', '', '', '2013-01-14 16:48:17', '2013-01-14 15:48:17', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2013-01-14 16:49:30', '2013-01-14 15:49:30', '7 minutes.\n\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline- France', '', 'inherit', 'open', 'open', '', '24-autosave', '', '', '2013-01-14 16:49:30', '2013-01-14 15:49:30', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-14 16:39:12', '2013-01-14 15:39:12', '7 minutes.\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'open', 'open', '', '24-revision-2', '', '', '2013-01-14 16:39:12', '2013-01-14 15:39:12', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2013-01-14 16:50:46', '2013-01-14 15:50:46', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'open', 'open', '', '26-autosave', '', '', '2013-01-14 16:50:46', '2013-01-14 15:50:46', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-14 16:40:43', '2013-01-14 15:40:43', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel', '', 'inherit', 'open', 'open', '', '26-revision-2', '', '', '2013-01-14 16:40:43', '2013-01-14 15:40:43', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=34', 0, 'revision', '', 0),
(35, 1, '2013-01-14 16:52:08', '2013-01-14 15:52:08', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'publish', 'closed', 'open', '', 'odile', '', '', '2013-01-28 16:23:41', '2013-01-28 15:23:41', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=35', 0, 'post', '', 0),
(36, 1, '2013-01-14 16:51:58', '2013-01-14 15:51:58', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile -  -  - - 10 minutes', '', 'inherit', 'open', 'open', '', '35-revision', '', '', '2013-01-14 16:51:58', '2013-01-14 15:51:58', '', 35, 'http://localhost/~recule/Festival_cinema/wordpress/?p=36', 0, 'revision', '', 0),
(37, 1, '2013-01-14 16:53:25', '2013-01-14 15:53:25', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu', '', '', '2013-01-28 16:23:11', '2013-01-28 15:23:11', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=37', 0, 'post', '', 0),
(38, 1, '2013-01-14 16:53:14', '2013-01-14 15:53:14', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu -  -  - ', '', 'inherit', 'open', 'open', '', '37-revision', '', '', '2013-01-14 16:53:14', '2013-01-14 15:53:14', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=38', 0, 'revision', '', 0),
(40, 1, '2013-01-14 16:54:59', '2013-01-14 15:54:59', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'open', 'open', '', '37-autosave', '', '', '2013-01-14 16:54:59', '2013-01-14 15:54:59', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=40', 0, 'revision', '', 0),
(41, 1, '2013-01-14 16:53:25', '2013-01-14 15:53:25', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'open', 'open', '', '37-revision-2', '', '', '2013-01-14 16:53:25', '2013-01-14 15:53:25', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-14 16:56:44', '2013-01-14 15:56:44', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\r\nle bétail...', 'Cowboy Forever', '', 'publish', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-28 16:21:26', '2013-01-28 15:21:26', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=42', 0, 'post', '', 0),
(43, 1, '2013-01-14 16:56:01', '2013-01-14 15:56:01', '', 'Cowboy Forever -  - France', '', 'inherit', 'open', 'open', '', '42-revision', '', '', '2013-01-14 16:56:01', '2013-01-14 15:56:01', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-14 16:56:44', '2013-01-14 15:56:44', '', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '42-revision-2', '', '', '2013-01-14 16:56:44', '2013-01-14 15:56:44', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2013-01-14 16:58:20', '2013-01-14 15:58:20', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'publish', 'closed', 'open', '', 'american-boy', '', '', '2013-01-28 16:12:34', '2013-01-28 15:12:34', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2013-01-14 16:58:08', '2013-01-14 15:58:08', '', 'American Boy', '', 'inherit', 'open', 'open', '', '45-revision', '', '', '2013-01-14 16:58:08', '2013-01-14 15:58:08', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=46', 0, 'revision', '', 0),
(47, 1, '2013-01-14 16:58:20', '2013-01-14 15:58:20', '', 'American Boy', '', 'inherit', 'open', 'open', '', '45-revision-2', '', '', '2013-01-14 16:58:20', '2013-01-14 15:58:20', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-14 17:02:20', '2013-01-14 16:02:20', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'publish', 'closed', 'open', '', 'cest-elementaire-parler-de-lhomosexualite-a-lecole', '', '', '2013-01-28 16:43:35', '2013-01-28 15:43:35', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2013-01-14 17:01:58', '2013-01-14 16:01:58', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation. Ce film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association\nG.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu\nScolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-revision', '', '', '2013-01-14 17:01:58', '2013-01-14 16:01:58', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-14 17:02:20', '2013-01-14 16:02:20', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-revision-2', '', '', '2013-01-14 17:02:20', '2013-01-14 16:02:20', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2013-01-15 09:27:23', '2013-01-15 08:27:23', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\n\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-autosave', '', '', '2013-01-15 09:27:23', '2013-01-15 08:27:23', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-01-14 17:02:59', '2013-01-14 16:02:59', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-revision-3', '', '', '2013-01-14 17:02:59', '2013-01-14 16:02:59', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2013-01-14 16:48:24', '2013-01-14 15:48:24', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '21-revision-5', '', '', '2013-01-14 16:48:24', '2013-01-14 15:48:24', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2013-01-15 09:18:55', '2013-01-15 08:18:55', '2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '21-revision-6', '', '', '2013-01-15 09:18:55', '2013-01-15 08:18:55', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2013-01-14 16:49:39', '2013-01-14 15:49:39', '7 minutes.\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '24-revision-3', '', '', '2013-01-14 16:49:39', '2013-01-14 15:49:39', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=55', 0, 'revision', '', 0),
(56, 1, '2013-01-14 16:50:51', '2013-01-14 15:50:51', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'open', 'open', '', '26-revision-3', '', '', '2013-01-14 16:50:51', '2013-01-14 15:50:51', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-01-14 16:52:08', '2013-01-14 15:52:08', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '35-revision-2', '', '', '2013-01-14 16:52:08', '2013-01-14 15:52:08', '', 35, 'http://localhost/~recule/Festival_cinema/wordpress/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-14 16:55:43', '2013-01-14 15:55:43', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'open', 'open', '', '37-revision-3', '', '', '2013-01-14 16:55:43', '2013-01-14 15:55:43', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-15 09:24:13', '2013-01-15 08:24:13', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\nle bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '42-autosave', '', '', '2013-01-15 09:24:13', '2013-01-15 08:24:13', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=59', 0, 'revision', '', 0),
(60, 1, '2013-01-14 16:57:03', '2013-01-14 15:57:03', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\r\nle bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '42-revision-3', '', '', '2013-01-14 16:57:03', '2013-01-14 15:57:03', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=60', 0, 'revision', '', 0),
(61, 1, '2013-01-15 09:25:34', '2013-01-15 08:25:34', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '45-autosave', '', '', '2013-01-15 09:25:34', '2013-01-15 08:25:34', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-14 16:58:52', '2013-01-14 15:58:52', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '45-revision-3', '', '', '2013-01-14 16:58:52', '2013-01-14 15:58:52', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2013-01-15 09:17:01', '2013-01-15 08:17:01', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-revision-4', '', '', '2013-01-15 09:17:01', '2013-01-15 08:17:01', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2013-01-15 09:33:00', '2013-01-15 08:33:00', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\r\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'publish', 'closed', 'open', '', 'ander', '', '', '2013-01-28 16:39:32', '2013-01-28 15:39:32', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=64', 0, 'post', '', 0),
(65, 1, '2013-01-15 09:30:52', '2013-01-15 08:30:52', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'open', 'open', '', '64-revision', '', '', '2013-01-15 09:30:52', '2013-01-15 08:30:52', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2013-01-15 09:34:58', '2013-01-15 08:34:58', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\n\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\n\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'open', 'open', '', '64-autosave', '', '', '2013-01-15 09:34:58', '2013-01-15 08:34:58', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=66', 0, 'revision', '', 0),
(67, 1, '2013-01-15 09:33:00', '2013-01-15 08:33:00', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\r\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'open', 'open', '', '64-revision-2', '', '', '2013-01-15 09:33:00', '2013-01-15 08:33:00', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2013-01-15 09:38:41', '2013-01-15 08:38:41', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer.\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'publish', 'closed', 'open', '', 'el-nino-pez', '', '', '2013-01-28 16:13:16', '2013-01-28 15:13:16', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=68', 0, 'post', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(69, 1, '2013-01-15 09:36:50', '2013-01-15 08:36:50', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service\nde la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser\ns’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer.\nEntre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'open', 'open', '', '68-revision', '', '', '2013-01-15 09:36:50', '2013-01-15 08:36:50', '', 68, 'http://localhost/~recule/Festival_cinema/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2013-01-15 09:41:13', '2013-01-15 08:41:13', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'publish', 'closed', 'open', '', 'cant-think-straight', '', '', '2013-01-28 16:38:12', '2013-01-28 15:38:12', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2013-01-15 09:39:08', '2013-01-15 08:39:08', '', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '70-revision', '', '', '2013-01-15 09:39:08', '2013-01-15 08:39:08', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2013-01-15 09:46:58', '2013-01-15 08:46:58', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\n\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\n\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\n\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '70-autosave', '', '', '2013-01-15 09:46:58', '2013-01-15 08:46:58', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=72', 0, 'revision', '', 0),
(73, 1, '2013-01-15 09:41:13', '2013-01-15 08:41:13', '', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '70-revision-2', '', '', '2013-01-15 09:41:13', '2013-01-15 08:41:13', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=73', 0, 'revision', '', 0),
(75, 1, '2013-01-15 09:43:06', '2013-01-15 08:43:06', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '70-revision-3', '', '', '2013-01-15 09:43:06', '2013-01-15 08:43:06', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-14 15:01:42', '2013-01-14 15:01:42', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~recule/Festival_cinema/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2013-01-14 15:01:42', '2013-01-14 15:01:42', '', 2, 'http://localhost/~recule/Festival_cinema/wordpress/?p=76', 0, 'revision', '', 0),
(77, 1, '2013-01-29 09:17:28', '2013-01-29 08:17:28', '<ul class="slideshow">\n<li><img src="1.jpg" alt=""></li>\n<li><img src="2.jpg" alt=""></li>\n<li><img src="3.jpg" alt=""></li>\n</ul>\n\n\n\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\n\nBon festival !\n\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '5-autosave', '', '', '2013-01-29 09:17:28', '2013-01-29 08:17:28', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2013-01-14 16:12:11', '2013-01-14 15:12:11', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'open', 'open', '', '5-revision-3', '', '', '2013-01-14 16:12:11', '2013-01-14 15:12:11', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=78', 0, 'revision', '', 0),
(79, 1, '2013-01-15 10:52:42', '2013-01-15 09:52:42', '', '37_it_s_still_elementary', '', 'inherit', 'open', 'open', '', '37_it_s_still_elementary', '', '', '2013-01-15 10:52:42', '2013-01-15 09:52:42', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/37_it_s_still_elementary.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-01-15 10:52:43', '2013-01-15 09:52:43', '', 'American boy', '', 'inherit', 'open', 'open', '', 'american-boy-2', '', '', '2013-01-15 10:52:43', '2013-01-15 09:52:43', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2013-01-15 10:52:43', '2013-01-15 09:52:43', '', 'ANDER1', '', 'inherit', 'open', 'open', '', 'ander1', '', '', '2013-01-15 10:52:43', '2013-01-15 09:52:43', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2013-01-15 10:52:44', '2013-01-15 09:52:44', '', 'ANDER2', '', 'inherit', 'open', 'open', '', 'ander2', '', '', '2013-01-15 10:52:44', '2013-01-15 09:52:44', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/ANDER2.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2013-01-15 10:52:44', '2013-01-15 09:52:44', '', 'COWBOY FOREVER', '', 'inherit', 'open', 'open', '', 'cowboy-forever-2', '', '', '2013-01-15 10:52:44', '2013-01-15 09:52:44', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2013-01-15 10:52:45', '2013-01-15 09:52:45', '', 'EL NINO PEZ 1', '', 'inherit', 'open', 'open', '', 'el-nino-pez-1', '', '', '2013-01-15 10:52:45', '2013-01-15 09:52:45', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-01-15 10:52:45', '2013-01-15 09:52:45', '', 'EL NINO PEZ  2', '', 'inherit', 'open', 'open', '', 'el-nino-pez-2', '', '', '2013-01-15 10:52:45', '2013-01-15 09:52:45', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/EL-NINO-PEZ-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2013-01-15 10:52:46', '2013-01-15 09:52:46', '', 'EN_COLO', '', 'inherit', 'open', 'open', '', 'en_colo', '', '', '2013-01-15 10:52:46', '2013-01-15 09:52:46', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLO.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2013-01-15 10:52:46', '2013-01-15 09:52:46', '', 'EN_COLOricco', '', 'inherit', 'open', 'open', '', 'en_coloricco', '', '', '2013-01-15 10:52:46', '2013-01-15 09:52:46', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2013-01-15 10:52:47', '2013-01-15 09:52:47', '', 'I can''t think straight 2', '', 'inherit', 'open', 'open', '', 'i-cant-think-straight-2', '', '', '2013-01-15 10:52:47', '2013-01-15 09:52:47', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/I-cant-think-straight-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2013-01-15 10:52:47', '2013-01-15 09:52:47', '', 'I_cant_think_straight_001', '', 'inherit', 'open', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-15 10:52:47', '2013-01-15 09:52:47', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2013-01-15 10:52:48', '2013-01-15 09:52:48', '', 'ItsElementaryGBan', '', 'inherit', 'open', 'open', '', 'itselementarygban', '', '', '2013-01-15 10:52:48', '2013-01-15 09:52:48', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2013-01-15 10:52:48', '2013-01-15 09:52:48', '', 'Odile', '', 'inherit', 'open', 'open', '', 'odile-2', '', '', '2013-01-15 10:52:48', '2013-01-15 09:52:48', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-01-15 10:52:49', '2013-01-15 09:52:49', '', 'OMAR_', '', 'inherit', 'open', 'open', '', 'omar_', '', '', '2013-01-15 10:52:49', '2013-01-15 09:52:49', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2013-01-15 10:52:49', '2013-01-15 09:52:49', '', 'Os sapatos de Aristeu', '', 'inherit', 'open', 'open', '', 'os-sapatos-de-aristeu-2', '', '', '2013-01-15 10:52:49', '2013-01-15 09:52:49', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2013-01-15 10:52:50', '2013-01-15 09:52:50', '', 'PAULINE_1', '', 'inherit', 'open', 'open', '', 'pauline_1', '', '', '2013-01-15 10:52:50', '2013-01-15 09:52:50', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2013-01-15 09:47:01', '2013-01-15 08:47:01', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'open', 'open', '', '70-revision-4', '', '', '2013-01-15 09:47:01', '2013-01-15 08:47:01', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2013-01-15 09:38:41', '2013-01-15 08:38:41', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer.\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'open', 'open', '', '68-revision-2', '', '', '2013-01-15 09:38:41', '2013-01-15 08:38:41', '', 68, 'http://localhost/~recule/Festival_cinema/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2013-01-15 09:35:39', '2013-01-15 08:35:39', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\r\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'open', 'open', '', '64-revision-3', '', '', '2013-01-15 09:35:39', '2013-01-15 08:35:39', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2013-01-15 09:28:08', '2013-01-15 08:28:08', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'open', 'open', '', '48-revision-5', '', '', '2013-01-15 09:28:08', '2013-01-15 08:28:08', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-15 09:26:07', '2013-01-15 08:26:07', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'open', 'open', '', '45-revision-4', '', '', '2013-01-15 09:26:07', '2013-01-15 08:26:07', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-15 09:24:26', '2013-01-15 08:24:26', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\r\nle bétail...', 'Cowboy Forever', '', 'inherit', 'open', 'open', '', '42-revision-4', '', '', '2013-01-15 09:24:26', '2013-01-15 08:24:26', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=100', 0, 'revision', '', 0),
(101, 1, '2013-01-15 09:22:55', '2013-01-15 08:22:55', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'open', 'open', '', '37-revision-4', '', '', '2013-01-15 09:22:55', '2013-01-15 08:22:55', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-15 09:21:49', '2013-01-15 08:21:49', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'open', 'open', '', '35-revision-3', '', '', '2013-01-15 09:21:49', '2013-01-15 08:21:49', '', 35, 'http://localhost/~recule/Festival_cinema/wordpress/?p=102', 0, 'revision', '', 0),
(103, 1, '2013-01-15 09:20:39', '2013-01-15 08:20:39', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'open', 'open', '', '26-revision-4', '', '', '2013-01-15 09:20:39', '2013-01-15 08:20:39', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=103', 0, 'revision', '', 0),
(104, 1, '2013-01-15 09:19:52', '2013-01-15 08:19:52', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'open', 'open', '', '24-revision-4', '', '', '2013-01-15 09:19:52', '2013-01-15 08:19:52', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2013-01-15 09:19:08', '2013-01-15 08:19:08', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '21-revision-7', '', '', '2013-01-15 09:19:08', '2013-01-15 08:19:08', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=105', 0, 'revision', '', 0),
(106, 1, '2013-01-15 11:03:00', '2013-01-15 10:03:00', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '21-revision-8', '', '', '2013-01-15 11:03:00', '2013-01-15 10:03:00', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2013-01-15 11:14:33', '2013-01-15 10:14:33', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.', 'En colo', '', 'inherit', 'open', 'open', '', '21-revision-9', '', '', '2013-01-15 11:14:33', '2013-01-15 10:14:33', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=107', 0, 'revision', '', 0),
(109, 1, '2013-01-15 10:55:20', '2013-01-15 09:55:20', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '70-revision-5', '', '', '2013-01-15 10:55:20', '2013-01-15 09:55:20', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=109', 0, 'revision', '', 0),
(110, 1, '2013-01-15 10:56:37', '2013-01-15 09:56:37', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer.\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'closed', 'closed', '', '68-revision-3', '', '', '2013-01-15 10:56:37', '2013-01-15 09:56:37', '', 68, 'http://localhost/~recule/Festival_cinema/wordpress/?p=110', 0, 'revision', '', 0),
(111, 1, '2013-01-15 10:57:59', '2013-01-15 09:57:59', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\r\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'closed', 'closed', '', '64-revision-4', '', '', '2013-01-15 10:57:59', '2013-01-15 09:57:59', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=111', 0, 'revision', '', 0),
(112, 1, '2013-01-15 10:58:22', '2013-01-15 09:58:22', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'closed', 'closed', '', '48-revision-6', '', '', '2013-01-15 10:58:22', '2013-01-15 09:58:22', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=112', 0, 'revision', '', 0),
(113, 1, '2013-01-15 10:59:05', '2013-01-15 09:59:05', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'closed', '', '45-revision-5', '', '', '2013-01-15 10:59:05', '2013-01-15 09:59:05', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=113', 0, 'revision', '', 0),
(114, 1, '2013-01-15 10:59:24', '2013-01-15 09:59:24', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\r\nle bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'closed', '', '42-revision-5', '', '', '2013-01-15 10:59:24', '2013-01-15 09:59:24', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=114', 0, 'revision', '', 0),
(115, 1, '2013-01-15 10:59:51', '2013-01-15 09:59:51', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'closed', 'closed', '', '37-revision-5', '', '', '2013-01-15 10:59:51', '2013-01-15 09:59:51', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=115', 0, 'revision', '', 0),
(116, 1, '2013-01-15 11:02:05', '2013-01-15 10:02:05', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'closed', 'closed', '', '35-revision-4', '', '', '2013-01-15 11:02:05', '2013-01-15 10:02:05', '', 35, 'http://localhost/~recule/Festival_cinema/wordpress/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-15 11:02:25', '2013-01-15 10:02:25', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'closed', 'closed', '', '26-revision-5', '', '', '2013-01-15 11:02:25', '2013-01-15 10:02:25', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=117', 0, 'revision', '', 0),
(118, 1, '2013-01-15 11:02:41', '2013-01-15 10:02:41', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'closed', '', '24-revision-5', '', '', '2013-01-15 11:02:41', '2013-01-15 10:02:41', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-01-21 15:54:30', '2013-01-21 14:54:30', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.http://localhost/~recule/Festival_cinema/wordpress/wp-admin/media-upload.php?post_id=21&amp;type=image&amp;TB_iframe=1', 'En colo', '', 'inherit', 'closed', 'closed', '', '21-revision-10', '', '', '2013-01-21 15:54:30', '2013-01-21 14:54:30', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-15 10:32:29', '2013-01-15 09:32:29', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '5-revision-4', '', '', '2013-01-15 10:32:29', '2013-01-15 09:32:29', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=120', 0, 'revision', '', 0),
(121, 1, '2013-01-14 16:33:54', '2013-01-14 15:33:54', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS\r\n\r\nTarifs : Plein tarif : 7,50 €\r\n\r\nPass Festival : 25 € (5 séances)\r\n\r\nSoirée courts métrages : 6 € (vendredi)\r\n\r\n2 séances consécutives le samedi ou le dimanche : 12 € Cartes &amp; réductions acceptées :\r\n\r\nCartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans...\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi.\r\n\r\nAssociation dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi)\r\n\r\nProgrammation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes)\r\n\r\nCommunication &amp; partenariats : Christel Guillard\r\n\r\nConception graphique : Yannis Bellair\r\n\r\nConception du site internet : rccc Impression : Prevost Offset\r\n\r\nContacts : festival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'Infos pratiques', '', 'inherit', 'closed', 'closed', '', '11-revision-2', '', '', '2013-01-14 16:33:54', '2013-01-14 15:33:54', '', 11, 'http://localhost/~recule/Festival_cinema/wordpress/?p=121', 0, 'revision', '', 0),
(122, 1, '2013-01-14 16:35:04', '2013-01-14 15:35:04', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL - Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay - Yagg.com\r\n\r\n- France Bleu', 'Partenaires', '', 'inherit', 'closed', 'closed', '', '14-revision-2', '', '', '2013-01-14 16:35:04', '2013-01-14 15:35:04', '', 14, 'http://localhost/~recule/Festival_cinema/wordpress/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-14 16:35:53', '2013-01-14 15:35:53', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien\r\n\r\n- Loiret - Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu - Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'Remerciements', '', 'inherit', 'closed', 'closed', '', '16-revision-2', '', '', '2013-01-14 16:35:53', '2013-01-14 15:35:53', '', 16, 'http://localhost/~recule/Festival_cinema/wordpress/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-21 17:13:20', '2013-01-21 16:13:20', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'closed', '', '45-revision-6', '', '', '2013-01-21 17:13:20', '2013-01-21 16:13:20', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-28 16:10:20', '2013-01-28 15:10:20', 'Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy', '', 'inherit', 'closed', 'closed', '', '45-revision-7', '', '', '2013-01-28 16:10:20', '2013-01-28 15:10:20', '', 45, 'http://localhost/~recule/Festival_cinema/wordpress/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-21 17:13:19', '2013-01-21 16:13:19', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service\r\nde la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser\r\ns’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer...\r\nLucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer.\r\nEntre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'closed', 'closed', '', '68-revision-4', '', '', '2013-01-21 17:13:19', '2013-01-21 16:13:19', '', 68, 'http://localhost/~recule/Festival_cinema/wordpress/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-01-28 16:14:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2013-01-28 16:14:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=127', 0, 'post', '', 0),
(128, 1, '2013-01-28 16:14:30', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2013-01-28 16:14:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=128', 0, 'post', '', 0),
(129, 1, '2013-01-21 17:13:20', '2013-01-21 16:13:20', 'Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper\r\nle bétail...', 'Cowboy Forever', '', 'inherit', 'closed', 'closed', '', '42-revision-6', '', '', '2013-01-21 17:13:20', '2013-01-21 16:13:20', '', 42, 'http://localhost/~recule/Festival_cinema/wordpress/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-01-21 17:13:21', '2013-01-21 16:13:21', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'closed', 'closed', '', '37-revision-6', '', '', '2013-01-21 17:13:21', '2013-01-21 16:13:21', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-01-28 16:22:27', '2013-01-28 15:22:27', 'Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu ', '', 'inherit', 'closed', 'closed', '', '37-revision-7', '', '', '2013-01-28 16:22:27', '2013-01-28 15:22:27', '', 37, 'http://localhost/~recule/Festival_cinema/wordpress/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-01-21 17:13:22', '2013-01-21 16:13:22', 'Une boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...', 'Odile', '', 'inherit', 'closed', 'closed', '', '35-revision-5', '', '', '2013-01-21 17:13:22', '2013-01-21 16:13:22', '', 35, 'http://localhost/~recule/Festival_cinema/wordpress/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-21 17:13:22', '2013-01-21 16:13:22', 'C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline', '', 'inherit', 'closed', 'closed', '', '24-revision-6', '', '', '2013-01-21 17:13:22', '2013-01-21 16:13:22', '', 24, 'http://localhost/~recule/Festival_cinema/wordpress/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-01-21 17:13:22', '2013-01-21 16:13:22', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar ', '', 'inherit', 'closed', 'closed', '', '26-revision-6', '', '', '2013-01-21 17:13:22', '2013-01-21 16:13:22', '', 26, 'http://localhost/~recule/Festival_cinema/wordpress/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-01-21 17:13:23', '2013-01-21 16:13:23', 'Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.http://localhost/~recule/Festival_cinema/wordpress/wp-admin/media-upload.php?post_id=21&amp;type=image&amp;TB_iframe=1', 'En colo', '', 'inherit', 'closed', 'closed', '', '21-revision-11', '', '', '2013-01-21 17:13:23', '2013-01-21 16:13:23', '', 21, 'http://localhost/~recule/Festival_cinema/wordpress/?p=135', 0, 'revision', '', 0),
(136, 1, '2013-01-21 17:13:19', '2013-01-21 16:13:19', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '70-revision-6', '', '', '2013-01-21 17:13:19', '2013-01-21 16:13:19', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=136', 0, 'revision', '', 0),
(137, 1, '2013-01-28 16:34:47', '2013-01-28 15:34:47', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '70-revision-7', '', '', '2013-01-28 16:34:47', '2013-01-28 15:34:47', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=137', 0, 'revision', '', 0),
(138, 1, '2013-01-28 16:36:06', '2013-01-28 15:36:06', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne.\r\n\r\nTout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide.\r\n\r\nEt pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes.\r\n\r\nCe premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '70-revision-8', '', '', '2013-01-28 16:36:06', '2013-01-28 15:36:06', '', 70, 'http://localhost/~recule/Festival_cinema/wordpress/?p=138', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(139, 1, '2013-01-21 17:13:19', '2013-01-21 16:13:19', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Anders’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander...\r\n\r\nConsidéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse\r\nle temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer...\r\n\r\nCe premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.', 'ANDER ', '', 'inherit', 'closed', 'closed', '', '64-revision-5', '', '', '2013-01-21 17:13:19', '2013-01-21 16:13:19', '', 64, 'http://localhost/~recule/Festival_cinema/wordpress/?p=139', 0, 'revision', '', 0),
(140, 1, '2013-01-21 17:13:20', '2013-01-21 16:13:20', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'closed', 'closed', '', '48-revision-7', '', '', '2013-01-21 17:13:20', '2013-01-21 16:13:20', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-01-28 16:40:49', '2013-01-28 15:40:49', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'closed', 'closed', '', '48-revision-8', '', '', '2013-01-28 16:40:49', '2013-01-28 15:40:49', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=141', 0, 'revision', '', 0),
(142, 1, '2013-01-28 16:42:33', '2013-01-28 15:42:33', 'Premier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les\r\nclasses allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'C’est élémentaire - Parler de l’homosexualité à l’école', '', 'inherit', 'closed', 'closed', '', '48-revision-9', '', '', '2013-01-28 16:42:33', '2013-01-28 15:42:33', '', 48, 'http://localhost/~recule/Festival_cinema/wordpress/?p=142', 0, 'revision', '', 0),
(143, 1, '2013-01-21 17:13:45', '2013-01-21 16:13:45', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '5-revision-5', '', '', '2013-01-21 17:13:45', '2013-01-21 16:13:45', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=143', 0, 'revision', '', 0),
(144, 1, '2013-01-29 09:18:14', '2013-01-29 08:18:14', '<ul class="slideshow">\r\n<li><img src="http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/American-boy-624x416.png" alt=""></li>\r\n<li><img src="http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/COWBOY-FOREVER-624x416.jpg" alt=""></li>\r\n<li><img src="http://localhost/~recule/Festival_cinema/wordpress/wp-content/uploads/2013/01/Os-sapatos-de-Aristeu-624x416.jpg" alt=""></li>\r\n</ul>\r\n\r\n\r\n\r\nAprès trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '5-revision-6', '', '', '2013-01-29 09:18:14', '2013-01-29 08:18:14', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=144', 0, 'revision', '', 0),
(145, 1, '2013-01-29 10:36:40', '2013-01-29 09:36:40', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre. Au programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans. En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie. Autre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France 12 en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire. Enfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition.\r\n\r\nBon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'closed', '', '5-revision-7', '', '', '2013-01-29 10:36:40', '2013-01-29 09:36:40', '', 5, 'http://localhost/~recule/Festival_cinema/wordpress/?p=145', 0, 'revision', '', 0),
(146, 1, '2013-01-30 09:11:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2013-01-30 09:11:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/~recule/Festival_cinema/wordpress/?p=146', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Films', 'films', 0),
(3, 'Courts-métrages', 'courts-metrage', 0),
(5, 'Navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(8, 5, 0),
(9, 5, 0),
(10, 5, 0),
(18, 5, 0),
(19, 5, 0),
(20, 5, 0),
(21, 3, 0),
(24, 3, 0),
(26, 3, 0),
(35, 3, 0),
(37, 3, 0),
(42, 3, 0),
(45, 3, 0),
(48, 2, 0),
(64, 2, 0),
(68, 2, 0),
(70, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 7),
(5, 5, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'alex'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '146'),
(15, 1, 'wp_festival_user-settings', 'editor=html&hidetb=1&libraryContent=browse'),
(16, 1, 'wp_festival_user-settings-time', '1358243718'),
(17, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '5'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'alex', '$P$BhzO8Vs5eDJtwCTGjY.CpJUYwsfgEf0', 'alex', 'Alexandre.recule@gmail.com', '', '2013-01-14 15:01:40', '', 0, 'alex');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
