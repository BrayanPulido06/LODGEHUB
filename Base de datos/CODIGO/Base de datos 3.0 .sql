-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2024 a las 16:13:24
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
-- Base de datos: `lodgehub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atender`
--

CREATE TABLE `atender` (
  `ate_id` int(5) NOT NULL,
  `ate_hue_num_documento` int(10) NOT NULL,
  `ate_emp_num_documento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `emp_num_documento` int(10) NOT NULL,
  `emp_tipo_documento` varchar(20) NOT NULL,
  `emp_nombre` varchar(40) NOT NULL,
  `emp_direccion` varchar(30) NOT NULL,
  `emp_estadocivil` varchar(20) NOT NULL,
  `emp_contacto` int(10) NOT NULL,
  `emp_correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `hab_numero` int(4) NOT NULL,
  `hab_tamaño` varchar(10) NOT NULL,
  `hab_capacidad` int(2) NOT NULL,
  `hab_disponibilidad` tinyint(1) NOT NULL,
  `hab_costo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedes`
--

CREATE TABLE `huespedes` (
  `hue_num_documento` int(10) NOT NULL,
  `hue_tipo_documento` varchar(10) NOT NULL,
  `hue_motivo_viaje` varchar(20) NOT NULL,
  `hue_correo` varchar(35) NOT NULL,
  `hue_sexo` varchar(15) NOT NULL,
  `hue_est_civil` varchar(15) NOT NULL,
  `hue_nombre` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `pqr_id` int(10) NOT NULL,
  `pqr_categoria` varchar(15) NOT NULL,
  `pqr_fecha` date NOT NULL,
  `pqr_estado` varchar(15) NOT NULL,
  `pqr_niv_urgencia` varchar(15) NOT NULL,
  `pqr_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `res_id` int(5) NOT NULL,
  `res_estado` tinyint(1) NOT NULL,
  `res_costo` int(10) NOT NULL,
  `res_fecha` date NOT NULL,
  `res_cantidad_personas` int(5) NOT NULL,
  `res_hue_num_documento` int(10) NOT NULL,
  `res_hab_numero` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responder`
--

CREATE TABLE `responder` (
  `res_id` int(5) NOT NULL,
  `res_emp_num_documento` int(10) NOT NULL,
  `res_pqr_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(5) NOT NULL,
  `rol_descripcion` varchar(20) NOT NULL,
  `rol_emp_num_documento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atender`
--
ALTER TABLE `atender`
  ADD PRIMARY KEY (`ate_id`),
  ADD KEY `ate_hue_num_documento` (`ate_hue_num_documento`),
  ADD KEY `ate_emp_num_documento` (`ate_emp_num_documento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`emp_num_documento`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`hab_numero`);

--
-- Indices de la tabla `huespedes`
--
ALTER TABLE `huespedes`
  ADD PRIMARY KEY (`hue_num_documento`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`pqr_id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_hue_num_documento` (`res_hue_num_documento`),
  ADD KEY `res_hab_numero` (`res_hab_numero`);

--
-- Indices de la tabla `responder`
--
ALTER TABLE `responder`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_emp_num_documento` (`res_emp_num_documento`),
  ADD KEY `res_pqr_id` (`res_pqr_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`),
  ADD KEY `rol_emp_num_documento` (`rol_emp_num_documento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atender`
--
ALTER TABLE `atender`
  ADD CONSTRAINT `atender_ibfk_1` FOREIGN KEY (`ate_hue_num_documento`) REFERENCES `huespedes` (`hue_num_documento`),
  ADD CONSTRAINT `atender_ibfk_2` FOREIGN KEY (`ate_emp_num_documento`) REFERENCES `empleados` (`emp_num_documento`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`res_hue_num_documento`) REFERENCES `huespedes` (`hue_num_documento`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`res_hab_numero`) REFERENCES `habitaciones` (`hab_numero`);

--
-- Filtros para la tabla `responder`
--
ALTER TABLE `responder`
  ADD CONSTRAINT `responder_ibfk_1` FOREIGN KEY (`res_emp_num_documento`) REFERENCES `empleados` (`emp_num_documento`),
  ADD CONSTRAINT `responder_ibfk_2` FOREIGN KEY (`res_pqr_id`) REFERENCES `pqrs` (`pqr_id`);

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`rol_emp_num_documento`) REFERENCES `empleados` (`emp_num_documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
