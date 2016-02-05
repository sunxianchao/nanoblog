http://wpceo.com/wordpress-database-table-construct/
http://www.cnblogs.com/meetrice/archive/2013/02/16/2913144.html

-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2016 年 02 月 05 日 10:56
-- 服务器版本: 5.6.23
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_sunxc`
--

-- --------------------------------------------------------

--
-- 表的结构 `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- 表的结构 `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress 先生', '', 'http://wordpress.org/', '', '2016-02-04 07:57:49', '2016-02-04 07:57:49', '您好，这是一条评论。<br />要删除评论，请先登录，然后再查看这篇文章的评论。在那里，您可以看到编辑或者删除评论的选项。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://wp4sae.org/', 'WordPress for SAE', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wp4sae.org/feed/'),
(2, 'http://cn.wordpress.org/', 'WordPress China 博客', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://cn.wordpress.org/feed/');

-- --------------------------------------------------------

--
-- 表的结构 `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=158 ;

--
-- 转存表中的数据 `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://1.sunxc.applinzi.com', 'yes'),
(2, 'blogname', 'Sunxc&#039;s Blog', 'yes'),
(3, 'blogdescription', '又一个 WordPress 站点', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'sunxc@vip.qq.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y 年 n 月 j 日', 'yes'),
(24, 'time_format', 'a g:i', 'yes'),
(25, 'links_updated_date_format', 'Y 年 n 月 j 日a g:i', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:4:{i:0;s:19:"akismet/akismet.php";i:1;s:19:"duoshuo/duoshuo.php";i:2;s:36:"google-sitemap-generator/sitemap.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(37, 'home', 'http://1.sunxc.applinzi.com', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'twentyeleven', 'yes'),
(46, 'stylesheet', 'twentyeleven', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21115', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', 'Asia/Shanghai', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21115', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1454642855;a:1:{s:21:"duoshuo_sync_log_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1454659079;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1454659089;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1454724728;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, '_site_transient_timeout_browser_e96856c66bf94630598dfc7e5a326449', '1455177490', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.1";s:12:"last_checked";i:1454620818;}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1454639707;}', 'yes'),
(126, '_site_transient_timeout_theme_roots', '1454640072', 'yes'),
(127, '_site_transient_theme_roots', 'a:3:{s:5:"inove";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1454639633;}', 'yes'),
(112, '_site_transient_browser_e96856c66bf94630598dfc7e5a326449', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"48.0.2564.97";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(113, 'dashboard_widget_options', 'a:3:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:27:"http://1.sunxc.applinzi.com";s:4:"link";s:103:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://1.sunxc.applinzi.com/";s:3:"url";s:136:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://1.sunxc.applinzi.com/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:18:"http://wp4sae.org/";s:3:"url";s:23:"http://wp4sae.org/feed/";s:5:"title";s:22:"WordPress for SAE Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}}', 'yes'),
(124, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1454681471', 'no'),
(125, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS 错误</strong>：A feed could not be found at http://wp4sae.org/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div>', 'no'),
(118, 'can_compress_scripts', '1', 'yes'),
(128, '_site_transient_timeout_wporg_theme_feature_list', '1454650434', 'yes'),
(129, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}}', 'yes'),
(130, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1454681476', 'no'),
(131, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS 错误</strong>：A feed could not be found at http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://1.sunxc.applinzi.com/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p>', 'no'),
(133, '_transient_timeout_plugin_slugs', '1454726107', 'no'),
(134, '_transient_plugin_slugs', 'a:11:{i:0;s:25:"add-to-any/add-to-any.php";i:1;s:19:"akismet/akismet.php";i:2;s:50:"google-analytics-for-wordpress/googleanalytics.php";i:3;s:36:"google-sitemap-generator/sitemap.php";i:4;s:9:"hello.php";i:5;s:25:"jiathis/jiathis-share.php";i:6;s:24:"lightbox-2/lightbox2.php";i:7;s:39:"si-captcha-for-wordpress/si-captcha.php";i:8;s:41:"wordpress-importer/wordpress-importer.php";i:9;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:10;s:19:"duoshuo/duoshuo.php";}', 'no'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(136, 'duoshuo_debug', '0', 'yes'),
(137, 'duoshuo_api_hostname', 'api.duoshuo.com', 'yes'),
(138, 'duoshuo_cron_sync_enabled', '1', 'yes'),
(139, 'duoshuo_seo_enabled', '1', 'yes'),
(140, 'duoshuo_cc_fix', '1', 'yes'),
(141, 'duoshuo_social_login_enabled', '1', 'yes'),
(142, 'duoshuo_comments_wrapper_intro', '', 'yes'),
(143, 'duoshuo_comments_wrapper_outro', '', 'yes'),
(144, 'duoshuo_last_log_id', '0', 'yes'),
(145, 'akismet_available_servers', 'a:2:{s:13:"192.0.123.250";b:1;s:13:"192.0.123.251";b:1;}', 'yes'),
(146, 'akismet_connectivity_time', '1454639614', 'yes'),
(147, 'duoshuo_short_name', 'sunxian99', 'yes'),
(148, 'duoshuo_secret', '92d9957225c6e430537677cc34b4f16e', 'yes'),
(149, 'duoshuo_notice', '', 'yes'),
(152, 'akismet_alert_code', '10003', 'yes'),
(151, 'duoshuo_sync_lock', '0', 'yes'),
(153, 'akismet_alert_msg', 'Howdy! It looks like you have an Akismet Personal subscription, which does not appear to be appropriate for your current usage. In order to continue using Akismet in this way, you will need to upgrade your subscription to one of our Enterprise or High Volume plans. You can click on the link below for further details.', 'yes'),
(154, 'akismet_discard_month', 'true', 'yes'),
(155, 'akismet_show_user_comments_approved', 'true', 'yes'),
(156, 'wordpress_api_key', '4df98f8c9b2d', 'yes'),
(157, 'sm_rewrite_done', '$Id: sitemap-loader.php 419868 2011-08-05 18:57:00Z arnee $', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- 表的结构 `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-02-04 07:57:49', '2016-02-04 07:57:49', '欢迎使用 WordPress for SAE。如果您看到这篇文章，表示您的Blog已经在SAE安装成功。您可以编辑或者删除它，然后开始您的博客！\n\nWordPress for SAE 技术支持博客：<a title="WordPress for SAE 技术支持" href="http://wp4sae.org">http://wp4sae.org</a>。请关注此博客，以及时获取最新信息。\n如果您在使用WordPress for SAE的过程中，有任何疑问、意见或建议，请到<a title="WordPress for SAE 技术支持" href="http://wp4sae.org">技术支持博客</a>提出，我们将会尽快为您解答。\n\nWordPress for SAE 具有以下特性：\n<ol>\n	<li>数据库主从分离，提升性能，节省云豆消耗</li>\n	<li>轻量的Memcache缓存模块，加快网页显示速度的同时减少资源消耗，为您节省云豆。</li>\n	<li>已内置urlrewrite规则，用户设置固定链接时只需要在控制板中设置一下即可，无需再修改appconfig(.htaccess)配置</li>\n	<li>附件直接上传到Storage，支持图片附件的缩略图生成。</li>\n</ol>\n\nWordPress for SAE 的限制：\n由于SAE不支持本地代码目录写入，故无法支持在线安装主题、插件，在线编辑主题、插件功能。\n', '欢迎使用 WordPress for SAE\n', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-02-04 07:57:49', '2016-02-04 07:57:49', '', 0, 'http://1.sunxc.applinzi.com/?p=1', 0, 'post', '', 1),
(2, 1, '2016-02-04 07:57:49', '2016-02-04 07:57:49', '这是示范页面。页面和博客文章不同，它的位置是固定的，通常会在站点导航栏显示。很多用户都创建一个“关于”页面，向访客介绍自己。例如，个人博客通常有类似这样的介绍：\n\n<blockquote>欢迎！我白天是个邮递员，晚上就是个有抱负的演员。这是我的博客。我住在天朝的帝都，有条叫做 Jack 的狗。</blockquote>\n\n... 公司博客可以这样写：\n\n<blockquote>XYZ Doohickey 公司成立于 1971 年，自从建立以来，我们一直向社会贡献着优秀 doohicky。我们的公司总部位于天朝魔都，有着超过两千名员工，对魔都政府税收有着巨大贡献。</blockquote>\n\n您可以访问<a href="http://1.sunxc.applinzi.com/wp-admin/">仪表盘</a>，删除本页面，然后添加您自己的内容。祝您使用愉快！', '示例页面', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2016-02-04 07:57:49', '2016-02-04 07:57:49', '', 0, 'http://1.sunxc.applinzi.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-02-04 15:58:10', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-04 15:58:10', '0000-00-00 00:00:00', '', 0, 'http://1.sunxc.applinzi.com/?p=3', 0, 'post', '', 0),
(4, 1, '2016-02-05 10:12:08', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-02-05 10:12:08', '0000-00-00 00:00:00', '', 0, 'http://1.sunxc.applinzi.com/?p=4', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, '链接表', '%e9%93%be%e6%8e%a5%e8%a1%a8', 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 2, 0),
(1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7);

-- --------------------------------------------------------

--
-- 表的结构 `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'sunxc'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wp_user-settings', 'editor=tinymce'),
(16, 1, 'wp_user-settings-time', '1454639138');

-- --------------------------------------------------------

--
-- 表的结构 `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sunxc', '$P$BmSlPLfxLFLzTqOm0C9dK1tOeR7naU.', 'sunxc', 'sunxc@vip.qq.com', '', '2016-02-04 07:57:48', '', 0, 'sunxc');
