
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`e-commercespb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `vinylcraze`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `price` varchar(225) DEFAULT NULL,
  `quantity` varchar(225) DEFAULT NULL,
  `total_price` varchar(225) DEFAULT NULL,
  `product` bigint NOT NULL,
  `user` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2h19ugnvpw7x51hox7ia3o55t` (`user`),
  KEY `FK6tfisfw20mss46ytlkx6jrhmj` (`product`),
  CONSTRAINT `FK2h19ugnvpw7x51hox7ia3o55t` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK6tfisfw20mss46ytlkx6jrhmj` FOREIGN KEY (`product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `images` longblob,
  `name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `address1` varchar(225) DEFAULT NULL,
  `address2` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `mobile_no` varchar(225) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `quantity` varchar(225) DEFAULT NULL,
  `state` varchar(225) DEFAULT NULL,
  `total` varchar(225) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `products` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeuigqvxj1fv8l7wie6bxyciqm` (`products`),
  CONSTRAINT `FKeuigqvxj1fv8l7wie6bxyciqm` FOREIGN KEY (`products`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `image` longblob,
  `name` varchar(225) DEFAULT NULL,
  `price` varchar(225) DEFAULT NULL,
  `category` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqx9wikktsev17ctu0kcpkrafc` (`category`),
  CONSTRAINT `FKqx9wikktsev17ctu0kcpkrafc` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) DEFAULT NULL,
  `created_datetime` datetime(6) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_datetime` datetime(6) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `contact_no` varchar(225) DEFAULT NULL,
  `email_id` varchar(225) DEFAULT NULL,
  `first_name` varchar(225) DEFAULT NULL,
  `last_name` varchar(225) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,NULL,NULL,NULL,NULL,'2451214565','admin@gmail.com','admin','admin','admin123','222',1);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
