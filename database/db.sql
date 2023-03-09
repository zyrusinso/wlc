/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - laravel_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `laravel_project`;

/*Table structure for table `codes` */

DROP TABLE IF EXISTS `codes`;

CREATE TABLE `codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_used` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2032 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `codes` */

insert  into `codes`(`id`,`category_id`,`sub_category_id`,`code`,`status`,`product_name`,`product_id`,`user_id`,`date_used`,`created_at`,`updated_at`) values 
(1,'Nothing',NULL,'TEST123567','Not Used','Major Products',NULL,'123',NULL,NULL,NULL),
(2,'Nothing',NULL,'Test6523123','Used','Minor Products',NULL,'123','2022-03-23 07:46:47',NULL,NULL),
(3,'Something',NULL,'Test652312233','Not Used','Product 1235412',NULL,'123',NULL,NULL,NULL),
(2025,'10','6','EXM280322Z2TOIAB7','Not Used','Example Product',NULL,NULL,NULL,'2022-03-28 11:31:50',NULL),
(2026,'10','6','EXM2803228EPZROSN','Not Used','Example Product',NULL,NULL,NULL,'2022-03-28 11:31:50',NULL),
(2027,'10','6','EXM280322XM8CV0YF','Not Used','Example Product',NULL,NULL,NULL,'2022-03-28 11:31:50',NULL),
(2028,'10','6','EXM280322ELQA42JR','Not Used','Example Product','6',NULL,NULL,'2022-03-28 11:55:12',NULL),
(2030,'10','6','EXM280322IKVGSB3O','Not Used','Example Product','7',NULL,NULL,'2022-03-28 12:26:02',NULL),
(2031,'3','1','MAJ190522O8ZGEWAJ','Not Used','Business Package','8',NULL,NULL,'2022-05-19 03:43:55',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `group_sales_bonuses` */

DROP TABLE IF EXISTS `group_sales_bonuses`;

CREATE TABLE `group_sales_bonuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `group_sales_bonuses` */

insert  into `group_sales_bonuses`(`id`,`user_id`,`buyer_id`,`transaction_id`,`profit`,`created_at`,`updated_at`) values 
(1,'WCL22-123456','WLC22-211691','123125412312','100','2022-06-27 03:52:42','2022-06-28 03:52:45'),
(2,'WCL22-123456','WLC22-211691','123125412312','100','2022-06-27 03:00:35','2022-06-29 03:52:38');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2022_03_01_014238_create_sessions_table',1),
(7,'2022_03_03_085034_add_users_table',2),
(8,'2022_03_05_230340_create_transactions_table',3),
(9,'2022_03_06_084140_create_user_permissions_table',4),
(10,'2022_03_06_091403_add_users_role_table',5),
(11,'2022_03_14_000627_create_user_roles_table',6),
(12,'2022_03_15_185030_create_products_table',7),
(13,'2022_03_20_065343_add_users_level_table',8),
(14,'2022_03_20_211056_create_stores_table',9),
(15,'2022_03_22_225636_create_codes_table',10),
(16,'2022_03_25_041018_create_product_categories_table',11),
(17,'2022_03_25_041111_create_product_sub_categories_table',11),
(18,'2022_04_01_093822_create_network_infos_table',12),
(19,'2022_06_26_180400_create_group_sales_bonuses_table',12),
(20,'2022_06_26_180505_create_team_sales_bonuses_table',12),
(21,'2022_08_01_203221_create_userinfos_table',13);

/*Table structure for table `network_infos` */

DROP TABLE IF EXISTS `network_infos`;

CREATE TABLE `network_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `network_infos` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('admin@gmail.com','$2y$10$lCVf3H2fuqj07m7PpsiHtOYs1bmu4IcKgVGvxYypGx4mK/6JcA84W','2022-03-15 00:09:12');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `product_categories` */

DROP TABLE IF EXISTS `product_categories`;

CREATE TABLE `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_initial` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_categories` */

insert  into `product_categories`(`id`,`category_name`,`category_initial`,`created_at`,`updated_at`) values 
(3,'Major Products','MAJ','2022-03-25 07:42:27','2022-03-25 07:42:27'),
(4,'Minor Products','MIN','2022-03-25 07:42:38','2022-03-25 07:42:38'),
(6,'Bundle Products','BDL','2022-03-25 13:39:07','2022-03-25 13:39:07'),
(10,'Example','EXM','2022-03-28 11:30:48','2022-03-28 11:30:48');

/*Table structure for table `product_sub_categories` */

DROP TABLE IF EXISTS `product_sub_categories`;

CREATE TABLE `product_sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_sub_categories` */

insert  into `product_sub_categories`(`id`,`category_id`,`sub_cat_name`,`created_at`,`updated_at`) values 
(1,'3','Vitamins','2022-03-25 07:47:25','2022-03-25 12:24:31'),
(2,'6','Cosmetic Products','2022-03-25 13:39:30','2022-03-25 13:39:30'),
(6,'10','Example Sub Category','2022-03-28 11:31:04','2022-03-28 11:31:04');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packaging` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packaging_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `raw_price` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`category_id`,`sub_category_id`,`product_name`,`description`,`packaging`,`packaging_type`,`raw_price`,`srp`,`product_code`,`created_at`,`updated_at`) values 
(1,'6','2','make Up','Some Description','3','Pack','1500','1600',NULL,'2022-03-26 00:33:04','2022-03-26 22:35:58'),
(2,'3','1','Example Product','Some Description','2','Box','1500','1600',NULL,'2022-03-26 00:34:12','2022-03-26 00:34:12'),
(3,'3','1','Example Product','Some Description','2','Box','1500','1600',NULL,'2022-03-26 00:38:06','2022-03-26 00:38:06'),
(6,'10','6','Example Product','Example Description','2','Box','1500','1600',NULL,'2022-03-28 11:31:31','2022-03-28 11:31:31'),
(7,'10','6','Example Product','Some Description','2','bottles','1000','1200',NULL,'2022-03-28 12:25:17','2022-03-28 12:25:17'),
(8,'3','1','Business Package','This is for activation of Business Product User','2','Pack','4000','4500',NULL,'2022-05-19 03:34:49','2022-05-19 03:34:49');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('cQh7aI2nIEOPOZceZtBLNfjAnYwPzzYvxWf8Qrai',14,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.134 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZmZTdHlwa2V4MTVNSFJva01Ka3lSQlladEZmZHkyOG90TkdLU1NBNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92ZXJpZnktbG9jYXRpb24iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJENadEhqeUo0dTVQbk5JOHdHa3puNC51dE9LUkVpZ1lQcjZrdUFHeWNFRXNuanVETEVuZDB1IjtzOjM6InVybCI7YTowOnt9fQ==',1659439560),
('HGUfXDyqURoLAJlSs1p6Qhs8oJCl9wPUEHjt7bwR',1,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRmRoRU1Sc1dMaFBZRUhqS0JvRWtxb09QTDF5aGp6Uml6UWN4b2wxdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92ZXJpZnktbG9jYXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMlBPYmY3RGk5ZHFDWmFrWTczR2lnZVhWd1NKRUVweUF0QUZyWjBFUGp1eUVndEJvVUdsLnUiO30=',1669249554);

/*Table structure for table `stores` */

DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `stores` */

insert  into `stores`(`id`,`product_code`,`product_name`,`photo`,`description`,`price`,`created_at`,`updated_at`) values 
(1,'MAJ01654321','Example Product',NULL,NULL,'1500','2022-03-20 21:20:30','2022-03-20 21:20:30');

/*Table structure for table `team_sales_bonuses` */

DROP TABLE IF EXISTS `team_sales_bonuses`;

CREATE TABLE `team_sales_bonuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_sales_bonuses` */

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`user_id`,`name`,`amount`,`transaction_id`,`product_id`,`product_code`,`description`,`status`,`created_at`,`updated_at`) values 
(1,NULL,'Penny Lane','150','123456789','123456',NULL,NULL,NULL,NULL,NULL),
(2,NULL,'Peter Parker','100','012345678','012345',NULL,NULL,NULL,NULL,NULL),
(3,NULL,'Thanos Bane','120','134025607','123123',NULL,NULL,NULL,NULL,'2022-03-06 03:45:47'),
(8,NULL,'admin','123','1282546124','123',NULL,NULL,NULL,'2022-03-06 03:50:26','2022-03-06 03:50:26'),
(9,NULL,'user','123','1526680493','123',NULL,NULL,NULL,'2022-03-06 03:50:32','2022-03-06 03:50:32'),
(10,NULL,'user','1234','1388314012','12345',NULL,NULL,NULL,'2022-03-06 03:50:39','2022-03-06 03:50:39'),
(12,'5',NULL,'1500','1456938','MAJ01654321',NULL,NULL,NULL,'2022-03-20 22:24:15','2022-03-20 22:24:15'),
(13,'10',NULL,NULL,'7055237','Test652312233',NULL,NULL,NULL,'2022-03-27 01:08:05','2022-03-27 01:08:05'),
(16,'9','Others User','1200','59250728','7','EXM280322IKVGSB3O',NULL,NULL,'2022-03-28 12:34:51','2022-03-28 12:34:51'),
(20,'8','Other User','1600','66738953','6','EXM280322ELQA42JR',NULL,NULL,'2022-04-02 12:52:02','2022-04-02 12:52:02'),
(21,'8','Other User','1600','18892697','6','EXM280322ELQA42JR',NULL,NULL,'2022-04-02 13:00:51','2022-04-02 13:00:51'),
(22,'12','new user','1200','73966646','7','EXM280322IKVGSB3O',NULL,NULL,'2022-04-09 18:53:47','2022-04-09 18:53:47'),
(31,'12','new user','1600','71820045','6','EXM280322ELQA42JR',NULL,NULL,'2022-04-10 06:04:12','2022-04-10 06:04:12'),
(42,'WLC22-407957','user','1000','16293023','8','MAJ190522O8ZGEWAJ','Direct Referral','Credited','2022-06-26 04:02:40','2022-06-26 04:02:40'),
(43,'WCL22-123456','Super Admin','1000','13552363','8','MAJ190522O8ZGEWAJ','Direct Referral','Hold','2022-06-26 04:02:40','2022-06-26 04:02:40'),
(44,'WLC22-211691','new user','4500','69574142','8','MAJ190522O8ZGEWAJ',NULL,NULL,'2022-06-26 04:02:40','2022-06-26 04:02:40');

/*Table structure for table `user_data` */

DROP TABLE IF EXISTS `user_data`;

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `membership` varchar(150) DEFAULT NULL,
  `number` varchar(25) DEFAULT NULL,
  `pu` varchar(25) DEFAULT NULL,
  `pe` varchar(25) DEFAULT NULL,
  `be` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_data` */

insert  into `user_data`(`id`,`name`,`membership`,`number`,`pu`,`pe`,`be`) values 
(2,'Juan Dela Cruz','User','09123456789','4','2','1');

/*Table structure for table `user_permissions` */

DROP TABLE IF EXISTS `user_permissions`;

CREATE TABLE `user_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_permissions` */

insert  into `user_permissions`(`id`,`role`,`route_url`,`route_name`,`created_at`,`updated_at`) values 
(1,'super_admin','dashboard','Dashboard','2022-03-06 09:19:50','2022-03-06 09:19:50'),
(2,'super_admin','team','Team','2022-03-06 09:23:04','2022-03-06 09:23:04'),
(3,'super_admin','transactions','Transactions','2022-03-06 09:23:11','2022-03-06 09:23:11'),
(4,'super_admin','user-permissions','User Permissions','2022-03-06 09:23:17','2022-03-06 09:23:17'),
(8,'super_admin','rewards','Rewards','2022-03-09 10:56:25','2022-03-09 10:56:25'),
(9,'super_admin','store','Store','2022-03-09 10:56:31','2022-03-09 10:56:31'),
(10,'user','transactions','Transactions','2022-03-09 10:56:39','2022-03-09 10:56:39'),
(11,'user','store','Store','2022-03-09 10:56:49','2022-03-09 10:56:49'),
(12,'super_admin','roles','Roles','2022-03-16 18:18:43','2022-03-16 18:18:43'),
(15,'product-endorsers','dashboard','Dashboard','2022-03-16 19:43:09','2022-03-21 23:17:07'),
(16,'product-endorsers','transactions','Transactions','2022-03-27 01:09:51','2022-03-27 01:09:51'),
(17,'product-endorsers','rewards','Rewards','2022-03-27 01:10:02','2022-03-27 01:10:02'),
(19,'product-endorsers','team','Team','2022-03-28 11:19:38','2022-03-28 11:19:38'),
(20,'business-endorsers','dashboard','Dashboard','2022-06-26 03:51:30','2022-06-26 03:51:30'),
(21,'business-endorsers','transactions','Transactions','2022-06-26 03:52:22','2022-06-26 03:52:22'),
(22,'business-endorsers','rewards','Rewards','2022-06-26 03:52:46','2022-06-26 03:52:46'),
(23,'business-endorsers','team','Team','2022-06-26 03:53:05','2022-06-26 03:53:05');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`id`,`role`,`name`,`redirect_url`,`redirect_url_name`,`created_at`,`updated_at`) values 
(1,'admin','Company','dashboard','Dashboard','2022-03-16 19:15:26','2022-03-16 19:15:26'),
(2,'product-endorsers','Reseller','dashboard','Dashboard','2022-03-16 19:21:41','2022-03-16 19:21:41'),
(4,'superadmin','Super Admin','dashboard','Dashboard','2022-03-16 19:41:21','2022-03-16 19:41:21'),
(5,'business-endorsers','Business Endorser','dashboard','Dashboard','2022-03-16 19:42:01','2022-04-26 15:26:33'),
(6,'user','User','transactions','Transactions','2022-03-16 19:42:16','2022-03-16 19:42:16'),
(7,'super_admin','Super Admin','dashboard','Dashboard','2022-03-16 20:57:50','2022-03-16 21:11:42');

/*Table structure for table `userinfos` */

DROP TABLE IF EXISTS `userinfos`;

CREATE TABLE `userinfos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barangay` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barangay_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `userinfos` */

insert  into `userinfos`(`id`,`user_id`,`region`,`region_code`,`province`,`province_code`,`city`,`city_code`,`barangay`,`barangay_code`,`created_at`,`updated_at`) values 
(2,'WLC22-211691','NATIONAL CAPITAL REGION (NCR)','13','NCR, SECOND DISTRICT','1374','QUEZON CITY','137404','Batasan Hills','137404139','2022-08-02 19:13:59','2022-08-02 19:13:59'),
(3,'WLC22-264568','NATIONAL CAPITAL REGION (NCR)','13','NCR, SECOND DISTRICT','1374','QUEZON CITY','137404','Commonwealth','137404022','2022-08-02 19:24:29','2022-08-02 19:24:29');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `referred_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endorsers_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tpp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `cbb` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `business_account_counter` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '4',
  `business_account_counter_not_ba` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ba_direct_cash` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ba_direct_cash_not_ba` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `available_cash_bal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total_cash_bonus` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`referred_by`,`endorsers_id`,`level`,`tpp`,`cbb`,`business_account_counter`,`business_account_counter_not_ba`,`ba_direct_cash`,`ba_direct_cash_not_ba`,`available_cash_bal`,`total_cash_bonus`,`role`,`full_name`,`first_name`,`middle_name`,`last_name`,`address`,`email`,`cp_num`,`activation_code`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(1,'123456789','WCL22-123456','0','0','2','1','0','0','5000','6000','6000','super_admin','Super Admin',NULL,NULL,NULL,NULL,'superadmin@gmail.com','09123456789','','2022-03-15 12:16:04','$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-01 02:32:34','2022-06-26 04:02:40'),
(5,'WCL22-123456','WLC22-407957','1','0','2','4','0','5000','0','1500','1500','business-endorsers','user',NULL,NULL,NULL,NULL,'user@gmail.com','09123456789',NULL,'2022-03-15 12:16:04','$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-11 04:28:45','2022-06-26 04:02:40'),
(6,'WCL22-123456','WLC22-427936','1','0','3','4','0','0','0','0','0','user','Some User',NULL,NULL,NULL,NULL,'someUser@gmail.com','09123456789',NULL,NULL,'$2y$10$4.eZIAnd.Z75iYxFwwuFi.g7a0qI4sZnNgf1UsCaQqGYXIasz8g4u',NULL,NULL,NULL,NULL,NULL,'2022-03-11 09:53:10','2022-03-11 09:53:10'),
(7,'WCL22-123456','WLC22-192522','1','0','3','4','0','0','0','0','0','user','Some Use',NULL,NULL,NULL,NULL,'myUser@gmail.com','09123456789',NULL,NULL,'$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-11 09:56:25','2022-03-11 09:56:25'),
(8,'WLC22-407957','WLC22-195522','2','0','1','4','0','0','0','0','0','product-endorsers','Other User',NULL,NULL,NULL,NULL,'otherUser@gmail.com','09123456789',NULL,'2022-03-15 12:16:04','$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-20 14:45:32','2022-04-02 13:00:51'),
(9,'WLC22-195522','WLC22-195422','3','2400','3','4','0','0','0','0','0','user','Others User','new','','users',NULL,'othersUser@gmail.com','09123456789',NULL,'2022-03-15 12:16:04','$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-20 14:45:32','2022-03-28 13:36:19'),
(10,'WLC22-195422','WLC22-194422','6','0','3','4','0','0','0','0','0','product-endorsers','More User',NULL,NULL,NULL,NULL,'moreUser@gmail.com','09123456789',NULL,'2022-03-15 12:16:04','$2y$10$2PObf7Di9dqCZakY73GigeXVwSJEEpyAtAFrZ0EPjuyEgtBoUGl.u',NULL,NULL,NULL,NULL,NULL,'2022-03-20 14:45:32','2022-03-27 01:08:05'),
(12,'WLC22-407957','WLC22-211691','0','14000','4','4','0','0','0','0','0','business-endorsers','new user','new','name','user','#123 my Street','newUser@gmail.com','0123456789',NULL,'2022-04-09 18:50:57','$2y$10$HZq93w56agcvAc/oLiiU9.DMJ1D9K4mATPKGW3O6nvMDWd95aBr9i',NULL,NULL,'lUwFVXnUWC7a7WV3KrUeh70AORYdol1schdeWw6sxAa81nAGE19GMu88i38a',NULL,NULL,'2022-04-09 18:49:48','2022-06-26 04:02:40'),
(13,'WCL22-123456','WLC22-333183','0','0','4','4','0','0','0','0','0','user','First Last','First','Middle','Last','Quezon City','zpogixd1@gmail.com','09123456789',NULL,'2022-05-11 16:58:44','$2y$10$h7i3LEAu9EY9F92Z8pNYS.mKffVJoK/4rSuXbCcjv/1/OPFpweMLS',NULL,NULL,NULL,NULL,NULL,'2022-05-11 16:50:27','2022-05-11 16:59:19'),
(14,'WLC22-211691','WLC22-264568','0','0','4','4','0','0','0','0','0','user','Last Account','Last','Name','Account','#secret','lastAccount@gmail.com','0123456789',NULL,'2022-05-11 16:58:44','$2y$10$CZtHjyJ4u5PnNI8wGkzn4.utOKREigYPr6kuAGycEEsnjuDLEnd0u',NULL,NULL,NULL,NULL,NULL,'2022-08-02 19:20:37','2022-08-02 19:24:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
