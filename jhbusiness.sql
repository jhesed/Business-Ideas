-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2016 at 06:51 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jhbusiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_commentmeta`
--

CREATE TABLE `jh_business_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_comments`
--

CREATE TABLE `jh_business_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_comments`
--

INSERT INTO `jh_business_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-21 10:03:45', '2016-10-21 10:03:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_links`
--

CREATE TABLE `jh_business_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_options`
--

CREATE TABLE `jh_business_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_options`
--

INSERT INTO `jh_business_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Business-Ideas', 'yes'),
(2, 'home', 'http://localhost/Business-Ideas', 'yes'),
(3, 'blogname', 'G1:1', 'yes'),
(4, 'blogdescription', 'Your Business Partner &lt;br/&gt; for Reliable Software', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jhesed.tacadena@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:110:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:13:"pf_contact/?$";s:30:"index.php?post_type=pf_contact";s:43:"pf_contact/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:38:"pf_contact/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=pf_contact&feed=$matches[1]";s:30:"pf_contact/page/([0-9]{1,})/?$";s:48:"index.php?post_type=pf_contact&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"pf_contact/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"pf_contact/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"pf_contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pf_contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"pf_contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"pf_contact/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"pf_contact/([^/]+)/embed/?$";s:43:"index.php?pf_contact=$matches[1]&embed=true";s:31:"pf_contact/([^/]+)/trackback/?$";s:37:"index.php?pf_contact=$matches[1]&tb=1";s:51:"pf_contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:46:"pf_contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?pf_contact=$matches[1]&feed=$matches[2]";s:39:"pf_contact/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&paged=$matches[2]";s:46:"pf_contact/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?pf_contact=$matches[1]&cpage=$matches[2]";s:35:"pf_contact/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?pf_contact=$matches[1]&page=$matches[2]";s:27:"pf_contact/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"pf_contact/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"pf_contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pf_contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"pf_contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"pf_contact/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:"pirate-forms/pirate-forms.php";i:1;s:43:"shortcodes-ultimate/shortcodes-ultimate.php";i:2;s:58:"wordpress-simple-paypal-shopping-cart/wp_shopping_cart.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'zerif-lite', 'yes'),
(41, 'stylesheet', 'selah', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
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
(88, 'site_icon', '13', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'jh_business_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:8:{i:0;s:17:"ctup-ads-widget-2";i:1;s:17:"ctup-ads-widget-3";i:2;s:17:"ctup-ads-widget-4";i:3;s:21:"zerif_testim-widget-2";i:4;s:21:"zerif_testim-widget-3";i:5;s:19:"zerif_team-widget-2";i:6;s:19:"zerif_team-widget-3";i:7;s:19:"zerif_team-widget-4";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"sidebar-aboutus";N;s:20:"zerif-sidebar-footer";N;s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;s:16:"sidebar-ourfocus";a:4:{i:0;s:17:"ctup-ads-widget-1";i:1;s:17:"ctup-ads-widget-2";i:2;s:17:"ctup-ads-widget-3";i:3;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:2:{i:0;s:21:"zerif_testim-widget-1";i:1;s:21:"zerif_testim-widget-2";}s:15:"sidebar-ourteam";a:4:{i:0;s:19:"zerif_team-widget-1";i:1;s:19:"zerif_team-widget-2";i:2;s:19:"zerif_team-widget-3";i:3;s:19:"zerif_team-widget-4";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:8:{i:1478155402;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"8ed56e6c25286330953b4891a51c25d9";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:17;}}}}i:1478167426;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478167457;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478182560;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478189664;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478230363;a:1:{s:23:"zerif_lite_log_activity";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1478234715;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1478148205;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(113, '_site_transient_timeout_browser_6e53079b31521cfecc9f9247af8f6f05', '1477649038', 'no'),
(114, '_site_transient_browser_6e53079b31521cfecc9f9247af8f6f05', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"53.0.2785.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(115, 'can_compress_scripts', '1', 'no'),
(123, '_transient_twentysixteen_categories', '1', 'yes'),
(129, 'current_theme', 'Selah Theme', 'yes'),
(130, 'theme_mods_zerif-lite', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1477045112;s:4:"data";a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:15:"sidebar-aboutus";N;s:20:"zerif-sidebar-footer";N;s:22:"zerif-sidebar-footer-2";N;s:22:"zerif-sidebar-footer-3";N;s:16:"sidebar-ourfocus";a:4:{i:0;s:17:"ctup-ads-widget-1";i:1;s:17:"ctup-ads-widget-2";i:2;s:17:"ctup-ads-widget-3";i:3;s:17:"ctup-ads-widget-4";}s:20:"sidebar-testimonials";a:3:{i:0;s:21:"zerif_testim-widget-1";i:1;s:21:"zerif_testim-widget-2";i:2;s:21:"zerif_testim-widget-3";}s:15:"sidebar-ourteam";a:4:{i:0;s:19:"zerif_team-widget-1";i:1;s:19:"zerif_team-widget-2";i:2;s:19:"zerif_team-widget-3";i:3;s:19:"zerif_team-widget-4";}}}}', 'yes'),
(131, 'theme_switched', '', 'yes'),
(132, 'widget_ctup-ads-widget', 'a:5:{i:1;a:6:{s:5:"title";s:16:"Website Creation";s:4:"text";s:546:"<p class="selah-catch-praise"><span class="highlight-f1">Reach</span> potential clients<br /> <span class="highlight-f1">like never before.</span></p>\r\n<hr />\r\n<p class="selah selah-info">Unleash the true potential of your business</p>\r\n<p class="selah selah-info">Have an <i>Awesome Web Presence</i></p>\r\n<hr />\r\n<p class="selah selah-price">For as low as <span class="highlight-f1">P15,000</span></p>\r\n\r\n<p class="selah selah-price-details">(Add <span class="highlight-f1">P3,500</span> for domain name and web hosting to be renewed yearly)</p>";s:4:"link";s:1:"#";s:9:"image_uri";s:78:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-web-creation.png";s:15:"custom_media_id";s:2:"10";s:19:"image_in_customizer";s:78:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-web-creation.png";}i:2;a:6:{s:5:"title";s:15:"Task Automation";s:4:"text";s:792:"<p class="selah selah-catch-praise"><span class="highlight-f2">Time</span> is more<br /> precious than <span class="highlight-f2">gold.</span></p>\r\n<hr />\r\n<p class="selah selah-info">Automate repetitive tasks such as:</p>\r\n<p class="selah selah-info selah-list"><b>(a)</b> Report generation from <span class="highlight-f2">Excel, CSV, text</span> and other files.</p>\r\n\r\n<p class="selah selah-info selah-list"><b>(b)</b> Report generation from <span class="highlight-f2">SQL Databases</span>.</p>\r\n\r\n<p class="selah selah-info selah-list"><b>(c)</b> Scheduled <span class="highlight-f2">email notifications </span> (i.e. daily, weekly, monthly, etc.) to a specified group of people</p>\r\n\r\n<p class="selah selah-info selah-list"><b>(d)</b> And much <span class="highlight-f2">MORE!</span></p>";s:4:"link";s:1:"#";s:9:"image_uri";s:81:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-task-automation.png";s:15:"custom_media_id";s:1:"9";s:19:"image_in_customizer";s:81:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-task-automation.png";}i:3;a:6:{s:5:"title";s:20:"Software Development";s:4:"text";s:1106:"<p class="selah selah-catch-praise">Build your <span class="highlight-f3">Business</span> as we build your <span class="highlight-f3">Software.</span></p>\r\n<hr />\r\n<p class="selah selah-details">Do what you do <i>Best</i>. <br />Let us handle the <i>Rest (Software)</i></p>\r\n<p class="selah selah-details">Our <span class="highlight-f3">Technology Stack</span> includes:</p>\r\n\r\n<p class="selah selah-details">\r\n<b>(a)</b> <span class="highlight-f3">Python </span>(Tornado/Django)</p>\r\n\r\n<p class="selah selah-details">\r\n<b>(b)</b> <span class="highlight-f3">PHP </span>(CodeIgniter/ WordPress)</p>\r\n\r\n<p class="selah selah-details">\r\n<b>(c)</b> <span class="highlight-f3">MySQL, Redis </span></p>\r\n\r\n<p class="selah selah-details">\r\n<b>(d)</b> <span class="highlight-f3">Javascript </span>(Jquery/Mootools)</p>\r\n\r\n<p class="selah selah-details">\r\n<b>(e)</b> <span class="highlight-f3">HTML, CSS </span></p>\r\n\r\n<p class="selah selah-details">\r\n<b>(f)</b> <span class="highlight-f3">Java </span>(Android)</p>\r\n\r\n<p class="selah selah-details">\r\n<b>(g)</b> And much<span class="highlight-f3">MORE! </span></p>";s:4:"link";s:1:"#";s:9:"image_uri";s:78:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-software-dev.png";s:15:"custom_media_id";s:1:"8";s:19:"image_in_customizer";s:78:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-software-dev.png";}i:4;a:6:{s:5:"title";s:16:"Plant Automation";s:4:"text";s:185:"<p class="selah selah-catch-praise"><span class="highlight-f4">System Integration</span> using <span class="highlight-f4">PLC, Scada</span> and <span class="highlight-f4">HMI</span></p>";s:4:"link";s:1:"#";s:9:"image_uri";s:82:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-plant-automation.png";s:15:"custom_media_id";s:1:"7";s:19:"image_in_customizer";s:82:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-plant-automation.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(133, 'widget_zerif_testim-widget', 'a:4:{i:1;a:7:{s:5:"title";s:0:"";s:4:"text";s:1197:"<div class="faq-title">What is the Software Development Process of <i>G1:1?</i></div>\r\n\r\n<div class="faq-content">\r\n<b>(1)</b>  The <i>Client</i> finalizes the Specification Document of the project and send it to <i>G1:1</i>.<br><br>\r\n\r\n<b>(2)</b>  <i>G1:1</i> will review the specifications and provide recommendations and quotation for the project.<br><br>\r\n\r\n<b>(3)</b>  The <i>Client</i> agrees with the terms and sends confirmation email to <i>G1:1</i> to proceed with the project.<br><br>\r\n\r\n<b>(4)</b>  <i>G1:1</i> creates a Software Prototype (i.e. mockups) for the Client to review.<br><br>  \r\n\r\n<b>(5)</b>  The <i>Client</i> approves the Software Prototype.<br><br>\r\n\r\n<b>(6)</b>  <i>G1:1</i> proceeds with the Software implementation for each item indicated in the Specification Document.<br><br>\r\n\r\n<b>(7)</b>  <i>G1:1</i> deploys it in a Test Environment for the Client to review (if applicable).<br><br>  \r\n\r\n<b>(8)</b>  The <i>Client</i> tests, reviews, and approves the Software.  The <i>Client</i> sends a confirmation email to <i>G1:1</i> to proceed with the live deployment (if applicable)<br><br>\r\n\r\n<b>(9)  </b><i>G1:1</i> deploys the Software to the live environment.\r\n</div>";s:9:"image_uri";s:0:"";s:7:"details";s:0:"";s:4:"link";s:0:"";s:15:"custom_media_id";s:0:"";s:19:"image_in_customizer";s:0:"";}i:2;a:7:{s:5:"title";s:0:"";s:4:"text";s:887:"<div class="faq-title">What is the Payment Scheme of <i>G1:1</i>?</div>\r\n\r\n<div class="faq-content">- Finalization of the specifications and quotation are FREE of charge <i>(refer to steps 1-3)</i></div>\r\n<br>\r\n<div class="faq-content">- The <b><i> 10%</i></b> of the quoted amount will be payed by the <i>Client</i> before <i>G1:1</i> will proceed with the Software prototype <i>(refer to step 4)</i></div>\r\n<br>\r\n\r\n<div class="faq-content">- The <i><b>40%</b></i> will be payed by the <i>Client</i> upon approval of the <i>Software Prototype/Mockups  (refer to step 5). </i> This is necessary for <i>G1:1</i> before proceeding with the implementation of the rest of the specs. </div>\r\n\r\n<br>\r\n<div class="faq-content">- The remaining <i><b>50%</b></i> will be payed only by the <i>Client</i> after the deployment of the Software in the live environment <i>(refer to  step 9)</i>.</div>";s:9:"image_uri";s:0:"";s:7:"details";s:0:"";s:4:"link";s:0:"";s:15:"custom_media_id";s:0:"";s:19:"image_in_customizer";s:0:"";}i:3;a:3:{s:5:"title";s:13:"Cynthia Henry";s:4:"text";s:242:"Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur nec sem vel sapien venenatis mattis non vitae augue. Nullam congue commodo lorem vitae facilisis. Suspendisse malesuada id turpis interdum dictum.";s:9:"image_uri";s:84:"http://localhost/Business-Ideas/wp-content/themes/zerif-lite/images/testimonial3.jpg";}s:12:"_multiwidget";i:1;}', 'yes'),
(134, 'widget_zerif_clients-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'widget_zerif_team-widget', 'a:5:{i:1;a:9:{s:4:"name";s:14:"ASHLEY SIMMONS";s:8:"position";s:15:"Project Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:77:"http://localhost/Business-Ideas/wp-content/themes/zerif-lite/images/team1.png";}i:2;a:9:{s:4:"name";s:13:"TIMOTHY SPRAY";s:8:"position";s:12:"Art Director";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:77:"http://localhost/Business-Ideas/wp-content/themes/zerif-lite/images/team2.png";}i:3;a:9:{s:4:"name";s:12:"TONYA GARCIA";s:8:"position";s:15:"Account Manager";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:77:"http://localhost/Business-Ideas/wp-content/themes/zerif-lite/images/team3.png";}i:4;a:9:{s:4:"name";s:10:"JASON LANE";s:8:"position";s:20:"Business Development";s:11:"description";s:157:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc dapibus, eros at accumsan auctor, felis eros condimentum quam, non porttitor est urna vel neque";s:7:"fb_link";s:1:"#";s:7:"tw_link";s:1:"#";s:7:"bh_link";s:1:"#";s:7:"db_link";s:1:"#";s:7:"ln_link";s:1:"#";s:9:"image_uri";s:77:"http://localhost/Business-Ideas/wp-content/themes/zerif-lite/images/team4.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(149, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1477045304;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(150, 'theme_mods_selah', 'a:39:{i:0;b:0;s:15:"zerif_copyright";s:39:"Copyright @G1:1 Software Solutions 2016";s:30:"zerif_bigtitle_redbutton_label";s:10:"WHAT WE DO";s:32:"zerif_bigtitle_greenbutton_label";s:10:"WHO WE ARE";s:19:"zerif_parallax_show";b:0;s:20:"zerif_ourfocus_title";s:10:"What we do";s:23:"zerif_ourfocus_subtitle";s:56:"Optimal, fast and reliable software that satisfy clients";s:20:"zerif_bigtitle_title";s:189:"<span class="header-unhighlight">Your</span> Business <span class="emphasis">Partner</span><br /> <span class="header-unhighlight">for</span> Reliable <span class="emphasis">Software</span>";s:18:"zerif_ourteam_show";b:1;s:23:"zerif_testimonials_show";b:0;s:21:"zerif_latestnews_show";b:1;s:21:"zerif_contactus_email";s:25:"jhesed.tacadena@gmail.com";s:13:"zerif_address";s:80:"320 C San Roque Street, Cervo Compound, Bilibiran Binangonan, Rizal, Philippines";s:11:"zerif_email";s:72:"<a href="mailto:jhesed.tacadena@gmail.com">jhesed.tacadena@gmail.com</a>";s:11:"zerif_phone";s:44:"<a href="tel:+639776364662">639776364662</a>";s:23:"zerif_bottomribbon_text";s:98:"Refer a Project and get <i><b>5%</b></i> of the quoted amount once the client payed in <u>full</u>";s:22:"zerif_ribbonright_text";s:0:"";s:29:"zerif_ribbonright_buttonlabel";s:0:"";s:24:"zerif_testimonials_title";s:26:"Frequently Asked Questions";s:27:"zerif_testimonials_subtitle";s:0:"";s:10:"zerif_logo";s:71:"http://localhost/Business-Ideas/wp-content/uploads/2016/10/g11-logo.png";s:28:"zerif_aboutus_feature1_title";s:15:"Web Development";s:27:"zerif_aboutus_feature1_text";s:48:"Python, PHP, Javascript, HTML, CSS, MySQL, Redis";s:25:"zerif_aboutus_feature1_nr";i:92;s:28:"zerif_aboutus_feature2_title";s:20:"Software Development";s:27:"zerif_aboutus_feature2_text";s:37:"Python, Java, PHP, Bash, MySQL, Redis";s:25:"zerif_aboutus_feature2_nr";i:90;s:28:"zerif_aboutus_feature3_title";s:16:"Plant Automation";s:27:"zerif_aboutus_feature3_text";s:15:"PLC, Scada, HMI";s:25:"zerif_aboutus_feature3_nr";i:90;s:28:"zerif_aboutus_feature4_title";s:0:"";s:25:"zerif_aboutus_feature4_nr";i:0;s:19:"zerif_aboutus_title";s:10:"Who we are";s:26:"zerif_aboutus_biglefttitle";s:252:"<div class="verse">"Whatever you do, work heartily, as for the Lord and not for men, knowing that from the Lord you will receive the inheritance as your reward. You are serving the Lord Christ."</div><div class="verse-title">- Colossians 3:23,24 </div>";s:18:"zerif_aboutus_text";s:279:"A group of talented and passionate <i>Software Engineers</i> and <i>Instrumentation Technicians</i><br /><br />\n\nA group that is commited to create <i>fast, optimal and reliable Software</i><br /><br />\n\nA group that is dedicated to have <i>happy</i> and <i>satisfied</i> Clients";s:30:"zerif_bigtitle_greenbutton_url";s:40:"http://localhost/Business-Ideas/#aboutus";s:22:"zerif_aboutus_subtitle";s:0:"";s:30:"zerif_contactus_recaptcha_show";b:1;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(158, '_site_transient_timeout_wporg_theme_feature_list', '1477214434', 'no'),
(159, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(162, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478148208;s:7:"checked";a:5:{s:5:"selah";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";s:10:"zerif-lite";s:5:"2.0.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(163, '_transient_timeout_zerif-lite-update-response', '2954409062', 'no'),
(164, '_transient_zerif-lite-update-response', 'O:8:"stdClass":1:{s:11:"new_version";s:5:"2.0.4";}', 'no'),
(167, 'su_installed', '1477203724', 'yes'),
(168, 'su_option_version', '4.9.9', 'yes'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(170, 'widget_shortcodes-ultimate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(171, 'su_option_custom-formatting', 'on', 'yes'),
(172, 'su_option_skip', 'on', 'yes'),
(173, 'su_option_prefix', 'su_', 'yes'),
(174, 'su_option_hotkey', 'alt+i', 'yes'),
(175, 'su_option_skin', 'default', 'yes'),
(176, 'su_option_custom-css', '', 'yes'),
(177, 'sunrise_defaults_su', '1', 'yes'),
(180, 'widget_pirate_forms_contact_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(181, 'pirate_forms_settings_array', 'a:34:{s:14:"header_options";s:0:"";s:20:"pirateformsopt_email";s:25:"jhesed.tacadena@gmail.com";s:31:"pirateformsopt_email_recipients";s:25:"jhesed.tacadena@gmail.com";s:20:"pirateformsopt_store";s:3:"yes";s:20:"pirateformsopt_nonce";s:3:"yes";s:28:"pirateformsopt_confirm_email";s:0:"";s:28:"pirateformsopt_thank_you_url";s:0:"";s:13:"header_fields";s:0:"";s:25:"pirateformsopt_name_field";s:3:"req";s:26:"pirateformsopt_email_field";s:3:"req";s:28:"pirateformsopt_subject_field";s:3:"req";s:28:"pirateformsopt_message_field";s:3:"req";s:32:"pirateformsopt_recaptcha_sitekey";s:0:"";s:34:"pirateformsopt_recaptcha_secretkey";s:0:"";s:31:"pirateformsopt_attachment_field";s:0:"";s:13:"header_labels";s:0:"";s:25:"pirateformsopt_label_name";s:9:"Your Name";s:26:"pirateformsopt_label_email";s:10:"Your Email";s:28:"pirateformsopt_label_subject";s:7:"Subject";s:28:"pirateformsopt_label_message";s:12:"Your message";s:31:"pirateformsopt_label_submit_btn";s:12:"Send Message";s:15:"header_messages";s:0:"";s:29:"pirateformsopt_label_err_name";s:15:"Enter your name";s:30:"pirateformsopt_label_err_email";s:19:"Enter a valid email";s:32:"pirateformsopt_label_err_subject";s:22:"Please enter a subject";s:35:"pirateformsopt_label_err_no_content";s:30:"Enter your question or comment";s:27:"pirateformsopt_label_submit";s:41:"Thanks, your email was sent successfully!";s:11:"header_smtp";s:0:"";s:23:"pirateformsopt_use_smtp";s:0:"";s:24:"pirateformsopt_smtp_host";s:0:"";s:24:"pirateformsopt_smtp_port";s:0:"";s:38:"pirateformsopt_use_smtp_authentication";s:3:"yes";s:28:"pirateformsopt_smtp_username";s:0:"";s:28:"pirateformsopt_smtp_password";s:0:"";}', 'yes'),
(231, '_site_transient_timeout_available_translations', '1477469652', 'no');
INSERT INTO `jh_business_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(232, '_site_transient_available_translations', 'a:86:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 10:29:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-01 16:18:09";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:72:"http://downloads.wordpress.org/translation/core/4.6.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 18:47:31";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 18:48:33";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.6.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 04:42:01";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 22:25:56";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-02 11:46:15";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 18:54:55";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:07:58";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 19:02:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-21 15:44:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-03 13:43:01";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 19:47:48";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 09:14:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-07 18:41:52";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-19 13:41:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 10:27:20";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-04 13:42:56";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-25 16:21:38";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-27 16:24:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 13:50:08";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-21 02:17:37";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-16 14:12:34";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-13 10:00:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 16:23:26";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 20:20:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-06-22 12:27:05";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-18 10:43:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.6.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 01:34:25";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(275, '_site_transient_timeout_theme_roots', '1478149370', 'no'),
(276, '_site_transient_theme_roots', 'a:5:{s:5:"selah";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:10:"zerif-lite";s:7:"/themes";}', 'no'),
(277, '_site_transient_timeout_browser_0a59b19295de58488e477927c110bae5', '1478752960', 'no'),
(278, '_site_transient_browser_0a59b19295de58488e477927c110bae5', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(279, '_transient_timeout_plugin_slugs', '1478234607', 'no'),
(280, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:29:"pirate-forms/pirate-forms.php";i:2;s:9:"hello.php";i:3;s:43:"shortcodes-ultimate/shortcodes-ultimate.php";i:4;s:58:"wordpress-simple-paypal-shopping-cart/wp_shopping_cart.php";}', 'no'),
(281, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1478191366', 'no'),
(282, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: cURL error 60: SSL certificate problem: unable to get local issuer certificate</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(283, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1478158974', 'no'),
(284, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6088";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3759";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3727";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3228";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2870";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2538";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2271";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2153";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2098";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2097";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2035";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2000";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1960";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1927";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1760";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1643";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1611";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1467";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1367";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1291";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1148";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1133";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1076";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1022";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1011";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"960";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"959";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"956";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"926";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"926";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"925";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"857";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"848";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"837";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"818";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"797";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"789";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"780";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"773";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"760";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"758";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"751";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"732";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"730";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"729";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"721";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"712";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"706";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"705";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"653";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"648";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"638";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"631";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"623";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"614";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"612";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"611";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"599";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"582";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"582";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"582";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"579";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"566";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"550";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"547";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"545";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"538";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"538";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"533";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"533";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"517";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"504";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"499";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"481";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"470";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"468";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"466";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"464";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"457";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"445";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"444";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"438";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"436";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"433";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"432";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"428";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"423";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"421";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"421";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"416";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"415";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"411";}}', 'no'),
(286, 'wp_cart_title', 'Your Shopping Cart', 'yes'),
(287, 'wp_cart_empty_text', 'Your cart is empty', 'yes'),
(288, 'cart_return_from_paypal_url', 'http://localhost/Business-Ideas', 'yes'),
(289, 'wpspc_send_buyer_email', '1', 'yes'),
(290, 'wpspc_buyer_from_email', 'G1:1 <sales@your-domain.com>', 'yes'),
(291, 'wpspc_buyer_email_subj', 'Thank you for the purchase', 'yes'),
(292, 'wpspc_buyer_email_body', 'Dear {first_name} {last_name}\n\nThank you for your purchase! You ordered the following item(s):\n\n{product_details}', 'yes'),
(293, 'wpspc_notify_email_address', 'jhesed.tacadena@gmail.com', 'yes'),
(294, 'wpspc_seller_email_subj', 'Notification of product sale', 'yes'),
(295, 'wpspc_seller_email_body', 'Dear Seller\n\nThis mail is to notify you of a product sale.\n\n{product_details}\n\nThe sale was made to {first_name} {last_name} ({payer_email})\n\nThanks', 'yes'),
(296, 'wspsc_private_key_one', '581ac06f388474.76633330', 'yes'),
(297, 'widget_wp_paypal_shopping_cart_widgets', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(298, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478148222;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:53:"http://downloads.wordpress.org/plugin/akismet.3.2.zip";}s:29:"pirate-forms/pirate-forms.php";O:8:"stdClass":6:{s:2:"id";s:5:"64539";s:4:"slug";s:12:"pirate-forms";s:6:"plugin";s:29:"pirate-forms/pirate-forms.php";s:11:"new_version";s:6:"1.0.17";s:3:"url";s:43:"https://wordpress.org/plugins/pirate-forms/";s:7:"package";s:54:"http://downloads.wordpress.org/plugin/pirate-forms.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:43:"shortcodes-ultimate/shortcodes-ultimate.php";O:8:"stdClass":6:{s:2:"id";s:5:"21713";s:4:"slug";s:19:"shortcodes-ultimate";s:6:"plugin";s:43:"shortcodes-ultimate/shortcodes-ultimate.php";s:11:"new_version";s:5:"4.9.9";s:3:"url";s:50:"https://wordpress.org/plugins/shortcodes-ultimate/";s:7:"package";s:61:"http://downloads.wordpress.org/plugin/shortcodes-ultimate.zip";}s:58:"wordpress-simple-paypal-shopping-cart/wp_shopping_cart.php";O:8:"stdClass":6:{s:2:"id";s:4:"6689";s:4:"slug";s:37:"wordpress-simple-paypal-shopping-cart";s:6:"plugin";s:58:"wordpress-simple-paypal-shopping-cart/wp_shopping_cart.php";s:11:"new_version";s:5:"4.2.8";s:3:"url";s:68:"https://wordpress.org/plugins/wordpress-simple-paypal-shopping-cart/";s:7:"package";s:79:"http://downloads.wordpress.org/plugin/wordpress-simple-paypal-shopping-cart.zip";}}}', 'no'),
(303, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(307, '_transient_is_multi_author', '0', 'yes'),
(308, '_transient_timeout_su/generator/popup', '1478322533', 'no');
INSERT INTO `jh_business_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(309, '_transient_su/generator/popup', '		<div id="su-generator-wrap" style="display:none">\n			<div id="su-generator">\n				<div id="su-generator-header">\n					<div id="su-generator-tools"><a href="http://localhost/Business-Ideas/wp-admin/admin.php?page=shortcodes-ultimate#tab-1" target="_blank" title="Settings">Plugin settings</a> <span></span> <a href="http://gndev.info/shortcodes-ultimate/" target="_blank" title="Plugin homepage">Plugin homepage</a> <span></span> <a href="http://wordpress.org/support/plugin/shortcodes-ultimate/" target="_blank" title="Support forums">Support forums</a> <span></span> <a href="http://localhost/Business-Ideas/wp-admin/admin.php?page=shortcodes-ultimate-addons" target="_blank" title="Add-ons" class="su-add-ons">Add-ons</a></div>\n					<input type="text" name="su_generator_search" id="su-generator-search" value="" placeholder="Search for shortcodes" />\n					<p id="su-generator-search-pro-tip"><strong>Pro Tip:</strong> Hit enter to select highlighted shortcode, while searching</p>\n					<div id="su-generator-filter">\n						<strong>Filter by type</strong>\n						<a href="#" data-filter="all">All</a><a href="#" data-filter="content">Content</a><a href="#" data-filter="box">Box</a><a href="#" data-filter="media">Media</a><a href="#" data-filter="gallery">Gallery</a><a href="#" data-filter="data">Data</a><a href="#" data-filter="other">Other</a>					</div>\n					<div id="su-generator-choices" class="su-generator-clearfix">\n						<span data-name="Heading" data-shortcode="heading" title="Styled heading" data-desc="Styled heading" data-group="content"><i class="fa fa-h-square"></i>Heading</span>\n<span data-name="Tabs" data-shortcode="tabs" title="Tabs container" data-desc="Tabs container" data-group="box"><i class="fa fa-list-alt"></i>Tabs</span>\n<span data-name="Tab" data-shortcode="tab" title="Single tab" data-desc="Single tab" data-group="box"><i class="fa fa-list-alt"></i>Tab</span>\n<span data-name="Spoiler" data-shortcode="spoiler" title="Spoiler with hidden content" data-desc="Spoiler with hidden content" data-group="box"><i class="fa fa-list-ul"></i>Spoiler</span>\n<span data-name="Accordion" data-shortcode="accordion" title="Accordion with spoilers" data-desc="Accordion with spoilers" data-group="box"><i class="fa fa-list"></i>Accordion</span>\n<span data-name="Divider" data-shortcode="divider" title="Content divider with optional TOP link" data-desc="Content divider with optional TOP link" data-group="content"><i class="fa fa-ellipsis-h"></i>Divider</span>\n<span data-name="Spacer" data-shortcode="spacer" title="Empty space with adjustable height" data-desc="Empty space with adjustable height" data-group="content other"><i class="fa fa-arrows-v"></i>Spacer</span>\n<span data-name="Highlight" data-shortcode="highlight" title="Highlighted text" data-desc="Highlighted text" data-group="content"><i class="fa fa-pencil"></i>Highlight</span>\n<span data-name="Label" data-shortcode="label" title="Styled label" data-desc="Styled label" data-group="content"><i class="fa fa-tag"></i>Label</span>\n<span data-name="Quote" data-shortcode="quote" title="Blockquote alternative" data-desc="Blockquote alternative" data-group="box"><i class="fa fa-quote-right"></i>Quote</span>\n<span data-name="Pullquote" data-shortcode="pullquote" title="Pullquote" data-desc="Pullquote" data-group="box"><i class="fa fa-quote-left"></i>Pullquote</span>\n<span data-name="Dropcap" data-shortcode="dropcap" title="Dropcap" data-desc="Dropcap" data-group="content"><i class="fa fa-bold"></i>Dropcap</span>\n<span data-name="Frame" data-shortcode="frame" title="Styled image frame" data-desc="Styled image frame" data-group="content"><i class="fa fa-picture-o"></i>Frame</span>\n<span data-name="Row" data-shortcode="row" title="Row for flexible columns" data-desc="Row for flexible columns" data-group="box"><i class="fa fa-columns"></i>Row</span>\n<span data-name="Column" data-shortcode="column" title="Flexible and responsive columns" data-desc="Flexible and responsive columns" data-group="box"><i class="fa fa-columns"></i>Column</span>\n<span data-name="List" data-shortcode="list" title="Styled unordered list" data-desc="Styled unordered list" data-group="content"><i class="fa fa-list-ol"></i>List</span>\n<span data-name="Button" data-shortcode="button" title="Styled button" data-desc="Styled button" data-group="content"><i class="fa fa-heart"></i>Button</span>\n<span data-name="Service" data-shortcode="service" title="Service box with title" data-desc="Service box with title" data-group="box"><i class="fa fa-check-square-o"></i>Service</span>\n<span data-name="Box" data-shortcode="box" title="Colored box with caption" data-desc="Colored box with caption" data-group="box"><i class="fa fa-list-alt"></i>Box</span>\n<span data-name="Note" data-shortcode="note" title="Colored box" data-desc="Colored box" data-group="box"><i class="fa fa-list-alt"></i>Note</span>\n<span data-name="Expand" data-shortcode="expand" title="Expandable text block" data-desc="Expandable text block" data-group="box"><i class="fa fa-sort-amount-asc"></i>Expand</span>\n<span data-name="Lightbox" data-shortcode="lightbox" title="Lightbox window with custom content" data-desc="Lightbox window with custom content" data-group="gallery"><i class="fa fa-external-link"></i>Lightbox</span>\n<span data-name="Lightbox content" data-shortcode="lightbox_content" title="Inline content for lightbox" data-desc="Inline content for lightbox" data-group="gallery"><i class="fa fa-external-link"></i>Lightbox content</span>\n<span data-name="Tooltip" data-shortcode="tooltip" title="Tooltip window with custom content" data-desc="Tooltip window with custom content" data-group="other"><i class="fa fa-comment-o"></i>Tooltip</span>\n<span data-name="Private" data-shortcode="private" title="Private note for post authors" data-desc="Private note for post authors" data-group="other"><i class="fa fa-lock"></i>Private</span>\n<span data-name="YouTube" data-shortcode="youtube" title="YouTube video" data-desc="YouTube video" data-group="media"><i class="fa fa-youtube-play"></i>YouTube</span>\n<span data-name="YouTube Advanced" data-shortcode="youtube_advanced" title="YouTube video player with advanced settings" data-desc="YouTube video player with advanced settings" data-group="media"><i class="fa fa-youtube-play"></i>YouTube Advanced</span>\n<span data-name="Vimeo" data-shortcode="vimeo" title="Vimeo video" data-desc="Vimeo video" data-group="media"><i class="fa fa-youtube-play"></i>Vimeo</span>\n<span data-name="Screenr" data-shortcode="screenr" title="Screenr video" data-desc="Screenr video" data-group="media"><i class="fa fa-youtube-play"></i>Screenr</span>\n<span data-name="Dailymotion" data-shortcode="dailymotion" title="Dailymotion video" data-desc="Dailymotion video" data-group="media"><i class="fa fa-youtube-play"></i>Dailymotion</span>\n<span data-name="Audio" data-shortcode="audio" title="Custom audio player" data-desc="Custom audio player" data-group="media"><i class="fa fa-play-circle"></i>Audio</span>\n<span data-name="Video" data-shortcode="video" title="Custom video player" data-desc="Custom video player" data-group="media"><i class="fa fa-play-circle"></i>Video</span>\n<span data-name="Table" data-shortcode="table" title="Styled table from HTML or CSV file" data-desc="Styled table from HTML or CSV file" data-group="content"><i class="fa fa-table"></i>Table</span>\n<span data-name="Permalink" data-shortcode="permalink" title="Permalink to specified post/page" data-desc="Permalink to specified post/page" data-group="content other"><i class="fa fa-link"></i>Permalink</span>\n<span data-name="Members" data-shortcode="members" title="Content for logged in members only" data-desc="Content for logged in members only" data-group="other"><i class="fa fa-lock"></i>Members</span>\n<span data-name="Guests" data-shortcode="guests" title="Content for guests only" data-desc="Content for guests only" data-group="other"><i class="fa fa-user"></i>Guests</span>\n<span data-name="RSS Feed" data-shortcode="feed" title="Feed grabber" data-desc="Feed grabber" data-group="content other"><i class="fa fa-rss"></i>RSS Feed</span>\n<span data-name="Menu" data-shortcode="menu" title="Custom menu by name" data-desc="Custom menu by name" data-group="other"><i class="fa fa-bars"></i>Menu</span>\n<span data-name="Sub pages" data-shortcode="subpages" title="List of sub pages" data-desc="List of sub pages" data-group="other"><i class="fa fa-bars"></i>Sub pages</span>\n<span data-name="Siblings" data-shortcode="siblings" title="List of cureent page siblings" data-desc="List of cureent page siblings" data-group="other"><i class="fa fa-bars"></i>Siblings</span>\n<span data-name="Document" data-shortcode="document" title="Document viewer by Google" data-desc="Document viewer by Google" data-group="media"><i class="fa fa-file-text"></i>Document</span>\n<span data-name="Gmap" data-shortcode="gmap" title="Maps by Google" data-desc="Maps by Google" data-group="media"><i class="fa fa-globe"></i>Gmap</span>\n<span data-name="Slider" data-shortcode="slider" title="Customizable image slider" data-desc="Customizable image slider" data-group="gallery"><i class="fa fa-picture-o"></i>Slider</span>\n<span data-name="Carousel" data-shortcode="carousel" title="Customizable image carousel" data-desc="Customizable image carousel" data-group="gallery"><i class="fa fa-picture-o"></i>Carousel</span>\n<span data-name="Gallery" data-shortcode="custom_gallery" title="Customizable image gallery" data-desc="Customizable image gallery" data-group="gallery"><i class="fa fa-picture-o"></i>Gallery</span>\n<span data-name="Posts" data-shortcode="posts" title="Custom posts query with customizable template" data-desc="Custom posts query with customizable template" data-group="other"><i class="fa fa-th-list"></i>Posts</span>\n<span data-name="Dummy text" data-shortcode="dummy_text" title="Text placeholder" data-desc="Text placeholder" data-group="content"><i class="fa fa-text-height"></i>Dummy text</span>\n<span data-name="Dummy image" data-shortcode="dummy_image" title="Image placeholder with random image" data-desc="Image placeholder with random image" data-group="content"><i class="fa fa-picture-o"></i>Dummy image</span>\n<span data-name="Animation" data-shortcode="animate" title="Wrapper for animation. Any nested element will be animated" data-desc="Wrapper for animation. Any nested element will be animated" data-group="other"><i class="fa fa-bolt"></i>Animation</span>\n<span data-name="Meta" data-shortcode="meta" title="Post meta" data-desc="Post meta" data-group="data"><i class="fa fa-info-circle"></i>Meta</span>\n<span data-name="User" data-shortcode="user" title="User data" data-desc="User data" data-group="data"><i class="fa fa-info-circle"></i>User</span>\n<span data-name="Post" data-shortcode="post" title="Post data" data-desc="Post data" data-group="data"><i class="fa fa-info-circle"></i>Post</span>\n<span data-name="Template" data-shortcode="template" title="Theme template" data-desc="Theme template" data-group="other"><i class="fa fa-puzzle-piece"></i>Template</span>\n<span data-name="QR code" data-shortcode="qrcode" title="Advanced QR code generator" data-desc="Advanced QR code generator" data-group="content"><i class="fa fa-qrcode"></i>QR code</span>\n<span data-name="Scheduler" data-shortcode="scheduler" title="Allows to show the content only at the specified time period" data-desc="Allows to show the content only at the specified time period" data-group="other"><i class="fa fa-clock-o"></i>Scheduler</span>\n					</div>\n				</div>\n				<div id="su-generator-settings"></div>\n				<input type="hidden" name="su-generator-selected" id="su-generator-selected" value="http://localhost/Business-Ideas/wp-content/plugins/shortcodes-ultimate" />\n				<input type="hidden" name="su-generator-url" id="su-generator-url" value="http://localhost/Business-Ideas/wp-content/plugins/shortcodes-ultimate" />\n				<input type="hidden" name="su-compatibility-mode-prefix" id="su-compatibility-mode-prefix" value="su_" />\n				<div id="su-generator-result" style="display:none"></div>\n			</div>\n		</div>\n	', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_postmeta`
--

CREATE TABLE `jh_business_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_postmeta`
--

INSERT INTO `jh_business_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 2, '_edit_lock', '1477207844:1'),
(9, 5, '_wp_attached_file', '2016/10/1477315489_www-world-globe.png'),
(10, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:38:"2016/10/1477315489_www-world-globe.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 6, '_wp_attached_file', '2016/10/icon-ww.png'),
(12, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:19:"2016/10/icon-ww.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 7, '_wp_attached_file', '2016/10/ic-plant-automation.png'),
(14, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:31:"2016/10/ic-plant-automation.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 8, '_wp_attached_file', '2016/10/ic-software-dev.png'),
(16, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:27:"2016/10/ic-software-dev.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 9, '_wp_attached_file', '2016/10/ic-task-automation.png'),
(18, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:30:"2016/10/ic-task-automation.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 10, '_wp_attached_file', '2016/10/ic-web-creation.png'),
(20, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:27:"2016/10/ic-web-creation.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 11, '_wp_attached_file', '2016/10/G11a.png'),
(22, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:169;s:4:"file";s:16:"2016/10/G11a.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"G11a-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:16:"G11a-174x169.png";s:5:"width";i:174;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 12, '_wp_attached_file', '2016/10/imageedit_1_4668993461.png'),
(24, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:169;s:4:"file";s:34:"2016/10/imageedit_1_4668993461.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"imageedit_1_4668993461-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:34:"imageedit_1_4668993461-174x169.png";s:5:"width";i:174;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 13, '_wp_attached_file', '2016/10/cropped-imageedit_1_4668993461.png'),
(26, 13, '_wp_attachment_context', 'site-icon'),
(27, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:42:"2016/10/cropped-imageedit_1_4668993461.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-250x250.png";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:20:"post-thumbnail-large";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-512x500.png";s:5:"width";i:512;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}s:26:"post-thumbnail-large-table";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-512x300.png";s:5:"width";i:512;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-400x200.png";s:5:"width";i:400;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-285x214.png";s:5:"width";i:285;s:6:"height";i:214;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-174x174.png";s:5:"width";i:174;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-270";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-192";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:13:"site_icon-180";a:4:{s:4:"file";s:42:"cropped-imageedit_1_4668993461-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"site_icon-32";a:4:{s:4:"file";s:40:"cropped-imageedit_1_4668993461-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 14, '_wp_attached_file', '2016/10/g11-sed.png'),
(29, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:105;s:6:"height";i:40;s:4:"file";s:19:"2016/10/g11-sed.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 15, '_wp_attached_file', '2016/10/g11-logo.png'),
(31, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:105;s:6:"height";i:27;s:4:"file";s:20:"2016/10/g11-logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 16, '_wp_attached_file', '2016/10/imageedit_8_4540888611.png'),
(33, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:104;s:4:"file";s:34:"2016/10/imageedit_8_4540888611.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"imageedit_8_4540888611-150x104.png";s:5:"width";i:150;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"imageedit_8_4540888611-300x78.png";s:5:"width";i:300;s:6:"height";i:78;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:34:"imageedit_8_4540888611-250x104.png";s:5:"width";i:250;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";}s:27:"post-thumbnail-large-mobile";a:4:{s:4:"file";s:34:"imageedit_8_4540888611-400x104.png";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";}s:19:"zerif_project_photo";a:4:{s:4:"file";s:34:"imageedit_8_4540888611-285x104.png";s:5:"width";i:285;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";}s:20:"zerif_our_team_photo";a:4:{s:4:"file";s:34:"imageedit_8_4540888611-174x104.png";s:5:"width";i:174;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 18, '_menu_item_type', 'custom'),
(37, 18, '_menu_item_menu_item_parent', '0'),
(38, 18, '_menu_item_object_id', '18'),
(39, 18, '_menu_item_object', 'custom'),
(40, 18, '_menu_item_target', ''),
(41, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 18, '_menu_item_xfn', ''),
(43, 18, '_menu_item_url', 'http://localhost/Business-Ideas/'),
(44, 18, '_menu_item_orphaned', '1478148225'),
(45, 19, '_menu_item_type', 'post_type'),
(46, 19, '_menu_item_menu_item_parent', '0'),
(47, 19, '_menu_item_object_id', '2'),
(48, 19, '_menu_item_object', 'page'),
(49, 19, '_menu_item_target', ''),
(50, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 19, '_menu_item_xfn', ''),
(52, 19, '_menu_item_url', ''),
(53, 19, '_menu_item_orphaned', '1478148225'),
(54, 20, '_edit_last', '1'),
(55, 20, '_edit_lock', '1478149733:1'),
(56, 21, '_wp_attached_file', '2016/11/1478166434_Shopping_Cart.png'),
(57, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:64;s:6:"height";i:64;s:4:"file";s:36:"2016/11/1478166434_Shopping_Cart.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 20, '_thumbnail_id', '21'),
(59, 20, '_wp_page_template', 'default'),
(69, 26, '_menu_item_type', 'post_type'),
(70, 26, '_menu_item_menu_item_parent', '0'),
(71, 26, '_menu_item_object_id', '2'),
(72, 26, '_menu_item_object', 'page'),
(73, 26, '_menu_item_target', ''),
(74, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(75, 26, '_menu_item_xfn', ''),
(76, 26, '_menu_item_url', ''),
(77, 26, '_menu_item_orphaned', '1478148534'),
(78, 27, '_menu_item_type', 'post_type'),
(79, 27, '_menu_item_menu_item_parent', '0'),
(80, 27, '_menu_item_object_id', '20'),
(81, 27, '_menu_item_object', 'page'),
(82, 27, '_menu_item_target', ''),
(83, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(84, 27, '_menu_item_xfn', ''),
(85, 27, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_posts`
--

CREATE TABLE `jh_business_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_posts`
--

INSERT INTO `jh_business_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-21 10:03:45', '2016-10-21 10:03:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-10-21 10:03:45', '2016-10-21 10:03:45', '', 0, 'http://localhost/Business-Ideas/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-21 10:03:45', '2016-10-21 10:03:45', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/Business-Ideas/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-10-21 10:03:45', '2016-10-21 10:03:45', '', 0, 'http://localhost/Business-Ideas/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-10-24 08:27:07', '2016-10-24 08:27:07', '', '1477315489_www-world-globe', '', 'inherit', 'open', 'closed', '', '1477315489_www-world-globe', '', '', '2016-10-24 08:27:07', '2016-10-24 08:27:07', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/1477315489_www-world-globe.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2016-10-24 09:08:15', '2016-10-24 09:08:15', '', 'icon-ww', '', 'inherit', 'open', 'closed', '', 'icon-ww', '', '', '2016-10-24 09:08:15', '2016-10-24 09:08:15', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/icon-ww.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 'ic-plant-automation', '', 'inherit', 'open', 'closed', '', 'ic-plant-automation', '', '', '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-plant-automation.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 'ic-software-dev', '', 'inherit', 'open', 'closed', '', 'ic-software-dev', '', '', '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-software-dev.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 'ic-task-automation', '', 'inherit', 'open', 'closed', '', 'ic-task-automation', '', '', '2016-10-24 09:08:16', '2016-10-24 09:08:16', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-task-automation.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2016-10-24 09:08:17', '2016-10-24 09:08:17', '', 'ic-web-creation', '', 'inherit', 'open', 'closed', '', 'ic-web-creation', '', '', '2016-10-24 09:08:17', '2016-10-24 09:08:17', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/ic-web-creation.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2016-10-25 08:33:25', '2016-10-25 08:33:25', '', 'g11', '', 'inherit', 'open', 'closed', '', 'g11a', '', '', '2016-10-25 08:33:28', '2016-10-25 08:33:28', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/G11a.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2016-10-25 08:34:36', '2016-10-25 08:34:36', '', 'G11', '', 'inherit', 'open', 'closed', '', 'imageedit_1_4668993461', '', '', '2016-10-25 08:34:42', '2016-10-25 08:34:42', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/imageedit_1_4668993461.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2016-10-25 08:43:57', '2016-10-25 08:43:57', 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/cropped-imageedit_1_4668993461.png', 'cropped-imageedit_1_4668993461.png', '', 'inherit', 'open', 'closed', '', 'cropped-imageedit_1_4668993461-png', '', '', '2016-10-25 08:43:57', '2016-10-25 08:43:57', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/cropped-imageedit_1_4668993461.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2016-10-25 09:37:27', '2016-10-25 09:37:27', '', 'g11-sed', '', 'inherit', 'open', 'closed', '', 'g11-sed', '', '', '2016-10-25 09:37:27', '2016-10-25 09:37:27', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/g11-sed.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2016-10-25 10:54:42', '2016-10-25 10:54:42', '', 'g11-logo', '', 'inherit', 'open', 'closed', '', 'g11-logo', '', '', '2016-10-25 10:54:42', '2016-10-25 10:54:42', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/g11-logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2016-10-25 10:57:38', '2016-10-25 10:57:38', '', 'imageedit_8_4540888611', '', 'inherit', 'open', 'closed', '', 'imageedit_8_4540888611', '', '', '2016-10-25 10:57:38', '2016-10-25 10:57:38', '', 0, 'http://localhost/Business-Ideas/wp-content/uploads/2016/10/imageedit_8_4540888611.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2016-11-03 04:43:45', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-03 04:43:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/Business-Ideas/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2016-11-03 04:43:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-03 04:43:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/Business-Ideas/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2016-11-03 04:47:50', '2016-11-03 04:47:50', '', 'Shopping Cart', '', 'publish', 'closed', 'closed', '', 'shopping-cart', '', '', '2016-11-03 04:47:50', '2016-11-03 04:47:50', '', 0, 'http://localhost/Business-Ideas/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-11-03 04:47:38', '2016-11-03 04:47:38', '', 'shopping cart', '', 'inherit', 'open', 'closed', '', '1478166434_shopping_cart', '', '', '2016-11-03 04:47:45', '2016-11-03 04:47:45', '', 20, 'http://localhost/Business-Ideas/wp-content/uploads/2016/11/1478166434_Shopping_Cart.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2016-11-03 04:47:50', '2016-11-03 04:47:50', '', 'Shopping Cart', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-11-03 04:47:50', '2016-11-03 04:47:50', '', 20, 'http://localhost/Business-Ideas/2016/11/03/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2016-11-03 04:47:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-03 04:47:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/Business-Ideas/wp-admin/post.php?post=23&action=edit', 0, 'wpsc_cart_orders', '', 0),
(24, 1, '2016-11-03 04:48:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-11-03 04:48:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/Business-Ideas/wp-admin/post.php?post=24&action=edit', 0, 'wpsc_cart_orders', '', 0),
(26, 1, '2016-11-03 04:48:54', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-03 04:48:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Business-Ideas/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2016-11-03 04:49:01', '2016-11-03 04:49:01', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2016-11-03 04:50:19', '2016-11-03 04:50:19', '', 0, 'http://localhost/Business-Ideas/?p=27', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_termmeta`
--

CREATE TABLE `jh_business_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_terms`
--

CREATE TABLE `jh_business_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_terms`
--

INSERT INTO `jh_business_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'g11-menu', 'g11-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_term_relationships`
--

CREATE TABLE `jh_business_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_term_relationships`
--

INSERT INTO `jh_business_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_term_taxonomy`
--

CREATE TABLE `jh_business_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_term_taxonomy`
--

INSERT INTO `jh_business_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_usermeta`
--

CREATE TABLE `jh_business_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_usermeta`
--

INSERT INTO `jh_business_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jhesed'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'jh_business_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'jh_business_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"7802c431493ce4a85d9511de3bc22591bef44c631a25d47e61f645604f714ca0";a:4:{s:10:"expiration";i:1477217038;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1477044238;}s:64:"de2e01ab59dd03fff85c5d900964ad7b6053166d4d80b483421b69ba46a129d3";a:4:{s:10:"expiration";i:1478413177;s:2:"ip";s:3:"::1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1477203577;}}'),
(15, 1, 'jh_business_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'jh_business_user-settings', 'libraryContent=browse'),
(17, 1, 'jh_business_user-settings-time', '1477300151'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:24:"add-post-type-pf_contact";i:1;s:30:"add-post-type-wpsc_cart_orders";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `jh_business_users`
--

CREATE TABLE `jh_business_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jh_business_users`
--

INSERT INTO `jh_business_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jhesed', '$P$BiTxfXKKXPYSQ164/R8lx3oKCnLabH/', 'jhesed', 'jhesed.tacadena@gmail.com', '', '2016-10-21 10:03:45', '', 0, 'jhesed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jh_business_commentmeta`
--
ALTER TABLE `jh_business_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jh_business_comments`
--
ALTER TABLE `jh_business_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `jh_business_links`
--
ALTER TABLE `jh_business_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `jh_business_options`
--
ALTER TABLE `jh_business_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jh_business_postmeta`
--
ALTER TABLE `jh_business_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jh_business_posts`
--
ALTER TABLE `jh_business_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jh_business_termmeta`
--
ALTER TABLE `jh_business_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jh_business_terms`
--
ALTER TABLE `jh_business_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `jh_business_term_relationships`
--
ALTER TABLE `jh_business_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `jh_business_term_taxonomy`
--
ALTER TABLE `jh_business_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `jh_business_usermeta`
--
ALTER TABLE `jh_business_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `jh_business_users`
--
ALTER TABLE `jh_business_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jh_business_commentmeta`
--
ALTER TABLE `jh_business_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jh_business_comments`
--
ALTER TABLE `jh_business_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jh_business_links`
--
ALTER TABLE `jh_business_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jh_business_options`
--
ALTER TABLE `jh_business_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT for table `jh_business_postmeta`
--
ALTER TABLE `jh_business_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `jh_business_posts`
--
ALTER TABLE `jh_business_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `jh_business_termmeta`
--
ALTER TABLE `jh_business_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jh_business_terms`
--
ALTER TABLE `jh_business_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jh_business_term_taxonomy`
--
ALTER TABLE `jh_business_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jh_business_usermeta`
--
ALTER TABLE `jh_business_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `jh_business_users`
--
ALTER TABLE `jh_business_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
