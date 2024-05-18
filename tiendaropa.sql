-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2024 a las 07:38:00
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
-- Base de datos: `tiendaropa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `confirmar_contraseña` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `nombre`, `apellido`, `contraseña`, `confirmar_contraseña`, `foto`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Sandro Zahid', 'Huamán Mendoza', '$2y$10$VSwFnWRLAc8OtIeetx1JLuWsl.pqzzhCV3TWt5vcvf7mNTFWHQTIi', '', 'assets/img/admin_img/6642f247f3bc45.83925069.jpg', 'admin1@gmail.com', '46ceb92c46b5bcdd7193af9b45d3dda2da02e666644e7e47b87214053ef8c531', '2023-07-28 19:09:04', '2024-05-14 05:21:21'),
(2, 'Admin', '2', '$2y$10$fhArCE0n2luBEJoqTbEVheEbmo8GFmUR47dMJ8.cGvNUlhVTuYcuO', '', 'assets/img/admin_img/default.png', 'admin2@gmail.com', '869678cf063f8c1453249f343c11a3e607170d04c9b4afd38646e8edff9cfa05', '2023-07-30 22:08:58', '2023-08-17 19:33:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `created_at`, `updated_at`, `imagen`) VALUES
(73, 'Calzado', '2023-07-29 06:58:22', '2023-07-29 08:20:37', './assets/img/categoria_img/1690618837_calzado.jpg'),
(74, 'Ropa', '2023-07-29 07:02:42', '2023-07-29 07:02:42', './assets/img/categoria_img/1690614162_ropa.jpg'),
(75, 'Pantalones', '2023-07-29 08:20:52', '2023-07-29 08:20:52', './assets/img/categoria_img/1690618852_pantalones.jpg'),
(76, 'Accesorios', '2023-07-29 08:22:00', '2023-07-29 08:22:00', './assets/img/categoria_img/1690618919_accesorios.jpg'),
(77, 'Poleras', '2023-08-18 07:20:57', '2023-08-18 07:20:57', './assets/img/categoria_img/1692343257_poleras.png'),
(78, 'Gafas', '2023-08-18 07:38:22', '2023-08-18 07:39:19', './assets/img/categoria_img/1692344359_gafas.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `dni` varchar(15) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `contraseña` varchar(100) NOT NULL,
  `confirmar_contraseña` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellido`, `foto`, `dni`, `ciudad`, `direccion`, `telefono`, `edad`, `fecha_nac`, `contraseña`, `confirmar_contraseña`, `email`, `token`, `created_at`, `updated_at`) VALUES
(7, 'Sandro Zahid', 'Huaman Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25f9e794323b453885f5181f1b624d0b', '', 'cliente1@gmail.com', '0626d6e1377e5f161741f39456499d47', '2023-08-17 20:02:29', '2023-09-05 05:07:05'),
(8, 'Kenneth Gilenk', 'Huaman Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', '', 'cliente2@gmail.com', '3643315a6a496fbaa26d125bf827a9be', '2023-08-17 20:29:39', '2023-08-17 20:29:51'),
(9, 'Cliente 3', 'Huaman Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25d55ad283aa400af464c76d713c07ad', '', 'cliente3@gmail.com', '969d53e39138b2e37c2cdc00669a5bcd', '2023-09-05 04:56:18', '2023-09-05 04:56:29'),
(10, 'Neil', 'Chavez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2e44a1feca06346430600ce179df3504', '', 'neiln@gmail.com', '008692ed4e5e3df44be9ec6ee46cd114', '2024-05-14 05:15:30', '2024-05-14 05:15:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupon`
--

DROP TABLE IF EXISTS `cupon`;
CREATE TABLE `cupon` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

DROP TABLE IF EXISTS `marca`;
CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`) VALUES
(51, 'Adidas', './assets/img/marca_img/1690618427_adidas.png', '2023-07-29 06:52:08', '2023-07-29 08:13:47'),
(52, 'Gucci', './assets/img/marca_img/1690618449_gucci.png', '2023-07-29 07:25:35', '2023-07-29 08:14:09'),
(53, 'Nike', './assets/img/marca_img/1690784865_nike.png', '2023-07-31 06:27:45', '2023-07-31 06:27:45'),
(54, 'Versace', './assets/img/marca_img/1690784879_versace.png', '2023-07-31 06:27:59', '2023-07-31 06:27:59'),
(55, 'Puma', './assets/img/marca_img/1690784904_puma.png', '2023-07-31 06:28:24', '2023-07-31 06:28:24'),
(56, 'Hugo Boss', './assets/img/marca_img/1690785052_hugo_boss.png', '2023-07-31 06:30:52', '2023-07-31 06:30:52'),
(57, 'Chanel', './assets/img/marca_img/1691576884_chanel.png', '2023-08-09 10:28:04', '2023-08-09 10:28:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL,      
  `nombre` varchar(100) NOT NULL,           
  `imagenes` text DEFAULT NULL, 
  `stock` int(11) NOT NULL, 
  `precio` decimal(10,2) NOT NULL, 
  `categoria_id` int(11) DEFAULT NULL, 
  `marca_id` int(11) DEFAULT NULL, 
  `descripcion` text DEFAULT NULL,   
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subcategoria_id` int(11) DEFAULT NULL, 
  `tallas_seleccionadas` varchar(50) DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `imagenes`, `stock`, `precio`, `categoria_id`, `marca_id`, `descripcion`, `created_at`, `updated_at`, `subcategoria_id`, `tallas_seleccionadas`) VALUES
(42, 'Zapatillas Nike Blancas', './assets/img/productos_img/Zapatillas_Nike_Blancas', 9, 20.00, 73, 53, 'Descubre el estilo y la comodidad definitivos con las Zapatillas Nike Blancas. Diseñadas para brindarte un look moderno y versátil, estas zapatillas combinan a la perfección con cualquier atuendo. La suave amortiguación Nike asegura una pisada cómoda, mientras que su diseño elegante te permite destacar en cualquier ocasión. Opta por la moda y la funcionalidad en un solo paso con estas zapatillas blancas que se convertirán en tu compañero ideal en el día a día.', '2023-08-01 09:24:16', '2023-08-18 06:52:51', 11, 'calzado, 12, 15, 17'),
(46, 'Polo', './assets/img/productos_img/Polo', 15, 50.00, 74, 51, 'Polo', '2023-08-03 02:28:09', '2023-08-03 14:26:27', 9, NULL),
(50, 'Polera Nets', './assets/img/productos_img/Polera_Nets', 11, 15.00, 77, 51, 'Polera', '2023-08-03 14:05:40', '2023-08-23 15:23:19', 26, ''),
(51, 'Polera Blanca', './assets/img/productos_img/Polera_Blanca', 18, 17.00, 77, 51, 'Polera Blanca', '2023-08-03 14:06:51', '2023-08-18 07:30:49', 26, 'ropa, XL, M, S'),
(54, 'Gorra Negra', './assets/img/productos_img/Gorra_Negra', 4, 15.00, 76, 53, 'Gorra Negra', '2023-08-04 04:50:58', '2023-08-08 02:08:28', 19, NULL),
(55, 'Gucci Model', './assets/img/productos_img/Gucci_Model', 45, 70.00, 76, 52, 'Gucci Model', '2023-08-04 04:51:48', '2023-08-04 04:51:48', 13, NULL),
(56, 'Bufanda Beige', './assets/img/productos_img/Bufanda_Beige', 34, 34.00, 76, 54, 'Bufanda Beige', '2023-08-04 04:52:52', '2023-08-04 04:52:52', 14, NULL),
(57, 'Zapatillas Gucci', './assets/img/productos_img/Zapatillas_Gucci', 15, 20.00, 73, 52, 'Zapatillas Gucci', '2023-08-07 08:31:06', '2023-08-23 22:39:47', 11, 'calzado, 15, 14, 16'),
(75, 'Polo Negro', './assets/img/productos_img/Polo_Negro', 15, 50.00, 74, 51, 'Polo Negro', '2023-08-08 01:44:19', '2023-08-08 02:07:49', 9, NULL),
(76, 'ZAPATILLAS NIKE AIR FORCE', './assets/img/productos_img/ZAPATILLAS_NIKE_AIR_FORCE', 50, 25.00, 73, 53, 'ZAPATILLAS NIKE AIR FORCE', '2023-08-08 01:46:10', '2023-08-08 02:07:25', 11, NULL),
(78, 'Gorra Negra Adidas', './assets/img/productos_img/Gorra_Negra_Adidas', 15, 15.00, 76, 51, 'Gorra Negra', '2023-08-08 01:56:24', '2023-08-08 02:08:41', 19, NULL),
(79, 'Camisa Gucci', './assets/img/productos_img/Camisa_Gucci', 34, 52.00, 74, 52, 'Camisa Gucci', '2023-08-18 05:39:01', '2023-08-19 19:40:20', 10, 'ropa, M, L'),
(81, 'Gafas De Conducción Nocturna', './assets/img/productos_img/Gafas_De_Conducción_Nocturna', 15, 1.80, 78, 51, 'Gafas De Conducción Nocturna, Lentes Mejoradas De Conducción Nocturna, Accesorios De Moda Para Coche, 1 Ud.', '2023-08-18 07:42:13', '2023-08-18 07:42:50', 27, ''),
(82, 'Lentes Balenciaga', './assets/img/productos_img/Lentes_Balenciaga', 15, 125.00, 78, 52, 'Lentes Balenciaga', '2024-05-14 04:43:28', '2024-05-14 04:43:28', 27, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promocion`
--

DROP TABLE IF EXISTS `promocion`;
CREATE TABLE `promocion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria`
--

DROP TABLE IF EXISTS `subcategoria`;
CREATE TABLE `subcategoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategoria`
--

INSERT INTO `subcategoria` (`id`, `nombre`, `categoria_id`) VALUES
(9, 'Polo', 74),
(10, 'Camisas', 74),
(11, 'Zapatillas', 73),
(12, 'Botas', 73),
(13, 'Relojes', 76),
(14, 'Bufandas', 76),
(15, 'Joggers', 75),
(16, 'Buzo', 75),
(18, ' Vaqueros', 75),
(19, 'Gorros', 76),
(26, 'Street', 77),
(27, 'Nocturnas', 78);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendaconfig`
--

DROP TABLE IF EXISTS `tiendaconfig`;
CREATE TABLE `tiendaconfig` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `logonav` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `whatsapp` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `banner1` varchar(255) DEFAULT NULL,
  `banner2` varchar(255) DEFAULT NULL,
  `banner3` varchar(255) DEFAULT NULL,
  `banner4` varchar(255) DEFAULT NULL,
  `dirección` varchar(250) DEFAULT NULL,
  `googlemaps` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiendaconfig`
--

INSERT INTO `tiendaconfig` (`id`, `nombre`, `icon`, `logonav`, `logo`, `numero`, `facebook`, `instagram`, `whatsapp`, `email`, `banner1`, `banner2`, `banner3`, `banner4`, `dirección`, `googlemaps`) VALUES
(1, 'Fendi Galoi', 'icon_64c6b858e2a710.33509115.png', 'logonav_64c6b858e1c4d5.19109184.png', 'logo_64c6b858e24018.21971302.png', '948 816 28', 'https://www.facebook.com/galoiclothing', 'https://www.instagram.com/fendi.galoi.streetwear/', 'https://api.whatsapp.com/send?phone=51964021278&text=Hola%2C%20deseo%20ver%20el%20cat%C3%A1logo%20virtual.%20Soy%20consciente%20de%20que%20se%20ubican%20en%20Pisco%20y%20hacen%20env%C3%ADos%20a%20domicilio%20a%20todo%20el%20Per%C3%BA%F0%9F%93%A6%F0%9F%87%B5%F0%9F%87%AA', 'Fendi@gmail.com', '../assets/img/ecommerce/home/hero-slider/banner1.jpg', '../assets/img/ecommerce/home/hero-slider/banner2.jpg', '../assets/img/ecommerce/home/hero-slider/banner3.jpg', '../assets/img/ecommerce/home/hero-slider/banner4.jpg', '27 Pisco 11601', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1494.4538146070422!2d-76.20434480647666!3d-13.710345169039003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9110658a66e19bfb%3A0x7a1bcc940c5d47cd!2s27%2C%20Pisco%2011601!5e0!3m2!1ses-419!2spe!4v1691412090209!5m2!1ses-419!2spe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `cupon`
--
ALTER TABLE `cupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `fk_producto_subcategoria` (`subcategoria_id`);

--
-- Indices de la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `tiendaconfig`
--
ALTER TABLE `tiendaconfig`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
                      ALTER TABLE `categoria`
                        MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cupon`
--
ALTER TABLE `cupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `promocion`
--
ALTER TABLE `promocion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tiendaconfig`
--
ALTER TABLE `tiendaconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_subcategoria` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria` (`id`),
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`);

--
-- Filtros para la tabla `promocion`
--
ALTER TABLE `promocion`
  ADD CONSTRAINT `promocion_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`);

--
-- Filtros para la tabla `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD CONSTRAINT `subcategoria_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
