/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : mycart

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-12 15:45:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oc_address`
-- ----------------------------
DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_address
-- ----------------------------
INSERT INTO `oc_address` VALUES ('32', '22', '1', '', '1', '1787878', '', '观山湖区', '1', '24', '272', '{\"1\":\"1\"}');

-- ----------------------------
-- Table structure for `oc_affiliate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate`;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_activity`;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_login`;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_affiliate_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_affiliate_transaction`;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_affiliate_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_api`
-- ----------------------------
DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api
-- ----------------------------
INSERT INTO `oc_api` VALUES ('3', 'Default', 'yIVUqb353RMaBlsJOn2sUnJEuUGWCDhYDaMw5Ejs8CbLFY3QU25EoyymlNYvDxhaHTOZChRO11NnYYNBJvNdvsUpaT3fptac9U6Q9o41HNT5yj7189sCYa8ljguoK5qKKbTdSJcsecrkx2fqTnK29fHFoENYxfJWHe1Fres5SDC68ftBmCkTfYBD62IdYfT7HImQZ0RJmGeHusgx6Sp6B2sXxUg4tH3upXbizymSnL9Zd6X8hGjOjVtXHTDk8K7g', '1', '2017-02-09 07:23:53', '2017-02-09 07:23:53');

-- ----------------------------
-- Table structure for `oc_api_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_ip
-- ----------------------------
INSERT INTO `oc_api_ip` VALUES ('1', '1', '182.150.145.25');
INSERT INTO `oc_api_ip` VALUES ('2', '1', '182.150.145.17');
INSERT INTO `oc_api_ip` VALUES ('3', '1', '::1');
INSERT INTO `oc_api_ip` VALUES ('4', '1', '182.150.144.228');
INSERT INTO `oc_api_ip` VALUES ('5', '1', '182.150.145.166');
INSERT INTO `oc_api_ip` VALUES ('6', '1', '182.150.148.64');
INSERT INTO `oc_api_ip` VALUES ('7', '1', '182.150.145.128');
INSERT INTO `oc_api_ip` VALUES ('8', '3', '::1');

-- ----------------------------
-- Table structure for `oc_api_session`
-- ----------------------------
DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_api_session
-- ----------------------------
INSERT INTO `oc_api_session` VALUES ('72', '3', 'PvdbVfGLPBiYvihGkXLQ7EMAdfKHepwz', '13f5efadf832eda9308c0b8c97ff51db', 'temp_session_589e8d95f396e', '::1', '2017-02-11 12:05:42', '2017-02-11 12:06:00');
INSERT INTO `oc_api_session` VALUES ('73', '3', '3Wzkphru8o8md3SCtY80iQIZJysAENg5', '13f5efadf832eda9308c0b8c97ff51db', 'temp_session_589e8ed04791d', '::1', '2017-02-11 12:10:56', '2017-02-11 12:10:56');
INSERT INTO `oc_api_session` VALUES ('74', '3', 'vyvaN62jVJWjXWVMneSIFU3GonmDBNxc', '13f5efadf832eda9308c0b8c97ff51db', 'temp_session_589e8ed733c11', '::1', '2017-02-11 12:11:03', '2017-02-11 12:11:17');
INSERT INTO `oc_api_session` VALUES ('75', '3', 't8nbmkZoovCoqURN9yInkNvC9ZJUECsv', 's8q8v839acicjl4edknvu6mic2', 'temp_session_589e907ac9626', '::1', '2017-02-11 12:18:02', '2017-02-11 12:18:02');
INSERT INTO `oc_api_session` VALUES ('76', '3', '4qMq3QXWeaYaUoEI5yojBcQmcIrzALXR', 's8q8v839acicjl4edknvu6mic2', 'temp_session_589e91e21d09e', '::1', '2017-02-11 12:24:02', '2017-02-11 12:24:02');
INSERT INTO `oc_api_session` VALUES ('77', '3', '1uZeWsAlr4qBlc4cq5qOqrUxUVineVjc', 's8q8v839acicjl4edknvu6mic2', 'temp_session_589e91f3ebd2e', '::1', '2017-02-11 12:24:19', '2017-02-11 12:24:19');
INSERT INTO `oc_api_session` VALUES ('78', '3', 'yDBvpDe8gepW1Rvubbou6mD0xj7lDeZs', 's8q8v839acicjl4edknvu6mic2', 'temp_session_589e91ffb64c0', '::1', '2017-02-11 12:24:31', '2017-02-11 12:24:31');
INSERT INTO `oc_api_session` VALUES ('79', '3', '8QNCH76hkM3LGtxnm3ICK0NRmbSlSd8x', 's8q8v839acicjl4edknvu6mic2', 'temp_session_589e94652b32a', '::1', '2017-02-11 12:34:45', '2017-02-11 12:34:45');
INSERT INTO `oc_api_session` VALUES ('80', '3', 'ReetxzjmgiRfOkjeFdURUAPk8zDmdots', '9ddoe3baepars1vsuvhv092187', 'temp_session_58a0081798e14', '::1', '2017-02-12 15:00:39', '2017-02-12 15:00:39');
INSERT INTO `oc_api_session` VALUES ('81', '3', 'v0KWUddyBgNkfi0986ACvm56MjasdbBO', '9ddoe3baepars1vsuvhv092187', 'temp_session_58a009f3b85de', '::1', '2017-02-12 15:08:35', '2017-02-12 15:08:35');

-- ----------------------------
-- Table structure for `oc_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute
-- ----------------------------
INSERT INTO `oc_attribute` VALUES ('1', '6', '1');
INSERT INTO `oc_attribute` VALUES ('2', '6', '5');
INSERT INTO `oc_attribute` VALUES ('3', '6', '3');
INSERT INTO `oc_attribute` VALUES ('4', '3', '1');
INSERT INTO `oc_attribute` VALUES ('5', '3', '2');
INSERT INTO `oc_attribute` VALUES ('6', '3', '3');
INSERT INTO `oc_attribute` VALUES ('7', '3', '4');
INSERT INTO `oc_attribute` VALUES ('8', '3', '5');
INSERT INTO `oc_attribute` VALUES ('9', '3', '6');
INSERT INTO `oc_attribute` VALUES ('10', '3', '7');
INSERT INTO `oc_attribute` VALUES ('11', '3', '8');

-- ----------------------------
-- Table structure for `oc_attribute_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_description
-- ----------------------------
INSERT INTO `oc_attribute_description` VALUES ('1', '2', 'Description');
INSERT INTO `oc_attribute_description` VALUES ('2', '2', 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES ('3', '2', 'Clockspeed');
INSERT INTO `oc_attribute_description` VALUES ('4', '2', 'test 1');
INSERT INTO `oc_attribute_description` VALUES ('5', '2', 'test 2');
INSERT INTO `oc_attribute_description` VALUES ('6', '2', 'test 3');
INSERT INTO `oc_attribute_description` VALUES ('7', '2', 'test 4');
INSERT INTO `oc_attribute_description` VALUES ('8', '2', 'test 5');
INSERT INTO `oc_attribute_description` VALUES ('9', '2', 'test 6');
INSERT INTO `oc_attribute_description` VALUES ('10', '2', 'test 7');
INSERT INTO `oc_attribute_description` VALUES ('11', '2', 'test 8');

-- ----------------------------
-- Table structure for `oc_attribute_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group
-- ----------------------------
INSERT INTO `oc_attribute_group` VALUES ('3', '2');
INSERT INTO `oc_attribute_group` VALUES ('4', '1');
INSERT INTO `oc_attribute_group` VALUES ('5', '3');
INSERT INTO `oc_attribute_group` VALUES ('6', '4');

-- ----------------------------
-- Table structure for `oc_attribute_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_attribute_group_description
-- ----------------------------
INSERT INTO `oc_attribute_group_description` VALUES ('3', '2', 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES ('4', '2', 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES ('5', '2', 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES ('6', '2', 'Processor');

-- ----------------------------
-- Table structure for `oc_banner`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner
-- ----------------------------
INSERT INTO `oc_banner` VALUES ('7', '首页顶部轮播', '1');
INSERT INTO `oc_banner` VALUES ('8', 'Manufacturers', '1');
INSERT INTO `oc_banner` VALUES ('10', '广告位大图中部2', '1');
INSERT INTO `oc_banner` VALUES ('11', '广告位大图中部1', '1');

-- ----------------------------
-- Table structure for `oc_banner_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image
-- ----------------------------
INSERT INTO `oc_banner_image` VALUES ('231', '8', '', 'catalog/demo/manufacturer/canon.png', '0');
INSERT INTO `oc_banner_image` VALUES ('232', '8', '', 'catalog/demo/manufacturer/harley.png', '0');
INSERT INTO `oc_banner_image` VALUES ('233', '8', '', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_banner_image` VALUES ('234', '8', '', 'catalog/demo/manufacturer/sony.png', '0');
INSERT INTO `oc_banner_image` VALUES ('235', '8', '', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_banner_image` VALUES ('236', '8', '', 'catalog/demo/manufacturer/cocacola.png', '0');
INSERT INTO `oc_banner_image` VALUES ('237', '8', '', 'catalog/demo/manufacturer/disney.png', '0');
INSERT INTO `oc_banner_image` VALUES ('238', '8', '', 'catalog/demo/manufacturer/nfl.png', '0');
INSERT INTO `oc_banner_image` VALUES ('239', '8', '', 'catalog/demo/manufacturer/nintendo.png', '0');
INSERT INTO `oc_banner_image` VALUES ('240', '8', '', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_banner_image` VALUES ('241', '8', '', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_banner_image` VALUES ('299', '7', 'index.php?route=product/product&amp;product_id=76', 'catalog/gd/product/ad_top1.jpg', '1');
INSERT INTO `oc_banner_image` VALUES ('300', '7', 'index.php?route=product/product&amp;product_id=76', 'catalog/gd/product/ad_top2.jpg', '2');
INSERT INTO `oc_banner_image` VALUES ('307', '11', 'index.php?route=product/product&amp;product_id=61', 'catalog/gd/product/ad_center2.jpg', '0');
INSERT INTO `oc_banner_image` VALUES ('309', '10', 'index.php?route=product/product&amp;product_id=76', 'catalog/gd/banner/banner_bottom.jpg', '0');

-- ----------------------------
-- Table structure for `oc_banner_image_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_banner_image_description
-- ----------------------------
INSERT INTO `oc_banner_image_description` VALUES ('231', '2', '8', 'Canon');
INSERT INTO `oc_banner_image_description` VALUES ('232', '2', '8', 'Harley Davidson');
INSERT INTO `oc_banner_image_description` VALUES ('233', '2', '8', 'Burger King');
INSERT INTO `oc_banner_image_description` VALUES ('234', '2', '8', 'Sony');
INSERT INTO `oc_banner_image_description` VALUES ('235', '2', '8', 'RedBull');
INSERT INTO `oc_banner_image_description` VALUES ('236', '2', '8', 'Coca Cola');
INSERT INTO `oc_banner_image_description` VALUES ('237', '2', '8', 'Disney');
INSERT INTO `oc_banner_image_description` VALUES ('238', '2', '8', 'NFL');
INSERT INTO `oc_banner_image_description` VALUES ('239', '2', '8', 'Nintendo');
INSERT INTO `oc_banner_image_description` VALUES ('240', '2', '8', 'Starbucks');
INSERT INTO `oc_banner_image_description` VALUES ('241', '2', '8', 'Dell');
INSERT INTO `oc_banner_image_description` VALUES ('299', '2', '7', '轮播广告1');
INSERT INTO `oc_banner_image_description` VALUES ('300', '2', '7', '轮播广告2');
INSERT INTO `oc_banner_image_description` VALUES ('307', '2', '11', '广告位大图中部1');
INSERT INTO `oc_banner_image_description` VALUES ('309', '2', '10', '233');

-- ----------------------------
-- Table structure for `oc_cart`
-- ----------------------------
DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_cart
-- ----------------------------
INSERT INTO `oc_cart` VALUES ('1', '21', 'get3ti5v2rmunu9rtl9g738fm2', '84', '0', '[]', '1', '2017-02-12 12:50:31');

-- ----------------------------
-- Table structure for `oc_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category
-- ----------------------------
INSERT INTO `oc_category` VALUES ('18', '', '0', '1', '0', '1', '1', '2009-01-05 21:49:15', '2017-02-09 16:15:24');
INSERT INTO `oc_category` VALUES ('20', '', '0', '1', '1', '2', '1', '2009-01-05 21:49:43', '2017-02-09 16:25:32');
INSERT INTO `oc_category` VALUES ('24', '', '0', '1', '1', '5', '1', '2009-01-20 02:36:26', '2017-02-09 16:31:11');
INSERT INTO `oc_category` VALUES ('25', '', '0', '1', '1', '3', '1', '2009-01-31 01:04:25', '2017-02-09 16:30:08');
INSERT INTO `oc_category` VALUES ('29', 'catalog/gd/product/am.jpg', '25', '0', '0', '1', '1', '2009-02-02 13:11:37', '2017-02-09 16:29:37');
INSERT INTO `oc_category` VALUES ('31', 'catalog/gd/product/hat.jpg', '25', '0', '0', '1', '1', '2009-02-03 14:17:24', '2017-02-09 16:29:07');
INSERT INTO `oc_category` VALUES ('64', 'catalog/gd/product/shes.jpg', '20', '0', '1', '0', '1', '2016-04-09 17:46:32', '2017-02-09 16:26:11');
INSERT INTO `oc_category` VALUES ('65', 'catalog/gd/product/bolon-v.jpg', '20', '0', '1', '0', '1', '2016-04-09 17:46:53', '2017-02-09 16:27:34');
INSERT INTO `oc_category` VALUES ('71', 'catalog/gd/product/helen.jpg', '18', '0', '1', '0', '1', '2016-04-09 17:52:35', '2017-02-09 16:20:07');
INSERT INTO `oc_category` VALUES ('72', 'catalog/gd/product/parzin.jpg', '18', '0', '1', '0', '1', '2016-04-09 17:52:57', '2017-02-09 16:24:50');
INSERT INTO `oc_category` VALUES ('73', 'catalog/gd/product/bolon.jpg', '18', '0', '1', '0', '1', '2016-04-09 17:54:04', '2017-02-09 16:18:56');
INSERT INTO `oc_category` VALUES ('74', 'catalog/gd/product/parin.jpg', '18', '0', '1', '0', '1', '2016-04-09 17:54:23', '2017-02-09 17:12:05');
INSERT INTO `oc_category` VALUES ('81', 'catalog/gd/product/bolon-n.jpg', '25', '0', '1', '0', '1', '2016-04-09 17:59:42', '2017-02-09 16:29:50');
INSERT INTO `oc_category` VALUES ('83', 'catalog/gd/product/awesa.jpg', '20', '0', '1', '0', '1', '2016-05-12 16:31:28', '2017-02-09 16:28:14');

-- ----------------------------
-- Table structure for `oc_category_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_description
-- ----------------------------
INSERT INTO `oc_category_description` VALUES ('18', '2', '生鲜时蔬', '&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;我们提供的蔬菜水果都是来自于农家的栽培，口感嘎嘎的，如有问题请致电客服&lt;/span&gt;', '生鲜时蔬', '', '');
INSERT INTO `oc_category_description` VALUES ('20', '2', '粮油副食', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '粮油副食', '粮油副食', '粮油副食');
INSERT INTO `oc_category_description` VALUES ('24', '2', '本周推荐', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '今日推荐', '', '');
INSERT INTO `oc_category_description` VALUES ('25', '2', '地方特产', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '地方特产', '', '');
INSERT INTO `oc_category_description` VALUES ('29', '2', '黔东南特产', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '黔东南特产', '', '');
INSERT INTO `oc_category_description` VALUES ('31', '2', '风味小吃', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '风味小吃', '', '');
INSERT INTO `oc_category_description` VALUES ('64', '2', '食用油', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '食用油', '', '');
INSERT INTO `oc_category_description` VALUES ('65', '2', '调味品', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '调味品', '', '');
INSERT INTO `oc_category_description` VALUES ('71', '2', '生肉禽蛋', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '生肉禽蛋', '', '');
INSERT INTO `oc_category_description` VALUES ('72', '2', '海鲜水产', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '海鲜水产', '', '');
INSERT INTO `oc_category_description` VALUES ('73', '2', '精品水果', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '精品水果', '', '');
INSERT INTO `oc_category_description` VALUES ('74', '2', '新鲜蔬菜', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '新鲜蔬菜', '', '');
INSERT INTO `oc_category_description` VALUES ('81', '2', '贵阳特产', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '贵阳特产', '', '');
INSERT INTO `oc_category_description` VALUES ('83', '2', '米面杂粮', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '米面杂粮', '', '');

-- ----------------------------
-- Table structure for `oc_category_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_category_path`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_path
-- ----------------------------
INSERT INTO `oc_category_path` VALUES ('18', '18', '0');
INSERT INTO `oc_category_path` VALUES ('20', '20', '0');
INSERT INTO `oc_category_path` VALUES ('24', '24', '0');
INSERT INTO `oc_category_path` VALUES ('25', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '25', '0');
INSERT INTO `oc_category_path` VALUES ('29', '29', '1');
INSERT INTO `oc_category_path` VALUES ('31', '25', '0');
INSERT INTO `oc_category_path` VALUES ('31', '31', '1');
INSERT INTO `oc_category_path` VALUES ('64', '20', '0');
INSERT INTO `oc_category_path` VALUES ('64', '64', '1');
INSERT INTO `oc_category_path` VALUES ('65', '20', '0');
INSERT INTO `oc_category_path` VALUES ('65', '65', '1');
INSERT INTO `oc_category_path` VALUES ('71', '18', '0');
INSERT INTO `oc_category_path` VALUES ('71', '71', '1');
INSERT INTO `oc_category_path` VALUES ('72', '18', '0');
INSERT INTO `oc_category_path` VALUES ('72', '72', '1');
INSERT INTO `oc_category_path` VALUES ('73', '18', '0');
INSERT INTO `oc_category_path` VALUES ('73', '73', '1');
INSERT INTO `oc_category_path` VALUES ('74', '18', '0');
INSERT INTO `oc_category_path` VALUES ('74', '74', '1');
INSERT INTO `oc_category_path` VALUES ('81', '25', '0');
INSERT INTO `oc_category_path` VALUES ('81', '81', '1');
INSERT INTO `oc_category_path` VALUES ('83', '20', '0');
INSERT INTO `oc_category_path` VALUES ('83', '83', '1');

-- ----------------------------
-- Table structure for `oc_category_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_layout
-- ----------------------------
INSERT INTO `oc_category_to_layout` VALUES ('18', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('20', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('24', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('25', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('29', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('31', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('64', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('65', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('71', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('72', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('73', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('74', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('81', '0', '0');
INSERT INTO `oc_category_to_layout` VALUES ('83', '0', '0');

-- ----------------------------
-- Table structure for `oc_category_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_category_to_store
-- ----------------------------
INSERT INTO `oc_category_to_store` VALUES ('18', '0');
INSERT INTO `oc_category_to_store` VALUES ('20', '0');
INSERT INTO `oc_category_to_store` VALUES ('24', '0');
INSERT INTO `oc_category_to_store` VALUES ('25', '0');
INSERT INTO `oc_category_to_store` VALUES ('29', '0');
INSERT INTO `oc_category_to_store` VALUES ('31', '0');
INSERT INTO `oc_category_to_store` VALUES ('64', '0');
INSERT INTO `oc_category_to_store` VALUES ('65', '0');
INSERT INTO `oc_category_to_store` VALUES ('71', '0');
INSERT INTO `oc_category_to_store` VALUES ('72', '0');
INSERT INTO `oc_category_to_store` VALUES ('73', '0');
INSERT INTO `oc_category_to_store` VALUES ('74', '0');
INSERT INTO `oc_category_to_store` VALUES ('81', '0');
INSERT INTO `oc_category_to_store` VALUES ('83', '0');

-- ----------------------------
-- Table structure for `oc_city`
-- ----------------------------
DROP TABLE IF EXISTS `oc_city`;
CREATE TABLE `oc_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2819 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_city
-- ----------------------------
INSERT INTO `oc_city` VALUES ('1', '360', '河东', '1', '0');
INSERT INTO `oc_city` VALUES ('2', '360', '河西', '1', '0');
INSERT INTO `oc_city` VALUES ('3', '360', '南开', '1', '0');
INSERT INTO `oc_city` VALUES ('4', '360', '河北', '1', '0');
INSERT INTO `oc_city` VALUES ('5', '360', '红桥', '1', '0');
INSERT INTO `oc_city` VALUES ('6', '360', '塘沽', '1', '0');
INSERT INTO `oc_city` VALUES ('7', '360', '汉沽', '1', '0');
INSERT INTO `oc_city` VALUES ('8', '360', '大港', '1', '0');
INSERT INTO `oc_city` VALUES ('9', '360', '东丽', '1', '0');
INSERT INTO `oc_city` VALUES ('10', '360', '西青', '1', '0');
INSERT INTO `oc_city` VALUES ('11', '360', '津南', '1', '0');
INSERT INTO `oc_city` VALUES ('12', '360', '北辰', '1', '0');
INSERT INTO `oc_city` VALUES ('13', '360', '武清', '1', '0');
INSERT INTO `oc_city` VALUES ('14', '360', '宝坻', '1', '0');
INSERT INTO `oc_city` VALUES ('15', '361', '蓟县', '1', '0');
INSERT INTO `oc_city` VALUES ('16', '361', '宁河', '1', '0');
INSERT INTO `oc_city` VALUES ('17', '361', '静海', '1', '0');
INSERT INTO `oc_city` VALUES ('18', '19', '长安', '1', '0');
INSERT INTO `oc_city` VALUES ('19', '19', '桥东', '1', '0');
INSERT INTO `oc_city` VALUES ('20', '19', '桥西', '1', '0');
INSERT INTO `oc_city` VALUES ('21', '19', '新华', '1', '0');
INSERT INTO `oc_city` VALUES ('22', '19', '裕华', '1', '0');
INSERT INTO `oc_city` VALUES ('23', '19', '井陉矿', '1', '0');
INSERT INTO `oc_city` VALUES ('24', '19', '辛集', '1', '0');
INSERT INTO `oc_city` VALUES ('25', '19', '藁城', '1', '0');
INSERT INTO `oc_city` VALUES ('26', '19', '晋州', '1', '0');
INSERT INTO `oc_city` VALUES ('27', '19', '新乐', '1', '0');
INSERT INTO `oc_city` VALUES ('28', '19', '鹿泉', '1', '0');
INSERT INTO `oc_city` VALUES ('29', '19', '井陉', '1', '0');
INSERT INTO `oc_city` VALUES ('30', '19', '正定', '1', '0');
INSERT INTO `oc_city` VALUES ('31', '19', '栾城', '1', '0');
INSERT INTO `oc_city` VALUES ('32', '19', '行唐', '1', '0');
INSERT INTO `oc_city` VALUES ('33', '19', '灵寿', '1', '0');
INSERT INTO `oc_city` VALUES ('34', '19', '高邑', '1', '0');
INSERT INTO `oc_city` VALUES ('35', '19', '深泽', '1', '0');
INSERT INTO `oc_city` VALUES ('36', '19', '赞皇', '1', '0');
INSERT INTO `oc_city` VALUES ('37', '19', '无极', '1', '0');
INSERT INTO `oc_city` VALUES ('38', '19', '平山', '1', '0');
INSERT INTO `oc_city` VALUES ('39', '19', '元氏', '1', '0');
INSERT INTO `oc_city` VALUES ('40', '19', '赵县', '1', '0');
INSERT INTO `oc_city` VALUES ('41', '20', '路北', '1', '0');
INSERT INTO `oc_city` VALUES ('42', '20', '路南', '1', '0');
INSERT INTO `oc_city` VALUES ('43', '20', '古冶', '1', '0');
INSERT INTO `oc_city` VALUES ('44', '20', '开平', '1', '0');
INSERT INTO `oc_city` VALUES ('45', '20', '丰润', '1', '0');
INSERT INTO `oc_city` VALUES ('46', '20', '丰南', '1', '0');
INSERT INTO `oc_city` VALUES ('47', '20', '遵化', '1', '0');
INSERT INTO `oc_city` VALUES ('48', '20', '迁安', '1', '0');
INSERT INTO `oc_city` VALUES ('49', '20', '滦县', '1', '0');
INSERT INTO `oc_city` VALUES ('50', '20', '滦南', '1', '0');
INSERT INTO `oc_city` VALUES ('51', '20', '乐亭', '1', '0');
INSERT INTO `oc_city` VALUES ('52', '20', '迁西', '1', '0');
INSERT INTO `oc_city` VALUES ('53', '20', '玉田', '1', '0');
INSERT INTO `oc_city` VALUES ('54', '20', '唐海', '1', '0');
INSERT INTO `oc_city` VALUES ('55', '21', '海港', '1', '0');
INSERT INTO `oc_city` VALUES ('56', '21', '山海关', '1', '0');
INSERT INTO `oc_city` VALUES ('57', '21', '北戴河', '1', '0');
INSERT INTO `oc_city` VALUES ('58', '21', '昌黎', '1', '0');
INSERT INTO `oc_city` VALUES ('59', '21', '抚宁', '1', '0');
INSERT INTO `oc_city` VALUES ('60', '21', '卢龙', '1', '0');
INSERT INTO `oc_city` VALUES ('61', '21', '青龙', '1', '0');
INSERT INTO `oc_city` VALUES ('62', '22', '丛台', '1', '0');
INSERT INTO `oc_city` VALUES ('63', '22', '邯山', '1', '0');
INSERT INTO `oc_city` VALUES ('64', '22', '复兴', '1', '0');
INSERT INTO `oc_city` VALUES ('65', '22', '峰峰', '1', '0');
INSERT INTO `oc_city` VALUES ('66', '22', '武安', '1', '0');
INSERT INTO `oc_city` VALUES ('67', '22', '邯郸', '1', '0');
INSERT INTO `oc_city` VALUES ('68', '22', '临漳', '1', '0');
INSERT INTO `oc_city` VALUES ('69', '22', '成安', '1', '0');
INSERT INTO `oc_city` VALUES ('70', '22', '大名', '1', '0');
INSERT INTO `oc_city` VALUES ('71', '22', '涉县', '1', '0');
INSERT INTO `oc_city` VALUES ('72', '22', '磁县', '1', '0');
INSERT INTO `oc_city` VALUES ('73', '22', '肥乡', '1', '0');
INSERT INTO `oc_city` VALUES ('74', '22', '永年', '1', '0');
INSERT INTO `oc_city` VALUES ('75', '22', '邱县', '1', '0');
INSERT INTO `oc_city` VALUES ('76', '22', '鸡泽', '1', '0');
INSERT INTO `oc_city` VALUES ('77', '22', '广平', '1', '0');
INSERT INTO `oc_city` VALUES ('78', '22', '馆陶', '1', '0');
INSERT INTO `oc_city` VALUES ('79', '22', '魏县', '1', '0');
INSERT INTO `oc_city` VALUES ('80', '22', '曲周', '1', '0');
INSERT INTO `oc_city` VALUES ('81', '23', '桥东', '1', '0');
INSERT INTO `oc_city` VALUES ('82', '23', '桥西', '1', '0');
INSERT INTO `oc_city` VALUES ('83', '23', '南宫', '1', '0');
INSERT INTO `oc_city` VALUES ('84', '23', '沙河', '1', '0');
INSERT INTO `oc_city` VALUES ('85', '23', '邢台', '1', '0');
INSERT INTO `oc_city` VALUES ('86', '23', '临城', '1', '0');
INSERT INTO `oc_city` VALUES ('87', '23', '内丘', '1', '0');
INSERT INTO `oc_city` VALUES ('88', '23', '柏乡', '1', '0');
INSERT INTO `oc_city` VALUES ('89', '23', '隆尧', '1', '0');
INSERT INTO `oc_city` VALUES ('90', '23', '任县', '1', '0');
INSERT INTO `oc_city` VALUES ('91', '23', '南和', '1', '0');
INSERT INTO `oc_city` VALUES ('92', '23', '宁晋', '1', '0');
INSERT INTO `oc_city` VALUES ('93', '23', '巨鹿', '1', '0');
INSERT INTO `oc_city` VALUES ('94', '23', '新河', '1', '0');
INSERT INTO `oc_city` VALUES ('95', '23', '广宗', '1', '0');
INSERT INTO `oc_city` VALUES ('96', '23', '平乡', '1', '0');
INSERT INTO `oc_city` VALUES ('97', '23', '威县', '1', '0');
INSERT INTO `oc_city` VALUES ('98', '23', '清河', '1', '0');
INSERT INTO `oc_city` VALUES ('99', '23', '临西', '1', '0');
INSERT INTO `oc_city` VALUES ('100', '24', '新市', '1', '0');
INSERT INTO `oc_city` VALUES ('101', '24', '北市', '1', '0');
INSERT INTO `oc_city` VALUES ('102', '24', '南市', '1', '0');
INSERT INTO `oc_city` VALUES ('103', '24', '定州', '1', '0');
INSERT INTO `oc_city` VALUES ('104', '24', '涿州', '1', '0');
INSERT INTO `oc_city` VALUES ('105', '24', '安国', '1', '0');
INSERT INTO `oc_city` VALUES ('106', '24', '高碑店', '1', '0');
INSERT INTO `oc_city` VALUES ('107', '24', '满城', '1', '0');
INSERT INTO `oc_city` VALUES ('108', '24', '清苑', '1', '0');
INSERT INTO `oc_city` VALUES ('109', '24', '易县', '1', '0');
INSERT INTO `oc_city` VALUES ('110', '24', '徐水', '1', '0');
INSERT INTO `oc_city` VALUES ('111', '24', '涞源', '1', '0');
INSERT INTO `oc_city` VALUES ('112', '24', '定兴', '1', '0');
INSERT INTO `oc_city` VALUES ('113', '24', '顺平', '1', '0');
INSERT INTO `oc_city` VALUES ('114', '24', '唐县', '1', '0');
INSERT INTO `oc_city` VALUES ('115', '24', '望都', '1', '0');
INSERT INTO `oc_city` VALUES ('116', '24', '涞水', '1', '0');
INSERT INTO `oc_city` VALUES ('117', '24', '高阳', '1', '0');
INSERT INTO `oc_city` VALUES ('118', '24', '安新', '1', '0');
INSERT INTO `oc_city` VALUES ('119', '24', '雄县', '1', '0');
INSERT INTO `oc_city` VALUES ('120', '24', '容城', '1', '0');
INSERT INTO `oc_city` VALUES ('121', '24', '曲阳', '1', '0');
INSERT INTO `oc_city` VALUES ('122', '24', '阜平', '1', '0');
INSERT INTO `oc_city` VALUES ('123', '24', '博野', '1', '0');
INSERT INTO `oc_city` VALUES ('124', '24', '蠡县', '1', '0');
INSERT INTO `oc_city` VALUES ('125', '25', '桥西', '1', '0');
INSERT INTO `oc_city` VALUES ('126', '25', '桥东', '1', '0');
INSERT INTO `oc_city` VALUES ('127', '25', '宣化', '1', '0');
INSERT INTO `oc_city` VALUES ('128', '25', '下花园', '1', '0');
INSERT INTO `oc_city` VALUES ('129', '25', '宣化', '1', '0');
INSERT INTO `oc_city` VALUES ('130', '25', '张北', '1', '0');
INSERT INTO `oc_city` VALUES ('131', '25', '康保', '1', '0');
INSERT INTO `oc_city` VALUES ('132', '25', '沽源', '1', '0');
INSERT INTO `oc_city` VALUES ('133', '25', '尚义', '1', '0');
INSERT INTO `oc_city` VALUES ('134', '25', '蔚县', '1', '0');
INSERT INTO `oc_city` VALUES ('135', '25', '阳原', '1', '0');
INSERT INTO `oc_city` VALUES ('136', '25', '怀安', '1', '0');
INSERT INTO `oc_city` VALUES ('137', '25', '万全', '1', '0');
INSERT INTO `oc_city` VALUES ('138', '25', '怀来', '1', '0');
INSERT INTO `oc_city` VALUES ('139', '25', '涿鹿', '1', '0');
INSERT INTO `oc_city` VALUES ('140', '25', '赤城', '1', '0');
INSERT INTO `oc_city` VALUES ('141', '25', '崇礼', '1', '0');
INSERT INTO `oc_city` VALUES ('142', '26', '双桥', '1', '0');
INSERT INTO `oc_city` VALUES ('143', '26', '双滦', '1', '0');
INSERT INTO `oc_city` VALUES ('144', '26', '鹰手营子矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('145', '26', '承德', '1', '0');
INSERT INTO `oc_city` VALUES ('146', '26', '兴隆', '1', '0');
INSERT INTO `oc_city` VALUES ('147', '26', '平泉', '1', '0');
INSERT INTO `oc_city` VALUES ('148', '26', '滦平', '1', '0');
INSERT INTO `oc_city` VALUES ('149', '26', '隆化', '1', '0');
INSERT INTO `oc_city` VALUES ('150', '26', '丰宁', '1', '0');
INSERT INTO `oc_city` VALUES ('151', '26', '宽城', '1', '0');
INSERT INTO `oc_city` VALUES ('152', '26', '围场', '1', '0');
INSERT INTO `oc_city` VALUES ('153', '27', '运河', '1', '0');
INSERT INTO `oc_city` VALUES ('154', '27', '新华', '1', '0');
INSERT INTO `oc_city` VALUES ('155', '27', '泊头', '1', '0');
INSERT INTO `oc_city` VALUES ('156', '27', '任丘', '1', '0');
INSERT INTO `oc_city` VALUES ('157', '27', '黄骅', '1', '0');
INSERT INTO `oc_city` VALUES ('158', '27', '河间', '1', '0');
INSERT INTO `oc_city` VALUES ('159', '27', '沧县', '1', '0');
INSERT INTO `oc_city` VALUES ('160', '27', '青县', '1', '0');
INSERT INTO `oc_city` VALUES ('161', '27', '东光', '1', '0');
INSERT INTO `oc_city` VALUES ('162', '27', '海兴', '1', '0');
INSERT INTO `oc_city` VALUES ('163', '27', '盐山', '1', '0');
INSERT INTO `oc_city` VALUES ('164', '27', '肃宁', '1', '0');
INSERT INTO `oc_city` VALUES ('165', '27', '南皮', '1', '0');
INSERT INTO `oc_city` VALUES ('166', '27', '吴桥', '1', '0');
INSERT INTO `oc_city` VALUES ('167', '27', '献县', '1', '0');
INSERT INTO `oc_city` VALUES ('168', '27', '孟村', '1', '0');
INSERT INTO `oc_city` VALUES ('169', '28', '安次', '1', '0');
INSERT INTO `oc_city` VALUES ('170', '28', '广阳', '1', '0');
INSERT INTO `oc_city` VALUES ('171', '28', '霸州', '1', '0');
INSERT INTO `oc_city` VALUES ('172', '28', '三河', '1', '0');
INSERT INTO `oc_city` VALUES ('173', '28', '固安', '1', '0');
INSERT INTO `oc_city` VALUES ('174', '28', '永清', '1', '0');
INSERT INTO `oc_city` VALUES ('175', '28', '香河', '1', '0');
INSERT INTO `oc_city` VALUES ('176', '28', '大城', '1', '0');
INSERT INTO `oc_city` VALUES ('177', '28', '文安', '1', '0');
INSERT INTO `oc_city` VALUES ('178', '28', '大厂', '1', '0');
INSERT INTO `oc_city` VALUES ('179', '29', '桃城', '1', '0');
INSERT INTO `oc_city` VALUES ('180', '29', '冀州', '1', '0');
INSERT INTO `oc_city` VALUES ('181', '29', '深州', '1', '0');
INSERT INTO `oc_city` VALUES ('182', '29', '枣强', '1', '0');
INSERT INTO `oc_city` VALUES ('183', '29', '武邑', '1', '0');
INSERT INTO `oc_city` VALUES ('184', '29', '武强', '1', '0');
INSERT INTO `oc_city` VALUES ('185', '29', '饶阳', '1', '0');
INSERT INTO `oc_city` VALUES ('186', '29', '安平', '1', '0');
INSERT INTO `oc_city` VALUES ('187', '29', '故城', '1', '0');
INSERT INTO `oc_city` VALUES ('188', '29', '景县', '1', '0');
INSERT INTO `oc_city` VALUES ('189', '29', '阜城', '1', '0');
INSERT INTO `oc_city` VALUES ('190', '30', '小店', '1', '0');
INSERT INTO `oc_city` VALUES ('191', '30', '迎泽', '1', '0');
INSERT INTO `oc_city` VALUES ('192', '30', '尖草坪', '1', '0');
INSERT INTO `oc_city` VALUES ('193', '30', '万柏林', '1', '0');
INSERT INTO `oc_city` VALUES ('194', '30', '晋源', '1', '0');
INSERT INTO `oc_city` VALUES ('195', '30', '古交', '1', '0');
INSERT INTO `oc_city` VALUES ('196', '30', '清徐', '1', '0');
INSERT INTO `oc_city` VALUES ('197', '30', '阳曲', '1', '0');
INSERT INTO `oc_city` VALUES ('198', '30', '娄烦', '1', '0');
INSERT INTO `oc_city` VALUES ('199', '31', '矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('200', '31', '南郊', '1', '0');
INSERT INTO `oc_city` VALUES ('201', '31', '新荣', '1', '0');
INSERT INTO `oc_city` VALUES ('202', '31', '阳高', '1', '0');
INSERT INTO `oc_city` VALUES ('203', '31', '天镇', '1', '0');
INSERT INTO `oc_city` VALUES ('204', '31', '广灵', '1', '0');
INSERT INTO `oc_city` VALUES ('205', '31', '灵丘', '1', '0');
INSERT INTO `oc_city` VALUES ('206', '31', '浑源', '1', '0');
INSERT INTO `oc_city` VALUES ('207', '31', '左云', '1', '0');
INSERT INTO `oc_city` VALUES ('208', '31', '大同', '1', '0');
INSERT INTO `oc_city` VALUES ('209', '32', '矿区', '1', '0');
INSERT INTO `oc_city` VALUES ('210', '32', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('211', '32', '平定', '1', '0');
INSERT INTO `oc_city` VALUES ('212', '32', '盂县', '1', '0');
INSERT INTO `oc_city` VALUES ('213', '33', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('214', '33', '潞城', '1', '0');
INSERT INTO `oc_city` VALUES ('215', '33', '长治', '1', '0');
INSERT INTO `oc_city` VALUES ('216', '33', '襄垣', '1', '0');
INSERT INTO `oc_city` VALUES ('217', '33', '屯留', '1', '0');
INSERT INTO `oc_city` VALUES ('218', '33', '平顺', '1', '0');
INSERT INTO `oc_city` VALUES ('219', '33', '黎城', '1', '0');
INSERT INTO `oc_city` VALUES ('220', '33', '壶关', '1', '0');
INSERT INTO `oc_city` VALUES ('221', '33', '长子', '1', '0');
INSERT INTO `oc_city` VALUES ('222', '33', '武乡', '1', '0');
INSERT INTO `oc_city` VALUES ('223', '33', '沁县', '1', '0');
INSERT INTO `oc_city` VALUES ('224', '33', '沁源', '1', '0');
INSERT INTO `oc_city` VALUES ('225', '34', '高平', '1', '0');
INSERT INTO `oc_city` VALUES ('226', '34', '泽州', '1', '0');
INSERT INTO `oc_city` VALUES ('227', '34', '沁水', '1', '0');
INSERT INTO `oc_city` VALUES ('228', '34', '阳城', '1', '0');
INSERT INTO `oc_city` VALUES ('229', '34', '陵川', '1', '0');
INSERT INTO `oc_city` VALUES ('230', '35', '平鲁', '1', '0');
INSERT INTO `oc_city` VALUES ('231', '35', '山阴', '1', '0');
INSERT INTO `oc_city` VALUES ('232', '35', '应县', '1', '0');
INSERT INTO `oc_city` VALUES ('233', '35', '右玉', '1', '0');
INSERT INTO `oc_city` VALUES ('234', '35', '怀仁', '1', '0');
INSERT INTO `oc_city` VALUES ('235', '36', '介休', '1', '0');
INSERT INTO `oc_city` VALUES ('236', '36', '榆社', '1', '0');
INSERT INTO `oc_city` VALUES ('237', '36', '左权', '1', '0');
INSERT INTO `oc_city` VALUES ('238', '36', '和顺', '1', '0');
INSERT INTO `oc_city` VALUES ('239', '36', '昔阳', '1', '0');
INSERT INTO `oc_city` VALUES ('240', '36', '寿阳', '1', '0');
INSERT INTO `oc_city` VALUES ('241', '36', '太谷', '1', '0');
INSERT INTO `oc_city` VALUES ('242', '36', '祁县', '1', '0');
INSERT INTO `oc_city` VALUES ('243', '36', '平遥', '1', '0');
INSERT INTO `oc_city` VALUES ('244', '36', '灵石', '1', '0');
INSERT INTO `oc_city` VALUES ('245', '37', '永济', '1', '0');
INSERT INTO `oc_city` VALUES ('246', '37', '河津', '1', '0');
INSERT INTO `oc_city` VALUES ('247', '37', '芮城', '1', '0');
INSERT INTO `oc_city` VALUES ('248', '37', '临猗', '1', '0');
INSERT INTO `oc_city` VALUES ('249', '37', '万荣', '1', '0');
INSERT INTO `oc_city` VALUES ('250', '37', '新绛', '1', '0');
INSERT INTO `oc_city` VALUES ('251', '37', '稷山', '1', '0');
INSERT INTO `oc_city` VALUES ('252', '37', '闻喜', '1', '0');
INSERT INTO `oc_city` VALUES ('253', '37', '夏县', '1', '0');
INSERT INTO `oc_city` VALUES ('254', '37', '绛县', '1', '0');
INSERT INTO `oc_city` VALUES ('255', '37', '平陆', '1', '0');
INSERT INTO `oc_city` VALUES ('256', '37', '垣曲', '1', '0');
INSERT INTO `oc_city` VALUES ('257', '38', '原平', '1', '0');
INSERT INTO `oc_city` VALUES ('258', '38', '定襄', '1', '0');
INSERT INTO `oc_city` VALUES ('259', '38', '五台', '1', '0');
INSERT INTO `oc_city` VALUES ('260', '38', '代县', '1', '0');
INSERT INTO `oc_city` VALUES ('261', '38', '繁峙', '1', '0');
INSERT INTO `oc_city` VALUES ('262', '38', '宁武', '1', '0');
INSERT INTO `oc_city` VALUES ('263', '38', '静乐', '1', '0');
INSERT INTO `oc_city` VALUES ('264', '38', '神池', '1', '0');
INSERT INTO `oc_city` VALUES ('265', '38', '五寨', '1', '0');
INSERT INTO `oc_city` VALUES ('266', '38', '岢岚', '1', '0');
INSERT INTO `oc_city` VALUES ('267', '38', '河曲', '1', '0');
INSERT INTO `oc_city` VALUES ('268', '38', '保德', '1', '0');
INSERT INTO `oc_city` VALUES ('269', '38', '偏关', '1', '0');
INSERT INTO `oc_city` VALUES ('270', '39', '侯马', '1', '0');
INSERT INTO `oc_city` VALUES ('271', '39', '霍州', '1', '0');
INSERT INTO `oc_city` VALUES ('272', '39', '曲沃', '1', '0');
INSERT INTO `oc_city` VALUES ('273', '39', '翼城', '1', '0');
INSERT INTO `oc_city` VALUES ('274', '39', '襄汾', '1', '0');
INSERT INTO `oc_city` VALUES ('275', '39', '洪洞', '1', '0');
INSERT INTO `oc_city` VALUES ('276', '39', '古县', '1', '0');
INSERT INTO `oc_city` VALUES ('277', '39', '安泽', '1', '0');
INSERT INTO `oc_city` VALUES ('278', '39', '浮山', '1', '0');
INSERT INTO `oc_city` VALUES ('279', '39', '吉县', '1', '0');
INSERT INTO `oc_city` VALUES ('280', '39', '乡宁', '1', '0');
INSERT INTO `oc_city` VALUES ('281', '39', '蒲县', '1', '0');
INSERT INTO `oc_city` VALUES ('282', '39', '大宁', '1', '0');
INSERT INTO `oc_city` VALUES ('283', '39', '永和', '1', '0');
INSERT INTO `oc_city` VALUES ('284', '39', '隰县', '1', '0');
INSERT INTO `oc_city` VALUES ('285', '39', '汾西', '1', '0');
INSERT INTO `oc_city` VALUES ('286', '40', '孝义', '1', '0');
INSERT INTO `oc_city` VALUES ('287', '40', '汾阳', '1', '0');
INSERT INTO `oc_city` VALUES ('288', '40', '文水', '1', '0');
INSERT INTO `oc_city` VALUES ('289', '40', '中阳', '1', '0');
INSERT INTO `oc_city` VALUES ('290', '40', '兴县', '1', '0');
INSERT INTO `oc_city` VALUES ('291', '40', '临县', '1', '0');
INSERT INTO `oc_city` VALUES ('292', '40', '方山', '1', '0');
INSERT INTO `oc_city` VALUES ('293', '40', '柳林', '1', '0');
INSERT INTO `oc_city` VALUES ('294', '40', '岚县', '1', '0');
INSERT INTO `oc_city` VALUES ('295', '40', '交口', '1', '0');
INSERT INTO `oc_city` VALUES ('296', '40', '交城', '1', '0');
INSERT INTO `oc_city` VALUES ('297', '40', '石楼', '1', '0');
INSERT INTO `oc_city` VALUES ('298', '41', '回民', '1', '0');
INSERT INTO `oc_city` VALUES ('299', '41', '新城', '1', '0');
INSERT INTO `oc_city` VALUES ('300', '41', '玉泉', '1', '0');
INSERT INTO `oc_city` VALUES ('301', '41', '赛罕', '1', '0');
INSERT INTO `oc_city` VALUES ('302', '41', '托克托', '1', '0');
INSERT INTO `oc_city` VALUES ('303', '41', '武川', '1', '0');
INSERT INTO `oc_city` VALUES ('304', '41', '和林格尔', '1', '0');
INSERT INTO `oc_city` VALUES ('305', '41', '清水河', '1', '0');
INSERT INTO `oc_city` VALUES ('306', '41', '土默特左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('307', '42', '昆都仑', '1', '0');
INSERT INTO `oc_city` VALUES ('308', '42', '东河', '1', '0');
INSERT INTO `oc_city` VALUES ('309', '42', '青山', '1', '0');
INSERT INTO `oc_city` VALUES ('310', '42', '石拐', '1', '0');
INSERT INTO `oc_city` VALUES ('311', '42', '白云矿', '1', '0');
INSERT INTO `oc_city` VALUES ('312', '42', '九原', '1', '0');
INSERT INTO `oc_city` VALUES ('313', '42', '固阳', '1', '0');
INSERT INTO `oc_city` VALUES ('314', '42', '土默特右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('315', '42', '达尔罕茂明安联合旗', '1', '0');
INSERT INTO `oc_city` VALUES ('316', '43', '海勃湾', '1', '0');
INSERT INTO `oc_city` VALUES ('317', '43', '乌达', '1', '0');
INSERT INTO `oc_city` VALUES ('318', '43', '海南', '1', '0');
INSERT INTO `oc_city` VALUES ('319', '44', '红山', '1', '0');
INSERT INTO `oc_city` VALUES ('320', '44', '元宝山', '1', '0');
INSERT INTO `oc_city` VALUES ('321', '44', '松山', '1', '0');
INSERT INTO `oc_city` VALUES ('322', '44', '宁城', '1', '0');
INSERT INTO `oc_city` VALUES ('323', '44', '林西', '1', '0');
INSERT INTO `oc_city` VALUES ('324', '44', '阿鲁科尔沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('325', '44', '巴林左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('326', '44', '巴林右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('327', '44', '克什克腾旗', '1', '0');
INSERT INTO `oc_city` VALUES ('328', '44', '翁牛特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('329', '44', '喀喇沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('330', '44', '敖汉旗', '1', '0');
INSERT INTO `oc_city` VALUES ('331', '45', '科尔沁', '1', '0');
INSERT INTO `oc_city` VALUES ('332', '45', '霍林郭勒', '1', '0');
INSERT INTO `oc_city` VALUES ('333', '45', '开鲁', '1', '0');
INSERT INTO `oc_city` VALUES ('334', '45', '库伦旗', '1', '0');
INSERT INTO `oc_city` VALUES ('335', '45', '奈曼旗', '1', '0');
INSERT INTO `oc_city` VALUES ('336', '45', '扎鲁特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('337', '45', '科尔沁左翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('338', '45', '科尔沁左翼后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('339', '46', '东胜', '1', '0');
INSERT INTO `oc_city` VALUES ('340', '46', '达拉特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('341', '46', '准格尔旗', '1', '0');
INSERT INTO `oc_city` VALUES ('342', '46', '鄂托克前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('343', '46', '鄂托克旗', '1', '0');
INSERT INTO `oc_city` VALUES ('344', '46', '杭锦旗', '1', '0');
INSERT INTO `oc_city` VALUES ('345', '46', '乌审旗', '1', '0');
INSERT INTO `oc_city` VALUES ('346', '46', '伊金霍洛旗', '1', '0');
INSERT INTO `oc_city` VALUES ('347', '47', '海拉尔', '1', '0');
INSERT INTO `oc_city` VALUES ('348', '47', '满洲里', '1', '0');
INSERT INTO `oc_city` VALUES ('349', '47', '扎兰屯', '1', '0');
INSERT INTO `oc_city` VALUES ('350', '47', '牙克石', '1', '0');
INSERT INTO `oc_city` VALUES ('351', '47', '根河', '1', '0');
INSERT INTO `oc_city` VALUES ('352', '47', '额尔古纳', '1', '0');
INSERT INTO `oc_city` VALUES ('353', '47', '阿荣旗', '1', '0');
INSERT INTO `oc_city` VALUES ('354', '47', '新巴尔虎右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('355', '47', '新巴尔虎左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('356', '47', '陈巴尔虎旗', '1', '0');
INSERT INTO `oc_city` VALUES ('357', '47', '鄂伦春自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('358', '47', '鄂温克族自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('359', '47', '莫力达瓦达斡尔族自治旗', '1', '0');
INSERT INTO `oc_city` VALUES ('360', '48', '集宁', '1', '0');
INSERT INTO `oc_city` VALUES ('361', '48', '丰镇', '1', '0');
INSERT INTO `oc_city` VALUES ('362', '48', '卓资', '1', '0');
INSERT INTO `oc_city` VALUES ('363', '48', '化德', '1', '0');
INSERT INTO `oc_city` VALUES ('364', '48', '商都', '1', '0');
INSERT INTO `oc_city` VALUES ('365', '48', '兴和', '1', '0');
INSERT INTO `oc_city` VALUES ('366', '48', '凉城', '1', '0');
INSERT INTO `oc_city` VALUES ('367', '48', '察哈尔右翼前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('368', '48', '察哈尔右翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('369', '48', '察哈尔右翼后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('370', '48', '四子王旗', '1', '0');
INSERT INTO `oc_city` VALUES ('371', '49', '锡林浩特', '1', '0');
INSERT INTO `oc_city` VALUES ('372', '49', '二连浩特', '1', '0');
INSERT INTO `oc_city` VALUES ('373', '49', '多伦', '1', '0');
INSERT INTO `oc_city` VALUES ('374', '49', '阿巴嘎旗', '1', '0');
INSERT INTO `oc_city` VALUES ('375', '49', '苏尼特左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('376', '49', '苏尼特右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('377', '49', '东乌珠穆沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('378', '49', '西乌珠穆沁旗', '1', '0');
INSERT INTO `oc_city` VALUES ('379', '49', '太仆寺旗', '1', '0');
INSERT INTO `oc_city` VALUES ('380', '49', '镶黄旗', '1', '0');
INSERT INTO `oc_city` VALUES ('381', '49', '正镶白旗', '1', '0');
INSERT INTO `oc_city` VALUES ('382', '49', '正蓝旗', '1', '0');
INSERT INTO `oc_city` VALUES ('383', '50', '临河', '1', '0');
INSERT INTO `oc_city` VALUES ('384', '50', '五原', '1', '0');
INSERT INTO `oc_city` VALUES ('385', '50', '磴口', '1', '0');
INSERT INTO `oc_city` VALUES ('386', '50', '乌拉特前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('387', '50', '乌拉特中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('388', '50', '乌拉特后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('389', '50', '杭锦后旗', '1', '0');
INSERT INTO `oc_city` VALUES ('390', '51', '阿拉善左旗', '1', '0');
INSERT INTO `oc_city` VALUES ('391', '51', '阿拉善右旗', '1', '0');
INSERT INTO `oc_city` VALUES ('392', '51', '额济纳旗', '1', '0');
INSERT INTO `oc_city` VALUES ('393', '52', '乌兰浩特', '1', '0');
INSERT INTO `oc_city` VALUES ('394', '52', '阿尔山', '1', '0');
INSERT INTO `oc_city` VALUES ('395', '52', '突泉', '1', '0');
INSERT INTO `oc_city` VALUES ('396', '52', '科尔沁右翼前旗', '1', '0');
INSERT INTO `oc_city` VALUES ('397', '52', '科尔沁右翼中旗', '1', '0');
INSERT INTO `oc_city` VALUES ('398', '52', '扎赉特旗', '1', '0');
INSERT INTO `oc_city` VALUES ('399', '53', '和平', '1', '0');
INSERT INTO `oc_city` VALUES ('400', '53', '大东', '1', '0');
INSERT INTO `oc_city` VALUES ('401', '53', '皇姑', '1', '0');
INSERT INTO `oc_city` VALUES ('402', '53', '铁西', '1', '0');
INSERT INTO `oc_city` VALUES ('403', '53', '苏家屯', '1', '0');
INSERT INTO `oc_city` VALUES ('404', '53', '东陵', '1', '0');
INSERT INTO `oc_city` VALUES ('405', '53', '新城子', '1', '0');
INSERT INTO `oc_city` VALUES ('406', '53', '于洪', '1', '0');
INSERT INTO `oc_city` VALUES ('407', '53', '新民', '1', '0');
INSERT INTO `oc_city` VALUES ('408', '53', '辽中', '1', '0');
INSERT INTO `oc_city` VALUES ('409', '53', '康平', '1', '0');
INSERT INTO `oc_city` VALUES ('410', '53', '法库', '1', '0');
INSERT INTO `oc_city` VALUES ('411', '54', '西岗', '1', '0');
INSERT INTO `oc_city` VALUES ('412', '54', '中山', '1', '0');
INSERT INTO `oc_city` VALUES ('413', '54', '沙河口', '1', '0');
INSERT INTO `oc_city` VALUES ('414', '54', '甘井子', '1', '0');
INSERT INTO `oc_city` VALUES ('415', '54', '旅顺口', '1', '0');
INSERT INTO `oc_city` VALUES ('416', '54', '金州', '1', '0');
INSERT INTO `oc_city` VALUES ('417', '54', '瓦房店', '1', '0');
INSERT INTO `oc_city` VALUES ('418', '54', '普兰店', '1', '0');
INSERT INTO `oc_city` VALUES ('419', '54', '庄河', '1', '0');
INSERT INTO `oc_city` VALUES ('420', '54', '长海', '1', '0');
INSERT INTO `oc_city` VALUES ('421', '55', '铁东', '1', '0');
INSERT INTO `oc_city` VALUES ('422', '55', '铁西', '1', '0');
INSERT INTO `oc_city` VALUES ('423', '55', '立山', '1', '0');
INSERT INTO `oc_city` VALUES ('424', '55', '千山', '1', '0');
INSERT INTO `oc_city` VALUES ('425', '55', '海城', '1', '0');
INSERT INTO `oc_city` VALUES ('426', '55', '台安', '1', '0');
INSERT INTO `oc_city` VALUES ('427', '55', '岫岩', '1', '0');
INSERT INTO `oc_city` VALUES ('428', '56', '新抚', '1', '0');
INSERT INTO `oc_city` VALUES ('429', '56', '东洲', '1', '0');
INSERT INTO `oc_city` VALUES ('430', '56', '望花', '1', '0');
INSERT INTO `oc_city` VALUES ('431', '56', '顺城', '1', '0');
INSERT INTO `oc_city` VALUES ('432', '56', '抚顺', '1', '0');
INSERT INTO `oc_city` VALUES ('433', '56', '新宾', '1', '0');
INSERT INTO `oc_city` VALUES ('434', '56', '清原', '1', '0');
INSERT INTO `oc_city` VALUES ('435', '57', '平山', '1', '0');
INSERT INTO `oc_city` VALUES ('436', '57', '溪湖', '1', '0');
INSERT INTO `oc_city` VALUES ('437', '57', '明山', '1', '0');
INSERT INTO `oc_city` VALUES ('438', '57', '南芬', '1', '0');
INSERT INTO `oc_city` VALUES ('439', '57', '本溪', '1', '0');
INSERT INTO `oc_city` VALUES ('440', '57', '桓仁', '1', '0');
INSERT INTO `oc_city` VALUES ('441', '58', '振兴', '1', '0');
INSERT INTO `oc_city` VALUES ('442', '58', '元宝', '1', '0');
INSERT INTO `oc_city` VALUES ('443', '58', '振安', '1', '0');
INSERT INTO `oc_city` VALUES ('444', '58', '凤城', '1', '0');
INSERT INTO `oc_city` VALUES ('445', '58', '东港', '1', '0');
INSERT INTO `oc_city` VALUES ('446', '58', '宽甸', '1', '0');
INSERT INTO `oc_city` VALUES ('447', '59', '太和', '1', '0');
INSERT INTO `oc_city` VALUES ('448', '59', '古塔', '1', '0');
INSERT INTO `oc_city` VALUES ('449', '59', '凌河', '1', '0');
INSERT INTO `oc_city` VALUES ('450', '59', '凌海', '1', '0');
INSERT INTO `oc_city` VALUES ('451', '59', '北宁', '1', '0');
INSERT INTO `oc_city` VALUES ('452', '59', '黑山', '1', '0');
INSERT INTO `oc_city` VALUES ('453', '59', '义县', '1', '0');
INSERT INTO `oc_city` VALUES ('454', '60', '龙港', '1', '0');
INSERT INTO `oc_city` VALUES ('455', '60', '连山', '1', '0');
INSERT INTO `oc_city` VALUES ('456', '60', '南票', '1', '0');
INSERT INTO `oc_city` VALUES ('457', '60', '兴城', '1', '0');
INSERT INTO `oc_city` VALUES ('458', '60', '绥中', '1', '0');
INSERT INTO `oc_city` VALUES ('459', '60', '建昌', '1', '0');
INSERT INTO `oc_city` VALUES ('460', '61', '站前', '1', '0');
INSERT INTO `oc_city` VALUES ('461', '61', '西市', '1', '0');
INSERT INTO `oc_city` VALUES ('462', '61', '鲅鱼圈', '1', '0');
INSERT INTO `oc_city` VALUES ('463', '61', '老边', '1', '0');
INSERT INTO `oc_city` VALUES ('464', '61', '大石桥', '1', '0');
INSERT INTO `oc_city` VALUES ('465', '61', '盖州', '1', '0');
INSERT INTO `oc_city` VALUES ('466', '62', '双台子', '1', '0');
INSERT INTO `oc_city` VALUES ('467', '62', '兴隆台', '1', '0');
INSERT INTO `oc_city` VALUES ('468', '62', '大洼', '1', '0');
INSERT INTO `oc_city` VALUES ('469', '62', '盘山', '1', '0');
INSERT INTO `oc_city` VALUES ('470', '63', '海州', '1', '0');
INSERT INTO `oc_city` VALUES ('471', '63', '新邱', '1', '0');
INSERT INTO `oc_city` VALUES ('472', '63', '太平', '1', '0');
INSERT INTO `oc_city` VALUES ('473', '63', '清河门', '1', '0');
INSERT INTO `oc_city` VALUES ('474', '63', '细河', '1', '0');
INSERT INTO `oc_city` VALUES ('475', '63', '彰武', '1', '0');
INSERT INTO `oc_city` VALUES ('476', '63', '阜新', '1', '0');
INSERT INTO `oc_city` VALUES ('477', '64', '白塔', '1', '0');
INSERT INTO `oc_city` VALUES ('478', '64', '文圣', '1', '0');
INSERT INTO `oc_city` VALUES ('479', '64', '宏伟', '1', '0');
INSERT INTO `oc_city` VALUES ('480', '64', '弓长岭', '1', '0');
INSERT INTO `oc_city` VALUES ('481', '64', '太子河', '1', '0');
INSERT INTO `oc_city` VALUES ('482', '64', '灯塔', '1', '0');
INSERT INTO `oc_city` VALUES ('483', '64', '辽阳', '1', '0');
INSERT INTO `oc_city` VALUES ('484', '65', '银州', '1', '0');
INSERT INTO `oc_city` VALUES ('485', '65', '清河', '1', '0');
INSERT INTO `oc_city` VALUES ('486', '65', '调兵山', '1', '0');
INSERT INTO `oc_city` VALUES ('487', '65', '开原', '1', '0');
INSERT INTO `oc_city` VALUES ('488', '65', '铁岭', '1', '0');
INSERT INTO `oc_city` VALUES ('489', '65', '西丰', '1', '0');
INSERT INTO `oc_city` VALUES ('490', '65', '昌图', '1', '0');
INSERT INTO `oc_city` VALUES ('491', '66', '双塔', '1', '0');
INSERT INTO `oc_city` VALUES ('492', '66', '龙城', '1', '0');
INSERT INTO `oc_city` VALUES ('493', '66', '北票', '1', '0');
INSERT INTO `oc_city` VALUES ('494', '66', '凌源', '1', '0');
INSERT INTO `oc_city` VALUES ('495', '66', '朝阳', '1', '0');
INSERT INTO `oc_city` VALUES ('496', '66', '建平', '1', '0');
INSERT INTO `oc_city` VALUES ('497', '66', '喀喇沁左翼', '1', '0');
INSERT INTO `oc_city` VALUES ('498', '67', '朝阳', '1', '0');
INSERT INTO `oc_city` VALUES ('499', '67', '南关', '1', '0');
INSERT INTO `oc_city` VALUES ('500', '67', '宽城', '1', '0');
INSERT INTO `oc_city` VALUES ('501', '67', '二道', '1', '0');
INSERT INTO `oc_city` VALUES ('502', '67', '绿园', '1', '0');
INSERT INTO `oc_city` VALUES ('503', '67', '双阳', '1', '0');
INSERT INTO `oc_city` VALUES ('504', '67', '德惠', '1', '0');
INSERT INTO `oc_city` VALUES ('505', '67', '九台', '1', '0');
INSERT INTO `oc_city` VALUES ('506', '67', '榆树', '1', '0');
INSERT INTO `oc_city` VALUES ('507', '67', '农安', '1', '0');
INSERT INTO `oc_city` VALUES ('508', '68', '船营', '1', '0');
INSERT INTO `oc_city` VALUES ('509', '68', '龙潭', '1', '0');
INSERT INTO `oc_city` VALUES ('510', '68', '昌邑', '1', '0');
INSERT INTO `oc_city` VALUES ('511', '68', '丰满', '1', '0');
INSERT INTO `oc_city` VALUES ('512', '68', '磐石', '1', '0');
INSERT INTO `oc_city` VALUES ('513', '68', '蛟河', '1', '0');
INSERT INTO `oc_city` VALUES ('514', '68', '桦甸', '1', '0');
INSERT INTO `oc_city` VALUES ('515', '68', '舒兰', '1', '0');
INSERT INTO `oc_city` VALUES ('516', '68', '永吉', '1', '0');
INSERT INTO `oc_city` VALUES ('517', '69', '铁西', '1', '0');
INSERT INTO `oc_city` VALUES ('518', '69', '铁东', '1', '0');
INSERT INTO `oc_city` VALUES ('519', '69', '双辽', '1', '0');
INSERT INTO `oc_city` VALUES ('520', '69', '公主岭', '1', '0');
INSERT INTO `oc_city` VALUES ('521', '69', '梨树', '1', '0');
INSERT INTO `oc_city` VALUES ('522', '69', '伊通', '1', '0');
INSERT INTO `oc_city` VALUES ('523', '70', '龙山', '1', '0');
INSERT INTO `oc_city` VALUES ('524', '70', '西安', '1', '0');
INSERT INTO `oc_city` VALUES ('525', '70', '东丰', '1', '0');
INSERT INTO `oc_city` VALUES ('526', '70', '东辽', '1', '0');
INSERT INTO `oc_city` VALUES ('527', '71', '东昌', '1', '0');
INSERT INTO `oc_city` VALUES ('528', '71', '二道江', '1', '0');
INSERT INTO `oc_city` VALUES ('529', '71', '梅河口', '1', '0');
INSERT INTO `oc_city` VALUES ('530', '71', '集安', '1', '0');
INSERT INTO `oc_city` VALUES ('531', '71', '通化', '1', '0');
INSERT INTO `oc_city` VALUES ('532', '71', '辉南', '1', '0');
INSERT INTO `oc_city` VALUES ('533', '71', '柳河', '1', '0');
INSERT INTO `oc_city` VALUES ('534', '72', '八道江', '1', '0');
INSERT INTO `oc_city` VALUES ('535', '72', '临江', '1', '0');
INSERT INTO `oc_city` VALUES ('536', '72', '江源', '1', '0');
INSERT INTO `oc_city` VALUES ('537', '72', '抚松', '1', '0');
INSERT INTO `oc_city` VALUES ('538', '72', '靖宇', '1', '0');
INSERT INTO `oc_city` VALUES ('539', '72', '长白', '1', '0');
INSERT INTO `oc_city` VALUES ('540', '73', '宁江', '1', '0');
INSERT INTO `oc_city` VALUES ('541', '73', '扶余', '1', '0');
INSERT INTO `oc_city` VALUES ('542', '73', '长岭', '1', '0');
INSERT INTO `oc_city` VALUES ('543', '73', '乾安', '1', '0');
INSERT INTO `oc_city` VALUES ('544', '73', '前郭尔罗斯', '1', '0');
INSERT INTO `oc_city` VALUES ('545', '74', '洮北', '1', '0');
INSERT INTO `oc_city` VALUES ('546', '74', '大安', '1', '0');
INSERT INTO `oc_city` VALUES ('547', '74', '洮南', '1', '0');
INSERT INTO `oc_city` VALUES ('548', '74', '镇赉', '1', '0');
INSERT INTO `oc_city` VALUES ('549', '74', '通榆', '1', '0');
INSERT INTO `oc_city` VALUES ('550', '75', '延吉', '1', '0');
INSERT INTO `oc_city` VALUES ('551', '75', '图们', '1', '0');
INSERT INTO `oc_city` VALUES ('552', '75', '敦化', '1', '0');
INSERT INTO `oc_city` VALUES ('553', '75', '珲春', '1', '0');
INSERT INTO `oc_city` VALUES ('554', '75', '龙井', '1', '0');
INSERT INTO `oc_city` VALUES ('555', '75', '和龙', '1', '0');
INSERT INTO `oc_city` VALUES ('556', '75', '汪清', '1', '0');
INSERT INTO `oc_city` VALUES ('557', '75', '安图', '1', '0');
INSERT INTO `oc_city` VALUES ('558', '76', '南岗', '1', '0');
INSERT INTO `oc_city` VALUES ('559', '76', '道外', '1', '0');
INSERT INTO `oc_city` VALUES ('560', '76', '太平', '1', '0');
INSERT INTO `oc_city` VALUES ('561', '76', '香坊', '1', '0');
INSERT INTO `oc_city` VALUES ('562', '76', '动力', '1', '0');
INSERT INTO `oc_city` VALUES ('563', '76', '平房', '1', '0');
INSERT INTO `oc_city` VALUES ('564', '76', '双城', '1', '0');
INSERT INTO `oc_city` VALUES ('565', '76', '尚志', '1', '0');
INSERT INTO `oc_city` VALUES ('566', '76', '五常', '1', '0');
INSERT INTO `oc_city` VALUES ('567', '76', '阿城', '1', '0');
INSERT INTO `oc_city` VALUES ('568', '76', '呼兰', '1', '0');
INSERT INTO `oc_city` VALUES ('569', '76', '依兰', '1', '0');
INSERT INTO `oc_city` VALUES ('570', '76', '方正', '1', '0');
INSERT INTO `oc_city` VALUES ('571', '76', '宾县', '1', '0');
INSERT INTO `oc_city` VALUES ('572', '76', '巴彦', '1', '0');
INSERT INTO `oc_city` VALUES ('573', '76', '木兰', '1', '0');
INSERT INTO `oc_city` VALUES ('574', '76', '通河', '1', '0');
INSERT INTO `oc_city` VALUES ('575', '76', '延寿', '1', '0');
INSERT INTO `oc_city` VALUES ('576', '77', '龙沙', '1', '0');
INSERT INTO `oc_city` VALUES ('577', '77', '建华', '1', '0');
INSERT INTO `oc_city` VALUES ('578', '77', '铁峰', '1', '0');
INSERT INTO `oc_city` VALUES ('579', '77', '昂昂溪', '1', '0');
INSERT INTO `oc_city` VALUES ('580', '77', '富拉尔基', '1', '0');
INSERT INTO `oc_city` VALUES ('581', '77', '碾子山', '1', '0');
INSERT INTO `oc_city` VALUES ('582', '77', '梅里斯达斡尔', '1', '0');
INSERT INTO `oc_city` VALUES ('583', '77', '讷河', '1', '0');
INSERT INTO `oc_city` VALUES ('584', '77', '龙江', '1', '0');
INSERT INTO `oc_city` VALUES ('585', '77', '依安', '1', '0');
INSERT INTO `oc_city` VALUES ('586', '77', '泰来', '1', '0');
INSERT INTO `oc_city` VALUES ('587', '77', '甘南', '1', '0');
INSERT INTO `oc_city` VALUES ('588', '77', '富裕', '1', '0');
INSERT INTO `oc_city` VALUES ('589', '77', '克山', '1', '0');
INSERT INTO `oc_city` VALUES ('590', '77', '克东', '1', '0');
INSERT INTO `oc_city` VALUES ('591', '77', '拜泉', '1', '0');
INSERT INTO `oc_city` VALUES ('592', '78', '兴山', '1', '0');
INSERT INTO `oc_city` VALUES ('593', '78', '向阳', '1', '0');
INSERT INTO `oc_city` VALUES ('594', '78', '工农', '1', '0');
INSERT INTO `oc_city` VALUES ('595', '78', '南山', '1', '0');
INSERT INTO `oc_city` VALUES ('596', '78', '兴安', '1', '0');
INSERT INTO `oc_city` VALUES ('597', '78', '东山', '1', '0');
INSERT INTO `oc_city` VALUES ('598', '78', '萝北', '1', '0');
INSERT INTO `oc_city` VALUES ('599', '78', '绥滨', '1', '0');
INSERT INTO `oc_city` VALUES ('600', '79', '尖山', '1', '0');
INSERT INTO `oc_city` VALUES ('601', '79', '岭东', '1', '0');
INSERT INTO `oc_city` VALUES ('602', '79', '四方台', '1', '0');
INSERT INTO `oc_city` VALUES ('603', '79', '宝山', '1', '0');
INSERT INTO `oc_city` VALUES ('604', '79', '集贤', '1', '0');
INSERT INTO `oc_city` VALUES ('605', '79', '友谊', '1', '0');
INSERT INTO `oc_city` VALUES ('606', '79', '宝清', '1', '0');
INSERT INTO `oc_city` VALUES ('607', '79', '饶河', '1', '0');
INSERT INTO `oc_city` VALUES ('608', '80', '鸡冠', '1', '0');
INSERT INTO `oc_city` VALUES ('609', '80', '恒山', '1', '0');
INSERT INTO `oc_city` VALUES ('610', '80', '滴道', '1', '0');
INSERT INTO `oc_city` VALUES ('611', '80', '梨树', '1', '0');
INSERT INTO `oc_city` VALUES ('612', '80', '城子河', '1', '0');
INSERT INTO `oc_city` VALUES ('613', '80', '麻山', '1', '0');
INSERT INTO `oc_city` VALUES ('614', '80', '虎林', '1', '0');
INSERT INTO `oc_city` VALUES ('615', '80', '密山', '1', '0');
INSERT INTO `oc_city` VALUES ('616', '80', '鸡东', '1', '0');
INSERT INTO `oc_city` VALUES ('617', '81', '萨尔图', '1', '0');
INSERT INTO `oc_city` VALUES ('618', '81', '龙凤', '1', '0');
INSERT INTO `oc_city` VALUES ('619', '81', '让胡路', '1', '0');
INSERT INTO `oc_city` VALUES ('620', '81', '大同', '1', '0');
INSERT INTO `oc_city` VALUES ('621', '81', '红岗', '1', '0');
INSERT INTO `oc_city` VALUES ('622', '81', '肇州', '1', '0');
INSERT INTO `oc_city` VALUES ('623', '81', '肇源', '1', '0');
INSERT INTO `oc_city` VALUES ('624', '81', '林甸', '1', '0');
INSERT INTO `oc_city` VALUES ('625', '81', '杜尔伯特', '1', '0');
INSERT INTO `oc_city` VALUES ('626', '82', '伊春', '1', '0');
INSERT INTO `oc_city` VALUES ('627', '82', '南岔', '1', '0');
INSERT INTO `oc_city` VALUES ('628', '82', '友好', '1', '0');
INSERT INTO `oc_city` VALUES ('629', '82', '西林', '1', '0');
INSERT INTO `oc_city` VALUES ('630', '82', '翠峦', '1', '0');
INSERT INTO `oc_city` VALUES ('631', '82', '新青', '1', '0');
INSERT INTO `oc_city` VALUES ('632', '82', '美溪', '1', '0');
INSERT INTO `oc_city` VALUES ('633', '82', '金山屯', '1', '0');
INSERT INTO `oc_city` VALUES ('634', '82', '五营', '1', '0');
INSERT INTO `oc_city` VALUES ('635', '82', '乌马河', '1', '0');
INSERT INTO `oc_city` VALUES ('636', '82', '汤旺河', '1', '0');
INSERT INTO `oc_city` VALUES ('637', '82', '带岭', '1', '0');
INSERT INTO `oc_city` VALUES ('638', '82', '乌伊岭', '1', '0');
INSERT INTO `oc_city` VALUES ('639', '82', '红星', '1', '0');
INSERT INTO `oc_city` VALUES ('640', '82', '上甘岭', '1', '0');
INSERT INTO `oc_city` VALUES ('641', '82', '铁力', '1', '0');
INSERT INTO `oc_city` VALUES ('642', '82', '嘉荫', '1', '0');
INSERT INTO `oc_city` VALUES ('643', '83', '爱民', '1', '0');
INSERT INTO `oc_city` VALUES ('644', '83', '东安', '1', '0');
INSERT INTO `oc_city` VALUES ('645', '83', '阳明', '1', '0');
INSERT INTO `oc_city` VALUES ('646', '83', '西安', '1', '0');
INSERT INTO `oc_city` VALUES ('647', '83', '穆棱', '1', '0');
INSERT INTO `oc_city` VALUES ('648', '83', '绥芬河', '1', '0');
INSERT INTO `oc_city` VALUES ('649', '83', '海林', '1', '0');
INSERT INTO `oc_city` VALUES ('650', '83', '宁安', '1', '0');
INSERT INTO `oc_city` VALUES ('651', '83', '东宁', '1', '0');
INSERT INTO `oc_city` VALUES ('652', '83', '林口', '1', '0');
INSERT INTO `oc_city` VALUES ('653', '84', '前进', '1', '0');
INSERT INTO `oc_city` VALUES ('654', '84', '永红', '1', '0');
INSERT INTO `oc_city` VALUES ('655', '84', '向阳', '1', '0');
INSERT INTO `oc_city` VALUES ('656', '84', '东风', '1', '0');
INSERT INTO `oc_city` VALUES ('657', '84', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('658', '84', '同江', '1', '0');
INSERT INTO `oc_city` VALUES ('659', '84', '富锦', '1', '0');
INSERT INTO `oc_city` VALUES ('660', '84', '桦南', '1', '0');
INSERT INTO `oc_city` VALUES ('661', '84', '桦川', '1', '0');
INSERT INTO `oc_city` VALUES ('662', '84', '汤原', '1', '0');
INSERT INTO `oc_city` VALUES ('663', '84', '抚远', '1', '0');
INSERT INTO `oc_city` VALUES ('664', '85', '桃山', '1', '0');
INSERT INTO `oc_city` VALUES ('665', '85', '新兴', '1', '0');
INSERT INTO `oc_city` VALUES ('666', '85', '茄子河', '1', '0');
INSERT INTO `oc_city` VALUES ('667', '85', '勃利', '1', '0');
INSERT INTO `oc_city` VALUES ('668', '86', '爱辉', '1', '0');
INSERT INTO `oc_city` VALUES ('669', '86', '北安', '1', '0');
INSERT INTO `oc_city` VALUES ('670', '86', '五大连池', '1', '0');
INSERT INTO `oc_city` VALUES ('671', '86', '嫩江', '1', '0');
INSERT INTO `oc_city` VALUES ('672', '86', '逊克', '1', '0');
INSERT INTO `oc_city` VALUES ('673', '86', '孙吴', '1', '0');
INSERT INTO `oc_city` VALUES ('674', '87', '北林', '1', '0');
INSERT INTO `oc_city` VALUES ('675', '87', '安达', '1', '0');
INSERT INTO `oc_city` VALUES ('676', '87', '肇东', '1', '0');
INSERT INTO `oc_city` VALUES ('677', '87', '海伦', '1', '0');
INSERT INTO `oc_city` VALUES ('678', '87', '望奎', '1', '0');
INSERT INTO `oc_city` VALUES ('679', '87', '兰西', '1', '0');
INSERT INTO `oc_city` VALUES ('680', '87', '青冈', '1', '0');
INSERT INTO `oc_city` VALUES ('681', '87', '庆安', '1', '0');
INSERT INTO `oc_city` VALUES ('682', '87', '明水', '1', '0');
INSERT INTO `oc_city` VALUES ('683', '87', '绥棱', '1', '0');
INSERT INTO `oc_city` VALUES ('684', '88', '呼玛', '1', '0');
INSERT INTO `oc_city` VALUES ('685', '88', '塔河', '1', '0');
INSERT INTO `oc_city` VALUES ('686', '88', '漠河', '1', '0');
INSERT INTO `oc_city` VALUES ('687', '89', '玄武', '1', '0');
INSERT INTO `oc_city` VALUES ('688', '89', '白下', '1', '0');
INSERT INTO `oc_city` VALUES ('689', '89', '秦淮', '1', '0');
INSERT INTO `oc_city` VALUES ('690', '89', '建邺', '1', '0');
INSERT INTO `oc_city` VALUES ('691', '89', '鼓楼', '1', '0');
INSERT INTO `oc_city` VALUES ('692', '89', '下关', '1', '0');
INSERT INTO `oc_city` VALUES ('693', '89', '浦口', '1', '0');
INSERT INTO `oc_city` VALUES ('694', '89', '六合', '1', '0');
INSERT INTO `oc_city` VALUES ('695', '89', '栖霞', '1', '0');
INSERT INTO `oc_city` VALUES ('696', '89', '雨花台', '1', '0');
INSERT INTO `oc_city` VALUES ('697', '89', '江宁', '1', '0');
INSERT INTO `oc_city` VALUES ('698', '89', '溧水', '1', '0');
INSERT INTO `oc_city` VALUES ('699', '89', '高淳', '1', '0');
INSERT INTO `oc_city` VALUES ('700', '90', '云龙', '1', '0');
INSERT INTO `oc_city` VALUES ('701', '90', '鼓楼', '1', '0');
INSERT INTO `oc_city` VALUES ('702', '90', '九里', '1', '0');
INSERT INTO `oc_city` VALUES ('703', '90', '贾汪', '1', '0');
INSERT INTO `oc_city` VALUES ('704', '90', '泉山', '1', '0');
INSERT INTO `oc_city` VALUES ('705', '90', '邳州', '1', '0');
INSERT INTO `oc_city` VALUES ('706', '90', '新沂', '1', '0');
INSERT INTO `oc_city` VALUES ('707', '90', '铜山', '1', '0');
INSERT INTO `oc_city` VALUES ('708', '90', '睢宁', '1', '0');
INSERT INTO `oc_city` VALUES ('709', '90', '沛县', '1', '0');
INSERT INTO `oc_city` VALUES ('710', '90', '丰县', '1', '0');
INSERT INTO `oc_city` VALUES ('711', '91', '新浦', '1', '0');
INSERT INTO `oc_city` VALUES ('712', '91', '连云', '1', '0');
INSERT INTO `oc_city` VALUES ('713', '91', '海州', '1', '0');
INSERT INTO `oc_city` VALUES ('714', '91', '赣榆', '1', '0');
INSERT INTO `oc_city` VALUES ('715', '91', '灌云', '1', '0');
INSERT INTO `oc_city` VALUES ('716', '91', '东海', '1', '0');
INSERT INTO `oc_city` VALUES ('717', '91', '灌南', '1', '0');
INSERT INTO `oc_city` VALUES ('718', '92', '清河', '1', '0');
INSERT INTO `oc_city` VALUES ('719', '92', '清浦', '1', '0');
INSERT INTO `oc_city` VALUES ('720', '92', '楚州', '1', '0');
INSERT INTO `oc_city` VALUES ('721', '92', '淮阴', '1', '0');
INSERT INTO `oc_city` VALUES ('722', '92', '金湖', '1', '0');
INSERT INTO `oc_city` VALUES ('723', '92', '盱眙', '1', '0');
INSERT INTO `oc_city` VALUES ('724', '92', '洪泽', '1', '0');
INSERT INTO `oc_city` VALUES ('725', '92', '涟水', '1', '0');
INSERT INTO `oc_city` VALUES ('726', '93', '宿城', '1', '0');
INSERT INTO `oc_city` VALUES ('727', '93', '宿豫', '1', '0');
INSERT INTO `oc_city` VALUES ('728', '93', '沭阳', '1', '0');
INSERT INTO `oc_city` VALUES ('729', '93', '泗阳', '1', '0');
INSERT INTO `oc_city` VALUES ('730', '93', '泗洪', '1', '0');
INSERT INTO `oc_city` VALUES ('731', '94', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('732', '94', '东台', '1', '0');
INSERT INTO `oc_city` VALUES ('733', '94', '大丰', '1', '0');
INSERT INTO `oc_city` VALUES ('734', '94', '盐都', '1', '0');
INSERT INTO `oc_city` VALUES ('735', '94', '射阳', '1', '0');
INSERT INTO `oc_city` VALUES ('736', '94', '阜宁', '1', '0');
INSERT INTO `oc_city` VALUES ('737', '94', '滨海', '1', '0');
INSERT INTO `oc_city` VALUES ('738', '94', '响水', '1', '0');
INSERT INTO `oc_city` VALUES ('739', '94', '建湖', '1', '0');
INSERT INTO `oc_city` VALUES ('740', '95', '广陵', '1', '0');
INSERT INTO `oc_city` VALUES ('741', '95', '维扬', '1', '0');
INSERT INTO `oc_city` VALUES ('742', '95', '邗江', '1', '0');
INSERT INTO `oc_city` VALUES ('743', '95', '仪征', '1', '0');
INSERT INTO `oc_city` VALUES ('744', '95', '江都', '1', '0');
INSERT INTO `oc_city` VALUES ('745', '95', '高邮', '1', '0');
INSERT INTO `oc_city` VALUES ('746', '95', '宝应', '1', '0');
INSERT INTO `oc_city` VALUES ('747', '96', '海陵', '1', '0');
INSERT INTO `oc_city` VALUES ('748', '96', '高港', '1', '0');
INSERT INTO `oc_city` VALUES ('749', '96', '靖江', '1', '0');
INSERT INTO `oc_city` VALUES ('750', '96', '泰兴', '1', '0');
INSERT INTO `oc_city` VALUES ('751', '96', '姜堰', '1', '0');
INSERT INTO `oc_city` VALUES ('752', '96', '兴化', '1', '0');
INSERT INTO `oc_city` VALUES ('753', '97', '崇川', '1', '0');
INSERT INTO `oc_city` VALUES ('754', '97', '港闸', '1', '0');
INSERT INTO `oc_city` VALUES ('755', '97', '海门', '1', '0');
INSERT INTO `oc_city` VALUES ('756', '97', '启东', '1', '0');
INSERT INTO `oc_city` VALUES ('757', '97', '通州', '1', '0');
INSERT INTO `oc_city` VALUES ('758', '97', '如皋', '1', '0');
INSERT INTO `oc_city` VALUES ('759', '97', '如东', '1', '0');
INSERT INTO `oc_city` VALUES ('760', '97', '海安', '1', '0');
INSERT INTO `oc_city` VALUES ('761', '98', '京口', '1', '0');
INSERT INTO `oc_city` VALUES ('762', '98', '润州', '1', '0');
INSERT INTO `oc_city` VALUES ('763', '98', '丹徒', '1', '0');
INSERT INTO `oc_city` VALUES ('764', '98', '丹阳', '1', '0');
INSERT INTO `oc_city` VALUES ('765', '98', '句容', '1', '0');
INSERT INTO `oc_city` VALUES ('766', '99', '钟楼', '1', '0');
INSERT INTO `oc_city` VALUES ('767', '99', '天宁', '1', '0');
INSERT INTO `oc_city` VALUES ('768', '99', '戚墅堰', '1', '0');
INSERT INTO `oc_city` VALUES ('769', '99', '新北', '1', '0');
INSERT INTO `oc_city` VALUES ('770', '99', '金坛', '1', '0');
INSERT INTO `oc_city` VALUES ('771', '99', '溧阳', '1', '0');
INSERT INTO `oc_city` VALUES ('772', '100', '崇安', '1', '0');
INSERT INTO `oc_city` VALUES ('773', '100', '南长', '1', '0');
INSERT INTO `oc_city` VALUES ('774', '100', '北塘', '1', '0');
INSERT INTO `oc_city` VALUES ('775', '100', '滨湖', '1', '0');
INSERT INTO `oc_city` VALUES ('776', '100', '惠山', '1', '0');
INSERT INTO `oc_city` VALUES ('777', '100', '锡山', '1', '0');
INSERT INTO `oc_city` VALUES ('778', '100', '江阴', '1', '0');
INSERT INTO `oc_city` VALUES ('779', '100', '宜兴', '1', '0');
INSERT INTO `oc_city` VALUES ('780', '101', '金阊', '1', '0');
INSERT INTO `oc_city` VALUES ('781', '101', '沧浪', '1', '0');
INSERT INTO `oc_city` VALUES ('782', '101', '平江', '1', '0');
INSERT INTO `oc_city` VALUES ('783', '101', '虎丘', '1', '0');
INSERT INTO `oc_city` VALUES ('784', '101', '吴中', '1', '0');
INSERT INTO `oc_city` VALUES ('785', '101', '相城', '1', '0');
INSERT INTO `oc_city` VALUES ('786', '101', '吴江', '1', '0');
INSERT INTO `oc_city` VALUES ('787', '101', '昆山', '1', '0');
INSERT INTO `oc_city` VALUES ('788', '101', '太仓', '1', '0');
INSERT INTO `oc_city` VALUES ('789', '101', '常熟', '1', '0');
INSERT INTO `oc_city` VALUES ('790', '101', '张家港', '1', '0');
INSERT INTO `oc_city` VALUES ('791', '102', '拱墅', '1', '0');
INSERT INTO `oc_city` VALUES ('792', '102', '上城', '1', '0');
INSERT INTO `oc_city` VALUES ('793', '102', '下城', '1', '0');
INSERT INTO `oc_city` VALUES ('794', '102', '江干', '1', '0');
INSERT INTO `oc_city` VALUES ('795', '102', '西湖', '1', '0');
INSERT INTO `oc_city` VALUES ('796', '102', '滨江', '1', '0');
INSERT INTO `oc_city` VALUES ('797', '102', '余杭', '1', '0');
INSERT INTO `oc_city` VALUES ('798', '102', '萧山', '1', '0');
INSERT INTO `oc_city` VALUES ('799', '102', '临安', '1', '0');
INSERT INTO `oc_city` VALUES ('800', '102', '富阳', '1', '0');
INSERT INTO `oc_city` VALUES ('801', '102', '建德', '1', '0');
INSERT INTO `oc_city` VALUES ('802', '102', '桐庐', '1', '0');
INSERT INTO `oc_city` VALUES ('803', '102', '淳安', '1', '0');
INSERT INTO `oc_city` VALUES ('804', '103', '海曙', '1', '0');
INSERT INTO `oc_city` VALUES ('805', '103', '江东', '1', '0');
INSERT INTO `oc_city` VALUES ('806', '103', '江北', '1', '0');
INSERT INTO `oc_city` VALUES ('807', '103', '镇海', '1', '0');
INSERT INTO `oc_city` VALUES ('808', '103', '北仑', '1', '0');
INSERT INTO `oc_city` VALUES ('809', '103', '鄞州', '1', '0');
INSERT INTO `oc_city` VALUES ('810', '103', '余姚', '1', '0');
INSERT INTO `oc_city` VALUES ('811', '103', '慈溪', '1', '0');
INSERT INTO `oc_city` VALUES ('812', '103', '奉化', '1', '0');
INSERT INTO `oc_city` VALUES ('813', '103', '宁海', '1', '0');
INSERT INTO `oc_city` VALUES ('814', '103', '象山', '1', '0');
INSERT INTO `oc_city` VALUES ('815', '104', '鹿城', '1', '0');
INSERT INTO `oc_city` VALUES ('816', '104', '龙湾', '1', '0');
INSERT INTO `oc_city` VALUES ('817', '104', '瓯海', '1', '0');
INSERT INTO `oc_city` VALUES ('818', '104', '瑞安', '1', '0');
INSERT INTO `oc_city` VALUES ('819', '104', '乐清', '1', '0');
INSERT INTO `oc_city` VALUES ('820', '104', '永嘉', '1', '0');
INSERT INTO `oc_city` VALUES ('821', '104', '文成', '1', '0');
INSERT INTO `oc_city` VALUES ('822', '104', '平阳', '1', '0');
INSERT INTO `oc_city` VALUES ('823', '104', '泰顺', '1', '0');
INSERT INTO `oc_city` VALUES ('824', '104', '洞头', '1', '0');
INSERT INTO `oc_city` VALUES ('825', '104', '苍南', '1', '0');
INSERT INTO `oc_city` VALUES ('826', '105', '秀城', '1', '0');
INSERT INTO `oc_city` VALUES ('827', '105', '秀洲', '1', '0');
INSERT INTO `oc_city` VALUES ('828', '105', '海宁', '1', '0');
INSERT INTO `oc_city` VALUES ('829', '105', '平湖', '1', '0');
INSERT INTO `oc_city` VALUES ('830', '105', '桐乡', '1', '0');
INSERT INTO `oc_city` VALUES ('831', '105', '嘉善', '1', '0');
INSERT INTO `oc_city` VALUES ('832', '105', '海盐', '1', '0');
INSERT INTO `oc_city` VALUES ('833', '106', '长兴', '1', '0');
INSERT INTO `oc_city` VALUES ('834', '106', '德清', '1', '0');
INSERT INTO `oc_city` VALUES ('835', '106', '安吉', '1', '0');
INSERT INTO `oc_city` VALUES ('836', '107', '越城', '1', '0');
INSERT INTO `oc_city` VALUES ('837', '107', '诸暨', '1', '0');
INSERT INTO `oc_city` VALUES ('838', '107', '上虞', '1', '0');
INSERT INTO `oc_city` VALUES ('839', '107', '嵊州', '1', '0');
INSERT INTO `oc_city` VALUES ('840', '107', '绍兴', '1', '0');
INSERT INTO `oc_city` VALUES ('841', '107', '新昌', '1', '0');
INSERT INTO `oc_city` VALUES ('842', '108', '婺城', '1', '0');
INSERT INTO `oc_city` VALUES ('843', '108', '金东', '1', '0');
INSERT INTO `oc_city` VALUES ('844', '108', '兰溪', '1', '0');
INSERT INTO `oc_city` VALUES ('845', '108', '永康', '1', '0');
INSERT INTO `oc_city` VALUES ('846', '108', '义乌', '1', '0');
INSERT INTO `oc_city` VALUES ('847', '108', '东阳', '1', '0');
INSERT INTO `oc_city` VALUES ('848', '108', '武义', '1', '0');
INSERT INTO `oc_city` VALUES ('849', '108', '浦江', '1', '0');
INSERT INTO `oc_city` VALUES ('850', '108', '磐安', '1', '0');
INSERT INTO `oc_city` VALUES ('851', '109', '柯城', '1', '0');
INSERT INTO `oc_city` VALUES ('852', '109', '衢江', '1', '0');
INSERT INTO `oc_city` VALUES ('853', '109', '江山', '1', '0');
INSERT INTO `oc_city` VALUES ('854', '109', '常山', '1', '0');
INSERT INTO `oc_city` VALUES ('855', '109', '开化', '1', '0');
INSERT INTO `oc_city` VALUES ('856', '109', '龙游', '1', '0');
INSERT INTO `oc_city` VALUES ('857', '110', '定海', '1', '0');
INSERT INTO `oc_city` VALUES ('858', '110', '普陀', '1', '0');
INSERT INTO `oc_city` VALUES ('859', '110', '岱山', '1', '0');
INSERT INTO `oc_city` VALUES ('860', '110', '嵊泗', '1', '0');
INSERT INTO `oc_city` VALUES ('861', '111', '椒江', '1', '0');
INSERT INTO `oc_city` VALUES ('862', '111', '黄岩', '1', '0');
INSERT INTO `oc_city` VALUES ('863', '111', '路桥', '1', '0');
INSERT INTO `oc_city` VALUES ('864', '111', '临海', '1', '0');
INSERT INTO `oc_city` VALUES ('865', '111', '温岭', '1', '0');
INSERT INTO `oc_city` VALUES ('866', '111', '三门', '1', '0');
INSERT INTO `oc_city` VALUES ('867', '111', '天台', '1', '0');
INSERT INTO `oc_city` VALUES ('868', '111', '仙居', '1', '0');
INSERT INTO `oc_city` VALUES ('869', '111', '玉环', '1', '0');
INSERT INTO `oc_city` VALUES ('870', '112', '莲都', '1', '0');
INSERT INTO `oc_city` VALUES ('871', '112', '龙泉', '1', '0');
INSERT INTO `oc_city` VALUES ('872', '112', '缙云', '1', '0');
INSERT INTO `oc_city` VALUES ('873', '112', '青田', '1', '0');
INSERT INTO `oc_city` VALUES ('874', '112', '云和', '1', '0');
INSERT INTO `oc_city` VALUES ('875', '112', '遂昌', '1', '0');
INSERT INTO `oc_city` VALUES ('876', '112', '松阳', '1', '0');
INSERT INTO `oc_city` VALUES ('877', '112', '庆元', '1', '0');
INSERT INTO `oc_city` VALUES ('878', '112', '景宁', '1', '0');
INSERT INTO `oc_city` VALUES ('879', '113', '瑶海', '1', '0');
INSERT INTO `oc_city` VALUES ('880', '113', '庐阳', '1', '0');
INSERT INTO `oc_city` VALUES ('881', '113', '蜀山', '1', '0');
INSERT INTO `oc_city` VALUES ('882', '113', '包河', '1', '0');
INSERT INTO `oc_city` VALUES ('883', '113', '长丰', '1', '0');
INSERT INTO `oc_city` VALUES ('884', '113', '肥东', '1', '0');
INSERT INTO `oc_city` VALUES ('885', '113', '肥西', '1', '0');
INSERT INTO `oc_city` VALUES ('886', '114', '镜湖', '1', '0');
INSERT INTO `oc_city` VALUES ('887', '114', '马塘', '1', '0');
INSERT INTO `oc_city` VALUES ('888', '114', '新芜', '1', '0');
INSERT INTO `oc_city` VALUES ('889', '114', '鸠江', '1', '0');
INSERT INTO `oc_city` VALUES ('890', '114', '芜湖', '1', '0');
INSERT INTO `oc_city` VALUES ('891', '114', '繁昌', '1', '0');
INSERT INTO `oc_city` VALUES ('892', '114', '南陵', '1', '0');
INSERT INTO `oc_city` VALUES ('893', '115', '中市', '1', '0');
INSERT INTO `oc_city` VALUES ('894', '115', '东市', '1', '0');
INSERT INTO `oc_city` VALUES ('895', '115', '西市', '1', '0');
INSERT INTO `oc_city` VALUES ('896', '115', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('897', '115', '怀远', '1', '0');
INSERT INTO `oc_city` VALUES ('898', '115', '五河', '1', '0');
INSERT INTO `oc_city` VALUES ('899', '115', '固镇', '1', '0');
INSERT INTO `oc_city` VALUES ('900', '116', '田家庵', '1', '0');
INSERT INTO `oc_city` VALUES ('901', '116', '大通', '1', '0');
INSERT INTO `oc_city` VALUES ('902', '116', '谢家集', '1', '0');
INSERT INTO `oc_city` VALUES ('903', '116', '八公山', '1', '0');
INSERT INTO `oc_city` VALUES ('904', '116', '潘集', '1', '0');
INSERT INTO `oc_city` VALUES ('905', '116', '凤台', '1', '0');
INSERT INTO `oc_city` VALUES ('906', '117', '雨山', '1', '0');
INSERT INTO `oc_city` VALUES ('907', '117', '花山', '1', '0');
INSERT INTO `oc_city` VALUES ('908', '117', '金家庄', '1', '0');
INSERT INTO `oc_city` VALUES ('909', '117', '当涂', '1', '0');
INSERT INTO `oc_city` VALUES ('910', '118', '相山', '1', '0');
INSERT INTO `oc_city` VALUES ('911', '118', '杜集', '1', '0');
INSERT INTO `oc_city` VALUES ('912', '118', '烈山', '1', '0');
INSERT INTO `oc_city` VALUES ('913', '118', '濉溪', '1', '0');
INSERT INTO `oc_city` VALUES ('914', '119', '铜官山', '1', '0');
INSERT INTO `oc_city` VALUES ('915', '119', '狮子山', '1', '0');
INSERT INTO `oc_city` VALUES ('916', '119', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('917', '119', '铜陵', '1', '0');
INSERT INTO `oc_city` VALUES ('918', '120', '迎江', '1', '0');
INSERT INTO `oc_city` VALUES ('919', '120', '大观', '1', '0');
INSERT INTO `oc_city` VALUES ('920', '120', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('921', '120', '桐城', '1', '0');
INSERT INTO `oc_city` VALUES ('922', '120', '怀宁', '1', '0');
INSERT INTO `oc_city` VALUES ('923', '120', '枞阳', '1', '0');
INSERT INTO `oc_city` VALUES ('924', '120', '潜山', '1', '0');
INSERT INTO `oc_city` VALUES ('925', '120', '太湖', '1', '0');
INSERT INTO `oc_city` VALUES ('926', '120', '宿松', '1', '0');
INSERT INTO `oc_city` VALUES ('927', '120', '望江', '1', '0');
INSERT INTO `oc_city` VALUES ('928', '120', '岳西', '1', '0');
INSERT INTO `oc_city` VALUES ('929', '121', '屯溪', '1', '0');
INSERT INTO `oc_city` VALUES ('930', '121', '黄山', '1', '0');
INSERT INTO `oc_city` VALUES ('931', '121', '徽州', '1', '0');
INSERT INTO `oc_city` VALUES ('932', '121', '歙县', '1', '0');
INSERT INTO `oc_city` VALUES ('933', '121', '休宁', '1', '0');
INSERT INTO `oc_city` VALUES ('934', '121', '黟县', '1', '0');
INSERT INTO `oc_city` VALUES ('935', '121', '祁门', '1', '0');
INSERT INTO `oc_city` VALUES ('936', '122', '琅琊', '1', '0');
INSERT INTO `oc_city` VALUES ('937', '122', '南谯', '1', '0');
INSERT INTO `oc_city` VALUES ('938', '122', '明光', '1', '0');
INSERT INTO `oc_city` VALUES ('939', '122', '天长', '1', '0');
INSERT INTO `oc_city` VALUES ('940', '122', '来安', '1', '0');
INSERT INTO `oc_city` VALUES ('941', '122', '全椒', '1', '0');
INSERT INTO `oc_city` VALUES ('942', '122', '定远', '1', '0');
INSERT INTO `oc_city` VALUES ('943', '122', '凤阳', '1', '0');
INSERT INTO `oc_city` VALUES ('944', '123', '颖州', '1', '0');
INSERT INTO `oc_city` VALUES ('945', '123', '颖东', '1', '0');
INSERT INTO `oc_city` VALUES ('946', '123', '颖泉', '1', '0');
INSERT INTO `oc_city` VALUES ('947', '123', '界首', '1', '0');
INSERT INTO `oc_city` VALUES ('948', '123', '临泉', '1', '0');
INSERT INTO `oc_city` VALUES ('949', '123', '太和', '1', '0');
INSERT INTO `oc_city` VALUES ('950', '123', '阜南', '1', '0');
INSERT INTO `oc_city` VALUES ('951', '123', '颖上', '1', '0');
INSERT INTO `oc_city` VALUES ('952', '124', '埇桥', '1', '0');
INSERT INTO `oc_city` VALUES ('953', '124', '砀山', '1', '0');
INSERT INTO `oc_city` VALUES ('954', '124', '萧县', '1', '0');
INSERT INTO `oc_city` VALUES ('955', '124', '灵璧', '1', '0');
INSERT INTO `oc_city` VALUES ('956', '124', '泗县', '1', '0');
INSERT INTO `oc_city` VALUES ('957', '125', '居巢', '1', '0');
INSERT INTO `oc_city` VALUES ('958', '125', '庐江', '1', '0');
INSERT INTO `oc_city` VALUES ('959', '125', '无为', '1', '0');
INSERT INTO `oc_city` VALUES ('960', '125', '含山', '1', '0');
INSERT INTO `oc_city` VALUES ('961', '125', '和县', '1', '0');
INSERT INTO `oc_city` VALUES ('962', '126', '金安', '1', '0');
INSERT INTO `oc_city` VALUES ('963', '126', '裕安', '1', '0');
INSERT INTO `oc_city` VALUES ('964', '126', '寿县', '1', '0');
INSERT INTO `oc_city` VALUES ('965', '126', '霍邱', '1', '0');
INSERT INTO `oc_city` VALUES ('966', '126', '舒城', '1', '0');
INSERT INTO `oc_city` VALUES ('967', '126', '金寨', '1', '0');
INSERT INTO `oc_city` VALUES ('968', '126', '霍山', '1', '0');
INSERT INTO `oc_city` VALUES ('969', '127', '谯城', '1', '0');
INSERT INTO `oc_city` VALUES ('970', '127', '涡阳', '1', '0');
INSERT INTO `oc_city` VALUES ('971', '127', '蒙城', '1', '0');
INSERT INTO `oc_city` VALUES ('972', '127', '利辛', '1', '0');
INSERT INTO `oc_city` VALUES ('973', '128', '贵池', '1', '0');
INSERT INTO `oc_city` VALUES ('974', '128', '东至', '1', '0');
INSERT INTO `oc_city` VALUES ('975', '128', '石台', '1', '0');
INSERT INTO `oc_city` VALUES ('976', '128', '青阳', '1', '0');
INSERT INTO `oc_city` VALUES ('977', '129', '宣州', '1', '0');
INSERT INTO `oc_city` VALUES ('978', '129', '宁国', '1', '0');
INSERT INTO `oc_city` VALUES ('979', '129', '郎溪', '1', '0');
INSERT INTO `oc_city` VALUES ('980', '129', '广德', '1', '0');
INSERT INTO `oc_city` VALUES ('981', '129', '泾县', '1', '0');
INSERT INTO `oc_city` VALUES ('982', '129', '旌德', '1', '0');
INSERT INTO `oc_city` VALUES ('983', '129', '绩溪', '1', '0');
INSERT INTO `oc_city` VALUES ('984', '130', '台江', '1', '0');
INSERT INTO `oc_city` VALUES ('985', '130', '仓山', '1', '0');
INSERT INTO `oc_city` VALUES ('986', '130', '马尾', '1', '0');
INSERT INTO `oc_city` VALUES ('987', '130', '晋安', '1', '0');
INSERT INTO `oc_city` VALUES ('988', '130', '福清', '1', '0');
INSERT INTO `oc_city` VALUES ('989', '130', '长乐', '1', '0');
INSERT INTO `oc_city` VALUES ('990', '130', '闽侯', '1', '0');
INSERT INTO `oc_city` VALUES ('991', '130', '连江', '1', '0');
INSERT INTO `oc_city` VALUES ('992', '130', '罗源', '1', '0');
INSERT INTO `oc_city` VALUES ('993', '130', '闽清', '1', '0');
INSERT INTO `oc_city` VALUES ('994', '130', '永泰', '1', '0');
INSERT INTO `oc_city` VALUES ('995', '130', '平潭', '1', '0');
INSERT INTO `oc_city` VALUES ('996', '131', '鼓浪屿', '1', '0');
INSERT INTO `oc_city` VALUES ('997', '131', '思明', '1', '0');
INSERT INTO `oc_city` VALUES ('998', '131', '杏林', '1', '0');
INSERT INTO `oc_city` VALUES ('999', '131', '湖里', '1', '0');
INSERT INTO `oc_city` VALUES ('1000', '131', '集美', '1', '0');
INSERT INTO `oc_city` VALUES ('1001', '131', '同安', '1', '0');
INSERT INTO `oc_city` VALUES ('1002', '132', '三元', '1', '0');
INSERT INTO `oc_city` VALUES ('1003', '132', '永安', '1', '0');
INSERT INTO `oc_city` VALUES ('1004', '132', '明溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1005', '132', '清流', '1', '0');
INSERT INTO `oc_city` VALUES ('1006', '132', '宁化', '1', '0');
INSERT INTO `oc_city` VALUES ('1007', '132', '大田', '1', '0');
INSERT INTO `oc_city` VALUES ('1008', '132', '尤溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1009', '132', '沙县', '1', '0');
INSERT INTO `oc_city` VALUES ('1010', '132', '将乐', '1', '0');
INSERT INTO `oc_city` VALUES ('1011', '132', '泰宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1012', '132', '建宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1013', '133', '涵江', '1', '0');
INSERT INTO `oc_city` VALUES ('1014', '133', '荔城', '1', '0');
INSERT INTO `oc_city` VALUES ('1015', '134', '丰泽', '1', '0');
INSERT INTO `oc_city` VALUES ('1016', '134', '洛江', '1', '0');
INSERT INTO `oc_city` VALUES ('1017', '134', '泉港', '1', '0');
INSERT INTO `oc_city` VALUES ('1018', '134', '石狮', '1', '0');
INSERT INTO `oc_city` VALUES ('1019', '134', '晋江', '1', '0');
INSERT INTO `oc_city` VALUES ('1020', '134', '南安', '1', '0');
INSERT INTO `oc_city` VALUES ('1021', '134', '惠安', '1', '0');
INSERT INTO `oc_city` VALUES ('1022', '134', '安溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1023', '134', '永春', '1', '0');
INSERT INTO `oc_city` VALUES ('1024', '134', '德化', '1', '0');
INSERT INTO `oc_city` VALUES ('1025', '135', '龙文', '1', '0');
INSERT INTO `oc_city` VALUES ('1026', '135', '龙海', '1', '0');
INSERT INTO `oc_city` VALUES ('1027', '135', '云霄', '1', '0');
INSERT INTO `oc_city` VALUES ('1028', '135', '漳浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1029', '135', '诏安', '1', '0');
INSERT INTO `oc_city` VALUES ('1030', '135', '长泰', '1', '0');
INSERT INTO `oc_city` VALUES ('1031', '135', '东山', '1', '0');
INSERT INTO `oc_city` VALUES ('1032', '135', '南靖', '1', '0');
INSERT INTO `oc_city` VALUES ('1033', '135', '平和', '1', '0');
INSERT INTO `oc_city` VALUES ('1034', '135', '华安', '1', '0');
INSERT INTO `oc_city` VALUES ('1035', '136', '邵武', '1', '0');
INSERT INTO `oc_city` VALUES ('1036', '136', '武夷山', '1', '0');
INSERT INTO `oc_city` VALUES ('1037', '136', '建瓯', '1', '0');
INSERT INTO `oc_city` VALUES ('1038', '136', '建阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1039', '136', '顺昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1040', '136', '浦城', '1', '0');
INSERT INTO `oc_city` VALUES ('1041', '136', '光泽', '1', '0');
INSERT INTO `oc_city` VALUES ('1042', '136', '松溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1043', '136', '政和', '1', '0');
INSERT INTO `oc_city` VALUES ('1044', '137', '漳平', '1', '0');
INSERT INTO `oc_city` VALUES ('1045', '137', '长汀', '1', '0');
INSERT INTO `oc_city` VALUES ('1046', '137', '永定', '1', '0');
INSERT INTO `oc_city` VALUES ('1047', '137', '上杭', '1', '0');
INSERT INTO `oc_city` VALUES ('1048', '137', '武平', '1', '0');
INSERT INTO `oc_city` VALUES ('1049', '137', '连城', '1', '0');
INSERT INTO `oc_city` VALUES ('1050', '138', '福安', '1', '0');
INSERT INTO `oc_city` VALUES ('1051', '138', '福鼎', '1', '0');
INSERT INTO `oc_city` VALUES ('1052', '138', '寿宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1053', '138', '霞浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1054', '138', '柘荣', '1', '0');
INSERT INTO `oc_city` VALUES ('1055', '138', '屏南', '1', '0');
INSERT INTO `oc_city` VALUES ('1056', '138', '古田', '1', '0');
INSERT INTO `oc_city` VALUES ('1057', '138', '周宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1058', '139', '西湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1059', '139', '青云谱', '1', '0');
INSERT INTO `oc_city` VALUES ('1060', '139', '湾里', '1', '0');
INSERT INTO `oc_city` VALUES ('1061', '139', '青山湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1062', '139', '南昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1063', '139', '新建', '1', '0');
INSERT INTO `oc_city` VALUES ('1064', '139', '安义', '1', '0');
INSERT INTO `oc_city` VALUES ('1065', '139', '进贤', '1', '0');
INSERT INTO `oc_city` VALUES ('1066', '140', '昌江', '1', '0');
INSERT INTO `oc_city` VALUES ('1067', '140', '乐平', '1', '0');
INSERT INTO `oc_city` VALUES ('1068', '140', '浮梁', '1', '0');
INSERT INTO `oc_city` VALUES ('1069', '141', '湘东', '1', '0');
INSERT INTO `oc_city` VALUES ('1070', '141', '莲花', '1', '0');
INSERT INTO `oc_city` VALUES ('1071', '141', '上栗', '1', '0');
INSERT INTO `oc_city` VALUES ('1072', '141', '芦溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1073', '142', '庐山', '1', '0');
INSERT INTO `oc_city` VALUES ('1074', '142', '瑞昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1075', '142', '九江', '1', '0');
INSERT INTO `oc_city` VALUES ('1076', '142', '武宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1077', '142', '修水', '1', '0');
INSERT INTO `oc_city` VALUES ('1078', '142', '永修', '1', '0');
INSERT INTO `oc_city` VALUES ('1079', '142', '德安', '1', '0');
INSERT INTO `oc_city` VALUES ('1080', '142', '星子', '1', '0');
INSERT INTO `oc_city` VALUES ('1081', '142', '都昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1082', '142', '湖口', '1', '0');
INSERT INTO `oc_city` VALUES ('1083', '142', '彭泽', '1', '0');
INSERT INTO `oc_city` VALUES ('1084', '143', '分宜', '1', '0');
INSERT INTO `oc_city` VALUES ('1085', '144', '贵溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1086', '144', '余江', '1', '0');
INSERT INTO `oc_city` VALUES ('1087', '145', '瑞金', '1', '0');
INSERT INTO `oc_city` VALUES ('1088', '145', '南康', '1', '0');
INSERT INTO `oc_city` VALUES ('1089', '145', '赣县', '1', '0');
INSERT INTO `oc_city` VALUES ('1090', '145', '信丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1091', '145', '大余', '1', '0');
INSERT INTO `oc_city` VALUES ('1092', '145', '上犹', '1', '0');
INSERT INTO `oc_city` VALUES ('1093', '145', '崇义', '1', '0');
INSERT INTO `oc_city` VALUES ('1094', '145', '安远', '1', '0');
INSERT INTO `oc_city` VALUES ('1095', '145', '龙南', '1', '0');
INSERT INTO `oc_city` VALUES ('1096', '145', '定南', '1', '0');
INSERT INTO `oc_city` VALUES ('1097', '145', '全南', '1', '0');
INSERT INTO `oc_city` VALUES ('1098', '145', '宁都', '1', '0');
INSERT INTO `oc_city` VALUES ('1099', '145', '于都', '1', '0');
INSERT INTO `oc_city` VALUES ('1100', '145', '兴国', '1', '0');
INSERT INTO `oc_city` VALUES ('1101', '145', '会昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1102', '145', '寻乌', '1', '0');
INSERT INTO `oc_city` VALUES ('1103', '145', '石城', '1', '0');
INSERT INTO `oc_city` VALUES ('1104', '146', '青原', '1', '0');
INSERT INTO `oc_city` VALUES ('1105', '146', '井冈山', '1', '0');
INSERT INTO `oc_city` VALUES ('1106', '146', '吉安', '1', '0');
INSERT INTO `oc_city` VALUES ('1107', '146', '吉水', '1', '0');
INSERT INTO `oc_city` VALUES ('1108', '146', '峡江', '1', '0');
INSERT INTO `oc_city` VALUES ('1109', '146', '新干', '1', '0');
INSERT INTO `oc_city` VALUES ('1110', '146', '永丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1111', '146', '泰和', '1', '0');
INSERT INTO `oc_city` VALUES ('1112', '146', '遂川', '1', '0');
INSERT INTO `oc_city` VALUES ('1113', '146', '万安', '1', '0');
INSERT INTO `oc_city` VALUES ('1114', '146', '安福', '1', '0');
INSERT INTO `oc_city` VALUES ('1115', '146', '永新', '1', '0');
INSERT INTO `oc_city` VALUES ('1116', '147', '丰城', '1', '0');
INSERT INTO `oc_city` VALUES ('1117', '147', '樟树', '1', '0');
INSERT INTO `oc_city` VALUES ('1118', '147', '高安', '1', '0');
INSERT INTO `oc_city` VALUES ('1119', '147', '奉新', '1', '0');
INSERT INTO `oc_city` VALUES ('1120', '147', '万载', '1', '0');
INSERT INTO `oc_city` VALUES ('1121', '147', '上高', '1', '0');
INSERT INTO `oc_city` VALUES ('1122', '147', '宜丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1123', '147', '靖安', '1', '0');
INSERT INTO `oc_city` VALUES ('1124', '147', '铜鼓', '1', '0');
INSERT INTO `oc_city` VALUES ('1125', '148', '南城', '1', '0');
INSERT INTO `oc_city` VALUES ('1126', '148', '黎川', '1', '0');
INSERT INTO `oc_city` VALUES ('1127', '148', '南丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1128', '148', '崇仁', '1', '0');
INSERT INTO `oc_city` VALUES ('1129', '148', '乐安', '1', '0');
INSERT INTO `oc_city` VALUES ('1130', '148', '宜黄', '1', '0');
INSERT INTO `oc_city` VALUES ('1131', '148', '金溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1132', '148', '资溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1133', '148', '东乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1134', '148', '广昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1135', '149', '德兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1136', '149', '上饶', '1', '0');
INSERT INTO `oc_city` VALUES ('1137', '149', '广丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1138', '149', '玉山', '1', '0');
INSERT INTO `oc_city` VALUES ('1139', '149', '铅山', '1', '0');
INSERT INTO `oc_city` VALUES ('1140', '149', '横峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1141', '149', '弋阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1142', '149', '余干', '1', '0');
INSERT INTO `oc_city` VALUES ('1143', '149', '波阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1144', '149', '万年', '1', '0');
INSERT INTO `oc_city` VALUES ('1145', '149', '婺源', '1', '0');
INSERT INTO `oc_city` VALUES ('1146', '150', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1147', '150', '历下', '1', '0');
INSERT INTO `oc_city` VALUES ('1148', '150', '槐荫', '1', '0');
INSERT INTO `oc_city` VALUES ('1149', '150', '天桥', '1', '0');
INSERT INTO `oc_city` VALUES ('1150', '150', '历城', '1', '0');
INSERT INTO `oc_city` VALUES ('1151', '150', '长清', '1', '0');
INSERT INTO `oc_city` VALUES ('1152', '150', '章丘', '1', '0');
INSERT INTO `oc_city` VALUES ('1153', '150', '平阴', '1', '0');
INSERT INTO `oc_city` VALUES ('1154', '150', '济阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1155', '150', '商河', '1', '0');
INSERT INTO `oc_city` VALUES ('1156', '151', '市南', '1', '0');
INSERT INTO `oc_city` VALUES ('1157', '151', '市北', '1', '0');
INSERT INTO `oc_city` VALUES ('1158', '151', '四方', '1', '0');
INSERT INTO `oc_city` VALUES ('1159', '151', '黄岛', '1', '0');
INSERT INTO `oc_city` VALUES ('1160', '151', '崂山', '1', '0');
INSERT INTO `oc_city` VALUES ('1161', '151', '城阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1162', '151', '李沧', '1', '0');
INSERT INTO `oc_city` VALUES ('1163', '151', '胶州', '1', '0');
INSERT INTO `oc_city` VALUES ('1164', '151', '即墨', '1', '0');
INSERT INTO `oc_city` VALUES ('1165', '151', '平度', '1', '0');
INSERT INTO `oc_city` VALUES ('1166', '151', '胶南', '1', '0');
INSERT INTO `oc_city` VALUES ('1167', '151', '莱西', '1', '0');
INSERT INTO `oc_city` VALUES ('1168', '152', '张店', '1', '0');
INSERT INTO `oc_city` VALUES ('1169', '152', '淄川', '1', '0');
INSERT INTO `oc_city` VALUES ('1170', '152', '博山', '1', '0');
INSERT INTO `oc_city` VALUES ('1171', '152', '临淄', '1', '0');
INSERT INTO `oc_city` VALUES ('1172', '152', '周村', '1', '0');
INSERT INTO `oc_city` VALUES ('1173', '152', '桓台', '1', '0');
INSERT INTO `oc_city` VALUES ('1174', '152', '高青', '1', '0');
INSERT INTO `oc_city` VALUES ('1175', '152', '沂源', '1', '0');
INSERT INTO `oc_city` VALUES ('1176', '153', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1177', '153', '薛城', '1', '0');
INSERT INTO `oc_city` VALUES ('1178', '153', '峄城', '1', '0');
INSERT INTO `oc_city` VALUES ('1179', '153', '台儿庄', '1', '0');
INSERT INTO `oc_city` VALUES ('1180', '153', '山亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1181', '153', '滕州', '1', '0');
INSERT INTO `oc_city` VALUES ('1182', '154', '东营', '1', '0');
INSERT INTO `oc_city` VALUES ('1183', '154', '河口', '1', '0');
INSERT INTO `oc_city` VALUES ('1184', '154', '垦利', '1', '0');
INSERT INTO `oc_city` VALUES ('1185', '154', '利津', '1', '0');
INSERT INTO `oc_city` VALUES ('1186', '154', '广饶', '1', '0');
INSERT INTO `oc_city` VALUES ('1187', '155', '潍城', '1', '0');
INSERT INTO `oc_city` VALUES ('1188', '155', '寒亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1189', '155', '坊子', '1', '0');
INSERT INTO `oc_city` VALUES ('1190', '155', '奎文', '1', '0');
INSERT INTO `oc_city` VALUES ('1191', '155', '安丘', '1', '0');
INSERT INTO `oc_city` VALUES ('1192', '155', '昌邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1193', '155', '高密', '1', '0');
INSERT INTO `oc_city` VALUES ('1194', '155', '青州', '1', '0');
INSERT INTO `oc_city` VALUES ('1195', '155', '诸城', '1', '0');
INSERT INTO `oc_city` VALUES ('1196', '155', '寿光', '1', '0');
INSERT INTO `oc_city` VALUES ('1197', '155', '临朐', '1', '0');
INSERT INTO `oc_city` VALUES ('1198', '155', '昌乐', '1', '0');
INSERT INTO `oc_city` VALUES ('1199', '156', '芝罘', '1', '0');
INSERT INTO `oc_city` VALUES ('1200', '156', '福山', '1', '0');
INSERT INTO `oc_city` VALUES ('1201', '156', '莱山', '1', '0');
INSERT INTO `oc_city` VALUES ('1202', '156', '牟平', '1', '0');
INSERT INTO `oc_city` VALUES ('1203', '156', '栖霞', '1', '0');
INSERT INTO `oc_city` VALUES ('1204', '156', '海阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1205', '156', '龙口', '1', '0');
INSERT INTO `oc_city` VALUES ('1206', '156', '莱阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1207', '156', '莱州', '1', '0');
INSERT INTO `oc_city` VALUES ('1208', '156', '蓬莱', '1', '0');
INSERT INTO `oc_city` VALUES ('1209', '156', '招远', '1', '0');
INSERT INTO `oc_city` VALUES ('1210', '156', '长岛', '1', '0');
INSERT INTO `oc_city` VALUES ('1211', '157', '环翠', '1', '0');
INSERT INTO `oc_city` VALUES ('1212', '157', '荣成', '1', '0');
INSERT INTO `oc_city` VALUES ('1213', '157', '乳山', '1', '0');
INSERT INTO `oc_city` VALUES ('1214', '157', '文登', '1', '0');
INSERT INTO `oc_city` VALUES ('1215', '159', '泰山', '1', '0');
INSERT INTO `oc_city` VALUES ('1216', '159', '岱岳', '1', '0');
INSERT INTO `oc_city` VALUES ('1217', '159', '新泰', '1', '0');
INSERT INTO `oc_city` VALUES ('1218', '159', '肥城', '1', '0');
INSERT INTO `oc_city` VALUES ('1219', '159', '宁阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1220', '159', '东平', '1', '0');
INSERT INTO `oc_city` VALUES ('1221', '160', '东港', '1', '0');
INSERT INTO `oc_city` VALUES ('1222', '160', '五莲', '1', '0');
INSERT INTO `oc_city` VALUES ('1223', '160', '莒县', '1', '0');
INSERT INTO `oc_city` VALUES ('1224', '161', '莱城', '1', '0');
INSERT INTO `oc_city` VALUES ('1225', '161', '钢城', '1', '0');
INSERT INTO `oc_city` VALUES ('1226', '162', '兰山', '1', '0');
INSERT INTO `oc_city` VALUES ('1227', '162', '罗庄', '1', '0');
INSERT INTO `oc_city` VALUES ('1228', '162', '河东', '1', '0');
INSERT INTO `oc_city` VALUES ('1229', '162', '郯城', '1', '0');
INSERT INTO `oc_city` VALUES ('1230', '162', '苍山', '1', '0');
INSERT INTO `oc_city` VALUES ('1231', '162', '莒南', '1', '0');
INSERT INTO `oc_city` VALUES ('1232', '162', '沂水', '1', '0');
INSERT INTO `oc_city` VALUES ('1233', '162', '蒙阴', '1', '0');
INSERT INTO `oc_city` VALUES ('1234', '162', '平邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1235', '162', '费县', '1', '0');
INSERT INTO `oc_city` VALUES ('1236', '162', '沂南', '1', '0');
INSERT INTO `oc_city` VALUES ('1237', '162', '临沭', '1', '0');
INSERT INTO `oc_city` VALUES ('1238', '163', '德城', '1', '0');
INSERT INTO `oc_city` VALUES ('1239', '163', '乐陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1240', '163', '禹城', '1', '0');
INSERT INTO `oc_city` VALUES ('1241', '163', '陵县', '1', '0');
INSERT INTO `oc_city` VALUES ('1242', '163', '平原', '1', '0');
INSERT INTO `oc_city` VALUES ('1243', '163', '夏津', '1', '0');
INSERT INTO `oc_city` VALUES ('1244', '163', '武城', '1', '0');
INSERT INTO `oc_city` VALUES ('1245', '163', '齐河', '1', '0');
INSERT INTO `oc_city` VALUES ('1246', '163', '临邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1247', '163', '宁津', '1', '0');
INSERT INTO `oc_city` VALUES ('1248', '163', '庆云', '1', '0');
INSERT INTO `oc_city` VALUES ('1249', '164', '东昌府', '1', '0');
INSERT INTO `oc_city` VALUES ('1250', '164', '临清', '1', '0');
INSERT INTO `oc_city` VALUES ('1251', '164', '阳谷', '1', '0');
INSERT INTO `oc_city` VALUES ('1252', '164', '莘县', '1', '0');
INSERT INTO `oc_city` VALUES ('1253', '164', '茌平', '1', '0');
INSERT INTO `oc_city` VALUES ('1254', '164', '东阿', '1', '0');
INSERT INTO `oc_city` VALUES ('1255', '164', '冠县', '1', '0');
INSERT INTO `oc_city` VALUES ('1256', '164', '高唐', '1', '0');
INSERT INTO `oc_city` VALUES ('1257', '165', '滨城', '1', '0');
INSERT INTO `oc_city` VALUES ('1258', '165', '惠民', '1', '0');
INSERT INTO `oc_city` VALUES ('1259', '165', '阳信', '1', '0');
INSERT INTO `oc_city` VALUES ('1260', '165', '无棣', '1', '0');
INSERT INTO `oc_city` VALUES ('1261', '165', '沾化', '1', '0');
INSERT INTO `oc_city` VALUES ('1262', '165', '博兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1263', '165', '邹平', '1', '0');
INSERT INTO `oc_city` VALUES ('1264', '166', '牡丹', '1', '0');
INSERT INTO `oc_city` VALUES ('1265', '166', '曹县', '1', '0');
INSERT INTO `oc_city` VALUES ('1266', '166', '定陶', '1', '0');
INSERT INTO `oc_city` VALUES ('1267', '166', '成武', '1', '0');
INSERT INTO `oc_city` VALUES ('1268', '166', '单县', '1', '0');
INSERT INTO `oc_city` VALUES ('1269', '166', '巨野', '1', '0');
INSERT INTO `oc_city` VALUES ('1270', '166', '郓城', '1', '0');
INSERT INTO `oc_city` VALUES ('1271', '166', '鄄城', '1', '0');
INSERT INTO `oc_city` VALUES ('1272', '166', '东明', '1', '0');
INSERT INTO `oc_city` VALUES ('1273', '167', '中原', '1', '0');
INSERT INTO `oc_city` VALUES ('1274', '167', '二七', '1', '0');
INSERT INTO `oc_city` VALUES ('1275', '167', '管城', '1', '0');
INSERT INTO `oc_city` VALUES ('1276', '167', '金水', '1', '0');
INSERT INTO `oc_city` VALUES ('1277', '167', '上街', '1', '0');
INSERT INTO `oc_city` VALUES ('1278', '167', '邙山', '1', '0');
INSERT INTO `oc_city` VALUES ('1279', '167', '新郑', '1', '0');
INSERT INTO `oc_city` VALUES ('1280', '167', '登封', '1', '0');
INSERT INTO `oc_city` VALUES ('1281', '167', '新密', '1', '0');
INSERT INTO `oc_city` VALUES ('1282', '167', '巩义', '1', '0');
INSERT INTO `oc_city` VALUES ('1283', '167', '荥阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1284', '167', '中牟', '1', '0');
INSERT INTO `oc_city` VALUES ('1285', '168', '鼓楼', '1', '0');
INSERT INTO `oc_city` VALUES ('1286', '168', '龙亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1287', '168', '顺河', '1', '0');
INSERT INTO `oc_city` VALUES ('1288', '168', '南关', '1', '0');
INSERT INTO `oc_city` VALUES ('1289', '168', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('1290', '168', '杞县', '1', '0');
INSERT INTO `oc_city` VALUES ('1291', '168', '通许', '1', '0');
INSERT INTO `oc_city` VALUES ('1292', '168', '尉氏', '1', '0');
INSERT INTO `oc_city` VALUES ('1293', '168', '开封', '1', '0');
INSERT INTO `oc_city` VALUES ('1294', '168', '兰考', '1', '0');
INSERT INTO `oc_city` VALUES ('1295', '169', '西工', '1', '0');
INSERT INTO `oc_city` VALUES ('1296', '169', '老城', '1', '0');
INSERT INTO `oc_city` VALUES ('1297', '169', '瀍河', '1', '0');
INSERT INTO `oc_city` VALUES ('1298', '169', '涧西', '1', '0');
INSERT INTO `oc_city` VALUES ('1299', '169', '吉利', '1', '0');
INSERT INTO `oc_city` VALUES ('1300', '169', '洛龙', '1', '0');
INSERT INTO `oc_city` VALUES ('1301', '169', '偃师', '1', '0');
INSERT INTO `oc_city` VALUES ('1302', '169', '孟津', '1', '0');
INSERT INTO `oc_city` VALUES ('1303', '169', '新安', '1', '0');
INSERT INTO `oc_city` VALUES ('1304', '169', '栾川', '1', '0');
INSERT INTO `oc_city` VALUES ('1305', '169', '嵩县', '1', '0');
INSERT INTO `oc_city` VALUES ('1306', '169', '汝阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1307', '169', '宜阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1308', '169', '洛宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1309', '169', '伊川', '1', '0');
INSERT INTO `oc_city` VALUES ('1310', '170', '新华', '1', '0');
INSERT INTO `oc_city` VALUES ('1311', '170', '卫东', '1', '0');
INSERT INTO `oc_city` VALUES ('1312', '170', '湛河', '1', '0');
INSERT INTO `oc_city` VALUES ('1313', '170', '石龙', '1', '0');
INSERT INTO `oc_city` VALUES ('1314', '170', '舞钢', '1', '0');
INSERT INTO `oc_city` VALUES ('1315', '170', '汝州', '1', '0');
INSERT INTO `oc_city` VALUES ('1316', '170', '宝丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1317', '170', '叶县', '1', '0');
INSERT INTO `oc_city` VALUES ('1318', '170', '鲁山', '1', '0');
INSERT INTO `oc_city` VALUES ('1319', '170', '郏县', '1', '0');
INSERT INTO `oc_city` VALUES ('1320', '171', '山阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1321', '171', '解放', '1', '0');
INSERT INTO `oc_city` VALUES ('1322', '171', '中站', '1', '0');
INSERT INTO `oc_city` VALUES ('1323', '171', '马村', '1', '0');
INSERT INTO `oc_city` VALUES ('1324', '171', '孟州', '1', '0');
INSERT INTO `oc_city` VALUES ('1325', '171', '沁阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1326', '171', '修武', '1', '0');
INSERT INTO `oc_city` VALUES ('1327', '171', '博爱', '1', '0');
INSERT INTO `oc_city` VALUES ('1328', '171', '武陟', '1', '0');
INSERT INTO `oc_city` VALUES ('1329', '171', '温县', '1', '0');
INSERT INTO `oc_city` VALUES ('1330', '172', '淇滨', '1', '0');
INSERT INTO `oc_city` VALUES ('1331', '172', '山城', '1', '0');
INSERT INTO `oc_city` VALUES ('1332', '172', '鹤山', '1', '0');
INSERT INTO `oc_city` VALUES ('1333', '172', '浚县', '1', '0');
INSERT INTO `oc_city` VALUES ('1334', '172', '淇县', '1', '0');
INSERT INTO `oc_city` VALUES ('1335', '173', '新华', '1', '0');
INSERT INTO `oc_city` VALUES ('1336', '173', '红旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1337', '173', '北站', '1', '0');
INSERT INTO `oc_city` VALUES ('1338', '173', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('1339', '173', '卫辉', '1', '0');
INSERT INTO `oc_city` VALUES ('1340', '173', '辉县', '1', '0');
INSERT INTO `oc_city` VALUES ('1341', '173', '新乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1342', '173', '获嘉', '1', '0');
INSERT INTO `oc_city` VALUES ('1343', '173', '原阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1344', '173', '延津', '1', '0');
INSERT INTO `oc_city` VALUES ('1345', '173', '封丘', '1', '0');
INSERT INTO `oc_city` VALUES ('1346', '173', '长垣', '1', '0');
INSERT INTO `oc_city` VALUES ('1347', '174', '北关', '1', '0');
INSERT INTO `oc_city` VALUES ('1348', '174', '文峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1349', '174', '殷都', '1', '0');
INSERT INTO `oc_city` VALUES ('1350', '174', '龙安', '1', '0');
INSERT INTO `oc_city` VALUES ('1351', '174', '林州', '1', '0');
INSERT INTO `oc_city` VALUES ('1352', '174', '安阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1353', '174', '汤阴', '1', '0');
INSERT INTO `oc_city` VALUES ('1354', '174', '滑县', '1', '0');
INSERT INTO `oc_city` VALUES ('1355', '174', '内黄', '1', '0');
INSERT INTO `oc_city` VALUES ('1356', '175', '市区', '1', '0');
INSERT INTO `oc_city` VALUES ('1357', '175', '清丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1358', '175', '南乐', '1', '0');
INSERT INTO `oc_city` VALUES ('1359', '175', '范县', '1', '0');
INSERT INTO `oc_city` VALUES ('1360', '175', '台前', '1', '0');
INSERT INTO `oc_city` VALUES ('1361', '175', '濮阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1362', '176', '魏都', '1', '0');
INSERT INTO `oc_city` VALUES ('1363', '176', '禹州', '1', '0');
INSERT INTO `oc_city` VALUES ('1364', '176', '长葛', '1', '0');
INSERT INTO `oc_city` VALUES ('1365', '176', '许昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1366', '176', '鄢陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1367', '176', '襄城', '1', '0');
INSERT INTO `oc_city` VALUES ('1368', '177', '源汇', '1', '0');
INSERT INTO `oc_city` VALUES ('1369', '177', '舞阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1370', '177', '临颖', '1', '0');
INSERT INTO `oc_city` VALUES ('1371', '177', '郾城', '1', '0');
INSERT INTO `oc_city` VALUES ('1372', '178', '湖滨', '1', '0');
INSERT INTO `oc_city` VALUES ('1373', '178', '义马', '1', '0');
INSERT INTO `oc_city` VALUES ('1374', '178', '灵宝', '1', '0');
INSERT INTO `oc_city` VALUES ('1375', '178', '渑池', '1', '0');
INSERT INTO `oc_city` VALUES ('1376', '178', '陕县', '1', '0');
INSERT INTO `oc_city` VALUES ('1377', '178', '卢氏', '1', '0');
INSERT INTO `oc_city` VALUES ('1378', '179', '卧龙', '1', '0');
INSERT INTO `oc_city` VALUES ('1379', '179', '宛城', '1', '0');
INSERT INTO `oc_city` VALUES ('1380', '179', '邓州', '1', '0');
INSERT INTO `oc_city` VALUES ('1381', '179', '南召', '1', '0');
INSERT INTO `oc_city` VALUES ('1382', '179', '方城', '1', '0');
INSERT INTO `oc_city` VALUES ('1383', '179', '西峡', '1', '0');
INSERT INTO `oc_city` VALUES ('1384', '179', '镇平', '1', '0');
INSERT INTO `oc_city` VALUES ('1385', '179', '内乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1386', '179', '淅川', '1', '0');
INSERT INTO `oc_city` VALUES ('1387', '179', '社旗', '1', '0');
INSERT INTO `oc_city` VALUES ('1388', '179', '唐河', '1', '0');
INSERT INTO `oc_city` VALUES ('1389', '179', '新野', '1', '0');
INSERT INTO `oc_city` VALUES ('1390', '179', '桐柏', '1', '0');
INSERT INTO `oc_city` VALUES ('1391', '180', '梁园', '1', '0');
INSERT INTO `oc_city` VALUES ('1392', '180', '睢阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1393', '180', '永城', '1', '0');
INSERT INTO `oc_city` VALUES ('1394', '180', '虞城', '1', '0');
INSERT INTO `oc_city` VALUES ('1395', '180', '民权', '1', '0');
INSERT INTO `oc_city` VALUES ('1396', '180', '宁陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1397', '180', '睢县', '1', '0');
INSERT INTO `oc_city` VALUES ('1398', '180', '夏邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1399', '180', '柘城', '1', '0');
INSERT INTO `oc_city` VALUES ('1400', '181', '浉河', '1', '0');
INSERT INTO `oc_city` VALUES ('1401', '181', '平桥', '1', '0');
INSERT INTO `oc_city` VALUES ('1402', '181', '息县', '1', '0');
INSERT INTO `oc_city` VALUES ('1403', '181', '淮滨', '1', '0');
INSERT INTO `oc_city` VALUES ('1404', '181', '潢川', '1', '0');
INSERT INTO `oc_city` VALUES ('1405', '181', '光山', '1', '0');
INSERT INTO `oc_city` VALUES ('1406', '181', '固始', '1', '0');
INSERT INTO `oc_city` VALUES ('1407', '181', '商城', '1', '0');
INSERT INTO `oc_city` VALUES ('1408', '181', '罗山', '1', '0');
INSERT INTO `oc_city` VALUES ('1409', '181', '新县', '1', '0');
INSERT INTO `oc_city` VALUES ('1410', '182', '川汇', '1', '0');
INSERT INTO `oc_city` VALUES ('1411', '182', '项城', '1', '0');
INSERT INTO `oc_city` VALUES ('1412', '182', '扶沟', '1', '0');
INSERT INTO `oc_city` VALUES ('1413', '182', '西华', '1', '0');
INSERT INTO `oc_city` VALUES ('1414', '182', '商水', '1', '0');
INSERT INTO `oc_city` VALUES ('1415', '182', '太康', '1', '0');
INSERT INTO `oc_city` VALUES ('1416', '182', '鹿邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1417', '182', '郸城', '1', '0');
INSERT INTO `oc_city` VALUES ('1418', '182', '淮阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1419', '182', '沈丘', '1', '0');
INSERT INTO `oc_city` VALUES ('1420', '183', '驿城', '1', '0');
INSERT INTO `oc_city` VALUES ('1421', '183', '确山', '1', '0');
INSERT INTO `oc_city` VALUES ('1422', '183', '泌阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1423', '183', '遂平', '1', '0');
INSERT INTO `oc_city` VALUES ('1424', '183', '西平', '1', '0');
INSERT INTO `oc_city` VALUES ('1425', '183', '上蔡', '1', '0');
INSERT INTO `oc_city` VALUES ('1426', '183', '汝南', '1', '0');
INSERT INTO `oc_city` VALUES ('1427', '183', '平舆', '1', '0');
INSERT INTO `oc_city` VALUES ('1428', '183', '新蔡', '1', '0');
INSERT INTO `oc_city` VALUES ('1429', '183', '正阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1430', '185', '江岸', '1', '0');
INSERT INTO `oc_city` VALUES ('1431', '185', '江汉', '1', '0');
INSERT INTO `oc_city` VALUES ('1432', '185', '硚口', '1', '0');
INSERT INTO `oc_city` VALUES ('1433', '185', '汉阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1434', '185', '武昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1435', '185', '青山', '1', '0');
INSERT INTO `oc_city` VALUES ('1436', '185', '洪山', '1', '0');
INSERT INTO `oc_city` VALUES ('1437', '185', '东西湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1438', '185', '汉南', '1', '0');
INSERT INTO `oc_city` VALUES ('1439', '185', '蔡甸', '1', '0');
INSERT INTO `oc_city` VALUES ('1440', '185', '江夏', '1', '0');
INSERT INTO `oc_city` VALUES ('1441', '185', '黄陂', '1', '0');
INSERT INTO `oc_city` VALUES ('1442', '185', '新洲', '1', '0');
INSERT INTO `oc_city` VALUES ('1443', '186', '黄石港', '1', '0');
INSERT INTO `oc_city` VALUES ('1444', '186', '西塞山', '1', '0');
INSERT INTO `oc_city` VALUES ('1445', '186', '下陆', '1', '0');
INSERT INTO `oc_city` VALUES ('1446', '186', '铁山', '1', '0');
INSERT INTO `oc_city` VALUES ('1447', '186', '大冶', '1', '0');
INSERT INTO `oc_city` VALUES ('1448', '186', '阳新', '1', '0');
INSERT INTO `oc_city` VALUES ('1449', '187', '襄城', '1', '0');
INSERT INTO `oc_city` VALUES ('1450', '187', '樊城', '1', '0');
INSERT INTO `oc_city` VALUES ('1451', '187', '襄阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1452', '187', '老河口', '1', '0');
INSERT INTO `oc_city` VALUES ('1453', '187', '枣阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1454', '187', '宜城', '1', '0');
INSERT INTO `oc_city` VALUES ('1455', '187', '南漳', '1', '0');
INSERT INTO `oc_city` VALUES ('1456', '187', '谷城', '1', '0');
INSERT INTO `oc_city` VALUES ('1457', '187', '保康', '1', '0');
INSERT INTO `oc_city` VALUES ('1458', '188', '张湾', '1', '0');
INSERT INTO `oc_city` VALUES ('1459', '188', '茅箭', '1', '0');
INSERT INTO `oc_city` VALUES ('1460', '188', '丹江口', '1', '0');
INSERT INTO `oc_city` VALUES ('1461', '188', '郧县', '1', '0');
INSERT INTO `oc_city` VALUES ('1462', '188', '竹山', '1', '0');
INSERT INTO `oc_city` VALUES ('1463', '188', '房县', '1', '0');
INSERT INTO `oc_city` VALUES ('1464', '188', '郧西', '1', '0');
INSERT INTO `oc_city` VALUES ('1465', '188', '竹溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1466', '189', '沙市', '1', '0');
INSERT INTO `oc_city` VALUES ('1467', '189', '荆州', '1', '0');
INSERT INTO `oc_city` VALUES ('1468', '189', '石首', '1', '0');
INSERT INTO `oc_city` VALUES ('1469', '189', '洪湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1470', '189', '松滋', '1', '0');
INSERT INTO `oc_city` VALUES ('1471', '189', '江陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1472', '189', '公安', '1', '0');
INSERT INTO `oc_city` VALUES ('1473', '189', '监利', '1', '0');
INSERT INTO `oc_city` VALUES ('1474', '190', '西陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1475', '190', '伍家岗', '1', '0');
INSERT INTO `oc_city` VALUES ('1476', '190', '点军', '1', '0');
INSERT INTO `oc_city` VALUES ('1477', '190', '猇亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1478', '190', '夷陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1479', '190', '枝江', '1', '0');
INSERT INTO `oc_city` VALUES ('1480', '190', '宜都', '1', '0');
INSERT INTO `oc_city` VALUES ('1481', '190', '当阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1482', '190', '远安', '1', '0');
INSERT INTO `oc_city` VALUES ('1483', '190', '兴山', '1', '0');
INSERT INTO `oc_city` VALUES ('1484', '190', '秭归', '1', '0');
INSERT INTO `oc_city` VALUES ('1485', '190', '长阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1486', '190', '五峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1487', '191', '东宝', '1', '0');
INSERT INTO `oc_city` VALUES ('1488', '191', '掇刀', '1', '0');
INSERT INTO `oc_city` VALUES ('1489', '191', '钟祥', '1', '0');
INSERT INTO `oc_city` VALUES ('1490', '191', '沙洋', '1', '0');
INSERT INTO `oc_city` VALUES ('1491', '191', '京山', '1', '0');
INSERT INTO `oc_city` VALUES ('1492', '192', '鄂城', '1', '0');
INSERT INTO `oc_city` VALUES ('1493', '192', '梁子湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1494', '192', '华容', '1', '0');
INSERT INTO `oc_city` VALUES ('1495', '193', '孝南', '1', '0');
INSERT INTO `oc_city` VALUES ('1496', '193', '应城', '1', '0');
INSERT INTO `oc_city` VALUES ('1497', '193', '安陆', '1', '0');
INSERT INTO `oc_city` VALUES ('1498', '193', '汉川', '1', '0');
INSERT INTO `oc_city` VALUES ('1499', '193', '孝昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1500', '193', '大悟', '1', '0');
INSERT INTO `oc_city` VALUES ('1501', '193', '云梦', '1', '0');
INSERT INTO `oc_city` VALUES ('1502', '194', '黄州', '1', '0');
INSERT INTO `oc_city` VALUES ('1503', '194', '麻城', '1', '0');
INSERT INTO `oc_city` VALUES ('1504', '194', '武穴', '1', '0');
INSERT INTO `oc_city` VALUES ('1505', '194', '红安', '1', '0');
INSERT INTO `oc_city` VALUES ('1506', '194', '罗田', '1', '0');
INSERT INTO `oc_city` VALUES ('1507', '194', '英山', '1', '0');
INSERT INTO `oc_city` VALUES ('1508', '194', '浠水', '1', '0');
INSERT INTO `oc_city` VALUES ('1509', '194', '蕲春', '1', '0');
INSERT INTO `oc_city` VALUES ('1510', '194', '黄梅', '1', '0');
INSERT INTO `oc_city` VALUES ('1511', '194', '团风', '1', '0');
INSERT INTO `oc_city` VALUES ('1512', '195', '咸安', '1', '0');
INSERT INTO `oc_city` VALUES ('1513', '195', '赤壁', '1', '0');
INSERT INTO `oc_city` VALUES ('1514', '195', '嘉鱼', '1', '0');
INSERT INTO `oc_city` VALUES ('1515', '195', '通城', '1', '0');
INSERT INTO `oc_city` VALUES ('1516', '195', '崇阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1517', '195', '通山', '1', '0');
INSERT INTO `oc_city` VALUES ('1518', '196', '曾都', '1', '0');
INSERT INTO `oc_city` VALUES ('1519', '196', '广水', '1', '0');
INSERT INTO `oc_city` VALUES ('1520', '197', '恩施', '1', '0');
INSERT INTO `oc_city` VALUES ('1521', '197', '利川', '1', '0');
INSERT INTO `oc_city` VALUES ('1522', '197', '建始', '1', '0');
INSERT INTO `oc_city` VALUES ('1523', '197', '巴东', '1', '0');
INSERT INTO `oc_city` VALUES ('1524', '197', '宣恩', '1', '0');
INSERT INTO `oc_city` VALUES ('1525', '197', '咸丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1526', '197', '来凤', '1', '0');
INSERT INTO `oc_city` VALUES ('1527', '197', '鹤峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1528', '198', '潜江', '1', '0');
INSERT INTO `oc_city` VALUES ('1529', '198', '神农架林', '1', '0');
INSERT INTO `oc_city` VALUES ('1530', '199', '岳麓', '1', '0');
INSERT INTO `oc_city` VALUES ('1531', '199', '芙蓉', '1', '0');
INSERT INTO `oc_city` VALUES ('1532', '199', '天心', '1', '0');
INSERT INTO `oc_city` VALUES ('1533', '199', '开福', '1', '0');
INSERT INTO `oc_city` VALUES ('1534', '199', '雨花', '1', '0');
INSERT INTO `oc_city` VALUES ('1535', '199', '浏阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1536', '199', '长沙', '1', '0');
INSERT INTO `oc_city` VALUES ('1537', '199', '望城', '1', '0');
INSERT INTO `oc_city` VALUES ('1538', '199', '宁乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1539', '200', '天元', '1', '0');
INSERT INTO `oc_city` VALUES ('1540', '200', '荷塘', '1', '0');
INSERT INTO `oc_city` VALUES ('1541', '200', '芦淞', '1', '0');
INSERT INTO `oc_city` VALUES ('1542', '200', '石峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1543', '200', '醴陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1544', '200', '株洲', '1', '0');
INSERT INTO `oc_city` VALUES ('1545', '200', '攸县', '1', '0');
INSERT INTO `oc_city` VALUES ('1546', '200', '茶陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1547', '200', '炎陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1548', '201', '雨湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1549', '201', '岳塘', '1', '0');
INSERT INTO `oc_city` VALUES ('1550', '201', '湘乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1551', '201', '韶山', '1', '0');
INSERT INTO `oc_city` VALUES ('1552', '201', '湘潭', '1', '0');
INSERT INTO `oc_city` VALUES ('1553', '202', '雁峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1554', '202', '珠晖', '1', '0');
INSERT INTO `oc_city` VALUES ('1555', '202', '石鼓', '1', '0');
INSERT INTO `oc_city` VALUES ('1556', '202', '蒸湘', '1', '0');
INSERT INTO `oc_city` VALUES ('1557', '202', '南岳', '1', '0');
INSERT INTO `oc_city` VALUES ('1558', '202', '常宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1559', '202', '耒阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1560', '202', '衡阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1561', '202', '衡南', '1', '0');
INSERT INTO `oc_city` VALUES ('1562', '202', '衡山', '1', '0');
INSERT INTO `oc_city` VALUES ('1563', '202', '衡东', '1', '0');
INSERT INTO `oc_city` VALUES ('1564', '202', '祁东', '1', '0');
INSERT INTO `oc_city` VALUES ('1565', '203', '大祥', '1', '0');
INSERT INTO `oc_city` VALUES ('1566', '203', '北塔', '1', '0');
INSERT INTO `oc_city` VALUES ('1567', '203', '武冈', '1', '0');
INSERT INTO `oc_city` VALUES ('1568', '203', '邵东', '1', '0');
INSERT INTO `oc_city` VALUES ('1569', '203', '邵阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1570', '203', '新邵', '1', '0');
INSERT INTO `oc_city` VALUES ('1571', '203', '隆回', '1', '0');
INSERT INTO `oc_city` VALUES ('1572', '203', '洞口', '1', '0');
INSERT INTO `oc_city` VALUES ('1573', '203', '绥宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1574', '203', '新宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1575', '203', '城步', '1', '0');
INSERT INTO `oc_city` VALUES ('1576', '204', '岳阳楼', '1', '0');
INSERT INTO `oc_city` VALUES ('1577', '204', '君山', '1', '0');
INSERT INTO `oc_city` VALUES ('1578', '204', '云溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1579', '204', '汨罗', '1', '0');
INSERT INTO `oc_city` VALUES ('1580', '204', '临湘', '1', '0');
INSERT INTO `oc_city` VALUES ('1581', '204', '岳阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1582', '204', '华容', '1', '0');
INSERT INTO `oc_city` VALUES ('1583', '204', '湘阴', '1', '0');
INSERT INTO `oc_city` VALUES ('1584', '204', '平江', '1', '0');
INSERT INTO `oc_city` VALUES ('1585', '205', '武陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1586', '205', '鼎城', '1', '0');
INSERT INTO `oc_city` VALUES ('1587', '205', '津市', '1', '0');
INSERT INTO `oc_city` VALUES ('1588', '205', '安乡', '1', '0');
INSERT INTO `oc_city` VALUES ('1589', '205', '汉寿', '1', '0');
INSERT INTO `oc_city` VALUES ('1590', '205', '澧县', '1', '0');
INSERT INTO `oc_city` VALUES ('1591', '205', '临澧', '1', '0');
INSERT INTO `oc_city` VALUES ('1592', '205', '桃源', '1', '0');
INSERT INTO `oc_city` VALUES ('1593', '205', '石门', '1', '0');
INSERT INTO `oc_city` VALUES ('1594', '206', '永定', '1', '0');
INSERT INTO `oc_city` VALUES ('1595', '206', '武陵源', '1', '0');
INSERT INTO `oc_city` VALUES ('1596', '206', '慈利', '1', '0');
INSERT INTO `oc_city` VALUES ('1597', '206', '桑植', '1', '0');
INSERT INTO `oc_city` VALUES ('1598', '207', '赫山', '1', '0');
INSERT INTO `oc_city` VALUES ('1599', '207', '资阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1600', '207', '沅江', '1', '0');
INSERT INTO `oc_city` VALUES ('1601', '207', '南县', '1', '0');
INSERT INTO `oc_city` VALUES ('1602', '207', '桃江', '1', '0');
INSERT INTO `oc_city` VALUES ('1603', '207', '安化', '1', '0');
INSERT INTO `oc_city` VALUES ('1604', '208', '北湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1605', '208', '苏仙', '1', '0');
INSERT INTO `oc_city` VALUES ('1606', '208', '资兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1607', '208', '桂阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1608', '208', '永兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1609', '208', '宜章', '1', '0');
INSERT INTO `oc_city` VALUES ('1610', '208', '嘉禾', '1', '0');
INSERT INTO `oc_city` VALUES ('1611', '208', '临武', '1', '0');
INSERT INTO `oc_city` VALUES ('1612', '208', '汝城', '1', '0');
INSERT INTO `oc_city` VALUES ('1613', '208', '桂东', '1', '0');
INSERT INTO `oc_city` VALUES ('1614', '208', '安仁', '1', '0');
INSERT INTO `oc_city` VALUES ('1615', '209', '冷水滩', '1', '0');
INSERT INTO `oc_city` VALUES ('1616', '209', '芝山', '1', '0');
INSERT INTO `oc_city` VALUES ('1617', '209', '东安', '1', '0');
INSERT INTO `oc_city` VALUES ('1618', '209', '道县', '1', '0');
INSERT INTO `oc_city` VALUES ('1619', '209', '宁远', '1', '0');
INSERT INTO `oc_city` VALUES ('1620', '209', '江永', '1', '0');
INSERT INTO `oc_city` VALUES ('1621', '209', '蓝山', '1', '0');
INSERT INTO `oc_city` VALUES ('1622', '209', '新田', '1', '0');
INSERT INTO `oc_city` VALUES ('1623', '209', '双牌', '1', '0');
INSERT INTO `oc_city` VALUES ('1624', '209', '祁阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1625', '209', '江华', '1', '0');
INSERT INTO `oc_city` VALUES ('1626', '210', '洪江', '1', '0');
INSERT INTO `oc_city` VALUES ('1627', '210', '沅陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1628', '210', '辰溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1629', '210', '溆浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1630', '210', '中方', '1', '0');
INSERT INTO `oc_city` VALUES ('1631', '210', '会同', '1', '0');
INSERT INTO `oc_city` VALUES ('1632', '210', '麻阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1633', '210', '新晃', '1', '0');
INSERT INTO `oc_city` VALUES ('1634', '210', '芷江', '1', '0');
INSERT INTO `oc_city` VALUES ('1635', '210', '靖州', '1', '0');
INSERT INTO `oc_city` VALUES ('1636', '210', '通道', '1', '0');
INSERT INTO `oc_city` VALUES ('1637', '211', '娄星', '1', '0');
INSERT INTO `oc_city` VALUES ('1638', '211', '冷水江', '1', '0');
INSERT INTO `oc_city` VALUES ('1639', '211', '涟源', '1', '0');
INSERT INTO `oc_city` VALUES ('1640', '211', '双峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1641', '211', '新化', '1', '0');
INSERT INTO `oc_city` VALUES ('1642', '212', '吉首', '1', '0');
INSERT INTO `oc_city` VALUES ('1643', '212', '泸溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1644', '212', '凤凰', '1', '0');
INSERT INTO `oc_city` VALUES ('1645', '212', '花垣', '1', '0');
INSERT INTO `oc_city` VALUES ('1646', '212', '保靖', '1', '0');
INSERT INTO `oc_city` VALUES ('1647', '212', '古丈', '1', '0');
INSERT INTO `oc_city` VALUES ('1648', '212', '永顺', '1', '0');
INSERT INTO `oc_city` VALUES ('1649', '212', '龙山', '1', '0');
INSERT INTO `oc_city` VALUES ('1650', '213', '越秀', '1', '0');
INSERT INTO `oc_city` VALUES ('1651', '213', '东山', '1', '0');
INSERT INTO `oc_city` VALUES ('1652', '213', '荔湾', '1', '0');
INSERT INTO `oc_city` VALUES ('1653', '213', '海珠', '1', '0');
INSERT INTO `oc_city` VALUES ('1654', '213', '天河', '1', '0');
INSERT INTO `oc_city` VALUES ('1655', '213', '芳村', '1', '0');
INSERT INTO `oc_city` VALUES ('1656', '213', '白云', '1', '0');
INSERT INTO `oc_city` VALUES ('1657', '213', '黄埔', '1', '0');
INSERT INTO `oc_city` VALUES ('1658', '213', '番禺', '1', '0');
INSERT INTO `oc_city` VALUES ('1659', '213', '花都', '1', '0');
INSERT INTO `oc_city` VALUES ('1660', '213', '增城', '1', '0');
INSERT INTO `oc_city` VALUES ('1661', '213', '从化', '1', '0');
INSERT INTO `oc_city` VALUES ('1662', '214', '罗湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1663', '214', '南山', '1', '0');
INSERT INTO `oc_city` VALUES ('1664', '214', '宝安', '1', '0');
INSERT INTO `oc_city` VALUES ('1665', '214', '龙岗', '1', '0');
INSERT INTO `oc_city` VALUES ('1666', '214', '盐田', '1', '0');
INSERT INTO `oc_city` VALUES ('1667', '215', '香洲', '1', '0');
INSERT INTO `oc_city` VALUES ('1668', '215', '斗门', '1', '0');
INSERT INTO `oc_city` VALUES ('1669', '215', '金湾', '1', '0');
INSERT INTO `oc_city` VALUES ('1670', '216', '金园', '1', '0');
INSERT INTO `oc_city` VALUES ('1671', '216', '达濠', '1', '0');
INSERT INTO `oc_city` VALUES ('1672', '216', '龙湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1673', '216', '升平', '1', '0');
INSERT INTO `oc_city` VALUES ('1674', '216', '河浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1675', '216', '澄海', '1', '0');
INSERT INTO `oc_city` VALUES ('1676', '216', '潮阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1677', '216', '南澳', '1', '0');
INSERT INTO `oc_city` VALUES ('1678', '217', '北江', '1', '0');
INSERT INTO `oc_city` VALUES ('1679', '217', '武江', '1', '0');
INSERT INTO `oc_city` VALUES ('1680', '217', '浈江', '1', '0');
INSERT INTO `oc_city` VALUES ('1681', '217', '乐昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1682', '217', '南雄', '1', '0');
INSERT INTO `oc_city` VALUES ('1683', '217', '曲江', '1', '0');
INSERT INTO `oc_city` VALUES ('1684', '217', '始兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1685', '217', '仁化', '1', '0');
INSERT INTO `oc_city` VALUES ('1686', '217', '翁源', '1', '0');
INSERT INTO `oc_city` VALUES ('1687', '217', '新丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1688', '217', '乳源', '1', '0');
INSERT INTO `oc_city` VALUES ('1689', '218', '源城', '1', '0');
INSERT INTO `oc_city` VALUES ('1690', '218', '紫金', '1', '0');
INSERT INTO `oc_city` VALUES ('1691', '218', '龙川', '1', '0');
INSERT INTO `oc_city` VALUES ('1692', '218', '连平', '1', '0');
INSERT INTO `oc_city` VALUES ('1693', '218', '和平', '1', '0');
INSERT INTO `oc_city` VALUES ('1694', '218', '东源', '1', '0');
INSERT INTO `oc_city` VALUES ('1695', '219', '梅江', '1', '0');
INSERT INTO `oc_city` VALUES ('1696', '219', '兴宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1697', '219', '梅县', '1', '0');
INSERT INTO `oc_city` VALUES ('1698', '219', '大埔', '1', '0');
INSERT INTO `oc_city` VALUES ('1699', '219', '丰顺', '1', '0');
INSERT INTO `oc_city` VALUES ('1700', '219', '五华', '1', '0');
INSERT INTO `oc_city` VALUES ('1701', '219', '平远', '1', '0');
INSERT INTO `oc_city` VALUES ('1702', '219', '蕉岭', '1', '0');
INSERT INTO `oc_city` VALUES ('1703', '220', '惠城', '1', '0');
INSERT INTO `oc_city` VALUES ('1704', '220', '惠阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1705', '220', '博罗', '1', '0');
INSERT INTO `oc_city` VALUES ('1706', '220', '惠东', '1', '0');
INSERT INTO `oc_city` VALUES ('1707', '220', '龙门', '1', '0');
INSERT INTO `oc_city` VALUES ('1708', '221', '城区', '1', '0');
INSERT INTO `oc_city` VALUES ('1709', '221', '陆丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1710', '221', '海丰', '1', '0');
INSERT INTO `oc_city` VALUES ('1711', '221', '陆河', '1', '0');
INSERT INTO `oc_city` VALUES ('1712', '224', '江海', '1', '0');
INSERT INTO `oc_city` VALUES ('1713', '224', '蓬江', '1', '0');
INSERT INTO `oc_city` VALUES ('1714', '224', '新会', '1', '0');
INSERT INTO `oc_city` VALUES ('1715', '224', '恩平', '1', '0');
INSERT INTO `oc_city` VALUES ('1716', '224', '台山', '1', '0');
INSERT INTO `oc_city` VALUES ('1717', '224', '开平', '1', '0');
INSERT INTO `oc_city` VALUES ('1718', '224', '鹤山', '1', '0');
INSERT INTO `oc_city` VALUES ('1719', '225', '禅城', '1', '0');
INSERT INTO `oc_city` VALUES ('1720', '225', '高明', '1', '0');
INSERT INTO `oc_city` VALUES ('1721', '225', '顺德', '1', '0');
INSERT INTO `oc_city` VALUES ('1722', '225', '南海', '1', '0');
INSERT INTO `oc_city` VALUES ('1723', '225', '三水', '1', '0');
INSERT INTO `oc_city` VALUES ('1724', '226', '江城', '1', '0');
INSERT INTO `oc_city` VALUES ('1725', '226', '阳春', '1', '0');
INSERT INTO `oc_city` VALUES ('1726', '226', '阳西', '1', '0');
INSERT INTO `oc_city` VALUES ('1727', '226', '阳东', '1', '0');
INSERT INTO `oc_city` VALUES ('1728', '227', '赤坎', '1', '0');
INSERT INTO `oc_city` VALUES ('1729', '227', '霞山', '1', '0');
INSERT INTO `oc_city` VALUES ('1730', '227', '坡头', '1', '0');
INSERT INTO `oc_city` VALUES ('1731', '227', '麻章', '1', '0');
INSERT INTO `oc_city` VALUES ('1732', '227', '吴川', '1', '0');
INSERT INTO `oc_city` VALUES ('1733', '227', '廉江', '1', '0');
INSERT INTO `oc_city` VALUES ('1734', '227', '雷州', '1', '0');
INSERT INTO `oc_city` VALUES ('1735', '227', '遂溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1736', '227', '徐闻', '1', '0');
INSERT INTO `oc_city` VALUES ('1737', '228', '茂南', '1', '0');
INSERT INTO `oc_city` VALUES ('1738', '228', '茂港', '1', '0');
INSERT INTO `oc_city` VALUES ('1739', '228', '化州', '1', '0');
INSERT INTO `oc_city` VALUES ('1740', '228', '信宜', '1', '0');
INSERT INTO `oc_city` VALUES ('1741', '228', '高州', '1', '0');
INSERT INTO `oc_city` VALUES ('1742', '228', '电白', '1', '0');
INSERT INTO `oc_city` VALUES ('1743', '229', '端州', '1', '0');
INSERT INTO `oc_city` VALUES ('1744', '229', '鼎湖', '1', '0');
INSERT INTO `oc_city` VALUES ('1745', '229', '高要', '1', '0');
INSERT INTO `oc_city` VALUES ('1746', '229', '四会', '1', '0');
INSERT INTO `oc_city` VALUES ('1747', '229', '广宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1748', '229', '怀集', '1', '0');
INSERT INTO `oc_city` VALUES ('1749', '229', '封开', '1', '0');
INSERT INTO `oc_city` VALUES ('1750', '229', '德庆', '1', '0');
INSERT INTO `oc_city` VALUES ('1751', '230', '清城', '1', '0');
INSERT INTO `oc_city` VALUES ('1752', '230', '英德', '1', '0');
INSERT INTO `oc_city` VALUES ('1753', '230', '连州', '1', '0');
INSERT INTO `oc_city` VALUES ('1754', '230', '佛冈', '1', '0');
INSERT INTO `oc_city` VALUES ('1755', '230', '阳山', '1', '0');
INSERT INTO `oc_city` VALUES ('1756', '230', '清新', '1', '0');
INSERT INTO `oc_city` VALUES ('1757', '230', '连山', '1', '0');
INSERT INTO `oc_city` VALUES ('1758', '230', '连南', '1', '0');
INSERT INTO `oc_city` VALUES ('1759', '231', '湘桥', '1', '0');
INSERT INTO `oc_city` VALUES ('1760', '231', '潮安', '1', '0');
INSERT INTO `oc_city` VALUES ('1761', '231', '饶平', '1', '0');
INSERT INTO `oc_city` VALUES ('1762', '232', '榕城', '1', '0');
INSERT INTO `oc_city` VALUES ('1763', '232', '普宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1764', '232', '揭东', '1', '0');
INSERT INTO `oc_city` VALUES ('1765', '232', '揭西', '1', '0');
INSERT INTO `oc_city` VALUES ('1766', '232', '惠来', '1', '0');
INSERT INTO `oc_city` VALUES ('1767', '233', '云城', '1', '0');
INSERT INTO `oc_city` VALUES ('1768', '233', '罗定', '1', '0');
INSERT INTO `oc_city` VALUES ('1769', '233', '云安', '1', '0');
INSERT INTO `oc_city` VALUES ('1770', '233', '新兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1771', '233', '郁南', '1', '0');
INSERT INTO `oc_city` VALUES ('1772', '234', '新城', '1', '0');
INSERT INTO `oc_city` VALUES ('1773', '234', '兴宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1774', '234', '城北', '1', '0');
INSERT INTO `oc_city` VALUES ('1775', '234', '江南', '1', '0');
INSERT INTO `oc_city` VALUES ('1776', '234', '永新', '1', '0');
INSERT INTO `oc_city` VALUES ('1777', '234', '邕宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1778', '234', '武鸣', '1', '0');
INSERT INTO `oc_city` VALUES ('1779', '234', '宾阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1780', '234', '上林', '1', '0');
INSERT INTO `oc_city` VALUES ('1781', '234', '马山', '1', '0');
INSERT INTO `oc_city` VALUES ('1782', '235', '城中', '1', '0');
INSERT INTO `oc_city` VALUES ('1783', '235', '鱼峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1784', '235', '柳南', '1', '0');
INSERT INTO `oc_city` VALUES ('1785', '235', '柳北', '1', '0');
INSERT INTO `oc_city` VALUES ('1786', '235', '柳江', '1', '0');
INSERT INTO `oc_city` VALUES ('1787', '235', '柳城', '1', '0');
INSERT INTO `oc_city` VALUES ('1788', '235', '鹿寨', '1', '0');
INSERT INTO `oc_city` VALUES ('1789', '235', '融安', '1', '0');
INSERT INTO `oc_city` VALUES ('1790', '235', '融水', '1', '0');
INSERT INTO `oc_city` VALUES ('1791', '235', '三江', '1', '0');
INSERT INTO `oc_city` VALUES ('1792', '236', '秀峰', '1', '0');
INSERT INTO `oc_city` VALUES ('1793', '236', '叠彩', '1', '0');
INSERT INTO `oc_city` VALUES ('1794', '236', '象山', '1', '0');
INSERT INTO `oc_city` VALUES ('1795', '236', '七星', '1', '0');
INSERT INTO `oc_city` VALUES ('1796', '236', '雁山', '1', '0');
INSERT INTO `oc_city` VALUES ('1797', '236', '阳朔', '1', '0');
INSERT INTO `oc_city` VALUES ('1798', '236', '临桂', '1', '0');
INSERT INTO `oc_city` VALUES ('1799', '236', '灵川', '1', '0');
INSERT INTO `oc_city` VALUES ('1800', '236', '全州', '1', '0');
INSERT INTO `oc_city` VALUES ('1801', '236', '兴安', '1', '0');
INSERT INTO `oc_city` VALUES ('1802', '236', '永福', '1', '0');
INSERT INTO `oc_city` VALUES ('1803', '236', '灌阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1804', '236', '资源', '1', '0');
INSERT INTO `oc_city` VALUES ('1805', '236', '平乐', '1', '0');
INSERT INTO `oc_city` VALUES ('1806', '236', '荔浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1807', '236', '龙胜', '1', '0');
INSERT INTO `oc_city` VALUES ('1808', '236', '恭城', '1', '0');
INSERT INTO `oc_city` VALUES ('1809', '237', '万秀', '1', '0');
INSERT INTO `oc_city` VALUES ('1810', '237', '蝶山', '1', '0');
INSERT INTO `oc_city` VALUES ('1811', '237', '市郊', '1', '0');
INSERT INTO `oc_city` VALUES ('1812', '237', '岑溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1813', '237', '苍梧', '1', '0');
INSERT INTO `oc_city` VALUES ('1814', '237', '藤县', '1', '0');
INSERT INTO `oc_city` VALUES ('1815', '237', '蒙山', '1', '0');
INSERT INTO `oc_city` VALUES ('1816', '238', '海城', '1', '0');
INSERT INTO `oc_city` VALUES ('1817', '238', '银海', '1', '0');
INSERT INTO `oc_city` VALUES ('1818', '238', '铁山港', '1', '0');
INSERT INTO `oc_city` VALUES ('1819', '238', '合浦', '1', '0');
INSERT INTO `oc_city` VALUES ('1820', '239', '港口', '1', '0');
INSERT INTO `oc_city` VALUES ('1821', '239', '防城', '1', '0');
INSERT INTO `oc_city` VALUES ('1822', '239', '东兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1823', '239', '上思', '1', '0');
INSERT INTO `oc_city` VALUES ('1824', '240', '钦南', '1', '0');
INSERT INTO `oc_city` VALUES ('1825', '240', '钦北', '1', '0');
INSERT INTO `oc_city` VALUES ('1826', '240', '灵山', '1', '0');
INSERT INTO `oc_city` VALUES ('1827', '240', '浦北', '1', '0');
INSERT INTO `oc_city` VALUES ('1828', '241', '港北', '1', '0');
INSERT INTO `oc_city` VALUES ('1829', '241', '港南', '1', '0');
INSERT INTO `oc_city` VALUES ('1830', '241', '桂平', '1', '0');
INSERT INTO `oc_city` VALUES ('1831', '241', '平南', '1', '0');
INSERT INTO `oc_city` VALUES ('1832', '242', '北流', '1', '0');
INSERT INTO `oc_city` VALUES ('1833', '242', '兴业', '1', '0');
INSERT INTO `oc_city` VALUES ('1834', '242', '容县', '1', '0');
INSERT INTO `oc_city` VALUES ('1835', '242', '陆川', '1', '0');
INSERT INTO `oc_city` VALUES ('1836', '242', '博白', '1', '0');
INSERT INTO `oc_city` VALUES ('1837', '243', '田阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1838', '243', '田东', '1', '0');
INSERT INTO `oc_city` VALUES ('1839', '243', '平果', '1', '0');
INSERT INTO `oc_city` VALUES ('1840', '243', '德保', '1', '0');
INSERT INTO `oc_city` VALUES ('1841', '243', '靖西', '1', '0');
INSERT INTO `oc_city` VALUES ('1842', '243', '那坡', '1', '0');
INSERT INTO `oc_city` VALUES ('1843', '243', '凌云', '1', '0');
INSERT INTO `oc_city` VALUES ('1844', '243', '乐业', '1', '0');
INSERT INTO `oc_city` VALUES ('1845', '243', '西林', '1', '0');
INSERT INTO `oc_city` VALUES ('1846', '243', '田林', '1', '0');
INSERT INTO `oc_city` VALUES ('1847', '243', '隆林', '1', '0');
INSERT INTO `oc_city` VALUES ('1848', '244', '八步', '1', '0');
INSERT INTO `oc_city` VALUES ('1849', '244', '昭平', '1', '0');
INSERT INTO `oc_city` VALUES ('1850', '244', '钟山', '1', '0');
INSERT INTO `oc_city` VALUES ('1851', '244', '富川', '1', '0');
INSERT INTO `oc_city` VALUES ('1852', '245', '金城江', '1', '0');
INSERT INTO `oc_city` VALUES ('1853', '245', '宜州', '1', '0');
INSERT INTO `oc_city` VALUES ('1854', '245', '南丹', '1', '0');
INSERT INTO `oc_city` VALUES ('1855', '245', '天峨', '1', '0');
INSERT INTO `oc_city` VALUES ('1856', '245', '凤山', '1', '0');
INSERT INTO `oc_city` VALUES ('1857', '245', '东兰', '1', '0');
INSERT INTO `oc_city` VALUES ('1858', '245', '巴马', '1', '0');
INSERT INTO `oc_city` VALUES ('1859', '245', '都安', '1', '0');
INSERT INTO `oc_city` VALUES ('1860', '245', '大化', '1', '0');
INSERT INTO `oc_city` VALUES ('1861', '245', '罗城', '1', '0');
INSERT INTO `oc_city` VALUES ('1862', '245', '环江', '1', '0');
INSERT INTO `oc_city` VALUES ('1863', '246', '兴宾', '1', '0');
INSERT INTO `oc_city` VALUES ('1864', '246', '合山', '1', '0');
INSERT INTO `oc_city` VALUES ('1865', '246', '象州', '1', '0');
INSERT INTO `oc_city` VALUES ('1866', '246', '武宣', '1', '0');
INSERT INTO `oc_city` VALUES ('1867', '246', '忻城', '1', '0');
INSERT INTO `oc_city` VALUES ('1868', '246', '金秀', '1', '0');
INSERT INTO `oc_city` VALUES ('1869', '247', '凭祥', '1', '0');
INSERT INTO `oc_city` VALUES ('1870', '247', '扶绥', '1', '0');
INSERT INTO `oc_city` VALUES ('1871', '247', '大新', '1', '0');
INSERT INTO `oc_city` VALUES ('1872', '247', '天等', '1', '0');
INSERT INTO `oc_city` VALUES ('1873', '247', '宁明', '1', '0');
INSERT INTO `oc_city` VALUES ('1874', '247', '龙州', '1', '0');
INSERT INTO `oc_city` VALUES ('1875', '248', '秀英', '1', '0');
INSERT INTO `oc_city` VALUES ('1876', '248', '新华', '1', '0');
INSERT INTO `oc_city` VALUES ('1877', '248', '振东', '1', '0');
INSERT INTO `oc_city` VALUES ('1878', '248', '秀英', '1', '0');
INSERT INTO `oc_city` VALUES ('1879', '248', '琼山', '1', '0');
INSERT INTO `oc_city` VALUES ('1880', '250', '澄迈', '1', '0');
INSERT INTO `oc_city` VALUES ('1881', '250', '定安', '1', '0');
INSERT INTO `oc_city` VALUES ('1882', '250', '屯昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1883', '250', '昌江', '1', '0');
INSERT INTO `oc_city` VALUES ('1884', '250', '白沙', '1', '0');
INSERT INTO `oc_city` VALUES ('1885', '250', '琼中', '1', '0');
INSERT INTO `oc_city` VALUES ('1886', '250', '陵水', '1', '0');
INSERT INTO `oc_city` VALUES ('1887', '250', '保亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1888', '250', '乐东', '1', '0');
INSERT INTO `oc_city` VALUES ('1889', '251', '青羊', '1', '0');
INSERT INTO `oc_city` VALUES ('1890', '251', '锦江', '1', '0');
INSERT INTO `oc_city` VALUES ('1891', '251', '金牛', '1', '0');
INSERT INTO `oc_city` VALUES ('1892', '251', '武侯', '1', '0');
INSERT INTO `oc_city` VALUES ('1893', '251', '成华', '1', '0');
INSERT INTO `oc_city` VALUES ('1894', '251', '龙泉驿', '1', '0');
INSERT INTO `oc_city` VALUES ('1895', '251', '青白江', '1', '0');
INSERT INTO `oc_city` VALUES ('1896', '251', '新都', '1', '0');
INSERT INTO `oc_city` VALUES ('1897', '251', '温江', '1', '0');
INSERT INTO `oc_city` VALUES ('1898', '251', '崇州', '1', '0');
INSERT INTO `oc_city` VALUES ('1899', '251', '邛崃', '1', '0');
INSERT INTO `oc_city` VALUES ('1900', '251', '都江堰', '1', '0');
INSERT INTO `oc_city` VALUES ('1901', '251', '金堂', '1', '0');
INSERT INTO `oc_city` VALUES ('1902', '251', '双流', '1', '0');
INSERT INTO `oc_city` VALUES ('1903', '251', '郫县', '1', '0');
INSERT INTO `oc_city` VALUES ('1904', '251', '大邑', '1', '0');
INSERT INTO `oc_city` VALUES ('1905', '251', '蒲江', '1', '0');
INSERT INTO `oc_city` VALUES ('1906', '251', '新津', '1', '0');
INSERT INTO `oc_city` VALUES ('1907', '252', '大安', '1', '0');
INSERT INTO `oc_city` VALUES ('1908', '252', '贡井', '1', '0');
INSERT INTO `oc_city` VALUES ('1909', '252', '自流井', '1', '0');
INSERT INTO `oc_city` VALUES ('1910', '252', '沿滩', '1', '0');
INSERT INTO `oc_city` VALUES ('1911', '252', '荣县', '1', '0');
INSERT INTO `oc_city` VALUES ('1912', '252', '富顺', '1', '0');
INSERT INTO `oc_city` VALUES ('1913', '253', '东区', '1', '0');
INSERT INTO `oc_city` VALUES ('1914', '253', '西区', '1', '0');
INSERT INTO `oc_city` VALUES ('1915', '253', '仁和', '1', '0');
INSERT INTO `oc_city` VALUES ('1916', '253', '米易', '1', '0');
INSERT INTO `oc_city` VALUES ('1917', '253', '盐边', '1', '0');
INSERT INTO `oc_city` VALUES ('1918', '254', '江阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1919', '254', '纳溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1920', '254', '龙马潭', '1', '0');
INSERT INTO `oc_city` VALUES ('1921', '254', '泸县', '1', '0');
INSERT INTO `oc_city` VALUES ('1922', '254', '合江', '1', '0');
INSERT INTO `oc_city` VALUES ('1923', '254', '叙永', '1', '0');
INSERT INTO `oc_city` VALUES ('1924', '254', '古蔺', '1', '0');
INSERT INTO `oc_city` VALUES ('1925', '255', '旌阳', '1', '0');
INSERT INTO `oc_city` VALUES ('1926', '255', '什邡', '1', '0');
INSERT INTO `oc_city` VALUES ('1927', '255', '广汉', '1', '0');
INSERT INTO `oc_city` VALUES ('1928', '255', '绵竹', '1', '0');
INSERT INTO `oc_city` VALUES ('1929', '255', '罗江', '1', '0');
INSERT INTO `oc_city` VALUES ('1930', '255', '中江', '1', '0');
INSERT INTO `oc_city` VALUES ('1931', '256', '涪城', '1', '0');
INSERT INTO `oc_city` VALUES ('1932', '256', '游仙', '1', '0');
INSERT INTO `oc_city` VALUES ('1933', '256', '江油', '1', '0');
INSERT INTO `oc_city` VALUES ('1934', '256', '三台', '1', '0');
INSERT INTO `oc_city` VALUES ('1935', '256', '盐亭', '1', '0');
INSERT INTO `oc_city` VALUES ('1936', '256', '安县', '1', '0');
INSERT INTO `oc_city` VALUES ('1937', '256', '梓潼', '1', '0');
INSERT INTO `oc_city` VALUES ('1938', '256', '北川', '1', '0');
INSERT INTO `oc_city` VALUES ('1939', '256', '平武', '1', '0');
INSERT INTO `oc_city` VALUES ('1940', '257', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1941', '257', '元坝', '1', '0');
INSERT INTO `oc_city` VALUES ('1942', '257', '朝天', '1', '0');
INSERT INTO `oc_city` VALUES ('1943', '257', '旺苍', '1', '0');
INSERT INTO `oc_city` VALUES ('1944', '257', '青川', '1', '0');
INSERT INTO `oc_city` VALUES ('1945', '257', '剑阁', '1', '0');
INSERT INTO `oc_city` VALUES ('1946', '257', '苍溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1947', '258', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1948', '258', '蓬溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1949', '258', '射洪', '1', '0');
INSERT INTO `oc_city` VALUES ('1950', '258', '大英', '1', '0');
INSERT INTO `oc_city` VALUES ('1951', '259', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1952', '259', '东兴', '1', '0');
INSERT INTO `oc_city` VALUES ('1953', '259', '威远', '1', '0');
INSERT INTO `oc_city` VALUES ('1954', '259', '资中', '1', '0');
INSERT INTO `oc_city` VALUES ('1955', '259', '隆昌', '1', '0');
INSERT INTO `oc_city` VALUES ('1956', '260', '市中', '1', '0');
INSERT INTO `oc_city` VALUES ('1957', '260', '沙湾', '1', '0');
INSERT INTO `oc_city` VALUES ('1958', '260', '五通桥', '1', '0');
INSERT INTO `oc_city` VALUES ('1959', '260', '金口河', '1', '0');
INSERT INTO `oc_city` VALUES ('1960', '260', '峨眉山', '1', '0');
INSERT INTO `oc_city` VALUES ('1961', '260', '犍为', '1', '0');
INSERT INTO `oc_city` VALUES ('1962', '260', '井研', '1', '0');
INSERT INTO `oc_city` VALUES ('1963', '260', '夹江', '1', '0');
INSERT INTO `oc_city` VALUES ('1964', '260', '沐川', '1', '0');
INSERT INTO `oc_city` VALUES ('1965', '260', '峨边', '1', '0');
INSERT INTO `oc_city` VALUES ('1966', '260', '马边', '1', '0');
INSERT INTO `oc_city` VALUES ('1967', '261', '顺庆', '1', '0');
INSERT INTO `oc_city` VALUES ('1968', '261', '高坪', '1', '0');
INSERT INTO `oc_city` VALUES ('1969', '261', '嘉陵', '1', '0');
INSERT INTO `oc_city` VALUES ('1970', '261', '阆中', '1', '0');
INSERT INTO `oc_city` VALUES ('1971', '261', '南部', '1', '0');
INSERT INTO `oc_city` VALUES ('1972', '261', '营山', '1', '0');
INSERT INTO `oc_city` VALUES ('1973', '261', '蓬安', '1', '0');
INSERT INTO `oc_city` VALUES ('1974', '261', '仪陇', '1', '0');
INSERT INTO `oc_city` VALUES ('1975', '261', '西充', '1', '0');
INSERT INTO `oc_city` VALUES ('1976', '262', '翠屏', '1', '0');
INSERT INTO `oc_city` VALUES ('1977', '262', '宜宾', '1', '0');
INSERT INTO `oc_city` VALUES ('1978', '262', '南溪', '1', '0');
INSERT INTO `oc_city` VALUES ('1979', '262', '江安', '1', '0');
INSERT INTO `oc_city` VALUES ('1980', '262', '长宁', '1', '0');
INSERT INTO `oc_city` VALUES ('1981', '262', '高县', '1', '0');
INSERT INTO `oc_city` VALUES ('1982', '262', '筠连', '1', '0');
INSERT INTO `oc_city` VALUES ('1983', '262', '珙县', '1', '0');
INSERT INTO `oc_city` VALUES ('1984', '262', '兴文', '1', '0');
INSERT INTO `oc_city` VALUES ('1985', '262', '屏山', '1', '0');
INSERT INTO `oc_city` VALUES ('1986', '263', '广安', '1', '0');
INSERT INTO `oc_city` VALUES ('1987', '263', '华蓥', '1', '0');
INSERT INTO `oc_city` VALUES ('1988', '263', '岳池', '1', '0');
INSERT INTO `oc_city` VALUES ('1989', '263', '武胜', '1', '0');
INSERT INTO `oc_city` VALUES ('1990', '263', '邻水', '1', '0');
INSERT INTO `oc_city` VALUES ('1991', '264', '通川', '1', '0');
INSERT INTO `oc_city` VALUES ('1992', '264', '万源', '1', '0');
INSERT INTO `oc_city` VALUES ('1993', '264', '达县', '1', '0');
INSERT INTO `oc_city` VALUES ('1994', '264', '宣汉', '1', '0');
INSERT INTO `oc_city` VALUES ('1995', '264', '开江', '1', '0');
INSERT INTO `oc_city` VALUES ('1996', '264', '大竹', '1', '0');
INSERT INTO `oc_city` VALUES ('1997', '264', '渠县', '1', '0');
INSERT INTO `oc_city` VALUES ('1998', '265', '东坡', '1', '0');
INSERT INTO `oc_city` VALUES ('1999', '265', '仁寿', '1', '0');
INSERT INTO `oc_city` VALUES ('2000', '265', '彭山', '1', '0');
INSERT INTO `oc_city` VALUES ('2001', '265', '洪雅', '1', '0');
INSERT INTO `oc_city` VALUES ('2002', '265', '丹棱', '1', '0');
INSERT INTO `oc_city` VALUES ('2003', '265', '青神', '1', '0');
INSERT INTO `oc_city` VALUES ('2004', '266', '雨城', '1', '0');
INSERT INTO `oc_city` VALUES ('2005', '266', '名山', '1', '0');
INSERT INTO `oc_city` VALUES ('2006', '266', '荥经', '1', '0');
INSERT INTO `oc_city` VALUES ('2007', '266', '汉源', '1', '0');
INSERT INTO `oc_city` VALUES ('2008', '266', '石棉', '1', '0');
INSERT INTO `oc_city` VALUES ('2009', '266', '天全', '1', '0');
INSERT INTO `oc_city` VALUES ('2010', '266', '芦山', '1', '0');
INSERT INTO `oc_city` VALUES ('2011', '266', '宝兴', '1', '0');
INSERT INTO `oc_city` VALUES ('2012', '267', '巴州', '1', '0');
INSERT INTO `oc_city` VALUES ('2013', '267', '通江', '1', '0');
INSERT INTO `oc_city` VALUES ('2014', '267', '南江', '1', '0');
INSERT INTO `oc_city` VALUES ('2015', '267', '平昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2016', '268', '雁江', '1', '0');
INSERT INTO `oc_city` VALUES ('2017', '268', '简阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2018', '268', '乐至', '1', '0');
INSERT INTO `oc_city` VALUES ('2019', '268', '安岳', '1', '0');
INSERT INTO `oc_city` VALUES ('2020', '269', '马尔康', '1', '0');
INSERT INTO `oc_city` VALUES ('2021', '269', '汶川', '1', '0');
INSERT INTO `oc_city` VALUES ('2022', '269', '理县', '1', '0');
INSERT INTO `oc_city` VALUES ('2023', '269', '茂县', '1', '0');
INSERT INTO `oc_city` VALUES ('2024', '269', '松潘', '1', '0');
INSERT INTO `oc_city` VALUES ('2025', '269', '九寨沟', '1', '0');
INSERT INTO `oc_city` VALUES ('2026', '269', '金川', '1', '0');
INSERT INTO `oc_city` VALUES ('2027', '269', '小金', '1', '0');
INSERT INTO `oc_city` VALUES ('2028', '269', '黑水', '1', '0');
INSERT INTO `oc_city` VALUES ('2029', '269', '壤塘', '1', '0');
INSERT INTO `oc_city` VALUES ('2030', '269', '阿坝', '1', '0');
INSERT INTO `oc_city` VALUES ('2031', '269', '若尔盖', '1', '0');
INSERT INTO `oc_city` VALUES ('2032', '269', '红原', '1', '0');
INSERT INTO `oc_city` VALUES ('2033', '270', '康定', '1', '0');
INSERT INTO `oc_city` VALUES ('2034', '270', '泸定', '1', '0');
INSERT INTO `oc_city` VALUES ('2035', '270', '丹巴', '1', '0');
INSERT INTO `oc_city` VALUES ('2036', '270', '九龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2037', '270', '雅江', '1', '0');
INSERT INTO `oc_city` VALUES ('2038', '270', '道孚', '1', '0');
INSERT INTO `oc_city` VALUES ('2039', '270', '炉霍', '1', '0');
INSERT INTO `oc_city` VALUES ('2040', '270', '甘孜', '1', '0');
INSERT INTO `oc_city` VALUES ('2041', '270', '新龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2042', '270', '德格', '1', '0');
INSERT INTO `oc_city` VALUES ('2043', '270', '白玉', '1', '0');
INSERT INTO `oc_city` VALUES ('2044', '270', '石渠', '1', '0');
INSERT INTO `oc_city` VALUES ('2045', '270', '色达', '1', '0');
INSERT INTO `oc_city` VALUES ('2046', '270', '理塘', '1', '0');
INSERT INTO `oc_city` VALUES ('2047', '270', '巴塘', '1', '0');
INSERT INTO `oc_city` VALUES ('2048', '270', '乡城', '1', '0');
INSERT INTO `oc_city` VALUES ('2049', '270', '稻城', '1', '0');
INSERT INTO `oc_city` VALUES ('2050', '270', '得荣', '1', '0');
INSERT INTO `oc_city` VALUES ('2051', '271', '西昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2052', '271', '盐源', '1', '0');
INSERT INTO `oc_city` VALUES ('2053', '271', '德昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2054', '271', '会理', '1', '0');
INSERT INTO `oc_city` VALUES ('2055', '271', '会东', '1', '0');
INSERT INTO `oc_city` VALUES ('2056', '271', '宁南', '1', '0');
INSERT INTO `oc_city` VALUES ('2057', '271', '普格', '1', '0');
INSERT INTO `oc_city` VALUES ('2058', '271', '布拖', '1', '0');
INSERT INTO `oc_city` VALUES ('2059', '271', '金阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2060', '271', '昭觉', '1', '0');
INSERT INTO `oc_city` VALUES ('2061', '271', '喜德', '1', '0');
INSERT INTO `oc_city` VALUES ('2062', '271', '冕宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2063', '271', '越西', '1', '0');
INSERT INTO `oc_city` VALUES ('2064', '271', '甘洛', '1', '0');
INSERT INTO `oc_city` VALUES ('2065', '271', '美姑', '1', '0');
INSERT INTO `oc_city` VALUES ('2066', '271', '雷波', '1', '0');
INSERT INTO `oc_city` VALUES ('2067', '271', '木里', '1', '0');
INSERT INTO `oc_city` VALUES ('2068', '272', '南明', '1', '0');
INSERT INTO `oc_city` VALUES ('2069', '272', '云岩', '1', '0');
INSERT INTO `oc_city` VALUES ('2070', '272', '花溪', '1', '0');
INSERT INTO `oc_city` VALUES ('2071', '272', '乌当', '1', '0');
INSERT INTO `oc_city` VALUES ('2072', '272', '白云', '1', '0');
INSERT INTO `oc_city` VALUES ('2073', '272', '小河', '1', '0');
INSERT INTO `oc_city` VALUES ('2074', '272', '清镇', '1', '0');
INSERT INTO `oc_city` VALUES ('2075', '272', '开阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2076', '272', '修文', '1', '0');
INSERT INTO `oc_city` VALUES ('2077', '272', '息烽', '1', '0');
INSERT INTO `oc_city` VALUES ('2078', '273', '钟山', '1', '0');
INSERT INTO `oc_city` VALUES ('2079', '273', '盘县', '1', '0');
INSERT INTO `oc_city` VALUES ('2080', '273', '六枝特', '1', '0');
INSERT INTO `oc_city` VALUES ('2081', '273', '水城', '1', '0');
INSERT INTO `oc_city` VALUES ('2082', '274', '红花岗', '1', '0');
INSERT INTO `oc_city` VALUES ('2083', '274', '赤水', '1', '0');
INSERT INTO `oc_city` VALUES ('2084', '274', '仁怀', '1', '0');
INSERT INTO `oc_city` VALUES ('2085', '274', '遵义', '1', '0');
INSERT INTO `oc_city` VALUES ('2086', '274', '桐梓', '1', '0');
INSERT INTO `oc_city` VALUES ('2087', '274', '绥阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2088', '274', '正安', '1', '0');
INSERT INTO `oc_city` VALUES ('2089', '274', '凤冈', '1', '0');
INSERT INTO `oc_city` VALUES ('2090', '274', '湄潭', '1', '0');
INSERT INTO `oc_city` VALUES ('2091', '274', '余庆', '1', '0');
INSERT INTO `oc_city` VALUES ('2092', '274', '习水', '1', '0');
INSERT INTO `oc_city` VALUES ('2093', '274', '道真', '1', '0');
INSERT INTO `oc_city` VALUES ('2094', '274', '务川', '1', '0');
INSERT INTO `oc_city` VALUES ('2095', '275', '西秀', '1', '0');
INSERT INTO `oc_city` VALUES ('2096', '275', '平坝', '1', '0');
INSERT INTO `oc_city` VALUES ('2097', '275', '普定', '1', '0');
INSERT INTO `oc_city` VALUES ('2098', '275', '关岭', '1', '0');
INSERT INTO `oc_city` VALUES ('2099', '275', '镇宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2100', '275', '紫云', '1', '0');
INSERT INTO `oc_city` VALUES ('2101', '276', '铜仁', '1', '0');
INSERT INTO `oc_city` VALUES ('2102', '276', '江口', '1', '0');
INSERT INTO `oc_city` VALUES ('2103', '276', '石阡', '1', '0');
INSERT INTO `oc_city` VALUES ('2104', '276', '思南', '1', '0');
INSERT INTO `oc_city` VALUES ('2105', '276', '德江', '1', '0');
INSERT INTO `oc_city` VALUES ('2106', '276', '玉屏', '1', '0');
INSERT INTO `oc_city` VALUES ('2107', '276', '印江', '1', '0');
INSERT INTO `oc_city` VALUES ('2108', '276', '沿河', '1', '0');
INSERT INTO `oc_city` VALUES ('2109', '276', '松桃', '1', '0');
INSERT INTO `oc_city` VALUES ('2110', '276', '万山特', '1', '0');
INSERT INTO `oc_city` VALUES ('2111', '277', '毕节', '1', '0');
INSERT INTO `oc_city` VALUES ('2112', '277', '大方', '1', '0');
INSERT INTO `oc_city` VALUES ('2113', '277', '黔西', '1', '0');
INSERT INTO `oc_city` VALUES ('2114', '277', '金沙', '1', '0');
INSERT INTO `oc_city` VALUES ('2115', '277', '织金', '1', '0');
INSERT INTO `oc_city` VALUES ('2116', '277', '纳雍', '1', '0');
INSERT INTO `oc_city` VALUES ('2117', '277', '赫章', '1', '0');
INSERT INTO `oc_city` VALUES ('2118', '277', '威宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2119', '278', '兴义', '1', '0');
INSERT INTO `oc_city` VALUES ('2120', '278', '兴仁', '1', '0');
INSERT INTO `oc_city` VALUES ('2121', '278', '普安', '1', '0');
INSERT INTO `oc_city` VALUES ('2122', '278', '晴隆', '1', '0');
INSERT INTO `oc_city` VALUES ('2123', '278', '贞丰', '1', '0');
INSERT INTO `oc_city` VALUES ('2124', '278', '望谟', '1', '0');
INSERT INTO `oc_city` VALUES ('2125', '278', '册亨', '1', '0');
INSERT INTO `oc_city` VALUES ('2126', '278', '安龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2127', '279', '凯里', '1', '0');
INSERT INTO `oc_city` VALUES ('2128', '279', '黄平', '1', '0');
INSERT INTO `oc_city` VALUES ('2129', '279', '施秉', '1', '0');
INSERT INTO `oc_city` VALUES ('2130', '279', '三穗', '1', '0');
INSERT INTO `oc_city` VALUES ('2131', '279', '镇远', '1', '0');
INSERT INTO `oc_city` VALUES ('2132', '279', '岑巩', '1', '0');
INSERT INTO `oc_city` VALUES ('2133', '279', '天柱', '1', '0');
INSERT INTO `oc_city` VALUES ('2134', '279', '锦屏', '1', '0');
INSERT INTO `oc_city` VALUES ('2135', '279', '剑河', '1', '0');
INSERT INTO `oc_city` VALUES ('2136', '279', '台江', '1', '0');
INSERT INTO `oc_city` VALUES ('2137', '279', '黎平', '1', '0');
INSERT INTO `oc_city` VALUES ('2138', '279', '榕江', '1', '0');
INSERT INTO `oc_city` VALUES ('2139', '279', '从江', '1', '0');
INSERT INTO `oc_city` VALUES ('2140', '279', '雷山', '1', '0');
INSERT INTO `oc_city` VALUES ('2141', '279', '麻江', '1', '0');
INSERT INTO `oc_city` VALUES ('2142', '279', '丹寨', '1', '0');
INSERT INTO `oc_city` VALUES ('2143', '280', '都匀', '1', '0');
INSERT INTO `oc_city` VALUES ('2144', '280', '福泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2145', '280', '荔波', '1', '0');
INSERT INTO `oc_city` VALUES ('2146', '280', '贵定', '1', '0');
INSERT INTO `oc_city` VALUES ('2147', '280', '瓮安', '1', '0');
INSERT INTO `oc_city` VALUES ('2148', '280', '独山', '1', '0');
INSERT INTO `oc_city` VALUES ('2149', '280', '平塘', '1', '0');
INSERT INTO `oc_city` VALUES ('2150', '280', '罗甸', '1', '0');
INSERT INTO `oc_city` VALUES ('2151', '280', '长顺', '1', '0');
INSERT INTO `oc_city` VALUES ('2152', '280', '龙里', '1', '0');
INSERT INTO `oc_city` VALUES ('2153', '280', '惠水', '1', '0');
INSERT INTO `oc_city` VALUES ('2154', '280', '三都', '1', '0');
INSERT INTO `oc_city` VALUES ('2155', '281', '盘龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2156', '281', '五华', '1', '0');
INSERT INTO `oc_city` VALUES ('2157', '281', '官渡', '1', '0');
INSERT INTO `oc_city` VALUES ('2158', '281', '西山', '1', '0');
INSERT INTO `oc_city` VALUES ('2159', '281', '东川', '1', '0');
INSERT INTO `oc_city` VALUES ('2160', '281', '安宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2161', '281', '呈贡', '1', '0');
INSERT INTO `oc_city` VALUES ('2162', '281', '晋宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2163', '281', '富民', '1', '0');
INSERT INTO `oc_city` VALUES ('2164', '281', '宜良', '1', '0');
INSERT INTO `oc_city` VALUES ('2165', '281', '嵩明', '1', '0');
INSERT INTO `oc_city` VALUES ('2166', '281', '石林', '1', '0');
INSERT INTO `oc_city` VALUES ('2167', '281', '禄劝', '1', '0');
INSERT INTO `oc_city` VALUES ('2168', '281', '寻甸', '1', '0');
INSERT INTO `oc_city` VALUES ('2169', '282', '麒麟', '1', '0');
INSERT INTO `oc_city` VALUES ('2170', '282', '宣威', '1', '0');
INSERT INTO `oc_city` VALUES ('2171', '282', '马龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2172', '282', '沾益', '1', '0');
INSERT INTO `oc_city` VALUES ('2173', '282', '罗平', '1', '0');
INSERT INTO `oc_city` VALUES ('2174', '282', '师宗', '1', '0');
INSERT INTO `oc_city` VALUES ('2175', '282', '陆良', '1', '0');
INSERT INTO `oc_city` VALUES ('2176', '282', '会泽', '1', '0');
INSERT INTO `oc_city` VALUES ('2177', '283', '红塔', '1', '0');
INSERT INTO `oc_city` VALUES ('2178', '283', '江川', '1', '0');
INSERT INTO `oc_city` VALUES ('2179', '283', '澄江', '1', '0');
INSERT INTO `oc_city` VALUES ('2180', '283', '通海', '1', '0');
INSERT INTO `oc_city` VALUES ('2181', '283', '华宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2182', '283', '易门', '1', '0');
INSERT INTO `oc_city` VALUES ('2183', '283', '峨山', '1', '0');
INSERT INTO `oc_city` VALUES ('2184', '283', '新平', '1', '0');
INSERT INTO `oc_city` VALUES ('2185', '283', '元江', '1', '0');
INSERT INTO `oc_city` VALUES ('2186', '284', '隆阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2187', '284', '施甸', '1', '0');
INSERT INTO `oc_city` VALUES ('2188', '284', '腾冲', '1', '0');
INSERT INTO `oc_city` VALUES ('2189', '284', '龙陵', '1', '0');
INSERT INTO `oc_city` VALUES ('2190', '284', '昌宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2191', '285', '昭阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2192', '285', '鲁甸', '1', '0');
INSERT INTO `oc_city` VALUES ('2193', '285', '巧家', '1', '0');
INSERT INTO `oc_city` VALUES ('2194', '285', '盐津', '1', '0');
INSERT INTO `oc_city` VALUES ('2195', '285', '大关', '1', '0');
INSERT INTO `oc_city` VALUES ('2196', '285', '永善', '1', '0');
INSERT INTO `oc_city` VALUES ('2197', '285', '绥江', '1', '0');
INSERT INTO `oc_city` VALUES ('2198', '285', '镇雄', '1', '0');
INSERT INTO `oc_city` VALUES ('2199', '285', '彝良', '1', '0');
INSERT INTO `oc_city` VALUES ('2200', '285', '威信', '1', '0');
INSERT INTO `oc_city` VALUES ('2201', '285', '水富', '1', '0');
INSERT INTO `oc_city` VALUES ('2202', '286', '思茅', '1', '0');
INSERT INTO `oc_city` VALUES ('2203', '286', '普洱', '1', '0');
INSERT INTO `oc_city` VALUES ('2204', '286', '墨江', '1', '0');
INSERT INTO `oc_city` VALUES ('2205', '286', '景东', '1', '0');
INSERT INTO `oc_city` VALUES ('2206', '286', '景谷', '1', '0');
INSERT INTO `oc_city` VALUES ('2207', '286', '镇沅', '1', '0');
INSERT INTO `oc_city` VALUES ('2208', '286', '江城', '1', '0');
INSERT INTO `oc_city` VALUES ('2209', '286', '孟连', '1', '0');
INSERT INTO `oc_city` VALUES ('2210', '286', '澜沧', '1', '0');
INSERT INTO `oc_city` VALUES ('2211', '286', '西盟', '1', '0');
INSERT INTO `oc_city` VALUES ('2212', '287', '临沧', '1', '0');
INSERT INTO `oc_city` VALUES ('2213', '287', '凤庆', '1', '0');
INSERT INTO `oc_city` VALUES ('2214', '287', '云县', '1', '0');
INSERT INTO `oc_city` VALUES ('2215', '287', '永德', '1', '0');
INSERT INTO `oc_city` VALUES ('2216', '287', '镇康', '1', '0');
INSERT INTO `oc_city` VALUES ('2217', '287', '双江', '1', '0');
INSERT INTO `oc_city` VALUES ('2218', '287', '耿马', '1', '0');
INSERT INTO `oc_city` VALUES ('2219', '287', '沧源', '1', '0');
INSERT INTO `oc_city` VALUES ('2220', '288', '丽江', '1', '0');
INSERT INTO `oc_city` VALUES ('2221', '288', '永胜', '1', '0');
INSERT INTO `oc_city` VALUES ('2222', '288', '华坪', '1', '0');
INSERT INTO `oc_city` VALUES ('2223', '288', '宁蒗', '1', '0');
INSERT INTO `oc_city` VALUES ('2224', '289', '文山', '1', '0');
INSERT INTO `oc_city` VALUES ('2225', '289', '砚山', '1', '0');
INSERT INTO `oc_city` VALUES ('2226', '289', '西畴', '1', '0');
INSERT INTO `oc_city` VALUES ('2227', '289', '麻栗坡', '1', '0');
INSERT INTO `oc_city` VALUES ('2228', '289', '马关', '1', '0');
INSERT INTO `oc_city` VALUES ('2229', '289', '丘北', '1', '0');
INSERT INTO `oc_city` VALUES ('2230', '289', '广南', '1', '0');
INSERT INTO `oc_city` VALUES ('2231', '289', '富宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2232', '290', '个旧', '1', '0');
INSERT INTO `oc_city` VALUES ('2233', '290', '开远', '1', '0');
INSERT INTO `oc_city` VALUES ('2234', '290', '蒙自', '1', '0');
INSERT INTO `oc_city` VALUES ('2235', '290', '绿春', '1', '0');
INSERT INTO `oc_city` VALUES ('2236', '290', '建水', '1', '0');
INSERT INTO `oc_city` VALUES ('2237', '290', '石屏', '1', '0');
INSERT INTO `oc_city` VALUES ('2238', '290', '弥勒', '1', '0');
INSERT INTO `oc_city` VALUES ('2239', '290', '泸西', '1', '0');
INSERT INTO `oc_city` VALUES ('2240', '290', '元阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2241', '290', '红河', '1', '0');
INSERT INTO `oc_city` VALUES ('2242', '290', '金平', '1', '0');
INSERT INTO `oc_city` VALUES ('2243', '290', '河口', '1', '0');
INSERT INTO `oc_city` VALUES ('2244', '290', '屏边', '1', '0');
INSERT INTO `oc_city` VALUES ('2245', '291', '景洪', '1', '0');
INSERT INTO `oc_city` VALUES ('2246', '291', '勐海', '1', '0');
INSERT INTO `oc_city` VALUES ('2247', '291', '勐腊', '1', '0');
INSERT INTO `oc_city` VALUES ('2248', '292', '楚雄', '1', '0');
INSERT INTO `oc_city` VALUES ('2249', '292', '双柏', '1', '0');
INSERT INTO `oc_city` VALUES ('2250', '292', '牟定', '1', '0');
INSERT INTO `oc_city` VALUES ('2251', '292', '南华', '1', '0');
INSERT INTO `oc_city` VALUES ('2252', '292', '姚安', '1', '0');
INSERT INTO `oc_city` VALUES ('2253', '292', '大姚', '1', '0');
INSERT INTO `oc_city` VALUES ('2254', '292', '永仁', '1', '0');
INSERT INTO `oc_city` VALUES ('2255', '292', '元谋', '1', '0');
INSERT INTO `oc_city` VALUES ('2256', '292', '武定', '1', '0');
INSERT INTO `oc_city` VALUES ('2257', '292', '禄丰', '1', '0');
INSERT INTO `oc_city` VALUES ('2258', '293', '大理', '1', '0');
INSERT INTO `oc_city` VALUES ('2259', '293', '祥云', '1', '0');
INSERT INTO `oc_city` VALUES ('2260', '293', '宾川', '1', '0');
INSERT INTO `oc_city` VALUES ('2261', '293', '弥渡', '1', '0');
INSERT INTO `oc_city` VALUES ('2262', '293', '永平', '1', '0');
INSERT INTO `oc_city` VALUES ('2263', '293', '云龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2264', '293', '洱源', '1', '0');
INSERT INTO `oc_city` VALUES ('2265', '293', '剑川', '1', '0');
INSERT INTO `oc_city` VALUES ('2266', '293', '鹤庆', '1', '0');
INSERT INTO `oc_city` VALUES ('2267', '293', '漾濞', '1', '0');
INSERT INTO `oc_city` VALUES ('2268', '293', '南涧', '1', '0');
INSERT INTO `oc_city` VALUES ('2269', '293', '巍山', '1', '0');
INSERT INTO `oc_city` VALUES ('2270', '294', '潞西', '1', '0');
INSERT INTO `oc_city` VALUES ('2271', '294', '瑞丽', '1', '0');
INSERT INTO `oc_city` VALUES ('2272', '294', '梁河', '1', '0');
INSERT INTO `oc_city` VALUES ('2273', '294', '盈江', '1', '0');
INSERT INTO `oc_city` VALUES ('2274', '294', '陇川', '1', '0');
INSERT INTO `oc_city` VALUES ('2275', '295', '泸水', '1', '0');
INSERT INTO `oc_city` VALUES ('2276', '295', '福贡', '1', '0');
INSERT INTO `oc_city` VALUES ('2277', '295', '贡山', '1', '0');
INSERT INTO `oc_city` VALUES ('2278', '295', '兰坪', '1', '0');
INSERT INTO `oc_city` VALUES ('2279', '296', '香格里拉', '1', '0');
INSERT INTO `oc_city` VALUES ('2280', '296', '德钦', '1', '0');
INSERT INTO `oc_city` VALUES ('2281', '296', '维西', '1', '0');
INSERT INTO `oc_city` VALUES ('2282', '297', '城关', '1', '0');
INSERT INTO `oc_city` VALUES ('2283', '297', '林周', '1', '0');
INSERT INTO `oc_city` VALUES ('2284', '297', '当雄', '1', '0');
INSERT INTO `oc_city` VALUES ('2285', '297', '尼木', '1', '0');
INSERT INTO `oc_city` VALUES ('2286', '297', '曲水', '1', '0');
INSERT INTO `oc_city` VALUES ('2287', '297', '堆龙德庆', '1', '0');
INSERT INTO `oc_city` VALUES ('2288', '297', '达孜', '1', '0');
INSERT INTO `oc_city` VALUES ('2289', '297', '墨竹工卡', '1', '0');
INSERT INTO `oc_city` VALUES ('2290', '298', '那曲', '1', '0');
INSERT INTO `oc_city` VALUES ('2291', '298', '嘉黎', '1', '0');
INSERT INTO `oc_city` VALUES ('2292', '298', '比如', '1', '0');
INSERT INTO `oc_city` VALUES ('2293', '298', '聂荣', '1', '0');
INSERT INTO `oc_city` VALUES ('2294', '298', '安多', '1', '0');
INSERT INTO `oc_city` VALUES ('2295', '298', '申扎', '1', '0');
INSERT INTO `oc_city` VALUES ('2296', '298', '索县', '1', '0');
INSERT INTO `oc_city` VALUES ('2297', '298', '班戈', '1', '0');
INSERT INTO `oc_city` VALUES ('2298', '298', '巴青', '1', '0');
INSERT INTO `oc_city` VALUES ('2299', '298', '尼玛', '1', '0');
INSERT INTO `oc_city` VALUES ('2300', '299', '昌都', '1', '0');
INSERT INTO `oc_city` VALUES ('2301', '299', '江达', '1', '0');
INSERT INTO `oc_city` VALUES ('2302', '299', '贡觉', '1', '0');
INSERT INTO `oc_city` VALUES ('2303', '299', '类乌齐', '1', '0');
INSERT INTO `oc_city` VALUES ('2304', '299', '丁青', '1', '0');
INSERT INTO `oc_city` VALUES ('2305', '299', '察雅', '1', '0');
INSERT INTO `oc_city` VALUES ('2306', '299', '八宿', '1', '0');
INSERT INTO `oc_city` VALUES ('2307', '299', '左贡', '1', '0');
INSERT INTO `oc_city` VALUES ('2308', '299', '芒康', '1', '0');
INSERT INTO `oc_city` VALUES ('2309', '299', '洛隆', '1', '0');
INSERT INTO `oc_city` VALUES ('2310', '299', '边坝', '1', '0');
INSERT INTO `oc_city` VALUES ('2311', '300', '乃东', '1', '0');
INSERT INTO `oc_city` VALUES ('2312', '300', '扎囊', '1', '0');
INSERT INTO `oc_city` VALUES ('2313', '300', '贡嘎', '1', '0');
INSERT INTO `oc_city` VALUES ('2314', '300', '桑日', '1', '0');
INSERT INTO `oc_city` VALUES ('2315', '300', '琼结', '1', '0');
INSERT INTO `oc_city` VALUES ('2316', '300', '曲松', '1', '0');
INSERT INTO `oc_city` VALUES ('2317', '300', '措美', '1', '0');
INSERT INTO `oc_city` VALUES ('2318', '300', '洛扎', '1', '0');
INSERT INTO `oc_city` VALUES ('2319', '300', '加查', '1', '0');
INSERT INTO `oc_city` VALUES ('2320', '300', '隆子', '1', '0');
INSERT INTO `oc_city` VALUES ('2321', '300', '错那', '1', '0');
INSERT INTO `oc_city` VALUES ('2322', '300', '浪卡子', '1', '0');
INSERT INTO `oc_city` VALUES ('2323', '301', '日喀则', '1', '0');
INSERT INTO `oc_city` VALUES ('2324', '301', '南木林', '1', '0');
INSERT INTO `oc_city` VALUES ('2325', '301', '江孜', '1', '0');
INSERT INTO `oc_city` VALUES ('2326', '301', '定日', '1', '0');
INSERT INTO `oc_city` VALUES ('2327', '301', '萨迦', '1', '0');
INSERT INTO `oc_city` VALUES ('2328', '301', '拉孜', '1', '0');
INSERT INTO `oc_city` VALUES ('2329', '301', '昂仁', '1', '0');
INSERT INTO `oc_city` VALUES ('2330', '301', '谢通门', '1', '0');
INSERT INTO `oc_city` VALUES ('2331', '301', '白朗', '1', '0');
INSERT INTO `oc_city` VALUES ('2332', '301', '仁布', '1', '0');
INSERT INTO `oc_city` VALUES ('2333', '301', '康马', '1', '0');
INSERT INTO `oc_city` VALUES ('2334', '301', '定结', '1', '0');
INSERT INTO `oc_city` VALUES ('2335', '301', '仲巴', '1', '0');
INSERT INTO `oc_city` VALUES ('2336', '301', '亚东', '1', '0');
INSERT INTO `oc_city` VALUES ('2337', '301', '吉隆', '1', '0');
INSERT INTO `oc_city` VALUES ('2338', '301', '聂拉木', '1', '0');
INSERT INTO `oc_city` VALUES ('2339', '301', '萨嘎', '1', '0');
INSERT INTO `oc_city` VALUES ('2340', '301', '岗巴', '1', '0');
INSERT INTO `oc_city` VALUES ('2341', '302', '噶尔', '1', '0');
INSERT INTO `oc_city` VALUES ('2342', '302', '普兰', '1', '0');
INSERT INTO `oc_city` VALUES ('2343', '302', '札达', '1', '0');
INSERT INTO `oc_city` VALUES ('2344', '302', '日土', '1', '0');
INSERT INTO `oc_city` VALUES ('2345', '302', '革吉', '1', '0');
INSERT INTO `oc_city` VALUES ('2346', '302', '改则', '1', '0');
INSERT INTO `oc_city` VALUES ('2347', '302', '措勤', '1', '0');
INSERT INTO `oc_city` VALUES ('2348', '303', '林芝', '1', '0');
INSERT INTO `oc_city` VALUES ('2349', '303', '工布江达', '1', '0');
INSERT INTO `oc_city` VALUES ('2350', '303', '米林', '1', '0');
INSERT INTO `oc_city` VALUES ('2351', '303', '墨脱', '1', '0');
INSERT INTO `oc_city` VALUES ('2352', '303', '波密', '1', '0');
INSERT INTO `oc_city` VALUES ('2353', '303', '察隅', '1', '0');
INSERT INTO `oc_city` VALUES ('2354', '303', '朗县', '1', '0');
INSERT INTO `oc_city` VALUES ('2355', '304', '莲湖', '1', '0');
INSERT INTO `oc_city` VALUES ('2356', '304', '新城', '1', '0');
INSERT INTO `oc_city` VALUES ('2357', '304', '碑林', '1', '0');
INSERT INTO `oc_city` VALUES ('2358', '304', '灞桥', '1', '0');
INSERT INTO `oc_city` VALUES ('2359', '304', '未央', '1', '0');
INSERT INTO `oc_city` VALUES ('2360', '304', '雁塔', '1', '0');
INSERT INTO `oc_city` VALUES ('2361', '304', '阎良', '1', '0');
INSERT INTO `oc_city` VALUES ('2362', '304', '临潼', '1', '0');
INSERT INTO `oc_city` VALUES ('2363', '304', '长安', '1', '0');
INSERT INTO `oc_city` VALUES ('2364', '304', '蓝田', '1', '0');
INSERT INTO `oc_city` VALUES ('2365', '304', '周至', '1', '0');
INSERT INTO `oc_city` VALUES ('2366', '304', '户县', '1', '0');
INSERT INTO `oc_city` VALUES ('2367', '304', '高陵', '1', '0');
INSERT INTO `oc_city` VALUES ('2368', '305', '王益', '1', '0');
INSERT INTO `oc_city` VALUES ('2369', '305', '印台', '1', '0');
INSERT INTO `oc_city` VALUES ('2370', '305', '耀州', '1', '0');
INSERT INTO `oc_city` VALUES ('2371', '305', '宜君', '1', '0');
INSERT INTO `oc_city` VALUES ('2372', '306', '渭滨', '1', '0');
INSERT INTO `oc_city` VALUES ('2373', '306', '金台', '1', '0');
INSERT INTO `oc_city` VALUES ('2374', '306', '宝鸡', '1', '0');
INSERT INTO `oc_city` VALUES ('2375', '306', '凤翔', '1', '0');
INSERT INTO `oc_city` VALUES ('2376', '306', '岐山', '1', '0');
INSERT INTO `oc_city` VALUES ('2377', '306', '扶风', '1', '0');
INSERT INTO `oc_city` VALUES ('2378', '306', '眉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2379', '306', '陇县', '1', '0');
INSERT INTO `oc_city` VALUES ('2380', '306', '千阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2381', '306', '麟游', '1', '0');
INSERT INTO `oc_city` VALUES ('2382', '306', '凤县', '1', '0');
INSERT INTO `oc_city` VALUES ('2383', '306', '太白', '1', '0');
INSERT INTO `oc_city` VALUES ('2384', '307', '秦都', '1', '0');
INSERT INTO `oc_city` VALUES ('2385', '307', '杨凌', '1', '0');
INSERT INTO `oc_city` VALUES ('2386', '307', '渭城', '1', '0');
INSERT INTO `oc_city` VALUES ('2387', '307', '兴平', '1', '0');
INSERT INTO `oc_city` VALUES ('2388', '307', '三原', '1', '0');
INSERT INTO `oc_city` VALUES ('2389', '307', '泾阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2390', '307', '乾县', '1', '0');
INSERT INTO `oc_city` VALUES ('2391', '307', '礼泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2392', '307', '永寿', '1', '0');
INSERT INTO `oc_city` VALUES ('2393', '307', '彬县', '1', '0');
INSERT INTO `oc_city` VALUES ('2394', '307', '长武', '1', '0');
INSERT INTO `oc_city` VALUES ('2395', '307', '旬邑', '1', '0');
INSERT INTO `oc_city` VALUES ('2396', '307', '淳化', '1', '0');
INSERT INTO `oc_city` VALUES ('2397', '307', '武功', '1', '0');
INSERT INTO `oc_city` VALUES ('2398', '308', '临渭', '1', '0');
INSERT INTO `oc_city` VALUES ('2399', '308', '华阴', '1', '0');
INSERT INTO `oc_city` VALUES ('2400', '308', '韩城', '1', '0');
INSERT INTO `oc_city` VALUES ('2401', '308', '华县', '1', '0');
INSERT INTO `oc_city` VALUES ('2402', '308', '潼关', '1', '0');
INSERT INTO `oc_city` VALUES ('2403', '308', '大荔', '1', '0');
INSERT INTO `oc_city` VALUES ('2404', '308', '蒲城', '1', '0');
INSERT INTO `oc_city` VALUES ('2405', '308', '澄城', '1', '0');
INSERT INTO `oc_city` VALUES ('2406', '308', '白水', '1', '0');
INSERT INTO `oc_city` VALUES ('2407', '308', '合阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2408', '308', '富平', '1', '0');
INSERT INTO `oc_city` VALUES ('2409', '309', '宝塔', '1', '0');
INSERT INTO `oc_city` VALUES ('2410', '309', '延长', '1', '0');
INSERT INTO `oc_city` VALUES ('2411', '309', '延川', '1', '0');
INSERT INTO `oc_city` VALUES ('2412', '309', '子长', '1', '0');
INSERT INTO `oc_city` VALUES ('2413', '309', '安塞', '1', '0');
INSERT INTO `oc_city` VALUES ('2414', '309', '志丹', '1', '0');
INSERT INTO `oc_city` VALUES ('2415', '309', '吴旗', '1', '0');
INSERT INTO `oc_city` VALUES ('2416', '309', '甘泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2417', '309', '富县', '1', '0');
INSERT INTO `oc_city` VALUES ('2418', '309', '洛川', '1', '0');
INSERT INTO `oc_city` VALUES ('2419', '309', '宜川', '1', '0');
INSERT INTO `oc_city` VALUES ('2420', '309', '黄龙', '1', '0');
INSERT INTO `oc_city` VALUES ('2421', '309', '黄陵', '1', '0');
INSERT INTO `oc_city` VALUES ('2422', '310', '汉台', '1', '0');
INSERT INTO `oc_city` VALUES ('2423', '310', '南郑', '1', '0');
INSERT INTO `oc_city` VALUES ('2424', '310', '城固', '1', '0');
INSERT INTO `oc_city` VALUES ('2425', '310', '洋县', '1', '0');
INSERT INTO `oc_city` VALUES ('2426', '310', '西乡', '1', '0');
INSERT INTO `oc_city` VALUES ('2427', '310', '勉县', '1', '0');
INSERT INTO `oc_city` VALUES ('2428', '310', '宁强', '1', '0');
INSERT INTO `oc_city` VALUES ('2429', '310', '略阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2430', '310', '镇巴', '1', '0');
INSERT INTO `oc_city` VALUES ('2431', '310', '留坝', '1', '0');
INSERT INTO `oc_city` VALUES ('2432', '310', '佛坪', '1', '0');
INSERT INTO `oc_city` VALUES ('2433', '311', '榆阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2434', '311', '神木', '1', '0');
INSERT INTO `oc_city` VALUES ('2435', '311', '府谷', '1', '0');
INSERT INTO `oc_city` VALUES ('2436', '311', '横山', '1', '0');
INSERT INTO `oc_city` VALUES ('2437', '311', '靖边', '1', '0');
INSERT INTO `oc_city` VALUES ('2438', '311', '定边', '1', '0');
INSERT INTO `oc_city` VALUES ('2439', '311', '绥德', '1', '0');
INSERT INTO `oc_city` VALUES ('2440', '311', '米脂', '1', '0');
INSERT INTO `oc_city` VALUES ('2441', '311', '佳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2442', '311', '吴堡', '1', '0');
INSERT INTO `oc_city` VALUES ('2443', '311', '清涧', '1', '0');
INSERT INTO `oc_city` VALUES ('2444', '311', '子洲', '1', '0');
INSERT INTO `oc_city` VALUES ('2445', '312', '汉滨', '1', '0');
INSERT INTO `oc_city` VALUES ('2446', '312', '汉阴', '1', '0');
INSERT INTO `oc_city` VALUES ('2447', '312', '石泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2448', '312', '宁陕', '1', '0');
INSERT INTO `oc_city` VALUES ('2449', '312', '紫阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2450', '312', '岚皋', '1', '0');
INSERT INTO `oc_city` VALUES ('2451', '312', '平利', '1', '0');
INSERT INTO `oc_city` VALUES ('2452', '312', '镇坪', '1', '0');
INSERT INTO `oc_city` VALUES ('2453', '312', '旬阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2454', '312', '白河', '1', '0');
INSERT INTO `oc_city` VALUES ('2455', '313', '商州', '1', '0');
INSERT INTO `oc_city` VALUES ('2456', '313', '洛南', '1', '0');
INSERT INTO `oc_city` VALUES ('2457', '313', '丹凤', '1', '0');
INSERT INTO `oc_city` VALUES ('2458', '313', '商南', '1', '0');
INSERT INTO `oc_city` VALUES ('2459', '313', '山阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2460', '313', '镇安', '1', '0');
INSERT INTO `oc_city` VALUES ('2461', '313', '柞水', '1', '0');
INSERT INTO `oc_city` VALUES ('2462', '314', '城关', '1', '0');
INSERT INTO `oc_city` VALUES ('2463', '314', '七里河', '1', '0');
INSERT INTO `oc_city` VALUES ('2464', '314', '西固', '1', '0');
INSERT INTO `oc_city` VALUES ('2465', '314', '安宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2466', '314', '红古', '1', '0');
INSERT INTO `oc_city` VALUES ('2467', '314', '永登', '1', '0');
INSERT INTO `oc_city` VALUES ('2468', '314', '皋兰', '1', '0');
INSERT INTO `oc_city` VALUES ('2469', '314', '榆中', '1', '0');
INSERT INTO `oc_city` VALUES ('2470', '315', '金川', '1', '0');
INSERT INTO `oc_city` VALUES ('2471', '315', '永昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2472', '316', '白银', '1', '0');
INSERT INTO `oc_city` VALUES ('2473', '316', '平川', '1', '0');
INSERT INTO `oc_city` VALUES ('2474', '316', '靖远', '1', '0');
INSERT INTO `oc_city` VALUES ('2475', '316', '会宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2476', '316', '景泰', '1', '0');
INSERT INTO `oc_city` VALUES ('2477', '317', '秦城', '1', '0');
INSERT INTO `oc_city` VALUES ('2478', '317', '北道', '1', '0');
INSERT INTO `oc_city` VALUES ('2479', '317', '清水', '1', '0');
INSERT INTO `oc_city` VALUES ('2480', '317', '秦安', '1', '0');
INSERT INTO `oc_city` VALUES ('2481', '317', '甘谷', '1', '0');
INSERT INTO `oc_city` VALUES ('2482', '317', '武山', '1', '0');
INSERT INTO `oc_city` VALUES ('2483', '317', '张家川', '1', '0');
INSERT INTO `oc_city` VALUES ('2484', '319', '凉州', '1', '0');
INSERT INTO `oc_city` VALUES ('2485', '319', '民勤', '1', '0');
INSERT INTO `oc_city` VALUES ('2486', '319', '古浪', '1', '0');
INSERT INTO `oc_city` VALUES ('2487', '319', '天祝', '1', '0');
INSERT INTO `oc_city` VALUES ('2488', '320', '甘州', '1', '0');
INSERT INTO `oc_city` VALUES ('2489', '320', '民乐', '1', '0');
INSERT INTO `oc_city` VALUES ('2490', '320', '临泽', '1', '0');
INSERT INTO `oc_city` VALUES ('2491', '320', '高台', '1', '0');
INSERT INTO `oc_city` VALUES ('2492', '320', '山丹', '1', '0');
INSERT INTO `oc_city` VALUES ('2493', '320', '肃南', '1', '0');
INSERT INTO `oc_city` VALUES ('2494', '321', '崆峒', '1', '0');
INSERT INTO `oc_city` VALUES ('2495', '321', '泾川', '1', '0');
INSERT INTO `oc_city` VALUES ('2496', '321', '灵台', '1', '0');
INSERT INTO `oc_city` VALUES ('2497', '321', '崇信', '1', '0');
INSERT INTO `oc_city` VALUES ('2498', '321', '华亭', '1', '0');
INSERT INTO `oc_city` VALUES ('2499', '321', '庄浪', '1', '0');
INSERT INTO `oc_city` VALUES ('2500', '321', '静宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2501', '322', '肃州', '1', '0');
INSERT INTO `oc_city` VALUES ('2502', '322', '玉门', '1', '0');
INSERT INTO `oc_city` VALUES ('2503', '322', '敦煌', '1', '0');
INSERT INTO `oc_city` VALUES ('2504', '322', '金塔', '1', '0');
INSERT INTO `oc_city` VALUES ('2505', '322', '安西', '1', '0');
INSERT INTO `oc_city` VALUES ('2506', '322', '肃北', '1', '0');
INSERT INTO `oc_city` VALUES ('2507', '322', '阿克塞', '1', '0');
INSERT INTO `oc_city` VALUES ('2508', '323', '西峰', '1', '0');
INSERT INTO `oc_city` VALUES ('2509', '323', '庆城', '1', '0');
INSERT INTO `oc_city` VALUES ('2510', '323', '环县', '1', '0');
INSERT INTO `oc_city` VALUES ('2511', '323', '华池', '1', '0');
INSERT INTO `oc_city` VALUES ('2512', '323', '合水', '1', '0');
INSERT INTO `oc_city` VALUES ('2513', '323', '正宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2514', '323', '宁县', '1', '0');
INSERT INTO `oc_city` VALUES ('2515', '323', '镇原', '1', '0');
INSERT INTO `oc_city` VALUES ('2516', '324', '定西', '1', '0');
INSERT INTO `oc_city` VALUES ('2517', '324', '通渭', '1', '0');
INSERT INTO `oc_city` VALUES ('2518', '324', '临洮', '1', '0');
INSERT INTO `oc_city` VALUES ('2519', '324', '漳县', '1', '0');
INSERT INTO `oc_city` VALUES ('2520', '324', '岷县', '1', '0');
INSERT INTO `oc_city` VALUES ('2521', '324', '渭源', '1', '0');
INSERT INTO `oc_city` VALUES ('2522', '324', '陇西', '1', '0');
INSERT INTO `oc_city` VALUES ('2523', '325', '成县', '1', '0');
INSERT INTO `oc_city` VALUES ('2524', '325', '武都', '1', '0');
INSERT INTO `oc_city` VALUES ('2525', '325', '宕昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2526', '325', '康县', '1', '0');
INSERT INTO `oc_city` VALUES ('2527', '325', '文县', '1', '0');
INSERT INTO `oc_city` VALUES ('2528', '325', '西和', '1', '0');
INSERT INTO `oc_city` VALUES ('2529', '325', '礼县', '1', '0');
INSERT INTO `oc_city` VALUES ('2530', '325', '两当', '1', '0');
INSERT INTO `oc_city` VALUES ('2531', '325', '徽县', '1', '0');
INSERT INTO `oc_city` VALUES ('2532', '326', '合作', '1', '0');
INSERT INTO `oc_city` VALUES ('2533', '326', '临潭', '1', '0');
INSERT INTO `oc_city` VALUES ('2534', '326', '卓尼', '1', '0');
INSERT INTO `oc_city` VALUES ('2535', '326', '舟曲', '1', '0');
INSERT INTO `oc_city` VALUES ('2536', '326', '迭部', '1', '0');
INSERT INTO `oc_city` VALUES ('2537', '326', '玛曲', '1', '0');
INSERT INTO `oc_city` VALUES ('2538', '326', '碌曲', '1', '0');
INSERT INTO `oc_city` VALUES ('2539', '326', '夏河', '1', '0');
INSERT INTO `oc_city` VALUES ('2540', '327', '临夏', '1', '0');
INSERT INTO `oc_city` VALUES ('2541', '327', '临夏', '1', '0');
INSERT INTO `oc_city` VALUES ('2542', '327', '康乐', '1', '0');
INSERT INTO `oc_city` VALUES ('2543', '327', '永靖', '1', '0');
INSERT INTO `oc_city` VALUES ('2544', '327', '广河', '1', '0');
INSERT INTO `oc_city` VALUES ('2545', '327', '和政', '1', '0');
INSERT INTO `oc_city` VALUES ('2546', '327', '东乡族自治县', '1', '0');
INSERT INTO `oc_city` VALUES ('2547', '327', '积石山', '1', '0');
INSERT INTO `oc_city` VALUES ('2548', '328', '城中', '1', '0');
INSERT INTO `oc_city` VALUES ('2549', '328', '城东', '1', '0');
INSERT INTO `oc_city` VALUES ('2550', '328', '城西', '1', '0');
INSERT INTO `oc_city` VALUES ('2551', '328', '城北', '1', '0');
INSERT INTO `oc_city` VALUES ('2552', '328', '大通', '1', '0');
INSERT INTO `oc_city` VALUES ('2553', '328', '湟源', '1', '0');
INSERT INTO `oc_city` VALUES ('2554', '328', '湟中', '1', '0');
INSERT INTO `oc_city` VALUES ('2555', '329', '平安', '1', '0');
INSERT INTO `oc_city` VALUES ('2556', '329', '乐都', '1', '0');
INSERT INTO `oc_city` VALUES ('2557', '329', '民和', '1', '0');
INSERT INTO `oc_city` VALUES ('2558', '329', '互助', '1', '0');
INSERT INTO `oc_city` VALUES ('2559', '329', '化隆', '1', '0');
INSERT INTO `oc_city` VALUES ('2560', '329', '循化', '1', '0');
INSERT INTO `oc_city` VALUES ('2561', '330', '海晏', '1', '0');
INSERT INTO `oc_city` VALUES ('2562', '330', '祁连', '1', '0');
INSERT INTO `oc_city` VALUES ('2563', '330', '刚察', '1', '0');
INSERT INTO `oc_city` VALUES ('2564', '330', '门源', '1', '0');
INSERT INTO `oc_city` VALUES ('2565', '331', '同仁', '1', '0');
INSERT INTO `oc_city` VALUES ('2566', '331', '尖扎', '1', '0');
INSERT INTO `oc_city` VALUES ('2567', '331', '泽库', '1', '0');
INSERT INTO `oc_city` VALUES ('2568', '331', '河南', '1', '0');
INSERT INTO `oc_city` VALUES ('2569', '332', '共和', '1', '0');
INSERT INTO `oc_city` VALUES ('2570', '332', '同德', '1', '0');
INSERT INTO `oc_city` VALUES ('2571', '332', '贵德', '1', '0');
INSERT INTO `oc_city` VALUES ('2572', '332', '兴海', '1', '0');
INSERT INTO `oc_city` VALUES ('2573', '332', '贵南', '1', '0');
INSERT INTO `oc_city` VALUES ('2574', '333', '玛沁', '1', '0');
INSERT INTO `oc_city` VALUES ('2575', '333', '班玛', '1', '0');
INSERT INTO `oc_city` VALUES ('2576', '333', '甘德', '1', '0');
INSERT INTO `oc_city` VALUES ('2577', '333', '达日', '1', '0');
INSERT INTO `oc_city` VALUES ('2578', '333', '久治', '1', '0');
INSERT INTO `oc_city` VALUES ('2579', '333', '玛多', '1', '0');
INSERT INTO `oc_city` VALUES ('2580', '334', '玉树', '1', '0');
INSERT INTO `oc_city` VALUES ('2581', '334', '杂多', '1', '0');
INSERT INTO `oc_city` VALUES ('2582', '334', '称多', '1', '0');
INSERT INTO `oc_city` VALUES ('2583', '334', '治多', '1', '0');
INSERT INTO `oc_city` VALUES ('2584', '334', '囊谦', '1', '0');
INSERT INTO `oc_city` VALUES ('2585', '334', '曲麻莱', '1', '0');
INSERT INTO `oc_city` VALUES ('2586', '335', '德令哈', '1', '0');
INSERT INTO `oc_city` VALUES ('2587', '335', '格尔木', '1', '0');
INSERT INTO `oc_city` VALUES ('2588', '335', '乌兰', '1', '0');
INSERT INTO `oc_city` VALUES ('2589', '335', '都兰', '1', '0');
INSERT INTO `oc_city` VALUES ('2590', '335', '天峻', '1', '0');
INSERT INTO `oc_city` VALUES ('2591', '336', '西夏', '1', '0');
INSERT INTO `oc_city` VALUES ('2592', '336', '贺兰', '1', '0');
INSERT INTO `oc_city` VALUES ('2593', '336', '新城', '1', '0');
INSERT INTO `oc_city` VALUES ('2594', '336', '郊区', '1', '0');
INSERT INTO `oc_city` VALUES ('2595', '337', '大武口', '1', '0');
INSERT INTO `oc_city` VALUES ('2596', '337', '石嘴山', '1', '0');
INSERT INTO `oc_city` VALUES ('2597', '337', '平罗', '1', '0');
INSERT INTO `oc_city` VALUES ('2598', '337', '陶乐', '1', '0');
INSERT INTO `oc_city` VALUES ('2599', '337', '惠农', '1', '0');
INSERT INTO `oc_city` VALUES ('2600', '338', '利通', '1', '0');
INSERT INTO `oc_city` VALUES ('2601', '338', '青铜峡', '1', '0');
INSERT INTO `oc_city` VALUES ('2602', '338', '中卫', '1', '0');
INSERT INTO `oc_city` VALUES ('2603', '338', '中宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2604', '338', '盐池', '1', '0');
INSERT INTO `oc_city` VALUES ('2605', '338', '同心', '1', '0');
INSERT INTO `oc_city` VALUES ('2606', '339', '原州', '1', '0');
INSERT INTO `oc_city` VALUES ('2607', '339', '海原', '1', '0');
INSERT INTO `oc_city` VALUES ('2608', '339', '西吉', '1', '0');
INSERT INTO `oc_city` VALUES ('2609', '339', '隆德', '1', '0');
INSERT INTO `oc_city` VALUES ('2610', '339', '泾源', '1', '0');
INSERT INTO `oc_city` VALUES ('2611', '339', '彭阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2612', '340', '天山', '1', '0');
INSERT INTO `oc_city` VALUES ('2613', '340', '沙依巴克', '1', '0');
INSERT INTO `oc_city` VALUES ('2614', '340', '新市', '1', '0');
INSERT INTO `oc_city` VALUES ('2615', '340', '水磨沟', '1', '0');
INSERT INTO `oc_city` VALUES ('2616', '340', '头屯河', '1', '0');
INSERT INTO `oc_city` VALUES ('2617', '340', '达坂城', '1', '0');
INSERT INTO `oc_city` VALUES ('2618', '340', '乌鲁木齐', '1', '0');
INSERT INTO `oc_city` VALUES ('2619', '341', '克拉玛依', '1', '0');
INSERT INTO `oc_city` VALUES ('2620', '341', '独山子', '1', '0');
INSERT INTO `oc_city` VALUES ('2621', '341', '白碱滩', '1', '0');
INSERT INTO `oc_city` VALUES ('2622', '341', '乌尔禾', '1', '0');
INSERT INTO `oc_city` VALUES ('2623', '343', '吐鲁番', '1', '0');
INSERT INTO `oc_city` VALUES ('2624', '343', '鄯善', '1', '0');
INSERT INTO `oc_city` VALUES ('2625', '343', '托克逊', '1', '0');
INSERT INTO `oc_city` VALUES ('2626', '344', '哈密', '1', '0');
INSERT INTO `oc_city` VALUES ('2627', '344', '伊吾', '1', '0');
INSERT INTO `oc_city` VALUES ('2628', '344', '巴里坤', '1', '0');
INSERT INTO `oc_city` VALUES ('2629', '345', '和田', '1', '0');
INSERT INTO `oc_city` VALUES ('2630', '345', '和田', '1', '0');
INSERT INTO `oc_city` VALUES ('2631', '345', '墨玉', '1', '0');
INSERT INTO `oc_city` VALUES ('2632', '345', '皮山', '1', '0');
INSERT INTO `oc_city` VALUES ('2633', '345', '洛浦', '1', '0');
INSERT INTO `oc_city` VALUES ('2634', '345', '策勒', '1', '0');
INSERT INTO `oc_city` VALUES ('2635', '345', '于田', '1', '0');
INSERT INTO `oc_city` VALUES ('2636', '345', '民丰', '1', '0');
INSERT INTO `oc_city` VALUES ('2637', '346', '阿克苏', '1', '0');
INSERT INTO `oc_city` VALUES ('2638', '346', '温宿', '1', '0');
INSERT INTO `oc_city` VALUES ('2639', '346', '库车', '1', '0');
INSERT INTO `oc_city` VALUES ('2640', '346', '沙雅', '1', '0');
INSERT INTO `oc_city` VALUES ('2641', '346', '新和', '1', '0');
INSERT INTO `oc_city` VALUES ('2642', '346', '拜城', '1', '0');
INSERT INTO `oc_city` VALUES ('2643', '346', '乌什', '1', '0');
INSERT INTO `oc_city` VALUES ('2644', '346', '阿瓦提', '1', '0');
INSERT INTO `oc_city` VALUES ('2645', '346', '柯坪', '1', '0');
INSERT INTO `oc_city` VALUES ('2646', '347', '喀什', '1', '0');
INSERT INTO `oc_city` VALUES ('2647', '347', '疏附', '1', '0');
INSERT INTO `oc_city` VALUES ('2648', '347', '疏勒', '1', '0');
INSERT INTO `oc_city` VALUES ('2649', '347', '英吉沙', '1', '0');
INSERT INTO `oc_city` VALUES ('2650', '347', '泽普', '1', '0');
INSERT INTO `oc_city` VALUES ('2651', '347', '莎车', '1', '0');
INSERT INTO `oc_city` VALUES ('2652', '347', '叶城', '1', '0');
INSERT INTO `oc_city` VALUES ('2653', '347', '麦盖提', '1', '0');
INSERT INTO `oc_city` VALUES ('2654', '347', '岳普湖', '1', '0');
INSERT INTO `oc_city` VALUES ('2655', '347', '伽师', '1', '0');
INSERT INTO `oc_city` VALUES ('2656', '347', '巴楚', '1', '0');
INSERT INTO `oc_city` VALUES ('2657', '347', '塔什库尔干塔吉克', '1', '0');
INSERT INTO `oc_city` VALUES ('2658', '348', '阿克陶', '1', '0');
INSERT INTO `oc_city` VALUES ('2659', '348', '阿合奇', '1', '0');
INSERT INTO `oc_city` VALUES ('2660', '348', '乌恰', '1', '0');
INSERT INTO `oc_city` VALUES ('2661', '349', '库尔勒', '1', '0');
INSERT INTO `oc_city` VALUES ('2662', '349', '轮台', '1', '0');
INSERT INTO `oc_city` VALUES ('2663', '349', '尉犁', '1', '0');
INSERT INTO `oc_city` VALUES ('2664', '349', '若羌', '1', '0');
INSERT INTO `oc_city` VALUES ('2665', '349', '且末', '1', '0');
INSERT INTO `oc_city` VALUES ('2666', '349', '和静', '1', '0');
INSERT INTO `oc_city` VALUES ('2667', '349', '和硕', '1', '0');
INSERT INTO `oc_city` VALUES ('2668', '349', '博湖', '1', '0');
INSERT INTO `oc_city` VALUES ('2669', '349', '焉耆', '1', '0');
INSERT INTO `oc_city` VALUES ('2670', '350', '昌吉', '1', '0');
INSERT INTO `oc_city` VALUES ('2671', '350', '阜康', '1', '0');
INSERT INTO `oc_city` VALUES ('2672', '350', '米泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2673', '350', '呼图壁', '1', '0');
INSERT INTO `oc_city` VALUES ('2674', '350', '玛纳斯', '1', '0');
INSERT INTO `oc_city` VALUES ('2675', '350', '奇台', '1', '0');
INSERT INTO `oc_city` VALUES ('2676', '350', '吉木萨尔', '1', '0');
INSERT INTO `oc_city` VALUES ('2677', '350', '木垒', '1', '0');
INSERT INTO `oc_city` VALUES ('2678', '351', '博乐', '1', '0');
INSERT INTO `oc_city` VALUES ('2679', '351', '精河', '1', '0');
INSERT INTO `oc_city` VALUES ('2680', '351', '温泉', '1', '0');
INSERT INTO `oc_city` VALUES ('2681', '352', '奎屯', '1', '0');
INSERT INTO `oc_city` VALUES ('2682', '352', '伊宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2683', '352', '霍城', '1', '0');
INSERT INTO `oc_city` VALUES ('2684', '352', '巩留', '1', '0');
INSERT INTO `oc_city` VALUES ('2685', '352', '新源', '1', '0');
INSERT INTO `oc_city` VALUES ('2686', '352', '昭苏', '1', '0');
INSERT INTO `oc_city` VALUES ('2687', '352', '特克斯', '1', '0');
INSERT INTO `oc_city` VALUES ('2688', '352', '尼勒克', '1', '0');
INSERT INTO `oc_city` VALUES ('2689', '352', '察布查尔锡伯', '1', '0');
INSERT INTO `oc_city` VALUES ('2690', '353', '塔城', '1', '0');
INSERT INTO `oc_city` VALUES ('2691', '353', '乌苏', '1', '0');
INSERT INTO `oc_city` VALUES ('2692', '353', '额敏', '1', '0');
INSERT INTO `oc_city` VALUES ('2693', '353', '沙湾', '1', '0');
INSERT INTO `oc_city` VALUES ('2694', '353', '托里', '1', '0');
INSERT INTO `oc_city` VALUES ('2695', '353', '裕民', '1', '0');
INSERT INTO `oc_city` VALUES ('2696', '353', '和布克赛尔', '1', '0');
INSERT INTO `oc_city` VALUES ('2697', '354', '阿勒泰', '1', '0');
INSERT INTO `oc_city` VALUES ('2698', '354', '布尔津', '1', '0');
INSERT INTO `oc_city` VALUES ('2699', '354', '富蕴', '1', '0');
INSERT INTO `oc_city` VALUES ('2700', '354', '福海', '1', '0');
INSERT INTO `oc_city` VALUES ('2701', '354', '哈巴河', '1', '0');
INSERT INTO `oc_city` VALUES ('2702', '354', '青河', '1', '0');
INSERT INTO `oc_city` VALUES ('2703', '354', '吉木乃', '1', '0');
INSERT INTO `oc_city` VALUES ('2704', '355', '黄浦', '1', '0');
INSERT INTO `oc_city` VALUES ('2705', '355', '卢湾', '1', '0');
INSERT INTO `oc_city` VALUES ('2706', '355', '徐汇', '1', '0');
INSERT INTO `oc_city` VALUES ('2707', '355', '长宁', '1', '0');
INSERT INTO `oc_city` VALUES ('2708', '355', '静安', '1', '0');
INSERT INTO `oc_city` VALUES ('2709', '355', '普陀', '1', '0');
INSERT INTO `oc_city` VALUES ('2710', '355', '闸北', '1', '0');
INSERT INTO `oc_city` VALUES ('2711', '355', '虹口', '1', '0');
INSERT INTO `oc_city` VALUES ('2712', '355', '杨浦', '1', '0');
INSERT INTO `oc_city` VALUES ('2713', '355', '宝山', '1', '0');
INSERT INTO `oc_city` VALUES ('2714', '355', '闵行', '1', '0');
INSERT INTO `oc_city` VALUES ('2715', '355', '嘉定', '1', '0');
INSERT INTO `oc_city` VALUES ('2716', '355', '浦东新', '1', '0');
INSERT INTO `oc_city` VALUES ('2717', '355', '松江', '1', '0');
INSERT INTO `oc_city` VALUES ('2718', '355', '金山', '1', '0');
INSERT INTO `oc_city` VALUES ('2719', '355', '青浦', '1', '0');
INSERT INTO `oc_city` VALUES ('2720', '355', '南汇', '1', '0');
INSERT INTO `oc_city` VALUES ('2721', '355', '奉贤', '1', '0');
INSERT INTO `oc_city` VALUES ('2722', '356', '崇明', '1', '0');
INSERT INTO `oc_city` VALUES ('2723', '357', '渝中', '1', '0');
INSERT INTO `oc_city` VALUES ('2724', '357', '大渡口', '1', '0');
INSERT INTO `oc_city` VALUES ('2725', '357', '江北', '1', '0');
INSERT INTO `oc_city` VALUES ('2726', '357', '沙坪坝', '1', '0');
INSERT INTO `oc_city` VALUES ('2727', '357', '九龙坡', '1', '0');
INSERT INTO `oc_city` VALUES ('2728', '357', '南岸', '1', '0');
INSERT INTO `oc_city` VALUES ('2729', '357', '北碚', '1', '0');
INSERT INTO `oc_city` VALUES ('2730', '357', '万盛', '1', '0');
INSERT INTO `oc_city` VALUES ('2731', '357', '双桥', '1', '0');
INSERT INTO `oc_city` VALUES ('2732', '357', '渝北', '1', '0');
INSERT INTO `oc_city` VALUES ('2733', '357', '巴南', '1', '0');
INSERT INTO `oc_city` VALUES ('2734', '357', '万州', '1', '0');
INSERT INTO `oc_city` VALUES ('2735', '357', '涪陵', '1', '0');
INSERT INTO `oc_city` VALUES ('2736', '357', '黔江', '1', '0');
INSERT INTO `oc_city` VALUES ('2737', '357', '长寿', '1', '0');
INSERT INTO `oc_city` VALUES ('2738', '358', '永川', '1', '0');
INSERT INTO `oc_city` VALUES ('2739', '358', '合川', '1', '0');
INSERT INTO `oc_city` VALUES ('2740', '358', '江津', '1', '0');
INSERT INTO `oc_city` VALUES ('2741', '358', '南川', '1', '0');
INSERT INTO `oc_city` VALUES ('2742', '359', '綦江', '1', '0');
INSERT INTO `oc_city` VALUES ('2743', '359', '潼南', '1', '0');
INSERT INTO `oc_city` VALUES ('2744', '359', '荣昌', '1', '0');
INSERT INTO `oc_city` VALUES ('2745', '359', '璧山', '1', '0');
INSERT INTO `oc_city` VALUES ('2746', '359', '大足', '1', '0');
INSERT INTO `oc_city` VALUES ('2747', '359', '铜梁', '1', '0');
INSERT INTO `oc_city` VALUES ('2748', '359', '梁平', '1', '0');
INSERT INTO `oc_city` VALUES ('2749', '359', '城口', '1', '0');
INSERT INTO `oc_city` VALUES ('2750', '359', '垫江', '1', '0');
INSERT INTO `oc_city` VALUES ('2751', '359', '武隆', '1', '0');
INSERT INTO `oc_city` VALUES ('2752', '359', '丰都', '1', '0');
INSERT INTO `oc_city` VALUES ('2753', '359', '奉节', '1', '0');
INSERT INTO `oc_city` VALUES ('2754', '359', '开县', '1', '0');
INSERT INTO `oc_city` VALUES ('2755', '359', '云阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2756', '359', '忠县', '1', '0');
INSERT INTO `oc_city` VALUES ('2757', '359', '巫溪', '1', '0');
INSERT INTO `oc_city` VALUES ('2758', '359', '巫山', '1', '0');
INSERT INTO `oc_city` VALUES ('2759', '359', '石柱', '1', '0');
INSERT INTO `oc_city` VALUES ('2760', '359', '秀山', '1', '0');
INSERT INTO `oc_city` VALUES ('2761', '359', '酉阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2762', '359', '彭水', '1', '0');
INSERT INTO `oc_city` VALUES ('2763', '98', '扬中', '1', '0');
INSERT INTO `oc_city` VALUES ('2764', '53', '沈河', '1', '0');
INSERT INTO `oc_city` VALUES ('2765', '130', '鼓楼', '1', '0');
INSERT INTO `oc_city` VALUES ('2766', '251', '彭州', '1', '0');
INSERT INTO `oc_city` VALUES ('2767', '214', '福田', '1', '0');
INSERT INTO `oc_city` VALUES ('2768', '234', '青秀', '1', '0');
INSERT INTO `oc_city` VALUES ('2769', '4225', '东城', '1', '0');
INSERT INTO `oc_city` VALUES ('2770', '4225', '丰台', '1', '0');
INSERT INTO `oc_city` VALUES ('2771', '4225', '大兴', '1', '0');
INSERT INTO `oc_city` VALUES ('2772', '4225', '宣武', '1', '0');
INSERT INTO `oc_city` VALUES ('2773', '4225', '密云', '1', '0');
INSERT INTO `oc_city` VALUES ('2774', '4225', '崇文', '1', '0');
INSERT INTO `oc_city` VALUES ('2775', '4225', '平谷', '1', '0');
INSERT INTO `oc_city` VALUES ('2776', '4225', '延庆', '1', '0');
INSERT INTO `oc_city` VALUES ('2777', '4225', '怀柔', '1', '0');
INSERT INTO `oc_city` VALUES ('2778', '4225', '房山', '1', '0');
INSERT INTO `oc_city` VALUES ('2779', '4225', '昌平', '1', '0');
INSERT INTO `oc_city` VALUES ('2780', '4225', '朝阳', '1', '0');
INSERT INTO `oc_city` VALUES ('2781', '4225', '海淀', '1', '0');
INSERT INTO `oc_city` VALUES ('2782', '4225', '石景山', '1', '0');
INSERT INTO `oc_city` VALUES ('2783', '4225', '西城', '1', '0');
INSERT INTO `oc_city` VALUES ('2784', '4225', '通州', '1', '0');
INSERT INTO `oc_city` VALUES ('2785', '4225', '顺义', '1', '0');
INSERT INTO `oc_city` VALUES ('2786', '4225', '门头沟', '1', '0');
INSERT INTO `oc_city` VALUES ('2787', '158', '兖州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2788', '158', '任城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2789', '158', '高新区', '1', '0');
INSERT INTO `oc_city` VALUES ('2790', '158', '太白湖新区', '1', '0');
INSERT INTO `oc_city` VALUES ('2791', '158', '济宁经济技术开发区', '1', '0');
INSERT INTO `oc_city` VALUES ('2792', '158', '嘉祥县', '1', '0');
INSERT INTO `oc_city` VALUES ('2793', '158', '汶上县', '1', '0');
INSERT INTO `oc_city` VALUES ('2794', '158', '泗水县', '1', '0');
INSERT INTO `oc_city` VALUES ('2795', '158', '梁山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2796', '158', '曲阜市', '1', '0');
INSERT INTO `oc_city` VALUES ('2797', '158', '微山县', '1', '0');
INSERT INTO `oc_city` VALUES ('2798', '158', '邹城市', '1', '0');
INSERT INTO `oc_city` VALUES ('2799', '158', '鱼台县', '1', '0');
INSERT INTO `oc_city` VALUES ('2800', '158', '金乡县', '1', '0');
INSERT INTO `oc_city` VALUES ('2801', '222', '莞城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2802', '222', '东城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2803', '222', '南城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2804', '222', '万江区', '1', '0');
INSERT INTO `oc_city` VALUES ('2805', '223', '石岐区', '1', '0');
INSERT INTO `oc_city` VALUES ('2806', '223', '东区', '1', '0');
INSERT INTO `oc_city` VALUES ('2807', '223', '西区', '1', '0');
INSERT INTO `oc_city` VALUES ('2808', '223', '南区', '1', '0');
INSERT INTO `oc_city` VALUES ('2809', '223', '火炬区', '1', '0');
INSERT INTO `oc_city` VALUES ('2810', '223', '五桂山区', '1', '0');
INSERT INTO `oc_city` VALUES ('2811', '249', '吉阳区', '1', '0');
INSERT INTO `oc_city` VALUES ('2812', '249', '崖州区', '1', '0');
INSERT INTO `oc_city` VALUES ('2813', '249', '海棠区', '1', '0');
INSERT INTO `oc_city` VALUES ('2814', '249', '天涯区', '1', '0');
INSERT INTO `oc_city` VALUES ('2815', '318', '雄关区', '1', '0');
INSERT INTO `oc_city` VALUES ('2816', '318', '长城区', '1', '0');
INSERT INTO `oc_city` VALUES ('2817', '318', '镜铁区', '1', '0');
INSERT INTO `oc_city` VALUES ('2818', '272', '观山湖区', '1', '0');

-- ----------------------------
-- Table structure for `oc_country`
-- ----------------------------
DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_country
-- ----------------------------
INSERT INTO `oc_country` VALUES ('1', '北京', 'bj', 'BEJ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('2', '天津', 'tj', 'TAJ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('3', '河北', 'hb', 'HEB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('4', '山西', 'sx', 'SHX', '', '0', '1');
INSERT INTO `oc_country` VALUES ('5', '内蒙古', 'nm', 'NMG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('6', '辽宁', 'ln', 'LIA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('7', '吉林', 'jl', 'JIL', '', '0', '1');
INSERT INTO `oc_country` VALUES ('8', '黑龙江', 'hl', 'HLJ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('9', '上海', 'sh', 'SHH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('10', '江苏', 'js', 'JSU', '', '0', '1');
INSERT INTO `oc_country` VALUES ('11', '浙江', 'zj', 'ZHJ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('12', '安徽', 'ah', 'ANH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('13', '福建', 'fj', 'FUJ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('14', '江西', 'jx', 'JXI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('15', '山东', 'sd', 'SHD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('16', '河南', 'hn', 'HEN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('17', '湖北', 'hb', 'HUB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('18', '湖南', 'hn', 'HUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('19', '广东', 'gd', 'GUD', '', '0', '1');
INSERT INTO `oc_country` VALUES ('20', '广西', 'gx', 'GXI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('21', '海南', 'hn', 'HAI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('22', '重庆', 'cq', 'CHQ', '', '0', '1');
INSERT INTO `oc_country` VALUES ('23', '四川', 'sc', 'SCH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('24', '贵州', 'gz', 'GUI', '', '0', '1');
INSERT INTO `oc_country` VALUES ('25', '云南', 'yn', 'YUN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('26', '西藏', 'xc', 'TIB', '', '0', '1');
INSERT INTO `oc_country` VALUES ('27', '陕西', 'sx', 'SHA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('28', '甘肃', 'gs', 'GAN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('29', '青海', 'qh', 'QIH', '', '0', '1');
INSERT INTO `oc_country` VALUES ('30', '宁夏', 'nx', 'NXA', '', '0', '1');
INSERT INTO `oc_country` VALUES ('31', '新疆', 'xj', 'XIN', '', '0', '1');
INSERT INTO `oc_country` VALUES ('32', '香港', 'xg', 'HKG', '', '0', '1');
INSERT INTO `oc_country` VALUES ('33', '澳门', 'am', 'MAC', '', '0', '1');
INSERT INTO `oc_country` VALUES ('34', '台湾', 'tw', 'TAI', '', '0', '1');

-- ----------------------------
-- Table structure for `oc_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon
-- ----------------------------
INSERT INTO `oc_coupon` VALUES ('4', '-10% Discount', '2222', 'P', '10.0000', '0', '0', '0.0000', '2014-01-01', '2020-01-01', '10', '10', '0', '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES ('5', 'Free Shipping', '3333', 'P', '0.0000', '0', '1', '100.0000', '2014-01-01', '2014-02-01', '10', '10', '0', '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES ('6', '-10.00 Discount', '1111', 'F', '10.0000', '0', '0', '10.0000', '2014-01-01', '2020-01-01', '100000', '10000', '0', '2009-03-14 21:15:18');

-- ----------------------------
-- Table structure for `oc_coupon_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_category
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_coupon_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_coupon_product
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_currency`
-- ----------------------------
DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_currency
-- ----------------------------
INSERT INTO `oc_currency` VALUES ('4', '人民币', 'CNY', '￥', '', '2', '1.00000000', '1', '2015-12-10 22:19:57');

-- ----------------------------
-- Table structure for `oc_customer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL,
  `qq_openid` varchar(50) DEFAULT NULL,
  `weibo_uid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer
-- ----------------------------
INSERT INTO `oc_customer` VALUES ('22', '1', '0', 'tony', '', '97212287@qq.com', '', '', '2611cbc231dcb88c5d263ebee0bc1a28c117f3fd', 'XnQ27nYIu', null, null, '0', '0', '', '::1', '1', '1', '0', '', '2017-02-11 11:32:42', null, null);
INSERT INTO `oc_customer` VALUES ('29', '1', '0', 'kaer', '', 'h121baby@sina.cn', '', '', '2141ccb28828d83a5b4ce4934a752bbd478da154', 'mCPLXKO2V', null, null, '1', '0', '', '::1', '1', '1', '0', '', '2017-02-12 15:28:24', null, null);
INSERT INTO `oc_customer` VALUES ('30', '1', '0', 'bulu', '', '979651731@qq.com', '', '', '76d26e953092a2db0dedc5488aa0261898cc3eeb', '305d9DbYk', null, null, '1', '0', '', '::1', '1', '1', '0', '', '2017-02-12 15:32:10', null, null);

-- ----------------------------
-- Table structure for `oc_customer_activity`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_activity
-- ----------------------------
INSERT INTO `oc_customer_activity` VALUES ('161', '21', 'register', '{\"customer_id\":21,\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 15:25:36');
INSERT INTO `oc_customer_activity` VALUES ('162', '21', 'address_add', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 15:26:17');
INSERT INTO `oc_customer_activity` VALUES ('163', '21', 'order_account', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\",\"order_id\":1001811}', '::1', '2017-02-09 15:26:44');
INSERT INTO `oc_customer_activity` VALUES ('164', '21', 'address_edit', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 19:55:33');
INSERT INTO `oc_customer_activity` VALUES ('165', '21', 'login', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 19:56:16');
INSERT INTO `oc_customer_activity` VALUES ('166', '21', 'login', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 23:37:18');
INSERT INTO `oc_customer_activity` VALUES ('167', '21', 'edit', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 23:37:59');
INSERT INTO `oc_customer_activity` VALUES ('168', '21', 'edit', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 23:39:17');
INSERT INTO `oc_customer_activity` VALUES ('169', '21', 'login', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-09 23:39:49');
INSERT INTO `oc_customer_activity` VALUES ('170', '21', 'forgotten', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-11 10:39:37');
INSERT INTO `oc_customer_activity` VALUES ('171', '21', 'forgotten', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-11 10:44:36');
INSERT INTO `oc_customer_activity` VALUES ('172', '22', 'register', '{\"customer_id\":22,\"name\":\"tony\"}', '::1', '2017-02-11 11:32:43');
INSERT INTO `oc_customer_activity` VALUES ('173', '22', 'address_add', '{\"customer_id\":\"22\",\"name\":\"tony\"}', '::1', '2017-02-11 11:34:45');
INSERT INTO `oc_customer_activity` VALUES ('174', '22', 'order_account', '{\"customer_id\":\"22\",\"name\":\"tony\",\"order_id\":1001812}', '::1', '2017-02-11 11:35:11');
INSERT INTO `oc_customer_activity` VALUES ('175', '21', 'forgotten', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-12 12:43:45');
INSERT INTO `oc_customer_activity` VALUES ('176', '21', 'login', '{\"customer_id\":\"21\",\"name\":\"\\u5362\\u542f\"}', '::1', '2017-02-12 12:49:21');
INSERT INTO `oc_customer_activity` VALUES ('177', '23', 'register', '{\"customer_id\":23,\"name\":\"kaer\"}', '::1', '2017-02-12 14:54:56');
INSERT INTO `oc_customer_activity` VALUES ('178', '24', 'register', '{\"customer_id\":24,\"name\":\"kaer\"}', '::1', '2017-02-12 14:59:00');
INSERT INTO `oc_customer_activity` VALUES ('179', '29', 'register', '{\"customer_id\":29,\"name\":\"kaer\"}', '::1', '2017-02-12 15:28:25');
INSERT INTO `oc_customer_activity` VALUES ('180', '30', 'register', '{\"customer_id\":30,\"name\":\"bulu\"}', '::1', '2017-02-12 15:32:12');

-- ----------------------------
-- Table structure for `oc_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group
-- ----------------------------
INSERT INTO `oc_customer_group` VALUES ('1', '0', '1');

-- ----------------------------
-- Table structure for `oc_customer_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_group_description
-- ----------------------------
INSERT INTO `oc_customer_group_description` VALUES ('1', '2', '普通', 'test');

-- ----------------------------
-- Table structure for `oc_customer_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_ip`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_ip
-- ----------------------------
INSERT INTO `oc_customer_ip` VALUES ('44', '22', '::1', '2017-02-11 11:32:43');
INSERT INTO `oc_customer_ip` VALUES ('47', '29', '::1', '2017-02-12 15:28:25');
INSERT INTO `oc_customer_ip` VALUES ('48', '30', '::1', '2017-02-12 15:32:12');

-- ----------------------------
-- Table structure for `oc_customer_login`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_login
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_online`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_online
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_reward
-- ----------------------------
INSERT INTO `oc_customer_reward` VALUES ('1', '6', '0', '', '2000', '2016-02-14 11:00:05');

-- ----------------------------
-- Table structure for `oc_customer_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_customer_wishlist`
-- ----------------------------
DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_customer_wishlist
-- ----------------------------
INSERT INTO `oc_customer_wishlist` VALUES ('21', '83', '2017-02-12 12:49:21');

-- ----------------------------
-- Table structure for `oc_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field
-- ----------------------------
INSERT INTO `oc_custom_field` VALUES ('1', 'text', '', 'address', '1', '1');

-- ----------------------------
-- Table structure for `oc_custom_field_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_customer_group
-- ----------------------------
INSERT INTO `oc_custom_field_customer_group` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `oc_custom_field_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_description
-- ----------------------------
INSERT INTO `oc_custom_field_description` VALUES ('1', '2', '手机号码');

-- ----------------------------
-- Table structure for `oc_custom_field_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_custom_field_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_custom_field_value_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_download_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_download_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_event`
-- ----------------------------
DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_event
-- ----------------------------
INSERT INTO `oc_event` VALUES ('1', 'voucher', 'post.order.history.add', 'total/voucher/send');

-- ----------------------------
-- Table structure for `oc_extension`
-- ----------------------------
DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_extension
-- ----------------------------
INSERT INTO `oc_extension` VALUES ('1', 'payment', 'cod');
INSERT INTO `oc_extension` VALUES ('2', 'total', 'shipping');
INSERT INTO `oc_extension` VALUES ('3', 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES ('5', 'total', 'total');
INSERT INTO `oc_extension` VALUES ('6', 'module', 'banner');
INSERT INTO `oc_extension` VALUES ('7', 'module', 'carousel');
INSERT INTO `oc_extension` VALUES ('8', 'total', 'credit');
INSERT INTO `oc_extension` VALUES ('9', 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES ('10', 'total', 'handling');
INSERT INTO `oc_extension` VALUES ('11', 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES ('12', 'total', 'coupon');
INSERT INTO `oc_extension` VALUES ('13', 'module', 'category');
INSERT INTO `oc_extension` VALUES ('14', 'module', 'account');
INSERT INTO `oc_extension` VALUES ('15', 'total', 'reward');
INSERT INTO `oc_extension` VALUES ('16', 'total', 'voucher');
INSERT INTO `oc_extension` VALUES ('17', 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES ('18', 'module', 'featured');
INSERT INTO `oc_extension` VALUES ('19', 'module', 'slideshow');
INSERT INTO `oc_extension` VALUES ('20', 'shipping', 'free');
INSERT INTO `oc_extension` VALUES ('21', 'payment', 'bank_transfer');
INSERT INTO `oc_extension` VALUES ('22', 'captcha', 'basic_captcha');
INSERT INTO `oc_extension` VALUES ('23', 'captcha', 'basic_captcha');
INSERT INTO `oc_extension` VALUES ('24', 'feed', 'google_sitemap');
INSERT INTO `oc_extension` VALUES ('25', 'feed', 'google_sitemap');
INSERT INTO `oc_extension` VALUES ('29', 'captcha', 'google_captcha');
INSERT INTO `oc_extension` VALUES ('33', 'module', 'latest');
INSERT INTO `oc_extension` VALUES ('34', 'module', 'bestseller');
INSERT INTO `oc_extension` VALUES ('38', 'module', 'special');

-- ----------------------------
-- Table structure for `oc_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_filter_group_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_filter_group_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_geo_zone
-- ----------------------------
INSERT INTO `oc_geo_zone` VALUES ('3', 'UK VAT Zone', 'UK VAT', '2015-12-10 18:41:29', '2009-01-06 23:26:25');
INSERT INTO `oc_geo_zone` VALUES ('4', 'UK Shipping', 'UK Shipping Zones', '2015-12-10 18:40:45', '2009-06-23 01:14:53');

-- ----------------------------
-- Table structure for `oc_information`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information
-- ----------------------------
INSERT INTO `oc_information` VALUES ('3', '1', '3', '1');
INSERT INTO `oc_information` VALUES ('4', '1', '1', '1');
INSERT INTO `oc_information` VALUES ('5', '1', '4', '1');
INSERT INTO `oc_information` VALUES ('6', '1', '2', '1');

-- ----------------------------
-- Table structure for `oc_information_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_description
-- ----------------------------
INSERT INTO `oc_information_description` VALUES ('3', '2', '隐私政策', '&lt;p&gt;\r\n	隐私政策&lt;/p&gt;\r\n', '隐私政策', '', '');
INSERT INTO `oc_information_description` VALUES ('4', '2', '关于我们', '&lt;p&gt;&lt;a href=&quot;http://www.opencart.cn/&quot; target=&quot;_blank&quot; style=&quot;word-wrap: break-word; outline: none; color: rgb(51, 51, 51); font-family: \'Microsoft yahei\', 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; line-height: 24px; text-indent: 30px; background-color: rgb(242, 242, 242);&quot;&gt;【OpenCart中文网站】&lt;/a&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: \'Microsoft yahei\', 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; line-height: 24px; text-indent: 30px; background-color: rgb(242, 242, 242);&quot;&gt;是opencart.com已认证的合作伙伴，在中国地区支持OpenCart软件的最大社区，我们的目的是支持OpenCart开源软件在中国地区的发展，并为OpenCart软件爱好者提供交流的网络平台，我们专注于OpenCart开发设计、定制等。&lt;/span&gt;&lt;br&gt;&lt;/p&gt;\r\n', '关于我们', '', '');
INSERT INTO `oc_information_description` VALUES ('5', '2', '条款及条件', '&lt;p&gt;\r\n	条款及条件&lt;/p&gt;\r\n', '条款及条件', '', '');
INSERT INTO `oc_information_description` VALUES ('6', '2', '最新公告', '&lt;p&gt;\r\n	最新公告&lt;/p&gt;\r\n', '最新公告', '', '');

-- ----------------------------
-- Table structure for `oc_information_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_layout
-- ----------------------------
INSERT INTO `oc_information_to_layout` VALUES ('3', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('4', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('5', '0', '0');
INSERT INTO `oc_information_to_layout` VALUES ('6', '0', '0');

-- ----------------------------
-- Table structure for `oc_information_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_information_to_store
-- ----------------------------
INSERT INTO `oc_information_to_store` VALUES ('3', '0');
INSERT INTO `oc_information_to_store` VALUES ('4', '0');
INSERT INTO `oc_information_to_store` VALUES ('5', '0');
INSERT INTO `oc_information_to_store` VALUES ('6', '0');

-- ----------------------------
-- Table structure for `oc_language`
-- ----------------------------
DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_language
-- ----------------------------
INSERT INTO `oc_language` VALUES ('2', '简体中文', 'zh_CN', 'zh_CN.UTF-8,zh_CN,zh-cn,china', 'cn.png', 'zh-CN', '1', '1');

-- ----------------------------
-- Table structure for `oc_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout
-- ----------------------------
INSERT INTO `oc_layout` VALUES ('1', 'Home');
INSERT INTO `oc_layout` VALUES ('2', 'Product');
INSERT INTO `oc_layout` VALUES ('3', 'Category');
INSERT INTO `oc_layout` VALUES ('4', 'Default');
INSERT INTO `oc_layout` VALUES ('5', 'Manufacturer');
INSERT INTO `oc_layout` VALUES ('6', 'Account');
INSERT INTO `oc_layout` VALUES ('7', 'Checkout');
INSERT INTO `oc_layout` VALUES ('8', 'Contact');
INSERT INTO `oc_layout` VALUES ('9', 'Sitemap');
INSERT INTO `oc_layout` VALUES ('10', 'Affiliate');
INSERT INTO `oc_layout` VALUES ('11', 'Information');
INSERT INTO `oc_layout` VALUES ('12', 'Compare');
INSERT INTO `oc_layout` VALUES ('13', 'Search');

-- ----------------------------
-- Table structure for `oc_layout_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_module
-- ----------------------------
INSERT INTO `oc_layout_module` VALUES ('2', '4', '0', 'content_top', '0');
INSERT INTO `oc_layout_module` VALUES ('3', '4', '0', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('20', '5', '0', 'column_left', '2');
INSERT INTO `oc_layout_module` VALUES ('69', '10', 'affiliate', 'column_right', '1');
INSERT INTO `oc_layout_module` VALUES ('504', '6', 'account', 'column_right', '2');
INSERT INTO `oc_layout_module` VALUES ('521', '3', 'category', 'column_left', '1');
INSERT INTO `oc_layout_module` VALUES ('573', '1', 'banner.36', 'content_top', '4');
INSERT INTO `oc_layout_module` VALUES ('574', '1', 'featured.28', 'content_top', '5');
INSERT INTO `oc_layout_module` VALUES ('575', '1', 'latest.32', 'content_top', '3');
INSERT INTO `oc_layout_module` VALUES ('576', '1', 'special.39', 'content_top', '2');
INSERT INTO `oc_layout_module` VALUES ('577', '1', 'slideshow.27', 'content_top', '1');
INSERT INTO `oc_layout_module` VALUES ('578', '1', 'banner.37', 'content_bottom', '6');

-- ----------------------------
-- Table structure for `oc_layout_route`
-- ----------------------------
DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_layout_route
-- ----------------------------
INSERT INTO `oc_layout_route` VALUES ('17', '10', '0', 'affiliate/%');
INSERT INTO `oc_layout_route` VALUES ('23', '7', '0', 'checkout/%');
INSERT INTO `oc_layout_route` VALUES ('24', '11', '0', 'information/information');
INSERT INTO `oc_layout_route` VALUES ('31', '8', '0', 'information/contact');
INSERT INTO `oc_layout_route` VALUES ('32', '9', '0', 'information/sitemap');
INSERT INTO `oc_layout_route` VALUES ('34', '4', '0', '');
INSERT INTO `oc_layout_route` VALUES ('45', '5', '0', 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES ('52', '12', '0', 'product/compare');
INSERT INTO `oc_layout_route` VALUES ('53', '13', '0', 'product/search');
INSERT INTO `oc_layout_route` VALUES ('97', '2', '0', 'product/product');
INSERT INTO `oc_layout_route` VALUES ('146', '6', '0', 'account/%');
INSERT INTO `oc_layout_route` VALUES ('152', '3', '0', 'product/category');
INSERT INTO `oc_layout_route` VALUES ('162', '1', '0', 'common/home');

-- ----------------------------
-- Table structure for `oc_length_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class
-- ----------------------------
INSERT INTO `oc_length_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_length_class` VALUES ('2', '10.00000000');
INSERT INTO `oc_length_class` VALUES ('3', '0.39370000');

-- ----------------------------
-- Table structure for `oc_length_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_length_class_description
-- ----------------------------
INSERT INTO `oc_length_class_description` VALUES ('1', '2', '厘米', 'cm');
INSERT INTO `oc_length_class_description` VALUES ('2', '2', '毫米', 'mm');
INSERT INTO `oc_length_class_description` VALUES ('3', '2', '英寸', 'in');

-- ----------------------------
-- Table structure for `oc_location`
-- ----------------------------
DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_location
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_manufacturer`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer
-- ----------------------------
INSERT INTO `oc_manufacturer` VALUES ('8', '两头牛', 'catalog/demo/manufacturer/redbull.png', '0');
INSERT INTO `oc_manufacturer` VALUES ('9', 'Canon', 'catalog/demo/canon_logo.jpg', '0');
INSERT INTO `oc_manufacturer` VALUES ('10', '一片绿', 'catalog/demo/manufacturer/starbucks.png', '0');

-- ----------------------------
-- Table structure for `oc_manufacturer_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_manufacturer_to_store
-- ----------------------------
INSERT INTO `oc_manufacturer_to_store` VALUES ('8', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('9', '0');
INSERT INTO `oc_manufacturer_to_store` VALUES ('10', '0');

-- ----------------------------
-- Table structure for `oc_marketing`
-- ----------------------------
DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_marketing
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_modification`
-- ----------------------------
DROP TABLE IF EXISTS `oc_modification`;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_modification
-- ----------------------------
INSERT INTO `oc_modification` VALUES ('1', '无需FTP配置使用OCMOD方式上传安装扩充功能', 'noftp_ocmod', 'opencart.cn', '1.1.1', 'http://www.opencart.cn', '<modification>\r\n    <name>无需FTP配置使用OCMOD方式上传安装扩充功能</name>\r\n	<version>1.1.1</version>\r\n	<link>http://www.opencart.cn</link>\r\n	<author>opencart.cn</author>\r\n	<code>noftp_ocmod</code>\r\n\r\n	<file path=\"admin/controller/extension/installer.php\">\r\n		<operation>\r\n			<search ><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/ftp\', \'token=\' . $this->session->data[\'token\'], \'SSL\')),]]></search>\r\n			<add position=\"replace\"><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/localcopy\', \'token=\' . $this->session->data[\'token\'], \'SSL\')),]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position=\"before\"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(\'extension/installer\');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'extension/installer\')) {\r\n			$json[\'error\'] = $this->language->get(\'error_permission\');\r\n		}\r\n\r\n        \r\n        $directory = DIR_UPLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n        \r\n\r\n		if (!is_dir($directory)) {\r\n			$json[\'error\'] = $this->language->get(\'error_directory\');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . \'*\');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . \'/*\';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).\'/\';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = $root.substr($file, strlen($directory));\r\n\r\n				if (is_dir($file)) {\r\n					$list = glob(rtrim($destination, \'/\').\'/*\');\r\n\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[\'error\'] = sprintf($this->language->get(\'error_ftp_directory\'), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[\'error\'] = sprintf($this->language->get(\'error_ftp_file\'), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', '1', '2015-12-15 16:11:25');

-- ----------------------------
-- Table structure for `oc_module`
-- ----------------------------
DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_module
-- ----------------------------
INSERT INTO `oc_module` VALUES ('27', '首页幻灯片', 'slideshow', '{\"name\":\"\\u9996\\u9875\\u5e7b\\u706f\\u7247\",\"banner_id\":\"7\",\"width\":\"1180\",\"height\":\"500\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('28', '推荐商品', 'featured', '{\"name\":\"\\u63a8\\u8350\\u5546\\u54c1\",\"product\":[\"83\",\"85\",\"84\",\"86\"],\"limit\":\"4\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('29', 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('30', 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('31', 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('32', '最新商品', 'latest', '{\"name\":\"\\u6700\\u65b0\\u5546\\u54c1\",\"limit\":\"4\",\"width\":\"300\",\"height\":\"340\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('33', '热卖商品', 'bestseller', '{\"name\":\"\\u70ed\\u5356\\u5546\\u54c1\",\"limit\":\"4\",\"width\":\"300\",\"height\":\"300\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('36', '首页中部横幅', 'banner', '{\"name\":\"\\u9996\\u9875\\u4e2d\\u90e8\\u6a2a\\u5e45\",\"banner_id\":\"11\",\"width\":\"1140\",\"height\":\"587\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('37', '首页中部横幅2', 'banner', '{\"name\":\"\\u9996\\u9875\\u4e2d\\u90e8\\u6a2a\\u5e452\",\"banner_id\":\"10\",\"width\":\"1140\",\"height\":\"100\",\"status\":\"1\"}');
INSERT INTO `oc_module` VALUES ('39', '特价优惠', 'special', '{\"name\":\"\\u7279\\u4ef7\\u4f18\\u60e0\",\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');

-- ----------------------------
-- Table structure for `oc_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option
-- ----------------------------
INSERT INTO `oc_option` VALUES ('1', 'radio', '1');
INSERT INTO `oc_option` VALUES ('2', 'checkbox', '2');
INSERT INTO `oc_option` VALUES ('4', 'text', '3');
INSERT INTO `oc_option` VALUES ('5', 'select', '4');
INSERT INTO `oc_option` VALUES ('6', 'textarea', '5');
INSERT INTO `oc_option` VALUES ('7', 'file', '6');
INSERT INTO `oc_option` VALUES ('8', 'date', '7');
INSERT INTO `oc_option` VALUES ('9', 'time', '8');
INSERT INTO `oc_option` VALUES ('10', 'datetime', '9');
INSERT INTO `oc_option` VALUES ('11', 'select', '10');
INSERT INTO `oc_option` VALUES ('12', 'date', '11');

-- ----------------------------
-- Table structure for `oc_option_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_description
-- ----------------------------
INSERT INTO `oc_option_description` VALUES ('1', '2', 'Radio');
INSERT INTO `oc_option_description` VALUES ('2', '2', 'Checkbox');
INSERT INTO `oc_option_description` VALUES ('4', '2', 'Text');
INSERT INTO `oc_option_description` VALUES ('5', '2', 'Select');
INSERT INTO `oc_option_description` VALUES ('6', '2', 'Textarea');
INSERT INTO `oc_option_description` VALUES ('7', '2', 'File');
INSERT INTO `oc_option_description` VALUES ('8', '2', '时间');
INSERT INTO `oc_option_description` VALUES ('9', '2', 'Time');
INSERT INTO `oc_option_description` VALUES ('10', '2', 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES ('11', '2', '尺寸');
INSERT INTO `oc_option_description` VALUES ('12', '2', 'Delivery Date');

-- ----------------------------
-- Table structure for `oc_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value
-- ----------------------------
INSERT INTO `oc_option_value` VALUES ('23', '2', '', '1');
INSERT INTO `oc_option_value` VALUES ('24', '2', '', '2');
INSERT INTO `oc_option_value` VALUES ('31', '1', '', '2');
INSERT INTO `oc_option_value` VALUES ('32', '1', '', '1');
INSERT INTO `oc_option_value` VALUES ('39', '5', '', '1');
INSERT INTO `oc_option_value` VALUES ('40', '5', '', '2');
INSERT INTO `oc_option_value` VALUES ('41', '5', '', '3');
INSERT INTO `oc_option_value` VALUES ('42', '5', '', '4');
INSERT INTO `oc_option_value` VALUES ('43', '1', '', '3');
INSERT INTO `oc_option_value` VALUES ('44', '2', '', '3');
INSERT INTO `oc_option_value` VALUES ('45', '2', '', '4');
INSERT INTO `oc_option_value` VALUES ('46', '11', '', '1');
INSERT INTO `oc_option_value` VALUES ('47', '11', '', '2');
INSERT INTO `oc_option_value` VALUES ('48', '11', '', '3');

-- ----------------------------
-- Table structure for `oc_option_value_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_option_value_description
-- ----------------------------
INSERT INTO `oc_option_value_description` VALUES ('23', '2', '2', 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES ('24', '2', '2', 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES ('31', '2', '1', 'Medium');
INSERT INTO `oc_option_value_description` VALUES ('32', '2', '1', 'Small');
INSERT INTO `oc_option_value_description` VALUES ('39', '2', '5', 'Red');
INSERT INTO `oc_option_value_description` VALUES ('40', '2', '5', 'Blue');
INSERT INTO `oc_option_value_description` VALUES ('41', '2', '5', 'Green');
INSERT INTO `oc_option_value_description` VALUES ('42', '2', '5', 'Yellow');
INSERT INTO `oc_option_value_description` VALUES ('43', '2', '1', 'Large');
INSERT INTO `oc_option_value_description` VALUES ('44', '2', '2', 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES ('45', '2', '2', 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES ('46', '2', '11', '小');
INSERT INTO `oc_option_value_description` VALUES ('47', '2', '11', '中');
INSERT INTO `oc_option_value_description` VALUES ('48', '2', '11', '大');

-- ----------------------------
-- Table structure for `oc_order`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001813 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order
-- ----------------------------
INSERT INTO `oc_order` VALUES ('1001811', '0', 'INV-2013-00', '0', 'OpenCart2.1中文社区版（免费版）', 'http://localhost/', '21', '1', '卢启', '', '', '18685147291', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '货到付款', 'cod', '卢启', '', '', '11111', '', '云岩', '55004', '贵州', '24', '贵阳', '272', '', '{\"1\":\"18685147291\"}', '免运费', 'free.free', '顺风快递', '5292.0000', '5', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'zh-CN,zh;q=0.8,en;q=0.6', '2017-02-09 15:26:43', '2017-02-09 15:31:19');
INSERT INTO `oc_order` VALUES ('1001812', '0', 'INV-2013-00', '0', '农家乐乐', 'http://localhost:8888/opencart/', '22', '1', 'tony', '', '97212287@qq.com', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '货到付款', 'cod', '1', '', '1', '1787878', '', '观山湖区', '1', '贵州', '24', '贵阳', '272', '', '{\"1\":\"1\"}', '免运费', 'free.free', '', '33.0000', '5', '0', '0.0000', '0', '', '2', '4', 'CNY', '1.00000000', '::1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:51.0) Gecko/20100101 Firefox/51.0', 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', '2017-02-11 11:35:06', '2017-02-11 12:11:18');

-- ----------------------------
-- Table structure for `oc_order_custom_field`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_custom_field`;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_custom_field
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_history
-- ----------------------------
INSERT INTO `oc_order_history` VALUES ('62', '1001811', '1', '0', '', '2017-02-09 15:26:44');
INSERT INTO `oc_order_history` VALUES ('63', '1001811', '1', '0', 'ok', '2017-02-09 15:28:53');
INSERT INTO `oc_order_history` VALUES ('64', '1001811', '3', '0', '', '2017-02-09 15:30:10');
INSERT INTO `oc_order_history` VALUES ('65', '1001811', '5', '0', '', '2017-02-09 15:31:19');
INSERT INTO `oc_order_history` VALUES ('66', '1001812', '1', '0', '', '2017-02-11 11:35:10');
INSERT INTO `oc_order_history` VALUES ('67', '1001812', '3', '0', '', '2017-02-11 12:06:02');
INSERT INTO `oc_order_history` VALUES ('68', '1001812', '5', '0', '', '2017-02-11 12:11:18');

-- ----------------------------
-- Table structure for `oc_order_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_option
-- ----------------------------
INSERT INTO `oc_order_option` VALUES ('5', '1001811', '39', '230', '19', 'Radio', 'Medium', 'radio');
INSERT INTO `oc_order_option` VALUES ('6', '1001811', '39', '233', '27', 'Checkbox', 'Checkbox 1', 'checkbox');
INSERT INTO `oc_order_option` VALUES ('7', '1001811', '39', '232', '20', 'Select', 'Blue', 'select');

-- ----------------------------
-- Table structure for `oc_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_product
-- ----------------------------
INSERT INTO `oc_order_product` VALUES ('39', '1001811', '61', '普利邦欧美大框墨镜男潮2016太阳镜男炫彩百搭驾驶镜男偏光眼镜男', '5342', '1', '5292.0000', '5292.0000', '0.0000', '50');
INSERT INTO `oc_order_product` VALUES ('40', '1001812', '83', '农家小白菜', '001', '1', '33.0000', '33.0000', '0.0000', '0');

-- ----------------------------
-- Table structure for `oc_order_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring`;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_recurring_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_recurring_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_order_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_status
-- ----------------------------
INSERT INTO `oc_order_status` VALUES ('1', '2', '待处理');
INSERT INTO `oc_order_status` VALUES ('2', '2', '处理中');
INSERT INTO `oc_order_status` VALUES ('3', '2', '已发货');
INSERT INTO `oc_order_status` VALUES ('5', '2', '已完成');
INSERT INTO `oc_order_status` VALUES ('7', '2', '已取消');
INSERT INTO `oc_order_status` VALUES ('8', '2', '已拒绝');
INSERT INTO `oc_order_status` VALUES ('9', '2', '取消回退');
INSERT INTO `oc_order_status` VALUES ('10', '2', '已失败');
INSERT INTO `oc_order_status` VALUES ('11', '2', '已退款');
INSERT INTO `oc_order_status` VALUES ('12', '2', '已回退');
INSERT INTO `oc_order_status` VALUES ('13', '2', '已拒付');
INSERT INTO `oc_order_status` VALUES ('14', '2', '已逾期');
INSERT INTO `oc_order_status` VALUES ('15', '2', '已付款');
INSERT INTO `oc_order_status` VALUES ('16', '2', '已失败');

-- ----------------------------
-- Table structure for `oc_order_total`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_total
-- ----------------------------
INSERT INTO `oc_order_total` VALUES ('91', '1001811', 'sub_total', '商品总额', '5292.0000', '1');
INSERT INTO `oc_order_total` VALUES ('92', '1001811', 'shipping', '免运费', '0.0000', '3');
INSERT INTO `oc_order_total` VALUES ('93', '1001811', 'total', '订单总额', '5292.0000', '9');
INSERT INTO `oc_order_total` VALUES ('94', '1001812', 'sub_total', '商品总额', '33.0000', '1');
INSERT INTO `oc_order_total` VALUES ('95', '1001812', 'shipping', '免运费', '0.0000', '3');
INSERT INTO `oc_order_total` VALUES ('96', '1001812', 'total', '订单总额', '33.0000', '9');

-- ----------------------------
-- Table structure for `oc_order_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_order_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product
-- ----------------------------
INSERT INTO `oc_product` VALUES ('83', '001', '', '', '', '', '', '', '', '9998', '7', 'catalog/gd/product/baicai_avater.png', '10', '1', '33.0000', '0', '0', '2017-02-09', '260.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '11', '2017-02-09 17:16:23', '2017-02-09 18:04:16');
INSERT INTO `oc_product` VALUES ('84', '002', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/xiaogua_avater1.png', '10', '1', '6.5000', '0', '0', '2017-02-09', '350.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '1', '2017-02-09 17:24:49', '2017-02-09 17:25:07');
INSERT INTO `oc_product` VALUES ('85', '003', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/huluobu_avater1.png', '10', '1', '38.0000', '0', '0', '2017-02-09', '250.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '5', '2017-02-09 18:45:26', '2017-02-09 18:46:27');
INSERT INTO `oc_product` VALUES ('86', '004', '', '', '', '', '', '', '', '9999', '6', 'catalog/gd/product/youcai_avater1.png', '0', '1', '33.0000', '0', '0', '2017-02-09', '250.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '1', '2017-02-09 19:02:27', '2017-02-09 19:02:41');
INSERT INTO `oc_product` VALUES ('87', '101', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/niurou1.png', '8', '1', '55.0000', '0', '0', '2017-02-08', '450.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '11', '2017-02-09 22:47:16', '2017-02-09 22:55:36');
INSERT INTO `oc_product` VALUES ('88', '811', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/540g1.png', '0', '1', '50.0000', '0', '0', '2017-02-08', '540.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '4', '2017-02-09 23:10:58', '2017-02-09 23:39:13');
INSERT INTO `oc_product` VALUES ('89', '1111', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/niunaimizao.png', '10', '1', '30.0000', '0', '0', '2017-02-08', '350.00000000', '1', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '5', '2017-02-09 23:16:29', '0000-00-00 00:00:00');
INSERT INTO `oc_product` VALUES ('90', '2222', '', '', '', '', '', '', '', '9999', '7', 'catalog/gd/product/jidan1.png', '0', '1', '30.0000', '0', '0', '2017-02-08', '450.00000000', '2', '0.00000000', '0.00000000', '0.00000000', '1', '1', '1', '1', '1', '3', '2017-02-09 23:21:56', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `oc_product_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_description
-- ----------------------------
INSERT INTO `oc_product_description` VALUES ('83', '2', '农家小白菜', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/baicai_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '农家小白菜', '农家小白菜', '', '');
INSERT INTO `oc_product_description` VALUES ('84', '2', '西葫芦（350g）盒装', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/xiaogua_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '小瓜 西葫芦', '小瓜 西葫芦', '', '');
INSERT INTO `oc_product_description` VALUES ('85', '2', '有机胡萝卜250-350克', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/baicai_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '有机胡萝卜250-350克', '', '有机胡萝卜250-350克');
INSERT INTO `oc_product_description` VALUES ('86', '2', '有机油菜250克', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/baicai_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '有机油菜250克', '', '有机油菜250克');
INSERT INTO `oc_product_description` VALUES ('87', '2', '新西兰谷饲烧烤牛肉 450g 盒装', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/niurou_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '新西兰谷饲烧烤牛肉 450g 盒装', '', '');
INSERT INTO `oc_product_description` VALUES ('88', '2', '修文猕猴桃', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/lvguo_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '修文猕猴桃', '', '修文猕猴桃');
INSERT INTO `oc_product_description` VALUES ('89', '2', '牛奶蜜枣350g', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/niunaimizao_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '牛奶蜜枣350g', '', '牛奶蜜枣350g');
INSERT INTO `oc_product_description` VALUES ('90', '2', '鸡蛋450g', '&lt;p&gt;&lt;img src=&quot;http://localhost/image/catalog/gd/product/jidan_detail.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;', '', '鸡蛋450g', '', '鸡蛋450g');

-- ----------------------------
-- Table structure for `oc_product_discount`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_discount
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_filter`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_filter
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_image`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2929 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_image
-- ----------------------------
INSERT INTO `oc_product_image` VALUES ('2919', '83', 'catalog/gd/product/baicai_avater1.png', '0');
INSERT INTO `oc_product_image` VALUES ('2922', '85', 'catalog/gd/product/huluobu_avater2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2924', '86', 'catalog/gd/product/youcai_avater2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2927', '90', 'catalog/gd/product/jidan2.png', '0');
INSERT INTO `oc_product_image` VALUES ('2928', '88', 'catalog/gd/product/540g2.png', '0');

-- ----------------------------
-- Table structure for `oc_product_option`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_option_value`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_option_value
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_questions`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_questions`;
CREATE TABLE `oc_product_questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `product_question` longtext NOT NULL,
  `product_answer` longtext NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_question_helpfull` int(11) NOT NULL,
  `product_question_nothelpfull` int(11) NOT NULL,
  `question_asked_date` datetime NOT NULL,
  `question_answred_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_questions
-- ----------------------------
INSERT INTO `oc_product_questions` VALUES ('1', '63', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-04 12:39:02', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('2', '62', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-04 15:29:22', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('3', '51', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-05 10:44:54', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('4', '33', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-17 00:19:42', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('5', '33', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-17 00:19:45', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('6', '62', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-18 09:51:28', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('7', '33', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-18 10:18:07', '0000-00-00 00:00:00');
INSERT INTO `oc_product_questions` VALUES ('8', '33', 'undefined', 'undefined', '', '0', '0', '0', '2016-02-18 10:18:07', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `oc_product_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_recurring`;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_related`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_related
-- ----------------------------
INSERT INTO `oc_product_related` VALUES ('83', '84');
INSERT INTO `oc_product_related` VALUES ('83', '85');
INSERT INTO `oc_product_related` VALUES ('84', '83');
INSERT INTO `oc_product_related` VALUES ('84', '85');
INSERT INTO `oc_product_related` VALUES ('85', '83');
INSERT INTO `oc_product_related` VALUES ('85', '84');

-- ----------------------------
-- Table structure for `oc_product_reward`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_special`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_special
-- ----------------------------
INSERT INTO `oc_product_special` VALUES ('716', '87', '1', '0', '30.0000', '2017-02-08', '2017-02-16');
INSERT INTO `oc_product_special` VALUES ('720', '89', '1', '0', '20.0000', '2017-02-01', '2017-02-28');
INSERT INTO `oc_product_special` VALUES ('721', '90', '1', '0', '15.0000', '2017-02-01', '2017-02-28');
INSERT INTO `oc_product_special` VALUES ('722', '88', '1', '0', '20.0000', '2017-02-01', '2017-03-02');

-- ----------------------------
-- Table structure for `oc_product_to_category`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_category
-- ----------------------------
INSERT INTO `oc_product_to_category` VALUES ('87', '71');
INSERT INTO `oc_product_to_category` VALUES ('90', '71');
INSERT INTO `oc_product_to_category` VALUES ('88', '73');
INSERT INTO `oc_product_to_category` VALUES ('89', '73');
INSERT INTO `oc_product_to_category` VALUES ('83', '74');
INSERT INTO `oc_product_to_category` VALUES ('84', '74');
INSERT INTO `oc_product_to_category` VALUES ('85', '74');
INSERT INTO `oc_product_to_category` VALUES ('86', '74');
INSERT INTO `oc_product_to_category` VALUES ('88', '81');

-- ----------------------------
-- Table structure for `oc_product_to_download`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_download
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_product_to_layout`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_layout
-- ----------------------------
INSERT INTO `oc_product_to_layout` VALUES ('83', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('84', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('85', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('86', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('87', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('88', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('89', '0', '0');
INSERT INTO `oc_product_to_layout` VALUES ('90', '0', '0');

-- ----------------------------
-- Table structure for `oc_product_to_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_product_to_store
-- ----------------------------
INSERT INTO `oc_product_to_store` VALUES ('83', '0');
INSERT INTO `oc_product_to_store` VALUES ('84', '0');
INSERT INTO `oc_product_to_store` VALUES ('85', '0');
INSERT INTO `oc_product_to_store` VALUES ('86', '0');
INSERT INTO `oc_product_to_store` VALUES ('87', '0');
INSERT INTO `oc_product_to_store` VALUES ('88', '0');
INSERT INTO `oc_product_to_store` VALUES ('89', '0');
INSERT INTO `oc_product_to_store` VALUES ('90', '0');

-- ----------------------------
-- Table structure for `oc_recurring`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring`;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_recurring_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_recurring_description`;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_recurring_description
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_action`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_action
-- ----------------------------
INSERT INTO `oc_return_action` VALUES ('1', '2', '已退款');
INSERT INTO `oc_return_action` VALUES ('2', '2', '信用卡已退款');
INSERT INTO `oc_return_action` VALUES ('3', '2', '已寄出替换商品');

-- ----------------------------
-- Table structure for `oc_return_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_return_reason`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_reason
-- ----------------------------
INSERT INTO `oc_return_reason` VALUES ('1', '2', '没有收到商品');
INSERT INTO `oc_return_reason` VALUES ('2', '2', '发错商品');
INSERT INTO `oc_return_reason` VALUES ('3', '2', '错误下单');
INSERT INTO `oc_return_reason` VALUES ('4', '2', '商品质量问题，请详细描述');
INSERT INTO `oc_return_reason` VALUES ('5', '2', '其它，请说明原因');

-- ----------------------------
-- Table structure for `oc_return_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_return_status
-- ----------------------------
INSERT INTO `oc_return_status` VALUES ('1', '2', '待处理');
INSERT INTO `oc_return_status` VALUES ('2', '2', '等待商品寄回');
INSERT INTO `oc_return_status` VALUES ('3', '2', '已完成');

-- ----------------------------
-- Table structure for `oc_review`
-- ----------------------------
DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_review
-- ----------------------------
INSERT INTO `oc_review` VALUES ('1', '43', '0', 'dsfd', 'fdsfdsafdsdddddddddddddddddddddddddddddddddddd', '4', '0', '2015-12-11 14:33:10', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `oc_setting`
-- ----------------------------
DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4719 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_setting
-- ----------------------------
INSERT INTO `oc_setting` VALUES ('2', '0', 'sub_total', 'sub_total_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('3', '0', 'sub_total', 'sub_total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('5', '0', 'total', 'total_sort_order', '9', '0');
INSERT INTO `oc_setting` VALUES ('6', '0', 'total', 'total_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('8', '0', 'free_checkout', 'free_checkout_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('9', '0', 'cod', 'cod_sort_order', '5', '0');
INSERT INTO `oc_setting` VALUES ('10', '0', 'cod', 'cod_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('11', '0', 'cod', 'cod_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('12', '0', 'cod', 'cod_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('13', '0', 'cod', 'cod_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('27', '0', 'coupon', 'coupon_sort_order', '4', '0');
INSERT INTO `oc_setting` VALUES ('28', '0', 'coupon', 'coupon_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('42', '0', 'credit', 'credit_sort_order', '7', '0');
INSERT INTO `oc_setting` VALUES ('43', '0', 'credit', 'credit_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('53', '0', 'reward', 'reward_sort_order', '2', '0');
INSERT INTO `oc_setting` VALUES ('54', '0', 'reward', 'reward_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('94', '0', 'voucher', 'voucher_sort_order', '8', '0');
INSERT INTO `oc_setting` VALUES ('95', '0', 'voucher', 'voucher_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('103', '0', 'free_checkout', 'free_checkout_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('104', '0', 'free_checkout', 'free_checkout_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('146', '0', 'category', 'category_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('158', '0', 'account', 'account_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('159', '0', 'affiliate', 'affiliate_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('298', '0', 'bank_transfer', 'bank_transfer_bank1', '请将货款转到以下银行账号，并在转账备注栏注明订单号：\r\n中国工商银行绵阳分行，卡号：9558822308334343，户名：张三\r\n有任何问题请联系店主，谢谢惠顾！', '0');
INSERT INTO `oc_setting` VALUES ('299', '0', 'bank_transfer', 'bank_transfer_total', '', '0');
INSERT INTO `oc_setting` VALUES ('300', '0', 'bank_transfer', 'bank_transfer_order_status_id', '15', '0');
INSERT INTO `oc_setting` VALUES ('301', '0', 'bank_transfer', 'bank_transfer_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('302', '0', 'bank_transfer', 'bank_transfer_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('303', '0', 'bank_transfer', 'bank_transfer_sort_order', '', '0');
INSERT INTO `oc_setting` VALUES ('1680', '0', 'shipping', 'shipping_estimator', '1', '0');
INSERT INTO `oc_setting` VALUES ('1681', '0', 'shipping', 'shipping_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('1682', '0', 'shipping', 'shipping_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('1683', '0', 'basic_captcha', 'basic_captcha_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('2044', '0', 'alipay', 'alipay_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('2045', '0', 'alipay', 'alipay_seller_email', 'sunboy@opencart.cn', '0');
INSERT INTO `oc_setting` VALUES ('2046', '0', 'alipay', 'alipay_security_code', '63yf4qs9ht0t6ufjhcqeecsjy547yxpy', '0');
INSERT INTO `oc_setting` VALUES ('2047', '0', 'alipay', 'alipay_partner', '2088002964544267', '0');
INSERT INTO `oc_setting` VALUES ('2048', '0', 'alipay', 'alipay_currency_code', 'CNY', '0');
INSERT INTO `oc_setting` VALUES ('2049', '0', 'alipay', 'alipay_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('2050', '0', 'alipay', 'alipay_wait_buyer_pay', '2', '0');
INSERT INTO `oc_setting` VALUES ('2051', '0', 'alipay', 'alipay_wait_seller_send', '15', '0');
INSERT INTO `oc_setting` VALUES ('2052', '0', 'alipay', 'alipay_wait_buyer_confirm', '3', '0');
INSERT INTO `oc_setting` VALUES ('2053', '0', 'alipay', 'alipay_trade_finished', '5', '0');
INSERT INTO `oc_setting` VALUES ('2054', '0', 'alipay', 'alipay_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2055', '0', 'alipay', 'alipay_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('2060', '0', 'flat', 'flat_cost', '5.00', '0');
INSERT INTO `oc_setting` VALUES ('2061', '0', 'flat', 'flat_tax_class_id', '9', '0');
INSERT INTO `oc_setting` VALUES ('2062', '0', 'flat', 'flat_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('2063', '0', 'flat', 'flat_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2064', '0', 'flat', 'flat_sort_order', '3', '0');
INSERT INTO `oc_setting` VALUES ('2065', '0', 'free', 'free_total', '0.01', '0');
INSERT INTO `oc_setting` VALUES ('2066', '0', 'free', 'free_geo_zone_id', '0', '0');
INSERT INTO `oc_setting` VALUES ('2067', '0', 'free', 'free_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('2068', '0', 'free', 'free_sort_order', '1', '0');
INSERT INTO `oc_setting` VALUES ('2084', '0', 'config_c123', 'config_c123_ac', '1001@501238260001', '0');
INSERT INTO `oc_setting` VALUES ('2085', '0', 'config_c123', 'config_c123_authkey', 'EB003F5666A0F96BB56DCEB29FE16C68', '0');
INSERT INTO `oc_setting` VALUES ('2086', '0', 'config_c123', 'config_c123_cgid', '52', '0');
INSERT INTO `oc_setting` VALUES ('2087', '0', 'config_c123', 'config_c123_csid', '', '0');
INSERT INTO `oc_setting` VALUES ('2088', '0', 'config_c123', 'config_c123_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4605', '0', 'config', 'config_meta_title', '老农哥', '0');
INSERT INTO `oc_setting` VALUES ('4606', '0', 'config', 'config_meta_description', '老农哥', '0');
INSERT INTO `oc_setting` VALUES ('4607', '0', 'config', 'config_meta_keyword', '老农哥', '0');
INSERT INTO `oc_setting` VALUES ('4608', '0', 'config', 'config_template', 'gd-free', '0');
INSERT INTO `oc_setting` VALUES ('4609', '0', 'config', 'config_layout_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('4610', '0', 'config', 'config_name', '老农哥', '0');
INSERT INTO `oc_setting` VALUES ('4611', '0', 'config', 'config_owner', '老农哥', '0');
INSERT INTO `oc_setting` VALUES ('4612', '0', 'config', 'config_address', '贵州市贵阳市', '0');
INSERT INTO `oc_setting` VALUES ('4613', '0', 'config', 'config_geocode', '4OS1ut0EX72MCu0R3P1lqCTu', '0');
INSERT INTO `oc_setting` VALUES ('4614', '0', 'config', 'config_email', 'h121baby@sina.cn', '0');
INSERT INTO `oc_setting` VALUES ('4615', '0', 'config', 'config_telephone', '18685147291', '0');
INSERT INTO `oc_setting` VALUES ('4616', '0', 'config', 'config_fax', '', '0');
INSERT INTO `oc_setting` VALUES ('4617', '0', 'config', 'config_image', 'catalog/demo/manufacturer/burgerking.png', '0');
INSERT INTO `oc_setting` VALUES ('4618', '0', 'config', 'config_open', '24小时', '0');
INSERT INTO `oc_setting` VALUES ('4619', '0', 'config', 'config_comment', '老农哥 由老农哥出品，老农哥有限公司 版权所有', '0');
INSERT INTO `oc_setting` VALUES ('4620', '0', 'config', 'config_country_id', '24', '0');
INSERT INTO `oc_setting` VALUES ('4621', '0', 'config', 'config_zone_id', '272', '0');
INSERT INTO `oc_setting` VALUES ('4622', '0', 'config', 'config_language', 'zh_CN', '0');
INSERT INTO `oc_setting` VALUES ('4623', '0', 'config', 'config_admin_language', 'zh_CN', '0');
INSERT INTO `oc_setting` VALUES ('4624', '0', 'config', 'config_currency', 'CNY', '0');
INSERT INTO `oc_setting` VALUES ('4625', '0', 'config', 'config_currency_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('4626', '0', 'config', 'config_length_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4627', '0', 'config', 'config_weight_class_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4628', '0', 'config', 'config_product_count', '1', '0');
INSERT INTO `oc_setting` VALUES ('4629', '0', 'config', 'config_product_limit', '15', '0');
INSERT INTO `oc_setting` VALUES ('4630', '0', 'config', 'config_product_description_length', '100', '0');
INSERT INTO `oc_setting` VALUES ('4631', '0', 'config', 'config_limit_admin', '20', '0');
INSERT INTO `oc_setting` VALUES ('4632', '0', 'config', 'config_review_status', '1', '0');
INSERT INTO `oc_setting` VALUES ('4633', '0', 'config', 'config_review_guest', '0', '0');
INSERT INTO `oc_setting` VALUES ('4634', '0', 'config', 'config_review_mail', '1', '0');
INSERT INTO `oc_setting` VALUES ('4635', '0', 'config', 'config_voucher_min', '1', '0');
INSERT INTO `oc_setting` VALUES ('4636', '0', 'config', 'config_voucher_max', '1000', '0');
INSERT INTO `oc_setting` VALUES ('4637', '0', 'config', 'config_tax', '0', '0');
INSERT INTO `oc_setting` VALUES ('4638', '0', 'config', 'config_tax_default', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('4639', '0', 'config', 'config_tax_customer', 'shipping', '0');
INSERT INTO `oc_setting` VALUES ('4640', '0', 'config', 'config_customer_online', '0', '0');
INSERT INTO `oc_setting` VALUES ('4641', '0', 'config', 'config_customer_group_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4642', '0', 'config', 'config_customer_group_display', '[\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('4643', '0', 'config', 'config_customer_price', '0', '0');
INSERT INTO `oc_setting` VALUES ('4644', '0', 'config', 'config_login_attempts', '5', '0');
INSERT INTO `oc_setting` VALUES ('4645', '0', 'config', 'config_account_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('4646', '0', 'config', 'config_account_mail', '0', '0');
INSERT INTO `oc_setting` VALUES ('4647', '0', 'config', 'config_invoice_prefix', 'INV-2013-00', '0');
INSERT INTO `oc_setting` VALUES ('4648', '0', 'config', 'config_cart_weight', '1', '0');
INSERT INTO `oc_setting` VALUES ('4649', '0', 'config', 'config_checkout_guest', '1', '0');
INSERT INTO `oc_setting` VALUES ('4650', '0', 'config', 'config_checkout_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('4651', '0', 'config', 'config_order_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4652', '0', 'config', 'config_processing_status', '[\"2\",\"3\",\"12\",\"5\",\"1\"]', '1');
INSERT INTO `oc_setting` VALUES ('4653', '0', 'config', 'config_complete_status', '[\"3\",\"5\"]', '1');
INSERT INTO `oc_setting` VALUES ('4654', '0', 'config', 'config_fraud_status_id', '7', '0');
INSERT INTO `oc_setting` VALUES ('4655', '0', 'config', 'config_order_mail', '1', '0');
INSERT INTO `oc_setting` VALUES ('4656', '0', 'config', 'config_api_id', '3', '0');
INSERT INTO `oc_setting` VALUES ('4657', '0', 'config', 'config_stock_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('4658', '0', 'config', 'config_stock_warning', '0', '0');
INSERT INTO `oc_setting` VALUES ('4659', '0', 'config', 'config_stock_checkout', '0', '0');
INSERT INTO `oc_setting` VALUES ('4660', '0', 'config', 'config_affiliate_approval', '0', '0');
INSERT INTO `oc_setting` VALUES ('4661', '0', 'config', 'config_affiliate_auto', '0', '0');
INSERT INTO `oc_setting` VALUES ('4662', '0', 'config', 'config_affiliate_commission', '5', '0');
INSERT INTO `oc_setting` VALUES ('4663', '0', 'config', 'config_affiliate_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('4664', '0', 'config', 'config_affiliate_mail', '1', '0');
INSERT INTO `oc_setting` VALUES ('4665', '0', 'config', 'config_return_id', '5', '0');
INSERT INTO `oc_setting` VALUES ('4666', '0', 'config', 'config_return_status_id', '1', '0');
INSERT INTO `oc_setting` VALUES ('4667', '0', 'config', 'config_captcha', 'basic_captcha', '0');
INSERT INTO `oc_setting` VALUES ('4668', '0', 'config', 'config_captcha_page', '[\"register\",\"review\",\"return\",\"contact\"]', '1');
INSERT INTO `oc_setting` VALUES ('4669', '0', 'config', 'config_logo', 'catalog/demo/manufacturer/starbucks.png', '0');
INSERT INTO `oc_setting` VALUES ('4670', '0', 'config', 'config_icon', 'catalog/demo/manufacturer/dell.png', '0');
INSERT INTO `oc_setting` VALUES ('4671', '0', 'config', 'config_image_category_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('4672', '0', 'config', 'config_image_category_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('4673', '0', 'config', 'config_image_thumb_width', '300', '0');
INSERT INTO `oc_setting` VALUES ('4674', '0', 'config', 'config_image_thumb_height', '300', '0');
INSERT INTO `oc_setting` VALUES ('4675', '0', 'config', 'config_image_popup_width', '500', '0');
INSERT INTO `oc_setting` VALUES ('4676', '0', 'config', 'config_image_popup_height', '500', '0');
INSERT INTO `oc_setting` VALUES ('4677', '0', 'config', 'config_image_product_width', '300', '0');
INSERT INTO `oc_setting` VALUES ('4678', '0', 'config', 'config_image_product_height', '300', '0');
INSERT INTO `oc_setting` VALUES ('4679', '0', 'config', 'config_image_additional_width', '300', '0');
INSERT INTO `oc_setting` VALUES ('4680', '0', 'config', 'config_image_additional_height', '300', '0');
INSERT INTO `oc_setting` VALUES ('4681', '0', 'config', 'config_image_related_width', '80', '0');
INSERT INTO `oc_setting` VALUES ('4682', '0', 'config', 'config_image_related_height', '80', '0');
INSERT INTO `oc_setting` VALUES ('4683', '0', 'config', 'config_image_compare_width', '90', '0');
INSERT INTO `oc_setting` VALUES ('4684', '0', 'config', 'config_image_compare_height', '90', '0');
INSERT INTO `oc_setting` VALUES ('4685', '0', 'config', 'config_image_wishlist_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('4686', '0', 'config', 'config_image_wishlist_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('4687', '0', 'config', 'config_image_cart_width', '47', '0');
INSERT INTO `oc_setting` VALUES ('4688', '0', 'config', 'config_image_cart_height', '47', '0');
INSERT INTO `oc_setting` VALUES ('4689', '0', 'config', 'config_image_location_width', '268', '0');
INSERT INTO `oc_setting` VALUES ('4690', '0', 'config', 'config_image_location_height', '50', '0');
INSERT INTO `oc_setting` VALUES ('4691', '0', 'config', 'config_ftp_hostname', 'demo.opencart.cn', '0');
INSERT INTO `oc_setting` VALUES ('4692', '0', 'config', 'config_ftp_port', '21', '0');
INSERT INTO `oc_setting` VALUES ('4693', '0', 'config', 'config_ftp_username', '', '0');
INSERT INTO `oc_setting` VALUES ('4694', '0', 'config', 'config_ftp_password', '', '0');
INSERT INTO `oc_setting` VALUES ('4695', '0', 'config', 'config_ftp_root', '', '0');
INSERT INTO `oc_setting` VALUES ('4696', '0', 'config', 'config_ftp_status', '0', '0');
INSERT INTO `oc_setting` VALUES ('4697', '0', 'config', 'config_mail_protocol', 'smtp', '0');
INSERT INTO `oc_setting` VALUES ('4698', '0', 'config', 'config_mail_parameter', '', '0');
INSERT INTO `oc_setting` VALUES ('4699', '0', 'config', 'config_mail_smtp_hostname', 'smtp.sina.cn', '0');
INSERT INTO `oc_setting` VALUES ('4700', '0', 'config', 'config_mail_smtp_username', 'h121baby@sina.cn', '0');
INSERT INTO `oc_setting` VALUES ('4701', '0', 'config', 'config_mail_smtp_password', 'woshipis', '0');
INSERT INTO `oc_setting` VALUES ('4702', '0', 'config', 'config_mail_smtp_port', '25', '0');
INSERT INTO `oc_setting` VALUES ('4703', '0', 'config', 'config_mail_smtp_timeout', '5', '0');
INSERT INTO `oc_setting` VALUES ('4704', '0', 'config', 'config_mail_alert', '', '0');
INSERT INTO `oc_setting` VALUES ('4705', '0', 'config', 'config_maintenance', '0', '0');
INSERT INTO `oc_setting` VALUES ('4706', '0', 'config', 'config_seo_url', '0', '0');
INSERT INTO `oc_setting` VALUES ('4707', '0', 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', '0');
INSERT INTO `oc_setting` VALUES ('4708', '0', 'config', 'config_compression', '0', '0');
INSERT INTO `oc_setting` VALUES ('4709', '0', 'config', 'config_secure', '0', '0');
INSERT INTO `oc_setting` VALUES ('4710', '0', 'config', 'config_password', '1', '0');
INSERT INTO `oc_setting` VALUES ('4711', '0', 'config', 'config_shared', '0', '0');
INSERT INTO `oc_setting` VALUES ('4712', '0', 'config', 'config_encryption', 'rptGUjmuSgTyaEFwPfw77znrVUgZMCEhaMrgJOYCBvbMuxz90V9qRh4nchSxRTpzosAGkkp6W7EDLHzzVUUwu3SrvCQfGgkmHZlmD5aZiDukJO1WdrWKNayTiJ7hxyufgpRMufBHl3kdIklUf8EjOtQRVcWnK2u8OHzieRwyAdzunz8CXU4ddU4jbCDNSMeD7JnmMthl2WFBkNUT5WkzZjMEdDFWebcutRASskj2medQPTw7nR7hnryG8QUzB3ii5CSgvbxCGeXcAVI9VplPphYLTHvlklzGrkQB9GvLQIaAsNM5ZLaY52xuOOYrdKYyAsuZUzIAPyO0UDiFvHukP73fXPbpctlSWDTp41Deratbpc74xUItto5RmRTln33BOpXxKDX7fDUrPn5sge74rEqtGsVULHefDZvEPglknMcE9jVe98WpWSJ7lsk4fuNwoce2mz9Yri0448vFgCvlDwcIsb65OlUc4bUpfjt4iO3mVPV81eEnLOOTxmoqhZIHSo2mtKhVXphKQ07PseHKekuqpX2MaSbIYzZEYpw5pXd9wwtfPPu7NF7OnSBBOLsuotp9nU85jCtztScnNaZvZgoDLmStUqA6o2oN1oasMx0rj8Eg1fY1FEChyIF38TYksrFKVfbiPdxclb2ITp5SYknYN4p1OGOhSxqW5Hf9wgbNgxXVraHRZvKIyOEFUuJraOzV7p6El7TzYuOIGbOVKbiN2XEiSA2SAFiaWm3KJPLo6a2iN4SS2R0pbZoBestqi7QIncq8Yux9JLzpTXpaitgGQCFANkSQaTxBKrR98VRXmBBZIeEy7Z7QrmVeDGL80O7wCorei1C7MhrHibQqO6FmQZTnitbjyg2n0ElGCv9Pfm4SSAbbIXLgeVoV8HKLF7H54xGw1ZC5nXqD2mysHD6pCUDBh3nUiyBzZLRP4IGwpU6LMDfrIwAToCkUHdViPxZs0fKRtGOEcM1C4IYRPBzux9117SyhlBHsg4dsQta5rR0Nibayhuo8xu62qEtS', '0');
INSERT INTO `oc_setting` VALUES ('4713', '0', 'config', 'config_file_max_size', '300000', '0');
INSERT INTO `oc_setting` VALUES ('4714', '0', 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', '0');
INSERT INTO `oc_setting` VALUES ('4715', '0', 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', '0');
INSERT INTO `oc_setting` VALUES ('4716', '0', 'config', 'config_error_display', '1', '0');
INSERT INTO `oc_setting` VALUES ('4717', '0', 'config', 'config_error_log', '1', '0');
INSERT INTO `oc_setting` VALUES ('4718', '0', 'config', 'config_error_filename', 'error.log', '0');

-- ----------------------------
-- Table structure for `oc_stock_status`
-- ----------------------------
DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_stock_status
-- ----------------------------
INSERT INTO `oc_stock_status` VALUES ('5', '2', '脱销');
INSERT INTO `oc_stock_status` VALUES ('6', '2', '2-3 天');
INSERT INTO `oc_stock_status` VALUES ('7', '2', '有库存');
INSERT INTO `oc_stock_status` VALUES ('8', '2', '预定');

-- ----------------------------
-- Table structure for `oc_store`
-- ----------------------------
DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_store
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_tax_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_class
-- ----------------------------
INSERT INTO `oc_tax_class` VALUES ('9', 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES ('10', 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- ----------------------------
-- Table structure for `oc_tax_rate`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate
-- ----------------------------
INSERT INTO `oc_tax_rate` VALUES ('86', '3', 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES ('87', '3', 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- ----------------------------
-- Table structure for `oc_tax_rate_to_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rate_to_customer_group
-- ----------------------------
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('86', '1');
INSERT INTO `oc_tax_rate_to_customer_group` VALUES ('87', '1');

-- ----------------------------
-- Table structure for `oc_tax_rule`
-- ----------------------------
DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_tax_rule
-- ----------------------------
INSERT INTO `oc_tax_rule` VALUES ('120', '10', '87', 'store', '0');
INSERT INTO `oc_tax_rule` VALUES ('121', '10', '86', 'payment', '1');
INSERT INTO `oc_tax_rule` VALUES ('127', '9', '87', 'shipping', '2');
INSERT INTO `oc_tax_rule` VALUES ('128', '9', '86', 'shipping', '1');

-- ----------------------------
-- Table structure for `oc_upload`
-- ----------------------------
DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_url_alias`
-- ----------------------------
DROP TABLE IF EXISTS `oc_url_alias`;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_url_alias
-- ----------------------------
INSERT INTO `oc_url_alias` VALUES ('775', 'category_id=46', 'macs');
INSERT INTO `oc_url_alias` VALUES ('776', 'category_id=45', 'windows');
INSERT INTO `oc_url_alias` VALUES ('779', 'category_id=28', 'monitor');
INSERT INTO `oc_url_alias` VALUES ('780', 'category_id=35', 'test1');
INSERT INTO `oc_url_alias` VALUES ('781', 'category_id=36', 'test2');
INSERT INTO `oc_url_alias` VALUES ('786', 'category_id=17', 'software');
INSERT INTO `oc_url_alias` VALUES ('789', 'category_id=34', 'mp3-players');
INSERT INTO `oc_url_alias` VALUES ('790', 'category_id=43', 'test11');
INSERT INTO `oc_url_alias` VALUES ('791', 'category_id=44', 'test12');
INSERT INTO `oc_url_alias` VALUES ('792', 'category_id=47', 'test15');
INSERT INTO `oc_url_alias` VALUES ('793', 'category_id=48', 'test16');
INSERT INTO `oc_url_alias` VALUES ('794', 'category_id=49', 'test17');
INSERT INTO `oc_url_alias` VALUES ('795', 'category_id=50', 'test18');
INSERT INTO `oc_url_alias` VALUES ('796', 'category_id=51', 'test19');
INSERT INTO `oc_url_alias` VALUES ('797', 'category_id=52', 'test20');
INSERT INTO `oc_url_alias` VALUES ('798', 'category_id=58', 'test25');
INSERT INTO `oc_url_alias` VALUES ('799', 'category_id=53', 'test21');
INSERT INTO `oc_url_alias` VALUES ('800', 'category_id=54', 'test22');
INSERT INTO `oc_url_alias` VALUES ('801', 'category_id=55', 'test23');
INSERT INTO `oc_url_alias` VALUES ('802', 'category_id=56', 'test24');
INSERT INTO `oc_url_alias` VALUES ('803', 'category_id=38', 'test4');
INSERT INTO `oc_url_alias` VALUES ('804', 'category_id=37', 'test5');
INSERT INTO `oc_url_alias` VALUES ('805', 'category_id=39', 'test6');
INSERT INTO `oc_url_alias` VALUES ('806', 'category_id=40', 'test7');
INSERT INTO `oc_url_alias` VALUES ('807', 'category_id=41', 'test8');
INSERT INTO `oc_url_alias` VALUES ('808', 'category_id=42', 'test9');
INSERT INTO `oc_url_alias` VALUES ('811', 'product_id=28', 'htc-touch-hd');
INSERT INTO `oc_url_alias` VALUES ('813', 'product_id=44', 'macbook-air');
INSERT INTO `oc_url_alias` VALUES ('814', 'product_id=45', 'macbook-pro');
INSERT INTO `oc_url_alias` VALUES ('816', 'product_id=31', 'nikon-d300');
INSERT INTO `oc_url_alias` VALUES ('817', 'product_id=29', 'palm-treo-pro');
INSERT INTO `oc_url_alias` VALUES ('818', 'product_id=35', 'product-8');
INSERT INTO `oc_url_alias` VALUES ('819', 'product_id=49', 'samsung-galaxy-tab-10-1');
INSERT INTO `oc_url_alias` VALUES ('820', 'product_id=33', 'samsung-syncmaster-941bw');
INSERT INTO `oc_url_alias` VALUES ('821', 'product_id=46', 'sony-vaio');
INSERT INTO `oc_url_alias` VALUES ('824', 'product_id=48', 'ipod-classic');
INSERT INTO `oc_url_alias` VALUES ('825', 'product_id=36', 'ipod-nano');
INSERT INTO `oc_url_alias` VALUES ('826', 'product_id=34', 'ipod-shuffle');
INSERT INTO `oc_url_alias` VALUES ('827', 'product_id=32', 'ipod-touch');
INSERT INTO `oc_url_alias` VALUES ('828', 'manufacturer_id=9', 'canon');
INSERT INTO `oc_url_alias` VALUES ('835', 'category_id=27', 'mac');
INSERT INTO `oc_url_alias` VALUES ('837', 'product_id=41', 'imac');
INSERT INTO `oc_url_alias` VALUES ('840', 'product_id=47', 'hp-lp3065');
INSERT INTO `oc_url_alias` VALUES ('844', 'information_id=4', 'about_us');
INSERT INTO `oc_url_alias` VALUES ('845', 'information_id=5', 'terms');
INSERT INTO `oc_url_alias` VALUES ('846', 'information_id=3', 'privacy');
INSERT INTO `oc_url_alias` VALUES ('848', 'information_id=6', 'delivery');
INSERT INTO `oc_url_alias` VALUES ('854', 'category_id=59', 'clothing');
INSERT INTO `oc_url_alias` VALUES ('856', 'category_id=60', 'women-clothing');
INSERT INTO `oc_url_alias` VALUES ('864', 'product_id=51', 'persenality-clothing');
INSERT INTO `oc_url_alias` VALUES ('865', 'product_id=54', 'zoom-clothing');
INSERT INTO `oc_url_alias` VALUES ('869', 'category_id=61', 'men-clothing');
INSERT INTO `oc_url_alias` VALUES ('873', 'product_id=42', 'test');
INSERT INTO `oc_url_alias` VALUES ('874', 'product_id=59', 'dayi-clothing');
INSERT INTO `oc_url_alias` VALUES ('875', 'product_id=58', 'qiake-man');
INSERT INTO `oc_url_alias` VALUES ('879', 'product_id=57', '2015new-niuzai');
INSERT INTO `oc_url_alias` VALUES ('880', 'product_id=52', 'cheongsam-clothing');
INSERT INTO `oc_url_alias` VALUES ('886', 'product_id=40', 'iphone');
INSERT INTO `oc_url_alias` VALUES ('887', 'product_id=30', 'canon-eos-5d');
INSERT INTO `oc_url_alias` VALUES ('888', 'product_id=43', 'macbook');
INSERT INTO `oc_url_alias` VALUES ('897', 'category_id=18', 'laptop-notebook');
INSERT INTO `oc_url_alias` VALUES ('898', 'category_id=20', 'desktops');
INSERT INTO `oc_url_alias` VALUES ('900', 'category_id=31', 'scanner');
INSERT INTO `oc_url_alias` VALUES ('901', 'category_id=29', 'mouse');
INSERT INTO `oc_url_alias` VALUES ('902', 'category_id=25', 'component');
INSERT INTO `oc_url_alias` VALUES ('904', 'category_id=24', 'smartphone');
INSERT INTO `oc_url_alias` VALUES ('907', 'manufacturer_id=8', '两头牛');
INSERT INTO `oc_url_alias` VALUES ('908', 'manufacturer_id=10', '一片绿');
INSERT INTO `oc_url_alias` VALUES ('915', 'product_id=89', '');
INSERT INTO `oc_url_alias` VALUES ('916', 'product_id=90', '');

-- ----------------------------
-- Table structure for `oc_user`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user
-- ----------------------------
INSERT INTO `oc_user` VALUES ('1', '1', 'admin', 'b9e5d820bb36339471087930f3653fc2ca25d26f', 'vhNPKdFvt', '老农哥', '', '979651731@qq.com', '', '', '::1', '1', '2017-02-09 07:23:53');

-- ----------------------------
-- Table structure for `oc_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_user_group
-- ----------------------------
INSERT INTO `oc_user_group` VALUES ('1', 'Administrator', '{\"access\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/city\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"payment\\/alipay\",\"payment\\/bank_transfer\",\"payment\\/cod\",\"payment\\/free_checkout\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/pickup\",\"shipping\\/weight\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/sms\",\"module\\/sms\",\"module\\/latest\",\"module\\/bestseller\",\"module\\/special\",\"payment\\/alipay_direct\",\"module\\/html\",\"module\\/special\"],\"modify\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/city\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"payment\\/alipay\",\"payment\\/bank_transfer\",\"payment\\/cod\",\"payment\\/free_checkout\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/pickup\",\"shipping\\/weight\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/sms\",\"module\\/sms\",\"module\\/latest\",\"module\\/bestseller\",\"module\\/special\",\"payment\\/alipay_direct\",\"module\\/html\",\"module\\/special\"]}');
INSERT INTO `oc_user_group` VALUES ('10', 'Demonstration', '');

-- ----------------------------
-- Table structure for `oc_voucher`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_history`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_history
-- ----------------------------

-- ----------------------------
-- Table structure for `oc_voucher_theme`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme
-- ----------------------------
INSERT INTO `oc_voucher_theme` VALUES ('6', 'catalog/demo/apple_logo.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('7', 'catalog/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES ('8', 'catalog/demo/canon_eos_5d_2.jpg');

-- ----------------------------
-- Table structure for `oc_voucher_theme_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_voucher_theme_description
-- ----------------------------
INSERT INTO `oc_voucher_theme_description` VALUES ('6', '2', 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES ('7', '2', 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES ('8', '2', 'General');

-- ----------------------------
-- Table structure for `oc_weight_class`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class
-- ----------------------------
INSERT INTO `oc_weight_class` VALUES ('1', '1.00000000');
INSERT INTO `oc_weight_class` VALUES ('2', '1000.00000000');

-- ----------------------------
-- Table structure for `oc_weight_class_description`
-- ----------------------------
DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_weight_class_description
-- ----------------------------
INSERT INTO `oc_weight_class_description` VALUES ('1', '2', '千克 ', 'kg');
INSERT INTO `oc_weight_class_description` VALUES ('2', '2', '克  ', 'g');

-- ----------------------------
-- Table structure for `oc_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4226 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone
-- ----------------------------
INSERT INTO `oc_zone` VALUES ('19', '3', '石家庄', 'sjz', '1');
INSERT INTO `oc_zone` VALUES ('20', '3', '唐山', 'ts', '1');
INSERT INTO `oc_zone` VALUES ('21', '3', '秦皇岛', 'qhd', '1');
INSERT INTO `oc_zone` VALUES ('22', '3', '邯郸', 'hd', '1');
INSERT INTO `oc_zone` VALUES ('23', '3', '邢台', 'xt', '1');
INSERT INTO `oc_zone` VALUES ('24', '3', '保定', 'bd', '1');
INSERT INTO `oc_zone` VALUES ('25', '3', '张家口', 'zjk', '1');
INSERT INTO `oc_zone` VALUES ('26', '3', '承德', 'cd', '1');
INSERT INTO `oc_zone` VALUES ('27', '3', '沧州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('28', '3', '廊坊', 'lf', '1');
INSERT INTO `oc_zone` VALUES ('29', '3', '衡水', 'hs', '1');
INSERT INTO `oc_zone` VALUES ('30', '4', '太原', 'ty', '1');
INSERT INTO `oc_zone` VALUES ('31', '4', '大同', 'dt', '1');
INSERT INTO `oc_zone` VALUES ('32', '4', '阳泉', 'yq', '1');
INSERT INTO `oc_zone` VALUES ('33', '4', '长治', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('34', '4', '晋城', 'jc', '1');
INSERT INTO `oc_zone` VALUES ('35', '4', '朔州', 'sz', '1');
INSERT INTO `oc_zone` VALUES ('36', '4', '晋中', 'jz', '1');
INSERT INTO `oc_zone` VALUES ('37', '4', '运城', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('38', '4', '忻州', 'xz', '1');
INSERT INTO `oc_zone` VALUES ('39', '4', '临汾', 'lf', '1');
INSERT INTO `oc_zone` VALUES ('40', '4', '吕梁地', 'lld', '1');
INSERT INTO `oc_zone` VALUES ('41', '5', '呼和浩特', 'hhht', '1');
INSERT INTO `oc_zone` VALUES ('42', '5', '包头', 'bt', '1');
INSERT INTO `oc_zone` VALUES ('43', '5', '乌海', 'wh', '1');
INSERT INTO `oc_zone` VALUES ('44', '5', '赤峰', 'cf', '1');
INSERT INTO `oc_zone` VALUES ('45', '5', '通辽', 'tl', '1');
INSERT INTO `oc_zone` VALUES ('46', '5', '鄂尔多斯', 'eeds', '1');
INSERT INTO `oc_zone` VALUES ('47', '5', '呼伦贝尔', 'hlbe', '1');
INSERT INTO `oc_zone` VALUES ('48', '5', '乌兰察布', 'wlcbm', '1');
INSERT INTO `oc_zone` VALUES ('49', '5', '锡林郭勒', 'xlglm', '1');
INSERT INTO `oc_zone` VALUES ('50', '5', '巴彦淖尔', 'bynem', '1');
INSERT INTO `oc_zone` VALUES ('51', '5', '阿拉善', 'alsm', '1');
INSERT INTO `oc_zone` VALUES ('52', '5', '兴安', 'xam', '1');
INSERT INTO `oc_zone` VALUES ('53', '6', '沈阳', 'sy', '1');
INSERT INTO `oc_zone` VALUES ('54', '6', '大连', 'dl', '1');
INSERT INTO `oc_zone` VALUES ('55', '6', '鞍山', 'as', '1');
INSERT INTO `oc_zone` VALUES ('56', '6', '抚顺', 'fs', '1');
INSERT INTO `oc_zone` VALUES ('57', '6', '本溪', 'bx', '1');
INSERT INTO `oc_zone` VALUES ('58', '6', '丹东', 'dd', '1');
INSERT INTO `oc_zone` VALUES ('59', '6', '锦州', 'jz', '1');
INSERT INTO `oc_zone` VALUES ('60', '6', '葫芦岛', 'hld', '1');
INSERT INTO `oc_zone` VALUES ('61', '6', '营口', 'yk', '1');
INSERT INTO `oc_zone` VALUES ('62', '6', '盘锦', 'pj', '1');
INSERT INTO `oc_zone` VALUES ('63', '6', '阜新', 'fx', '1');
INSERT INTO `oc_zone` VALUES ('64', '6', '辽阳', 'ly', '1');
INSERT INTO `oc_zone` VALUES ('65', '6', '铁岭', 'tl', '1');
INSERT INTO `oc_zone` VALUES ('66', '6', '朝阳', 'cy', '1');
INSERT INTO `oc_zone` VALUES ('67', '7', '长春', 'cc', '1');
INSERT INTO `oc_zone` VALUES ('68', '7', '吉林', 'jl', '1');
INSERT INTO `oc_zone` VALUES ('69', '7', '四平', 'sp', '1');
INSERT INTO `oc_zone` VALUES ('70', '7', '辽源', 'ly', '1');
INSERT INTO `oc_zone` VALUES ('71', '7', '通化', 'th', '1');
INSERT INTO `oc_zone` VALUES ('72', '7', '白山', 'bs', '1');
INSERT INTO `oc_zone` VALUES ('73', '7', '松原', 'sy', '1');
INSERT INTO `oc_zone` VALUES ('74', '7', '白城', 'bc', '1');
INSERT INTO `oc_zone` VALUES ('75', '7', '延边', 'yb', '1');
INSERT INTO `oc_zone` VALUES ('76', '8', '哈尔滨', 'heb', '1');
INSERT INTO `oc_zone` VALUES ('77', '8', '齐齐哈尔', 'qqhe', '1');
INSERT INTO `oc_zone` VALUES ('78', '8', '鹤岗', 'hg', '1');
INSERT INTO `oc_zone` VALUES ('79', '8', '双鸭山', 'sys', '1');
INSERT INTO `oc_zone` VALUES ('80', '8', '鸡西', 'jx', '1');
INSERT INTO `oc_zone` VALUES ('81', '8', '大庆', 'dq', '1');
INSERT INTO `oc_zone` VALUES ('82', '8', '伊春', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('83', '8', '牡丹江', 'mdj', '1');
INSERT INTO `oc_zone` VALUES ('84', '8', '佳木斯', 'jms', '1');
INSERT INTO `oc_zone` VALUES ('85', '8', '七台河', 'qth', '1');
INSERT INTO `oc_zone` VALUES ('86', '8', '黑河', 'hh', '1');
INSERT INTO `oc_zone` VALUES ('87', '8', '绥化', 'sh', '1');
INSERT INTO `oc_zone` VALUES ('88', '8', '大兴安岭', 'dxald', '1');
INSERT INTO `oc_zone` VALUES ('89', '10', '南京', 'nj', '1');
INSERT INTO `oc_zone` VALUES ('90', '10', '徐州', 'xz', '1');
INSERT INTO `oc_zone` VALUES ('91', '10', '连云港', 'lyg', '1');
INSERT INTO `oc_zone` VALUES ('92', '10', '淮安', 'ha', '1');
INSERT INTO `oc_zone` VALUES ('93', '10', '宿迁', 'sq', '1');
INSERT INTO `oc_zone` VALUES ('94', '10', '盐城', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('95', '10', '扬州', 'yz', '1');
INSERT INTO `oc_zone` VALUES ('96', '10', '泰州', 'tz', '1');
INSERT INTO `oc_zone` VALUES ('97', '10', '南通', 'nt', '1');
INSERT INTO `oc_zone` VALUES ('98', '10', '镇江', 'zj', '1');
INSERT INTO `oc_zone` VALUES ('99', '10', '常州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('100', '10', '无锡', 'wx', '1');
INSERT INTO `oc_zone` VALUES ('101', '10', '苏州', 'sz', '1');
INSERT INTO `oc_zone` VALUES ('102', '11', '杭州', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('103', '11', '宁波', 'nb', '1');
INSERT INTO `oc_zone` VALUES ('104', '11', '温州', 'wz', '1');
INSERT INTO `oc_zone` VALUES ('105', '11', '嘉兴', 'jx', '1');
INSERT INTO `oc_zone` VALUES ('106', '11', '湖州', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('107', '11', '绍兴', 'sx', '1');
INSERT INTO `oc_zone` VALUES ('108', '11', '金华', 'jh', '1');
INSERT INTO `oc_zone` VALUES ('109', '11', '衢州', 'xz', '1');
INSERT INTO `oc_zone` VALUES ('110', '11', '舟山', 'zs', '1');
INSERT INTO `oc_zone` VALUES ('111', '11', '台州', 'tz', '1');
INSERT INTO `oc_zone` VALUES ('112', '11', '丽水', 'ls', '1');
INSERT INTO `oc_zone` VALUES ('113', '12', '合肥', 'hf', '1');
INSERT INTO `oc_zone` VALUES ('114', '12', '芜湖', 'wh', '1');
INSERT INTO `oc_zone` VALUES ('115', '12', '蚌埠', 'bb', '1');
INSERT INTO `oc_zone` VALUES ('116', '12', '淮南', 'hn', '1');
INSERT INTO `oc_zone` VALUES ('117', '12', '马鞍山', 'mas', '1');
INSERT INTO `oc_zone` VALUES ('118', '12', '淮北', 'hb', '1');
INSERT INTO `oc_zone` VALUES ('119', '12', '铜陵', 'tl', '1');
INSERT INTO `oc_zone` VALUES ('120', '12', '安庆', 'aq', '1');
INSERT INTO `oc_zone` VALUES ('121', '12', '黄山', 'hs', '1');
INSERT INTO `oc_zone` VALUES ('122', '12', '滁州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('123', '12', '阜阳', 'fy', '1');
INSERT INTO `oc_zone` VALUES ('124', '12', '宿州', 'sz', '1');
INSERT INTO `oc_zone` VALUES ('125', '12', '巢湖', 'ch', '1');
INSERT INTO `oc_zone` VALUES ('126', '12', '六安', 'la', '1');
INSERT INTO `oc_zone` VALUES ('127', '12', '亳州', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('128', '12', '池州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('129', '12', '宣城', 'xc', '1');
INSERT INTO `oc_zone` VALUES ('130', '13', '福州', 'fz', '1');
INSERT INTO `oc_zone` VALUES ('131', '13', '厦门', 'xm', '1');
INSERT INTO `oc_zone` VALUES ('132', '13', '三明', 'sm', '1');
INSERT INTO `oc_zone` VALUES ('133', '13', '莆田', 'pt', '1');
INSERT INTO `oc_zone` VALUES ('134', '13', '泉州', 'qz', '1');
INSERT INTO `oc_zone` VALUES ('135', '13', '漳州', 'zz', '1');
INSERT INTO `oc_zone` VALUES ('136', '13', '南平', 'np', '1');
INSERT INTO `oc_zone` VALUES ('137', '13', '龙岩', 'ly', '1');
INSERT INTO `oc_zone` VALUES ('138', '13', '宁德', 'nd', '1');
INSERT INTO `oc_zone` VALUES ('139', '14', '南昌', 'nc', '1');
INSERT INTO `oc_zone` VALUES ('140', '14', '景德镇', 'jdz', '1');
INSERT INTO `oc_zone` VALUES ('141', '14', '萍乡', 'px', '1');
INSERT INTO `oc_zone` VALUES ('142', '14', '九江', 'jj', '1');
INSERT INTO `oc_zone` VALUES ('143', '14', '新余', 'xy', '1');
INSERT INTO `oc_zone` VALUES ('144', '14', '鹰潭', 'yt', '1');
INSERT INTO `oc_zone` VALUES ('145', '14', '赣州', 'gz', '1');
INSERT INTO `oc_zone` VALUES ('146', '14', '吉安', 'ja', '1');
INSERT INTO `oc_zone` VALUES ('147', '14', '宜春', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('148', '14', '抚州', 'fz', '1');
INSERT INTO `oc_zone` VALUES ('149', '14', '上饶', 'sr', '1');
INSERT INTO `oc_zone` VALUES ('150', '15', '济南', 'jn', '1');
INSERT INTO `oc_zone` VALUES ('151', '15', '青岛', 'qd', '1');
INSERT INTO `oc_zone` VALUES ('152', '15', '淄博', 'zb', '1');
INSERT INTO `oc_zone` VALUES ('153', '15', '枣庄', 'zz', '1');
INSERT INTO `oc_zone` VALUES ('154', '15', '东营', 'dy', '1');
INSERT INTO `oc_zone` VALUES ('155', '15', '潍坊', 'wf', '1');
INSERT INTO `oc_zone` VALUES ('156', '15', '烟台', 'yt', '1');
INSERT INTO `oc_zone` VALUES ('157', '15', '威海', 'wh', '1');
INSERT INTO `oc_zone` VALUES ('158', '15', '济宁', 'jn', '1');
INSERT INTO `oc_zone` VALUES ('159', '15', '泰安', 'ta', '1');
INSERT INTO `oc_zone` VALUES ('160', '15', '日照', 'rz', '1');
INSERT INTO `oc_zone` VALUES ('161', '15', '莱芜', 'lw', '1');
INSERT INTO `oc_zone` VALUES ('162', '15', '临沂', 'ly', '1');
INSERT INTO `oc_zone` VALUES ('163', '15', '德州', 'dz', '1');
INSERT INTO `oc_zone` VALUES ('164', '15', '聊城', 'lc', '1');
INSERT INTO `oc_zone` VALUES ('165', '15', '滨州', 'bz', '1');
INSERT INTO `oc_zone` VALUES ('166', '15', '菏泽', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('167', '16', '郑州', 'zz', '1');
INSERT INTO `oc_zone` VALUES ('168', '16', '开封', 'kf', '1');
INSERT INTO `oc_zone` VALUES ('169', '16', '洛阳', 'ly', '1');
INSERT INTO `oc_zone` VALUES ('170', '16', '平顶山', 'pds', '1');
INSERT INTO `oc_zone` VALUES ('171', '16', '焦作', 'jz', '1');
INSERT INTO `oc_zone` VALUES ('172', '16', '鹤壁', 'hb', '1');
INSERT INTO `oc_zone` VALUES ('173', '16', '新乡', 'xx', '1');
INSERT INTO `oc_zone` VALUES ('174', '16', '安阳', 'ay', '1');
INSERT INTO `oc_zone` VALUES ('175', '16', '濮阳', 'y', '1');
INSERT INTO `oc_zone` VALUES ('176', '16', '许昌', 'xc', '1');
INSERT INTO `oc_zone` VALUES ('177', '16', '漯河', 'h', '1');
INSERT INTO `oc_zone` VALUES ('178', '16', '三门峡', 'smx', '1');
INSERT INTO `oc_zone` VALUES ('179', '16', '南阳', 'ny', '1');
INSERT INTO `oc_zone` VALUES ('180', '16', '商丘', 'sq', '1');
INSERT INTO `oc_zone` VALUES ('181', '16', '信阳', 'xy', '1');
INSERT INTO `oc_zone` VALUES ('182', '16', '周口', 'zk', '1');
INSERT INTO `oc_zone` VALUES ('183', '16', '驻马店', 'zmd', '1');
INSERT INTO `oc_zone` VALUES ('184', '16', '直辖行政单位', 'zxxzdw', '1');
INSERT INTO `oc_zone` VALUES ('185', '17', '武汉', 'wh', '1');
INSERT INTO `oc_zone` VALUES ('186', '17', '黄石', 'hs', '1');
INSERT INTO `oc_zone` VALUES ('187', '17', '襄樊', 'xf', '1');
INSERT INTO `oc_zone` VALUES ('188', '17', '十堰', 'sy', '1');
INSERT INTO `oc_zone` VALUES ('189', '17', '荆州', 'jz', '1');
INSERT INTO `oc_zone` VALUES ('190', '17', '宜昌', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('191', '17', '荆门', 'jm', '1');
INSERT INTO `oc_zone` VALUES ('192', '17', '鄂州', 'ez', '1');
INSERT INTO `oc_zone` VALUES ('193', '17', '孝感', 'xg', '1');
INSERT INTO `oc_zone` VALUES ('194', '17', '黄冈', 'hg', '1');
INSERT INTO `oc_zone` VALUES ('195', '17', '咸宁', 'xn', '1');
INSERT INTO `oc_zone` VALUES ('196', '17', '随州', 'sz', '1');
INSERT INTO `oc_zone` VALUES ('197', '17', '恩施', 'es', '1');
INSERT INTO `oc_zone` VALUES ('198', '17', '直辖行政单位', 'zxxzdw', '1');
INSERT INTO `oc_zone` VALUES ('199', '18', '长沙', 'cs', '1');
INSERT INTO `oc_zone` VALUES ('200', '18', '株洲', 'zz', '1');
INSERT INTO `oc_zone` VALUES ('201', '18', '湘潭', 'xt', '1');
INSERT INTO `oc_zone` VALUES ('202', '18', '衡阳', 'hy', '1');
INSERT INTO `oc_zone` VALUES ('203', '18', '邵阳', 'sy', '1');
INSERT INTO `oc_zone` VALUES ('204', '18', '岳阳', 'yy', '1');
INSERT INTO `oc_zone` VALUES ('205', '18', '常德', 'cd', '1');
INSERT INTO `oc_zone` VALUES ('206', '18', '张家界', 'zjj', '1');
INSERT INTO `oc_zone` VALUES ('207', '18', '益阳', 'yy', '1');
INSERT INTO `oc_zone` VALUES ('208', '18', '郴州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('209', '18', '永州', 'yz', '1');
INSERT INTO `oc_zone` VALUES ('210', '18', '怀化', 'hh', '1');
INSERT INTO `oc_zone` VALUES ('211', '18', '娄底', 'ld', '1');
INSERT INTO `oc_zone` VALUES ('212', '18', '湘西', 'xx', '1');
INSERT INTO `oc_zone` VALUES ('213', '19', '广州', 'gz', '1');
INSERT INTO `oc_zone` VALUES ('214', '19', '深圳', 'sz', '1');
INSERT INTO `oc_zone` VALUES ('215', '19', '珠海', 'zh', '1');
INSERT INTO `oc_zone` VALUES ('216', '19', '汕头', 'st', '1');
INSERT INTO `oc_zone` VALUES ('217', '19', '韶关', 'sg', '1');
INSERT INTO `oc_zone` VALUES ('218', '19', '河源', 'hy', '1');
INSERT INTO `oc_zone` VALUES ('219', '19', '梅州', 'mz', '1');
INSERT INTO `oc_zone` VALUES ('220', '19', '惠州', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('221', '19', '汕尾', 'sw', '1');
INSERT INTO `oc_zone` VALUES ('222', '19', '东莞', 'd', '1');
INSERT INTO `oc_zone` VALUES ('223', '19', '中山', 'zs', '1');
INSERT INTO `oc_zone` VALUES ('224', '19', '江门', 'jm', '1');
INSERT INTO `oc_zone` VALUES ('225', '19', '佛山', 'fs', '1');
INSERT INTO `oc_zone` VALUES ('226', '19', '阳江', 'yj', '1');
INSERT INTO `oc_zone` VALUES ('227', '19', '湛江', 'zj', '1');
INSERT INTO `oc_zone` VALUES ('228', '19', '茂名', 'mm', '1');
INSERT INTO `oc_zone` VALUES ('229', '19', '肇庆', 'zq', '1');
INSERT INTO `oc_zone` VALUES ('230', '19', '清远', 'qy', '1');
INSERT INTO `oc_zone` VALUES ('231', '19', '潮州', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('232', '19', '揭阳', 'jy', '1');
INSERT INTO `oc_zone` VALUES ('233', '19', '云浮', 'yf', '1');
INSERT INTO `oc_zone` VALUES ('234', '20', '南宁', 'nn', '1');
INSERT INTO `oc_zone` VALUES ('235', '20', '柳州', 'lz', '1');
INSERT INTO `oc_zone` VALUES ('236', '20', '桂林', 'gl', '1');
INSERT INTO `oc_zone` VALUES ('237', '20', '梧州', 'wz', '1');
INSERT INTO `oc_zone` VALUES ('238', '20', '北海', 'bh', '1');
INSERT INTO `oc_zone` VALUES ('239', '20', '防城港', 'fcg', '1');
INSERT INTO `oc_zone` VALUES ('240', '20', '钦州', 'qz', '1');
INSERT INTO `oc_zone` VALUES ('241', '20', '贵港', 'gg', '1');
INSERT INTO `oc_zone` VALUES ('242', '20', '玉林', 'yl', '1');
INSERT INTO `oc_zone` VALUES ('243', '20', '百色', 'bs', '1');
INSERT INTO `oc_zone` VALUES ('244', '20', '贺州', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('245', '20', '河池', 'hc', '1');
INSERT INTO `oc_zone` VALUES ('246', '20', '来宾', 'lb', '1');
INSERT INTO `oc_zone` VALUES ('247', '20', '崇左', 'cz', '1');
INSERT INTO `oc_zone` VALUES ('248', '21', '海口', 'hk', '1');
INSERT INTO `oc_zone` VALUES ('249', '21', '三亚', 'sy', '1');
INSERT INTO `oc_zone` VALUES ('250', '21', '省直辖行政单位', 'zxxzdw', '1');
INSERT INTO `oc_zone` VALUES ('251', '23', '成都', 'cd', '1');
INSERT INTO `oc_zone` VALUES ('252', '23', '自贡', 'zg', '1');
INSERT INTO `oc_zone` VALUES ('253', '23', '攀枝花', 'pzh', '1');
INSERT INTO `oc_zone` VALUES ('254', '23', '泸州', 'lz', '1');
INSERT INTO `oc_zone` VALUES ('255', '23', '德阳', 'dy', '1');
INSERT INTO `oc_zone` VALUES ('256', '23', '绵阳', 'my', '1');
INSERT INTO `oc_zone` VALUES ('257', '23', '广元', 'gy', '1');
INSERT INTO `oc_zone` VALUES ('258', '23', '遂宁', 'sn', '1');
INSERT INTO `oc_zone` VALUES ('259', '23', '内江', 'nj', '1');
INSERT INTO `oc_zone` VALUES ('260', '23', '乐山', 'ls', '1');
INSERT INTO `oc_zone` VALUES ('261', '23', '南充', 'nc', '1');
INSERT INTO `oc_zone` VALUES ('262', '23', '宜宾', 'yb', '1');
INSERT INTO `oc_zone` VALUES ('263', '23', '广安', 'ga', '1');
INSERT INTO `oc_zone` VALUES ('264', '23', '达州', 'dz', '1');
INSERT INTO `oc_zone` VALUES ('265', '23', '眉山', 'ms', '1');
INSERT INTO `oc_zone` VALUES ('266', '23', '雅安', 'ya', '1');
INSERT INTO `oc_zone` VALUES ('267', '23', '巴中', 'bz', '1');
INSERT INTO `oc_zone` VALUES ('268', '23', '资阳', 'zy', '1');
INSERT INTO `oc_zone` VALUES ('269', '23', '阿坝', 'ab', '1');
INSERT INTO `oc_zone` VALUES ('270', '23', '甘孜', 'gz', '1');
INSERT INTO `oc_zone` VALUES ('271', '23', '凉山', 'ls', '1');
INSERT INTO `oc_zone` VALUES ('272', '24', '贵阳', 'gy', '1');
INSERT INTO `oc_zone` VALUES ('273', '24', '六盘水', 'lps', '1');
INSERT INTO `oc_zone` VALUES ('274', '24', '遵义', 'zy', '1');
INSERT INTO `oc_zone` VALUES ('275', '24', '安顺', 'as', '1');
INSERT INTO `oc_zone` VALUES ('276', '24', '铜仁地', 'trd', '1');
INSERT INTO `oc_zone` VALUES ('277', '24', '毕节地', 'bjd', '1');
INSERT INTO `oc_zone` VALUES ('278', '24', '黔西南', 'qxn', '1');
INSERT INTO `oc_zone` VALUES ('279', '24', '黔东南', 'qdn', '1');
INSERT INTO `oc_zone` VALUES ('280', '24', '黔南', 'qn', '1');
INSERT INTO `oc_zone` VALUES ('281', '25', '昆明', 'km', '1');
INSERT INTO `oc_zone` VALUES ('282', '25', '曲靖', 'qj', '1');
INSERT INTO `oc_zone` VALUES ('283', '25', '玉溪', 'yx', '1');
INSERT INTO `oc_zone` VALUES ('284', '25', '保山', 'bs', '1');
INSERT INTO `oc_zone` VALUES ('285', '25', '昭通', 'zt', '1');
INSERT INTO `oc_zone` VALUES ('286', '25', '思茅', 'smd', '1');
INSERT INTO `oc_zone` VALUES ('287', '25', '临沧', 'lcd', '1');
INSERT INTO `oc_zone` VALUES ('288', '25', '丽江', 'lj', '1');
INSERT INTO `oc_zone` VALUES ('289', '25', '文山', 'ws', '1');
INSERT INTO `oc_zone` VALUES ('290', '25', '红河', 'hh', '1');
INSERT INTO `oc_zone` VALUES ('291', '25', '西双版纳', 'xsbn', '1');
INSERT INTO `oc_zone` VALUES ('292', '25', '楚雄', 'cx', '1');
INSERT INTO `oc_zone` VALUES ('293', '25', '大理', 'dl', '1');
INSERT INTO `oc_zone` VALUES ('294', '25', '德宏', 'dh', '1');
INSERT INTO `oc_zone` VALUES ('295', '25', '怒江', 'nj', '1');
INSERT INTO `oc_zone` VALUES ('296', '25', '迪庆', 'dq', '1');
INSERT INTO `oc_zone` VALUES ('297', '26', '拉萨', 'ls', '1');
INSERT INTO `oc_zone` VALUES ('298', '26', '那曲', 'nqd', '1');
INSERT INTO `oc_zone` VALUES ('299', '26', '昌都', 'cdd', '1');
INSERT INTO `oc_zone` VALUES ('300', '26', '山南', 'snd', '1');
INSERT INTO `oc_zone` VALUES ('301', '26', '日喀则', 'rkzd', '1');
INSERT INTO `oc_zone` VALUES ('302', '26', '阿里', 'ald', '1');
INSERT INTO `oc_zone` VALUES ('303', '26', '林芝', 'lzd', '1');
INSERT INTO `oc_zone` VALUES ('304', '27', '西安', 'xa', '1');
INSERT INTO `oc_zone` VALUES ('305', '27', '铜川', 'tc', '1');
INSERT INTO `oc_zone` VALUES ('306', '27', '宝鸡', 'bj', '1');
INSERT INTO `oc_zone` VALUES ('307', '27', '咸阳', 'xy', '1');
INSERT INTO `oc_zone` VALUES ('308', '27', '渭南', 'wn', '1');
INSERT INTO `oc_zone` VALUES ('309', '27', '延安', 'ya', '1');
INSERT INTO `oc_zone` VALUES ('310', '27', '汉中', 'hz', '1');
INSERT INTO `oc_zone` VALUES ('311', '27', '榆林', 'yl', '1');
INSERT INTO `oc_zone` VALUES ('312', '27', '安康', 'ak', '1');
INSERT INTO `oc_zone` VALUES ('313', '27', '商洛', 'sl', '1');
INSERT INTO `oc_zone` VALUES ('314', '28', '兰州', 'lz', '1');
INSERT INTO `oc_zone` VALUES ('315', '28', '金昌', 'jc', '1');
INSERT INTO `oc_zone` VALUES ('316', '28', '白银', 'by', '1');
INSERT INTO `oc_zone` VALUES ('317', '28', '天水', 'ts', '1');
INSERT INTO `oc_zone` VALUES ('318', '28', '嘉峪关', 'jyg', '1');
INSERT INTO `oc_zone` VALUES ('319', '28', '武威', 'ww', '1');
INSERT INTO `oc_zone` VALUES ('320', '28', '张掖', 'zy', '1');
INSERT INTO `oc_zone` VALUES ('321', '28', '平凉', 'pl', '1');
INSERT INTO `oc_zone` VALUES ('322', '28', '酒泉', 'jq', '1');
INSERT INTO `oc_zone` VALUES ('323', '28', '庆阳', 'qy', '1');
INSERT INTO `oc_zone` VALUES ('324', '28', '定西', 'dxd', '1');
INSERT INTO `oc_zone` VALUES ('325', '28', '陇南', 'lnd', '1');
INSERT INTO `oc_zone` VALUES ('326', '28', '甘南', 'gn', '1');
INSERT INTO `oc_zone` VALUES ('327', '28', '临夏', 'lx', '1');
INSERT INTO `oc_zone` VALUES ('328', '29', '西宁', 'xn', '1');
INSERT INTO `oc_zone` VALUES ('329', '29', '海东', 'hdd', '1');
INSERT INTO `oc_zone` VALUES ('330', '29', '海北', 'hb', '1');
INSERT INTO `oc_zone` VALUES ('331', '29', '黄南', 'hn', '1');
INSERT INTO `oc_zone` VALUES ('332', '29', '海南', 'hn', '1');
INSERT INTO `oc_zone` VALUES ('333', '29', '果洛', 'gl', '1');
INSERT INTO `oc_zone` VALUES ('334', '29', '玉树', 'ys', '1');
INSERT INTO `oc_zone` VALUES ('335', '29', '海西', 'hx', '1');
INSERT INTO `oc_zone` VALUES ('336', '30', '银川', 'yc', '1');
INSERT INTO `oc_zone` VALUES ('337', '30', '石嘴山', 'szs', '1');
INSERT INTO `oc_zone` VALUES ('338', '30', '吴忠', 'wz', '1');
INSERT INTO `oc_zone` VALUES ('339', '30', '固原', 'gy', '1');
INSERT INTO `oc_zone` VALUES ('340', '31', '乌鲁木齐', 'wlmq', '1');
INSERT INTO `oc_zone` VALUES ('341', '31', '克拉玛依', 'klmy', '1');
INSERT INTO `oc_zone` VALUES ('342', '31', '直辖行政单位', 'zxxzdw', '1');
INSERT INTO `oc_zone` VALUES ('343', '31', '吐鲁番', 'tlfd', '1');
INSERT INTO `oc_zone` VALUES ('344', '31', '哈密', 'hmd', '1');
INSERT INTO `oc_zone` VALUES ('345', '31', '和田', 'htd', '1');
INSERT INTO `oc_zone` VALUES ('346', '31', '阿克苏', 'aksd', '1');
INSERT INTO `oc_zone` VALUES ('347', '31', '喀什', 'ksd', '1');
INSERT INTO `oc_zone` VALUES ('348', '31', '克孜勒苏', 'kzls', '1');
INSERT INTO `oc_zone` VALUES ('349', '31', '巴音郭楞', 'bygl', '1');
INSERT INTO `oc_zone` VALUES ('350', '31', '昌吉', 'cj', '1');
INSERT INTO `oc_zone` VALUES ('351', '31', '博尔塔拉', 'betl', '1');
INSERT INTO `oc_zone` VALUES ('352', '31', '伊犁', 'yl', '1');
INSERT INTO `oc_zone` VALUES ('353', '31', '塔城', 'tcd', '1');
INSERT INTO `oc_zone` VALUES ('354', '31', '阿勒泰', 'altd', '1');
INSERT INTO `oc_zone` VALUES ('355', '9', '市辖区', 'null', '1');
INSERT INTO `oc_zone` VALUES ('356', '9', '县', 'null', '1');
INSERT INTO `oc_zone` VALUES ('357', '22', '市辖区', 'null', '1');
INSERT INTO `oc_zone` VALUES ('358', '22', '市', 'null', '1');
INSERT INTO `oc_zone` VALUES ('359', '22', '县', 'null', '1');
INSERT INTO `oc_zone` VALUES ('360', '2', '市辖区', 'null', '1');
INSERT INTO `oc_zone` VALUES ('361', '2', '县', 'null', '1');
INSERT INTO `oc_zone` VALUES ('4225', '1', '市辖区', '', '1');

-- ----------------------------
-- Table structure for `oc_zone_to_geo_zone`
-- ----------------------------
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oc_zone_to_geo_zone
-- ----------------------------
