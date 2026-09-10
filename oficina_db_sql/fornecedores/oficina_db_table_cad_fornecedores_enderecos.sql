
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_enderecos`
--

CREATE TABLE `cad_fornecedores_enderecos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cep` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Logradouro` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complemento` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
