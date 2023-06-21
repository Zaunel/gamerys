-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2023 a las 11:52:01
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
(1, 'Terror'),
(2, 'Accion'),
(4, 'Aventura'),
(5, 'Carreras'),
(6, 'FPS'),
(7, 'MMO RPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juego` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `juego` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` double NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juego`, `imagen`, `juego`, `descripcion`, `precio`, `id_categoria`) VALUES
(23, 'CODINFW.jpg', 'Call of Duty: Infinite Warfare', 'Call of Duty: Infinite Warfare es un videojuego del año 2016 perteneciente a la saga de juegos de acción y disparos en primera persona Call of Duty, siendo este el décimo tercer titulo de la serie.', 3000, 6),
(24, '1352212182_zpse2fd6e66.jpg', 'Call of Duty: Black Ops 2 ', 'Call of Duty: Black Ops 2 es un videojuego de disparos en primera persona lanzado por Treyarch y Activision en el 2012. Call of Duty: Black Ops 2 es el noveno juego de la saga Call of Duty y una secuela del juego de 2010 Call of Duty: Black Ops.', 3400, 6),
(25, 'Call-of-Duty-Modern-Warfare-3-Gets-Reported-Cover-and-Logo-2_zps7b811999.jpg', 'Call of Duty: Modern Warfare 3', 'Call of Duty: Modern Warfare 3 es un videojuego de disparos en primera persona desarrollado por Infinity Ward y Sledgehammer Games, con el trabajo adicional de Raven Software, y distribuido por Activision.', 3500, 6),
(26, 'Valorant.png', 'VALORANT', 'VALORANT es un shooter táctico 5v5 basado en personajes que está ambientado en un escenario internacional.', 5000, 6),
(27, 'cs16_zps9f9e689e.jpg', 'Counter Strike 1.6', 'Counter-Strike 1.6 es un juego de tipo multijugador (ya sea en LAN o en línea). Es una modificación completa del juego Half-Life, realizada por Minh Le y Jess Cliffe quienes lanzaron la primera versión el 18 de junio de 1999.', 15000, 6),
(28, 'NFSHED.jpg', 'Need For Speed Heat', 'Need For Speed Heat es un videojuego de carreras y vigésimo cuarta entrega de la serie Need For Speed la cual conmemora 25 años de la saga. ', 3000, 5),
(29, 'NFSUNDV.jpg', 'Need For Speed Undercover', 'Need For Speed: Undercover es la duodécima entrega de la popular serie de videojuegos de carreras Need for Speed, desarrollado por EA Black Box y distribuido por Electronic Arts.', 4500, 5),
(30, 'NFSCRBN.jpg', 'Need For Speed Carbon', 'Need For Speed: Carbon es la décima entrega de la saga de videojuegos Need for Speed. Fue mostrado por primera vez en la conferencia de Sony durante el E3 de 2006. ', 5000, 5),
(31, 'NFSMW12.jpg', 'Need For Speed Most Wanted 2012', 'Need For Speed: Most Wanted 2012 es un videojuego de carreras de la saga Need for Speed desarrollado por Electronic Arts y Criterion Games.', 3000, 5),
(32, 'NFSUN2.jpg', 'Need For Speed Underground 2 ', 'Need For Speed: Underground 2 (NFSU2) es un videojuego de carreras publicado y desarrollado por Electronic Arts. Lanzado en 2004, es la secuela de Need for Speed: Underground. ', 6000, 5),
(33, 'RE4REM.jpg', 'Resident Evil 4 (2023) Remake Deluxe Edition', 'Resident Evil 4 Remake El indiscutiblemente popular juego de supervivencia y establecido por la mayoría de fans como el mejor juego de la franquicia ha obtenido su Remake.', 10000, 1),
(34, 'SONFORS.jpg', 'Sons Of The Forest', 'Sons Of The Forest es un videojuego de acción y superviencia en mundo abierto con una perspectiva en primera persona y es la secuela del juego The Forest del 2018 desarrollado por Endnight Games Ltd. ', 6000, 1),
(35, 'RESEV8.jpg', 'Resident Evil Village Deluxe Edition', 'Resident Evil Village es un videojuego de supervivencia y terror de la popular franquicia Resident Evil, siendo este secuela de Resident Evil 7: Biohazard. ', 8000, 1),
(36, 'i9659_outlast-whistleblower_zps061a7da6.jpg', 'Outlast Whistleblower', 'Outlast: Whistleblower es un DLC (siglas de DownLoadable Content) o expansión del juego Outlast. La expansión fue publicada por Red Barrels Games para PC y PlayStation 4 en abril de 2014.', 5000, 1),
(37, 'OUTLAST2.jpg', 'Outlast 2 ', 'Outlast 2 es la secuela del videojuego de terror psicológico y survival descrito por muchos como uno de los juegos más terroríficos de los últimos tiempos.', 11000, 1),
(38, 'TERRA.jpg', 'Terraria 1.4.4.9', 'Terraria es un videojuego de aventura y mundo abierto producido de forma independiente por el estudio Re-Logic.', 3000, 7),
(39, 'STRVLL.jpg', 'Stardew Valley', 'Stardew Valley es un videojuego de simulación con espectaculares gráficos en 2D, en este juego acabas de heredar la vieja granja agrícola de tu abuelo de Stardew Valley.', 5300, 7),
(40, 'STROFRG.jpg', 'Streets of Rogue', 'Streets of Rogue es un videojuego de acción en 2D y también pertenece al género Rol y Rogue-Lite en el cual lo más importante son las elecciones que tome el jugador, la libertad y la diversión desenfrenada. ', 2500, 7),
(41, 'FNFS3.jpg', 'Final Fantasy III ', 'Final Fantasy III versión oficial de PC del popular tercer juego de la saga Final Fantasy, uno de los juegos más apreciados de la épica serie RPG. Interfaz completamente renovada.', 5400, 7),
(42, 'HEHOR.jpg', 'Hero’s Hour', 'Hero’s Hour es un videojuego del género de rol y estrategia que cuenta con coloridos gráficos estilo pixel de la vieja escuela. El juego se centra en los combates estratégicos por turnos en tiempo real.', 3700, 7),
(43, 'APLGTR.jpg', 'A Plague Tale: Requiem', 'A Plague Tale: Requiem es la esperada secuela del elogiado A Plague Tale: Innocence, videojuego que se ambienta durante una versión alternativa de la época azotada por la peste negra.', 6000, 4),
(44, 'N0MNSKNE.jpg', 'No Man’s Sky', 'No Man’s Sky es un videojuego de exploración espacial, supervivencia de ciencia ficción n en un universo infinito generado de forma procedimental. ', 1500, 4),
(45, 'SAKBOYBA.jpg', 'Sackboy A Big Adventure', '\r\nSackboy A Big Adventure PC Full Español\r\nALTOS REQUISITOS, JUEGOS DE AVENTURA\r\n\r\n\r\n\r\n\r\n\r\n\r\nSackboy La Gran Aventura es un videojuego de aventura y plataformas que se puede jugar de hasta 4 jugadores de forma local en pantalla dividida.', 2600, 4),
(46, 'ARKSU.jpg', 'ARK: Survival Evolved Explorer’s', 'ARK: Survival Evolved es un increíble videojuego que mezcla varios géneros como la acción, el rol, el mundo abierto, crafting y la supervivencia y que se a hecho muy popular en estos últimos años.', 4300, 4),
(47, 'KNSHII.jpg', 'Kenshi', 'Kenshi es un videojuego de aventura basado en un equipo de roaming libre que se centra en las características de juego de mundo abierto en lugar de una historia lineal.', 2000, 4),
(48, 'CYBRPNK.jpg', 'Cyberpunk 2077', 'Cyberpunk 2077 es un videojuego en primera persona que se desarrolla en un gran mundo abierto cyberpunk futurista.', 9000, 2),
(49, 'TELASUS.jpg', 'The Last of Us Part I', ' Luego de que un hongo mutado del género Cordyceps infectara a la humanidad convirtiendo a millones de personas en zombis caníbales que comparten una especie de mente colmena, Joel el protagonista, se encuentra con Ellie una joven inmune a la infecci', 15000, 2),
(50, 'MARSPIMO.jpg', 'Marvel’s Spider Man: Miles Morales', 'Marvel’s Spider-Man: Miles Morales es la continuación de Marvel’s Spider Man Remasterizado, el cual tiene a un nuevo protagonista, Miles Morales el cual sigue los pasos de Peter Parker para convertirse en un nuevo Spider-Man. ', 14500, 2),
(51, 'MARSPIDE.jpg', 'Marvel’s Spider Man Remastered', 'Marvel’s Spider-Man Remastered es la versión oficial y remasterizada para PC del videojuego de acción y aventura basado en el Superhéroe de Marvel Comics, Spider-Man. ', 12000, 2),
(52, 'WWRZ-.jpg', 'World War Z', 'World War Z es un videojuego de acción y disparos en tercera persona que se basa en la supervivencia durante un apocalipsis zombi.', 13400, 2);

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
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
