
DROP TABLE if exists `cars`;

CREATE TABLE `cars` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `model` varchar(255) default NULL,
  
) AUTO_INCREMENT=1;

INSERT INTO `type of car` (`id`,`name`,`model`) VALUES 
VALUES
	(`1`,'Ferrari',`812`),
	(`2`,'Ford,`GT'),
	(`121`,'Lamborghini Huracan', `LP 610`),
	(`3`,'Porche`,`911'),
	(`134`,'Mclaren`,`720s'),
	(`4`,'Ferrari`,`488 GTB'),
	(`6`,'Aston Martin`,`DBS'),
	(`126`,'Audi`,`R8')
