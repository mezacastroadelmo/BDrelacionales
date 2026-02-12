-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:25:24
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripción`, `cantidad`) VALUES
(1, 'Marvel Legends Maximum Series, Figura de acción de Deadpool con Doop', 0, 'Hasbro', 'AQUÍ VIENE DEADPOOL: Esta figura coleccionable de Deadpool está inspirada en la apariencia del personaje en los clásicos cómics de Deadpool, X-Force y X-Men\r\nDISEÑO Y DECORADO MAXIMUM: Los fans y coleccionistas pueden exhibir estas figuras Marvel premium de 15 cm que cuentan con diseño y decorado inspirados en los cómics\r\nACCESORIOS INSPIRADOS EN LOS CÓMICS DE MARVEL: Esta figura deluxe oficial Hasbro Marvel Legends luce increíble con 24 accesorios, incluyendo manos alternativas, cabeza alternat', 1),
(2, 'Oster® Freidora de Aire Digital, Recubrimiento Oster® DiamondForce, con Ventana y Luz Interna, 6L de Capacidad, con 10 Programas Automáticos', 0, 'Oster', 'Recubrimiento Oster DiamondForce: Hasta 15 veces más fácil de limpiar*.​ Hasta 12 veces más resistente a rayaduras*: No se agrieta, pela o raya\r\n6L de capacidad: permite cocinar un pollo de hasta 2.7Kg\r\nPanel de Control Digital\r\nVentana y luz Interna para mejorar ​la visibilidad y controlar ​la cocción de los alimentos\r\n10 Programas Automáticos que añaden conveniencia​ y facilidad al cocinar​: Papas fritas, alitas, aves, carne, vegetales, pescado/mariscos, hornear, postre, deshidratar, calentar\r', 1),
(3, 'Funko Pop!: Marvel - Spider-Man', 0, 'Funko', 'Refresh your Marvel collection with a twist on your favorite heroes!\r\nIn an all-new look inspired by his first Funko Pop! appearance, Pop! Spider-Man is ready to take his place in your heroic lineup.\r\nJoin in on the action when you welcome this web-slinger into your home.\r\nVinyl bobblehead is approximately 3.7-inches tall.', 1),
(4, 'Doki Doki Literature Club Plus! Premium Physical Edition – PlayStation 4', 0, 'Serenity Forge', 'Enter the #1 psychological horror experience!\r\nWrite poems for your crush and erase any mistakes along the way to ensure your perfect ending. Now\'s your chance to discover why Doki Doki Literature Club is one of the most beloved psychological horror games of the decade!\r\nNow, the original mind-shattering DDLC experience is packed with tons of new features and content exclusive to Doki Doki Literature Club Plus!\r\nThis game is not suitable for children or those who are easily disturbed.', 1),
(5, 'Xbox Series X 1TB Consola - Versión Internacional', 0, 'Xbox', 'La Versión Internacional corresponde a un producto vendido en distintos países. Esta consola no incluye soporte local de la marca pero sí está respaldada por las políticas de devolución de Amazon México.\r\nPresentamos Xbox Series X, la consola Xbox más rápida y potente de la historia. Juega miles de títulos de cuatro generaciones de consolas: todos los juegos se ven y se juegan mejor en Xbox Series X.\r\nExperimenta la velocidad y el rendimiento de la próxima generación con Xbox Velocity Architectu', 1),
(6, 'TUBBZ - Figura Coleccionable de Vinilo de Goma de Pato - Producto Oficial de Minecraft - Videojuegos y películas', 0, 'TUBBZ', 'Mini TUBBZ da vida a tus personajes favoritos en forma de pato de goma compacta, perfecta para cualquier colección.\r\nCon un 50% más pequeño que el TUBBZ estándar, estas mini cifras son ideales para coleccionistas con espacio limitado y son el regalo perfecto para el fan de Minecraft en tu vida\r\nEste regalo con licencia oficial es parte de la gama TUBBZ, una serie de personajes de cultura pop altamente coleccionables en forma de pato, perfecto para patear en jeep\r\nColecciona todos tus personajes ', 1),
(7, 'Half Moon Bay Wallace and Gromit - Taza de café de cerámica pintada a mano de 16 onzas para tu taza matutina de Joe', 0, 'Half Moon Bay', 'Producto oficial de Wallace & Gromit.\r\nTaza 3D agrietada con forma de cabeza de Gromit.\r\nCuenta con detalles pintados a mano que dan vida al carácter de Gromit.\r\nEmpaquetado en una caja de regalo impresa.\r\nMedidas: 11 cm de alto x 13 cm de ancho x 13,5 cm de profundidad aprox.', 1),
(8, 'LEGO Marvel X-Men: Mansión X Set construible de la Escuela Xavier con Minifiguras para Fans de los Kits de construcción y Las películas de superhéroes, Regalo para Adultos 76294', 0, 'LEGO', 'Regalo coleccionable para adultos inspirado en los X-Men: Esta recreación LEGO Marvel construible de la Mansión X está diseñada para fans adultos de las películas de superhéroes y modelistas con experiencia\r\nDetalles de gran autenticidad e inconfundibles personajes: Incluye 10 minifiguras (Wolverine, Profesor X, Jean Grey, Cíclope, Tormenta, Gambito, Titania, Hombre de Hielo, Bishop y Magneto) y una figura construible de un Centinela\r\nUn gratificante desafío: Los constructores disfrutarán sumerg', 1),
(9, 'Mattel Minecraft Figura de acción a Gran Escala, 12 Pulgadas Posable Steve Toy Coleccionable Inspirado en una película de Minecraft', 0, 'Mattel', 'Llévate a casa las épicas aventuras de Una película de Minecraft con estas cifras de acción grandes auténticamente detalladas.\r\nDiseñadas a escala de 12 pulgadas, las cifras son ideales para recrear escenas favoritas o inventar nuevas.\r\nLos fanáticos pueden encontrar personajes favoritos de Minecraft como Steve y Creeper (cada uno se vende por separado, sujeto a disponibilidad)\r\nA los amantes de Minecraft de todas las edades les encantará este juguete inspirado en una película de Minecraft\r\nAñad', 1),
(10, 'LEGO Marvel Super Heroes - XBox One - Standard Edition', 0, 'WB Games', 'LEGO Marvel Super Heroes offers an original storyline in which Nick Fury calls upon Iron Man, the Hulk, Thor, Spider-Man, Wolverine and other heroes spanning the Marvel Universe to save Earth from such threats as the vengeance of Loki and the hunger of Galactus, Devourer of the Worlds. LEGO and Marvel fans will enjoy classic LEGO video game adventure and humor, while playing as their favorite Marvel characters. Smash, swing and fly in the first LEGO video game featuring more than 100 of your fav', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
