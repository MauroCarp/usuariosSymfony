-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-06-2022 a las 01:48:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoSymfony`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `sexo`, `estado`) VALUES
(4, 'Juan', 'Gomez', '2004-04-05', 'M', 0),
(6, 'Rosa', 'Gomez', '1992-04-05', 'F', 0),
(7, 'Paco', 'Mendez', '1993-04-05', 'M', 1),
(8, 'Roberto', 'Sanchez', '1982-04-05', 'M', 0),
(10, 'Pedro', 'Perez', '2022-04-05', 'M', 0),
(11, 'Pedro', 'Perez', '2022-04-05', 'M', 0),
(12, 'Pedro', 'Perez', '2022-04-05', 'M', 0),
(13, 'Pedro', 'Perez', '2022-04-05', 'M', 0),
(16, 'Mauro', 'Gonzalez', '2025-02-22', 'M', 0),
(18, 'Usuario0', 'Apellido0', '1987-06-22', 'F', 1),
(19, 'Usuario1', 'Apellido1', '1992-04-20', 'M', 0),
(20, 'Usuario2', 'Apellido2', '1981-04-03', 'F', 1),
(21, 'Usuario3', 'Apellido3', '1995-01-17', 'M', 0),
(22, 'Usuario4', 'Apellido4', '1981-03-05', 'M', 1),
(23, 'Usuario5', 'Apellido5', '1992-09-18', 'F', 0),
(24, 'Usuario6', 'Apellido6', '1982-04-22', 'F', 1),
(25, 'Usuario7', 'Apellido7', '1993-05-05', 'M', 1),
(26, 'Usuario8', 'Apellido8', '1997-02-13', 'M', 1),
(27, 'Usuario9', 'Apellido9', '1997-11-30', 'M', 0),
(28, 'Usuario10', 'Apellido10', '1979-04-05', 'F', 0),
(29, 'Usuario11', 'Apellido11', '1986-06-16', 'F', 0),
(30, 'Usuario12', 'Apellido12', '1970-05-15', 'M', 1),
(31, 'Usuario13', 'Apellido13', '1997-04-04', 'M', 1),
(32, 'Usuario14', 'Apellido14', '1992-02-16', 'M', 1),
(33, 'Usuario15', 'Apellido15', '1973-03-19', 'F', 1),
(34, 'Usuario16', 'Apellido16', '1982-05-31', 'F', 1),
(35, 'Usuario17', 'Apellido17', '1975-10-23', 'F', 1),
(36, 'Usuario18', 'Apellido18', '1979-11-18', 'M', 0),
(37, 'Usuario19', 'Apellido19', '1976-09-07', 'M', 0),
(38, 'Usuario20', 'Apellido20', '1988-06-26', 'M', 1),
(39, 'Usuario21', 'Apellido21', '1982-11-17', 'F', 1),
(40, 'Usuario22', 'Apellido22', '1986-07-02', 'M', 0),
(41, 'Usuario23', 'Apellido23', '1989-02-17', 'F', 0),
(42, 'Usuario24', 'Apellido24', '1981-08-15', 'M', 0),
(43, 'Usuario25', 'Apellido25', '1975-09-01', 'M', 0),
(44, 'Usuario26', 'Apellido26', '1990-07-15', 'F', 1),
(45, 'Usuario27', 'Apellido27', '1987-12-14', 'M', 0),
(46, 'Usuario28', 'Apellido28', '1984-08-02', 'F', 0),
(47, 'Usuario29', 'Apellido29', '1981-08-21', 'F', 1),
(48, 'Usuario30', 'Apellido30', '1985-08-04', 'F', 0),
(49, 'Usuario31', 'Apellido31', '1973-09-26', 'M', 0),
(50, 'Usuario32', 'Apellido32', '1982-12-16', 'F', 1),
(51, 'Usuario33', 'Apellido33', '1974-12-14', 'M', 0),
(52, 'Usuario34', 'Apellido34', '1970-08-09', 'M', 0),
(53, 'Usuario35', 'Apellido35', '1986-04-23', 'M', 1),
(54, 'Usuario36', 'Apellido36', '1979-02-18', 'F', 0),
(55, 'Usuario37', 'Apellido37', '1978-12-28', 'F', 0),
(56, 'Usuario38', 'Apellido38', '1987-02-11', 'M', 1),
(57, 'Usuario39', 'Apellido39', '1971-10-19', 'F', 1),
(58, 'Usuario40', 'Apellido40', '1985-04-25', 'F', 1),
(59, 'Usuario41', 'Apellido41', '1974-04-24', 'F', 1),
(60, 'Usuario42', 'Apellido42', '1993-01-16', 'F', 1),
(61, 'Usuario43', 'Apellido43', '1979-01-17', 'F', 1),
(62, 'Usuario44', 'Apellido44', '1982-12-12', 'F', 1),
(63, 'Usuario45', 'Apellido45', '1978-09-02', 'F', 0),
(64, 'Usuario46', 'Apellido46', '1986-03-11', 'M', 1),
(65, 'Usuario47', 'Apellido47', '1981-03-23', 'F', 0),
(66, 'Usuario48', 'Apellido48', '1978-03-31', 'F', 1),
(67, 'Usuario49', 'Apellido49', '1973-07-21', 'M', 1),
(68, 'Usuario50', 'Apellido50', '1991-03-31', 'M', 1),
(69, 'Usuario51', 'Apellido51', '1993-07-29', 'F', 1),
(70, 'Usuario52', 'Apellido52', '1996-09-11', 'M', 1),
(71, 'Usuario53', 'Apellido53', '1989-07-04', 'M', 1),
(72, 'Usuario54', 'Apellido54', '1993-04-03', 'F', 1),
(73, 'Usuario55', 'Apellido55', '1979-05-26', 'F', 0),
(74, 'Usuario56', 'Apellido56', '1997-09-20', 'M', 1),
(75, 'Usuario57', 'Apellido57', '1988-09-06', 'M', 0),
(76, 'Usuario58', 'Apellido58', '1997-06-13', 'M', 1),
(77, 'Usuario59', 'Apellido59', '1988-10-04', 'F', 0),
(78, 'Usuario60', 'Apellido60', '1983-04-10', 'M', 1),
(79, 'Usuario61', 'Apellido61', '1989-05-10', 'M', 0),
(80, 'Usuario62', 'Apellido62', '1974-03-14', 'M', 1),
(81, 'Usuario63', 'Apellido63', '1988-02-11', 'F', 0),
(82, 'Usuario64', 'Apellido64', '1987-02-28', 'M', 0),
(83, 'Usuario65', 'Apellido65', '1995-03-02', 'F', 1),
(84, 'Usuario66', 'Apellido66', '1976-05-24', 'M', 0),
(85, 'Usuario67', 'Apellido67', '1997-11-29', 'M', 1),
(86, 'Usuario68', 'Apellido68', '1996-08-25', 'M', 0),
(87, 'Usuario69', 'Apellido69', '1984-11-14', 'F', 0),
(88, 'Usuario70', 'Apellido70', '1986-05-31', 'M', 0),
(89, 'Usuario71', 'Apellido71', '1981-12-23', 'F', 0),
(90, 'Usuario72', 'Apellido72', '1975-05-02', 'F', 1),
(91, 'Usuario73', 'Apellido73', '1979-04-06', 'F', 1),
(92, 'Usuario74', 'Apellido74', '1975-03-26', 'F', 1),
(93, 'Usuario75', 'Apellido75', '1997-04-17', 'M', 1),
(94, 'Usuario76', 'Apellido76', '1975-06-08', 'F', 0),
(95, 'Usuario77', 'Apellido77', '1970-09-08', 'F', 0),
(96, 'Usuario78', 'Apellido78', '1983-08-03', 'F', 1),
(97, 'Usuario79', 'Apellido79', '1986-06-27', 'M', 0),
(98, 'Usuario80', 'Apellido80', '1982-03-23', 'M', 1),
(99, 'Usuario81', 'Apellido81', '1991-10-09', 'M', 0),
(100, 'Usuario82', 'Apellido82', '1973-11-22', 'M', 1),
(101, 'Usuario83', 'Apellido83', '1989-09-15', 'F', 1),
(102, 'Usuario84', 'Apellido84', '1980-04-21', 'M', 0),
(103, 'Usuario85', 'Apellido85', '1980-04-24', 'F', 1),
(104, 'Usuario86', 'Apellido86', '1989-01-01', 'F', 0),
(105, 'Usuario87', 'Apellido87', '1978-02-22', 'M', 0),
(106, 'Usuario88', 'Apellido88', '1994-07-19', 'F', 1),
(107, 'Usuario89', 'Apellido89', '1993-02-19', 'F', 0),
(108, 'Usuario90', 'Apellido90', '1975-11-14', 'M', 0),
(109, 'Usuario91', 'Apellido91', '1970-07-30', 'M', 1),
(110, 'Usuario92', 'Apellido92', '1970-06-15', 'F', 0),
(111, 'Usuario93', 'Apellido93', '1995-01-30', 'M', 1),
(112, 'Usuario94', 'Apellido94', '1987-02-25', 'M', 1),
(113, 'Usuario95', 'Apellido95', '1982-03-01', 'M', 0),
(114, 'Usuario96', 'Apellido96', '1985-07-13', 'F', 1),
(115, 'Usuario97', 'Apellido97', '1997-03-26', 'M', 1),
(116, 'Usuario98', 'Apellido98', '1978-07-30', 'M', 0),
(117, 'Usuario99', 'Apellido99', '1993-03-19', 'M', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
