-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 08:16:47
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apbjs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `Folio` int(8) NOT NULL,
  `Codigo` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Id` int(4) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Apellidos` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Empezo` date NOT NULL,
  `Termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Id`, `Nombre`, `Apellidos`, `Empezo`, `Termino`) VALUES
(1, 'Jesus Salvador', 'Malagon Paniagua', '2021-11-01', '0000-00-00'),
(2, 'Rafael Alberto', 'Serrato Morales', '2021-11-01', '2021-12-31'),
(4, 'Alberto', '', '2021-12-08', '0000-00-00'),
(9, 'Fer', 'Gomez', '2021-12-08', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Codigo` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Precio` float(6,2) NOT NULL,
  `Stock` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`Codigo`, `Descripcion`, `Precio`, `Stock`) VALUES
('B001', 'CERA BARBIUX', 89.99, 15),
('B002', 'MINOXIDIL', 0.00, 0),
('B003', 'SHAMPOO MINOXIDIL 950ML', 0.00, 0),
('B004', 'SHAMPOO CARBON', 0.00, 0),
('B005', 'SHAMPOO CABALLADA PLUS', 0.00, 0),
('B006', 'SHAMPOO MINOXIDIL 500ML', 0.00, 0),
('B007', 'SHAMPOO ANTI-GRASA 950ML', 0.00, 0),
('C001', 'PASTA 4X4', 0.00, 0),
('C002', 'CERA 4X4', 0.00, 0),
('C003', 'POMADA 4X4', 0.00, 0),
('C004', 'PROMO 4X4 3X2', 0.00, 0),
('C005', 'SHAMPOO HIALURONICO 950ML', 0.00, -3),
('C006', 'SHAMPOO ZEROCASP 1%', 0.00, -1),
('B008', 'AFTER SHAVE CALAVERA CHICA', 0.00, 0),
('B009', 'AFTER SHAVE CALAVERA GRAN', 0.00, 0),
('D001', 'WUAP CREMA GEL OSC', 0.00, 0),
('D002', 'MASCARILLA N MOREBEAUTY', 0.00, 0),
('D003', 'BALSAMO VIKING BEARD ALPH', 0.00, 0),
('V001', 'SHAMPOO BARBA Y CAB 950ML', 0.00, 0),
('V002', 'SHAVING GEL 500ML', 0.00, 0),
('V003', 'SHAVING GEL 180ML', 0.00, 0),
('V004', 'HAIR GEL 500ML', 0.00, 0),
('V005', 'HAIR GEL 180ML', 0.00, 0),
('V006', 'LOCION AFTER SHAVE 180ML', 0.00, 0),
('V007', 'POMADA BARBA Y CAB BRILLA', 0.00, 0),
('V008', 'POMADA BARBA Y CAB MATE', 0.00, 0),
('V009', '', 0.00, 0),
('V010', '', 0.00, 0),
('xxx1', 'Esto es un UPDATE xxx1', 99.99, 5),
('xxx2', 'Esto es una prueba 22', 33.66, 0),
('xxx3', 'Esto es una prueba 3', 12.67, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `Folio` int(8) NOT NULL,
  `Codigo` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`Folio`, `Codigo`, `Fecha`, `Hora`) VALUES
(6, 'xxx2', '2021-12-05', '21:43:31'),
(7, 'xxx2', '2021-12-05', '21:44:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Codigo` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Precio` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Codigo`, `Descripcion`, `Precio`) VALUES
('AS01', 'Corte', 100.00),
('AS02', 'Fades', 120.00),
('AS03', 'Corte y Barba', 140.00),
('AS04', 'Fade y Barba', 150.00),
('AS05', 'Rasurado', 80.00),
('AS06', 'Delineado de Ceja', 50.00),
('AS07', 'Corte, Ceja y Barba', 190.00),
('AS08', 'Fade, Ceja y Barba', 200.00),
('NS01', 'Corte Infantil', 90.00),
('NS02', 'Fade Infantil', 100.00),
('xxx1', 'Esto es un UDATE de Servicio', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

CREATE TABLE `trabajo` (
  `Id` int(4) NOT NULL,
  `Id_Empleado` int(4) DEFAULT NULL,
  `Folio_Servicio` int(8) DEFAULT NULL,
  `Cobro_Servicio` float(6,2) DEFAULT NULL,
  `Folio_Venta` int(8) DEFAULT NULL,
  `Cobro_Venta` float(6,2) DEFAULT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Codigo_P` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Codigo_S` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `trabajo`
--

INSERT INTO `trabajo` (`Id`, `Id_Empleado`, `Folio_Servicio`, `Cobro_Servicio`, `Folio_Venta`, `Cobro_Venta`, `Fecha`, `Hora`, `Codigo_P`, `Codigo_S`) VALUES
(6, 2, 6, 11.45, 5, 200.89, '2021-12-05', '21:43:31', 'xxx1', 'xxx1'),
(7, 2, 7, 12.66, NULL, NULL, '2021-12-05', '21:44:16', '', 'xxx1'),
(8, 2, NULL, NULL, 6, 85.89, '2021-12-05', '21:44:39', 'xxx1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Folio` int(8) NOT NULL,
  `Codigo` varchar(4) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Folio`, `Codigo`, `Cantidad`, `Fecha`, `Hora`) VALUES
(5, 'xxx1', 2, '2021-12-05', '21:43:31'),
(6, 'xxx1', 1, '2021-12-05', '21:44:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`Folio`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`Folio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `Folio` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `Folio` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  MODIFY `Id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `Folio` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
