/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- --------------------------------------------------------

SET NAMES 'utf8';
--
-- Структура таблицы `bugh_plategi_type`
--

DROP TABLE IF EXISTS `bugh_plategi_type`;
CREATE TABLE IF NOT EXISTS `bugh_plategi_type` (
  `bughtypeid` smallint(10) unsigned NOT NULL,
  `typename` char(128) NOT NULL,
  `sign` char(1) NOT NULL DEFAULT '' COMMENT 'знак +/-',
  `fictitious` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'не изменяет депозит',
  `deposit_action` char(1) NOT NULL DEFAULT '?' COMMENT 'действие над балансом',
  `deposit_action_by_user` char(1) NOT NULL DEFAULT '' COMMENT 'действие с депозитом абонентом'
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=koi8r;

--
-- Дамп данных таблицы `bugh_plategi_type`
--

INSERT INTO `bugh_plategi_type` (`bughtypeid`, `typename`, `sign`, `fictitious`, `deposit_action`, `deposit_action_by_user`) VALUES
(1, 'Абонентская плата за текущий месяц', '+', 0, '-', ''),
(2, 'Абонентская плата за текущий день', '+', 0, '-', ''),
(5, 'Пополнение счета', '+', 0, '+', '+'),
(6, 'Ошибка ввода', '-', 0, '-', ''),
(7, 'Снятие со счета', '-', 0, '-', ''),
(9, 'Оплата аренды внешнего IP адреса', '+', 0, '-', ''),
(10, 'Перерасчет', '/', 0, '/', ''),
(15, 'Премия За Общественнополезные работы', '+', 0, '+', ''),
(16, 'ПОДАРОК!', '+', 0, '+', ''),
(17, 'Акция', '+', 0, '+', ''),
(18, 'Кредит', '', 0, '?', ''),
(20, 'Блокировка интернета в связи с окончанием средств', '', 1, '0', ''),
(21, 'Остаточная абонплата за месяц', '', 0, '-', ''),
(22, 'Остаточная Абонентская плата за текущий месяц', '', 0, '-', ''),
(23, 'Изменение пакета с нового месяца', '', 0, '?', ''),
(24, 'Возврат из за перебоев сети', '+', 0, '+', ''),
(25, 'Ремонт', '-', 0, '-', ''),
(26, 'Изменение тарифного пакета', '', 0, '?', ''),
(27, 'Подключение', '-', 0, '-', ''),
(28, 'Пополнение карточкой', '+', 0, '+', '+'),
(29, '% за пользование кредитом', '', 0, '-', ''),
(30, 'Создание второй учетной записи', '-', 0, '-', ''),
(31, 'Пополнение MobyAZS(24NonStop)', '+', 0, '+', '+'),
(32, 'Услуга Real IP', '', 0, '-', ''),
(33, 'Активация Акционного тарифа', '', 0, '?', ''),
(34, 'Услуга "Турбо"', '', 0, '?', ''),
(35, 'Активация услуги Кредит', '', 0, '?', ''),
(36, 'Активация услуги Кредит с %', '', 0, '?', ''),
(37, 'Пополнение OSMP', '+', 0, '+', '+'),
(38, 'Пополнение Liqpay', '+', 0, '+', '+'),
(39, 'Оплата заморозки', '', 0, '-', '+'),
(40, 'Пополнение Yandex деньги', '+', 0, '+', '+'),
(41, 'Пополнение WebMoney', '+', 0, '+', '+'),
(42, 'Отключение по задолженности', '', 1, '0', ''),
(43, 'Удаление по неактивности', '', 1, '0', ''),
(44, 'Пополнение CoPayCo', '+', 0, '+', '+'),
(45, 'Безналичный платеж', '+', 0, '+', '+'),
(46, 'Активация учетки абонента', '', 0, '-', ''),
(47, 'Пополнение МТС-терминал', '+', 0, '+', '+'),
(48, 'Оплата Разморозки', '', 0, '-', ''),
(49, 'Возврат Абонплаты по заморозке', '+', 0, '+', ''),
(50, 'Оплата Dr.Web', '', 0, '-', ''),
(51, 'Абонентская плата заморозки', '+', 0, '-', ''),
(52, 'Пополнение EasySoft', '+', 0, '+', '+'),
(53, 'Пополнение OnePay', '+', 0, '+', '+'),
(54, 'Пополнение Privat24', '+', 0, '+', '+'),
(55, 'Пополнение City-Pay', '+', 0, '+', '+'),
(56, 'Пополнение Elecsnet', '+', 0, '+', '+'),
(57, 'Пополнение w.QiWi.ru', '+', 0, '+', '+'),
(58, 'Пополнение ComPay', '+', 0, '+', '+'),
(59, 'Пополнение RoboKassa', '+', 0, '+', '+'),
(60, 'Пополнение терминал Приват', '+', 0, '+', '+'),
(61, 'Пополнение терминал Кассира.НЕТ', '+', 0, '+', '+'),
(62, 'API', '/', 0, '/', '+'),
(63, 'Пополнение терминал Платёжка (Банк нац. кредит)', '+', 0, '+', '+'),
(64, 'Плата за покупку устройства', '', 0, '-', ''),
(65, 'Плата за аренду устройства', '+', 0, '-', ''),
(66, 'Пополнение терминал Pegas', '+', 0, '+', '+'),
(67, 'Пополнение iBox', '+', 0, '+', '+'),
(68, 'Пополнение Приват (v.2)', '+', 0, '+', '+'),
(69, 'Пополнение Балтика Банк', '+', 0, '+', '+'),
(70, 'Пополнение Приват Р/С', '+', 0, '+', '+'),
(71, 'Пополнение E-Pay.com.ua', '+', 0, '+', '+'),
(72, 'Перевод средств абоненту', '-', 0, '-', ''),
(73, 'Перевод средств от абонента', '+', 0, '+', ''),
(74, 'Комиссия за перевод средств абоненту', '-', 0, '-', ''),
(75, 'Возврат абонплаты при смене тарифа', '+', 0, '+', ''),
(76, 'Пополнение СберБанк России (ООО Биллинговые Технологии)', '+', 0, '+', '+'),
(77, 'Пополнение ПСКБ OOS', '+', 0, '+', '+'),
(78, 'Дополнительные услуги - пополнение абонента', '+', 0, '+', '-'),
(79, 'Дополнительные услуги - списание с абонента', '-', 0, '-', '-'),
(80, 'Пополнение PayMaster', '+', 0, '+', '+'),
(81, 'Пополнение КиберПлат', '+', 0, '+', '+'),
(82, 'Пополнение МКБ', '+', 0, '+', '+'),
(83, 'Пополнение Сотас', '+', 0, '+', '+'),
(84, 'Пополнение Платика', '+', 0, '+', '+'),
(85, 'Пополнение КредитПилот', '+', 0, '+', '+'),
(86, 'Пополнение ЯПК', '+', 0, '+', '+'),
(87, 'Пополнение Stripe', '+', 0, '+', '+'),
(88, 'Пополнение eKassir', '+', 0, '+', '+'),
(89, 'Пополнение PayPal', '+', 0, '+', '+'),
(90, 'Пополнение PayKeeper', '+', 0, '+', '+'),
(91, 'Пополнение UkrPays', '+', 0, '+', '+'),
(92, 'Пополнение СберБанк России (2)', '+', 0, '+', '+'),
(93, 'Бонус', '+', 0, '+', '+'),
(94, 'Пополнение Xplat', '+', 0, '+', '+'),
(95, 'Пополнение РНКБ', '+', 0, '+', '+'),
(96, 'Пополнение PayBerry', '+', 0, '+', '+'),
(97, 'Пополнение Оплата.com', '+', 0, '+', '+'),
(98, 'Пополнение СберБанк2826', '+', 0, '+', '+'),
(99, 'Корректировка', '+', 0, '+', '+'),
(100, 'Перевод личных средств', '/', 0, '/', '+'),
(101, 'Пополнение TYME', '+', 0, '+', '+'),
(102, 'Пополнение Uniteller', '+', 0, '+', '+'),
(103, 'Прокладка кабеля', '-', 0, '-', ''),
(104, 'Пеня', '-', 0, '-', ''),
(105, 'Отмена Безналичного платежа', '-', 0, '-', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bugh_plategi_type`
--
ALTER TABLE `bugh_plategi_type`
  ADD PRIMARY KEY (`bughtypeid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bugh_plategi_type`
--
ALTER TABLE `bugh_plategi_type`
  MODIFY `bughtypeid` smallint(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

