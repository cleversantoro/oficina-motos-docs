
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_historico`
--

CREATE TABLE `fin_historico` (
  `Id` bigint NOT NULL,
  `entidade` varchar(50) NOT NULL,
  `entidade_id` bigint NOT NULL,
  `data_alteracao` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_historico`
--

INSERT INTO `fin_historico` (`Id`, `entidade`, `entidade_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(9501, 'fin_contas_pagar', 9202, '2025-11-03 02:00:02.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9502, 'fin_contas_receber', 9303, '2025-10-22 02:00:02.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-08 02:00:02.802', NULL),
(9503, 'fin_pagamentos', 9104, '2025-10-25 02:00:02.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9504, 'fin_contas_pagar', 9205, '2025-11-07 02:00:02.000', 'clever', 'observacao', 'Aguardando NF', 'Pagamento agendado via PIX', '2025-11-08 02:00:02.802', NULL),
(9505, 'fin_contas_receber', 9302, '2025-11-07 02:00:02.000', 'paulo', 'status', 'PENDENTE', 'AGUARDANDO', '2025-11-08 02:00:02.802', NULL),
(9506, 'fin_contas_pagar', 9209, '2025-11-10 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9507, 'fin_contas_pagar', 9211, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9508, 'fin_contas_pagar', 9213, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9509, 'fin_contas_pagar', 9215, '2025-11-11 00:00:00.000', 'maria', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9510, 'fin_contas_pagar', 9218, '2025-11-13 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9511, 'fin_contas_pagar', 9222, '2025-11-14 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9512, 'fin_contas_pagar', 9226, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9513, 'fin_contas_pagar', 9229, '2025-11-10 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9514, 'fin_contas_pagar', 9232, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9515, 'fin_contas_pagar', 9234, '2025-11-13 00:00:00.000', 'clever', 'status', 'PENDENTE', 'CANCELADO', '2025-11-13 14:16:00.007', NULL),
(9516, 'fin_contas_receber', 9306, '2025-11-09 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9517, 'fin_contas_receber', 9310, '2025-11-10 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9518, 'fin_contas_receber', 9311, '2025-11-11 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9519, 'fin_contas_receber', 9312, '2025-11-11 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9520, 'fin_contas_receber', 9314, '2025-11-11 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9521, 'fin_contas_receber', 9317, '2025-11-12 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9522, 'fin_contas_receber', 9318, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9523, 'fin_contas_receber', 9320, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9524, 'fin_contas_receber', 9321, '2025-11-12 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9525, 'fin_contas_receber', 9323, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9526, 'fin_pagamentos', 9124, '2025-11-10 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9527, 'fin_pagamentos', 9126, '2025-11-12 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9528, 'fin_pagamentos', 9128, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9529, 'fin_pagamentos', 9130, '2025-11-11 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9530, 'fin_pagamentos', 9133, '2025-11-13 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9531, 'fin_contas_receber', 9332, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'CANCELADO', '2025-11-13 14:16:00.007', NULL),
(9532, 'fin_contas_receber', 9334, '2025-11-13 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9533, 'fin_contas_receber', 9335, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9534, 'fin_contas_pagar', 9210, '2025-11-13 00:00:00.000', 'clever', 'observacao', 'Boleto 1/3', 'Aguardando pagamento 1/3', '2025-11-13 14:16:00.007', NULL),
(9535, 'fin_contas_receber', 9307, '2025-11-13 00:00:00.000', 'paulo', 'status', 'PENDENTE', 'AGUARDANDO', '2025-11-13 14:16:00.007', NULL);
