-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2019 at 07:52 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `commentId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `postId` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL,
  `commentText` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentId`, `userId`, `postId`, `parent`, `commentText`, `website`, `createdAt`) VALUES
(1, 6, 1, 0, 'nice video', 'demowebsite.com', '2019-01-16'),
(2, 6, 1, 1, 'test reply comment', 'reply test', '2019-01-16'),
(3, 6, 1, 1, 'test nested comments', 'test nested comment', '2019-01-16'),
(4, 6, 6, 0, 'nice video', 'test a comment', '2019-01-16'),
(5, 6, 6, 4, 'nesting of comments test', 'nested comments', '2019-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `generalId` int(10) UNSIGNED NOT NULL,
  `webTitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footerArea` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `footerTextColor` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleAnalytics` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleAnalyticsAdditional` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fbAnalytics` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherSeo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherAnalyticsHead` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherAnalyticsBody` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aboutUs` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactAddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactPhoneOne` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactPhoneTwo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`generalId`, `webTitle`, `footerArea`, `footerTextColor`, `googleAnalytics`, `googleAnalyticsAdditional`, `fbAnalytics`, `otherSeo`, `otherAnalyticsHead`, `otherAnalyticsBody`, `aboutUs`, `contactAddress`, `contactPhoneOne`, `contactPhoneTwo`, `contactEmail`, `created_at`, `updated_at`) VALUES
(135, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', '', '', '', '', '', NULL, NULL),
(136, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', '', '', '', '', '', NULL, NULL),
(137, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', 'Vestibulum quis cursus mi, vitae mollis metus.Nulam eu lects gravida, bibendum enim in, vulputate erat. Vestibulum ullamcorper ornare magna', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net', NULL, NULL),
(138, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net', NULL, NULL),
(143, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager --', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net', NULL, NULL),
(144, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager --', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net', NULL, NULL),
(145, 'Youth Media', '', '', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager -->', '<!-- Google Tag Manager (noscript) -->\r\n<noscript><iframe src=\"https://www.googletagmanager.com/ns.html?id=GTM-W9BVCM\"\r\nheight=\"0\" width=\"0\" style=\"display:none;visibility:hidden\"></iframe></noscript>\r\n<!-- End Google Tag Manager (noscript) -->', '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\r\nn.push=n;n.loaded=!0;n.version=\'2.0\';n.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\r\ndocument,\'script\',\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1502663706627568\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1502663706627568&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- DO NOT MODIFY -->\r\n<!-- End Facebook Pixel Code -->', '<!-- Google Code for Registered For Race Conversion Page -->\r\n<script type=\"text/javascript\">\r\n/* <![CDATA[ */\r\nvar google_conversion_id = 1003299823;\r\nvar google_conversion_language = \"en\";\r\nvar google_conversion_format = \"3\";\r\nvar google_conversion_color = \"ffffff\";\r\nvar google_conversion_label = \"NGV7CI2t92EQ78e03gM\";\r\nvar google_remarketing_only = false;\r\n/* ]]> */\r\n</script>\r\n<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\r\n</script>\r\n<noscript>\r\n<div style=\"display:inline;\">\r\n<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//www.googleadservices.com/pagead/conversion/1003299823/?label=NGV7CI2t92EQ78e03gM&guid=ON&script=0\"/>\r\n</div>\r\n</noscript>', '<!-- Google Tag Manager -->\r\n<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({\'gtm.start\':\r\nnew Date().getTime(),event:\'gtm.js\'});var f=d.getElementsByTagName(s)[0],\r\nj=d.createElement(s),dl=l!=\'dataLayer\'?\'&l=\'+l:\'\';j.async=true;j.src=\r\n\'https://www.googletagmanager.com/gtm.js?id=\'+i+dl;f.parentNode.insertBefore(j,f);\r\n})(window,document,\'script\',\'dataLayer\',\'GTM-W9BVCM\');</script>\r\n<!-- End Google Tag Manager --', '<script type=\"text/javascript\">\r\n(function() {\r\n  var didInit = false;\r\n  function initMunchkin() {\r\n    if(didInit === false) {\r\n      didInit = true;\r\n      Munchkin.init(\'705-NYP-170\');\r\n    }\r\n  }\r\n  var s = document.createElement(\'script\');\r\n  s.type = \'text/javascript\';\r\n  s.async = true;\r\n  s.src = \'//munchkin.marketo.net/munchkin.js\';\r\n  s.onreadystatechange = function() {\r\n    if (this.readyState == \'complete\' || this.readyState == \'loaded\') {\r\n      initMunchkin();\r\n    }\r\n  };\r\n  s.onload = initMunchkin;\r\n  document.getElementsByTagName(\'head\')[0].appendChild(s);\r\n})();\r\n</script>', 'YouthMedia is a popular video-sharing platform, whose popularity prevails not only in Pakistan but globally as well. We are serving video content to million of users on a daily basis.', 'Gulber III, Lahore', '+92 323 620 7389', '+92 323 620 6789', 'umair.malik@purelogics.net', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes_shares`
--

CREATE TABLE `likes_shares` (
  `postId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `liked` tinyint(4) NOT NULL,
  `unliked` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes_shares`
--

INSERT INTO `likes_shares` (`postId`, `userId`, `liked`, `unliked`) VALUES
(0, 1, 2, 0),
(1, 1, 5, 2),
(2, 1, 10, 2),
(1, 1, 1, 1),
(1, 5, 1, 0),
(22, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_05_06_194030_create_youtube_access_tokens_table', 1),
(4, '2018_12_22_120057_create_categories_table', 1),
(5, '2018_12_22_120516_create_comments_table', 1),
(6, '2018_12_22_131824_create_general_setting_table', 1),
(7, '2018_12_22_133120_create_likes_shares_table', 1),
(8, '2018_12_22_134326_create_navigation_table', 1),
(9, '2018_12_22_135418_create_posts_table', 1),
(10, '2018_12_22_141015_create_roles_table', 1),
(11, '2018_12_22_141739_create_social_settings_table', 1),
(12, '2018_12_22_142246_create_subscription_table', 1),
(13, '2018_12_22_142517_create_websites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `navId` int(10) UNSIGNED NOT NULL,
  `pageCode` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageName` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageTitle` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageKeywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnable` tinyint(4) NOT NULL,
  `navLocation` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pageSettings` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`navId`, `pageCode`, `pageName`, `pageTitle`, `pageDescription`, `pageKeywords`, `isEnable`, `navLocation`, `pageSettings`) VALUES
(10, 'privacypolicy', 'Privacy Policy', 'Privacy Policy', '', '', 0, 'header', '{\"privacyText\":\"<p>By using and visiting our website, you agree to the terms and conditions and Privacy policy of YOUTHMEDIA. These terms and conditions apply to all users, and if you don\'t agree to these terms then please don\'t use the website. YOUTHMEDIA has created this Privacy policy in order to demonstrate our determination to your online privacy.<\\/p>\\r\\n<h3>What information do we collect:<\\/h3>\\r\\n<p>We collect information when you register to our website. You may be asked to enter your name, your email address, your country name, your address and your telephone number<\\/p>\\r\\n<h3>What do we use your information for?<\\/h3>\\r\\n<p>We use your information just to enhance your experience and to improve our website.<\\/p>\\r\\n<h3>Approved Videos:<\\/h3>\\r\\n<p>Videos uploaded by user should meet following criteria for getting approved:<\\/p>\\r\\n<ul>\\r\\n<li>Videos should not be against any religion.<\\/li>\\r\\n<li>Videos should not contain any any sexually explicit content.<\\/li>\\r\\n<li>Videos should not contain illegal acts (including but not limited to incitement to violence, animal abuse or drug abuse).<\\/li>\\r\\n<\\/ul>\\r\\n<p><strong>If you think any content is explicit in nature and should not be allowed on the website than you can report it and we will make sure that it is taken down immediately and appropriate action is taken against the offender.<\\/strong><\\/p>\\r\\n<h3>Changes to our Privacy Policy:<\\/h3>\\r\\n<p>If we want to change our privacy policy, we&rsquo;ll post it here or we will notify you via email.<\\/p>\",\"navId\":\"10\",\"pageCode\":\"privacypolicy\",\"pageTitle\":\"Privacy Policy\",\"pageDescription\":null,\"pageKeywords\":null}'),
(30, 'termsandconditions', 'Terms And Conditions', 'Terms And Conditions', '', 'TOC', 0, 'header', '{\"toc\":\"<h3>Terms of Service<\\/h3>\\r\\n<p><strong>KINDLY CONFER TO THESE TERMS OF USE CAREFULLY. They show that the nature of the website and the rules and regulations associated with are greatly important. Along with that we respect the rights of all organizations and individuals. In case of any questions or confusions, please do not hesitate in reaching out to us.<\\/strong><\\/p>\\r\\n<p><strong>WITH THE USE OF YOUTHMEDIA, YOU REPRESENT TO US THAT YOU HAVE ALL NECESSARY AUTHORITY AND POWER TO AGREE TO THE TERMS WHICH YOU AGREE SHALL BE BINDING ON THE CORPORATION, PARTNERSHIP, ASSOCIATION OR OTHER ENTITY IN WHOSE NAME YOU ARE REGISTERING AS A USER AND ESTABLISHING AN ACCOUNT. IF YOU DO NOT AGREE TO ANY OF THESE TERMS, YOU MAY NOT USE THE WEBSITE.<\\/strong><\\/p>\\r\\n<h3>Description of the Website:<\\/h3>\\r\\n<p>If you have registered on YOUTHMEDIA and own an account then the files you upload\\/create, the activity on your account (comments, likes, shares), and your avatar is not owned by YOUTHMEDIA. By keeping your account privacy open to other users (as a body, or by individual group), you agree to allow any users of the Website free of charge and for personal use only, to view and transmit Your Content on or through the Website, on other electronic communication media or technology (e.g. smartphones, tablets, connected TV, game consoles), for the entire period in which Your Content is hosted on the Website. The amount your time your content will be hosted on site, you authorize YOUTHMEDIA to reproduce\\/feature Your Content and, as necessary, adjust its format for that purpose. Please note that due to the inherent nature of the Internet, data transmitted &ndash; including Your Content - are not protected against the risks of misuse and\\/or piracy, for which we shall not be liable. You are responsible for taking all appropriate steps to protect such data, where applicable.<\\/p>\\r\\n<p>If you have any complaints or suggestions, regarding YOUTHMEDIA contact us from out contact page<\\/p>\\r\\n<h3>Prize eligibility and criteria:<\\/h3>\\r\\n<ul class=\\\"toc-ul\\\">\\r\\n<li><span style=\\\"font-size: 14pt;\\\">All prizes are for registered users only.<\\/span><\\/li>\\r\\n<li><span style=\\\"font-size: 14pt;\\\">You also have like our <a href=\\\"https:\\/\\/facebook.com\\\" target=\\\"_blank\\\">FaceBook<\\/a> page for getting eligible for prize.<\\/span><\\/li>\\r\\n<li><span style=\\\"font-size: 14pt;\\\">Your videos should have to approved by YOUTHMEDIA else it will not be considered in total videos count. Visit our Policy page to check our Approved videos criteria.<\\/span><\\/li>\\r\\n<li><span style=\\\"font-size: 14pt;\\\">All cash prizes or mobile top ups will be transferred on 1st week of each month.<\\/span><\\/li>\\r\\n<li><span style=\\\"font-size: 14pt;\\\">Once your total uploaded videos reach 100 you will receive an email by YOUTHMEDIA having your details and other important information for prize transfer. You have to provide us that email\'s information in order for your account\'s verification. If you somehow didn\'t receive our email you can contact us and will solve your issue.<\\/span><\\/li>\\r\\n<\\/ul>\",\"navId\":\"30\",\"pageCode\":\"termsandconditions\",\"pageTitle\":\"Terms And Conditions\",\"pageDescription\":null,\"pageKeywords\":\"TOC\"}'),
(49, 'contact', 'Contact', 'Contact Us', '', 'contactus', 1, 'header', '{\"sendTo\":\"umair.malik@purelogics.net\",\"locLong\":\"74.354321\",\"locLat\":\"31.558952\",\"navId\":\"49\",\"pageCode\":\"contact\",\"pageTitle\":\"Contact Us\",\"pageDescription\":null,\"pageKeywords\":\"contactus\"}'),
(50, 'home', 'Home', 'Home', 'Home Page', '', 1, 'header', '{\"pageImage\":null,\"navId\":\"50\",\"pageCode\":\"home\",\"pageTitle\":\"Home\",\"pageDescription\":null,\"pageKeywords\":null}'),
(51, 'prize', 'Prize', 'Prize', '', 'prize', 1, 'header', '{\"prizeText\":\"<p>By using and registering at our website, you can win prizes including mobile top ups and cash prizes.<strong>These prizes are for all registered users excluding YOUTHMEDIA team.<\\/strong><\\/p>\\r\\n<h3>Win By Uploading Videos:<\\/h3>\\r\\n<p>You can win up to 500rs mobile balance by uploading 100 videos at our website. Those videos should have to be approved by YOUTHMEDIA.<\\/p>\\r\\n<h3>Top Liked Video<\\/h3>\\r\\n<p>If your video get 100+ likes you can win 1000rs mobile balance or cash.<\\/p>\\r\\n<h3>More exciting prizes still to come<\\/h3>\\r\\n<p>As we are promoting our website we are continuously arranging more prizes and gifts for our users and those will be posted here and on our Facebook page. So keep looking at it occasionally to stay up to date.<\\/p>\\r\\n<h3>Visit Terms and Conditions page for further details regarding prize eligibility criteria<\\/h3>\",\"navId\":\"51\",\"pageCode\":\"prize\",\"pageTitle\":\"Prize\",\"pageDescription\":null,\"pageKeywords\":\"prize\"}');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postId` int(10) UNSIGNED NOT NULL,
  `postTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postThumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniqueCustomKey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdOn` int(11) NOT NULL,
  `websiteId` int(11) UNSIGNED NOT NULL,
  `categoryId` int(11) NOT NULL,
  `post` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `postTags` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(10) UNSIGNED NOT NULL,
  `postStatus` tinyint(4) NOT NULL,
  `isScrapped` tinyint(4) NOT NULL,
  `postViewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postId`, `postTitle`, `postDescription`, `postThumbnail`, `uniqueCustomKey`, `createdOn`, `websiteId`, `categoryId`, `post`, `postTags`, `userId`, `postStatus`, `isScrapped`, `postViewed`) VALUES
(1, 'Fayaz Ul Hassan Chohan media talk &#8211; 2nd December 2019', '', '11546429811.jpg', 'https://www.youtube.com/embed/OMNWboHeuDk', 1546429811, 2, 2, 'https://www.youtube.com/embed/OMNWboHeuDk', 'news,politics,media,pakistan', 1, 1, 1, 145),
(2, 'Prime Time With Neelum Nawab &#8211; 1st January 2019', '', '11546429812.jpg', 'https://www.youtube.com/embed/E8Is97D_zss', 1546429812, 2, 2, 'https://www.youtube.com/embed/E8Is97D_zss', 'news,politics,media,pakistan', 1, 1, 1, 14),
(3, 'Syasi Theater â€“ 1st January 2019', '', '11546429814.jpg', 'https://www.youtube.com/embed/lYstUU6lMXc', 1546429814, 2, 2, 'https://www.youtube.com/embed/lYstUU6lMXc', 'news,politics,media,pakistan', 1, 1, 1, 28),
(4, 'Gar Tu Bura Na Mane â€“ 1st January 2019', '', '11546429816.jpg', 'https://www.youtube.com/embed/aRIymHMf7mk', 1546429816, 2, 2, 'https://www.youtube.com/embed/aRIymHMf7mk', 'news,politics,media,pakistan', 1, 1, 1, 36),
(5, '2 Tok â€“ 1st January 2019', '', '11546429817.jpg', 'https://www.youtube.com/embed/CfRht2iAm04', 1546429817, 2, 2, 'https://www.youtube.com/embed/CfRht2iAm04', 'news,politics,media,pakistan', 1, 1, 1, 40),
(6, 'DNA â€“ 1st January 2019', '', '11546429819.jpg', 'https://www.youtube.com/embed/MWaPvsx3N1k', 1546429819, 2, 2, 'https://www.youtube.com/embed/MWaPvsx3N1k', 'news,politics,media,pakistan', 1, 1, 1, 79),
(7, 'News Point â€“ 1st January 2019', '', '11546429821.jpg', 'https://www.youtube.com/embed/iWQRT9VER7M', 1546429821, 2, 2, 'https://www.youtube.com/embed/iWQRT9VER7M', 'news,politics,media,pakistan', 1, 1, 1, 36),
(8, '11th Hour â€“ 1st January 2019', '', '11546429822.jpg', 'http://www.dailymotion.com/embed/video/x6zue4h', 1546429822, 2, 2, 'http://www.dailymotion.com/embed/video/x6zue4h', 'news,politics,media,pakistan', 1, 1, 1, 75),
(9, 'Taaro Se Karen Batain â€“ 1st January 2019', '', '11546429824.jpg', 'http://www.dailymotion.com/embed/video/x6zudiy', 1546429824, 2, 2, 'http://www.dailymotion.com/embed/video/x6zudiy', 'news,politics,media,pakistan', 1, 1, 1, 33),
(10, 'The Last Hour &#8211; 1st January 2019', '', '11546429826.jpg', 'http://www.dailymotion.com/embed/video/x6zudhq', 1546429826, 2, 2, 'http://www.dailymotion.com/embed/video/x6zudhq', 'news,politics,media,pakistan', 1, 1, 1, 12),
(11, 'Zara Hut Kay &#8211; 1st January 2019', '', '11546429827.jpg', 'http://www.dailymotion.com/embed/video/x6zudew', 1546429827, 2, 2, 'http://www.dailymotion.com/embed/video/x6zudew', 'news,politics,media,pakistan', 1, 1, 1, 71),
(12, 'Khabar Kay Peechay &#8211; 1st January 2019', '', '11546429829.jpg', 'https://www.youtube.com/embed/Keok6cRQ-W8', 1546429829, 2, 2, 'https://www.youtube.com/embed/Keok6cRQ-W8', 'news,politics,media,pakistan', 1, 1, 1, 23),
(13, 'Kal Tak With Javed Chaudhry â€“ 1st January 2019', '', '11546429830.jpg', 'https://www.youtube.com/embed/RuJ9DCYKQdA', 1546429830, 2, 2, 'https://www.youtube.com/embed/RuJ9DCYKQdA', 'news,politics,media,pakistan', 1, 1, 1, 32),
(14, 'Ikhtilaf Rai â€“ 1st January 2019', '', '11546429832.jpg', 'https://www.youtube.com/embed/wULi_bCxx9Y', 1546429832, 2, 2, 'https://www.youtube.com/embed/wULi_bCxx9Y', 'news,politics,media,pakistan', 1, 1, 1, 70),
(15, 'Jurm Benaqab â€“ 1st January 2019', '', '11546429834.jpg', 'https://www.youtube.com/embed/BTV0PxBWSTc', 1546429834, 2, 2, 'https://www.youtube.com/embed/BTV0PxBWSTc', 'news,politics,media,pakistan', 1, 1, 1, 56),
(16, 'Cross Check With OT â€“ 1st January 2019', '', '11546429835.jpg', 'https://www.youtube.com/embed/AgTaOAdYxE4', 1546429835, 2, 2, 'https://www.youtube.com/embed/AgTaOAdYxE4', 'news,politics,media,pakistan', 1, 1, 1, 53),
(17, 'Hazraat  â€“ 1st January 2019 Repeat', '', '11546429837.jpg', 'http://www.dailymotion.com/embed/video/x6h1ss0', 1546429837, 2, 2, 'http://www.dailymotion.com/embed/video/x6h1ss0', 'news,politics,media,pakistan', 1, 1, 1, 22),
(18, 'Fawad Chaudhary Press Conference &#8211; 2nd December 2018', '', '11546433095.jpg', 'http://www.dailymotion.com/embed/video/x6zvmdo', 1546433095, 2, 2, 'http://www.dailymotion.com/embed/video/x6zvmdo', 'news,politics,media,pakistan', 1, 1, 1, 10),
(19, 'Faisal Vada Press Conference &#8211; 2nd December 2018', '', '11546433096.jpg', 'http://www.dailymotion.com/embed/video/x6zvm7k', 1546433096, 2, 2, 'http://www.dailymotion.com/embed/video/x6zvm7k', 'news,politics,media,pakistan', 1, 1, 1, 31),
(20, 'FIR no 7  â€“ 1st January 2019 Repeat', '', '11546433118.jpg', 'http://www.dailymotion.com/embed/video/x6wv9qq', 1546433118, 2, 2, 'http://www.dailymotion.com/embed/video/x6wv9qq', 'news,politics,media,pakistan', 1, 1, 1, 56),
(21, 'FIR no 7  â€“ 1st January 2019 Repeat', '', '11546433118.jpg', 'http://www.dailymotion.com/embed/video/x6wv9qq', 1546433118, 2, 2, 'http://www.dailymotion.com/embed/video/x6wv9qq', 'news,politics,media,pakistan', 1, 1, 1, 49),
(22, 'Live With Moeed Pirzada â€“ 1st January 2019', '', '11546433119.jpg', 'http://www.dailymotion.com/embed/video/x6zubh4', 1546433119, 2, 2, 'http://www.dailymotion.com/embed/video/x6zubh4', 'news,politics,media,pakistan', 1, 1, 1, 117),
(23, 'Live With Moeed Pirzada â€“ 1st January 2019', '', '11546433119.jpg', 'http://www.dailymotion.com/embed/video/x6zubh4', 1546433119, 2, 2, 'http://www.dailymotion.com/embed/video/x6zubh4', 'news,politics,media,pakistan', 1, 1, 1, 68),
(24, 'Sach Ya Siyasat  â€“ 1st January 2019', '', '11546433121.jpg', 'http://www.dailymotion.com/embed/video/x6zubfi', 1546433121, 2, 2, 'http://www.dailymotion.com/embed/video/x6zubfi', 'news,politics,media,pakistan', 1, 1, 1, 38),
(25, 'Muqabil &#8211; 1st January 2019', '', '11546433123.jpg', 'http://www.dailymotion.com/embed/video/x6zuba2', 1546433123, 2, 2, 'http://www.dailymotion.com/embed/video/x6zuba2', 'news,politics,media,pakistan', 1, 1, 1, 37),
(26, 'Aamne Saamne  â€“ 1st January 2019', '', '11546433124.jpg', 'http://www.dailymotion.com/embed/video/x6zub90', 1546433124, 2, 2, 'http://www.dailymotion.com/embed/video/x6zub90', 'news,politics,media,pakistan', 1, 1, 1, 69);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dashboard` tinyint(4) NOT NULL,
  `users` tinyint(4) NOT NULL,
  `pages` tinyint(4) NOT NULL,
  `websites` tinyint(4) NOT NULL,
  `categories` tinyint(4) NOT NULL,
  `posts` tinyint(4) NOT NULL,
  `pending` tinyint(4) NOT NULL,
  `subscription` tinyint(4) NOT NULL,
  `permissions` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleId`, `name`, `dashboard`, `users`, `pages`, `websites`, `categories`, `posts`, `pending`, `subscription`, `permissions`) VALUES
(1, 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Editor', 1, 0, 1, 1, 1, 0, 0, 0, 0),
(4, 'Public Users', 0, 0, 0, 0, 0, 0, 0, 0, 1),
(5, 'admin', 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `socialId` int(10) UNSIGNED NOT NULL,
  `socialName` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socialLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socialIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`socialId`, `socialName`, `socialLink`, `socialIcon`) VALUES
(2, 'Pinterest', 'https://www.pinterest.com/bubbleballxperi/', '14799849402.png'),
(4, 'Instagram', 'https://www.instagram.com/bubbleballxperience/', '14810301421.png'),
(6, 'Twitter', 'www.twitter.com', '15474686990.png'),
(8, 'Facebook', 'www.facebook.com', '15474682580.png');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscriptionId` int(10) UNSIGNED NOT NULL,
  `subscriptionUserId` int(11) NOT NULL,
  `subscriptionEmail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscriptionId`, `subscriptionUserId`, `subscriptionEmail`) VALUES
(8, 6, 'rashid.bukhari143@gmail.com'),
(9, 5, 'ahmad@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userRole` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profileImg`, `userRole`, `remember_token`, `userPhone`, `created_at`, `updated_at`) VALUES
(5, 'ahmed', 'ahmed@gmail.com', '$2y$10$wtyBl4hFBEvElAbKPp94metP35.UiisT81Pj1UezfFqcnpx5TOLC6', '', 1, 'Bgj9iTylNKoYOghqkEZy2sCbkB2OegsMeL03NZvGb7KKCFqIf6ZfnfCtvXGK', '', '2019-01-10 04:46:02', '2019-01-10 04:46:02'),
(6, 'Rashid', 'rashid.bukhari143@gmail.com', '$2y$10$8MWPs67/gDZAssivwdcxE.lVtyiUsqmnSKQD.pHTeCkQ9c0QdVvWm', '1547554929.jpg', 4, 'ooIYq7uAlbAxUtpEQJssJ3cafqPaiTrZYVlVx0BFwVzSRGrzwLEvtqs4gU3X', '', '2019-01-15 07:22:10', '2019-01-15 07:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `websiteId` int(10) UNSIGNED NOT NULL,
  `websiteName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `websiteUrl` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `when user updated, same effect apply here` (`userId`),
  ADD KEY `when post updated, same effect apply here` (`postId`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`generalId`);

--
-- Indexes for table `likes_shares`
--
ALTER TABLE `likes_shares`
  ADD KEY `userId` (`userId`),
  ADD KEY `postId` (`postId`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `posts_ibfk_2` (`websiteId`);

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
  MODIFY `commentId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `generalId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `navId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `socialId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscriptionId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `websiteId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `youtube_access_tokens`
--
ALTER TABLE `youtube_access_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `when post updated, same effect apply here` FOREIGN KEY (`postId`) REFERENCES `posts` (`postId`),
  ADD CONSTRAINT `when user updated, same effect apply here` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
