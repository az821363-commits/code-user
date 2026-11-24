-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:50:19
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
-- Base de datos: `bdb_tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cli` varchar(55) DEFAULT NULL,
  `documento_cli` int(11) DEFAULT NULL,
  `id_provedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_cliente`
--

INSERT INTO `tb_cliente` (`id_cliente`, `nombre_cli`, `documento_cli`, `id_provedor`) VALUES
(1, 'Carlos Rodriguez', 20000001, 1),
(2, 'Maria Gonzalez', 20000002, 2),
(3, 'Andres Martinez', 20000003, 3),
(4, 'Laura Ramirez', 20000004, 4),
(5, 'Juan Perez', 20000005, 5),
(6, 'Sofia Torres', 20000006, 6),
(7, 'Daniel Castro', 20000007, 7),
(8, 'Camila Herrera', 20000008, 8),
(9, 'David Moreno', 20000009, 9),
(10, 'Valentina Rojas', 20000010, 10),
(11, 'Sebastian Diaz', 20000011, 11),
(12, 'Isabella Lopez', 20000012, 12),
(13, 'Miguel Sanchez', 20000013, 13),
(14, 'Paula Fernandez', 20000014, 14),
(15, 'Felipe Vargas', 20000015, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_factura`
--

CREATE TABLE `tb_factura` (
  `id_factura` int(11) DEFAULT NULL,
  `nombre_ft` varchar(55) DEFAULT NULL,
  `hora_ft` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_tienda` int(11) DEFAULT NULL,
  `id_productos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_factura`
--

INSERT INTO `tb_factura` (`id_factura`, `nombre_ft`, `hora_ft`, `id_tienda`, `id_productos`) VALUES
(1, 'Factura 001', '2026-11-01 13:30:00', 1, 1),
(2, 'Factura 002', '2026-11-02 14:15:00', 2, 2),
(3, 'Factura 003', '2026-11-03 15:20:00', 3, 3),
(4, 'Factura 004', '2026-11-04 16:00:00', 4, 4),
(5, 'Factura 005', '2026-11-05 17:30:00', 5, 5),
(6, 'Factura 006', '2026-11-06 18:15:00', 6, 6),
(7, 'Factura 007', '2026-11-07 19:20:00', 7, 7),
(8, 'Factura 008', '2026-11-08 20:00:00', 8, 8),
(9, 'Factura 009', '2026-11-09 13:45:00', 9, 9),
(10, 'Factura 010', '2026-11-10 14:30:00', 10, 10),
(11, 'Factura 011', '2026-11-11 15:15:00', 11, 11),
(12, 'Factura 012', '2026-11-12 16:45:00', 12, 12),
(13, 'Factura 013', '2026-11-13 17:20:00', 13, 13),
(14, 'Factura 014', '2026-11-14 19:30:00', 14, 14),
(15, 'Factura 015', '2026-11-15 21:00:00', 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id_productos` int(11) NOT NULL,
  `nombre_pd` varchar(55) DEFAULT NULL,
  `stok_pd` int(11) DEFAULT NULL,
  `codigo_barras` bigint(20) DEFAULT NULL,
  `cantidad_pd` int(11) DEFAULT NULL,
  `id_tienda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id_productos`, `nombre_pd`, `stok_pd`, `codigo_barras`, `cantidad_pd`, `id_tienda`) VALUES
(1, 'Arroz Diana', 50, 7701234561, 10, 1),
(2, 'Azucar Blanca', 40, 7701234562, 15, 2),
(3, 'Aceite Vegetal', 35, 7701234563, 8, 3),
(4, 'Leche Entera', 60, 7701234564, 20, 4),
(5, 'Cafe Molido', 25, 7701234565, 5, 5),
(6, 'Pasta Spaghetti', 45, 7701234566, 12, 6),
(7, 'Sal Refinada', 70, 7701234567, 18, 7),
(8, 'Chocolate', 30, 7701234568, 10, 8),
(9, 'Galletas Dulces', 55, 7701234569, 25, 9),
(10, 'Atun en Lata', 40, 7701234570, 15, 10),
(11, 'Jabon de Baño', 65, 7701234571, 20, 11),
(12, 'Detergente', 35, 7701234572, 10, 12),
(13, 'Gaseosa', 80, 7701234573, 30, 13),
(14, 'Harina de Trigo', 50, 7701234574, 15, 14),
(15, 'Frijol Rojo', 45, 7701234575, 12, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_provedor`
--

CREATE TABLE `tb_provedor` (
  `id_provedor` int(11) NOT NULL,
  `nombre_empresa_pv` varchar(55) DEFAULT NULL,
  `documento_pv` int(11) DEFAULT NULL,
  `telefono_pv` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_provedor`
--

INSERT INTO `tb_provedor` (`id_provedor`, `nombre_empresa_pv`, `documento_pv`, `telefono_pv`) VALUES
(1, 'Distribuciones Nacionales', 10000001, 3101112233),
(2, 'Alimentos del Valle', 10000002, 3112223344),
(3, 'Productos La Sabana', 10000003, 3123334455),
(4, 'Comercializadora Andina', 10000004, 3134445566),
(5, 'Dulces y Mas', 10000005, 3145556677),
(6, 'Lacteos Colombia', 10000006, 3156667788),
(7, 'Bebidas del Centro', 10000007, 3167778899),
(8, 'Aseo Total SAS', 10000008, 3178889900),
(9, 'Arroz Nacional', 10000009, 3189990011),
(10, 'Carnes Selectas', 10000010, 3191112233),
(11, 'Panaderia Industrial', 10000011, 3202223344),
(12, 'Frutas Frescas', 10000012, 3213334455),
(13, 'Distribuciones El Sol', 10000013, 3224445566),
(14, 'Productos Familiares', 10000014, 3235556677),
(15, 'Comercializadora Central', 10000015, 3246667788);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tienda`
--

CREATE TABLE `tb_tienda` (
  `id_tienda` int(11) NOT NULL,
  `nombre_ab` varchar(55) DEFAULT NULL,
  `telefono_ab` bigint(20) DEFAULT NULL,
  `direccion_ab` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_tienda`
--

INSERT INTO `tb_tienda` (`id_tienda`, `nombre_ab`, `telefono_ab`, `direccion_ab`) VALUES
(1, 'Tienda El Ahorro', 3104567891, 'Calle 10 # 15-20'),
(2, 'Supermercado Central', 3115678923, 'Carrera 5 # 20-30'),
(3, 'Tienda La Esquina', 3126789012, 'Calle 15 # 10-25'),
(4, 'Abarrotes San Jose', 3137890123, 'Carrera 8 # 12-40'),
(5, 'Tienda El Progreso', 3148901234, 'Calle 20 # 8-15'),
(6, 'Mini Mercado Luna', 3159012345, 'Carrera 10 # 5-18'),
(7, 'Tienda Los Pinos', 3160123456, 'Calle 25 # 14-22'),
(8, 'Mercado Familiar', 3171234567, 'Carrera 12 # 18-35'),
(9, 'Tienda La Economia', 3182345678, 'Calle 30 # 7-16'),
(10, 'Super Abarrotes', 3193456789, 'Carrera 15 # 9-21'),
(11, 'Tienda El Sol', 3204567891, 'Calle 12 # 6-19'),
(12, 'Mercado Popular', 3215678902, 'Carrera 20 # 11-28'),
(13, 'Tienda La Amistad', 3226789013, 'Calle 18 # 13-24'),
(14, 'Abarrotes El Buen Precio', 3237890124, 'Carrera 25 # 16-30'),
(15, 'Tienda Mi Barrio', 3248901235, 'Calle 22 # 4-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE `tb_ventas` (
  `id_ventas` int(11) NOT NULL,
  `codigo_ventas` int(11) DEFAULT NULL,
  `valor_total_vt` decimal(10,0) DEFAULT NULL,
  `metodo_pago_vt` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`id_ventas`, `codigo_ventas`, `valor_total_vt`, `metodo_pago_vt`) VALUES
(1, 5001, 25000, 'Efectivo'),
(2, 5002, 45000, 'Transferencia'),
(3, 5003, 32000, 'Tarjeta'),
(4, 5004, 18000, 'Efectivo'),
(5, 5005, 67000, 'Nequi'),
(6, 5006, 12000, 'Efectivo'),
(7, 5007, 85000, 'Tarjeta'),
(8, 5008, 39000, 'Transferencia'),
(9, 5009, 55000, 'Nequi'),
(10, 5010, 28000, 'Efectivo'),
(11, 5011, 73000, 'Tarjeta'),
(12, 5012, 15000, 'Efectivo'),
(13, 5013, 92000, 'Transferencia'),
(14, 5014, 41000, 'Nequi'),
(15, 5015, 60000, 'Tarjeta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `fk_provedor_cliente` (`id_provedor`);

--
-- Indices de la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD KEY `fk_tienda_factura` (`id_tienda`),
  ADD KEY `fk_productos_factura` (`id_productos`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `fk_tienda_productos` (`id_tienda`);

--
-- Indices de la tabla `tb_provedor`
--
ALTER TABLE `tb_provedor`
  ADD PRIMARY KEY (`id_provedor`);

--
-- Indices de la tabla `tb_tienda`
--
ALTER TABLE `tb_tienda`
  ADD PRIMARY KEY (`id_tienda`);

--
-- Indices de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`id_ventas`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD CONSTRAINT `fk_provedor_cliente` FOREIGN KEY (`id_provedor`) REFERENCES `tb_provedor` (`id_provedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_factura`
--
ALTER TABLE `tb_factura`
  ADD CONSTRAINT `fk_productos_factura` FOREIGN KEY (`id_productos`) REFERENCES `tb_productos` (`id_productos`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tienda_factura` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD CONSTRAINT `fk_tienda_productos` FOREIGN KEY (`id_tienda`) REFERENCES `tb_tienda` (`id_tienda`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
