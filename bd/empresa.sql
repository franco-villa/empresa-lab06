-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2024 a las 17:16:50
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
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_06_08_134300_create_persona_table', 1),
(2, '2024_06_08_151147_add_c_per_sexo_to_empresa_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nPerCodigo` bigint(20) UNSIGNED NOT NULL,
  `cPerApellido` char(50) NOT NULL,
  `cPerNombre` char(50) NOT NULL,
  `cPerDireccion` varchar(100) NOT NULL,
  `dPerFecNac` date NOT NULL,
  `nPerEdad` int(11) NOT NULL,
  `cPerSexo` char(15) NOT NULL DEFAULT 'Masculino',
  `nPerSueldo` decimal(6,2) NOT NULL,
  `cPerRnd` varchar(50) NOT NULL,
  `nPerEstado` char(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nPerCodigo`, `cPerApellido`, `cPerNombre`, `cPerDireccion`, `dPerFecNac`, `nPerEdad`, `cPerSexo`, `nPerSueldo`, `cPerRnd`, `nPerEstado`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Martinez', 'Luis', 'Enriquez Segoviano 241', '2010-06-02', 25, 'Masculino', 1500.00, 'P001', '1', '2024-06-07 15:05:42', NULL, NULL),
(2, 'Rodriguez', 'Jose', 'Enriquez Segonviano 237', '2024-06-03', 20, 'Masculino', 1200.00, 'P002', '1', '2024-06-07 15:05:59', NULL, NULL),
(3, 'Torres', 'Manuel', 'Enriquez Segoviano 147', '2024-06-03', 30, 'Masculino', 1800.00, 'P003', '1', '2024-06-07 15:07:06', NULL, NULL),
(4, 'Gonzales', 'Nicolas', 'Enriquez Segoviano 447', '2014-06-24', 35, 'Masculino', 2000.00, 'P004', '1', '2024-06-07 15:07:15', NULL, NULL),
(5, 'Tapia', 'Daniel', 'Enriquez Segoviano 742', '2015-06-04', 40, 'Masculino', 4000.00, 'P005', '1', '2024-06-07 15:07:15', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`nPerCodigo`),
  ADD KEY `persona_cperapellido_index` (`cPerApellido`),
  ADD KEY `persona_cpernombre_index` (`cPerNombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `nPerCodigo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
