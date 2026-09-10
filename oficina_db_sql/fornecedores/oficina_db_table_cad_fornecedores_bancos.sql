
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_bancos`
--

CREATE TABLE `cad_fornecedores_bancos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Banco` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Agencia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Conta` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Digito` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Conta` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pix_Chave` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
