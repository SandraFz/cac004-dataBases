-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2022 a las 13:49:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sql_desafio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `numero` int(2) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `presupuesto` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`numero`, `nombre`, `presupuesto`) VALUES
(11, 'Calidad', 36000),
(14, 'Informática', 72000),
(15, 'Gestión', 85500),
(16, 'Comunicación', 36000),
(20, 'Contabilidad', 95000),
(37, 'Desarrollo', 58500),
(77, 'Investigación', 36000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(12) NOT NULL,
  `apellido` varchar(12) NOT NULL DEFAULT '',
  `departamento` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`dni`, `nombre`, `apellido`, `departamento`) VALUES
(32369854, 'Bernardo', 'pantera', 37),
(32698547, 'Mariana', 'Lopez', 15),
(36985471, 'Omar', 'Diaz', 15),
(42369854, 'Abril', 'Sanchez', 37),
(89267109, 'Esther', 'Vazquez', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado_departamento`
--

CREATE TABLE `empleado_departamento` (
  `registro` int(2) NOT NULL,
  `dni` int(8) NOT NULL,
  `departamento` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `empleado_departamento`
--
ALTER TABLE `empleado_departamento`
  ADD PRIMARY KEY (`registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado_departamento`
--
ALTER TABLE `empleado_departamento`
  MODIFY `registro` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
