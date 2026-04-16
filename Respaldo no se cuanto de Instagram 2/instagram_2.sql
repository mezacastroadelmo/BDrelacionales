-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2026 a las 17:20:54
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
-- Base de datos: `instagram 2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `comentario_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `texto` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`comentario_id`, `pub_id`, `usuario_id`, `texto`, `fecha`) VALUES
(1, 1, 1, 'Mejor te hubieras puesto a ver algo mejor como padre ball o Billy y Mandy, pleb', '2026-04-16 16:47:46'),
(2, 2, 2, 'Buen video amo Dum', '2026-04-16 16:47:46'),
(3, 3, 3, 'Exclamó el que usa a Wario man como foto de perfil', '2026-04-16 16:47:46'),
(4, 4, 4, 'Así lo quiso el cliente', '2026-04-16 16:47:46'),
(5, 5, 5, 'Te ardes mucho, hijo', '2026-04-16 16:47:46'),
(6, 6, 1, 'Fan de Evangelion tenía que ser', '2026-04-16 16:58:39'),
(7, 7, 2, 'De que hablas w', '2026-04-16 16:58:39'),
(8, 8, 3, 'Que sinceridad w?', '2026-04-16 16:58:39'),
(9, 9, 4, 'Decirme que ?', '2026-04-16 16:58:39'),
(10, 10, 5, 'No se me ocurrió que poner aquí  xd', '2026-04-16 16:58:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hashtags`
--

CREATE TABLE `hashtags` (
  `hashtag_id` int(11) NOT NULL,
  `etiqueta` varchar(60) NOT NULL,
  `creado_en` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `hashtags`
--

INSERT INTO `hashtags` (`hashtag_id`, `etiqueta`, `creado_en`) VALUES
(1, '#BULLYDEBULLIES', '2026-04-01'),
(2, '#PLEB', '2026-04-02'),
(3, '#SINCERO', '2026-04-03'),
(4, '#DECIRMEQUE', '2026-04-04'),
(5, '#APAGALAWEY', '2026-04-05'),
(6, '#DUMLEDECIMOS', '2026-04-06'),
(7, '#NOOVEJAYALACAGASTE', '2026-04-07'),
(8, '#PESIMOGUSTO', '2026-04-08'),
(9, '#PIZZADELADISCORDIA', '2026-04-09'),
(10, '#AMOAMINOVIA', '2026-04-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_uri` varchar(255) NOT NULL,
  `fecha_pub` datetime NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`pub_id`, `usuario_id`, `contenido`, `imagen_uri`, `fecha_pub`, `likes`) VALUES
(1, 1, 'Evangelion fue mi infancia, cuando comenzé la serie me sentía como Shinji, pero cuando la finalicé me sentí como Misato, eso me enseñó a no dejarme molestar por mis bullies, convirtiendome en el bully de bullies', '', '2026-04-15 17:06:32', -1),
(2, 2, 'Breaking bad me pareció mala, definitivamente sobrevalorada, además de que los neo nazis que salieron fueron bastante planos.\r\n3/10 pleb', '', '2026-04-15 17:06:32', 0),
(3, 3, 'El increíble mundo de Gumball me parece una mala serie, si te gusta déjame decirte que tienes un pésimo gusto', '', '2026-04-16 16:19:35', 11),
(4, 4, 'Por favor perdóname @LaloGarx no era mi intención ofenderte ???\r\n', '', '2026-04-16 16:21:25', 158),
(5, 5, 'Hace años en llamada con un amigo y con Warioman recuerdo que entró el papá de Wario con una voz bastante similar a la de él diciendo \"Qué estás haciendo\" y Wario le contesta \"Nada, pues nomás aquí en la computadora\" y su papá le dice \"Ya apagala wey\"', '', '2026-04-16 16:24:34', 2608),
(6, 1, 'Soy maid, solo que no soy dragona xddd', '', '2026-04-16 16:32:12', 52),
(7, 2, 'Me encanta ser blanco y estoy orgulloso de serlo me encanta tener sangre europea y aunque a muchos blancos les causaría rechazo la idea, yo me moriría de alegría si supiera que alguno de mis antepasados perteneció al Imperio español. Me encanta mi piel blanca, me encanta mi heterocromía (mi ojo color verde, mi ojo color miel) mi nariz respingada la forma de mi cráneo mis labios', '', '2026-04-16 16:33:19', 0),
(8, 3, 'Como dis... Como que si te enseñan un bebé y dices \"esta bonito\", este, obvia... Y en tu mente no piensas eso es que no estas siendo sincero, pero si lo dices que \"está bien horrible\", se oye feo', '', '2026-04-16 16:34:47', 48),
(9, 4, 'Doom se acostó con mi colchon, encima de reprobar el call center.', '', '2026-04-16 16:36:49', 235),
(10, 5, 'La amenaza de doxeo a @Luminosa era bait, yo jamás le haría eso a mi noviesita hermosa ???', '', '2026-04-16 16:39:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_hashtag`
--

CREATE TABLE `pub_hashtag` (
  `pub_id` int(11) NOT NULL,
  `hashtag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pub_likes`
--

CREATE TABLE `pub_likes` (
  `pub_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `fecha_follow` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bio` varchar(200) NOT NULL,
  `fecha_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `username`, `email`, `bio`, `fecha_reg`) VALUES
(1, 'Oveja', 'dumledecimos@gmail.com', 'Bully de bullies', '2016-03-04'),
(2, 'Doomentio', 'noovejayalacagaste@gmail.com', 'Pleb', '2017-03-13'),
(3, 'Warioman', 'pesimogusto@gmail.com', 'Sincero', '2018-04-29'),
(4, 'Ocio', 'Decirmeque@gmail.com', 'Actor de doblaje', '2019-06-12'),
(5, 'Ken L Wright', 'yaapagalawey@gmail.com', 'Amo a mi noviesita @Numinosa', '2020-08-18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`hashtag_id`),
  ADD UNIQUE KEY `etiqueta` (`etiqueta`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `pub_hashtag`
--
ALTER TABLE `pub_hashtag`
  ADD KEY `hashtag_id` (`hashtag_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indices de la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD KEY `pub_id` (`pub_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `comentario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);

--
-- Filtros para la tabla `pub_hashtag`
--
ALTER TABLE `pub_hashtag`
  ADD CONSTRAINT `pub_hashtag_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `hashtags` (`hashtag_id`),
  ADD CONSTRAINT `pub_hashtag_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`);

--
-- Filtros para la tabla `pub_likes`
--
ALTER TABLE `pub_likes`
  ADD CONSTRAINT `pub_likes_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publicaciones` (`pub_id`),
  ADD CONSTRAINT `pub_likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`usuario_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
