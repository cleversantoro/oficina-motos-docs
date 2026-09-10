
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_certificacoes`
--

CREATE TABLE `cad_fornecedores_certificacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Titulo` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Instituicao` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Codigo_Certificacao` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Escopo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
