
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_marcas`
--

CREATE TABLE `cad_veiculos_marcas` (
  `Id` bigint NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos_marcas`
--

INSERT INTO `cad_veiculos_marcas` (`Id`, `Nome`, `Pais`, `Created_At`, `Updated_At`) VALUES
(1, 'Toyota', 'Japão', '2025-10-14 00:15:26.000000', NULL),
(2, 'Chevrolet', 'Estados Unidos', '2025-10-14 00:15:26.000000', NULL),
(3, 'Volkswagen', 'Alemanha', '2025-10-14 00:15:26.000000', NULL),
(4, 'Fiat', 'Itália', '2025-10-14 00:15:26.000000', NULL),
(5, 'Ford', 'Estados Unidos', '2025-10-14 00:15:26.000000', NULL),
(6, 'Honda', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(7, 'Hyundai', 'Coreia do Sul', '2025-11-13 12:15:00.000000', NULL),
(8, 'Nissan', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(9, 'Renault', 'França', '2025-11-13 12:15:00.000000', NULL),
(10, 'Peugeot', 'França', '2025-11-13 12:15:00.000000', NULL),
(11, 'Citroën', 'França', '2025-11-13 12:15:00.000000', NULL),
(12, 'Mercedes-Benz', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(13, 'BMW', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(14, 'Audi', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(15, 'Kia', 'Coreia do Sul', '2025-11-13 12:15:00.000000', NULL),
(16, 'Jeep', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(17, 'Land Rover', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(18, 'Volvo', 'Suécia', '2025-11-13 12:15:00.000000', NULL),
(19, 'Mitsubishi', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(20, 'Subaru', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(21, 'Mazda', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(22, 'Lexus', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(23, 'Porsche', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(24, 'Jaguar', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(25, 'Mini', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(26, 'Chery', 'China', '2025-11-13 12:15:00.000000', NULL),
(27, 'JAC Motors', 'China', '2025-11-13 12:15:00.000000', NULL),
(28, 'RAM', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(29, 'Dodge', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(30, 'Chrysler', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(31, 'Suzuki', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(32, 'BYD', 'China', '2025-11-13 12:15:00.000000', NULL),
(33, 'GWM', 'China', '2025-11-13 12:15:00.000000', NULL),
(34, 'Tesla', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(35, 'Iveco', 'Itália', '2025-11-13 12:15:00.000000', NULL);
