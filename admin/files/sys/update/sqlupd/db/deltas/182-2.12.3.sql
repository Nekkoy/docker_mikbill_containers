--
-- Отключение внешних ключей
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';

--
-- Создать таблицу "switch_pon_logs"
--
CREATE TABLE switch_pon_logs (
  swplgid BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  swid INT(10) UNSIGNED NOT NULL,
  ont VARCHAR(17) NOT NULL,
  rx DOUBLE(20, 2) NOT NULL,
  tx DOUBLE(20, 2) NOT NULL,
  onuid VARCHAR(17) NOT NULL,
  distanse INT(10) UNSIGNED NOT NULL,
  temperature DOUBLE(20, 2) NOT NULL,
  uid BIGINT(16) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (swplgid)
)
ENGINE = INNODB
CHARACTER SET koi8r
COLLATE koi8r_general_ci;


--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
