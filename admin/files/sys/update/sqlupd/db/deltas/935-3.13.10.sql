--
-- Отключение внешних ключей 
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

SET sql_mode='';

CREATE TABLE `addons_autopayments` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`uid` INT(10) UNSIGNED NULL DEFAULT NULL,
	`bughtypeid` INT(10) UNSIGNED NULL DEFAULT NULL,
	`tnx_id` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`card` TINYTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`date_add` DATETIME NULL DEFAULT NULL,
	`status` TINYTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE,
	UNIQUE INDEX `uid` (`uid`) USING BTREE,
	FULLTEXT INDEX `status` (`status`)
) COLLATE='utf8mb4_general_ci' ENGINE=InnoDB AUTO_INCREMENT=1;


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;