
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos`
--

CREATE TABLE `cad_fornecedores_segmentos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
