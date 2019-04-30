-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2019 at 02:55 PM
-- Server version: 5.6.25-0ubuntu0.15.04.1
-- PHP Version: 7.1.8-1ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress_chairs`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=1729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://demo.pinofran.com/demo/wordpress-chairs', 'yes'),
(2, 'home', 'http://demo.pinofran.com/demo/wordpress-chairs', 'yes'),
(3, 'blogname', 'Logotype', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@wp.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:"advanced-custom-fields/acf.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mainTheme', 'yes'),
(41, 'stylesheet', 'mainTheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1556627290;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1556628945;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556652490;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1556695705;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1534244776;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'mainTheme', 'yes'),
(145, 'theme_mods_maintheme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1534247825;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(159, 'category_children', 'a:0:{}', 'yes'),
(186, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(193, 'recently_activated', 'a:0:{}', 'yes'),
(196, 'ftp_credentials', 'a:3:{s:8:"hostname";s:13:"192.168.1.250";s:8:"username";s:3:"gvz";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(199, 'acf_version', '4.4.12', 'yes'),
(224, 'WPLANG', '', 'yes'),
(225, 'new_admin_email', 'admin@wp.com', 'yes'),
(1260, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.1.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.4";s:7:"version";s:5:"5.0.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:60:"https://downloads.wordpress.org/release/wordpress-4.9.10.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:60:"https://downloads.wordpress.org/release/wordpress-4.9.10.zip";s:10:"no_content";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip";s:11:"new_bundled";s:72:"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip";s:7:"partial";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-8.zip";s:8:"rollback";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-8.zip";}s:7:"current";s:6:"4.9.10";s:7:"version";s:6:"4.9.10";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"4.9.8";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1556625017;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(1725, '_site_transient_timeout_theme_roots', '1556626819', 'no'),
(1726, '_site_transient_theme_roots', 'a:4:{s:9:"mainTheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(1727, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1556625021;s:7:"checked";a:4:{s:9:"mainTheme";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.4";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.4.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.1";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(1728, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1556625022;s:7:"checked";a:3:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.8";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"5.7.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.9";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'menu-pages.php'),
(3, 2, '_edit_lock', '1546766884:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1546771926:1'),
(8, 7, '_wp_attached_file', '2018/08/item-1.jpg'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-1-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2018/08/item-2.jpg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-2-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 9, '_wp_attached_file', '2018/08/item-3.jpg'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-3-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2018/08/item-4.jpg'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-4-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2018/08/item-5.jpg'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-5-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2018/08/item-6.jpg'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:354;s:4:"file";s:18:"2018/08/item-6.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"item-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"item-6-266x300.jpg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 6, '_thumbnail_id', '7'),
(23, 14, '_edit_last', '1'),
(24, 14, '_edit_lock', '1534401108:1'),
(25, 14, '_thumbnail_id', '8'),
(28, 16, '_edit_last', '1'),
(29, 16, '_edit_lock', '1545306982:1'),
(30, 16, '_thumbnail_id', '9'),
(33, 18, '_edit_last', '1'),
(34, 18, '_edit_lock', '1546771935:1'),
(35, 18, '_thumbnail_id', '10'),
(38, 20, '_edit_last', '1'),
(39, 20, '_thumbnail_id', '11'),
(42, 20, '_edit_lock', '1534331050:1'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1546766984:1'),
(45, 22, '_thumbnail_id', '12'),
(57, 2, '_edit_last', '1'),
(58, 29, '_edit_last', '1'),
(59, 29, '_edit_lock', '1546766878:1'),
(60, 31, '_edit_last', '1'),
(61, 31, '_edit_lock', '1546766958:1'),
(65, 29, '_wp_page_template', 'menu-pages.php'),
(66, 31, '_wp_page_template', 'menu-pages.php'),
(67, 44, '_menu_item_type', 'post_type'),
(68, 44, '_menu_item_menu_item_parent', '0'),
(69, 44, '_menu_item_object_id', '31'),
(70, 44, '_menu_item_object', 'page'),
(71, 44, '_menu_item_target', ''),
(72, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 44, '_menu_item_xfn', ''),
(74, 44, '_menu_item_url', ''),
(76, 45, '_menu_item_type', 'post_type'),
(77, 45, '_menu_item_menu_item_parent', '0'),
(78, 45, '_menu_item_object_id', '29'),
(79, 45, '_menu_item_object', 'page'),
(80, 45, '_menu_item_target', ''),
(81, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 45, '_menu_item_xfn', ''),
(83, 45, '_menu_item_url', ''),
(85, 46, '_menu_item_type', 'post_type'),
(86, 46, '_menu_item_menu_item_parent', '0'),
(87, 46, '_menu_item_object_id', '2'),
(88, 46, '_menu_item_object', 'page'),
(89, 46, '_menu_item_target', ''),
(90, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 46, '_menu_item_xfn', ''),
(92, 46, '_menu_item_url', ''),
(94, 49, '_edit_last', '1'),
(95, 49, 'field_5b73d70b16728', 'a:14:{s:3:"key";s:19:"field_5b73d70b16728";s:5:"label";s:3:"age";s:4:"name";s:3:"age";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(96, 49, 'field_5b73d72716729', 'a:14:{s:3:"key";s:19:"field_5b73d72716729";s:5:"label";s:6:"weight";s:4:"name";s:6:"weight";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(97, 49, 'field_5b73d7331672a', 'a:14:{s:3:"key";s:19:"field_5b73d7331672a";s:5:"label";s:6:"height";s:4:"name";s:6:"height";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(98, 49, 'field_5b73d7461672b', 'a:14:{s:3:"key";s:19:"field_5b73d7461672b";s:5:"label";s:4:"size";s:4:"name";s:4:"size";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(100, 49, 'position', 'normal'),
(101, 49, 'layout', 'no_box'),
(102, 49, 'hide_on_screen', ''),
(103, 49, '_edit_lock', '1544714870:1'),
(106, 50, 'age', 'age 26 y.o.'),
(107, 50, '_age', 'field_5b73d70b16728'),
(108, 50, 'weight', 'weight 58 kg.'),
(109, 50, '_weight', 'field_5b73d72716729'),
(110, 50, 'height', 'height 181 cm.'),
(111, 50, '_height', 'field_5b73d7331672a'),
(112, 50, 'size', 'size S'),
(113, 50, '_size', 'field_5b73d7461672b'),
(114, 22, 'age', 'age 26 y.o.'),
(115, 22, '_age', 'field_5b73d70b16728'),
(116, 22, 'weight', 'weight 58 kg.'),
(117, 22, '_weight', 'field_5b73d72716729'),
(118, 22, 'height', 'height 181 cm.'),
(119, 22, '_height', 'field_5b73d7331672a'),
(120, 22, 'size', 'size S'),
(121, 22, '_size', 'field_5b73d7461672b'),
(124, 51, 'age', 'age 29 y.o.'),
(125, 51, '_age', 'field_5b73d70b16728'),
(126, 51, 'weight', 'weight 50 kg.'),
(127, 51, '_weight', 'field_5b73d72716729'),
(128, 51, 'height', 'height 172cm.'),
(129, 51, '_height', 'field_5b73d7331672a'),
(130, 51, 'size', 'size XS'),
(131, 51, '_size', 'field_5b73d7461672b'),
(132, 20, 'age', 'age 29 y.o.'),
(133, 20, '_age', 'field_5b73d70b16728'),
(134, 20, 'weight', 'weight 50 kg.'),
(135, 20, '_weight', 'field_5b73d72716729'),
(136, 20, 'height', 'height 172cm.'),
(137, 20, '_height', 'field_5b73d7331672a'),
(138, 20, 'size', 'size XS'),
(139, 20, '_size', 'field_5b73d7461672b'),
(142, 52, 'age', 'age 18 y.o.'),
(143, 52, '_age', 'field_5b73d70b16728'),
(144, 52, 'weight', 'weight 58 kg.5'),
(145, 52, '_weight', 'field_5b73d72716729'),
(146, 52, 'height', 'height 179 cm.'),
(147, 52, '_height', 'field_5b73d7331672a'),
(148, 52, 'size', 'size S'),
(149, 52, '_size', 'field_5b73d7461672b'),
(150, 16, 'age', 'age 18 y.o.'),
(151, 16, '_age', 'field_5b73d70b16728'),
(152, 16, 'weight', 'weight 58 kg.5'),
(153, 16, '_weight', 'field_5b73d72716729'),
(154, 16, 'height', 'height 179 cm.'),
(155, 16, '_height', 'field_5b73d7331672a'),
(156, 16, 'size', 'size S'),
(157, 16, '_size', 'field_5b73d7461672b'),
(160, 53, 'age', 'age 29 y.o5'),
(161, 53, '_age', 'field_5b73d70b16728'),
(162, 53, 'weight', 'weight 62 kg.'),
(163, 53, '_weight', 'field_5b73d72716729'),
(164, 53, 'height', 'height 169cm.'),
(165, 53, '_height', 'field_5b73d7331672a'),
(166, 53, 'size', 'size M'),
(167, 53, '_size', 'field_5b73d7461672b'),
(168, 14, 'age', 'age 21 y.o'),
(169, 14, '_age', 'field_5b73d70b16728'),
(170, 14, 'weight', 'weight 62 kg.'),
(171, 14, '_weight', 'field_5b73d72716729'),
(172, 14, 'height', 'height 169cm.'),
(173, 14, '_height', 'field_5b73d7331672a'),
(174, 14, 'size', 'size M'),
(175, 14, '_size', 'field_5b73d7461672b'),
(178, 54, 'age', 'age 21 y.o'),
(179, 54, '_age', 'field_5b73d70b16728'),
(180, 54, 'weight', 'weight 62 kg.'),
(181, 54, '_weight', 'field_5b73d72716729'),
(182, 54, 'height', 'height 169cm.'),
(183, 54, '_height', 'field_5b73d7331672a'),
(184, 54, 'size', 'size M'),
(185, 54, '_size', 'field_5b73d7461672b'),
(186, 49, 'field_5b740521fce21', 'a:14:{s:3:"key";s:19:"field_5b740521fce21";s:5:"label";s:9:"Instagram";s:4:"name";s:9:"instagram";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(187, 49, 'field_5b74055afce22', 'a:14:{s:3:"key";s:19:"field_5b74055afce22";s:5:"label";s:7:"YouTube";s:4:"name";s:7:"youtube";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(188, 49, 'field_5b74057efce23', 'a:14:{s:3:"key";s:19:"field_5b74057efce23";s:5:"label";s:8:"Facebook";s:4:"name";s:8:"facebook";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(189, 49, 'field_5b74058afce24', 'a:14:{s:3:"key";s:19:"field_5b74058afce24";s:5:"label";s:9:"clothes 1";s:4:"name";s:9:"clothes_1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;}'),
(190, 49, 'field_5b74059cfce25', 'a:14:{s:3:"key";s:19:"field_5b74059cfce25";s:5:"label";s:9:"clothes 2";s:4:"name";s:9:"clothes_2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:8;}'),
(194, 56, 'age', 'age 26 y.o.'),
(195, 56, '_age', 'field_5b73d70b16728'),
(196, 56, 'weight', 'weight 58 kg.'),
(197, 56, '_weight', 'field_5b73d72716729'),
(198, 56, 'height', 'height 181 cm.'),
(199, 56, '_height', 'field_5b73d7331672a'),
(200, 56, 'size', 'size S'),
(201, 56, '_size', 'field_5b73d7461672b'),
(202, 56, 'instagram', 'https://www.instagram.com/'),
(203, 56, '_instagram', 'field_5b740521fce21'),
(204, 56, 'youtube', 'https://www.youtube.com/'),
(205, 56, '_youtube', 'field_5b74055afce22'),
(206, 56, 'facebook', 'https://www.facebook.com/'),
(207, 56, '_facebook', 'field_5b74057efce23'),
(208, 56, 'clothes_1', ''),
(209, 56, '_clothes_1', 'field_5b74058afce24'),
(210, 56, 'clothes_2', ''),
(211, 56, '_clothes_2', 'field_5b74059cfce25'),
(212, 22, 'instagram', 'https://www.instagram.com/'),
(213, 22, '_instagram', 'field_5b740521fce21'),
(214, 22, 'youtube', 'https://www.youtube.com/'),
(215, 22, '_youtube', 'field_5b74055afce22'),
(216, 22, 'facebook', 'https://www.facebook.com/'),
(217, 22, '_facebook', 'field_5b74057efce23'),
(218, 22, 'clothes_1', ''),
(219, 22, '_clothes_1', 'field_5b74058afce24'),
(220, 22, 'clothes_2', ''),
(221, 22, '_clothes_2', 'field_5b74059cfce25'),
(224, 57, 'age', 'age 18 y.o.'),
(225, 57, '_age', 'field_5b73d70b16728'),
(226, 57, 'weight', 'weight 58 kg.5'),
(227, 57, '_weight', 'field_5b73d72716729'),
(228, 57, 'height', 'height 179 cm.'),
(229, 57, '_height', 'field_5b73d7331672a'),
(230, 57, 'size', 'size S'),
(231, 57, '_size', 'field_5b73d7461672b'),
(232, 57, 'instagram', 'https://www.instagram.com/'),
(233, 57, '_instagram', 'field_5b740521fce21'),
(234, 57, 'youtube', 'https://www.youtube.com/'),
(235, 57, '_youtube', 'field_5b74055afce22'),
(236, 57, 'facebook', 'https://www.facebook.com/'),
(237, 57, '_facebook', 'field_5b74057efce23'),
(238, 57, 'clothes_1', ''),
(239, 57, '_clothes_1', 'field_5b74058afce24'),
(240, 57, 'clothes_2', ''),
(241, 57, '_clothes_2', 'field_5b74059cfce25'),
(242, 16, 'instagram', 'https://www.instagram.com/'),
(243, 16, '_instagram', 'field_5b740521fce21'),
(244, 16, 'youtube', 'https://www.youtube.com/'),
(245, 16, '_youtube', 'field_5b74055afce22'),
(246, 16, 'facebook', 'https://www.facebook.com/'),
(247, 16, '_facebook', 'field_5b74057efce23'),
(248, 16, 'clothes_1', ''),
(249, 16, '_clothes_1', 'field_5b74058afce24'),
(250, 16, 'clothes_2', ''),
(251, 16, '_clothes_2', 'field_5b74059cfce25'),
(254, 58, 'age', 'age 21 y.o'),
(255, 58, '_age', 'field_5b73d70b16728'),
(256, 58, 'weight', 'weight 62 kg.'),
(257, 58, '_weight', 'field_5b73d72716729'),
(258, 58, 'height', 'height 169cm.'),
(259, 58, '_height', 'field_5b73d7331672a'),
(260, 58, 'size', 'size M'),
(261, 58, '_size', 'field_5b73d7461672b'),
(262, 58, 'instagram', 'https://www.instagram.com/'),
(263, 58, '_instagram', 'field_5b740521fce21'),
(264, 58, 'youtube', 'https://www.youtube.com/'),
(265, 58, '_youtube', 'field_5b74055afce22'),
(266, 58, 'facebook', 'https://www.facebook.com/'),
(267, 58, '_facebook', 'field_5b74057efce23'),
(268, 58, 'clothes_1', ''),
(269, 58, '_clothes_1', 'field_5b74058afce24'),
(270, 58, 'clothes_2', ''),
(271, 58, '_clothes_2', 'field_5b74059cfce25'),
(272, 14, 'instagram', 'https://www.instagram.com/'),
(273, 14, '_instagram', 'field_5b740521fce21'),
(274, 14, 'youtube', 'https://www.youtube.com/'),
(275, 14, '_youtube', 'field_5b74055afce22'),
(276, 14, 'facebook', 'https://www.facebook.com/'),
(277, 14, '_facebook', 'field_5b74057efce23'),
(278, 14, 'clothes_1', ''),
(279, 14, '_clothes_1', 'field_5b74058afce24'),
(280, 14, 'clothes_2', ''),
(281, 14, '_clothes_2', 'field_5b74059cfce25'),
(290, 59, 'age', 'age 26 y.o.'),
(291, 59, '_age', 'field_5b73d70b16728'),
(292, 59, 'weight', 'weight 58 kg.'),
(293, 59, '_weight', 'field_5b73d72716729'),
(294, 59, 'height', 'height 181 cm.'),
(295, 59, '_height', 'field_5b73d7331672a'),
(296, 59, 'size', 'size S'),
(297, 59, '_size', 'field_5b73d7461672b'),
(298, 59, 'instagram', 'https://www.instagram.com/'),
(299, 59, '_instagram', 'field_5b740521fce21'),
(300, 59, 'youtube', 'https://www.youtube.com/'),
(301, 59, '_youtube', 'field_5b74055afce22'),
(302, 59, 'facebook', 'https://www.facebook.com/'),
(303, 59, '_facebook', 'field_5b74057efce23'),
(304, 59, 'clothes_1', 'https://www.facebook.com/'),
(305, 59, '_clothes_1', 'field_5b74058afce24'),
(306, 59, 'clothes_2', 'https://www.facebook.com/'),
(307, 59, '_clothes_2', 'field_5b74059cfce25'),
(310, 60, 'age', 'age 26 y.o.'),
(311, 60, '_age', 'field_5b73d70b16728'),
(312, 60, 'weight', 'weight 58 kg.'),
(313, 60, '_weight', 'field_5b73d72716729'),
(314, 60, 'height', 'height 181 cm.'),
(315, 60, '_height', 'field_5b73d7331672a'),
(316, 60, 'size', 'size S'),
(317, 60, '_size', 'field_5b73d7461672b'),
(318, 60, 'instagram', 'https://www.instagram.com/'),
(319, 60, '_instagram', 'field_5b740521fce21'),
(320, 60, 'youtube', 'https://www.youtube.com/'),
(321, 60, '_youtube', 'field_5b74055afce22'),
(322, 60, 'facebook', 'https://www.facebook.com/'),
(323, 60, '_facebook', 'field_5b74057efce23'),
(324, 60, 'clothes_1', ''),
(325, 60, '_clothes_1', 'field_5b74058afce24'),
(326, 60, 'clothes_2', ''),
(327, 60, '_clothes_2', 'field_5b74059cfce25'),
(331, 65, '_edit_last', '1'),
(332, 65, '_edit_lock', '1546767748:1'),
(333, 65, '_wp_page_template', 'default'),
(334, 49, 'field_5b742eca688fc', 'a:14:{s:3:"key";s:19:"field_5b742eca688fc";s:5:"label";s:15:"360-degree link";s:4:"name";s:15:"360-degree_link";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:9;}'),
(335, 49, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"1";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(338, 67, 'age', 'age 26 y.o.'),
(339, 67, '_age', 'field_5b73d70b16728'),
(340, 67, 'weight', 'weight 58 kg.'),
(341, 67, '_weight', 'field_5b73d72716729'),
(342, 67, 'height', 'height 181 cm.'),
(343, 67, '_height', 'field_5b73d7331672a'),
(344, 67, 'size', 'size S'),
(345, 67, '_size', 'field_5b73d7461672b'),
(346, 67, 'instagram', 'https://www.instagram.com/'),
(347, 67, '_instagram', 'field_5b740521fce21'),
(348, 67, 'youtube', 'https://www.youtube.com/'),
(349, 67, '_youtube', 'field_5b74055afce22'),
(350, 67, 'facebook', 'https://www.facebook.com/'),
(351, 67, '_facebook', 'field_5b74057efce23'),
(352, 67, 'clothes_1', ''),
(353, 67, '_clothes_1', 'field_5b74058afce24'),
(354, 67, 'clothes_2', ''),
(355, 67, '_clothes_2', 'field_5b74059cfce25'),
(356, 67, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(357, 67, '_360-degree_link', 'field_5b742eca688fc'),
(358, 22, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(359, 22, '_360-degree_link', 'field_5b742eca688fc'),
(362, 68, '_edit_last', '1'),
(363, 68, '_edit_lock', '1546772711:1'),
(364, 68, '_thumbnail_id', '9'),
(367, 69, 'age', 'age 26 y.o.'),
(368, 69, '_age', 'field_5b73d70b16728'),
(369, 69, 'weight', 'weight 50 kg.'),
(370, 69, '_weight', 'field_5b73d72716729'),
(371, 69, 'height', 'height 172cm.'),
(372, 69, '_height', 'field_5b73d7331672a'),
(373, 69, 'size', 'size '),
(374, 69, '_size', 'field_5b73d7461672b'),
(375, 69, 'instagram', 'https://www.instagram.com/'),
(376, 69, '_instagram', 'field_5b740521fce21'),
(377, 69, 'youtube', 'https://www.youtube.com/'),
(378, 69, '_youtube', 'field_5b74055afce22'),
(379, 69, 'facebook', 'https://www.facebook.com/'),
(380, 69, '_facebook', 'field_5b74057efce23'),
(381, 69, 'clothes_1', 'https://www.link.com/'),
(382, 69, '_clothes_1', 'field_5b74058afce24'),
(383, 69, 'clothes_2', 'https://www.link.com/'),
(384, 69, '_clothes_2', 'field_5b74059cfce25'),
(385, 69, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(386, 69, '_360-degree_link', 'field_5b742eca688fc'),
(387, 68, 'age', 'age 26 y.o.'),
(388, 68, '_age', 'field_5b73d70b16728'),
(389, 68, 'weight', 'weight 50 kg.'),
(390, 68, '_weight', 'field_5b73d72716729'),
(391, 68, 'height', 'height 172cm.'),
(392, 68, '_height', 'field_5b73d7331672a'),
(393, 68, 'size', 'size '),
(394, 68, '_size', 'field_5b73d7461672b'),
(395, 68, 'instagram', 'https://www.instagram.com/'),
(396, 68, '_instagram', 'field_5b740521fce21'),
(397, 68, 'youtube', 'https://www.youtube.com/'),
(398, 68, '_youtube', 'field_5b74055afce22'),
(399, 68, 'facebook', 'https://www.facebook.com/'),
(400, 68, '_facebook', 'field_5b74057efce23'),
(401, 68, 'clothes_1', 'https://www.link.com/'),
(402, 68, '_clothes_1', 'field_5b74058afce24'),
(403, 68, 'clothes_2', 'https://www.link.com/'),
(404, 68, '_clothes_2', 'field_5b74059cfce25'),
(405, 68, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(406, 68, '_360-degree_link', 'field_5b742eca688fc'),
(427, 82, '_edit_last', '1'),
(428, 82, '_edit_lock', '1550824811:1'),
(429, 82, '_thumbnail_id', '91'),
(432, 83, 'age', '24'),
(433, 83, '_age', 'field_5b73d70b16728'),
(434, 83, 'weight', '56'),
(435, 83, '_weight', 'field_5b73d72716729'),
(436, 83, 'height', '189'),
(437, 83, '_height', 'field_5b73d7331672a'),
(438, 83, 'size', 'M'),
(439, 83, '_size', 'field_5b73d7461672b'),
(440, 83, 'instagram', 'https://www.instagram.com/asmuskristina/'),
(441, 83, '_instagram', 'field_5b740521fce21'),
(442, 83, 'youtube', 'https://www.youtube.com/channel/UCMCgOm8GZkHp8zJ6l7_hIuA'),
(443, 83, '_youtube', 'field_5b74055afce22'),
(444, 83, 'facebook', 'https://www.facebook.com/yury.dud'),
(445, 83, '_facebook', 'field_5b74057efce23'),
(446, 83, 'clothes_1', 'https://www.herbivoreclothing.com/wildwood-farm-sanctuary-benefit-unisex-tee.html'),
(447, 83, '_clothes_1', 'field_5b74058afce24'),
(448, 83, 'clothes_2', 'https://www.herbivoreclothing.com/sloth-stripe-womens-crew-sock-from-mod-socks.html'),
(449, 83, '_clothes_2', 'field_5b74059cfce25'),
(450, 83, '360-degree_link', 'https://licaropa.sirv.com/Spins/Trainers/Trainers.spin'),
(451, 83, '_360-degree_link', 'field_5b742eca688fc'),
(452, 82, 'age', 'age 24 y.o.'),
(453, 82, '_age', 'field_5b73d70b16728'),
(454, 82, 'weight', 'weight 56 kg.'),
(455, 82, '_weight', 'field_5b73d72716729'),
(456, 82, 'height', 'height 189 cm.'),
(457, 82, '_height', 'field_5b73d7331672a'),
(458, 82, 'size', 'size M'),
(459, 82, '_size', 'field_5b73d7461672b'),
(460, 82, 'instagram', 'https://www.instagram.com/asmuskristina/'),
(461, 82, '_instagram', 'field_5b740521fce21'),
(462, 82, 'youtube', 'https://www.youtube.com/channel/UCMCgOm8GZkHp8zJ6l7_hIuA'),
(463, 82, '_youtube', 'field_5b74055afce22'),
(464, 82, 'facebook', 'https://www.facebook.com/yury.dud'),
(465, 82, '_facebook', 'field_5b74057efce23'),
(466, 82, 'clothes_1', 'https://www.herbivoreclothing.com/wildwood-farm-sanctuary-benefit-unisex-tee.html'),
(467, 82, '_clothes_1', 'field_5b74058afce24'),
(468, 82, 'clothes_2', 'https://www.herbivoreclothing.com/sloth-stripe-womens-crew-sock-from-mod-socks.html'),
(469, 82, '_clothes_2', 'field_5b74059cfce25'),
(470, 82, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(471, 82, '_360-degree_link', 'field_5b742eca688fc'),
(474, 84, 'age', 'age 24 y.o.'),
(475, 84, '_age', 'field_5b73d70b16728'),
(476, 84, 'weight', 'weight 56 kg.'),
(477, 84, '_weight', 'field_5b73d72716729'),
(478, 84, 'height', 'height 189 cm.'),
(479, 84, '_height', 'field_5b73d7331672a'),
(480, 84, 'size', 'size M'),
(481, 84, '_size', 'field_5b73d7461672b'),
(482, 84, 'instagram', 'https://www.instagram.com/asmuskristina/'),
(483, 84, '_instagram', 'field_5b740521fce21'),
(484, 84, 'youtube', 'https://www.youtube.com/channel/UCMCgOm8GZkHp8zJ6l7_hIuA'),
(485, 84, '_youtube', 'field_5b74055afce22'),
(486, 84, 'facebook', 'https://www.facebook.com/yury.dud'),
(487, 84, '_facebook', 'field_5b74057efce23'),
(488, 84, 'clothes_1', 'https://www.herbivoreclothing.com/wildwood-farm-sanctuary-benefit-unisex-tee.html'),
(489, 84, '_clothes_1', 'field_5b74058afce24'),
(490, 84, 'clothes_2', 'https://www.herbivoreclothing.com/sloth-stripe-womens-crew-sock-from-mod-socks.html'),
(491, 84, '_clothes_2', 'field_5b74059cfce25'),
(492, 84, '360-degree_link', 'https://licaropa.sirv.com/Spins/Trainers/Trainers.spin'),
(493, 84, '_360-degree_link', 'field_5b742eca688fc'),
(497, 91, '_wp_attached_file', '2018/08/bluetrainers.jpg'),
(498, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:314;s:6:"height";i:345;s:4:"file";s:24:"2018/08/bluetrainers.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bluetrainers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"bluetrainers-273x300.jpg";s:5:"width";i:273;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"18";s:6:"credit";s:0:"";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1382463528";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(501, 93, 'age', 'age 24 y.o.'),
(502, 93, '_age', 'field_5b73d70b16728'),
(503, 93, 'weight', 'weight 56 kg.'),
(504, 93, '_weight', 'field_5b73d72716729'),
(505, 93, 'height', 'height 189 cm.'),
(506, 93, '_height', 'field_5b73d7331672a'),
(507, 93, 'size', 'size M'),
(508, 93, '_size', 'field_5b73d7461672b'),
(509, 93, 'instagram', 'https://www.instagram.com/asmuskristina/'),
(510, 93, '_instagram', 'field_5b740521fce21'),
(511, 93, 'youtube', 'https://www.youtube.com/channel/UCMCgOm8GZkHp8zJ6l7_hIuA'),
(512, 93, '_youtube', 'field_5b74055afce22'),
(513, 93, 'facebook', 'https://www.facebook.com/yury.dud'),
(514, 93, '_facebook', 'field_5b74057efce23'),
(515, 93, 'clothes_1', 'https://www.herbivoreclothing.com/wildwood-farm-sanctuary-benefit-unisex-tee.html'),
(516, 93, '_clothes_1', 'field_5b74058afce24'),
(517, 93, 'clothes_2', 'https://www.herbivoreclothing.com/sloth-stripe-womens-crew-sock-from-mod-socks.html'),
(518, 93, '_clothes_2', 'field_5b74059cfce25'),
(519, 93, '360-degree_link', 'hello maximilian!'),
(520, 93, '_360-degree_link', 'field_5b742eca688fc'),
(523, 94, 'age', 'age 24 y.o.'),
(524, 94, '_age', 'field_5b73d70b16728'),
(525, 94, 'weight', 'weight 56 kg.'),
(526, 94, '_weight', 'field_5b73d72716729'),
(527, 94, 'height', 'height 189 cm.'),
(528, 94, '_height', 'field_5b73d7331672a'),
(529, 94, 'size', 'size M'),
(530, 94, '_size', 'field_5b73d7461672b'),
(531, 94, 'instagram', 'https://www.instagram.com/asmuskristina/'),
(532, 94, '_instagram', 'field_5b740521fce21'),
(533, 94, 'youtube', 'https://www.youtube.com/channel/UCMCgOm8GZkHp8zJ6l7_hIuA'),
(534, 94, '_youtube', 'field_5b74055afce22'),
(535, 94, 'facebook', 'https://www.facebook.com/yury.dud'),
(536, 94, '_facebook', 'field_5b74057efce23'),
(537, 94, 'clothes_1', 'https://www.herbivoreclothing.com/wildwood-farm-sanctuary-benefit-unisex-tee.html'),
(538, 94, '_clothes_1', 'field_5b74058afce24'),
(539, 94, 'clothes_2', 'https://www.herbivoreclothing.com/sloth-stripe-womens-crew-sock-from-mod-socks.html'),
(540, 94, '_clothes_2', 'field_5b74059cfce25'),
(541, 94, '360-degree_link', 'https://licaropa.sirv.com/Spins/Egg-Chair/Egg%20Chair%20Anniversary%2012.spin'),
(542, 94, '_360-degree_link', 'field_5b742eca688fc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-08-14 07:28:10', '2018-08-14 07:28:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About', '', 'publish', 'closed', 'open', '', 'about', '', '', '2018-08-15 11:23:49', '2018-08-15 11:23:49', '', 0, 'http://index.htm/?page_id=2', 0, 'page', '', 0),
(6, 1, '2018-08-14 13:53:09', '2018-08-14 13:53:09', '', 'Name', '', 'publish', 'open', 'open', '', 'name', '', '', '2018-08-14 13:53:09', '2018-08-14 13:53:09', '', 0, 'http://index.htm/?p=6', 0, 'post', '', 0),
(7, 1, '2018-08-14 13:52:32', '2018-08-14 13:52:32', '', 'item-1', '', 'inherit', 'open', 'closed', '', 'item-1', '', '', '2018-08-14 13:52:32', '2018-08-14 13:52:32', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-08-14 13:52:32', '2018-08-14 13:52:32', '', 'item-2', '', 'inherit', 'open', 'closed', '', 'item-2', '', '', '2018-08-14 13:52:32', '2018-08-14 13:52:32', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2018-08-14 13:52:33', '2018-08-14 13:52:33', '', 'item-3', '', 'inherit', 'open', 'closed', '', 'item-3', '', '', '2018-08-14 13:52:33', '2018-08-14 13:52:33', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2018-08-14 13:52:33', '2018-08-14 13:52:33', '', 'item-4', '', 'inherit', 'open', 'closed', '', 'item-4', '', '', '2018-08-14 13:52:33', '2018-08-14 13:52:33', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2018-08-14 13:52:34', '2018-08-14 13:52:34', '', 'item-5', '', 'inherit', 'open', 'closed', '', 'item-5', '', '', '2018-08-14 13:52:34', '2018-08-14 13:52:34', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-08-14 13:52:34', '2018-08-14 13:52:34', '', 'item-6', '', 'inherit', 'open', 'closed', '', 'item-6', '', '', '2018-08-14 13:52:34', '2018-08-14 13:52:34', '', 6, 'http://index.htm/wp-content/uploads/2018/08/item-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-08-14 13:53:09', '2018-08-14 13:53:09', '', 'Name', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-08-14 13:53:09', '2018-08-14 13:53:09', '', 6, 'http://index.htm/2018/08/14/6-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-08-14 13:53:31', '2018-08-14 13:53:31', '', 'Name', '', 'publish', 'open', 'open', '', 'name-2', '', '', '2018-08-15 10:53:16', '2018-08-15 10:53:16', '', 0, 'http://index.htm/?p=14', 0, 'post', '', 0),
(15, 1, '2018-08-14 13:53:31', '2018-08-14 13:53:31', '', 'Name', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-08-14 13:53:31', '2018-08-14 13:53:31', '', 14, 'http://index.htm/2018/08/14/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-08-14 13:53:49', '2018-08-14 13:53:49', '', 'Name', '', 'publish', 'open', 'open', '', 'name-3', '', '', '2018-08-15 10:53:04', '2018-08-15 10:53:04', '', 0, 'http://index.htm/?p=16', 0, 'post', '', 0),
(17, 1, '2018-08-14 13:53:49', '2018-08-14 13:53:49', '', 'Name', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-08-14 13:53:49', '2018-08-14 13:53:49', '', 16, 'http://index.htm/2018/08/14/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-08-14 13:54:18', '2018-08-14 13:54:18', '', 'Name', '', 'publish', 'open', 'open', '', 'name-4', '', '', '2018-08-15 11:04:18', '2018-08-15 11:04:18', '', 0, 'http://index.htm/?p=18', 0, 'post', '', 0),
(19, 1, '2018-08-14 13:54:18', '2018-08-14 13:54:18', '', 'Name', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-08-14 13:54:18', '2018-08-14 13:54:18', '', 18, 'http://index.htm/2018/08/14/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-08-14 13:54:31', '2018-08-14 13:54:31', '', 'Name', '', 'publish', 'open', 'open', '', 'name-5', '', '', '2018-08-15 11:04:10', '2018-08-15 11:04:10', '', 0, 'http://index.htm/?p=20', 0, 'post', '', 0),
(21, 1, '2018-08-14 13:54:31', '2018-08-14 13:54:31', '', 'Name', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-14 13:54:31', '2018-08-14 13:54:31', '', 20, 'http://index.htm/2018/08/14/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-14 13:54:49', '2018-08-14 13:54:49', '', 'Name', '', 'publish', 'open', 'open', '', 'name-6', '', '', '2018-08-15 13:51:56', '2018-08-15 13:51:56', '', 0, 'http://index.htm/?p=22', 0, 'post', '', 0),
(23, 1, '2018-08-14 13:54:49', '2018-08-14 13:54:49', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-14 13:54:49', '2018-08-14 13:54:49', '', 22, 'http://index.htm/2018/08/14/22-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-08-14 14:06:38', '2018-08-14 14:06:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 14:06:38', '2018-08-14 14:06:38', '', 2, 'http://index.htm/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-08-14 14:06:59', '2018-08-14 14:06:59', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-15 11:24:25', '2018-08-15 11:24:25', '', 0, 'http://index.htm/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-08-14 14:06:59', '2018-08-14 14:06:59', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-08-14 14:06:59', '2018-08-14 14:06:59', '', 29, 'http://index.htm/2018/08/14/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-08-14 14:07:13', '2018-08-14 14:07:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-08-15 11:24:46', '2018-08-15 11:24:46', '', 0, 'http://index.htm/?page_id=31', 0, 'page', '', 0),
(32, 1, '2018-08-14 14:07:13', '2018-08-14 14:07:13', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-14 14:07:13', '2018-08-14 14:07:13', '', 31, 'http://index.htm/2018/08/14/31-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-14 14:07:56', '2018-08-14 14:07:56', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-14 14:07:56', '2018-08-14 14:07:56', '', 31, 'http://index.htm/2018/08/14/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-14 14:41:49', '2018-08-14 14:41:49', '<div class="container">\n  <div class="row">\n    <div class="menu-pages col-sx-12">\n      <h2>About</h2>\n      <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>rem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip</p>\n    </div>\n  </div>\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-08-14 14:41:49', '2018-08-14 14:41:49', '', 2, 'http://index.htm/2018/08/14/2-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-14 14:27:21', '2018-08-14 14:27:21', '<div class="">\r\n<h2>About</h2>\r\n<p class=>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 14:27:21', '2018-08-14 14:27:21', '', 2, 'http://index.htm/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-14 14:44:22', '2018-08-14 14:44:22', '<div class="container">\r\n  <div class="row">\r\n    <div class="menu-pages col-sx-12">\r\n      <h2>About</h2>\r\n      <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n    </div>\r\n  </div>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 14:44:22', '2018-08-14 14:44:22', '', 2, 'http://index.htm/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-08-14 14:49:36', '2018-08-14 14:49:36', '<div class="container">\r\n  <div class="row">\r\n    <div class="menu-pages col-sx-12">\r\n      <h2 class="menu-pages__title">About</h2>\r\n      <p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n    </div>\r\n  </div>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 14:49:36', '2018-08-14 14:49:36', '', 2, 'http://index.htm/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-14 14:50:00', '2018-08-14 14:50:00', '<div class="container">\r\n  <div class="row">\r\n    <div class="menu-pages col-sx-12">\r\n      <h2 class="menu-pages__title">Blog</h2>\r\n      <p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n    </div>\r\n  </div>\r\n</div>', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-08-14 14:50:00', '2018-08-14 14:50:00', '', 29, 'http://index.htm/2018/08/14/29-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-08-14 14:50:17', '2018-08-14 14:50:17', '<div class="container">\r\n  <div class="row">\r\n    <div class="menu-pages col-sx-12">\r\n      <h2 class="menu-pages__title">Contact</h2>\r\n      <p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n    </div>\r\n  </div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-14 14:50:17', '2018-08-14 14:50:17', '', 31, 'http://index.htm/2018/08/14/31-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-08-14 14:50:56', '2018-08-14 14:50:56', '<div class="container">\r\n<div class="row">\r\n<div class="menu-pages col-sx-12">\r\n<h2 class="menu-pages__title">Contacts</h2>\r\n<p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n</div>\r\n</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-14 14:50:56', '2018-08-14 14:50:56', '', 31, 'http://index.htm/2018/08/14/31-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-14 14:51:21', '2018-08-14 14:51:21', '<div class="container">\r\n<div class="row">\r\n<div class="menu-pages col-sx-12">\r\n<h2 class="menu-pages__title">Contact</h2>\r\n<p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n</div>\r\n</div>\r\n</div>', 'Contact', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-14 14:51:21', '2018-08-14 14:51:21', '', 31, 'http://index.htm/2018/08/14/31-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-14 15:00:21', '2018-08-14 15:00:21', '<div class="container">\r\n<div class="row">\r\n<div class="menu-pages col-sx-12">\r\n<h2 class="menu-pages__title">About</h2>\r\n<p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n</div>\r\n</div>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-14 15:00:21', '2018-08-14 15:00:21', '', 2, 'http://index.htm/2018/08/14/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-14 15:33:40', '2018-08-14 15:33:40', '<div class="container">\r\n<div class="row">\r\n<div class="menu-pages col-sx-12">\r\n<h2 class="menu-pages__title">Blog</h2>\r\n<p class="menu-pages__description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n</div>\r\n</div>\r\n</div>', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-08-14 15:33:40', '2018-08-14 15:33:40', '', 29, 'http://index.htm/2018/08/14/29-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-08-15 06:58:17', '2018-08-15 06:58:17', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-08-15 11:10:21', '2018-08-15 11:10:21', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?p=44', 3, 'nav_menu_item', '', 0),
(45, 1, '2018-08-15 06:58:18', '2018-08-15 06:58:18', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-08-15 11:10:21', '2018-08-15 11:10:21', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-08-15 06:58:18', '2018-08-15 06:58:18', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-08-15 11:10:21', '2018-08-15 11:10:21', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-08-15 07:13:07', '2018-08-15 07:13:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 07:13:07', '2018-08-15 07:13:07', '', 2, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-08-15 07:18:40', '2018-08-15 07:18:40', 'About\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 07:18:40', '2018-08-15 07:18:40', '', 2, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-08-15 07:35:31', '2018-08-15 07:35:31', '', 'Parameters', '', 'publish', 'closed', 'closed', '', 'acf_parameters', '', '', '2018-08-15 13:47:37', '2018-08-15 13:47:37', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?post_type=acf&#038;p=49', 0, 'acf', '', 0),
(50, 1, '2018-08-15 07:37:22', '2018-08-15 07:37:22', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-15 07:37:22', '2018-08-15 07:37:22', '', 22, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/22-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-08-15 07:38:03', '2018-08-15 07:38:03', '', 'Name', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-08-15 07:38:03', '2018-08-15 07:38:03', '', 20, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/20-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-15 07:38:36', '2018-08-15 07:38:36', '', 'Name', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-08-15 07:38:36', '2018-08-15 07:38:36', '', 16, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/16-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-08-15 07:39:07', '2018-08-15 07:39:07', '', 'Name', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-08-15 07:39:07', '2018-08-15 07:39:07', '', 14, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/14-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-15 07:39:30', '2018-08-15 07:39:30', '', 'Name', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-08-15 07:39:30', '2018-08-15 07:39:30', '', 14, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/14-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-08-15 10:52:52', '2018-08-15 10:52:52', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-15 10:52:52', '2018-08-15 10:52:52', '', 22, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/22-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-15 10:53:04', '2018-08-15 10:53:04', '', 'Name', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-08-15 10:53:04', '2018-08-15 10:53:04', '', 16, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/16-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-08-15 10:53:16', '2018-08-15 10:53:16', '', 'Name', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-08-15 10:53:16', '2018-08-15 10:53:16', '', 14, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/14-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-15 11:04:47', '2018-08-15 11:04:47', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-15 11:04:47', '2018-08-15 11:04:47', '', 22, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/22-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-15 11:05:24', '2018-08-15 11:05:24', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-15 11:05:24', '2018-08-15 11:05:24', '', 22, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/22-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-15 11:23:49', '2018-08-15 11:23:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-15 11:23:49', '2018-08-15 11:23:49', '', 2, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/2-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-15 11:24:25', '2018-08-15 11:24:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-08-15 11:24:25', '2018-08-15 11:24:25', '', 29, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/29-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-15 11:24:46', '2018-08-15 11:24:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Contact', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-08-15 11:24:46', '2018-08-15 11:24:46', '', 31, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/31-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-08-15 11:31:08', '2018-08-15 11:31:08', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-15 11:31:08', '2018-08-15 11:31:08', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?page_id=65', 0, 'page', '', 0),
(66, 1, '2018-08-15 11:31:08', '2018-08-15 11:31:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-08-15 11:31:08', '2018-08-15 11:31:08', '', 65, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-08-15 13:48:05', '2018-08-15 13:48:05', '', 'Name', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-15 13:48:05', '2018-08-15 13:48:05', '', 22, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/22-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-08-15 14:19:06', '2018-08-15 14:19:06', '', 'Chair', '', 'publish', 'open', 'open', '', 'chair', '', '', '2018-08-15 14:19:06', '2018-08-15 14:19:06', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?p=68', 0, 'post', '', 0),
(69, 1, '2018-08-15 14:19:06', '2018-08-15 14:19:06', '', 'Chair', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-08-15 14:19:06', '2018-08-15 14:19:06', '', 68, 'http://demo.pinofran.com/demo/wordpress-chairs/2018/08/15/68-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-08-15 16:35:17', '2018-08-15 16:35:17', '', 'Trainers', '', 'publish', 'open', 'open', '', 'trainers', '', '', '2018-12-20 09:55:19', '2018-12-20 09:55:19', '', 0, 'http://demo.pinofran.com/demo/wordpress-chairs/?p=82', 0, 'post', '', 0),
(83, 1, '2018-08-15 16:35:17', '2018-08-15 16:35:17', '', 'Trainers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-08-15 16:35:17', '2018-08-15 16:35:17', '', 82, 'http://demo.pinofran.com/demo/wordpress-chairs/products/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-08-15 16:55:23', '2018-08-15 16:55:23', '', 'Trainers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-08-15 16:55:23', '2018-08-15 16:55:23', '', 82, 'http://demo.pinofran.com/demo/wordpress-chairs/products/82-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-08-16 06:52:27', '2018-08-16 06:52:27', '', 'bluetrainers', '', 'inherit', 'open', 'closed', '', 'bluetrainers', '', '', '2018-08-16 06:52:27', '2018-08-16 06:52:27', '', 82, 'http://demo.pinofran.com/demo/wordpress-chairs/wp-content/uploads/2018/08/bluetrainers.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-12-13 15:33:13', '2018-12-13 15:33:13', '', 'Trainers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-12-13 15:33:13', '2018-12-13 15:33:13', '', 82, 'http://demo.pinofran.com/demo/wordpress-chairs/products/82-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-12-20 09:55:19', '2018-12-20 09:55:19', '', 'Trainers', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-12-20 09:55:19', '2018-12-20 09:55:19', '', 82, 'http://demo.pinofran.com/demo/wordpress-chairs/products/82-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Products', 'products', 0),
(2, 'Nav menu', 'nav-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(6, 1, 0),
(14, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(68, 1, 0),
(82, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 8),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"aa679fcac51bbdf18a761c3f81a8d7b2a833951385bd82e6d175db4d9da48391";a:4:{s:10:"expiration";i:1550997630;s:2:"ip";s:14:"82.117.249.195";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.109 Safari/537.36";s:5:"login";i:1550824830;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '95'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:12:"82.117.249.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1550824950'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(25, 1, 'nav_menu_recently_edited', '2'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQDc1ZJ6q7DL8qNlUi/toyukDvuA1u0', 'admin', 'admin@wp.com', '', '2018-08-14 07:28:10', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1729;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=543;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
