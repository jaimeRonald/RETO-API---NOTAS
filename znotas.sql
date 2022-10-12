-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 12-10-2022 a las 14:40:54
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `znotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id_grupo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_creacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id_grupo`, `nombre`, `estado`, `fecha_creacion`) VALUES
(1, 'GRUPO A', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_11_221604_create_posts_table', 2),
(6, '2022_10_11_231802_create_notifications_table', 3),
(7, '2022_10_12_004609_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `mensaje` varchar(500) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6061e86e-80e7-42f3-9f58-0c8ae445a953', 'App\\Notifications\\PostNotification', 'App\\Models\\User', 5, '{\"post\":16,\"title\":\"esta si\",\"description\":\"madam\",\"time\":\"1 second ago\"}', NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53'),
('85744cd3-73b4-47a5-81bf-9a7c4f34707a', 'App\\Notifications\\PostNotification', 'App\\Models\\User', 3, '{\"post\":16,\"title\":\"esta si\",\"description\":\"madam\",\"time\":\"1 second ago\"}', NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53'),
('b60d2aea-9428-46cf-8120-fbd338f39980', 'App\\Notifications\\PostNotification', 'App\\Models\\User', 2, '{\"post\":16,\"title\":\"esta si\",\"description\":\"madam\",\"time\":\"1 second ago\"}', NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53'),
('cc471fb7-9735-4946-a849-72d4da0e0349', 'App\\Notifications\\PostNotification', 'App\\Models\\User', 4, '{\"post\":16,\"title\":\"esta si\",\"description\":\"madam\",\"time\":\"1 second ago\"}', NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53'),
('f68be0af-8e6b-43fd-9717-e4594fd9019b', 'App\\Notifications\\PostNotification', 'App\\Models\\User', 1, '{\"post\":16,\"title\":\"esta si\",\"description\":\"madam\",\"time\":\"1 second ago\"}', NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ascsdc', 'dcsd', 2, NULL, '2022-10-12 04:07:14', '2022-10-12 04:07:14'),
(2, 'asxas', 'asxas', 2, NULL, '2022-10-12 04:14:04', '2022-10-12 04:14:04'),
(3, 'asdasd', 'asdasd', 2, NULL, '2022-10-12 04:57:29', '2022-10-12 04:57:29'),
(4, 'dsvsdv', 'sdcsdc', 2, NULL, '2022-10-12 05:00:01', '2022-10-12 05:00:01'),
(5, 'asdas', 'asdasd', 2, NULL, '2022-10-12 05:19:38', '2022-10-12 05:19:38'),
(6, 'asdas', 'asasx', 2, NULL, '2022-10-12 05:23:14', '2022-10-12 05:23:14'),
(7, 'marios', 'como que no', 2, NULL, '2022-10-12 05:24:14', '2022-10-12 05:24:14'),
(8, 'prueba solera', 'peruanos en vida', 2, NULL, '2022-10-12 05:52:23', '2022-10-12 05:52:23'),
(9, 'viva la vida', 'precios porulares', 2, NULL, '2022-10-12 05:56:29', '2022-10-12 05:56:29'),
(10, 'mariscal', 'comomooo', 2, NULL, '2022-10-12 05:57:08', '2022-10-12 05:57:08'),
(11, 'franco', 'no es', 2, NULL, '2022-10-12 06:01:01', '2022-10-12 06:01:01'),
(12, 'ami no', 'esta si no', 2, NULL, '2022-10-12 06:02:12', '2022-10-12 06:02:12'),
(13, 'gramatica', 'silabas', 2, NULL, '2022-10-12 06:07:21', '2022-10-12 06:07:21'),
(14, 'ingeniero', 'mamadia', 2, NULL, '2022-10-12 06:08:51', '2022-10-12 06:08:51'),
(15, 'ssssss', 'sssss', 2, NULL, '2022-10-12 06:09:51', '2022-10-12 06:09:51'),
(16, 'esta si', 'madam', 2, NULL, '2022-10-12 06:53:53', '2022-10-12 06:53:53'),
(17, 'imagenes', 'solores', 2, NULL, '2022-10-12 09:21:26', '2022-10-12 09:21:26'),
(18, 'dias', 'soloes', 2, NULL, '2022-10-12 09:22:06', '2022-10-12 09:22:06'),
(19, 'trabaja', 'cosainas', 2, NULL, '2022-10-12 09:23:07', '2022-10-12 09:23:07'),
(20, 'dia d', 'como es la vida', 2, NULL, '2022-10-12 09:24:56', '2022-10-12 09:24:56'),
(21, 'compra', 'ffes', 2, NULL, '2022-10-12 09:27:57', '2022-10-12 09:27:57'),
(22, 'como es creado', 'as', 2, NULL, '2022-10-12 09:32:01', '2022-10-12 09:32:01'),
(23, 'qer', 'ewq', 2, NULL, '2022-10-12 09:33:18', '2022-10-12 09:33:18'),
(26, 'luces', 'arref', 2, 'C:\\Users\\Alquileres\\AppData\\Local\\Temp\\php63E8.tmp', '2022-10-12 09:41:15', '2022-10-12 09:41:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `id_grupo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'raul', 'we@gmail.com', NULL, '1212', 1, NULL, NULL, NULL),
(2, 'Jayda Barton', 'ere@gmail.com', '2022-10-11 21:10:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Y8mKwVtU5q1vZVTCubs2RGfRsFQ3c8haXHHgf8XZegiMOWszVYqJZJXmzGAV', '2022-10-11 21:10:02', '2022-10-11 21:10:02'),
(3, 'Mr. Candelario Kirlin', 'geovanny37@gmail.com', NULL, '$2y$10$9zopAQEwwPaRviTirVxzO.mmmstYsw1AG3p7xfD0c65l8Q5Ha87y.', 1, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(4, 'Joan Ullrich', 'lebsack.rowena@yahoo.com', NULL, '$2y$10$.f1DrtULVRenAFv1cwGaPOH0vxpUUnh0o3bA8shPOSOvFFZ2d8tOK', 1, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(5, 'Thomas Gleichner', 'runolfsdottir.nannie@hotmail.com', NULL, '$2y$10$j/syppIFS3HW8FlDearuEOmoYL6oxykklCbjAXUhR056Jwn8lGO82', 1, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(6, 'Dr. Darion Abshire', 'remington79@ritchie.com', NULL, '$2y$10$ujEcTH4dTnvAxfLKOcQuSOD59IS3RAyUT4qGTy3zbXr4seymepFhu', 2, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(7, 'Clemmie Rippin', 'garrison.barrows@yahoo.com', NULL, '$2y$10$aDskqpq.F5dMpBR3c2Fc/OVguAF8EuhCBGeFla/jlwh8uOsWJY3lm', 2, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(8, 'Chelsie Medhurst', 'clarissa.hayes@herzog.biz', NULL, '$2y$10$qt0D5kG0lkF9y4A5BQbi6ecNY7gcWP4p9Pn/hYzDmUTRIYskOT/G6', 2, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(9, 'Caesar Kohler', 'brayan81@bashirian.com', NULL, '$2y$10$tc9TV/SB7Pbn.vZxhxINv.8mNFdCistTRJn1KoxlAl8HbriACn9Vm', 2, NULL, '2022-10-12 02:55:26', '2022-10-12 02:55:26'),
(10, 'Orlo Skiles II', 'cielo17@pollich.info', NULL, '$2y$10$Nd0lyStk9FlOi3Xq1cBwsuWE3aM45lf4G/ZrdSpUWfLeRuOzTA7Fm', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(11, 'Lloyd Barton', 'vwolff@king.biz', NULL, '$2y$10$OwAYqtAgSDyNoh6/D3Pnv.HmtjVO5nSuHM3e/IeqSPdDgICWgvXhu', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(12, 'Esperanza O\'Reilly', 'cara04@yahoo.com', NULL, '$2y$10$YnhTA1kaO/pO3suNT.1L/Ou9ic6BxZM.72U4hr7fqWOz0JErbeLn2', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(13, 'Miss Alejandra Osinski Sr.', 'blaze.botsford@gibson.com', NULL, '$2y$10$sCpwnNFZB10nlshsBjtjQegqbVGYOzRVOKYSCIE6T0iD9abkUqDmi', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(14, 'Shannon Crooks', 'chudson@streich.com', NULL, '$2y$10$77DP5O1cvaSswv45XEC2CeTgleYFKy.OHIKet/I3x0fiWmpA/7Dju', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(15, 'Dr. Maria Casper III', 'larue70@fadel.com', NULL, '$2y$10$P.hZf6RsNfTPywBrmpH.9u7n9dUdWVR93SBH4SGFG7H9WSEy6rmtG', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(16, 'Rose O\'Kon', 'acrona@hotmail.com', NULL, '$2y$10$d9x1IkkCt5dAlmXW5m6JK.00Es9WUFd4DzP271TCy.BlVWb4SAYne', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(17, 'Lynn Quigley', 'duncan70@yahoo.com', NULL, '$2y$10$v.R9y6XHtv0oZj7v8De/xeB2Glm/Mqa4DiEDzZUBLfnmK7X5guL/a', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(18, 'Emely Kris', 'bauch.clotilde@yahoo.com', NULL, '$2y$10$O93ZSjCLXfan5pfkGD5QOOijbw3JszAAdxogv1rmeOwSaBPEMYchu', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(19, 'Alia Stracke', 'katheryn72@gmail.com', NULL, '$2y$10$vL3m8K4HLtUWTs98FfVfPuJGino06ZX239kfk38Kmxgy.ToTA5LoG', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(20, 'Precious Bernier', 'oreilly.helene@haley.biz', NULL, '$2y$10$IO6d8RlKODj/tUjaE5ovj.hM6xPf4fAb2olcKlUr7Lq5/J.yypkj.', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(21, 'Prof. Larissa Bogan DDS', 'sylvia26@maggio.org', NULL, '$2y$10$uZHlFlJdZ7tdktXGxjoRbuyIJkP07k4yTk1smA7m6SS5wDe2DEENG', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(22, 'Mr. Hadley Durgan', 'fermin.grimes@gmail.com', NULL, '$2y$10$4AG1wGSNObM2zgwjX4WC/OqVscgGNAvdqbdiFTyrd8gTcqo.B3.OS', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(23, 'Mr. Bobby Lynch', 'deckow.juvenal@strosin.com', NULL, '$2y$10$xQYBamEgj1f4hh6QtjVxlO7jCjpP.gjDZcYn2ynhD2XryK7PVq.sG', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(24, 'Rowan Weber DVM', 'arvilla.bechtelar@gmail.com', NULL, '$2y$10$yUMd6JOd1zuvDFT5nJLMQOih7SfSqWQai5AEdAEkYTVUtEoghlmVq', 2, NULL, '2022-10-12 02:55:27', '2022-10-12 02:55:27'),
(25, 'Kaycee Bahringer', 'rhea09@hotmail.com', NULL, '$2y$10$jii4A9zlI6dA2GqEywYUfOs/DNrximW2Ukw3.JOElwhZ0CW50U1iu', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(26, 'Deondre Cassin', 'eladio.schimmel@jerde.com', NULL, '$2y$10$V/NOzYsHo1V4d91G7S0X2erEWe6u82PsHrrYmPCbrlMAteHANQ1Oa', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(27, 'Devon Ernser', 'rutherford.darby@cassin.com', NULL, '$2y$10$ZHZeuFZ.8S1lGFGuGuwDpuxk22FfMrNHmHwgbhRq82RDNceZhq.Zu', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(28, 'Dayna Hauck', 'christiansen.mathias@bernier.com', NULL, '$2y$10$l/y9MOQki2FjrNqavAVWse.0Oxib4hHtNqd2R9xNJD2TSIi1.aeaq', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(29, 'Ms. Delfina Gleichner', 'jodie.corwin@hudson.com', NULL, '$2y$10$Oz8gWXcRDccnZpwGqT6PJ.oRcHEKxgUue2TY3I96XapB2tDoGaZaO', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(30, 'Timmothy Russel', 'fschultz@gmail.com', NULL, '$2y$10$BkHjm3EDrAN36pPzs8hG2.sdGvnM4A2uiHxSNyYylwxu1FXnpBtB2', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(31, 'Mrs. Caterina Dooley II', 'eromaguera@feeney.biz', NULL, '$2y$10$6n/HHme2pLdiChn3fc1xqepohXBcpxRsWeP9SBjbWbGa74fyi/DYO', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(32, 'Lonny Deckow', 'jshields@yahoo.com', NULL, '$2y$10$V8BEglGBf3wvVtv80O24HulOdtWRqPk0gDIbst.3Z2bpM7JdSmZKS', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(33, 'Dr. Bryana Harvey II', 'hartmann.dario@zieme.com', NULL, '$2y$10$HFELs4MSwKUFWit.yZVmge8T69EXsa7KkktBf/d4.kG1e7sQ.kxt.', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(34, 'Lenny Harvey', 'nicole.hirthe@yahoo.com', NULL, '$2y$10$0VESFq8BGDlakP8HAUQbAenJ4Iup8CAJUxzOuWoxW7.h0eMgg/zha', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(35, 'Dr. Conner Breitenberg', 'floy85@hotmail.com', NULL, '$2y$10$t91S3nKo6taaVUVhrVVnQuzxQXYx82HtOUPyxgMYjEHlenqXaHFp2', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(36, 'Dr. Quincy Bartoletti Sr.', 'abner.kuhn@quitzon.com', NULL, '$2y$10$93aGcaRy3JXx45xy7TGdd..YM0zLw4LLEyc/IzJC6XR3UhAiWlVYC', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(37, 'Jarrod Cruickshank', 'ubeer@koepp.biz', NULL, '$2y$10$p2qRyNAJbEnqHxwb531uCuis.FTMaQqkpVZAGSYVlSKpTHxg0vvJe', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(38, 'Mr. Demarcus Cummerata', 'etha.sporer@yahoo.com', NULL, '$2y$10$tq8Wc8IT8qPZLRvQmwfI5uLX7SnmOdkI8ESAOjV4bMz.xKEt4NsZW', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(39, 'Orville Fisher', 'jamel.hudson@gmail.com', NULL, '$2y$10$tobj2ArIev60gRFp/M71tOvEJc1sWCTtOc4KxAjo8SkhVSV7u7SCS', 2, NULL, '2022-10-12 02:55:28', '2022-10-12 02:55:28'),
(40, 'Dr. Erich Witting', 'collins.albin@crona.com', NULL, '$2y$10$Z9NLlFAWnDwNta5hYVIDEuOUdj2zWXsgITS0yETD7j1NSEgfD1OGO', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(41, 'Yesenia McCullough', 'giovanny34@stanton.com', NULL, '$2y$10$hqtbH4mYNV4ptCpsx1kPUuyBQq5cOxWqVCwVGRIHAUcGTxf0UOpt.', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(42, 'Robbie Balistreri', 'wyman.zulauf@streich.net', NULL, '$2y$10$9JI455C5KotPFkVZ2kyFmuz3Qiy8pn5xfTur98U8uQ8B0QB7olLTK', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(43, 'Mr. Fritz Wisozk', 'elsa00@yahoo.com', NULL, '$2y$10$NgT5rJ/9vOxgmYIzxM3PDe9gtYN7ynzW8xotYjh2nkJe/kUuwUHPe', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(44, 'Orie Borer', 'harvey.santa@hotmail.com', NULL, '$2y$10$NbKyEpDIis3zlfESqEsegOsz86YOVEKQFgmoUu05.ElRzMx05pb/m', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(45, 'Ena O\'Conner', 'rmuller@yahoo.com', NULL, '$2y$10$kcQaOryWNSOKp67ROkHhYOUtheUxhFktzsBDZeTWpNOSK4mctuA4a', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(46, 'Mr. Sonny Ernser', 'guiseppe.mcglynn@hotmail.com', NULL, '$2y$10$R2jYLzv3zwIxCilUEnGg..Hs47v6nMYulOHH8JDkbWZXYZl39ya7e', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(47, 'Oda Kerluke', 'fred.mills@gislason.biz', NULL, '$2y$10$we054xtK3.ghqIaB0sGuAu6By7z/aGUq/E4/ABbGihYXOMgS/rJp2', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(48, 'Mr. Erling Littel III', 'krajcik.sheridan@beer.com', NULL, '$2y$10$..IUotxUEG48pQT7Hn5l6uLlU6jxS1Mi3iV9hFK4jcfnlVjB72zbu', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(49, 'Wallace Farrell', 'brakus.buddy@gmail.com', NULL, '$2y$10$VctmNCgMEMfikErNyvs19eGqXgM6GZHqeq.6o5aSnHBny2Qmarq5i', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29'),
(50, 'Kenyatta Altenwerth', 'felipa10@gmail.com', NULL, '$2y$10$dSM1ORC0MJRQSElK6aLQo.khHm0p1XEQvzMPAhVMvjBHKff2PDbMW', 2, NULL, '2022-10-12 02:55:29', '2022-10-12 02:55:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
