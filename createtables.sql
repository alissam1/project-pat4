DROP TABLE IF EXISTS `model_category`;
DROP TABLE IF EXISTS `models`;
DROP TABLE IF EXISTS `make_years`;
DROP TABLE IF EXISTS `makes`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `makes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `make_years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `make_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compositeIndex` (`year`,`make_id`),
  KEY `make_id` (`make_id`),
  CONSTRAINT `make_years_ibfk_1` FOREIGN KEY (`make_id`) REFERENCES `makes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `models` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `makeyear_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `compositeIndex` (`name`,`makeyear_id`),
  KEY `makeyear_id` (`makeyear_id`),
  CONSTRAINT `models_ibfk_1` FOREIGN KEY (`makeyear_id`) REFERENCES `make_years` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `categories` (

  `CategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Category_Id` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `model_category` (
  `model_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,

  PRIMARY KEY (`id`,`name`,`model_id` )
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `type_category` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  PRIMARY KEY (`id`,`name` )
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `make_years` (
  `id` int(11) NOT NULL,

  `year` int(11) NOT NULL,

  `make_id` int(11) NOT NULL,
  PRIMARY KEY (`id`, `year`, `make_id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `comments` text,
  `photo` varchar(255),
  PRIMARY KEY (`review_id`)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



