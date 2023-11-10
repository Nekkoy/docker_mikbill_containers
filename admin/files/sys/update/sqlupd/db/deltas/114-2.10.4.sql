--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

CREATE TABLE addons_ipay (
  order_id INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  uid BIGINT(16) UNSIGNED DEFAULT NULL,
  amount DECIMAL(18, 2) UNSIGNED DEFAULT NULL,
  server_time DATETIME DEFAULT NULL,
  order_time DATETIME DEFAULT NULL,
  ident CHAR(50) DEFAULT NULL,
  status TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (order_id)
)
ENGINE = INNODB
CHARACTER SET koi8r
COLLATE koi8r_general_ci;

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
