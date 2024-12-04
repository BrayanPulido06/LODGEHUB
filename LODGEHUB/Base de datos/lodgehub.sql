-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2024 a las 19:40:16
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
-- Estructura Stand-in para la vista `lista_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `lista_usuarios` (
`Id_cuenta` int(4)
,`Número_documento` bigint(11)
,`Nombres` varchar(40)
,`Apellidos` varchar(40)
,`Rol` varchar(20)
,`Contraseña` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_categoria`
--

CREATE TABLE `td_categoria` (
  `cat_id` int(3) NOT NULL,
  `cat_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_categoria`
--

INSERT INTO `td_categoria` (`cat_id`, `cat_descripcion`) VALUES
(1, 'Servicio'),
(2, 'Habitacion'),
(3, 'Atencion'),
(4, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadocivilempleados`
--

CREATE TABLE `td_estadocivilempleados` (
  `estcivemp_id` int(3) NOT NULL,
  `estcivemp_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadocivilempleados`
--

INSERT INTO `td_estadocivilempleados` (`estcivemp_id`, `estcivemp_descripcion`) VALUES
(1, 'SOLTERO/A'),
(2, 'CASADO/A'),
(3, 'VIUDO/A'),
(4, 'UNIÓN LIBRE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadocivilhuespedes`
--

CREATE TABLE `td_estadocivilhuespedes` (
  `estcivhue_id` int(3) NOT NULL,
  `estcivhue_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadocivilhuespedes`
--

INSERT INTO `td_estadocivilhuespedes` (`estcivhue_id`, `estcivhue_descripcion`) VALUES
(1, 'Soltero/a'),
(2, 'Casado/a'),
(3, 'Viudo/a'),
(4, 'Union libre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadohabitacion`
--

CREATE TABLE `td_estadohabitacion` (
  `esthab_id` int(3) NOT NULL,
  `esthab_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadohabitacion`
--

INSERT INTO `td_estadohabitacion` (`esthab_id`, `esthab_descripcion`) VALUES
(1, 'EN USO'),
(2, 'DISPONIBLE'),
(3, 'INACTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadomantenimiento`
--

CREATE TABLE `td_estadomantenimiento` (
  `estman_id` int(3) NOT NULL,
  `estman_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadomantenimiento`
--

INSERT INTO `td_estadomantenimiento` (`estman_id`, `estman_descripcion`) VALUES
(1, 'EN PROCESO'),
(2, 'FINALIZADO'),
(3, 'PENDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadopqrs`
--

CREATE TABLE `td_estadopqrs` (
  `estpqr_id` int(3) NOT NULL,
  `estpqr_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadopqrs`
--

INSERT INTO `td_estadopqrs` (`estpqr_id`, `estpqr_descripcion`) VALUES
(1, 'Solucionado'),
(2, 'Pendiente'),
(3, 'Nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_estadoreserva`
--

CREATE TABLE `td_estadoreserva` (
  `estres_id` int(3) NOT NULL,
  `estres_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_estadoreserva`
--

INSERT INTO `td_estadoreserva` (`estres_id`, `estres_descripcion`) VALUES
(1, 'Activo'),
(2, 'Pendiente'),
(3, 'Cancelado'),
(4, 'Expirada'),
(5, 'Caducado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_motivoreserva`
--

CREATE TABLE `td_motivoreserva` (
  `mot_id` int(3) NOT NULL,
  `mot_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_motivoreserva`
--

INSERT INTO `td_motivoreserva` (`mot_id`, `mot_descripcion`) VALUES
(1, 'Negocios'),
(2, 'Personal'),
(3, 'Viaje'),
(4, 'Familiar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_roles`
--

CREATE TABLE `td_roles` (
  `rol_id` int(3) NOT NULL,
  `rol_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_roles`
--

INSERT INTO `td_roles` (`rol_id`, `rol_descripcion`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'RECEPCIONISTA'),
(3, 'ATENCIÓN AL CLIENTE'),
(4, 'GERENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_sexoempleados`
--

CREATE TABLE `td_sexoempleados` (
  `sexemp_id` int(3) NOT NULL,
  `sexemp_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_sexoempleados`
--

INSERT INTO `td_sexoempleados` (`sexemp_id`, `sexemp_descripcion`) VALUES
(1, 'HOMBRE'),
(2, 'MUJER'),
(3, 'OTRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_sexohuespedes`
--

CREATE TABLE `td_sexohuespedes` (
  `sexhue_id` int(3) NOT NULL,
  `sexhue_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_sexohuespedes`
--

INSERT INTO `td_sexohuespedes` (`sexhue_id`, `sexhue_descripcion`) VALUES
(1, 'Hombre'),
(2, 'Mujer'),
(3, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_tamaño`
--

CREATE TABLE `td_tamaño` (
  `tam_id` int(3) NOT NULL,
  `tam_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_tamaño`
--

INSERT INTO `td_tamaño` (`tam_id`, `tam_descripcion`) VALUES
(1, 'PEQUEÑO'),
(2, 'MEDIANO'),
(3, 'GRANDE'),
(4, 'EXTRAGRANDE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_tipodocumentoempleados`
--

CREATE TABLE `td_tipodocumentoempleados` (
  `tipdocemp_id` int(3) NOT NULL,
  `tipdocemp_descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_tipodocumentoempleados`
--

INSERT INTO `td_tipodocumentoempleados` (`tipdocemp_id`, `tipdocemp_descripcion`) VALUES
(1, 'CEDULA DE CIUDADANIA'),
(2, 'TARJETA DE IDENTIDAD'),
(3, 'CÉDULA DE EXTRANJERÍA'),
(4, 'PASAPORTE'),
(5, 'REGISTRO CIVIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_tipodocumentohuespedes`
--

CREATE TABLE `td_tipodocumentohuespedes` (
  `tipdochue_id` int(3) NOT NULL,
  `tipdochue_descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_tipodocumentohuespedes`
--

INSERT INTO `td_tipodocumentohuespedes` (`tipdochue_id`, `tipdochue_descripcion`) VALUES
(1, 'Cedula de Ciudadanía'),
(2, 'Tarjeta de Identidad'),
(3, 'Cedula de Extranjeria'),
(4, 'Pasaporte'),
(5, 'Registro Civil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_tipohabitacion`
--

CREATE TABLE `td_tipohabitacion` (
  `tiphab_id` int(3) NOT NULL,
  `tiphab_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_tipohabitacion`
--

INSERT INTO `td_tipohabitacion` (`tiphab_id`, `tiphab_descripcion`) VALUES
(1, 'INDIVIDUAL'),
(2, 'DOBLE'),
(3, 'TRIPLE'),
(4, 'SUITE'),
(5, 'CONFORT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_tipopqrs`
--

CREATE TABLE `td_tipopqrs` (
  `tippqr_id` int(3) NOT NULL,
  `tippqr_descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_tipopqrs`
--

INSERT INTO `td_tipopqrs` (`tippqr_id`, `tippqr_descripcion`) VALUES
(1, 'Peticiones'),
(2, 'Quejas'),
(3, 'Reclamos'),
(4, 'Sugerencias'),
(5, 'Felicitaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_urgencia`
--

CREATE TABLE `td_urgencia` (
  `urg_id` int(3) NOT NULL,
  `urg_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `td_urgencia`
--

INSERT INTO `td_urgencia` (`urg_id`, `urg_descripcion`) VALUES
(1, 'Bajo'),
(2, 'Medio'),
(3, 'Alto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ti_atender`
--

CREATE TABLE `ti_atender` (
  `ate_id` int(3) NOT NULL,
  `ate_res_id` int(3) NOT NULL,
  `ate_hue_numDocumento` bigint(11) NOT NULL,
  `ate_emp_numDocumento` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ti_atender`
--

INSERT INTO `ti_atender` (`ate_id`, `ate_res_id`, `ate_hue_numDocumento`, `ate_emp_numDocumento`) VALUES
(1, 13, 1002455665, 1029384634),
(2, 14, 1098785643, 1029384634),
(3, 16, 1000289068, 1922345555),
(4, 17, 1234098756, 1029384634);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ti_responder`
--

CREATE TABLE `ti_responder` (
  `resp_id` int(3) NOT NULL,
  `resp_descripcion` varchar(255) NOT NULL,
  `resp_fechaRespuesta` date NOT NULL,
  `resp_pqr_descripcion` int(3) NOT NULL,
  `resp_emp_numDocumento` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ti_responder`
--

INSERT INTO `ti_responder` (`resp_id`, `resp_descripcion`, `resp_fechaRespuesta`, `resp_pqr_descripcion`, `resp_emp_numDocumento`) VALUES
(8, '¡Gracias por tu comentario! Lamentamos que hayas tenido una mala experiencia en el hotel Chimbanadas. Tu comentario nos ayuda a mejorar día a día.', '2024-09-16', 12, 1029384634),
(9, '¡Gracias por tu comentario! Lamentamos que hayas tenido una mala experiencia en el hotel Patroclín. Tu comentario nos ayuda a mejorar nuestros servicios día a día.', '2024-10-18', 7, 1626478765),
(10, '¡Gracias por tu sugerencia! Tus comentarios nos ayudan a mejorar nuestros servicios. Atte: Hotel Bondiola', '2023-05-15', 11, 1922345555);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_empleados`
--

CREATE TABLE `tp_empleados` (
  `emp_numDocumento` bigint(11) NOT NULL,
  `emp_nombres` varchar(40) NOT NULL,
  `emp_apellidos` varchar(40) NOT NULL,
  `emp_direccion` varchar(30) NOT NULL,
  `emp_numTelefono` bigint(11) NOT NULL,
  `emp_contactoPersonal` bigint(11) NOT NULL,
  `emp_correo` varchar(30) NOT NULL,
  `emp_sexemp_sexo` int(3) NOT NULL,
  `emp_tipdocemp_tipoDocumento` int(3) NOT NULL,
  `emp_rol_roles` int(3) NOT NULL,
  `emp_estcivemp_estadoCivil` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_empleados`
--

INSERT INTO `tp_empleados` (`emp_numDocumento`, `emp_nombres`, `emp_apellidos`, `emp_direccion`, `emp_numTelefono`, `emp_contactoPersonal`, `emp_correo`, `emp_sexemp_sexo`, `emp_tipdocemp_tipoDocumento`, `emp_rol_roles`, `emp_estcivemp_estadoCivil`) VALUES
(1029384634, 'Patroclo', 'Hernandez Pinzon', 'Calle 98 cra 10', 3107384576, 3011945998, 'PatrocloPinpin@gmail.com', 1, 2, 4, 1),
(1122123456, 'Joaquin Diomedes', 'Gonzales Chaz', 'Calle 73 D#8C', 3118273847, 3028732645, 'GonzChaz@gmail.com', 1, 1, 1, 1),
(1626478765, 'Marta Maria', 'Muñoz Mendoza', 'Calle 14 #45D', 3216457866, 3205766453, 'MMMMendoza000@gmail.com', 2, 1, 3, 2),
(1837263544, 'Fernando Luis', 'Quintero', 'Cra 18-13', 3124327658, 3014765897, 'FerLuch321@gmail.com', 1, 3, 4, 3),
(1922345555, 'Ignacio Marcelo', 'Lomas', 'Cra 87-23 #65', 3224857743, 3019476534, 'IgMaLomas456@gmail.com', 1, 3, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_habitaciones`
--

CREATE TABLE `tp_habitaciones` (
  `hab_numero` int(3) NOT NULL,
  `hab_costo` float NOT NULL,
  `hab_capacidad` int(3) NOT NULL,
  `hab_tiphab_tipoHabitacion` int(3) NOT NULL,
  `hab_tam_tamaño` int(3) NOT NULL,
  `hab_esthab_estado` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_habitaciones`
--

INSERT INTO `tp_habitaciones` (`hab_numero`, `hab_costo`, `hab_capacidad`, `hab_tiphab_tipoHabitacion`, `hab_tam_tamaño`, `hab_esthab_estado`) VALUES
(10, 350000, 1, 1, 3, 1),
(69, 1200000, 5, 5, 4, 1),
(73, 900000, 4, 4, 3, 3),
(666, 280000, 1, 1, 1, 2),
(819, 500000, 2, 2, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_historialmantenimiento`
--

CREATE TABLE `tp_historialmantenimiento` (
  `hisman_id` int(4) NOT NULL,
  `hisman_problemaDescripcion` varchar(50) NOT NULL,
  `hisman_accion` varchar(50) NOT NULL,
  `hisman_fechaRegistro` date NOT NULL,
  `hisman_ultimaActualización` date NOT NULL,
  `hisman_frecuencia` varchar(50) NOT NULL,
  `hisman_hab_numero` int(3) NOT NULL,
  `hisman_emp_numDocumento` bigint(11) NOT NULL,
  `hisman_estman_estadoMantenimiento` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_historialmantenimiento`
--

INSERT INTO `tp_historialmantenimiento` (`hisman_id`, `hisman_problemaDescripcion`, `hisman_accion`, `hisman_fechaRegistro`, `hisman_ultimaActualización`, `hisman_frecuencia`, `hisman_hab_numero`, `hisman_emp_numDocumento`, `hisman_estman_estadoMantenimiento`) VALUES
(1, 'Bombillos defectuosos, próximos a dañarse', 'Reemplazo de bombillos', '2022-05-05', '2021-10-01', 'No aplica', 819, 1122123456, 2),
(2, 'Cortinas rasgadas', 'Reemplazo de cortinas', '2023-04-13', '2023-04-13', 'No aplica', 666, 1626478765, 2),
(3, 'Gotera en la llave del lavamanos', 'Revisar y reparar la fuga de la llave de agua', '2024-11-26', '2022-06-17', 'No aplica', 69, 1626478765, 1),
(4, 'Olor raro proveniente del baño', 'Realizar aseo', '2024-11-15', '2024-11-15', 'No aplica', 819, 1029384634, 3),
(5, 'Piso sucio, manchas pegajosas', 'Realizar aseo en el piso', '2024-02-20', '2022-03-30', 'No aplica', 10, 1122123456, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_huespedes`
--

CREATE TABLE `tp_huespedes` (
  `hue_numDocumento` bigint(11) NOT NULL,
  `hue_numTelefono` bigint(11) NOT NULL,
  `hue_correo` varchar(30) NOT NULL,
  `hue_nombres` varchar(50) NOT NULL,
  `hue_apellidos` varchar(50) NOT NULL,
  `hue_tipdochue_tipoDocumento` int(3) NOT NULL,
  `hue_sexhue_sexo` int(3) NOT NULL,
  `hue_estcivhue_estadoCivil` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_huespedes`
--

INSERT INTO `tp_huespedes` (`hue_numDocumento`, `hue_numTelefono`, `hue_correo`, `hue_nombres`, `hue_apellidos`, `hue_tipdochue_tipoDocumento`, `hue_sexhue_sexo`, `hue_estcivhue_estadoCivil`) VALUES
(1000289068, 3116182673, 'Bleachowl98@gmail.com', 'Favian Alejandro', 'Machuca Pedraza', 1, 1, 4),
(1002455665, 3144235027, 'Bray@gmail.com', 'Brayan Felipe', 'Pulido López', 1, 1, 3),
(1012099089, 302099086, 'Willy@gmail.com', 'William Steven', 'Daza Delgado', 1, 1, 2),
(1098785643, 3214566786, 'Jhonny@gmail.com', 'Jonathan David', 'Fernández López', 1, 1, 1),
(1234098756, 3124233442, 'Camilín@gmail.com', 'Camilo Andrés', 'Guerrero Yanquen', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_login`
--

CREATE TABLE `tp_login` (
  `log_id` int(4) NOT NULL,
  `log_emp_numDocumento` bigint(11) NOT NULL,
  `log_contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_login`
--

INSERT INTO `tp_login` (`log_id`, `log_emp_numDocumento`, `log_contraseña`) VALUES
(1, 1122123456, 'Elcacique123'),
(2, 1837263544, 'Quinterito1990'),
(3, 1029384634, 'AjiacoConCremadeLech'),
(4, 1922345555, 'LomasVaMarcelo15'),
(5, 1626478765, 'MartaLaMartita23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_pqrs`
--

CREATE TABLE `tp_pqrs` (
  `pqr_id` int(10) NOT NULL,
  `pqr_fechaRegistro` date NOT NULL,
  `pqr_descripcion` varchar(200) NOT NULL,
  `pqr_fechaCierre` date NOT NULL,
  `pqr_hue_numdocumento` bigint(11) NOT NULL,
  `pqr_urg_urgencia` int(3) NOT NULL,
  `pqr_cat_categoria` int(3) NOT NULL,
  `pqr_estpqr_estado` int(3) NOT NULL,
  `pqr_tippqr_tipo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_pqrs`
--

INSERT INTO `tp_pqrs` (`pqr_id`, `pqr_fechaRegistro`, `pqr_descripcion`, `pqr_fechaCierre`, `pqr_hue_numdocumento`, `pqr_urg_urgencia`, `pqr_cat_categoria`, `pqr_estpqr_estado`, `pqr_tippqr_tipo`) VALUES
(7, '2024-10-18', 'El huésped reporta que la habitación no contaba con servicio de agua', '2024-10-19', 1000289068, 3, 2, 2, 1),
(8, '2024-03-12', 'Se reporta que las cobijas de la cama se encuentra en mal estado(sucias y manchadas),no hicieron el debido aseo en la habitación 73', '2024-03-13', 1098785643, 2, 2, 1, 3),
(9, '2024-11-26', 'Se reporta una fuga de agua en la habitación 666', '0000-00-00', 1002455665, 3, 2, 3, 2),
(10, '2022-04-25', 'Se reporta un extraño olor en el pasillo', '0000-00-00', 1234098756, 2, 3, 1, 1),
(11, '2023-09-01', 'El huésped sugiere colocar revistas en la sala de espera', '2023-05-15', 1012099089, 1, 1, 1, 4),
(12, '2024-09-16', 'Se  reporta la falta de materiales de aseo personal (jabón) en la habitación 819', '2024-09-16', 1098785643, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tp_reservas`
--

CREATE TABLE `tp_reservas` (
  `res_id` int(3) NOT NULL,
  `res_costo` float NOT NULL,
  `res_fechainicio` date NOT NULL,
  `res_fechaFin` date NOT NULL,
  `res_canPersonas` int(3) NOT NULL,
  `res_mot_motivoReserva` int(3) NOT NULL,
  `res_hab_numero` int(3) NOT NULL,
  `res_emp_numdocumento` bigint(11) NOT NULL,
  `res_estres_estado` int(3) NOT NULL,
  `res_hue_numdocumento` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tp_reservas`
--

INSERT INTO `tp_reservas` (`res_id`, `res_costo`, `res_fechainicio`, `res_fechaFin`, `res_canPersonas`, `res_mot_motivoReserva`, `res_hab_numero`, `res_emp_numdocumento`, `res_estres_estado`, `res_hue_numdocumento`) VALUES
(13, 350000, '2024-06-30', '2024-07-03', 1, 1, 10, 1029384634, 3, 1002455665),
(14, 330000, '2024-10-28', '2024-10-31', 1, 2, 666, 1029384634, 3, 1098785643),
(16, 1300000, '2024-03-21', '2024-03-24', 2, 3, 819, 1922345555, 4, 1000289068),
(17, 4000000, '2025-12-15', '2025-12-20', 4, 4, 73, 1029384634, 1, 1234098756);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_atender`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_atender` (
`id` int(3)
,`id_reserva` int(3)
,`Costo` float
,`Inicio_reserva` date
,`Fin_reserva` date
,`Cantidad_personas` int(3)
,`Motivo_reserva` varchar(20)
,`Número_habitación` int(3)
,`Tipo_habitación` varchar(20)
,`Estado_reserva` varchar(20)
,`Nombres_huesped` varchar(50)
,`Apellidos_huesped` varchar(50)
,`Nombres_empleado` varchar(40)
,`Apellidos_empleado` varchar(40)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_empleados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_empleados` (
`Documento` bigint(11)
,`Nombres` varchar(40)
,`Apellidos` varchar(40)
,`Direccion` varchar(30)
,`Telefono` bigint(11)
,`Contacto_Personal` bigint(11)
,`Correo` varchar(30)
,`Sexo` varchar(20)
,`Tipo_Documento` varchar(30)
,`Rol` varchar(20)
,`Estado_Civil` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_habitaciones`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_habitaciones` (
`Numero_Habitacion` int(3)
,`Costo` float
,`Capacidad_Personas` int(3)
,`Tipo_Habitacion` varchar(20)
,`Tamaño_Habitacion` varchar(20)
,`Estado_Habitacion` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_historialmantenimeinto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_historialmantenimeinto` (
`id` int(4)
,`Problema` varchar(50)
,`Accion` varchar(50)
,`Fecha_Registro` date
,`Ultima_Actualización` date
,`Frecuencia` varchar(50)
,`Numero_Habitacion` int(3)
,`Reporta_Empleado` varchar(40)
,`Reporta_Apellidos` varchar(40)
,`Descripcion` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_huespedes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_huespedes` (
`Documento` bigint(11)
,`Telefono` bigint(11)
,`Correo` varchar(30)
,`Nombres` varchar(50)
,`Apellidos` varchar(50)
,`Tipo_Documento` varchar(30)
,`Sexo` varchar(20)
,`Estado_Civil` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pqrs`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pqrs` (
`id` int(10)
,`Fecha_Registro` date
,`Descripcion` varchar(200)
,`Fecha_Cierre` date
,`Reporta_Huesped` varchar(50)
,`Reporta_Apellidos` varchar(50)
,`Urgencia` varchar(20)
,`Categoria` varchar(20)
,`Estado` varchar(20)
,`Tipo` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_reservas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_reservas` (
`id` int(3)
,`Costo` float
,`Inicio_reserva` date
,`Fin_reserva` date
,`Cantidad_personas` int(3)
,`Motivo_reserva` varchar(20)
,`Número_habitación` int(3)
,`Tipo_habitación` varchar(20)
,`Nombres_empleado` varchar(40)
,`Apellidos_empleado` varchar(40)
,`Estado_reserva` varchar(20)
,`Nombres_huesped` varchar(50)
,`Apellidos_huesped` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `lista_usuarios`
--
DROP TABLE IF EXISTS `lista_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lista_usuarios`  AS SELECT `l`.`log_id` AS `Id_cuenta`, `e`.`emp_numDocumento` AS `Número_documento`, `e`.`emp_nombres` AS `Nombres`, `e`.`emp_apellidos` AS `Apellidos`, `r`.`rol_descripcion` AS `Rol`, `l`.`log_contraseña` AS `Contraseña` FROM ((`tp_empleados` `e` join `tp_login` `l` on(`l`.`log_emp_numDocumento` = `e`.`emp_numDocumento`)) join `td_roles` `r` on(`e`.`emp_rol_roles` = `r`.`rol_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_atender`
--
DROP TABLE IF EXISTS `vista_atender`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_atender`  AS SELECT `a`.`ate_id` AS `id`, `r`.`res_id` AS `id_reserva`, `r`.`res_costo` AS `Costo`, `r`.`res_fechainicio` AS `Inicio_reserva`, `r`.`res_fechaFin` AS `Fin_reserva`, `r`.`res_canPersonas` AS `Cantidad_personas`, `m`.`mot_descripcion` AS `Motivo_reserva`, `hab`.`hab_numero` AS `Número_habitación`, `t`.`tiphab_descripcion` AS `Tipo_habitación`, `es`.`estres_descripcion` AS `Estado_reserva`, `h`.`hue_nombres` AS `Nombres_huesped`, `h`.`hue_apellidos` AS `Apellidos_huesped`, `e`.`emp_nombres` AS `Nombres_empleado`, `e`.`emp_apellidos` AS `Apellidos_empleado` FROM (((((((`ti_atender` `a` join `tp_reservas` `r` on(`a`.`ate_res_id` = `r`.`res_id`)) join `td_motivoreserva` `m` on(`r`.`res_mot_motivoReserva` = `m`.`mot_id`)) join `tp_empleados` `e` on(`r`.`res_emp_numdocumento` = `e`.`emp_numDocumento`)) join `td_estadoreserva` `es` on(`r`.`res_estres_estado` = `es`.`estres_id`)) join `tp_huespedes` `h` on(`r`.`res_hue_numdocumento` = `h`.`hue_numDocumento`)) join `tp_habitaciones` `hab` on(`hab`.`hab_numero` = `r`.`res_hab_numero`)) join `td_tipohabitacion` `t` on(`hab`.`hab_tiphab_tipoHabitacion` = `t`.`tiphab_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_empleados`
--
DROP TABLE IF EXISTS `vista_empleados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_empleados`  AS SELECT `e`.`emp_numDocumento` AS `Documento`, `e`.`emp_nombres` AS `Nombres`, `e`.`emp_apellidos` AS `Apellidos`, `e`.`emp_direccion` AS `Direccion`, `e`.`emp_numTelefono` AS `Telefono`, `e`.`emp_contactoPersonal` AS `Contacto_Personal`, `e`.`emp_correo` AS `Correo`, `s`.`sexemp_descripcion` AS `Sexo`, `d`.`tipdocemp_descripcion` AS `Tipo_Documento`, `r`.`rol_descripcion` AS `Rol`, `ec`.`estcivemp_descripcion` AS `Estado_Civil` FROM ((((`tp_empleados` `e` join `td_sexoempleados` `s` on(`e`.`emp_sexemp_sexo` = `s`.`sexemp_id`)) join `td_tipodocumentoempleados` `d` on(`e`.`emp_tipdocemp_tipoDocumento` = `d`.`tipdocemp_id`)) join `td_roles` `r` on(`e`.`emp_rol_roles` = `r`.`rol_id`)) join `td_estadocivilempleados` `ec` on(`e`.`emp_estcivemp_estadoCivil` = `ec`.`estcivemp_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_habitaciones`
--
DROP TABLE IF EXISTS `vista_habitaciones`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_habitaciones`  AS SELECT `h`.`hab_numero` AS `Numero_Habitacion`, `h`.`hab_costo` AS `Costo`, `h`.`hab_capacidad` AS `Capacidad_Personas`, `t`.`tiphab_descripcion` AS `Tipo_Habitacion`, `ñ`.`tam_descripcion` AS `Tamaño_Habitacion`, `e`.`esthab_descripcion` AS `Estado_Habitacion` FROM (((`tp_habitaciones` `h` join `td_tipohabitacion` `t` on(`h`.`hab_tiphab_tipoHabitacion` = `t`.`tiphab_id`)) join `td_tamaño` `ñ` on(`h`.`hab_tam_tamaño` = `ñ`.`tam_id`)) join `td_estadohabitacion` `e` on(`h`.`hab_esthab_estado` = `e`.`esthab_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_historialmantenimeinto`
--
DROP TABLE IF EXISTS `vista_historialmantenimeinto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historialmantenimeinto`  AS SELECT `h`.`hisman_id` AS `id`, `h`.`hisman_problemaDescripcion` AS `Problema`, `h`.`hisman_accion` AS `Accion`, `h`.`hisman_fechaRegistro` AS `Fecha_Registro`, `h`.`hisman_ultimaActualización` AS `Ultima_Actualización`, `h`.`hisman_frecuencia` AS `Frecuencia`, `h`.`hisman_hab_numero` AS `Numero_Habitacion`, `e`.`emp_nombres` AS `Reporta_Empleado`, `e`.`emp_apellidos` AS `Reporta_Apellidos`, `em`.`estman_descripcion` AS `Descripcion` FROM ((`tp_historialmantenimiento` `h` join `tp_empleados` `e` on(`h`.`hisman_emp_numDocumento` = `e`.`emp_numDocumento`)) join `td_estadomantenimiento` `em` on(`h`.`hisman_estman_estadoMantenimiento` = `em`.`estman_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_huespedes`
--
DROP TABLE IF EXISTS `vista_huespedes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_huespedes`  AS SELECT `u`.`hue_numDocumento` AS `Documento`, `u`.`hue_numTelefono` AS `Telefono`, `u`.`hue_correo` AS `Correo`, `u`.`hue_nombres` AS `Nombres`, `u`.`hue_apellidos` AS `Apellidos`, `d`.`tipdochue_descripcion` AS `Tipo_Documento`, `s`.`sexhue_descripcion` AS `Sexo`, `c`.`estcivhue_descripcion` AS `Estado_Civil` FROM (((`tp_huespedes` `u` join `td_tipodocumentohuespedes` `d` on(`u`.`hue_tipdochue_tipoDocumento` = `d`.`tipdochue_id`)) join `td_sexohuespedes` `s` on(`u`.`hue_sexhue_sexo` = `s`.`sexhue_id`)) join `td_estadocivilhuespedes` `c` on(`u`.`hue_estcivhue_estadoCivil` = `c`.`estcivhue_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pqrs`
--
DROP TABLE IF EXISTS `vista_pqrs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pqrs`  AS SELECT `p`.`pqr_id` AS `id`, `p`.`pqr_fechaRegistro` AS `Fecha_Registro`, `p`.`pqr_descripcion` AS `Descripcion`, `p`.`pqr_fechaCierre` AS `Fecha_Cierre`, `h`.`hue_nombres` AS `Reporta_Huesped`, `h`.`hue_apellidos` AS `Reporta_Apellidos`, `u`.`urg_descripcion` AS `Urgencia`, `c`.`cat_descripcion` AS `Categoria`, `e`.`estpqr_descripcion` AS `Estado`, `t`.`tippqr_descripcion` AS `Tipo` FROM (((((`tp_pqrs` `p` join `tp_huespedes` `h` on(`p`.`pqr_hue_numdocumento` = `h`.`hue_numDocumento`)) join `td_urgencia` `u` on(`p`.`pqr_urg_urgencia` = `u`.`urg_id`)) join `td_categoria` `c` on(`p`.`pqr_cat_categoria` = `c`.`cat_id`)) join `td_estadopqrs` `e` on(`p`.`pqr_estpqr_estado` = `e`.`estpqr_id`)) join `td_tipopqrs` `t` on(`p`.`pqr_tippqr_tipo` = `t`.`tippqr_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_reservas`
--
DROP TABLE IF EXISTS `vista_reservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_reservas`  AS SELECT `r`.`res_id` AS `id`, `r`.`res_costo` AS `Costo`, `r`.`res_fechainicio` AS `Inicio_reserva`, `r`.`res_fechaFin` AS `Fin_reserva`, `r`.`res_canPersonas` AS `Cantidad_personas`, `m`.`mot_descripcion` AS `Motivo_reserva`, `hab`.`hab_numero` AS `Número_habitación`, `t`.`tiphab_descripcion` AS `Tipo_habitación`, `e`.`emp_nombres` AS `Nombres_empleado`, `e`.`emp_apellidos` AS `Apellidos_empleado`, `es`.`estres_descripcion` AS `Estado_reserva`, `h`.`hue_nombres` AS `Nombres_huesped`, `h`.`hue_apellidos` AS `Apellidos_huesped` FROM ((((((`tp_reservas` `r` join `td_motivoreserva` `m` on(`r`.`res_mot_motivoReserva` = `m`.`mot_id`)) join `tp_empleados` `e` on(`r`.`res_emp_numdocumento` = `e`.`emp_numDocumento`)) join `td_estadoreserva` `es` on(`r`.`res_estres_estado` = `es`.`estres_id`)) join `tp_huespedes` `h` on(`r`.`res_hue_numdocumento` = `h`.`hue_numDocumento`)) join `tp_habitaciones` `hab` on(`hab`.`hab_numero` = `r`.`res_hab_numero`)) join `td_tipohabitacion` `t` on(`hab`.`hab_tiphab_tipoHabitacion` = `t`.`tiphab_id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `td_categoria`
--
ALTER TABLE `td_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `td_estadocivilempleados`
--
ALTER TABLE `td_estadocivilempleados`
  ADD PRIMARY KEY (`estcivemp_id`);

--
-- Indices de la tabla `td_estadocivilhuespedes`
--
ALTER TABLE `td_estadocivilhuespedes`
  ADD PRIMARY KEY (`estcivhue_id`);

--
-- Indices de la tabla `td_estadohabitacion`
--
ALTER TABLE `td_estadohabitacion`
  ADD PRIMARY KEY (`esthab_id`);

--
-- Indices de la tabla `td_estadomantenimiento`
--
ALTER TABLE `td_estadomantenimiento`
  ADD PRIMARY KEY (`estman_id`);

--
-- Indices de la tabla `td_estadopqrs`
--
ALTER TABLE `td_estadopqrs`
  ADD PRIMARY KEY (`estpqr_id`);

--
-- Indices de la tabla `td_estadoreserva`
--
ALTER TABLE `td_estadoreserva`
  ADD PRIMARY KEY (`estres_id`);

--
-- Indices de la tabla `td_motivoreserva`
--
ALTER TABLE `td_motivoreserva`
  ADD PRIMARY KEY (`mot_id`);

--
-- Indices de la tabla `td_roles`
--
ALTER TABLE `td_roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `td_sexoempleados`
--
ALTER TABLE `td_sexoempleados`
  ADD PRIMARY KEY (`sexemp_id`);

--
-- Indices de la tabla `td_sexohuespedes`
--
ALTER TABLE `td_sexohuespedes`
  ADD PRIMARY KEY (`sexhue_id`);

--
-- Indices de la tabla `td_tamaño`
--
ALTER TABLE `td_tamaño`
  ADD PRIMARY KEY (`tam_id`);

--
-- Indices de la tabla `td_tipodocumentoempleados`
--
ALTER TABLE `td_tipodocumentoempleados`
  ADD PRIMARY KEY (`tipdocemp_id`);

--
-- Indices de la tabla `td_tipodocumentohuespedes`
--
ALTER TABLE `td_tipodocumentohuespedes`
  ADD PRIMARY KEY (`tipdochue_id`);

--
-- Indices de la tabla `td_tipohabitacion`
--
ALTER TABLE `td_tipohabitacion`
  ADD PRIMARY KEY (`tiphab_id`);

--
-- Indices de la tabla `td_tipopqrs`
--
ALTER TABLE `td_tipopqrs`
  ADD PRIMARY KEY (`tippqr_id`);

--
-- Indices de la tabla `td_urgencia`
--
ALTER TABLE `td_urgencia`
  ADD PRIMARY KEY (`urg_id`);

--
-- Indices de la tabla `ti_atender`
--
ALTER TABLE `ti_atender`
  ADD PRIMARY KEY (`ate_id`),
  ADD KEY `ate_res_id` (`ate_res_id`),
  ADD KEY `ate_hue_numDocumento` (`ate_hue_numDocumento`),
  ADD KEY `ate_emp_numDocumento` (`ate_emp_numDocumento`);

--
-- Indices de la tabla `ti_responder`
--
ALTER TABLE `ti_responder`
  ADD PRIMARY KEY (`resp_id`),
  ADD KEY `resp_pqr_id` (`resp_pqr_descripcion`),
  ADD KEY `resp_emp_numDocumento` (`resp_emp_numDocumento`);

--
-- Indices de la tabla `tp_empleados`
--
ALTER TABLE `tp_empleados`
  ADD PRIMARY KEY (`emp_numDocumento`),
  ADD KEY `emp_sexemp_sexo` (`emp_sexemp_sexo`),
  ADD KEY `emp_tipdocemp_tipoDocumento` (`emp_tipdocemp_tipoDocumento`),
  ADD KEY `emp_rol_roles` (`emp_rol_roles`),
  ADD KEY `emp_estcivemp_estadoCivil` (`emp_estcivemp_estadoCivil`);

--
-- Indices de la tabla `tp_habitaciones`
--
ALTER TABLE `tp_habitaciones`
  ADD PRIMARY KEY (`hab_numero`),
  ADD KEY `hab_tiphab_tipoHabitacion` (`hab_tiphab_tipoHabitacion`),
  ADD KEY `hab_tam_tamaño` (`hab_tam_tamaño`),
  ADD KEY `hab_esthab_estado` (`hab_esthab_estado`);

--
-- Indices de la tabla `tp_historialmantenimiento`
--
ALTER TABLE `tp_historialmantenimiento`
  ADD PRIMARY KEY (`hisman_id`),
  ADD KEY `hisman_hab_numero` (`hisman_hab_numero`),
  ADD KEY `hisman_emp_numDocumento` (`hisman_emp_numDocumento`),
  ADD KEY `hisman_estman_estadoMantenimiento` (`hisman_estman_estadoMantenimiento`);

--
-- Indices de la tabla `tp_huespedes`
--
ALTER TABLE `tp_huespedes`
  ADD PRIMARY KEY (`hue_numDocumento`),
  ADD KEY `hue_tipdochue_tipoDocumento` (`hue_tipdochue_tipoDocumento`),
  ADD KEY `hue_sexhue_sexo` (`hue_sexhue_sexo`),
  ADD KEY `hue_estcivhue_estadoCivil` (`hue_estcivhue_estadoCivil`);

--
-- Indices de la tabla `tp_login`
--
ALTER TABLE `tp_login`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_emp_numDocumento` (`log_emp_numDocumento`);

--
-- Indices de la tabla `tp_pqrs`
--
ALTER TABLE `tp_pqrs`
  ADD PRIMARY KEY (`pqr_id`),
  ADD KEY `pqr_hue_numdocumento` (`pqr_hue_numdocumento`),
  ADD KEY `pqr_urg_urgencia` (`pqr_urg_urgencia`),
  ADD KEY `pqr_cat_categoria` (`pqr_cat_categoria`),
  ADD KEY `pqr_estpqr_estado` (`pqr_estpqr_estado`),
  ADD KEY `pqr_tippqr_tipo` (`pqr_tippqr_tipo`);

--
-- Indices de la tabla `tp_reservas`
--
ALTER TABLE `tp_reservas`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_mot_motivoReserva` (`res_mot_motivoReserva`),
  ADD KEY `res_hab_numero` (`res_hab_numero`),
  ADD KEY `res_emp_numdocumento` (`res_emp_numdocumento`),
  ADD KEY `res_estres_estado` (`res_estres_estado`),
  ADD KEY `res_hue_numdocumento` (`res_hue_numdocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `td_categoria`
--
ALTER TABLE `td_categoria`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_estadocivilempleados`
--
ALTER TABLE `td_estadocivilempleados`
  MODIFY `estcivemp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_estadocivilhuespedes`
--
ALTER TABLE `td_estadocivilhuespedes`
  MODIFY `estcivhue_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_estadohabitacion`
--
ALTER TABLE `td_estadohabitacion`
  MODIFY `esthab_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_estadomantenimiento`
--
ALTER TABLE `td_estadomantenimiento`
  MODIFY `estman_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_estadopqrs`
--
ALTER TABLE `td_estadopqrs`
  MODIFY `estpqr_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_estadoreserva`
--
ALTER TABLE `td_estadoreserva`
  MODIFY `estres_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `td_motivoreserva`
--
ALTER TABLE `td_motivoreserva`
  MODIFY `mot_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_roles`
--
ALTER TABLE `td_roles`
  MODIFY `rol_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_sexoempleados`
--
ALTER TABLE `td_sexoempleados`
  MODIFY `sexemp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_sexohuespedes`
--
ALTER TABLE `td_sexohuespedes`
  MODIFY `sexhue_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `td_tamaño`
--
ALTER TABLE `td_tamaño`
  MODIFY `tam_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `td_tipodocumentoempleados`
--
ALTER TABLE `td_tipodocumentoempleados`
  MODIFY `tipdocemp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `td_tipodocumentohuespedes`
--
ALTER TABLE `td_tipodocumentohuespedes`
  MODIFY `tipdochue_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `td_tipohabitacion`
--
ALTER TABLE `td_tipohabitacion`
  MODIFY `tiphab_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `td_tipopqrs`
--
ALTER TABLE `td_tipopqrs`
  MODIFY `tippqr_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `td_urgencia`
--
ALTER TABLE `td_urgencia`
  MODIFY `urg_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ti_atender`
--
ALTER TABLE `ti_atender`
  MODIFY `ate_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ti_responder`
--
ALTER TABLE `ti_responder`
  MODIFY `resp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tp_historialmantenimiento`
--
ALTER TABLE `tp_historialmantenimiento`
  MODIFY `hisman_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tp_login`
--
ALTER TABLE `tp_login`
  MODIFY `log_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tp_pqrs`
--
ALTER TABLE `tp_pqrs`
  MODIFY `pqr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tp_reservas`
--
ALTER TABLE `tp_reservas`
  MODIFY `res_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ti_atender`
--
ALTER TABLE `ti_atender`
  ADD CONSTRAINT `ti_atender_ibfk_1` FOREIGN KEY (`ate_res_id`) REFERENCES `tp_reservas` (`res_id`),
  ADD CONSTRAINT `ti_atender_ibfk_2` FOREIGN KEY (`ate_hue_numDocumento`) REFERENCES `tp_huespedes` (`hue_numDocumento`),
  ADD CONSTRAINT `ti_atender_ibfk_3` FOREIGN KEY (`ate_emp_numDocumento`) REFERENCES `tp_empleados` (`emp_numDocumento`);

--
-- Filtros para la tabla `ti_responder`
--
ALTER TABLE `ti_responder`
  ADD CONSTRAINT `ti_responder_ibfk_1` FOREIGN KEY (`resp_pqr_descripcion`) REFERENCES `tp_pqrs` (`pqr_id`),
  ADD CONSTRAINT `ti_responder_ibfk_2` FOREIGN KEY (`resp_emp_numDocumento`) REFERENCES `tp_empleados` (`emp_numDocumento`);

--
-- Filtros para la tabla `tp_empleados`
--
ALTER TABLE `tp_empleados`
  ADD CONSTRAINT `tp_empleados_ibfk_1` FOREIGN KEY (`emp_sexemp_sexo`) REFERENCES `td_sexoempleados` (`sexemp_id`),
  ADD CONSTRAINT `tp_empleados_ibfk_2` FOREIGN KEY (`emp_tipdocemp_tipoDocumento`) REFERENCES `td_tipodocumentoempleados` (`tipdocemp_id`),
  ADD CONSTRAINT `tp_empleados_ibfk_3` FOREIGN KEY (`emp_rol_roles`) REFERENCES `td_roles` (`rol_id`),
  ADD CONSTRAINT `tp_empleados_ibfk_4` FOREIGN KEY (`emp_estcivemp_estadoCivil`) REFERENCES `td_estadocivilempleados` (`estcivemp_id`);

--
-- Filtros para la tabla `tp_habitaciones`
--
ALTER TABLE `tp_habitaciones`
  ADD CONSTRAINT `tp_habitaciones_ibfk_1` FOREIGN KEY (`hab_tiphab_tipoHabitacion`) REFERENCES `td_tipohabitacion` (`tiphab_id`),
  ADD CONSTRAINT `tp_habitaciones_ibfk_2` FOREIGN KEY (`hab_tam_tamaño`) REFERENCES `td_tamaño` (`tam_id`),
  ADD CONSTRAINT `tp_habitaciones_ibfk_3` FOREIGN KEY (`hab_esthab_estado`) REFERENCES `td_estadohabitacion` (`esthab_id`);

--
-- Filtros para la tabla `tp_historialmantenimiento`
--
ALTER TABLE `tp_historialmantenimiento`
  ADD CONSTRAINT `tp_historialmantenimiento_ibfk_1` FOREIGN KEY (`hisman_hab_numero`) REFERENCES `tp_habitaciones` (`hab_numero`),
  ADD CONSTRAINT `tp_historialmantenimiento_ibfk_2` FOREIGN KEY (`hisman_emp_numDocumento`) REFERENCES `tp_empleados` (`emp_numDocumento`),
  ADD CONSTRAINT `tp_historialmantenimiento_ibfk_3` FOREIGN KEY (`hisman_estman_estadoMantenimiento`) REFERENCES `td_estadomantenimiento` (`estman_id`);

--
-- Filtros para la tabla `tp_huespedes`
--
ALTER TABLE `tp_huespedes`
  ADD CONSTRAINT `tp_huespedes_ibfk_1` FOREIGN KEY (`hue_tipdochue_tipoDocumento`) REFERENCES `td_tipodocumentohuespedes` (`tipdochue_id`),
  ADD CONSTRAINT `tp_huespedes_ibfk_2` FOREIGN KEY (`hue_sexhue_sexo`) REFERENCES `td_sexohuespedes` (`sexhue_id`),
  ADD CONSTRAINT `tp_huespedes_ibfk_3` FOREIGN KEY (`hue_estcivhue_estadoCivil`) REFERENCES `td_estadocivilhuespedes` (`estcivhue_id`);

--
-- Filtros para la tabla `tp_login`
--
ALTER TABLE `tp_login`
  ADD CONSTRAINT `tp_login_ibfk_1` FOREIGN KEY (`log_emp_numDocumento`) REFERENCES `tp_empleados` (`emp_numDocumento`);

--
-- Filtros para la tabla `tp_pqrs`
--
ALTER TABLE `tp_pqrs`
  ADD CONSTRAINT `tp_pqrs_ibfk_1` FOREIGN KEY (`pqr_hue_numdocumento`) REFERENCES `tp_huespedes` (`hue_numDocumento`),
  ADD CONSTRAINT `tp_pqrs_ibfk_2` FOREIGN KEY (`pqr_urg_urgencia`) REFERENCES `td_urgencia` (`urg_id`),
  ADD CONSTRAINT `tp_pqrs_ibfk_3` FOREIGN KEY (`pqr_cat_categoria`) REFERENCES `td_categoria` (`cat_id`),
  ADD CONSTRAINT `tp_pqrs_ibfk_4` FOREIGN KEY (`pqr_estpqr_estado`) REFERENCES `td_estadopqrs` (`estpqr_id`),
  ADD CONSTRAINT `tp_pqrs_ibfk_5` FOREIGN KEY (`pqr_tippqr_tipo`) REFERENCES `td_tipopqrs` (`tippqr_id`);

--
-- Filtros para la tabla `tp_reservas`
--
ALTER TABLE `tp_reservas`
  ADD CONSTRAINT `tp_reservas_ibfk_1` FOREIGN KEY (`res_mot_motivoReserva`) REFERENCES `td_motivoreserva` (`mot_id`),
  ADD CONSTRAINT `tp_reservas_ibfk_2` FOREIGN KEY (`res_hab_numero`) REFERENCES `tp_habitaciones` (`hab_numero`),
  ADD CONSTRAINT `tp_reservas_ibfk_3` FOREIGN KEY (`res_emp_numdocumento`) REFERENCES `tp_empleados` (`emp_numDocumento`),
  ADD CONSTRAINT `tp_reservas_ibfk_4` FOREIGN KEY (`res_estres_estado`) REFERENCES `td_estadoreserva` (`estres_id`),
  ADD CONSTRAINT `tp_reservas_ibfk_5` FOREIGN KEY (`res_hue_numdocumento`) REFERENCES `tp_huespedes` (`hue_numDocumento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
