-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2026 a las 17:22:27
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
-- Base de datos: `mundial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confederación`
--

CREATE TABLE `confederación` (
  `id_confederación` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `región` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `confederación`
--

INSERT INTO `confederación` (`id_confederación`, `nombre`, `siglas`, `región`) VALUES
(1, 'UEFA', 'LPP', 'México'),
(2, 'CONMEBOL', 'SFP', 'Polonia'),
(3, 'CONCACAF', 'SFEU', 'Estados Unidos'),
(4, 'AFC', 'SFJ', 'Japón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `código_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederación` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `código_fifa`, `entrenador`, `id_confederación`) VALUES
(1, '4to Matutino Programación', '4MP', 'Arely Trujillo Lara', 1),
(2, 'Los Perros Parados', 'LPP', 'Profesor Rómulo', 2),
(3, 'Selección de Fútbol de Japón', 'SFJ', 'Miyamoto', 3),
(4, 'Selección de Fútbol de Estados Unidos', 'SFU', 'Donald Trump', 1),
(5, 'Selección de Fútbol de Polonia', 'SFP', 'Mike Wazowski', 2),
(6, 'Selección de Fútbol de Argentina', 'SFA', 'La Cobra', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadio`
--

CREATE TABLE `estadio` (
  `id_estudio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `país` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadio`
--

INSERT INTO `estadio` (`id_estudio`, `nombre`, `ciudad`, `país`, `capacidad`) VALUES
(1, 'Estadio Azteca ', 'CDMX', 'México', 87500),
(2, ' Maracaná', 'Río de Janeiro', 'Brasil', 78838),
(3, ' Santiago Bernabéu', 'Madrid', 'España', 83186),
(4, 'Wembley Stadium ', 'Londres', 'Inglaterra', 90000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posición` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `posición`, `numero_dorsal`, `fecha_nac`, `id_equipo`) VALUES
(1, 'Adelmo', 'Central', 69, '2009-03-04', 1),
(2, 'Derek', 'Portero', 67, '2009-01-10', 1),
(3, 'Ángel', 'Delantero', 10, '1997-06-28', 2),
(4, 'Monche', 'portero', 11, '1997-01-13', 2),
(5, 'Hatsune Miku', 'central', 1, '2007-08-31', 3),
(6, 'Naruto', 'atacante', 7, '1999-10-10', 3),
(7, 'Capitán América', 'portero', 6, '1918-07-04', 4),
(8, 'Joe Biden', 'mediocentro', 24, '1942-11-20', 4),
(9, 'Robert Lewandowski', 'delantero', 9, '1986-08-21', 5),
(10, 'Kick Buttowski', 'atacante', 12, '2010-05-08', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fase` varchar(30) NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha`, `fase`, `goles_local`, `goles_visitante`, `id_estadio`, `id_local`, `id_visitante`) VALUES
(1, '2026-05-01 08:17:36', 'cuartos de final', 1, 2, 1, 1, 6),
(2, '2026-05-02 08:17:36', 'medio tiempo', 2, 4, 2, 2, 5),
(3, '2026-05-03 08:17:36', 'final', 3, 1, 3, 3, 4),
(4, '2026-05-04 08:17:36', 'penales', 4, 8, 4, 4, 3),
(5, '2026-05-05 08:17:36', 'cuartos de final', 5, 10, 1, 5, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confederación`
--
ALTER TABLE `confederación`
  ADD PRIMARY KEY (`id_confederación`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederación` (`id_confederación`);

--
-- Indices de la tabla `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`id_estudio`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_visitante` (`id_visitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confederación`
--
ALTER TABLE `confederación`
  MODIFY `id_confederación` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estadio`
--
ALTER TABLE `estadio`
  MODIFY `id_estudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_confederación`) REFERENCES `confederación` (`id_confederación`);

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`id_estudio`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_local`) REFERENCES `equipo` (`id_equipo`),
  ADD CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`id_visitante`) REFERENCES `equipo` (`id_equipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
