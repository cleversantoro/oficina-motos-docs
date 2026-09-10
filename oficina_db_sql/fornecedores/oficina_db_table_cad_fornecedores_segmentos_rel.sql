
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos_rel`
--

CREATE TABLE `cad_fornecedores_segmentos_rel` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Segmento_Id` bigint NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
