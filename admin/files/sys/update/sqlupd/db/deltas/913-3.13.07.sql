--
-- Отключение внешних ключей 
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

SET sql_mode='';

ALTER TABLE `tickets_categories_list` ADD COLUMN `maincategoryid` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `categoryid`;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;