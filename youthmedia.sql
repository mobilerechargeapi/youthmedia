-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2018 at 10:12 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youthmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`) VALUES
(1, 'Talented Skills'),
(2, 'News'),
(3, 'Funny'),
(4, 'Song');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `commentText` longtext NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `userId`, `postId`, `parent`, `commentText`, `website`, `createdAt`) VALUES
(1, 3, 73, 0, 'this is my first comment', NULL, '2017-07-27'),
(2, 6, 73, 1, 'hello qudrat you like this video?', NULL, '2017-07-27'),
(3, 1, 80, 0, 'hello testing', NULL, '2017-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `generalId` int(10) UNSIGNED NOT NULL,
  `webTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footerArea` longtext COLLATE utf8_unicode_ci,
  `footerTextColor` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googleAnalytics` longtext COLLATE utf8_unicode_ci,
  `googleAnalyticsAdditional` longtext COLLATE utf8_unicode_ci,
  `fbAnalytics` longtext COLLATE utf8_unicode_ci,
  `otherSeo` longtext COLLATE utf8_unicode_ci,
  `otherAnalyticsHead` longtext COLLATE utf8_unicode_ci,
  `otherAnalyticsBody` longtext COLLATE utf8_unicode_ci,
  `aboutUs` text COLLATE utf8_unicode_ci,
  `contactAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactPhoneOne` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactPhoneTwo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`generalId`, `webTitle`, `footerArea`, `footerTextColor`, `googleAnalytics`, `googleAnalyticsAdditional`, `fbAnalytics`, `otherSeo`, `otherAnalyticsHead`, `otherAnalyticsBody`, `aboutUs`, `contactAddress`, `contactPhoneOne`, `contactPhoneTwo`, `contactEmail`) VALUES
(135, 'Youth Media', NULL, NULL, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({''gtm.start'':\r\nnew Date().getTime(),event:''gtm.js''});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=''dataLayer''?''&l=''+l:'''';j.async=true;j.src=\r\n''https://www.googletagmanager.com/gtm.js?id=''+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,''script'',''dataLayer'',''GTM-W9BVCM'');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM"\r\nheight="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=''2.0'';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,''script'',''https://connect.facebook.net/en_US/fbevents.js'');\r\nfbq(''init'', ''1502663706627568'');\r\nfbq(''track'', ''PageView'');\r\n</script>\r\n<noscript><img height="1" width="1" style="display:none"\r\nsrc="https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type="text/javascript">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = "en";\r\nvar google_conversion_format = "3";\r\nvar google_conversion_color = "ffffff";\r\nvar google_conversion_label = "NGV7CI2t92EQ78e03gM";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">\r\n</script>\r\n<noscript>\r\n<div style="display:inline;">\r\n<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0"/>\r\n</div>\r\n</noscript>', NULL, '<script type="text/javascript">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(''705-NYP-170'');\r\n    }\r\n  }\r\n  var s = document.createElement(''script'');\r\n  s.type = ''text/javascript'';\r\n  s.async = true;\r\n  s.src = ''//munchkin.marketo.net/munchkin.js'';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == ''complete'' || this.readyState == ''loaded'') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(''head'')[0].appendChild(s);\r\n})();\r\n</script>', NULL, NULL, NULL, NULL, NULL),
(136, 'Youth Media', NULL, NULL, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({''gtm.start'':\r\nnew Date().getTime(),event:''gtm.js''});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=''dataLayer''?''&l=''+l:'''';j.async=true;j.src=\r\n''https://www.googletagmanager.com/gtm.js?id=''+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,''script'',''dataLayer'',''GTM-W9BVCM'');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM"\r\nheight="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=''2.0'';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,''script'',''https://connect.facebook.net/en_US/fbevents.js'');\r\nfbq(''init'', ''1502663706627568'');\r\nfbq(''track'', ''PageView'');\r\n</script>\r\n<noscript><img height="1" width="1" style="display:none"\r\nsrc="https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type="text/javascript">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = "en";\r\nvar google_conversion_format = "3";\r\nvar google_conversion_color = "ffffff";\r\nvar google_conversion_label = "NGV7CI2t92EQ78e03gM";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">\r\n</script>\r\n<noscript>\r\n<div style="display:inline;">\r\n<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0"/>\r\n</div>\r\n</noscript>', NULL, '<script type="text/javascript">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(''705-NYP-170'');\r\n    }\r\n  }\r\n  var s = document.createElement(''script'');\r\n  s.type = ''text/javascript'';\r\n  s.async = true;\r\n  s.src = ''//munchkin.marketo.net/munchkin.js'';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == ''complete'' || this.readyState == ''loaded'') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(''head'')[0].appendChild(s);\r\n})();\r\n</script>', NULL, NULL, NULL, NULL, NULL),
(137, 'Youth Media', NULL, NULL, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({''gtm.start'':\r\nnew Date().getTime(),event:''gtm.js''});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=''dataLayer''?''&l=''+l:'''';j.async=true;j.src=\r\n''https://www.googletagmanager.com/gtm.js?id=''+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,''script'',''dataLayer'',''GTM-W9BVCM'');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM"\r\nheight="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=''2.0'';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,''script'',''https://connect.facebook.net/en_US/fbevents.js'');\r\nfbq(''init'', ''1502663706627568'');\r\nfbq(''track'', ''PageView'');\r\n</script>\r\n<noscript><img height="1" width="1" style="display:none"\r\nsrc="https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type="text/javascript">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = "en";\r\nvar google_conversion_format = "3";\r\nvar google_conversion_color = "ffffff";\r\nvar google_conversion_label = "NGV7CI2t92EQ78e03gM";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">\r\n</script>\r\n<noscript>\r\n<div style="display:inline;">\r\n<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0"/>\r\n</div>\r\n</noscript>', NULL, '<script type="text/javascript">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(''705-NYP-170'');\r\n    }\r\n  }\r\n  var s = document.createElement(''script'');\r\n  s.type = ''text/javascript'';\r\n  s.async = true;\r\n  s.src = ''//munchkin.marketo.net/munchkin.js'';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == ''complete'' || this.readyState == ''loaded'') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(''head'')[0].appendChild(s);\r\n})();\r\n</script>', 'Vestibulum quis cursus mi, vitae mollis metus.Nulam eu lects gravida, bibendum enim in, vulputate erat. Vestibulum ullamcorper ornare magna', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net'),
(138, 'Youth Media', NULL, NULL, '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({''gtm.start'':\r\nnew Date().getTime(),event:''gtm.js''});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=''dataLayer''?''&l=''+l:'''';j.async=true;j.src=\r\n''https://www.googletagmanager.com/gtm.js?id=''+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,''script'',''dataLayer'',''GTM-W9BVCM'');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM"\r\nheight="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=''2.0'';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,''script'',''https://connect.facebook.net/en_US/fbevents.js'');\r\nfbq(''init'', ''1502663706627568'');\r\nfbq(''track'', ''PageView'');\r\n</script>\r\n<noscript><img height="1" width="1" style="display:none"\r\nsrc="https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type="text/javascript">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = "en";\r\nvar google_conversion_format = "3";\r\nvar google_conversion_color = "ffffff";\r\nvar google_conversion_label = "NGV7CI2t92EQ78e03gM";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">\r\n</script>\r\n<noscript>\r\n<div style="display:inline;">\r\n<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0"/>\r\n</div>\r\n</noscript>', NULL, '<script type="text/javascript">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(''705-NYP-170'');\r\n    }\r\n  }\r\n  var s = document.createElement(''script'');\r\n  s.type = ''text/javascript'';\r\n  s.async = true;\r\n  s.src = ''//munchkin.marketo.net/munchkin.js'';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == ''complete'' || this.readyState == ''loaded'') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(''head'')[0].appendChild(s);\r\n})();\r\n</script>', 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net'),
(139, 'Youth Media', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net');

-- --------------------------------------------------------

--
-- Table structure for table `likes_shares`
--

CREATE TABLE `likes_shares` (
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT '0',
  `unliked` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes_shares`
--

INSERT INTO `likes_shares` (`postId`, `userId`, `liked`, `unliked`) VALUES
(79, 6, 0, 1),
(45, 3, 1, 0),
(73, 3, 1, 0),
(74, 6, 1, 0),
(45, 1, 1, 0),
(56, 1, 1, 0),
(65, 1, 1, 0),
(53, 1, 0, 1),
(77, 1, 1, 0),
(78, 3, 0, 1),
(74, 3, 0, 1),
(46, 3, 1, 0),
(48, 3, 0, 1),
(80, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_09_075428_create_roles_table', 2),
(4, '2016_11_09_075611_create_cities_table', 2),
(5, '2016_11_09_080008_create_gallery_table', 2),
(6, '2016_11_09_080201_create_contact_request_table', 2),
(7, '2016_11_11_064450_create_side_images_table', 3),
(8, '2016_11_14_113058_create_forms_table', 4),
(9, '2016_11_14_143028_create_events_table', 5),
(10, '2016_11_15_125844_create_documents_table', 6),
(11, '2016_11_16_130343_create_general_settings_table', 7),
(12, '2016_11_16_131002_create_social_settings_table', 7),
(13, '2016_11_16_131033_create_footer_slidder_table', 7),
(14, '2016_11_17_091811_create_navigation_table', 8),
(15, '2016_11_23_065450_create_after_party_details_table', 9),
(16, '2016_11_25_122007_create_blog_table', 10),
(17, '2016_11_30_163813_create_faq_table', 11),
(18, '2016_11_30_173025_create_faq_categories_table', 12),
(19, '2016_12_06_032645_create_timezone_table', 13),
(20, '2016_12_07_034614_create_volunteers_table', 14),
(21, '2016_12_09_051812_create_sponsors_table', 15),
(22, '2016_12_15_035458_create_charity_table', 16),
(23, '2016_12_22_022459_create_document_files_table', 17),
(24, '2016_12_28_063505_create_virtual_faq_table', 18),
(25, '2017_01_04_103428_create_obstacles_table', 19),
(26, '2015_05_06_194030_create_youtube_access_tokens_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `navId` int(10) UNSIGNED NOT NULL,
  `pageCode` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `pageName` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `pageTitle` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageDescription` longtext COLLATE utf8_unicode_ci,
  `pageKeywords` longtext COLLATE utf8_unicode_ci,
  `isEnable` tinyint(1) NOT NULL DEFAULT '1',
  `navLocation` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `pageSettings` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`navId`, `pageCode`, `pageName`, `pageTitle`, `pageDescription`, `pageKeywords`, `isEnable`, `navLocation`, `pageSettings`) VALUES
(10, 'privacypolicy', 'Privacy Policy', 'Privacy Policy', NULL, NULL, 0, 'header', '{"privacyText":"<p>By using and visiting our website, you agree to the terms and conditions and Privacy policy of YOUTHMEDIA. These terms and conditions apply to all users, and if you don''t agree to these terms then please don''t use the website. YOUTHMEDIA has created this Privacy policy in order to demonstrate our determination to your online privacy.<\\/p>\\r\\n<h3>What information do we collect:<\\/h3>\\r\\n<p>We collect information when you register to our website. You may be asked to enter your name, your email address, your country name, your address and your telephone number<\\/p>\\r\\n<h3>What do we use your information for?<\\/h3>\\r\\n<p>We use your information just to enhance your experience and to improve our website.<\\/p>\\r\\n<h3>Approved Videos:<\\/h3>\\r\\n<p>Videos uploaded by user should meet following criteria for getting approved:<\\/p>\\r\\n<ul>\\r\\n<li>Videos should not be against any religion.<\\/li>\\r\\n<li>Videos should not contain any any sexually explicit content.<\\/li>\\r\\n<li>Videos should not contain illegal acts (including but not limited to incitement to violence, animal abuse or drug abuse).<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>If you think any content is explicit in nature and should not be allowed on the website than you can report it and we will make sure that it is taken down immediately and appropriate action is taken against the offender.<\\/strong><\\/p>\\r\\n<h3>Changes to our Privacy Policy:<\\/h3>\\r\\n<p>If we want to change our privacy policy, we&rsquo;ll post it here or we will notify you via email.<\\/p>","navId":"10","pageCode":"privacypolicy","pageTitle":"Privacy Policy","pageDescription":null,"pageKeywords":null}'),
(30, 'termsandconditions', 'Terms And Conditions', 'Terms And Conditions', NULL, 'TOC', 0, 'header', '{"toc":"<h3>Terms of Service<\\/h3>\\r\\n<p><strong>KINDLY CONFER TO THESE TERMS OF USE CAREFULLY. They show that the nature of the website and the rules and regulations associated with are greatly important. Along with that we respect the rights of all organizations and individuals. In case of any questions or confusions, please do not hesitate in reaching out to us.<\\/strong><\\/p>\\r\\n<p><strong>WITH THE USE OF YOUTHMEDIA, YOU REPRESENT TO US THAT YOU HAVE ALL NECESSARY AUTHORITY AND POWER TO AGREE TO THE TERMS WHICH YOU AGREE SHALL BE BINDING ON THE CORPORATION, PARTNERSHIP, ASSOCIATION OR OTHER ENTITY IN WHOSE NAME YOU ARE REGISTERING AS A USER AND ESTABLISHING AN ACCOUNT. IF YOU DO NOT AGREE TO ANY OF THESE TERMS, YOU MAY NOT USE THE WEBSITE.<\\/strong><\\/p>\\r\\n<h3>Description of the Website:<\\/h3>\\r\\n<p>If you have registered on YOUTHMEDIA and own an account then the files you upload\\/create, the activity on your account (comments, likes, shares), and your avatar is not owned by YOUTHMEDIA. By keeping your account privacy open to other users (as a body, or by individual group), you agree to allow any users of the Website free of charge and for personal use only, to view and transmit Your Content on or through the Website, on other electronic communication media or technology (e.g. smartphones, tablets, connected TV, game consoles), for the entire period in which Your Content is hosted on the Website. The amount your time your content will be hosted on site, you authorize YOUTHMEDIA to reproduce\\/feature Your Content and, as necessary, adjust its format for that purpose. Please note that due to the inherent nature of the Internet, data transmitted &ndash; including Your Content - are not protected against the risks of misuse and\\/or piracy, for which we shall not be liable. You are responsible for taking all appropriate steps to protect such data, where applicable.<\\/p>\\r\\n<p>If you have any complaints or suggestions, regarding YOUTHMEDIA contact us from out contact page<\\/p>\\r\\n<h3>Prize eligibility and criteria:<\\/h3>\\r\\n<ul class=\\"toc-ul\\">\\r\\n<li><span style=\\"font-size: 14pt;\\">All prizes are for registered users only.<\\/span><\\/li>\\r\\n<li><span style=\\"font-size: 14pt;\\">You also have like our <a href=\\"https:\\/\\/facebook.com\\" target=\\"_blank\\">FaceBook<\\/a> page for getting eligible for prize.<\\/span><\\/li>\\r\\n<li><span style=\\"font-size: 14pt;\\">Your videos should have to approved by YOUTHMEDIA else it will not be considered in total videos count. Visit our Policy page to check our Approved videos criteria.<\\/span><\\/li>\\r\\n<li><span style=\\"font-size: 14pt;\\">All cash prizes or mobile top ups will be transferred on 1st week of each month.<\\/span><\\/li>\\r\\n<li><span style=\\"font-size: 14pt;\\">Once your total uploaded videos reach 100 you will receive an email by YOUTHMEDIA having your details and other important information for prize transfer. You have to provide us that email''s information in order for your account''s verification. If you somehow didn''t receive our email you can contact us and will solve your issue.<\\/span><\\/li>\\r\\n<\\/ul>","navId":"30","pageCode":"termsandconditions","pageTitle":"Terms And Conditions","pageDescription":null,"pageKeywords":"TOC"}'),
(49, 'contact', 'Contact', 'Contact Us', NULL, 'contactus', 1, 'header', '{"sendTo":"umair.malik@purelogics.net","locLong":"74.354321","locLat":"31.558952","navId":"49","pageCode":"contact","pageTitle":"Contact Us","pageDescription":null,"pageKeywords":"contactus"}'),
(50, 'home', 'Home', 'Home', NULL, NULL, 1, 'header', '{"pageImage":null,"navId":"50","pageCode":"home","pageTitle":"Home","pageDescription":null,"pageKeywords":null}'),
(51, 'prize', 'Prize', 'Prize', NULL, 'prize', 1, 'header', '{"prizeText":"<p>By using and registering at our website, you can win prizes including mobile top ups and cash prizes.<strong>These prizes are for all registered users excluding YOUTHMEDIA team.<\\/strong><\\/p>\\r\\n<h3>Win By Uploading Videos:<\\/h3>\\r\\n<p>You can win up to 500rs mobile balance by uploading 100 videos at our website. Those videos should have to be approved by YOUTHMEDIA.<\\/p>\\r\\n<h3>Top Liked Video<\\/h3>\\r\\n<p>If your video get 100+ likes you can win 1000rs mobile balance or cash.<\\/p>\\r\\n<h3>More exciting prizes still to come<\\/h3>\\r\\n<p>As we are promoting our website we are continuously arranging more prizes and gifts for our users and those will be posted here and on our Facebook page. So keep looking at it occasionally to stay up to date.<\\/p>\\r\\n<h3>Visit Terms and Conditions page for further details regarding prize eligibility criteria<\\/h3>","navId":"51","pageCode":"prize","pageTitle":"Prize","pageDescription":null,"pageKeywords":"prize"}');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(11) NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDescription` text,
  `postThumbnail` varchar(255) DEFAULT NULL,
  `uniqueCustomKey` text,
  `createdOn` int(11) NOT NULL,
  `websiteId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `post` longtext NOT NULL,
  `postTags` longtext,
  `userId` int(11) DEFAULT NULL,
  `postStatus` tinyint(4) NOT NULL DEFAULT '0',
  `isScrapped` tinyint(4) DEFAULT NULL,
  `postViewed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `postTitle`, `postDescription`, `postThumbnail`, `uniqueCustomKey`, `createdOn`, `websiteId`, `categoryId`, `post`, `postTags`, `userId`, `postStatus`, `isScrapped`, `postViewed`) VALUES
(33, 'Breaking News:- PM Nawaz Sharif Meeting Important Personality', '', '11502782140.jpg', 'http://www.dailymotion.com/embed/video/x5txkja', 1500372617, 2, 2, 'http://www.dailymotion.com/embed/video/x5txkja', NULL, 1, 1, 1, 3),
(34, 'Breaking News:- Qatar Se Kaun Pakistan Araha Hai?', '', '21502782141.jpg', 'http://www.dailymotion.com/embed/video/x5txllv', 1500372618, 2, 2, 'http://www.dailymotion.com/embed/video/x5txllv', NULL, 1, 1, 1, NULL),
(35, 'Amir Mateen Analysis On Today’s Panama Proceedings', NULL, '31502782141.jpg', 'http://www.dailymotion.com/embed/video/x5txj5j', 1500372619, 2, 2, 'http://www.dailymotion.com/embed/video/x5txj5j', NULL, 1, 1, 1, NULL),
(36, 'Rauf Klasra Analysis On Today’s Panama Proceedings', NULL, '41502782142.jpg', 'http://www.dailymotion.com/embed/video/x5txisg', 1500372620, 2, 2, 'http://www.dailymotion.com/embed/video/x5txisg', NULL, 1, 1, 1, NULL),
(37, 'Arshad Sharif &#038; Sabir Shakir Analysis On Today&#8217;s Panama Proceedings', '', '51502782142.jpg', 'http://www.dailymotion.com/embed/video/x5txfiy', 1500372621, 2, 2, 'http://www.dailymotion.com/embed/video/x5txfiy', NULL, 1, 1, 1, NULL),
(38, 'Waseem Badami Making Fun Of Tariq Fazal & Daniyal Aziz', NULL, '61502782143.jpg', 'http://www.dailymotion.com/embed/video/x5txbfz', 1500372624, 2, 2, 'http://www.dailymotion.com/embed/video/x5txbfz', NULL, 1, 1, 1, NULL),
(39, 'Faisla Karna Hai Ke Nawaz Sharif Ko Na Ehal Karna Hai Ya&#8230;', '', '71502782144.jpg', 'http://www.dailymotion.com/embed/video/x5tx59u', 1500372625, 2, 2, 'http://www.dailymotion.com/embed/video/x5tx59u', NULL, 1, 1, 1, NULL),
(40, 'Justice Sheikh Azmat Remarks On Volume 10', '', '81502782145.jpg', 'http://www.dailymotion.com/embed/video/x5tx1rj', 1500372627, 2, 2, 'http://www.dailymotion.com/embed/video/x5tx1rj', NULL, 1, 1, 1, NULL),
(41, 'Breaking News:- Hamid Mir Leaving Geo News?', '', '91502782145.jpg', 'http://www.dailymotion.com/embed/video/x5twzik', 1500372628, 2, 2, 'http://www.dailymotion.com/embed/video/x5twzik', NULL, 1, 1, 1, NULL),
(42, 'Justice Ejaz Ul Ahsan Excellent Remarks In Court', '', '101502782146.jpg', 'http://www.dailymotion.com/embed/video/x5twtqd', 1500372629, 2, 2, 'http://www.dailymotion.com/embed/video/x5twtqd', NULL, 1, 1, 1, NULL),
(43, 'Discussion Between Judges &#038; Sharif Family Lawyer', '', '111502782147.jpg', 'http://www.dailymotion.com/embed/video/x5twrse', 1500372630, 2, 2, 'http://www.dailymotion.com/embed/video/x5twrse', NULL, 1, 1, 1, NULL),
(44, 'Chaudhary Nisar Ki Tabyat Kharab', '', '121502782147.jpg', 'http://www.dailymotion.com/embed/video/x5tx8tf', 1500372639, 2, 2, 'http://www.dailymotion.com/embed/video/x5tx8tf', NULL, 1, 1, 1, NULL),
(45, 'Despacito Mashup', 'Despacito + Shape Of You + Treat You Better + Faded Best MashUp', 'VEJfmQM6y48.jpg', 'https://www.youtube.com/embed/VEJfmQM6y48', 1500535066, 3, 4, 'https://www.youtube.com/embed/VEJfmQM6y48', 'news,song,mashup', 3, 1, 0, 15),
(46, 'Pindi Boys', 'Pindi Boys Styles', 'U8Lh_77gz8E.jpg', 'https://www.youtube.com/embed/U8Lh_77gz8E', 1500544774, 3, 3, 'https://www.youtube.com/embed/U8Lh_77gz8E', 'pindi,boys,funny', 6, 1, 0, 2),
(47, 'Love with Education', 'Show love with education', 'Al0LbJvoVGM.jpg', 'https://www.youtube.com/embed/Al0LbJvoVGM', 1500545247, 3, 1, 'https://www.youtube.com/embed/Al0LbJvoVGM', 'study,symfony,education', 6, 1, 0, 3),
(48, 'Symfony Tutorial', 'this is symfony tutorial for beginners', '1500739677.jpg', 'https://www.youtube.com/embed/Puc1y6H92cw', 1500585967, 3, 1, 'https://www.youtube.com/embed/Puc1y6H92cw', 'symfony,tutorial,study', 4, 1, 0, 4),
(49, 'Salman Akram Raja Exclusive Talk Outside SC', '', '131502782148.jpg', 'http://www.dailymotion.com/embed/video/x5uav2i', 1500625867, 2, 2, 'http://www.dailymotion.com/embed/video/x5uav2i', NULL, 1, 1, 1, NULL),
(50, 'Chaudhary Nisar Ne La Taluqi Ka Elaan Kardiya?', '', '141502782149.jpg', 'http://www.dailymotion.com/embed/video/x5uatjv', 1500625868, 2, 2, 'http://www.dailymotion.com/embed/video/x5uatjv', NULL, 1, 1, 1, NULL),
(51, 'Faisla Mehfooz Karte Waqt Judges Ne Kiya Remarks Diye?', '', '151502782149.jpg', 'http://www.dailymotion.com/embed/video/x5uapid', 1500625869, 2, 2, 'http://www.dailymotion.com/embed/video/x5uapid', NULL, 1, 1, 1, NULL),
(52, 'Adalat Ne Panama Ka Faisla Mehfooz Karliya', '', '161502782150.jpg', 'http://www.dailymotion.com/embed/video/x5uao5j', 1500625870, 2, 2, 'http://www.dailymotion.com/embed/video/x5uao5j', NULL, 1, 1, 1, NULL),
(53, 'Breaking News:- Zaffar Hijazi Got Arrested', '', '171502782151.jpg', 'http://www.dailymotion.com/embed/video/x5uak7b', 1500625871, 2, 2, 'http://www.dailymotion.com/embed/video/x5uak7b', NULL, 1, 1, 1, 5),
(54, 'Kiya Ishaq Dar Wadah Maaf Gawah Banna Chahte Hain?', '', '181502782151.jpg', 'http://www.dailymotion.com/embed/video/x5uad4o', 1500625872, 2, 2, 'http://www.dailymotion.com/embed/video/x5uad4o', NULL, 1, 1, 1, NULL),
(55, 'Nawaz Sharif Ke Sath Kaunsi Shaksiyat Bhi Phanse Wali Hai?', '', '191502782152.jpg', 'http://www.dailymotion.com/embed/video/x5uaajz', 1500625875, 2, 2, 'http://www.dailymotion.com/embed/video/x5uaajz', NULL, 1, 1, 1, NULL),
(56, 'Dabang Remarks Of Justice Ejaz Ahsan On Ishaq Dar', '', '201502782153.jpg', 'http://www.dailymotion.com/embed/video/x5ua7zn', 1500625876, 2, 2, 'http://www.dailymotion.com/embed/video/x5ua7zn', NULL, 1, 1, 1, 4),
(57, 'Judges Ne Nawaz Sharif Maryam Nawaz Ko Phansa Diya', '', '211502782154.jpg', 'http://www.dailymotion.com/embed/video/x5ua67g', 1500625877, 2, 2, 'http://www.dailymotion.com/embed/video/x5ua67g', NULL, 1, 1, 1, NULL),
(58, 'Breaking News:- Volume 10 Bhi Khol Diya Gaya', NULL, '221502782154.jpg', 'http://www.dailymotion.com/embed/video/x5ua55c', 1500625878, 2, 2, 'http://www.dailymotion.com/embed/video/x5ua55c', 'panama,PTI,pmnl,news', 1, 1, 1, NULL),
(59, 'Larka Larki Se Milne Gaya Aur Pakra Gaya', '', '231502782155.jpg', 'http://www.dailymotion.com/embed/video/x5ul0vx', 1500887094, 2, 2, 'http://www.dailymotion.com/embed/video/x5ul0vx', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(60, 'Wazir e Azam Kitna Jhoot Bolay Gay Arshad Sharif', '', '241502782156.jpg', 'http://www.dailymotion.com/embed/video/x5uknh7', 1500887095, 2, 2, 'http://www.dailymotion.com/embed/video/x5uknh7', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(61, 'Imran Khan Ne Bari Ghalti Kardi..??? Sohail Warraich Response.', '', '251502782157.jpg', 'http://www.dailymotion.com/embed/video/x5ukxt8', 1500887096, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukxt8', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(62, '2018 Ke Elections Se Pehle Apko Kisi Kism Ka Koi Khadsha Hai.. Aftab Iqbal Response', '', '261502782158.jpg', 'http://www.dailymotion.com/embed/video/x5ukxet', 1500887097, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukxet', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(63, 'JIT Ne Kya Galtiyan ki Hain.?? &#8211;  Hamid Mir', '', '271502782159.jpg', 'http://www.dailymotion.com/embed/video/x5ukmdh', 1500887099, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukmdh', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(64, 'Chaudry Nisar ki Narazgi Ki Waja Kia hai..Javed Chaudhry', '', '281502782159.jpg', 'http://www.dailymotion.com/embed/video/x5ukm9u', 1500887101, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukm9u', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(65, 'Chaudhary Nisar Bhi Sheikh Rasheed Ki Tarah Media May Inn Rakhna Jantay Hain- Rauf Klasra', '', '291502782160.jpg', 'http://www.dailymotion.com/embed/video/x5ukn9t', 1500887102, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukn9t', 'news,politics,media,pakistan', 1, 1, 1, 4),
(66, 'Imran Khan Ne Money Laundering Nahi Ki Paisa Bahir Nahi Gaya.. Hamid Mir', '', '301502782161.jpg', 'http://www.dailymotion.com/embed/video/x5ukk6c', 1500887103, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukk6c', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(67, 'See What Sohail Warraich Reply To Khawaja Asif..', '', '311502782161.jpg', 'http://www.dailymotion.com/embed/video/x5ukt7j', 1500887105, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukt7j', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(68, 'See What Mushtaq Ahmed Said About Imran Khan&#8230;', '', '321502782162.jpg', 'http://www.dailymotion.com/embed/video/x5uksdg', 1500887106, 2, 2, 'http://www.dailymotion.com/embed/video/x5uksdg', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(69, 'Mian Sahab Ke Teen Plan Kon Kon Se Hain..Javed Chaudhry', '', '331502782163.jpg', 'http://www.dailymotion.com/embed/video/x5ukmi8', 1500887109, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukmi8', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(70, 'Kashif Abbasi Comments on Imran Khan Case', '', '341502782163.jpg', 'http://www.dailymotion.com/embed/video/x5ukmee', 1500887111, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukmee', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(71, 'Kashif Abbasi Defends Chaudhry Nisar', '', '351502782163.jpg', 'http://www.dailymotion.com/embed/video/x5ukmfg', 1500887112, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukmfg', 'news,politics,media,pakistan', 1, 1, 1, NULL),
(72, 'Meri Pervez Musharraf Se Koi Zadti Larai To Nahe Haina Aaj Agar Nawaz Sharif..Hamid Mir', '', '361502782164.jpg', 'http://www.dailymotion.com/embed/video/x5ukmhp', 1500887114, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukmhp', 'news,politics,media,pakistan', 1, 1, 1, 9),
(73, 'Khawaja Asif Agar Prime Minister  Bantay Hain To Wo Un Popular Prime Minister Hongay Party Main -Rauf Klasra', '', '371502782164.jpg', 'http://www.dailymotion.com/embed/video/x5uknas', 1500887116, 2, 2, 'http://www.dailymotion.com/embed/video/x5uknas', 'news,politics,media,pakistan', 1, 1, 1, 21),
(74, 'Me Nawaz Sharif Ko Aik Masoom Seedha Sada Sa Na Ehal Admi Samajhta Hun.. Aftab Iqbal', '', '381502782164.jpg', 'http://www.dailymotion.com/embed/video/x5ukpti', 1500887117, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukpti', 'news,politics,media,pakistan', 1, 1, 1, 11),
(75, 'Mujhe Bilkul Nahi Pata Tha Ke Mansoor Ali Khan Ne Mujh Se Ye Sawal Puchna Hai&#8230; Aftab Iqbal', '', '391502782165.jpg', 'http://www.dailymotion.com/embed/video/x5ukpuk', 1500887118, 2, 2, 'http://www.dailymotion.com/embed/video/x5ukpuk', 'news,politics,media,pakistan', 1, 1, 1, 3),
(76, 'Geo Reporter Calls Austin Robertson For Getting Info About Imran Khan', '', '401502782165.jpg', 'http://www.dailymotion.com/embed/video/x5un17i', 1500890698, 2, 2, 'http://www.dailymotion.com/embed/video/x5un17i', 'news,politics,media,pakistan', 1, 1, 1, 20),
(77, 'Iqrar-ul-Hassan Bashing Gharida Farooqi For Harassing Domestic Worker', '', '411502782166.jpg', 'http://www.dailymotion.com/embed/video/x5un17g', 1500890700, 2, 2, 'http://www.dailymotion.com/embed/video/x5un17g', 'news,politics,media,pakistan', 1, 1, 1, 90),
(78, 'Leaked Call of Gharida Farooqi&#8217;s Harassing Domestic Worker', '', '421502782167.jpg', 'http://www.dailymotion.com/embed/video/x5umzqs', 1500890702, 2, 2, 'http://www.dailymotion.com/embed/video/x5umzqs', 'news,politics,media,pakistan', 1, 1, 1, 80),
(79, 'Breaking :- FIR Registered Against Anchor Gharida Farooqi', '', '431502782167.jpg', 'http://www.dailymotion.com/embed/video/x5umz0x', 1500890703, 2, 2, 'http://www.dailymotion.com/embed/video/x5umz0x', 'news,politics,media,pakistan', 1, 1, 1, 100),
(80, 'Pakistan Tehreek e Insaf', 'Imran Khan telling truth.', 'B_Zgeu08B6E.jpg', 'https://www.youtube.com/embed/B_Zgeu08B6E', 1501057133, 3, 2, 'https://www.youtube.com/embed/B_Zgeu08B6E', 'news,politics,PTI,imrankhan', 3, 1, 0, 93),
(81, 'Wapda Ky Karnamy', 'Reason of high electric bills.', 'GomIFRh5QPs.jpg', 'https://www.youtube.com/embed/GomIFRh5QPs', 1501059258, 3, 3, 'https://www.youtube.com/embed/GomIFRh5QPs', 'youthmedia,wapda,electricity', 3, 1, 0, 3),
(82, 'Reham Khan Response to Murad Saeed', '', '441502782168.jpg', 'http://www.dailymotion.com/embed/video/x5w6byp', 1502106641, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6byp', 'news,politics,media,pakistan', 1, 1, 1, 80),
(83, 'Exclusive Picture Of Reham Khan In Sarena Hotel', '', '451502782169.jpg', 'http://www.dailymotion.com/embed/video/x5w6b04', 1502106642, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6b04', 'news,politics,media,pakistan', 1, 1, 1, 26),
(84, 'What Boxer Aamir Khan Doing With Girl After Divorce', '', '461502782170.jpg', 'http://www.dailymotion.com/embed/video/x5w6au7', 1502106643, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6au7', 'news,politics,media,pakistan', 1, 1, 1, 41),
(85, 'Murad Saeed Blasts on Reham Khan', '', '471502782170.jpg', 'http://www.dailymotion.com/embed/video/x5w68zs', 1502106644, 2, 2, 'http://www.dailymotion.com/embed/video/x5w68zs', 'news,politics,media,pakistan', 1, 1, 1, 94),
(86, 'Gulalai Ka Mamla Fail Kesay Hogaya..Shad Masd Telling', '', '481502782171.jpg', 'http://www.dailymotion.com/embed/video/x5w466w', 1502106646, 2, 2, 'http://www.dailymotion.com/embed/video/x5w466w', 'news,politics,media,pakistan', 1, 1, 1, 20),
(87, 'Why Imran Khan Announce His Marriage During The Dharna -Ayesha Gulalai Telling', '', '491502782172.jpg', 'http://www.dailymotion.com/embed/video/x5w45z3', 1502106648, 2, 2, 'http://www.dailymotion.com/embed/video/x5w45z3', 'news,politics,media,pakistan', 1, 1, 1, 82),
(88, 'Ayesha Gulalai With Her Father First Time On Show', '', '501502782173.jpg', 'http://www.dailymotion.com/embed/video/x5w45hp', 1502106649, 2, 2, 'http://www.dailymotion.com/embed/video/x5w45hp', 'news,politics,media,pakistan', 1, 1, 1, 74),
(89, 'A Pakistani Guy Insult Hassan Nawaz In London Mall', '', '511502782174.jpg', 'http://www.dailymotion.com/embed/video/x5w44hr', 1502106650, 2, 2, 'http://www.dailymotion.com/embed/video/x5w44hr', 'news,politics,media,pakistan', 1, 1, 1, 54),
(90, 'Breaking News: Ayesha Ahad Ka Imran Khan Se Rabta&#8230;', '', '521502782174.jpg', 'http://www.dailymotion.com/embed/video/x5w43b5', 1502106651, 2, 2, 'http://www.dailymotion.com/embed/video/x5w43b5', 'news,politics,media,pakistan', 1, 1, 1, 40),
(91, 'Breaking News:- Bomb Disposal Squad In Bani Gala', '', '531502782175.jpg', 'http://www.dailymotion.com/embed/video/x5w6eyz', 1502106655, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6eyz', 'news,politics,media,pakistan', 1, 1, 1, 47),
(92, 'Khawaja Saad Rafiq Press Conference In Gujranwala &#8211; 7th August 2017', '', '541502782175.jpg', 'http://www.dailymotion.com/embed/video/x5w6bvg', 1502106658, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6bvg', 'news,politics,media,pakistan', 1, 1, 1, 61),
(93, 'Murad Saeed Exposing Reham Khan', '', '551502782176.jpg', 'http://www.dailymotion.com/embed/video/x5w6at3', 1502106661, 2, 2, 'http://www.dailymotion.com/embed/video/x5w6at3', 'news,politics,media,pakistan', 1, 1, 1, 55),
(94, 'Waseem Badami Response On Army Chief Speech', '', '561502782176.jpg', 'http://www.dailymotion.com/embed/video/x5wvhq3', 1502698086, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvhq3', 'news,politics,media,pakistan', 1, 1, 1, 99),
(95, 'Shehbaz Sharif addresses Nawaz Sharif, Imran Khan, Judges, Generals in an unusual independence day message', '', '571502782177.jpg', 'http://www.dailymotion.com/embed/video/x5wvgli', 1502698087, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvgli', 'news,politics,media,pakistan', 1, 1, 1, 68),
(96, 'Sabir Shakir Response On Army Chief Speech', '', '581502782178.jpg', 'http://www.dailymotion.com/embed/video/x5wvd5q', 1502698090, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvd5q', 'news,politics,media,pakistan', 1, 1, 1, 29),
(97, 'WATCH: Momina makes surprise appearance on flight to sing patriotic songs', '', '591502782178.jpg', 'http://www.dailymotion.com/embed/video/x5wvbzh', 1502698091, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvbzh', 'news,politics,media,pakistan', 1, 1, 1, 69),
(98, 'Imran Khan Badly Laughing On New Song &#8221; CHOR AYA CHOR AYA&#8221;', '', '601502782179.jpg', 'http://www.dailymotion.com/embed/video/x5wv9e5', 1502698092, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv9e5', 'news,politics,media,pakistan', 1, 1, 1, 88),
(99, 'General Qamar Bajwa Speech In Flag Ceremony At Wagah Border.', '', '611502782180.jpg', 'http://www.dailymotion.com/embed/video/x5wv81k', 1502698094, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv81k', 'news,politics,media,pakistan', 1, 1, 1, 61),
(100, 'Nawaz Sharif Taking Massage From Worker In Jalsa&#8230;', '', '621502782181.jpg', 'http://www.dailymotion.com/embed/video/x5wv6n0', 1502698095, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv6n0', 'news,politics,media,pakistan', 1, 1, 1, 34),
(101, 'Flag Ceremony At Wagah', '', '631502782181.jpg', 'http://www.dailymotion.com/embed/video/x5wv4yo', 1502698097, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv4yo', 'news,politics,media,pakistan', 1, 1, 1, 21),
(102, 'Aerial View Of Crowd During Imran Khan Speech', '', '641502782182.jpg', 'http://www.dailymotion.com/embed/video/x5wv3ol', 1502698098, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv3ol', 'news,politics,media,pakistan', 1, 1, 1, 79),
(103, 'Imran Khan Speech In Rawalpindi Jalsa â€“ 13th Speech 2017', '', '651502782183.jpg', 'http://www.dailymotion.com/embed/video/x5wv3nh', 1502698099, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv3nh', 'news,politics,media,pakistan', 1, 1, 1, 71),
(104, 'Shah Mehmood Qureshi Speech In Rawalpindi Jalsa &#8211; 13th Speech 2017', '', '661502782183.jpg', 'http://www.dailymotion.com/embed/video/x5wv1le', 1502698101, 2, 2, 'http://www.dailymotion.com/embed/video/x5wv1le', 'news,politics,media,pakistan', 1, 1, 1, 45),
(105, 'Was Shahbaz forced to make speech in Lahore rally??', '', '671502782184.jpg', 'http://www.dailymotion.com/embed/video/x5wva6t', 1502698102, 2, 2, 'http://www.dailymotion.com/embed/video/x5wva6t', 'news,politics,media,pakistan', 1, 1, 1, 92),
(106, 'Is the public satisfied with the judicial system??', '', '681502782184.jpg', 'http://www.dailymotion.com/embed/video/x5wvi1k', 1502698103, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvi1k', 'news,politics,media,pakistan', 1, 1, 1, 70),
(107, 'Imran Khan Grills Nawaz Sharif..', '', '691502782185.jpg', 'http://www.dailymotion.com/embed/video/x5wvwov', 1502698112, 2, 2, 'http://www.dailymotion.com/embed/video/x5wvwov', 'news,politics,media,pakistan', 1, 1, 1, 63),
(108, 'People chant Go Nawaz Go at Dolmen Mall Clifton Karachi while celebrating Independence Day', '', '701502782185.jpg', 'http://www.dailymotion.com/embed/video/x5x043q', 1502780267, 2, 2, 'http://www.dailymotion.com/embed/video/x5x043q', 'news,politics,media,pakistan', 1, 1, 1, 66),
(109, 'Gen Hameed Gul Ne Wafat Pane Se Pehle Kia kaha Tha ??', '', '711502782186.jpg', 'http://www.dailymotion.com/embed/video/x5x02vq', 1502780268, 2, 2, 'http://www.dailymotion.com/embed/video/x5x02vq', 'news,politics,media,pakistan', 1, 1, 1, 70),
(110, 'BREAKING : Aamir Liaquat Quits BOL News', '', '721502782186.jpg', 'http://www.dailymotion.com/embed/video/x5wzzyu', 1502780270, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzzyu', 'news,politics,media,pakistan', 1, 1, 1, 90),
(111, 'Nawaz Sharif Maldives Kyun Gaye Thay..?', '', '731502782187.jpg', 'http://www.dailymotion.com/embed/video/x5wzzea', 1502780271, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzzea', 'news,politics,media,pakistan', 1, 1, 1, 70),
(112, 'Hamid Mir Aur Asif Zardari Ke Darmiyaan Kia BET Lagi ..??', '', '741502782188.jpg', 'http://www.dailymotion.com/embed/video/x5wzxbm', 1502780273, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzxbm', 'news,politics,media,pakistan', 1, 1, 1, 92),
(113, 'Ayesha Gulalai Leaks Video Of Imran Khan On Twitter&#8230;', '', '751502782188.jpg', 'http://www.dailymotion.com/embed/video/x5wzvdo', 1502780274, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzvdo', 'news,politics,media,pakistan', 1, 1, 1, 52),
(114, 'Mian Sahib Punjab Ko Pakistan Se Alag Karna Chahte Hain..?', '', '761502782189.jpg', 'http://www.dailymotion.com/embed/video/x5wztp9', 1502780275, 2, 2, 'http://www.dailymotion.com/embed/video/x5wztp9', 'news,politics,media,pakistan', 1, 1, 1, 27),
(115, 'Maryam Nawaz Intiqaam Len Gi..??', '', '771502782190.jpg', 'http://www.dailymotion.com/embed/video/x5wzq20', 1502780276, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzq20', 'news,politics,media,pakistan', 1, 1, 1, 87),
(116, 'Actress Met Accident, See What Fans Did ??', '', '781502782191.jpg', 'http://www.dailymotion.com/embed/video/x5wzini', 1502780278, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzini', 'news,politics,media,pakistan', 1, 1, 1, 54),
(117, 'Asif Zardari Shut Up Call To PMLN Minister', '', '791502782191.jpg', 'http://www.dailymotion.com/embed/video/x5wzao4', 1502780279, 2, 2, 'http://www.dailymotion.com/embed/video/x5wzao4', 'news,politics,media,pakistan', 1, 1, 1, 49),
(118, 'Hamid Mir Shares his Family&#8217;s struggle during Partition', '', '801502782192.jpg', 'http://www.dailymotion.com/embed/video/x5wza7q', 1502780292, 2, 2, 'http://www.dailymotion.com/embed/video/x5wza7q', 'news,politics,media,pakistan', 1, 1, 1, 52);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `users` tinyint(1) NOT NULL DEFAULT '0',
  `pages` tinyint(1) NOT NULL DEFAULT '0',
  `websites` tinyint(1) NOT NULL DEFAULT '0',
  `categories` tinyint(1) NOT NULL DEFAULT '0',
  `posts` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `subscription` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `name`, `dashboard`, `users`, `pages`, `websites`, `categories`, `posts`, `pending`, `subscription`, `permissions`) VALUES
(1, 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Editor', 1, 0, 1, 1, 1, 0, 0, 0, 0),
(4, 'Public Users', 0, 0, 0, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `socialId` int(10) UNSIGNED NOT NULL,
  `socialName` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `socialLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `socialIcon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`socialId`, `socialName`, `socialLink`, `socialIcon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/Bubble-Ball-Xperience-103889456798496/', '14806705210.png'),
(2, 'Pinterest', 'https://www.pinterest.com/bubbleballxperi/', '14799849402.png'),
(4, 'Instagram', 'https://www.instagram.com/bubbleballxperience/', '14810301421.png');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscriptionId` int(11) NOT NULL,
  `subscriptionUserId` int(11) NOT NULL,
  `subscriptionEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscriptionId`, `subscriptionUserId`, `subscriptionEmail`) VALUES
(1, 3, 'qudrat.ullah@purelogics.net');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profileImg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userRole` int(11) NOT NULL,
  `userPhone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profileImg`, `userRole`, `userPhone`, `lastLogin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Umair Ali Malik', 'umair.malik@purelogics.net', '$2y$10$dV1pGXTdR4OLDtWKwnMgQOZWTmmZ0MltHwxCjohyBylXQab7WiGSu', '1500303103.png', 1, '03236207389', '2016-12-30 02:09:24', 'PBFxML10I1eujyrPl1j7KRvRSi4P68Ofq76cpl15O98fKTeju8S8CbclM8G5', '2016-11-09 03:19:37', '2017-01-20 08:03:09'),
(3, 'Qudrat Ullah', 'qudrat.ullah@purelogics.net', '$2y$10$jRVtI9VLb.2UNcWxtWR07OTlOoHsIPYIQu15tCRvP7pLSSYPeUgoO', '1501148967.png', 4, NULL, '2016-11-21 14:58:56', '1Zpzi7hG5nTn1kBlKEWYg28UQZFQPfgiUMsUpd1uS3NwzQx4gYTcmmUgg5OC', NULL, '2016-11-21 09:58:56'),
(4, 'Public User', 'publicusercannotlogin@youthmedia.net', '$2y$10$jRVtI9VLb.2UNcWxtWR07OTlOoHsIPYIQu15tCRvP7pLSSYPeUgoO', NULL, 4, NULL, '2016-11-21 14:58:56', 'uLeB4MFxnTSVXxyUMo2AspnOnarrUUmEzVuWPQYV606T5XeAfYiDkspewVB9', NULL, '2016-11-21 09:58:56'),
(6, 'Bilawal', 'bilawal@gmail.com', '$2y$10$4rkVa1B/l.5Pleioce54L.acfUDCa7kPxoFNe1lEnnYopVPK/CZZe', '1500631465.png', 4, NULL, NULL, '5Rzd7n5u9JdZ0J6J4GDtuURkH6TqZxkZph04tLNx1xKa3XCT6h6zbdaZLy84', '2017-07-21 05:04:25', '2017-07-21 05:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `websiteId` int(11) NOT NULL,
  `websiteName` varchar(255) DEFAULT NULL,
  `websiteUrl` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`websiteId`, `websiteName`, `websiteUrl`) VALUES
(1, 'PeopleAreAwesome', 'https://www.peopleareawesome.com/'),
(2, 'ZemTV', 'http://www.zemtv.com/category/pakistani/'),
(3, 'Youth Media', 'http://localhost/youthmedia/public/');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_access_tokens`
--

CREATE TABLE `youtube_access_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `youtube_access_tokens`
--

INSERT INTO `youtube_access_tokens` (`id`, `access_token`, `created_at`) VALUES
(4, '{"access_token":"ya29.GlyNBO2lt0NIiYg5HIr6207d0GZxhlvBi0kGexYdLsSoE0KaZ2H6ZSuKclY3swI2PUWzQNzd5gb993dxCXpUwaK7UmeKWOdq9n0DuMGmkIUwBz9F5OUoMJ0XA0Y91w","expires_in":3599,"token_type":"Bearer","created":1500533782}', '2017-07-20 01:56:22'),
(5, '{"access_token":"ya29.GlyNBLlZkwr8nz8xZksZJELuFyxAc9yRSBOi4AgsMIf5lmnd3ZcKCuNGW6DOQ2_HX6QofcJpd1zgszMZUJjIJ6KglHrPICwnk_Tl8IsGq_iUgpgCaPbs0nhf305dfw","expires_in":3599,"token_type":"Bearer","created":1500544601}', '2017-07-20 04:56:41'),
(6, '{"access_token":"ya29.GlyNBKuSrs7gIuiGU1A1MHB2v6cmSuVgZ09IZgVPmbBZjNsXAVx_A-PSSLBKDZoouMb1rnkkoLdgFrF0v6hih6CocoCE8u__R9lmyQ_iPTJ2qEmwg5GuzcZ_gVEJ3g","expires_in":3599,"token_type":"Bearer","created":1500544616}', '2017-07-20 04:56:57'),
(7, '{"access_token":"ya29.GluNBLZ2s7TigPezHcLXb3DvGkY3bXCf3jvNfx9oafQXFnH9wfQziBBsw7T30i6DhEnsNqnKCMLnrcwJEEGQaOmnM2L-JRNzpjFdKvmClnKeF-O6hkZDCzMQNZfi","expires_in":3600,"refresh_token":"1\\/g7S4N0x9dE7vbPXTMw_pqaSTketLQw1ToBJ8bA-12rM","token_type":"Bearer","created":1500570913}', '2017-07-20 12:15:13'),
(8, '{"access_token":"ya29.GlyNBOP2yBKHaJlCOyA_DPF29LOY90YqOkyHy1J_2iCPcR4z6tWZ9BFFcAWMghFym6YdKmWFrG17G_uE8isv7sb5OelYxGWkv2pEuD5FneTwgkRN5i2vTrWa6oxgVw","expires_in":3600,"refresh_token":"1\\/g7S4N0x9dE7vbPXTMw_pqaSTketLQw1ToBJ8bA-12rM","token_type":"Bearer","created":1500585968}', '2017-07-20 16:26:08'),
(9, '{"access_token":"ya29.GlyUBOG9Hn0GaL1k1zWFL-jv_-rfeUx7_tIerqwmso5jxkwhYxC8oIRrzBFaqDU_Ei_w0MP18v2ZNAv8GCUfXYfFvACxSetjCCeGGI8uDpJZ93SeYC1i7tMWKeqeug","expires_in":3600,"refresh_token":"1\\/g7S4N0x9dE7vbPXTMw_pqaSTketLQw1ToBJ8bA-12rM","token_type":"Bearer","created":1501056890}', '2017-07-26 03:14:50'),
(10, '{"access_token":"ya29.GlyhBLGCKA3XxRPQrfdxN15ZWOfpToCrYYHiNoIruNHlJGvI6UZJTZA2iSym_LnlNHnb0kK-zTJnq9Ux4Gkl6FE5QunX4ebszM87QGbQJbxcB_neQavEXYHGNLB_Og","expires_in":3600,"refresh_token":"1\\/g7S4N0x9dE7vbPXTMw_pqaSTketLQw1ToBJ8bA-12rM","token_type":"Bearer","created":1502186353}', '2017-08-08 04:59:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`generalId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`navId`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `social_settings`
--
ALTER TABLE `social_settings`
  ADD PRIMARY KEY (`socialId`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscriptionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`websiteId`);

--
-- Indexes for table `youtube_access_tokens`
--
ALTER TABLE `youtube_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `generalId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `navId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `socialId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscriptionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `websiteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `youtube_access_tokens`
--
ALTER TABLE `youtube_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
