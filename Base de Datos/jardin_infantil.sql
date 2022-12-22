-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2022 a las 19:13:15
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jardin_infantil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE `accesos` (
  `id_usuario` int(11) NOT NULL,
  `Usuarios` varchar(50) NOT NULL,
  `Passw` varchar(50) NOT NULL,
  `Fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`id_usuario`, `Usuarios`, `Passw`, `Fecha_registro`) VALUES
(1, 'Administrador', 'Jardin2022', '2022-12-04 03:56:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales_madre`
--

CREATE TABLE `datos_personales_madre` (
  `DPMA_id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `id_tipo_doc` int(11) NOT NULL,
  `numero_documento` int(11) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_personales_madre`
--

INSERT INTO `datos_personales_madre` (`DPMA_id`, `nombres`, `apellidos`, `id_tipo_doc`, `numero_documento`, `celular`, `correo`, `direccion`, `fecha_registro`) VALUES
(2, 'jhoana juliet', 'cortes acosta', 2, 1016063261, '3204630914', 'joanaita48-2@hotmail.com', 'krr 87 g 41-39 sur', '2022-12-10 02:24:32'),
(3, 'jhoana', 'cortes', 2, 1016063261, '3204630914', 'joanita46@hotmail.com', 'kr87g340-30', '2022-12-20 01:10:39'),
(4, 'jhoana', 'cortes', 2, 1016063261, '3204630914', 'joanita46@hotmail.com', 'kr87g340-30', '2022-12-20 01:10:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales_menor`
--

CREATE TABLE `datos_personales_menor` (
  `DPM_id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `id_tipo_doc` int(11) NOT NULL,
  `numero_documento_est` varchar(12) NOT NULL,
  `fecha_nacimiento` varchar(15) NOT NULL,
  `lugar_nacimiento` varchar(50) NOT NULL,
  `eps` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `id_grupo_form` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_personales_menor`
--

INSERT INTO `datos_personales_menor` (`DPM_id`, `nombres`, `apellidos`, `id_tipo_doc`, `numero_documento_est`, `fecha_nacimiento`, `lugar_nacimiento`, `eps`, `edad`, `id_grupo_form`, `fecha_registro`) VALUES
(2, 'alisson saray', 'gonzalez cortes', 5, '1141341177', '25/06/2019', 'bogota ', 'famisanar', 3, 3, '2022-12-10 02:24:32'),
(3, 'daviad', 'vargas', 5, '1029148755', '04/10/2022', 'bogota', 'compensar', 2, 2, '2022-12-20 01:10:37'),
(4, 'daviad', 'vargas', 5, '1029148755', '04/10/2022', 'bogota', 'compensar', 2, 2, '2022-12-20 01:10:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales_padre`
--

CREATE TABLE `datos_personales_padre` (
  `DPP_id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `id_tipo_doc` int(11) NOT NULL,
  `numero_documento` varchar(20) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_personales_padre`
--

INSERT INTO `datos_personales_padre` (`DPP_id`, `nombres`, `apellidos`, `id_tipo_doc`, `numero_documento`, `celular`, `correo`, `direccion`, `fecha_registro`) VALUES
(2, 'fabian', 'vargas', 2, '1030614230', '3214859750', 'leidy.xiomara.17@hotmail.com', 'krr 87 g 41-39', '2022-12-20 01:10:41'),
(3, 'fabian', 'vargas', 2, '1030614230', '3214859750', 'leidy.xiomara.17@hotmail.com', 'krr 87 g 41-39', '2022-12-20 01:10:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_formacion`
--

CREATE TABLE `grupo_formacion` (
  `id_grupo_form` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo_formacion`
--

INSERT INTO `grupo_formacion` (`id_grupo_form`, `descripcion`, `fecha_registro`) VALUES
(1, 'Caminadores', '2022-12-04 09:52:51'),
(2, 'Parvulos', '2022-12-04 09:52:51'),
(3, 'Pre-Jardin', '2022-12-04 09:52:51'),
(4, 'Jardin', '2022-12-04 09:52:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion`
--

CREATE TABLE `relacion` (
  `id_relacion` int(11) NOT NULL,
  `id_datos_madre` int(11) NOT NULL,
  `id_datos_padre` int(11) NOT NULL,
  `id_datos_menor` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `relacion`
--

INSERT INTO `relacion` (`id_relacion`, `id_datos_madre`, `id_datos_padre`, `id_datos_menor`, `fecha_registro`) VALUES
(2, 3, 2, 2, '2022-12-20 01:10:41'),
(3, 4, 2, 2, '2022-12-20 01:10:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_doc`
--

CREATE TABLE `tipo_doc` (
  `id_tipo_doc` int(11) NOT NULL,
  `descripcion_larga` varchar(50) NOT NULL,
  `descripcion_corta` varchar(5) NOT NULL,
  `Fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_doc`
--

INSERT INTO `tipo_doc` (`id_tipo_doc`, `descripcion_larga`, `descripcion_corta`, `Fecha_registro`) VALUES
(1, 'Cedula de Ciudadania', 'CC', '2022-12-04 09:23:22'),
(2, 'Cedula de Ciudadania', 'CE', '2022-12-04 09:23:22'),
(3, 'Pasaporte', 'P', '2022-12-04 09:23:22'),
(4, 'Permiso Especial de Permanencia', 'PEP', '2022-12-04 09:23:22'),
(5, 'Registro Civil de Nacimiento', 'RC', '2022-12-04 09:23:22'),
(6, 'Tarjeta de Identidad', 'TI', '2022-12-04 09:23:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `datos_personales_madre`
--
ALTER TABLE `datos_personales_madre`
  ADD PRIMARY KEY (`DPMA_id`),
  ADD KEY `DPMATD` (`id_tipo_doc`);

--
-- Indices de la tabla `datos_personales_menor`
--
ALTER TABLE `datos_personales_menor`
  ADD PRIMARY KEY (`DPM_id`),
  ADD KEY `DPMTD` (`id_tipo_doc`),
  ADD KEY `DPMGF` (`id_grupo_form`);

--
-- Indices de la tabla `datos_personales_padre`
--
ALTER TABLE `datos_personales_padre`
  ADD PRIMARY KEY (`DPP_id`),
  ADD KEY `DPPTD` (`id_tipo_doc`);

--
-- Indices de la tabla `grupo_formacion`
--
ALTER TABLE `grupo_formacion`
  ADD PRIMARY KEY (`id_grupo_form`);

--
-- Indices de la tabla `relacion`
--
ALTER TABLE `relacion`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `REDPP` (`id_datos_padre`),
  ADD KEY `REDPMA` (`id_datos_madre`),
  ADD KEY `REDPM` (`id_datos_menor`);

--
-- Indices de la tabla `tipo_doc`
--
ALTER TABLE `tipo_doc`
  ADD PRIMARY KEY (`id_tipo_doc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos`
--
ALTER TABLE `accesos`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos_personales_madre`
--
ALTER TABLE `datos_personales_madre`
  MODIFY `DPMA_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datos_personales_menor`
--
ALTER TABLE `datos_personales_menor`
  MODIFY `DPM_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `datos_personales_padre`
--
ALTER TABLE `datos_personales_padre`
  MODIFY `DPP_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `grupo_formacion`
--
ALTER TABLE `grupo_formacion`
  MODIFY `id_grupo_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `relacion`
--
ALTER TABLE `relacion`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_doc`
--
ALTER TABLE `tipo_doc`
  MODIFY `id_tipo_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `datos_personales_madre`
--
ALTER TABLE `datos_personales_madre`
  ADD CONSTRAINT `DPMATD` FOREIGN KEY (`id_tipo_doc`) REFERENCES `tipo_doc` (`id_tipo_doc`);

--
-- Filtros para la tabla `datos_personales_menor`
--
ALTER TABLE `datos_personales_menor`
  ADD CONSTRAINT `DPMGF` FOREIGN KEY (`id_grupo_form`) REFERENCES `grupo_formacion` (`id_grupo_form`),
  ADD CONSTRAINT `DPMTD` FOREIGN KEY (`id_tipo_doc`) REFERENCES `tipo_doc` (`id_tipo_doc`);

--
-- Filtros para la tabla `datos_personales_padre`
--
ALTER TABLE `datos_personales_padre`
  ADD CONSTRAINT `DPPTD` FOREIGN KEY (`id_tipo_doc`) REFERENCES `tipo_doc` (`id_tipo_doc`);

--
-- Filtros para la tabla `relacion`
--
ALTER TABLE `relacion`
  ADD CONSTRAINT `REDPM` FOREIGN KEY (`id_datos_menor`) REFERENCES `datos_personales_menor` (`DPM_id`),
  ADD CONSTRAINT `REDPMA` FOREIGN KEY (`id_datos_madre`) REFERENCES `datos_personales_madre` (`DPMA_id`),
  ADD CONSTRAINT `REDPP` FOREIGN KEY (`id_datos_padre`) REFERENCES `datos_personales_padre` (`DPP_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
