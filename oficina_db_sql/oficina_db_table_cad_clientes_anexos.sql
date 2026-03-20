
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_anexos`
--

CREATE TABLE `cad_clientes_anexos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_anexos`
--

INSERT INTO `cad_clientes_anexos` (`Id`, `Cliente_Id`, `Nome`, `Tipo`, `Url`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'RG_Mariana.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Mariana.pdf', 'Doc de identificação', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 'CNH_Carlos.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNH_Carlos.jpg', 'CNH digitalizada', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 'Orcamento_Luciana.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'https://storage.oficina.com/docs/Orcamento_Luciana.xlsx', 'Orçamento aprovado', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 'Comprovante_Endereco_Eduardo.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Comprovante_Endereco_Eduardo.pdf', 'Endereço atualizado', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 'Contrato_Fernanda.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Fernanda.pdf', 'Contrato corporativo', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 'CNH_Ricardo.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Ricardo.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(7, 14, 'RG_Beatriz.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/RG_Beatriz.jpg', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(8, 15, 'Comprovante_Residencia_Carlos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Comprovante_Residencia_Carlos.pdf', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(9, 16, 'Documento_Estudante_Daniel.png', 'image/png', 'https://storage.oficina.com/docs/Documento_Estudante_Daniel.png', 'Comprovante estudante', '2025-11-13 14:03:00.000000', NULL),
(10, 17, 'OAB_Elisa.pdf', 'application/pdf', 'https://storage.oficina.com/docs/OAB_Elisa.pdf', 'Documento profissional', '2025-11-13 14:03:00.000000', NULL),
(11, 18, 'CNH_Fabio.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNH_Fabio.jpg', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(12, 19, 'RG_Gabriela.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Gabriela.pdf', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(13, 20, 'Comprovante_Residencia_Hugo.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Comprovante_Residencia_Hugo.jpg', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(14, 21, 'CNH_Icaro.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Icaro.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(15, 22, 'CRO_Janaina.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CRO_Janaina.pdf', 'Documento profissional', '2025-11-13 14:03:00.000000', NULL),
(16, 23, 'RG_Katia.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/RG_Katia.jpg', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(17, 24, 'CNH_Lucas.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Lucas.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(18, 25, 'Funcional_Marcia.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Funcional_Marcia.pdf', 'Documento funcional', '2025-11-13 14:03:00.000000', NULL),
(19, 26, 'Comprovante_Residencia_Nairto.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Comprovante_Residencia_Nairto.jpg', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(20, 27, 'RG_Otavio.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Otavio.pdf', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(21, 28, 'Contrato_Social_Transportadora.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Social_Transportadora.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(22, 29, 'CNPJ_Alimentos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Alimentos.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(23, 30, 'Procuracao_Protege.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Procuracao_Protege.pdf', 'Procuração Responsável', '2025-11-13 14:03:00.000000', NULL),
(24, 31, 'CNPJ_ConstruMoura.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_ConstruMoura.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(25, 32, 'Alvara_Escola.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Alvara_Escola.pdf', 'Alvará PJ', '2025-11-13 14:03:00.000000', NULL),
(26, 33, 'Contrato_Social_TI.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Social_TI.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(27, 34, 'CNPJ_Vet.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Vet.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(28, 35, 'Contrato_Restaurante.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Contrato_Restaurante.jpg', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(29, 36, 'CNPJ_Academia.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Academia.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(30, 37, 'Contrato_Jardim.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Jardim.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(31, 38, 'CNPJ_Odonto.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_Odonto.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(32, 39, 'Contrato_Grafica.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Grafica.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(33, 40, 'CNPJ_Padaria.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Padaria.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(34, 41, 'CNPJ_Eletrica.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_Eletrica.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(35, 42, 'Contrato_Motos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Motos.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL);
