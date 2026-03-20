
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_representantes`
--

CREATE TABLE `cad_fornecedores_representantes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cargo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Celular` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Preferencia_Contato` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
