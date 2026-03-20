
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_lancamentos`
--

CREATE TABLE `fin_lancamentos` (
  `Id` bigint NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `data_lancamento` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `referencia` varchar(100) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_lancamentos`
--

INSERT INTO `fin_lancamentos` (`Id`, `tipo`, `descricao`, `valor`, `data_lancamento`, `referencia`, `observacao`, `created_at`, `updated_at`) VALUES
(9401, 'ENTRADA', 'Recebimento OS #10001', 250.00, '2025-10-31 02:00:02.000', 'OS10001', 'Pagamento concluído', '2025-11-08 02:00:02.780', NULL),
(9402, 'SAIDA', 'Compra filtros Bosch', 580.00, '2025-11-03 02:00:02.000', 'NF12345', 'Fornecedor 301', '2025-11-08 02:00:02.780', NULL),
(9403, 'ENTRADA', 'Recebimento OS #10003', 320.00, '2025-10-22 02:00:02.000', 'OS10003', 'Serviço concluído', '2025-11-08 02:00:02.780', NULL),
(9404, 'SAIDA', 'Compra amortecedores Monroe', 1396.00, '2025-11-05 02:00:02.000', 'NF12450', 'Pago cartão crédito', '2025-11-08 02:00:02.780', NULL),
(9405, 'ENTRADA', 'Recebimento OS #10004', 160.00, '2025-10-25 02:00:02.000', 'OS10004', 'Recebido via cartão crédito', '2025-11-08 02:00:02.780', NULL),
(9406, 'ENTRADA', 'Recebimento OS #10006 (Onix)', 280.00, '2025-11-09 00:00:00.000', 'OS10006', 'Cliente 206', '2025-11-13 14:14:00.005', NULL),
(9407, 'ENTRADA', 'Recebimento OS #10010 (Troca Óleo)', 299.60, '2025-11-10 00:00:00.000', 'OS10010', 'Cliente 210', '2025-11-13 14:14:00.005', NULL),
(9408, 'ENTRADA', 'Recebimento OS #10011 (Bateria)', 460.00, '2025-11-11 00:00:00.000', 'OS10011', 'Cliente 211', '2025-11-13 14:14:00.005', NULL),
(9409, 'ENTRADA', 'Recebimento OS #10012 (Lâmpada)', 95.00, '2025-11-11 00:00:00.000', 'OS10012', 'Cliente 212', '2025-11-13 14:14:00.005', NULL),
(9410, 'ENTRADA', 'Recebimento OS #10014 (Filtro Cabine)', 89.90, '2025-11-11 00:00:00.000', 'OS10014', 'Cliente 214', '2025-11-13 14:14:00.005', NULL),
(9411, 'ENTRADA', 'Recebimento OS #10017 (Homocinética)', 279.90, '2025-11-12 00:00:00.000', 'OS10017', 'Cliente 217', '2025-11-13 14:14:00.005', NULL),
(9412, 'ENTRADA', 'Recebimento OS #10018 (Fluido Freio)', 82.50, '2025-11-12 00:00:00.000', 'OS10018', 'Cliente 218', '2025-11-13 14:14:00.005', NULL),
(9413, 'ENTRADA', 'Recebimento OS #10020 (Câmbio ATF)', 575.00, '2025-11-12 00:00:00.000', 'OS10020', 'Cliente 220', '2025-11-13 14:14:00.005', NULL),
(9414, 'ENTRADA', 'Recebimento OS #10021 (Palheta)', 55.00, '2025-11-12 00:00:00.000', 'OS10021', 'Cliente 221', '2025-11-13 14:14:00.005', NULL),
(9415, 'ENTRADA', 'Recebimento OS #10023 (Freio Hilux)', 379.90, '2025-11-13 00:00:00.000', 'OS10023', 'Cliente 223', '2025-11-13 14:14:00.005', NULL),
(9416, 'ENTRADA', 'Recebimento OS #10026 (Bateria Heliar)', 569.00, '2025-11-13 00:00:00.000', 'OS10026', 'Cliente 226', '2025-11-13 14:14:00.005', NULL),
(9417, 'ENTRADA', 'Recebimento OS #10027 (Lâmpada H7)', 130.00, '2025-11-13 00:00:00.000', 'OS10027', 'Cliente 227', '2025-11-13 14:14:00.005', NULL),
(9418, 'ENTRADA', 'Recebimento OS #10029 (Filtro Gol G5)', 65.00, '2025-11-13 00:00:00.000', 'OS10029', 'Cliente 229', '2025-11-13 14:14:00.005', NULL),
(9419, 'ENTRADA', 'Recebimento OS #10030 (Aditivo)', 144.00, '2025-11-13 00:00:00.000', 'OS10030', 'Cliente 230', '2025-11-13 14:14:00.005', NULL),
(9420, 'ENTRADA', 'Recebimento OS #10034 (Batente Ka)', 390.00, '2025-11-13 00:00:00.000', 'OS10034', 'Cliente 234', '2025-11-13 14:14:00.005', NULL),
(9421, 'SAIDA', 'Pagamento Lubrificantes', 1200.00, '2025-11-13 00:00:00.000', 'CP9206', 'Fornecedor 306', '2025-11-13 14:14:00.005', NULL),
(9422, 'SAIDA', 'Pagamento Pneus', 4500.00, '2025-11-13 00:00:00.000', 'CP9207', 'Fornecedor 307', '2025-11-13 14:14:00.005', NULL),
(9423, 'SAIDA', 'Pagamento Alarmes', 950.00, '2025-11-13 00:00:00.000', 'CP9208', 'Fornecedor 308', '2025-11-13 14:14:00.005', NULL),
(9424, 'SAIDA', 'Pagamento Aditivos', 300.00, '2025-11-10 00:00:00.000', 'CP9209', 'Fornecedor 309', '2025-11-13 14:14:00.005', NULL),
(9425, 'SAIDA', 'Pagamento Scanner (1/3)', 1066.67, '2025-11-13 00:00:00.000', 'CP9210', 'Fornecedor 310', '2025-11-13 14:14:00.005', NULL),
(9426, 'SAIDA', 'Pagamento Lâmpadas', 780.00, '2025-11-12 00:00:00.000', 'CP9211', 'Fornecedor 311', '2025-11-13 14:14:00.005', NULL),
(9427, 'SAIDA', 'Pagamento Baterias', 2100.00, '2025-11-13 00:00:00.000', 'CP9212', 'Fornecedor 312', '2025-11-13 14:14:00.005', NULL),
(9428, 'SAIDA', 'Pagamento Peças 4x4', 1100.00, '2025-11-13 00:00:00.000', 'CP9213', 'Fornecedor 313', '2025-11-13 14:14:00.005', NULL),
(9429, 'SAIDA', 'Pagamento Palhetas', 450.00, '2025-11-13 00:00:00.000', 'CP9214', 'Fornecedor 314', '2025-11-13 14:14:00.005', NULL),
(9430, 'SAIDA', 'Pagamento Juntas', 320.00, '2025-11-11 00:00:00.000', 'CP9215', 'Fornecedor 315', '2025-11-13 14:14:00.005', NULL),
(9431, 'SAIDA', 'Pagamento Peças Asiáticas', 1900.00, '2025-11-13 00:00:00.000', 'CP9216', 'Fornecedor 316', '2025-11-13 14:14:00.005', NULL),
(9432, 'SAIDA', 'Pagamento Linha Diesel', 3800.00, '2025-11-13 00:00:00.000', 'CP9217', 'Fornecedor 317', '2025-11-13 14:14:00.005', NULL),
(9433, 'SAIDA', 'Pagamento Radiadores', 850.00, '2025-11-13 00:00:00.000', 'CP9218', 'Fornecedor 318', '2025-11-13 14:14:00.005', NULL),
(9434, 'SAIDA', 'Pagamento Óleo Câmbio AT', 1300.00, '2025-11-13 00:00:00.000', 'CP9219', 'Fornecedor 319', '2025-11-13 14:14:00.005', NULL),
(9435, 'SAIDA', 'Pagamento Produtos Estética', 600.00, '2025-11-13 00:00:00.000', 'CP9220', 'Fornecedor 320', '2025-11-13 14:14:00.005', NULL);
