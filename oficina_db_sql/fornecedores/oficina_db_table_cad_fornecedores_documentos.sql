
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_documentos`
--

CREATE TABLE `cad_fornecedores_documentos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Orgao_Expedidor` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arquivo_Url` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
