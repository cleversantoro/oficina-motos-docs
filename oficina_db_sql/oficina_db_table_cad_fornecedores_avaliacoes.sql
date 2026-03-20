
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_avaliacoes`
--

CREATE TABLE `cad_fornecedores_avaliacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Data_Avaliacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Avaliado_Por` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Categoria` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nota` decimal(4,2) NOT NULL,
  `Comentarios` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
