--
-- Отключение внешних ключей 
--
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

SET NAMES 'utf8';


--
-- Изменить таблицу "switche_type"
--
ALTER TABLE switche_type
  ADD COLUMN strict_dhcp_mode TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER use_module_find;

--
-- Включение внешних ключей
--
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
