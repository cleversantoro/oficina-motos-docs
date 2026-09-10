
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_receber`
--

CREATE TABLE `fin_contas_receber` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `vencimento` datetime(3) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_recebimento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_contas_receber`
--

INSERT INTO `fin_contas_receber` (`Id`, `cliente_id`, `descricao`, `valor`, `vencimento`, `status`, `data_recebimento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9301, 201, 'Ordem #10001 - Troca de óleo', 250.00, '2025-10-31 02:00:02.000', 'RECEBIDO', '2025-10-31 02:00:02.000', 903, 'Pago no débito no balcão', '2025-11-08 02:00:02.741', NULL),
(9302, 202, 'Ordem #10002 - Suspensão dianteira', 698.00, '2025-11-10 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-08 02:00:02.741', NULL),
(9303, 203, 'Ordem #10003 - Diagnóstico de ignição', 320.00, '2025-10-21 02:00:02.000', 'RECEBIDO', '2025-10-22 02:00:02.000', 901, 'Pago em espécie', '2025-11-08 02:00:02.741', NULL),
(9304, 204, 'Ordem #10004 - Freios e fluido', 160.00, '2025-10-25 02:00:02.000', 'RECEBIDO', '2025-10-25 02:00:02.000', 902, 'Cartão de crédito', '2025-11-08 02:00:02.741', NULL),
(9305, 205, 'Ordem #10005 - Scanner de injeção', 89.00, '2025-11-13 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando liberação', '2025-11-08 02:00:02.741', NULL),
(9306, 206, 'Ordem #10006 - Revisão Onix', 280.00, '2025-11-09 00:00:00.000', 'RECEBIDO', '2025-11-09 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9307, 207, 'Ordem #10007 - Diagnóstico A/C Fit', 200.00, '2025-11-15 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação reparo', '2025-11-13 14:12:00.003', NULL),
(9308, 208, 'Ordem #10008 - Freio Civic', 398.00, '2025-11-16 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação peças', '2025-11-13 14:12:00.003', NULL),
(9309, 209, 'Ordem #10009 - Embreagem Uno', 650.00, '2025-11-14 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando conclusão serviço', '2025-11-13 14:12:00.003', NULL),
(9310, 210, 'Ordem #10010 - Troca de óleo', 299.60, '2025-11-10 00:00:00.000', 'RECEBIDO', '2025-11-10 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9311, 211, 'Ordem #10011 - Troca bateria', 460.00, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 901, 'Pago em dinheiro', '2025-11-13 14:12:00.003', NULL),
(9312, 212, 'Ordem #10012 - Troca lâmpada H4', 95.00, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9313, 213, 'Ordem #10013 - Suspensão Corsa', 230.00, '2025-11-17 00:00:00.000', 'PENDENTE', NULL, 903, 'Aguardando alinhamento', '2025-11-13 14:12:00.003', NULL),
(9314, 214, 'Ordem #10014 - Filtro cabine Corolla', 89.90, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9315, 215, 'Ordem #10015 - Tensor Gol', 230.00, '2025-11-18 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9316, 216, 'Ordem #10016 - Arrefecimento Celta', 549.00, '2025-11-19 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando peça (radiador)', '2025-11-13 14:12:00.003', NULL),
(9317, 217, 'Ordem #10017 - Homocinética Ka', 279.90, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL),
(9318, 218, 'Ordem #10018 - Fluido freio', 82.50, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9319, 219, 'Ordem #10019 - Bobina Fox', 299.00, '2025-11-20 00:00:00.000', 'PENDENTE', NULL, 901, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9320, 220, 'Ordem #10020 - Câmbio ATF', 575.00, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 902, 'Pago no crédito 2x', '2025-11-13 14:12:00.003', NULL),
(9321, 221, 'Ordem #10021 - Palheta', 55.00, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 901, 'Pago em dinheiro', '2025-11-13 14:12:00.003', NULL),
(9322, 222, 'Ordem #10022 - Sonda Lambda UP', 380.00, '2025-11-21 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando peça (sonda)', '2025-11-13 14:12:00.003', NULL),
(9323, 223, 'Ordem #10023 - Freio Hilux', 379.90, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9324, 224, 'Ordem #10024 - Amortecedor Onix', 748.00, '2025-11-22 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9325, 225, 'Ordem #10025 - Correia Cruze', 330.00, '2025-11-23 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9326, 226, 'Ordem #10026 - Bateria Heliar', 569.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL),
(9327, 227, 'Ordem #10027 - Lâmpada H7', 130.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9328, 228, 'Ordem #10028 - Válvula Palio', 165.00, '2025-11-24 00:00:00.000', 'PENDENTE', NULL, 901, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9329, 229, 'Ordem #10029 - Filtro Gol G5', 65.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9330, 230, 'Ordem #10030 - Aditivo radiador', 144.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9331, 231, 'Ordem #10031 - Cabos Celta', 195.00, '2025-11-25 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9332, 232, 'Ordem #10032 - Bico Peugeot', 0.00, '2025-11-13 00:00:00.000', 'CANCELADO', NULL, 901, 'Serviço cancelado', '2025-11-13 14:12:00.003', NULL),
(9333, 233, 'Ordem #10033 - Discos Jetta', 548.00, '2025-11-26 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9334, 234, 'Ordem #10034 - Batente Ka', 390.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9335, 235, 'Ordem #10035 - Rolamento Gol', 295.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL);
