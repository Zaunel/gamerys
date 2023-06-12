-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2023 a las 05:14:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamerys`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `juego` varchar(100) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `imagen`, `juego`, `descripcion`, `precio`, `id_categoria`) VALUES
(15, 'DNI.jpg', 'rapidandfuri', 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 123, 1),
(16, 'img024.jpg', 'outla', 'asdsgfdfgafgasdg', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id`, `usuario`, `email`, `contraseña`, `admin`) VALUES
(10, 'matias', 'matias.pedro.ortega@gmail.com', '$2y$10$veLzR/BZY5IZOYS2HDpqsOJqQ5lUOzSNxKx2Sds5XanKDIL0v60vy', 1),
(11, '42042066', 'mathiuzvalorant@gmail.com', '$2y$10$BpoX/O.fuTE739M4gAilIO/NM9rcQrN5RUqa6wyykYbK8bq079bd2', 0),
(12, 'matiasss', 'matias.pedro.ortega@gmail.com', '$2y$10$OJ73826chpgPX02/bgy33Owhqt8KDVNXddvFExCrpFkeejZ3uu8cK', 0),
(13, 'Keruzi', 'uzielimhoff@gmail.com', '$2y$10$hciYMsKePgHIAZEyDWOa..b4HnWoiEvhnBx.kg.b/ubbQmA9TkQo2', 0),
(14, 'jere', 'jere@gmail.com', '$2y$10$YQ.vksoKnK6a8hgOi73sYO86lRWkgkAnhrRUma.KXlnbgEIjkDjp.', 0),
(15, 'sssssssss', 'matias.pedroooo.ortega@gmail.com', '$2y$10$00wVpQUYQqW3uGVBWuaPBOuiSHnpWJA4T87EGLEr.5ChMHMAERv.C', 0),
(16, 'aadada', 'asdasda@gmail.com', '$2y$10$wX1wd0L5AnqKdbCewjfd.u.emd1Pa1VkWdrWIPYc3K2.UDSAQrJZG', 0),
(17, 'asdasdasd', 'asdasdasdasd@gmail.com', '$2y$10$RVWAseJfC4tjAw15/MuhT..4JhnWAfongWKLI/6ItJJVmE5tAk8me', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juego`),
  ADD KEY `id_categorias` (`id_categoria`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
