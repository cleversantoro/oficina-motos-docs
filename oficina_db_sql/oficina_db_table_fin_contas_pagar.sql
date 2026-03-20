
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_pagar`
--

CREATE TABLE `fin_contas_pagar` (
  `Id` bigint NOT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `vencimento` datetime(3) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_contas_pagar`
--

INSERT INTO `fin_contas_pagar` (`Id`, `fornecedor_id`, `descricao`, `valor`, `vencimento`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9201, 301, 'Compra de filtros de óleo Bosch', 580.00, '2025-11-18 02:00:02.000', 'PENDENTE', NULL, 904, 'Prazo 10 dias via PIX', '2025-11-08 02:00:02.716', NULL),
(9202, 302, 'Compra de amortecedores Monroe', 1396.00, '2025-11-03 02:00:02.000', 'PAGO', '2025-11-05 02:00:02.000', 902, 'Parcela única no cartão', '2025-11-08 02:00:02.716', NULL),
(9203, 303, 'Compra de pastilhas TRW', 480.00, '2025-11-01 02:00:02.000', 'PAGO', '2025-11-02 02:00:02.000', 901, 'Pago em dinheiro na entrega', '2025-11-08 02:00:02.716', NULL),
(9204, 304, 'Compra de sensores Eletricar', 820.50, '2025-11-23 02:00:02.000', 'PENDENTE', NULL, 905, 'Aguardando nota fiscal', '2025-11-08 02:00:02.716', NULL),
(9205, 305, 'Compra de buchas Suspensul', 600.00, '2025-11-28 02:00:02.000', 'PENDENTE', NULL, 904, 'Pagamento agendado via PIX', '2025-11-08 02:00:02.716', NULL),
(9206, 306, 'Compra lubrificantes LubriBrasil', 1200.00, '2025-11-30 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 30 dias', '2025-11-13 14:11:00.002', NULL),
(9207, 307, 'Compra pneus PneuForte', 4500.00, '2025-11-20 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX agendado', '2025-11-13 14:11:00.002', NULL),
(9208, 308, 'Compra alarmes SomCenter', 950.00, '2025-11-15 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito 1x', '2025-11-13 14:11:00.002', NULL),
(9209, 309, 'Compra aditivos Quimicar', 300.00, '2025-11-10 00:00:00.000', 'PAGO', '2025-11-10 00:00:00.000', 901, 'Pago na entrega', '2025-11-13 14:11:00.002', NULL),
(9210, 310, 'Compra scanner Ferramaster', 3200.00, '2025-12-01 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 1/3', '2025-11-13 14:11:00.002', NULL),
(9211, 311, 'Compra lâmpadas Ilumicenter', 780.00, '2025-11-12 00:00:00.000', 'PAGO', '2025-11-12 00:00:00.000', 904, 'PIX pago', '2025-11-13 14:11:00.002', NULL),
(9212, 312, 'Compra baterias HZ', 2100.00, '2025-11-25 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 21 dias', '2025-11-13 14:11:00.002', NULL),
(9213, 313, 'Compra peças 4x4 Brasil', 1100.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 903, 'Débito na retirada', '2025-11-13 14:11:00.002', NULL),
(9214, 314, 'Compra palhetas Vidrocar', 450.00, '2025-11-30 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9215, 315, 'Compra juntas Auto Juntas', 320.00, '2025-11-11 00:00:00.000', 'PAGO', '2025-11-11 00:00:00.000', 904, 'PIX pago', '2025-11-13 14:11:00.002', NULL),
(9216, 316, 'Compra peças asiáticas Import Parts', 1900.00, '2025-12-05 00:00:00.000', 'PENDENTE', NULL, 918, 'Faturamento 30 dias', '2025-11-13 14:11:00.002', NULL),
(9217, 317, 'Compra linha diesel Diesel Parts', 3800.00, '2025-12-10 00:00:00.000', 'PENDENTE', NULL, 920, 'Faturamento 60 dias (parcial)', '2025-11-13 14:11:00.002', NULL),
(9218, 318, 'Compra radiadores Arrefecer', 850.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 906, 'TED', '2025-11-13 14:11:00.002', NULL),
(9219, 319, 'Compra óleo câmbio AT Transmisul', 1300.00, '2025-11-28 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9220, 320, 'Compra produtos estética Esteticar', 600.00, '2025-11-18 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito', '2025-11-13 14:11:00.002', NULL),
(9221, 321, 'Compra para-choques Latas & Cia', 1500.00, '2025-12-01 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9222, 322, 'Compra mangueiras Borrachas Mil', 410.00, '2025-11-14 00:00:00.000', 'PAGO', '2025-11-14 00:00:00.000', 904, 'PIX', '2025-11-13 14:11:00.002', NULL),
(9223, 323, 'Reparo módulo ECU Digital Módulos', 700.00, '2025-11-19 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX (serviço)', '2025-11-13 14:11:00.002', NULL),
(9224, 324, 'Compra turbina Turbo Center', 2800.00, '2025-11-26 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito 3x', '2025-11-13 14:11:00.002', NULL),
(9225, 325, 'Compra caixa direção DH SP', 1150.00, '2025-12-02 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9226, 326, 'Compra rodas Roda Certa', 1800.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 903, 'Débito na retirada', '2025-11-13 14:11:00.002', NULL),
(9227, 328, 'Compra compressores A/C Clima Auto', 2400.00, '2025-11-29 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9228, 329, 'Compra escapamentos Escape Forte', 900.00, '2025-11-21 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX agendado', '2025-11-13 14:11:00.002', NULL),
(9229, 330, 'Compra parafusos Fixa Tudo', 250.00, '2025-11-10 00:00:00.000', 'PAGO', '2025-11-10 00:00:00.000', 901, 'Dinheiro', '2025-11-13 14:11:00.002', NULL),
(9230, 331, 'Compra peças VW Ar Old Car', 720.00, '2025-11-22 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito', '2025-11-13 14:11:00.002', NULL),
(9231, 332, 'Compra filtros (Mann) Filtros BR', 1100.00, '2025-11-24 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9232, 333, 'Compra conectores Conect Car', 480.00, '2025-11-12 00:00:00.000', 'PAGO', '2025-11-12 00:00:00.000', 904, 'PIX', '2025-11-13 14:11:00.002', NULL),
(9233, 334, 'Compra EPIs Oficina Total', 650.00, '2025-11-27 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9234, 327, 'Compra antiga peças moto (INATIVO)', 300.00, '2023-05-10 00:00:00.000', 'CANCELADO', NULL, 905, 'Fornecedor inativo, baixa', '2025-11-13 14:11:00.002', NULL),
(9235, 335, 'Compra antiga importados (INATIVO)', 1200.00, '2023-01-15 00:00:00.000', 'CANCELADO', NULL, 905, 'Fornecedor inativo, baixa', '2025-11-13 14:11:00.002', NULL);
