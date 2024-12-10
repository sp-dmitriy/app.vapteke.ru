-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 27 2024 г., 09:59
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vaptekdn_admin2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `app_settings`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(1, 'appconfiguration', '{\"app_name\":\"Ваптеке\",\"url\":\"https://vapteke.ru/?app=1\",\"appLanuguage\":\"ru\",\"isJavascriptEnable\":\"true\",\"isSplashScreen\":\"true\",\"isZoomFunctionality\":\"false\",\"navigationStyle\":\"fullscreen\",\"header_style\":\"left\",\"is_walkthrough\":\"false\",\"is_webrtc\":\"false\",\"is_floating_button\":\"false\",\"floating_button_style\":\"regular\",\"is_pull_refresh\":\"true\",\"tab_style\":\"tab_with_title_icon\",\"bottom_navigation\":\"bottom_navigation_3\",\"walkthrough_style\":\"walkthrough_style_3\",\"clear_cookie\":\"false\",\"isExitPopupScreen\":\"true\",\"disable_header\":\"false\",\"disable_footer\":\"false\",\"app_logo\":\"https://app.vapteke.ru/admin-2/upload/app_logo.png\",\"floating_button\":\"https://app.vapteke.ru/admin-2/upload/floating_button.png\"}'),
(2, 'admob', '{\"ads_type\":\"none\",\"admobBannerID\":\"\",\"admobIntentialID\":\"\",\"admobBannerIDIOS\":\"\",\"admobIntentialIDIOS\":\"\",\"facebookBannerID\":\"\",\"facebookIntentialID\":\"\",\"facebookBannerIDIOS\":\"\",\"facebookIntentialIDIOS\":\"\"}'),
(3, 'progressbar', '{\"is_progressbar\":\"true\",\"loaderStyle\":\"Ring\"}'),
(4, 'theme', '{\"themeStyle\":\"Custom\",\"customColor\":\"#90d337\",\"gradientColor1\":null,\"gradientColor2\":null}'),
(5, 'about', '{\"whatsAppNumber\":\"\",\"instagramUrl\":\"\",\"twitterUrl\":\"\",\"facebookUrl\":\"\",\"callNumber\":\"\",\"snapchat\":\"\",\"skype\":\"\",\"messenger\":\"\",\"youtube\":\"\",\"isShowAbout\":\"false\",\"copyright\":\"\",\"description\":\"\"}'),
(6, 'onesignal_configuration', '{\"app_id\":\"aa7fd4df-1451-4510-9f2b-0833fdfb452e\",\"rest_api_key\":\"NWQ0N2I4OGItZjI4Ni00MmM0LTg5MTEtODFiNmJjYWY1ODg1\"}'),
(7, 'splash_configuration', '{\"first_color\":\"#ffffff\",\"second_color\":\"#ffffff\",\"title\":\"Ваптеке\",\"enable_title\":\"true\",\"title_color\":\"#3b3b3b\",\"enable_logo\":\"true\",\"enable_background\":\"false\",\"splash_logo_url\":\"https://app.vapteke.ru/admin-2/upload/splash_logo.png\",\"splash_background_url\":\"https://app.vapteke.ru/admin-2/upload/splash_background.png\"}'),
(8, 'exitpopup_configuration', '{\"title\":\"Вы хотите выйти из приложения? \",\"positive_text\":\"Да\",\"negative_text\":\"Нет\",\"enable_image\":\"true\",\"exit_image_url\":\"https://app.vapteke.ru/admin-2/upload/cancel.png\"}'),
(9, 'share_content', '{\"share\":\"ххх\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `floating_button`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `floating_button`;
CREATE TABLE `floating_button` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `floating_button`
--

INSERT INTO `floating_button` (`id`, `title`, `image`, `url`, `status`) VALUES
(1, 'Search', 'ic_search.png', 'https://www.google.com/', 1),
(2, 'Message', 'ic_message.png', 'https://www.google.com/', 1),
(3, 'Share', 'ic_share.png', 'https://www.google.com/', 1),
(4, 'Home', 'ic_home.png', 'https://www.google.com/', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `left_header_icon`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `left_header_icon`;
CREATE TABLE `left_header_icon` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `left_header_icon`
--

INSERT INTO `left_header_icon` (`id`, `title`, `value`, `image`, `type`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Back Button 1', 'ic_back1', 'ic_back1.png', 'event', NULL, 0, '2021-04-09 02:19:17', '2021-04-09 02:19:17'),
(2, 'Back Button 2', 'ic_back2', 'ic_back2.png', 'event', NULL, 1, '2021-04-09 02:19:27', '2021-04-09 02:19:27'),
(3, 'Home', 'ic_home', 'ic_home.png', 'event', NULL, 0, '2021-04-09 02:20:00', '2021-04-09 02:20:00'),
(4, 'Profile', 'ic_profile', 'ic_profile.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:20:29', '2021-04-09 02:20:29'),
(5, 'Close', 'ic_close', 'ic_close.png', 'event', NULL, 0, '2021-04-09 02:20:30', '2021-04-09 02:20:30'),
(6, 'Search', 'ic_search', 'ic_search.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:20:36', '2021-04-09 02:20:36'),
(7, 'Add', 'ic_add', 'ic_add.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:20:51', '2021-04-09 02:20:51');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `parent_id` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`, `type`, `image`, `url`, `status`, `parent_id`) VALUES
(1, 'Home', 'bottom_navigation', '1618040510-ic_home.png', 'https://meetmighty.com/mightywebbuilder', 1, 0),
(2, 'Search', 'bottom_navigation', '1618040523-ic_search.png', 'https://codecanyon.net/user/meetmighty/portfolio', 1, 0),
(3, 'Cart', 'bottom_navigation', '1618040544-ic_cart.png', 'https://www.myntra.com/', 1, 0),
(4, 'Settings', 'bottom_navigation', '1618040565-ic_settings.png', 'https://www.google.com/', 1, 0),
(7, 'About', 'sidedrawer', '1618655222-icon_4.png', 'https://themeforest.net/user/meetmighty', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `right_header_icon`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `right_header_icon`;
CREATE TABLE `right_header_icon` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `right_header_icon`
--

INSERT INTO `right_header_icon` (`id`, `title`, `value`, `image`, `type`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Reload', 'ic_reload', 'ic_reload.png', 'event', NULL, 1, '2020-06-07 18:28:42', '2020-06-07 18:28:42'),
(2, 'Search', 'ic_search', 'ic_search.png', 'url', 'https://vapteke.ru/?app=1', 0, '2020-06-07 18:48:16', '2020-06-07 18:48:16'),
(3, 'Cart', 'ic_cart', 'ic_cart.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:11:40', '2021-04-09 02:11:40'),
(4, 'Settings', 'ic_settings', 'ic_settings.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 07:33:15', '2021-04-09 07:33:17'),
(5, 'Share', 'ic_share', 'ic_share.png', 'event', NULL, 0, '2020-06-07 18:46:42', '2020-06-07 18:46:42'),
(6, 'Close', 'ic_close', 'ic_close.png', 'event', NULL, 0, '2021-04-09 02:10:36', '2021-04-09 02:10:36'),
(7, 'Profile', 'ic_profile', 'ic_profile.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:11:54', '2021-04-09 02:11:54'),
(8, 'Message', 'ic_message', 'ic_message.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:12:47', '2021-04-09 02:12:47'),
(9, 'Notification', 'ic_notification', 'ic_notification.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-04-09 02:13:11', '2021-04-09 02:13:11'),
(10, 'Favourite', 'ic_favourite', 'ic_favourite.png\r\n', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:01:26', NULL),
(11, 'Add', 'ic_add', 'ic_add.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:01:26', NULL),
(12, 'List', 'ic_list', 'ic_list.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:03:34', NULL),
(13, 'Filter', 'ic_filter', 'ic_filter.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:03:34', NULL),
(14, 'Chat', 'ic_chat', 'ic_chat.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:04:24', NULL),
(15, 'About', 'ic_about', 'ic_about.png', 'url', 'https://vapteke.ru/?app=1', 0, '2021-06-24 14:04:24', NULL),
(16, 'QR Code', 'ic_qr_code', 'ic_qr_code.png', 'event', NULL, 0, '2022-07-25 02:10:36', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tabs`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `tabs`;
CREATE TABLE `tabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tabs`
--

INSERT INTO `tabs` (`id`, `title`, `image`, `url`, `status`) VALUES
(1, 'Home', 'ic_home.png', 'https://www.google.com/', 1),
(2, 'Search', 'ic_search.png', 'https://www.google.com/', 1),
(3, 'Profile', 'ic_profile.png', 'https://www.google.com/', 1),
(4, 'Wishlist', 'ic_heart.png', 'https://www.google.com/', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`) VALUES
(1, 'admin@example.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `user_agent`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `user_agent`;
CREATE TABLE `user_agent` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `android` text,
  `ios` text,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user_agent`
--

INSERT INTO `user_agent` (`id`, `title`, `android`, `ios`, `status`) VALUES
(1, 'Web Browser', 'random', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1 Mobile/15E148 Safari/604.1', 0),
(2, 'Web browser - 2', 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/90.0.4430.78 Mobile/15E148 Safari/604.1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `walkthrough`
--
-- Создание: Авг 28 2024 г., 08:13
--

DROP TABLE IF EXISTS `walkthrough`;
CREATE TABLE `walkthrough` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `walkthrough`
--

INSERT INTO `walkthrough` (`id`, `title`, `subtitle`, `image`, `status`) VALUES
(1, 'Mighty Web', 'MightyWeb app is used to convert your Website to Application Mobile', 'default.png', 1),
(2, 'Theme Style', 'Mighty Web holds stunning options of Theme styles that you can apply to your mobile app to define your app better.', 'default.png', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `floating_button`
--
ALTER TABLE `floating_button`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `left_header_icon`
--
ALTER TABLE `left_header_icon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `right_header_icon`
--
ALTER TABLE `right_header_icon`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_agent`
--
ALTER TABLE `user_agent`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `walkthrough`
--
ALTER TABLE `walkthrough`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `floating_button`
--
ALTER TABLE `floating_button`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `left_header_icon`
--
ALTER TABLE `left_header_icon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `right_header_icon`
--
ALTER TABLE `right_header_icon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user_agent`
--
ALTER TABLE `user_agent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `walkthrough`
--
ALTER TABLE `walkthrough`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
