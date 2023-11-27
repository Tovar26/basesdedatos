-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2023 a las 01:21:20
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `andf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `id_asignaciones` int(11) NOT NULL,
  `estudiante_id` int(11) NOT NULL,
  `curso_nombre` varchar(200) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `nombre_estudiante` varchar(100) NOT NULL,
  `estatus` varchar(50) NOT NULL,
  `comentarios` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'Gerente'),
(2, 'Administrador'),
(3, 'Socio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nombre_estudiante` varchar(100) NOT NULL,
  `nombre_curso` varchar(100) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(100) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `fecha_cumple` date DEFAULT NULL,
  `celular` bigint(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `antiguedad` float NOT NULL,
  `imagen` longblob NOT NULL,
  `rfc` varchar(20) NOT NULL,
  `nombre_fiscal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(25) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `cp` int(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_inscripcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospectos`
--

CREATE TABLE `prospectos` (
  `id_prospectos` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ap_materno` varchar(100) NOT NULL,
  `ap_paterno` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `observaciones` varchar(500) NOT NULL,
  `celular` bigint(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `nombre_sucursal` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `tipo_socio` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(20) NOT NULL,
  `servicio` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `servicio`, `descripcion`, `id_usuario`) VALUES
(1, 'Striper', 'sdfsdf', 125),
(2, 'Asaltantefgdfgh', 'fghfgh', 125),
(3, 'camarografo', '12345rf', 126);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(250) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fecha_cumple` date DEFAULT NULL,
  `celular` bigint(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `antiguedad` double NOT NULL,
  `imagen` longblob NOT NULL,
  `rfc` varchar(50) NOT NULL,
  `nombre_fiscal` varchar(50) NOT NULL,
  `nombre_sucursal` varchar(50) NOT NULL,
  `calle` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `cp` int(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `membresia` varchar(50) NOT NULL,
  `fecha_inscripcion` date DEFAULT NULL,
  `factura` varchar(100) NOT NULL,
  `monto` varchar(100) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `tipo_socio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `usuario`, `contraseña`, `id_cargo`, `ap_paterno`, `ap_materno`, `sexo`, `fecha_cumple`, `celular`, `correo`, `antiguedad`, `imagen`, `rfc`, `nombre_fiscal`, `nombre_sucursal`, `calle`, `colonia`, `ciudad`, `cp`, `estado`, `membresia`, `fecha_inscripcion`, `factura`, `monto`, `metodo_pago`, `cargo`, `tipo_socio`) VALUES
(109, 'María del Rosario', 'andf.gerencia@gmail.com', '$2y$10$ZKQQbBpCUXdGWVkbIseEtefzhMCyho2aUFDlo0KPcpSfR54Efxtge', 1, 'Jiménez', 'Pelayo', '', NULL, 0, '', 0, '', '', '', '', '', '', '', 0, '', '', NULL, '', '', '', '', ''),
(129, 'Victoriano', 'victoriano@andf.com', '$2y$10$8yWs.xPWwNvFJ9FCqL44luTASoqk7yP5vIwfffYXZNwq6RAyDsCc2', 2, 'Carranza', 'Valdez', 'H', '2023-05-01', 3145678912, 'victoriano@andf.com', 0, '', '', '', '', '', '', '', 0, '', '', NULL, '', '', '', 'Intendente', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`id_asignaciones`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  ADD PRIMARY KEY (`id_prospectos`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `id_asignaciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `prospectos`
--
ALTER TABLE `prospectos`
  MODIFY `id_prospectos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
