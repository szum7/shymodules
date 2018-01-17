-- /***
--  * v1.0.0.0
--  */

-- Create database
CREATE DATABASE dbname CHARACTER SET UTF8 COLLATE utf8_general_ci;

-- mysql dump location (import/export)
C:\xampp\mysql\bin

-- Import database (database previously created)
mysql -uusername -ppassword database_name < filename.sql

-- Export database (C:\xampp\mysql\bin)
mysqldump -uusername -ppassword database_name > filename.sql

-- Exported mysql sql table, ENGINE
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- ENGINE InnoDB
CREATE TABLE `events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `intro` varchar(500) NOT NULL,
  `content` text,
  `type` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Users, privileges
CREATE USER 'geza'@'127.0.0.1' IDENTIFIED BY 'geza12';
CREATE USER 'geza'@'localhost' IDENTIFIED BY 'geza12';
GRANT SELECT, INSERT, DELETE, UPDATE, CREATE ON webshop.* TO geza@localhost;
GRANT ALL PRIVILEGES ON webshop.* TO laci@localhost WITH GRANT OPTION;