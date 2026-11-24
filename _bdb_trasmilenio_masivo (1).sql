-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:01:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: ` bdb_trasmilenio_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estacion`
--

CREATE TABLE `tb_estacion` (
  `id_esta` int(11) NOT NULL,
  `nombre_est` varchar(55) DEFAULT NULL,
  `ubicacion_est` varchar(55) DEFAULT NULL,
  `tipo_estacion` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estacion`
--

INSERT INTO `tb_estacion` (`id_esta`, `nombre_est`, `ubicacion_est`, `tipo_estacion`) VALUES
(1, 'Portal Norte', 'Autopista Norte', 'Portal'),
(2, 'Portal Sur', 'Autopista Sur', 'Portal'),
(3, 'Portal Suba', 'Suba', 'Portal'),
(4, 'Portal 80', 'Calle 80', 'Portal'),
(5, 'Las Aguas', 'Centro', 'Estacion'),
(6, 'Ricaurte', 'Puente Aranda', 'Estacion'),
(7, 'Héroes', 'Chapinero', 'Estacion'),
(8, 'Calle 76', 'Chapinero', 'Estacion'),
(9, 'Banderas', 'Kennedy', 'Estacion'),
(10, 'Universidades', 'Centro', 'Estacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_recorrido`
--

CREATE TABLE `tb_recorrido` (
  `id_recor` int(11) NOT NULL,
  `hora_llegada` datetime DEFAULT NULL,
  `id_esta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_recorrido`
--

INSERT INTO `tb_recorrido` (`id_recor`, `hora_llegada`, `id_esta`) VALUES
(1, '2026-11-24 06:00:00', NULL),
(2, '2026-11-24 06:30:00', NULL),
(3, '2026-11-24 07:00:00', NULL),
(4, '2026-11-24 07:30:00', NULL),
(5, '2026-11-24 08:00:00', NULL),
(6, '2026-11-24 08:30:00', NULL),
(7, '2026-11-24 09:00:00', NULL),
(8, '2026-11-24 09:30:00', NULL),
(9, '2026-11-24 10:00:00', NULL),
(10, '2026-11-24 10:30:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ruta`
--

CREATE TABLE `tb_ruta` (
  `id_rut` int(11) NOT NULL,
  `origen_rt` varchar(55) DEFAULT NULL,
  `destino_rt` varchar(55) DEFAULT NULL,
  `horario_rt` datetime DEFAULT NULL,
  `id_recor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ruta`
--

INSERT INTO `tb_ruta` (`id_rut`, `origen_rt`, `destino_rt`, `horario_rt`, `id_recor`) VALUES
(1, 'Portal Norte', 'Portal Sur', '2026-11-24 05:00:00', NULL),
(2, 'Portal Sur', 'Portal Norte', '2026-11-24 05:30:00', NULL),
(3, 'Portal Suba', 'Héroes', '2026-11-24 06:00:00', NULL),
(4, 'Portal 80', 'Ricaurte', '2026-11-24 06:30:00', NULL),
(5, 'Las Aguas', 'Portal Norte', '2026-11-24 07:00:00', NULL),
(6, 'Banderas', 'Universidades', '2026-11-24 07:30:00', NULL),
(7, 'Héroes', 'Portal 80', '2026-11-24 08:00:00', NULL),
(8, 'Ricaurte', 'Portal Suba', '2026-11-24 08:30:00', NULL),
(9, 'Universidades', 'Banderas', '2026-11-24 09:00:00', NULL),
(10, 'Calle 76', 'Las Aguas', '2026-11-24 09:30:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_trasmilenio`
--

CREATE TABLE `tb_trasmilenio` (
  `id_trasmi` int(11) NOT NULL,
  `nombre_tm` varchar(55) DEFAULT NULL,
  `color_tm` varchar(55) DEFAULT NULL,
  `direccion_tm` varchar(55) DEFAULT NULL,
  `id_rut` int(11) DEFAULT NULL,
  `id_esta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_trasmilenio`
--

INSERT INTO `tb_trasmilenio` (`id_trasmi`, `nombre_tm`, `color_tm`, `direccion_tm`, `id_rut`, `id_esta`) VALUES
(1, 'Bus articulado', 'Rojo', 'Portal Norte', NULL, NULL),
(2, 'Bus biarticulado', 'Rojo', 'Portal Sur', NULL, NULL),
(3, 'Bus articulado', 'Rojo', 'Portal Suba', NULL, NULL),
(4, 'Bus biarticulado', 'Rojo', 'Portal 80', NULL, NULL),
(5, 'Bus articulado', 'Rojo', 'Las Aguas', NULL, NULL),
(6, 'Bus articulado', 'Rojo', 'Ricaurte', NULL, NULL),
(7, 'Bus biarticulado', 'Rojo', 'Héroes', NULL, NULL),
(8, 'Bus articulado', 'Rojo', 'Calle 76', NULL, NULL),
(9, 'Bus biarticulado', 'Rojo', 'Banderas', NULL, NULL),
(10, 'Bus articulado', 'Rojo', 'Universidades', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_estacion`
--
ALTER TABLE `tb_estacion`
  ADD PRIMARY KEY (`id_esta`);

--
-- Indices de la tabla `tb_recorrido`
--
ALTER TABLE `tb_recorrido`
  ADD PRIMARY KEY (`id_recor`),
  ADD KEY `fk_recorrido_estacion` (`id_esta`);

--
-- Indices de la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  ADD PRIMARY KEY (`id_rut`),
  ADD KEY `fk_ruta_recor` (`id_recor`);

--
-- Indices de la tabla `tb_trasmilenio`
--
ALTER TABLE `tb_trasmilenio`
  ADD PRIMARY KEY (`id_trasmi`),
  ADD KEY `fk_trasmilenio_ruta` (`id_rut`),
  ADD KEY `fk_trasmilenio_estacion` (`id_esta`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_recorrido`
--
ALTER TABLE `tb_recorrido`
  ADD CONSTRAINT `fk_recorrido_estacion` FOREIGN KEY (`id_esta`) REFERENCES `tb_estacion` (`id_esta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ruta`
--
ALTER TABLE `tb_ruta`
  ADD CONSTRAINT `fk_ruta_recor` FOREIGN KEY (`id_recor`) REFERENCES `tb_recorrido` (`id_recor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_trasmilenio`
--
ALTER TABLE `tb_trasmilenio`
  ADD CONSTRAINT `fk_trasmilenio_estacion` FOREIGN KEY (`id_esta`) REFERENCES `tb_estacion` (`id_esta`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_trasmilenio_ruta` FOREIGN KEY (`id_rut`) REFERENCES `tb_ruta` (`id_rut`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
