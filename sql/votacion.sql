-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 18:23:14
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `votacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `ID` int(11) NOT NULL,
  `Candidato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`ID`, `Candidato`) VALUES
(1, 'Juan Martínez'),
(2, 'María Rodríguez'),
(3, 'Pedro Sánchez');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `como_supo`
--

CREATE TABLE `como_supo` (
  `ID` int(11) NOT NULL,
  `Opcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `como_supo`
--

INSERT INTO `como_supo` (`ID`, `Opcion`) VALUES
(1, 'Web'),
(2, 'TV'),
(3, 'Redes Sociales'),
(4, 'Amigo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `ID` int(2) NOT NULL,
  `Comuna` varchar(50) NOT NULL,
  `region_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`ID`, `Comuna`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'Putre', 1),
(4, 'General Lagos', 1),
(5, 'Iquique', 2),
(6, 'Alto Hospicio', 2),
(7, 'Pozo Almonte', 2),
(8, 'Camiña', 2),
(9, 'Colchane', 2),
(10, 'Huara', 2),
(11, 'Pica', 2),
(12, 'Antofagasta', 3),
(13, 'Mejillones', 3),
(14, 'Sierra Gorda', 3),
(15, 'Taltal', 3),
(16, 'Calama', 3),
(17, 'Ollagüe', 3),
(18, 'San Pedro de Atacama', 3),
(19, 'Tocopilla', 3),
(20, 'María Elena', 3),
(21, 'Copiapó', 4),
(22, 'Caldera', 4),
(23, 'Tierra Amarilla', 4),
(24, 'Chañaral', 4),
(25, 'Diego de Almagro', 4),
(26, 'Vallenar', 4),
(27, 'Alto del Carmen', 4),
(28, 'Freirina', 4),
(29, 'Huasco', 4),
(30, 'La Serena', 5),
(31, 'Coquimbo', 5),
(32, 'Andacollo', 5),
(33, 'La Higuera', 5),
(34, 'Paihuano', 5),
(35, 'Vicuña', 5),
(36, 'Illapel', 5),
(37, 'Canela', 5),
(38, 'Los Vilos', 5),
(39, 'Salamanca', 5),
(40, 'Ovalle', 5),
(41, 'Combarbalá', 5),
(42, 'Monte Patria', 5),
(43, 'Punitaqui', 5),
(44, 'Río Hurtado', 5),
(45, 'Valparaíso', 6),
(46, 'Casablanca', 6),
(47, 'Concón', 6),
(48, 'Juan Fernández', 6),
(49, 'Puchuncaví', 6),
(50, 'Quintero', 6),
(51, 'Viña del Mar', 6),
(52, 'Isla de Pascua', 6),
(53, 'Los Andes', 6),
(54, 'Calle Larga', 6),
(55, 'Rinconada', 6),
(56, 'San Esteban', 6),
(57, 'La Ligua', 6),
(58, 'Cabildo', 6),
(59, 'Papudo', 6),
(60, 'Petorca', 6),
(61, 'Zapallar', 6),
(62, 'Quillota', 6),
(63, 'La Calera', 6),
(64, 'Hijuelas', 6),
(65, 'La Cruz', 6),
(66, 'Nogales', 6),
(67, 'San Antonio', 6),
(68, 'Algarrobo', 6),
(69, 'Cartagena', 6),
(70, 'El Quisco', 6),
(71, 'El Tabo', 6),
(72, 'Santo Domingo', 6),
(73, 'San Felipe', 6),
(74, 'Catemu', 6),
(75, 'Llay-Llay', 6),
(76, 'Rancagua', 8),
(77, 'Codegua', 8),
(78, 'Coinco', 8),
(79, 'Coltauco', 8),
(80, 'Doñihue', 8),
(81, 'Graneros', 8),
(82, 'Las Cabras', 8),
(83, 'Machalí', 8),
(84, 'Malloa', 8),
(85, 'Mostazal', 8),
(86, 'Olivar', 8),
(87, 'Peumo', 8),
(88, 'Pichidegua', 8),
(89, 'Quinta de Tilcoco', 8),
(90, 'Rengo', 8),
(91, 'Requínoa', 8),
(92, 'San Vicente', 8),
(93, 'Pichilemu', 8),
(94, 'La Estrella', 8),
(95, 'Litueche', 8),
(96, 'Marchihue', 8),
(97, 'Navidad', 8),
(98, 'Paredones', 8),
(99, 'San Fernando', 8),
(100, 'Chépica', 8),
(101, 'Chimbarongo', 8),
(102, 'Lolol', 8),
(103, 'Nancagua', 8),
(104, 'Palmilla', 8),
(105, 'Peralillo', 8),
(106, 'Placilla', 8),
(107, 'Pumanque', 8),
(108, 'Santa Cruz', 8),
(109, 'Talca', 9),
(110, 'Constitución', 9),
(111, 'Curepto', 9),
(112, 'Empedrado', 9),
(113, 'Maule', 9),
(114, 'Pelarco', 9),
(115, 'Pencahue', 9),
(116, 'Río Claro', 9),
(117, 'San Clemente', 9),
(118, 'San Rafael', 9),
(119, 'Cauquenes', 9),
(120, 'Chanco', 9),
(121, 'Pelluhue', 9),
(122, 'Curicó', 9),
(123, 'Hualañé', 9),
(124, 'Licantén', 9),
(125, 'Molina', 9),
(126, 'Rauco', 9),
(127, 'Romeral', 9),
(128, 'Sagrada Familia', 9),
(129, 'Teno', 9),
(130, 'Vichuquén', 9),
(131, 'Linares', 9),
(132, 'Colbún', 9),
(133, 'Longaví', 9),
(134, 'Parral', 9),
(135, 'Retiro', 9),
(136, 'San Javier', 9),
(137, 'Villa Alegre', 9),
(138, 'Yerbas Buenas', 9),
(139, 'Chillán', 10),
(140, 'Bulnes', 10),
(141, 'Chillán Viejo', 10),
(142, 'El Carmen', 10),
(143, 'Pemuco', 10),
(144, 'Pinto', 10),
(145, 'Quillón', 10),
(146, 'San Ignacio', 10),
(147, 'Yungay', 10),
(148, 'Quirihue', 10),
(149, 'Cobquecura', 10),
(150, 'Coelemu', 10),
(151, 'Ninhue', 10),
(152, 'Portezuelo', 10),
(153, 'Ránquil', 10),
(154, 'Treguaco', 10),
(155, 'San Carlos', 10),
(156, 'Coihueco', 10),
(157, 'Ñiquén', 10),
(158, 'San Fabián', 10),
(159, 'San Nicolás', 10),
(160, 'Concepción', 11),
(161, 'Coronel', 11),
(162, 'Chiguayante', 11),
(163, 'Florida', 11),
(164, 'Hualqui', 11),
(165, 'Lota', 11),
(166, 'Penco', 11),
(167, 'San Pedro de La Paz', 11),
(168, 'Santa Juana', 11),
(169, 'Talcahuano', 11),
(170, 'Tomé', 11),
(171, 'Hualpén', 11),
(172, 'Lebu', 11),
(173, 'Arauco', 11),
(174, 'Cañete', 11),
(175, 'Contulmo', 11),
(176, 'Curanilahue', 11),
(177, 'Los Álamos', 11),
(178, 'Tirúa', 11),
(179, 'Los Ángeles', 11),
(180, 'Antuco', 11),
(181, 'Cabrero', 11),
(182, 'Laja', 11),
(183, 'Mulchén', 11),
(184, 'Nacimiento', 11),
(185, 'Negrete', 11),
(186, 'Quilaco', 11),
(187, 'Quilleco', 11),
(188, 'San Rosendo', 11),
(189, 'Santa Bárbara', 11),
(190, 'Tucapel', 11),
(191, 'Yumbel', 11),
(192, 'Alto Biobío', 11),
(193, 'Temuco', 12),
(194, 'Carahue', 12),
(195, 'Cunco', 12),
(196, 'Curarrehue', 12),
(197, 'Freire', 12),
(198, 'Galvarino', 12),
(199, 'Gorbea', 12),
(200, 'Lautaro', 12),
(201, 'Loncoche', 12),
(202, 'Melipeuco', 12),
(203, 'Nueva Imperial', 12),
(204, 'Padre Las Casas', 12),
(205, 'Perquenco', 12),
(206, 'Pitrufquén', 12),
(207, 'Pucón', 12),
(208, 'Saavedra', 12),
(209, 'Teodoro Schmidt', 12),
(210, 'Toltén', 12),
(211, 'Vilcún', 12),
(212, 'Villarrica', 12),
(213, 'Cholchol', 12),
(214, 'Angol', 12),
(215, 'Collipulli', 12),
(216, 'Curacautín', 12),
(217, 'Ercilla', 12),
(218, 'Lonquimay', 12),
(219, 'Los Sauces', 12),
(220, 'Lumaco', 12),
(221, 'Purén', 12),
(222, 'Renaico', 12),
(223, 'Traiguén', 12),
(224, 'Victoria', 12),
(225, 'Valdivia', 13),
(226, 'Corral', 13),
(227, 'Lanco', 13),
(228, 'Los Lagos', 13),
(229, 'Máfil', 13),
(230, 'Mariquina', 13),
(231, 'Paillaco', 13),
(232, 'Panguipulli', 13),
(233, 'La Unión', 13),
(234, 'Futrono', 13),
(235, 'Lago Ranco', 13),
(236, 'Río Bueno', 13),
(237, 'Puerto Montt', 14),
(238, 'Calbuco', 14),
(239, 'Cochamó', 14),
(240, 'Fresia', 14),
(241, 'Frutillar', 14),
(242, 'Los Muermos', 14),
(243, 'Llanquihue', 14),
(244, 'Maullín', 14),
(245, 'Puerto Varas', 14),
(246, 'Castro', 14),
(247, 'Ancud', 14),
(248, 'Chonchi', 14),
(249, 'Curaco de Vélez', 14),
(250, 'Dalcahue', 14),
(251, 'Puqueldón', 14),
(252, 'Queilén', 14),
(253, 'Quellón', 14),
(254, 'Quemchi', 14),
(255, 'Quinchao', 14),
(256, 'Osorno', 14),
(257, 'Puerto Octay', 14),
(258, 'Purranque', 14),
(259, 'Puyehue', 14),
(260, 'Río Negro', 14),
(261, 'San Juan de la Costa', 14),
(262, 'San Pablo', 14),
(263, 'Chaitén', 14),
(264, 'Futaleufú', 14),
(265, 'Hualaihué', 14),
(266, 'Palena', 14),
(267, 'Coyhaique', 15),
(268, 'Lago Verde', 15),
(269, 'Aysén', 15),
(270, 'Cisnes', 15),
(271, 'Guaitecas', 15),
(272, 'Cochrane', 15),
(273, 'O\'Higgins', 15),
(274, 'Tortel', 15),
(275, 'Chile Chico', 15),
(276, 'Río Ibáñez', 15),
(277, 'Punta Arenas', 16),
(278, 'Laguna Blanca', 16),
(279, 'Río Verde', 16),
(280, 'San Gregorio', 16),
(281, 'Cabo de Hornos', 16),
(282, 'Antártica', 16),
(283, 'Porvenir', 16),
(284, 'Primavera', 16),
(285, 'Timaukel', 16),
(286, 'Natales', 16),
(287, 'Torres del Paine', 16),
(288, 'Santiago', 7),
(289, 'Cerrillos', 7),
(290, 'Cerro Navia', 7),
(291, 'Conchalí', 7),
(292, 'El Bosque', 7),
(293, 'Estación Central', 7),
(294, 'Huechuraba', 7),
(295, 'Independencia', 7),
(296, 'La Cisterna', 7),
(297, 'La Florida', 7),
(298, 'La Granja', 7),
(299, 'La Pintana', 7),
(300, 'La Reina', 7),
(301, 'Las Condes', 7),
(302, 'Lo Barnechea', 7),
(303, 'Lo Espejo', 7),
(304, 'Lo Prado', 7),
(305, 'Macul', 7),
(306, 'Maipú', 7),
(307, 'Ñuñoa', 7),
(308, 'Pedro Aguirre Cerda', 7),
(309, 'Peñalolén', 7),
(310, 'Providencia', 7),
(311, 'Pudahuel', 7),
(312, 'Quilicura', 7),
(313, 'Quinta Normal', 7),
(314, 'Recoleta', 7),
(315, 'Renca', 7),
(316, 'San Joaquín', 7),
(317, 'San Miguel', 7),
(318, 'San Ramón', 7),
(319, 'Vitacura', 7),
(320, 'Puente Alto', 7),
(321, 'Pirque', 7),
(322, 'San José de Maipo', 7),
(323, 'Colina', 7),
(324, 'Lampa', 7),
(325, 'Til Til', 7),
(326, 'San Bernardo', 7),
(327, 'Buin', 7),
(328, 'Calera de Tango', 7),
(329, 'Paine', 7),
(330, 'Melipilla', 7),
(331, 'Alhué', 7),
(332, 'Curacaví', 7),
(333, 'María Pinto', 7),
(334, 'San Pedro', 7),
(335, 'Talagante', 7),
(336, 'El Monte', 7),
(337, 'Isla de Maipo', 7),
(338, 'Padre Hurtado', 7),
(339, 'Peñaflor', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `ID` int(2) NOT NULL,
  `Region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`ID`, `Region`) VALUES
(1, 'Región de Arica y Parinacota'),
(2, 'Región de Tarapacá'),
(3, 'Región de Antofagasta'),
(4, 'Región de Atacama'),
(5, 'Región de Coquimbo'),
(6, 'Región de Valparaíso'),
(7, 'Región Metropolitana de Santiago'),
(8, 'Región del Libertador General Bernardo O’Higgins'),
(9, 'Región del Maule'),
(10, 'Región del Ñuble'),
(11, 'Región del Biobío'),
(12, 'Región de La Araucanía'),
(13, 'Región de Los Ríos'),
(14, 'Región de Los Lagos'),
(15, 'Región de Aysén del General Carlos Ibáñez del Camp'),
(16, 'Región de Magallanes y la Antártica Chilena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votos`
--

CREATE TABLE `votos` (
  `ID` int(11) NOT NULL,
  `Nombre_Apellido` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `email` varchar(120) NOT NULL,
  `comuna_id` int(11) NOT NULL,
  `candidato` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `votos`
--

INSERT INTO `votos` (`ID`, `Nombre_Apellido`, `alias`, `rut`, `email`, `comuna_id`, `candidato`) VALUES
(1, 'Carlos Lopez', '1234a', '11.111.111-1', 'aaa@aaa.com', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto_como_supo`
--

CREATE TABLE `voto_como_supo` (
  `ID` int(11) NOT NULL,
  `voto_id` int(11) NOT NULL,
  `como_supo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `voto_como_supo`
--

INSERT INTO `voto_como_supo` (`ID`, `voto_id`, `como_supo_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `como_supo`
--
ALTER TABLE `como_supo`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `comunas_ibfk_1` (`region_id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `votos`
--
ALTER TABLE `votos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `comuna_id` (`comuna_id`);

--
-- Indices de la tabla `voto_como_supo`
--
ALTER TABLE `voto_como_supo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `voto_id` (`voto_id`),
  ADD KEY `como_supo_id` (`como_supo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT de la tabla `votos`
--
ALTER TABLE `votos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `voto_como_supo`
--
ALTER TABLE `voto_como_supo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`ID`);

--
-- Filtros para la tabla `votos`
--
ALTER TABLE `votos`
  ADD CONSTRAINT `votos_ibfk_1` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`ID`);

--
-- Filtros para la tabla `voto_como_supo`
--
ALTER TABLE `voto_como_supo`
  ADD CONSTRAINT `voto_como_supo_ibfk_1` FOREIGN KEY (`voto_id`) REFERENCES `votos` (`ID`),
  ADD CONSTRAINT `voto_como_supo_ibfk_2` FOREIGN KEY (`como_supo_id`) REFERENCES `como_supo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
