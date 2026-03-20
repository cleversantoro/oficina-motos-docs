
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades_rel`
--

CREATE TABLE `cad_mecanicos_especialidades_rel` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint NOT NULL,
  `Nivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pleno',
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Anotacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_especialidades_rel`
--

INSERT INTO `cad_mecanicos_especialidades_rel` (`Id`, `Mecanico_Id`, `Especialidade_Id`, `Nivel`, `Principal`, `Anotacoes`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 'Senior', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(2, 2, 2, 'Pleno', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(3, 3, 3, 'Senior', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(4, 1, 4, 'Pleno', 0, 'Suporte secundario em transmissao', '2025-10-14 02:17:24.338824', NULL),
(5, 4, 5, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(6, 5, 6, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(7, 6, 7, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(8, 7, 8, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(9, 8, 9, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(10, 9, 10, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(11, 10, 11, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(12, 11, 12, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(13, 12, 13, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(14, 13, 14, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(15, 14, 15, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(16, 15, 16, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(17, 16, 17, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(18, 17, 18, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(19, 18, 19, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(20, 19, 20, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(21, 20, 21, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(22, 21, 22, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(23, 22, 23, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(24, 23, 24, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(25, 24, 25, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(26, 25, 26, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(27, 26, 27, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(28, 27, 28, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(29, 28, 29, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(30, 29, 30, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(31, 30, 31, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(32, 31, 32, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(33, 32, 33, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(34, 33, 34, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL);
