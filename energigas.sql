-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2018 a las 01:12:43
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `energigas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `id` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `dni` varchar(11) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `choferes`
--

INSERT INTO `choferes` (`id`, `id_unidad`, `nombre`, `apellido`, `dni`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(21, 1, 'javier', 'guimoye', '676767', 1, '2018-09-12 17:41:35', '2018-09-17 15:33:33', NULL),
(22, 11, 'augusto', 'barrantes', '7888', 1, '2018-09-12 17:44:56', '2018-09-17 15:54:02', NULL),
(23, 11, 'alberto', 'montilla', '333', 1, '2018-09-12 20:30:48', NULL, NULL),
(24, 1, 'Jose', 'cacerez', '131242343', 1, '2018-09-17 20:54:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `ruc` int(12) NOT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  `latitud` varchar(200) DEFAULT NULL,
  `longitud` varchar(200) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `id_user`, `nombre`, `descripcion`, `ruc`, `ubicacion`, `latitud`, `longitud`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(2, 0, 'guimoye1', 'desss', 123123213, '', '', '', 1, '2018-09-10 21:23:32', '2018-09-10 17:29:53', NULL),
(4, 0, 'javier', 'asa', 1231, '', '', '', 1, '2018-09-13 15:13:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_ref` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `target` varchar(100) NOT NULL DEFAULT '',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `logs`
--

INSERT INTO `logs` (`id`, `id_user`, `id_ref`, `type`, `target`, `date_created`) VALUES
(534, 18, 0, 1, '', '2018-09-10 19:10:42'),
(535, 18, 0, 1, '', '2018-09-10 19:10:51'),
(536, 18, 0, 1, '', '2018-09-10 19:15:07'),
(537, 18, 0, 1, '', '2018-09-10 19:48:43'),
(538, 18, 0, 1, '', '2018-09-10 19:48:57'),
(539, 18, 0, 1, '', '2018-09-10 19:49:39'),
(540, 18, 0, 1, '', '2018-09-10 19:57:27'),
(541, 18, 0, 1, '', '2018-09-10 20:11:04'),
(542, 18, 0, 1, '', '2018-09-10 20:27:52'),
(543, 18, 0, 1, '', '2018-09-10 21:01:33'),
(544, 18, 2, 4, 'clients', '2018-09-10 22:29:53'),
(545, 18, 1, 5, 'clients', '2018-09-10 22:30:03'),
(546, 18, 0, 1, '', '2018-09-10 23:03:15'),
(547, 18, 0, 1, '', '2018-09-11 14:40:00'),
(548, 18, 0, 1, '', '2018-09-11 15:56:20'),
(549, 18, 0, 1, '', '2018-09-11 15:56:50'),
(550, 18, 0, 1, '', '2018-09-11 15:58:17'),
(551, 18, 0, 1, '', '2018-09-11 16:03:15'),
(552, 18, 0, 1, '', '2018-09-11 16:19:02'),
(553, 18, 0, 1, '', '2018-09-11 16:52:19'),
(554, 18, 0, 1, '', '2018-09-11 19:24:48'),
(555, 18, 2, 3, 'proveedores', '2018-09-11 19:25:07'),
(556, 18, 3, 3, 'proveedores', '2018-09-11 19:26:04'),
(557, 18, 2, 4, 'proveedores', '2018-09-11 19:26:11'),
(558, 18, 2, 4, 'proveedores', '2018-09-11 19:26:19'),
(559, 18, 2, 5, 'proveedores', '2018-09-11 19:26:25'),
(560, 18, 3, 3, 'clients', '2018-09-11 19:51:59'),
(561, 18, 3, 4, 'clients', '2018-09-11 19:52:08'),
(562, 18, 3, 5, 'clients', '2018-09-11 19:52:14'),
(563, 18, 3, 3, 'unidades', '2018-09-11 19:52:50'),
(564, 18, 3, 4, 'unidades', '2018-09-11 19:53:00'),
(565, 18, 1, 4, 'roles', '2018-09-11 19:54:30'),
(566, 18, 1, 4, 'roles', '2018-09-11 19:54:41'),
(567, 18, 1, 4, 'roles', '2018-09-11 19:54:53'),
(568, 18, 0, 1, '', '2018-09-11 19:55:02'),
(569, 18, 3, 3, 'tipo_gastos', '2018-09-11 20:03:47'),
(570, 18, 0, 1, '', '2018-09-11 23:08:30'),
(571, 18, 5, 3, 'unidades', '2018-09-12 15:37:26'),
(572, 18, 6, 3, 'unidades', '2018-09-12 15:37:41'),
(573, 18, 7, 3, 'unidades', '2018-09-12 15:39:58'),
(574, 18, 8, 3, 'unidades', '2018-09-12 15:40:20'),
(575, 18, 9, 3, 'unidades', '2018-09-12 15:41:13'),
(576, 18, 10, 3, 'unidades', '2018-09-12 15:41:47'),
(577, 18, 11, 3, 'unidades', '2018-09-12 15:42:20'),
(578, 18, 12, 3, 'unidades', '2018-09-12 15:42:59'),
(579, 18, 12, 5, 'unidades', '2018-09-12 15:51:47'),
(580, 18, 3, 3, 'choferes', '2018-09-12 16:04:19'),
(581, 18, 3, 4, 'choferes', '2018-09-12 16:04:36'),
(582, 18, 2, 5, 'choferes', '2018-09-12 16:04:45'),
(583, 18, 2, 3, 'rutas', '2018-09-12 16:17:39'),
(584, 18, 3, 3, 'rutas', '2018-09-12 16:18:01'),
(585, 18, 3, 5, 'rutas', '2018-09-12 16:18:09'),
(586, 18, 4, 3, 'choferes', '2018-09-12 16:50:30'),
(587, 18, 5, 3, 'choferes', '2018-09-12 16:58:08'),
(588, 18, 6, 3, 'choferes', '2018-09-12 16:58:34'),
(589, 18, 7, 3, 'choferes', '2018-09-12 16:59:20'),
(590, 18, 8, 3, 'choferes', '2018-09-12 17:00:00'),
(591, 18, 9, 3, 'choferes', '2018-09-12 17:05:19'),
(592, 18, 10, 3, 'choferes', '2018-09-12 17:05:37'),
(593, 18, 9, 5, 'choferes', '2018-09-12 17:06:00'),
(594, 18, 11, 3, 'choferes', '2018-09-12 17:35:01'),
(595, 18, 12, 3, 'choferes', '2018-09-12 17:35:32'),
(596, 18, 13, 3, 'choferes', '2018-09-12 17:35:52'),
(597, 18, 14, 3, 'choferes', '2018-09-12 17:36:06'),
(598, 18, 15, 3, 'choferes', '2018-09-12 17:36:58'),
(599, 18, 16, 3, 'choferes', '2018-09-12 17:37:06'),
(600, 18, 17, 3, 'choferes', '2018-09-12 17:37:15'),
(601, 18, 18, 3, 'choferes', '2018-09-12 17:38:23'),
(602, 18, 19, 3, 'choferes', '2018-09-12 17:39:15'),
(603, 18, 20, 3, 'choferes', '2018-09-12 17:39:29'),
(604, 18, 21, 3, 'choferes', '2018-09-12 17:41:35'),
(605, 18, 22, 3, 'choferes', '2018-09-12 17:44:56'),
(606, 18, 0, 1, '', '2018-09-12 18:22:03'),
(607, 18, 0, 1, '', '2018-09-12 18:23:26'),
(608, 18, 0, 1, '', '2018-09-12 18:29:48'),
(609, 18, 0, 1, '', '2018-09-12 18:31:32'),
(610, 18, 0, 1, '', '2018-09-12 18:33:11'),
(611, 18, 0, 1, '', '2018-09-12 18:34:08'),
(612, 18, 35, 4, 'modules', '2018-09-12 18:36:40'),
(613, 18, 0, 1, '', '2018-09-12 18:36:48'),
(614, 18, 3, 3, 'roles', '2018-09-12 18:39:58'),
(615, 18, 19, 3, 'users', '2018-09-12 18:53:31'),
(616, 18, 0, 1, '', '2018-09-12 19:16:00'),
(617, 18, 35, 4, 'modules', '2018-09-12 19:16:17'),
(618, 18, 0, 1, '', '2018-09-12 19:16:26'),
(619, 18, 4, 3, 'rutas', '2018-09-12 19:18:23'),
(620, 18, 23, 3, 'choferes', '2018-09-12 20:30:49'),
(621, 18, 21, 4, 'choferes', '2018-09-12 22:06:05'),
(622, 18, 21, 4, 'choferes', '2018-09-12 22:06:11'),
(623, 18, 21, 4, 'choferes', '2018-09-12 22:06:17'),
(624, 18, 22, 4, 'choferes', '2018-09-12 22:38:54'),
(625, 18, 0, 1, '', '2018-09-12 23:14:02'),
(626, 18, 4, 3, 'clients', '2018-09-13 15:13:31'),
(627, 18, 5, 3, 'rutas', '2018-09-17 16:44:39'),
(628, 18, 5, 4, 'rutas', '2018-09-17 16:45:04'),
(629, 18, 21, 4, 'choferes', '2018-09-17 20:33:33'),
(630, 18, 22, 4, 'choferes', '2018-09-17 20:53:55'),
(631, 18, 22, 4, 'choferes', '2018-09-17 20:54:02'),
(632, 18, 24, 3, 'choferes', '2018-09-17 20:54:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(250) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `root` tinyint(4) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `id_parent`, `sort`, `name`, `url`, `icon`, `root`, `state`, `level`) VALUES
(7, 0, 6, 'Clientes', 'clients', 'fa fa-users', 1, 1, 0),
(12, 34, 20, 'Ajustes de sistema', 'settings', '', 1, 1, 1),
(13, 0, 16, 'Usuarios de sistema', 'users', 'fa fa-user', 1, 1, 0),
(15, 0, 7, 'Choferes', 'choferes', 'fa fa-car', 1, 1, 0),
(16, 0, 8, 'Unidades', 'unidades', 'fa fa-star', 1, 1, 0),
(24, 34, 19, 'Modulos', 'modules', '', 1, 1, 1),
(28, 34, 18, 'Perfiles de acceso', 'roles', '', 1, 1, 1),
(34, 0, 17, 'Administración', 'modules', 'fa fa-gear', 1, 1, 0),
(35, 0, 1, 'Rutas', 'rutas', 'fa fa-star', 1, 1, 0),
(36, 0, 2, 'Proveedores', 'proveedores', 'fa fa-star', 1, 1, 0),
(37, 0, 3, 'Tipo de gastos', 'tipo_gastos', 'fa fa-star', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perms`
--

CREATE TABLE `perms` (
  `id` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `see` tinyint(4) NOT NULL COMMENT 'puede leer',
  `edit` tinyint(4) NOT NULL COMMENT 'puede editar',
  `shortcut` tinyint(4) NOT NULL,
  `home` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perms`
--

INSERT INTO `perms` (`id`, `id_role`, `id_module`, `see`, `edit`, `shortcut`, `home`) VALUES
(643, 2, 15, 1, 1, 0, 0),
(644, 2, 24, 1, 1, 0, 0),
(687, 1, 35, 1, 1, 1, 0),
(688, 1, 36, 1, 1, 1, 0),
(689, 1, 37, 1, 1, 1, 0),
(690, 1, 7, 1, 1, 1, 0),
(691, 1, 15, 1, 1, 1, 0),
(692, 1, 16, 1, 1, 0, 0),
(693, 1, 13, 1, 1, 0, 0),
(694, 1, 34, 1, 1, 0, 0),
(695, 1, 28, 1, 1, 1, 0),
(696, 1, 24, 1, 1, 0, 0),
(697, 1, 12, 1, 1, 0, 0),
(698, 3, 35, 0, 1, 0, 0),
(699, 3, 36, 1, 1, 1, 0),
(700, 3, 16, 0, 0, 1, 0),
(701, 3, 13, 0, 0, 1, 0),
(702, 3, 34, 1, 1, 1, 0),
(703, 3, 28, 1, 1, 1, 0),
(704, 3, 24, 1, 1, 1, 0),
(705, 3, 12, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `proveedor` varchar(200) NOT NULL,
  `ruc` varchar(50) NOT NULL,
  `concepto` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `proveedor`, `ruc`, `concepto`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'proveedor1', '13234', 'aaaaa', 1, '2018-09-10 22:56:55', NULL, NULL),
(2, 'proveedor222', '111', 'q', 0, '2018-09-11 19:25:07', '2018-09-11 14:26:24', '2018-09-11 14:26:24'),
(3, 'proveedor3', '12312312', 'asdasdasd', 1, '2018-09-11 19:26:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prov_tipogastos`
--

CREATE TABLE `prov_tipogastos` (
  `id` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `id_tipo_gasto` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rendicioncostos`
--

CREATE TABLE `rendicioncostos` (
  `id` int(11) NOT NULL,
  `id_ruta_cliente` int(11) NOT NULL,
  `id_tipo_gasto` varchar(200) NOT NULL,
  `monto` double NOT NULL,
  `comprobante` varchar(200) NOT NULL,
  `nro_comprobante` int(11) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `id_module`, `name`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 36, 'Administrador', 1, '2018-09-07 05:00:00', '2018-09-11 14:54:53', NULL),
(2, 7, 'Analista', 1, '2018-09-07 05:00:00', NULL, NULL),
(3, 12, 'Usuario', 1, '2018-09-12 18:39:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` int(11) NOT NULL,
  `id_tipo_unidad` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `distancia` varchar(200) NOT NULL,
  `viatico` int(11) NOT NULL,
  `movilidad` int(11) NOT NULL,
  `hotel` int(11) NOT NULL,
  `cochera` int(11) NOT NULL,
  `total_dia` double NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `id_tipo_unidad`, `nombre`, `distancia`, `viatico`, `movilidad`, `hotel`, `cochera`, `total_dia`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 1, 'lima', '2kg', 1, 2, 3, 4, 5.6, 1, '2018-09-11 15:39:15', NULL, NULL),
(2, 2, 'aa', 'as', 12, 1, 1, 1, 123, 1, '2018-09-12 16:17:39', NULL, NULL),
(3, 1, 'asd', 'wasd', 0, 0, 0, 0, 123, 0, '2018-09-12 16:18:01', '2018-09-12 11:18:09', '2018-09-12 11:18:09'),
(4, 2, '213', '12', 12, 1, 123123, 12312321, 12.12321123, 1, '2018-09-12 19:18:23', NULL, NULL),
(5, 1, 'javier', '123123', 1, 20, 3, 4, 28, 1, '2018-09-17 16:44:39', '2018-09-17 11:45:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta_clientes`
--

CREATE TABLE `ruta_clientes` (
  `id` int(11) NOT NULL,
  `id_ruta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_chofer` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ruta_clientes`
--

INSERT INTO `ruta_clientes` (`id`, `id_ruta`, `id_cliente`, `id_chofer`, `id_usuario`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 1, 2, 3, 4, 1, '2018-09-17 21:58:21', NULL, NULL),
(2, 1, 3, 2, 3, 1, '2018-09-17 22:33:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento_glp`
--

CREATE TABLE `seguimiento_glp` (
  `id` int(11) NOT NULL,
  `id_ruta_cliente` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `name` varchar(100) NOT NULL,
  `value` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`name`, `value`, `description`) VALUES
('address', '', 'Direccion de la empresa'),
('brand', 'Energigas', 'Marca'),
('coin', '', 'Simbolo de moneda'),
('coin2', '', 'Simbolo de moneda'),
('coin2_name', 'Dólar americano', 'Nombre de moneda'),
('coin2_short', 'USD', 'Nombre de moneda abreviado'),
('coin_name', 'Nuevo Sol', 'Nombre de moneda'),
('coin_short', 'PEN', 'Nombre de moneda abreviado'),
('description', 'xx', 'Descripcion de la empresa'),
('email', '', 'Email de la empresa'),
('fax', '', 'Fax de la empresa'),
('id_country', '173', 'Pais principal'),
('igv', '18', 'porcentaje igv'),
('interval', '5', 'intervalo de tiempo en segundos para actualizar ajaxs u otros'),
('key_firebase', 'frb-dfFSDfsdFsdff', 'Api firebase'),
('key_maps', 'gm-xxdfFSdfsdfsd', 'Api google maps'),
('lat', '0', 'latitude'),
('lng', '0', 'longitude'),
('mail_auth', '0', '0:1 - Si logea o no'),
('mail_bcc', '', 'copia oculta de todos los correos'),
('mail_host', 'smtp.mailgun.org', 'host'),
('mail_password', '6d402ec1f4bbe51aaa5c4b25b28dd9ee', 'clave'),
('mail_sender', '', 'remitente de correo'),
('mail_username', 'postmaster@mg.raditsfm.com', 'usuario'),
('menu_lateral', '1', '0:usuario,1:expandido,2:colapsado'),
('name', 'Energigas S.A.C.', 'Nombre de la empresa'),
('phone', '', 'Telefono de la empresa'),
('ruc', '', 'RUC de la empresa'),
('tc', '3.36', 'tipo de cambio'),
('version', '1.0.0', 'Version del sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gastos`
--

CREATE TABLE `tipo_gastos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(5) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_gastos`
--

INSERT INTO `tipo_gastos` (`id`, `nombre`, `descripcion`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'gasto', 'descricpopn gasto', 1, '2018-09-11 14:39:14', NULL, NULL),
(2, '12345', 'asdasd', 1, '2018-09-11 14:39:41', NULL, NULL),
(3, 'as', 's', 1, '2018-09-11 20:03:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_movilidads`
--

CREATE TABLE `tipo_movilidads` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_movilidads`
--

INSERT INTO `tipo_movilidads` (`id`, `nombre`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'Primaria', 1, '2018-09-11 14:48:57', NULL, NULL),
(2, 'Sistema de Despacho', 1, '2018-09-11 14:48:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_unidads`
--

CREATE TABLE `tipo_unidads` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_unidads`
--

INSERT INTO `tipo_unidads` (`id`, `nombre`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, 'Granelera', 1, '2018-09-11 15:29:13', NULL, NULL),
(2, 'Primaria', 1, '2018-09-11 15:29:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `id_tipo_movilidad` int(11) NOT NULL,
  `tracto_unidad` varchar(200) NOT NULL,
  `botella` varchar(200) NOT NULL,
  `state` int(11) NOT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `placa`, `id_tipo_movilidad`, `tracto_unidad`, `botella`, `state`, `date_created`, `date_updated`, `date_deleted`) VALUES
(1, '234-ASD', 1, 'Tracto', 'si', 1, '2018-09-11 15:09:45', NULL, NULL),
(11, '897-ISD', 2, 'Unidad', 'no', 1, '2018-09-12 15:42:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_role` int(11) NOT NULL DEFAULT '0',
  `id_cargo` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0',
  `date_login` datetime DEFAULT NULL,
  `date_logout` datetime DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `id_user`, `id_role`, `id_cargo`, `name`, `surname`, `email`, `username`, `password`, `token`, `phone`, `state`, `date_login`, `date_logout`, `date_created`, `date_updated`, `date_deleted`) VALUES
(18, 0, 1, 0, 'root', 'demo', '', 'root', 'fe01ce2a7fbac8fafaed7c982a04e229', 'd6d62037366f68732466c1abce859814', NULL, 1, '2018-09-12 18:14:02', NULL, '2018-09-10 19:06:14', '2018-09-12 18:14:02', NULL),
(19, 18, 3, 0, 'sdasd', 'asdasda', '', 'asdasd', '4297f44b13955235245b2497399d7a93', '', NULL, 1, NULL, NULL, '2018-09-12 18:53:31', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_id_uindex` (`id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_id_uindex` (`id`);

--
-- Indices de la tabla `perms`
--
ALTER TABLE `perms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `perms_id_uindex` (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prov_tipogastos`
--
ALTER TABLE `prov_tipogastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rendicioncostos`
--
ALTER TABLE `rendicioncostos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ruta_clientes`
--
ALTER TABLE `ruta_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguimiento_glp`
--
ALTER TABLE `seguimiento_glp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `settings_name_uindex` (`name`);

--
-- Indices de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_movilidads`
--
ALTER TABLE `tipo_movilidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_unidads`
--
ALTER TABLE `tipo_unidads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id_uindex` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `choferes`
--
ALTER TABLE `choferes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `perms`
--
ALTER TABLE `perms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `prov_tipogastos`
--
ALTER TABLE `prov_tipogastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rendicioncostos`
--
ALTER TABLE `rendicioncostos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ruta_clientes`
--
ALTER TABLE `ruta_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguimiento_glp`
--
ALTER TABLE `seguimiento_glp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_movilidads`
--
ALTER TABLE `tipo_movilidads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_unidads`
--
ALTER TABLE `tipo_unidads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
