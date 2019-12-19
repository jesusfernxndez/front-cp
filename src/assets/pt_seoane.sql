-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2019 a las 18:14:43
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pt_seoane`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cp_compras_hosting`
--

CREATE TABLE `cp_compras_hosting` (
  `id` int(255) NOT NULL,
  `dni` int(8) UNSIGNED ZEROFILL NOT NULL,
  `id_plan` varchar(100) NOT NULL,
  `nombre_plan` varchar(100) NOT NULL,
  `fecha_compra` date NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cp_compras_sitios`
--

CREATE TABLE `cp_compras_sitios` (
  `id` int(11) NOT NULL,
  `dni` int(8) UNSIGNED ZEROFILL NOT NULL,
  `id_sitio` varchar(100) NOT NULL,
  `nombre_sitio` varchar(255) NOT NULL,
  `fecha_compra` date NOT NULL,
  `fecha_nacimiento` text NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cp_hosting`
--

CREATE TABLE `cp_hosting` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cp_sitios_web`
--

CREATE TABLE `cp_sitios_web` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pt_seoane_user_control`
--

CREATE TABLE `pt_seoane_user_control` (
  `id` int(11) NOT NULL,
  `dni` int(8) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_category` varchar(20) NOT NULL,
  `user_state` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pt_seoane_user_control`
--

INSERT INTO `pt_seoane_user_control` (`id`, `dni`, `username`, `password`, `user_category`, `user_state`) VALUES
(1, 71302086, 'jesus123', '$2a$10$iQqx.zKU18nUFqFOWDo0iu/HLOHWuAAN562p8wkHkhIAYWVYY5Vii', 'user_admin', 'ON');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cp_compras_hosting`
--
ALTER TABLE `cp_compras_hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cp_compras_sitios`
--
ALTER TABLE `cp_compras_sitios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cp_hosting`
--
ALTER TABLE `cp_hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cp_sitios_web`
--
ALTER TABLE `cp_sitios_web`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pt_seoane_user_control`
--
ALTER TABLE `pt_seoane_user_control`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cp_compras_hosting`
--
ALTER TABLE `cp_compras_hosting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cp_compras_sitios`
--
ALTER TABLE `cp_compras_sitios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cp_hosting`
--
ALTER TABLE `cp_hosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cp_sitios_web`
--
ALTER TABLE `cp_sitios_web`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pt_seoane_user_control`
--
ALTER TABLE `pt_seoane_user_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
