
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores`
--

CREATE TABLE `cad_fornecedores` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Razao_Social` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome_Fantasia` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Inscricao_Estadual` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Inscricao_Municipal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Segmento_Principal_Id` bigint DEFAULT NULL,
  `Website` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefone_Principal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ATIVO',
  `Condicao_Pagamento_Padrao` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prazo_Entrega_Medio` int DEFAULT NULL,
  `Nota_Media` decimal(4,2) DEFAULT NULL,
  `Observacoes` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prazo_Garantia_Padrao` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Termos_Negociados` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Atendimento_Personalizado` tinyint(1) NOT NULL DEFAULT '0',
  `Retirada_Local` tinyint(1) NOT NULL DEFAULT '0',
  `Rating_Logistica` decimal(4,2) DEFAULT NULL,
  `Rating_Qualidade` decimal(4,2) DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
