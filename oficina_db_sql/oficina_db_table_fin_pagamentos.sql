
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_pagamentos`
--

CREATE TABLE `fin_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `valor` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_pagamentos`
--

INSERT INTO `fin_pagamentos` (`Id`, `ordem_servico_id`, `cliente_id`, `fornecedor_id`, `valor`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9101, 10001, 201, NULL, 250.00, 'PAGO', '2025-10-31 02:00:02.000', 903, 'Recebido no balcão', '2025-11-08 02:00:02.761', NULL),
(9102, NULL, NULL, 302, 1396.00, 'PAGO', '2025-11-05 02:00:02.000', 902, 'Compra amortecedores Monroe', '2025-11-08 02:00:02.761', NULL),
(9103, 10003, 203, NULL, 320.00, 'PAGO', '2025-10-22 02:00:02.000', 901, 'Serviço concluído', '2025-11-08 02:00:02.761', NULL),
(9104, 10004, 204, NULL, 160.00, 'PAGO', '2025-10-25 02:00:02.000', 902, 'Freio e fluido', '2025-11-08 02:00:02.761', NULL),
(9105, NULL, NULL, 304, 820.50, 'PENDENTE', NULL, 905, 'Compra sensores aguardando NF', '2025-11-08 02:00:02.761', NULL),
(9106, 10006, 206, NULL, 280.00, 'PAGO', '2025-11-09 00:00:00.000', 904, 'Recebimento OS #10006', '2025-11-13 14:13:00.004', NULL),
(9107, 10010, 210, NULL, 299.60, 'PAGO', '2025-11-10 00:00:00.000', 903, 'Recebimento OS #10010', '2025-11-13 14:13:00.004', NULL),
(9108, 10011, 211, NULL, 460.00, 'PAGO', '2025-11-11 00:00:00.000', 901, 'Recebimento OS #10011', '2025-11-13 14:13:00.004', NULL),
(9109, 10012, 212, NULL, 95.00, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Recebimento OS #10012', '2025-11-13 14:13:00.004', NULL),
(9110, 10014, 214, NULL, 89.90, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Recebimento OS #10014', '2025-11-13 14:13:00.004', NULL),
(9111, 10017, 217, NULL, 279.90, 'PAGO', '2025-11-12 00:00:00.000', 902, 'Recebimento OS #10017', '2025-11-13 14:13:00.004', NULL),
(9112, 10018, 218, NULL, 82.50, 'PAGO', '2025-11-12 00:00:00.000', 904, 'Recebimento OS #10018', '2025-11-13 14:13:00.004', NULL),
(9113, 10020, 220, NULL, 575.00, 'PAGO', '2025-11-12 00:00:00.000', 902, 'Recebimento OS #10020', '2025-11-13 14:13:00.004', NULL),
(9114, 10021, 221, NULL, 55.00, 'PAGO', '2025-11-12 00:00:00.000', 901, 'Recebimento OS #10021', '2025-11-13 14:13:00.004', NULL),
(9115, 10023, 223, NULL, 379.90, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Recebimento OS #10023', '2025-11-13 14:13:00.004', NULL),
(9116, 10026, 226, NULL, 569.00, 'PAGO', '2025-11-13 00:00:00.000', 902, 'Recebimento OS #10026', '2025-11-13 14:13:00.004', NULL),
(9117, 10027, 227, NULL, 130.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10027', '2025-11-13 14:13:00.004', NULL),
(9118, 10029, 229, NULL, 65.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10029', '2025-11-13 14:13:00.004', NULL),
(9119, 10030, 230, NULL, 144.00, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Recebimento OS #10030', '2025-11-13 14:13:00.004', NULL),
(9120, 10034, 234, NULL, 390.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10034', '2025-11-13 14:13:00.004', NULL),
(9121, NULL, NULL, 306, 1200.00, 'PENDENTE', NULL, 905, 'Pgto LubriBrasil (NF 9206)', '2025-11-13 14:13:00.004', NULL),
(9122, NULL, NULL, 307, 4500.00, 'PENDENTE', NULL, 904, 'Pgto PneuForte (NF 9207)', '2025-11-13 14:13:00.004', NULL),
(9123, NULL, NULL, 308, 950.00, 'PENDENTE', NULL, 902, 'Pgto SomCenter (NF 9208)', '2025-11-13 14:13:00.004', NULL),
(9124, NULL, NULL, 309, 300.00, 'PAGO', '2025-11-10 00:00:00.000', 901, 'Pgto Quimicar (NF 9209)', '2025-11-13 14:13:00.004', NULL),
(9125, NULL, NULL, 310, 3200.00, 'PENDENTE', NULL, 905, 'Pgto Ferramaster (NF 9210)', '2025-11-13 14:13:00.004', NULL),
(9126, NULL, NULL, 311, 780.00, 'PAGO', '2025-11-12 00:00:00.000', 904, 'Pgto Ilumicenter (NF 9211)', '2025-11-13 14:13:00.004', NULL),
(9127, NULL, NULL, 312, 2100.00, 'PENDENTE', NULL, 905, 'Pgto Baterias HZ (NF 9212)', '2025-11-13 14:13:00.004', NULL),
(9128, NULL, NULL, 313, 1100.00, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Pgto 4x4 Brasil (NF 9213)', '2025-11-13 14:13:00.004', NULL),
(9129, NULL, NULL, 314, 450.00, 'PENDENTE', NULL, 905, 'Pgto Vidrocar (NF 9214)', '2025-11-13 14:13:00.004', NULL),
(9130, NULL, NULL, 315, 320.00, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Pgto Auto Juntas (NF 9215)', '2025-11-13 14:13:00.004', NULL),
(9131, NULL, NULL, 316, 1900.00, 'PENDENTE', NULL, 918, 'Pgto Import Parts (NF 9216)', '2025-11-13 14:13:00.004', NULL),
(9132, NULL, NULL, 317, 3800.00, 'PENDENTE', NULL, 920, 'Pgto Diesel Parts (NF 9217)', '2025-11-13 14:13:00.004', NULL),
(9133, NULL, NULL, 318, 850.00, 'PAGO', '2025-11-13 00:00:00.000', 906, 'Pgto Arrefecer (NF 9218)', '2025-11-13 14:13:00.004', NULL),
(9134, NULL, NULL, 319, 1300.00, 'PENDENTE', NULL, 905, 'Pgto Transmisul (NF 9219)', '2025-11-13 14:13:00.004', NULL),
(9135, NULL, NULL, 320, 600.00, 'PENDENTE', NULL, 902, 'Pgto Esteticar (NF 9220)', '2025-11-13 14:13:00.004', NULL);
