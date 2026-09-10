
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_pagamentos`
--

CREATE TABLE `os_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo` varchar(50) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_pagamentos`
--

INSERT INTO `os_pagamentos` (`Id`, `ordem_servico_id`, `valor`, `status`, `data_pagamento`, `metodo`, `observacao`, `created_at`, `updated_at`) VALUES
(70001, 10001, 250.00, 'PAGO', '2025-10-30 01:50:12.000', 'Cartão Crédito', 'Troca de óleo completa', '2025-11-08 01:50:12.102', NULL),
(70002, 10002, 698.00, 'PENDENTE', NULL, 'PIX', 'Peças em aprovação', '2025-11-08 01:50:12.102', NULL),
(70003, 10003, 320.00, 'PAGO', '2025-10-21 01:50:12.000', 'Dinheiro', 'Serviço completo', '2025-11-08 01:50:12.102', NULL),
(70004, 10004, 160.00, 'PAGO', '2025-10-25 01:50:12.000', 'Cartão Débito', 'Pastilhas e fluido', '2025-11-08 01:50:12.102', NULL),
(70005, 10005, 89.00, 'PENDENTE', NULL, 'PIX', 'Aguardando diagnóstico final', '2025-11-08 01:50:12.102', NULL),
(70006, 10006, 280.00, 'PAGO', '2025-11-09 17:01:00.000', 'PIX', 'Velas (180) + Mão de Obra (100)', '2025-11-13 13:06:00.007', NULL),
(70007, 10007, 200.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Orçamento pendente (Gás + Vazamento)', '2025-11-13 13:06:00.007', NULL),
(70008, 10008, 398.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Aguardando aprovação (Discos 2x 199)', '2025-11-13 13:06:00.007', NULL),
(70009, 10009, 650.00, 'PENDENTE', NULL, 'PIX', 'Peça (450) + Mão de Obra (200)', '2025-11-13 13:06:00.007', NULL),
(70010, 10010, 299.60, 'PAGO', '2025-11-10 15:01:00.000', 'Cartão Débito', 'Óleo (4x 59.90) + Mão de Obra (60)', '2025-11-13 13:06:00.007', NULL),
(70011, 10011, 460.00, 'PAGO', '2025-11-11 09:31:00.000', 'Dinheiro', 'Bateria (410) + Mão de Obra (50)', '2025-11-13 13:06:00.007', NULL),
(70012, 10012, 95.00, 'PAGO', '2025-11-11 09:21:00.000', 'PIX', 'Lâmpada (75) + Mão de Obra (20)', '2025-11-13 13:06:00.007', NULL),
(70013, 10013, 230.00, 'PENDENTE', NULL, 'Cartão Débito', 'Pivôs (2x 65) + Mão de Obra (100)', '2025-11-13 13:06:00.007', NULL),
(70014, 10014, 89.90, 'PAGO', '2025-11-11 11:46:00.000', 'PIX', 'Filtro (49.90) + Mão de Obra (40)', '2025-11-13 13:06:00.007', NULL),
(70015, 10015, 230.00, 'PENDENTE', NULL, 'PIX', 'Aguardando aprovação (Tensor 130 + MO 100)', '2025-11-13 13:06:00.007', NULL),
(70016, 10016, 549.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Radiador (399) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70017, 10017, 279.90, 'PAGO', '2025-11-12 11:01:00.000', 'Cartão Crédito', 'Homocinética (179.90) + MO (100)', '2025-11-13 13:06:00.007', NULL),
(70018, 10018, 82.50, 'PAGO', '2025-11-12 10:41:00.000', 'PIX', 'Fluido (22.50) + MO (60)', '2025-11-13 13:06:00.007', NULL),
(70019, 10019, 299.00, 'PENDENTE', NULL, 'Dinheiro', 'Aguardando aprovação (Bobina 199 + MO 100)', '2025-11-13 13:06:00.007', NULL),
(70020, 10020, 575.00, 'PAGO', '2025-11-12 17:01:00.000', 'Cartão Crédito', 'Óleo ATF (5x 75) + MO (200)', '2025-11-13 13:06:00.007', NULL),
(70021, 10021, 55.00, 'PAGO', '2025-11-12 15:16:00.000', 'Dinheiro', 'Palheta (35) + MO (20)', '2025-11-13 13:06:00.007', NULL),
(70022, 10022, 380.00, 'PENDENTE', NULL, 'PIX', 'Sonda (280) + MO (100)', '2025-11-13 13:06:00.007', NULL),
(70023, 10023, 379.90, 'PAGO', '2025-11-13 10:01:00.000', 'Cartão Débito', 'Pastilha (259.90) + MO (120)', '2025-11-13 13:06:00.007', NULL),
(70024, 10024, 748.00, 'PENDENTE', NULL, 'PIX', 'Amortecedores (2x 299) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70025, 10025, 330.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Aguardando aprovação (Kit 210 + MO 120)', '2025-11-13 13:06:00.007', NULL),
(70026, 10026, 569.00, 'PAGO', '2025-11-13 11:31:00.000', 'Cartão Crédito', 'Bateria (519) + MO (50)', '2025-11-13 13:06:00.007', NULL),
(70027, 10027, 130.00, 'PAGO', '2025-11-13 11:51:00.000', 'PIX', 'Lâmpada (110) + MO (20)', '2025-11-13 13:06:00.007', NULL),
(70028, 10028, 165.00, 'PENDENTE', NULL, 'Dinheiro', 'Válvula (85) + MO (80)', '2025-11-13 13:06:00.007', NULL),
(70029, 10029, 65.00, 'PAGO', '2025-11-13 13:01:00.000', 'PIX', 'Filtro (25) + MO (40)', '2025-11-13 13:06:00.007', NULL),
(70030, 10030, 144.00, 'PAGO', '2025-11-13 13:46:00.000', 'Cartão Débito', 'Aditivo (2x 32) + MO (80)', '2025-11-13 13:06:00.007', NULL),
(70031, 10031, 195.00, 'PENDENTE', NULL, 'PIX', 'Aguardando aprovação (Cabo 115 + MO 80)', '2025-11-13 13:06:00.007', NULL),
(70032, 10032, 0.00, 'PAGO', '2025-11-13 13:36:00.000', 'N/A', 'Cancelado. Sem custo.', '2025-11-13 13:06:00.007', NULL),
(70033, 10033, 548.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Discos (2x 199) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70034, 10034, 390.00, 'PAGO', '2025-11-13 15:31:00.000', 'PIX', 'Batentes (2x 120) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70035, 10035, 295.00, 'PAGO', '2025-11-13 16:01:00.000', 'Cartão Crédito', 'Rolamento (145) + MO (150)', '2025-11-13 13:06:00.007', NULL);
