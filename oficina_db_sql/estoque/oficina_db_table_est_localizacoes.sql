
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_localizacoes`
--

CREATE TABLE `est_localizacoes` (
  `Id` bigint NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `corredor` varchar(20) DEFAULT NULL,
  `prateleira` varchar(20) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_localizacoes`
--

INSERT INTO `est_localizacoes` (`Id`, `descricao`, `corredor`, `prateleira`, `created_at`, `updated_at`) VALUES
(1, 'Estante principal', 'A', '1', '2025-11-06 23:55:09.297', NULL),
(2, 'Estante lateral', 'A', '2', '2025-11-06 23:55:09.297', NULL),
(3, 'Galpão peças pesadas', 'B', '3', '2025-11-06 23:55:09.297', NULL),
(4, 'Mezanino elétricos', 'C', '1', '2025-11-06 23:55:09.297', NULL),
(5, 'Área pneus/suspensão', 'D', '2', '2025-11-06 23:55:09.297', NULL),
(6, 'Estante Fluidos', 'A', '3', '2025-11-13 10:10:00.700', NULL),
(7, 'Estante Baterias', 'A', '4', '2025-11-13 10:10:00.700', NULL),
(8, 'Ganchos Correias', 'B', '1', '2025-11-13 10:10:00.700', NULL),
(9, 'Estante Injeção', 'B', '2', '2025-11-13 10:10:00.700', NULL),
(10, 'Prateleira Iluminação', 'C', '2', '2025-11-13 10:10:00.700', NULL),
(11, 'Prateleira Arrefecimento', 'C', '3', '2025-11-13 10:10:00.700', NULL),
(12, 'Caixa Palhetas', 'C', '4', '2025-11-13 10:10:00.700', NULL),
(13, 'Área Escapamentos', 'D', '1', '2025-11-13 10:10:00.700', NULL),
(14, 'Galpão Lataria', 'E', '1', '2025-11-13 10:10:00.700', NULL),
(15, 'Prateleira Acabamento', 'E', '2', '2025-11-13 10:10:00.700', NULL),
(16, 'Armário Ferramentas', 'F', '1', '2025-11-13 10:10:00.700', NULL),
(17, 'Área Pneus', 'G', '1', '2025-11-13 10:10:00.700', NULL),
(18, 'Expositor Rodas', 'G', '2', '2025-11-13 10:10:00.700', NULL),
(19, 'Armário Segurança', 'H', '1', '2025-11-13 10:10:00.700', NULL),
(20, 'Gôndola Acessórios', 'H', '2', '2025-11-13 10:10:00.700', NULL),
(21, 'Estante Químicos', 'I', '1', '2025-11-13 10:10:00.700', NULL),
(22, 'Caixa Mangueiras', 'I', '2', '2025-11-13 10:10:00.700', NULL),
(23, 'Gaveteiro Juntas', 'J', '1', '2025-11-13 10:10:00.700', NULL),
(24, 'Gaveteiro Rolamentos', 'J', '2', '2025-11-13 10:10:00.700', NULL),
(25, 'Caixa Fixação', 'J', '3', '2025-11-13 10:10:00.700', NULL),
(26, 'Sala Módulos (Climatizada)', 'K', '1', '2025-11-13 10:10:00.700', NULL),
(27, 'Estante Performance', 'K', '2', '2025-11-13 10:10:00.700', NULL),
(28, 'Prateleira Direção', 'L', '1', '2025-11-13 10:10:00.700', NULL),
(29, 'Estante Ar Condicionado', 'L', '2', '2025-11-13 10:10:00.700', NULL),
(30, 'Galpão Motores', 'M', '1', '2025-11-13 10:10:00.700', NULL),
(31, 'Estante Vidros e Travas', 'M', '2', '2025-11-13 10:10:00.700', NULL),
(32, 'Caixa Borrachas', 'N', '1', '2025-11-13 10:10:00.700', NULL),
(33, 'Área Carga/Engates', 'N', '2', '2025-11-13 10:10:00.700', NULL),
(34, 'Armário Oficina', 'P', '1', '2025-11-13 10:10:00.700', NULL),
(35, 'Estante Admissão', 'P', '2', '2025-11-13 10:10:00.700', NULL);
