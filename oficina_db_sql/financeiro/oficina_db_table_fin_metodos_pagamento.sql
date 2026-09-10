
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_metodos_pagamento`
--

CREATE TABLE `fin_metodos_pagamento` (
  `Id` bigint NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_metodos_pagamento`
--

INSERT INTO `fin_metodos_pagamento` (`Id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(901, 'Dinheiro', 'Pagamento em espécie no caixa', '2025-11-08 02:00:02.684', NULL),
(902, 'Cartão Crédito', 'Pagamentos via cartão de crédito', '2025-11-08 02:00:02.684', NULL),
(903, 'Cartão Débito', 'Pagamentos via cartão de débito', '2025-11-08 02:00:02.684', NULL),
(904, 'PIX', 'Transferência instantânea via PIX', '2025-11-08 02:00:02.684', NULL),
(905, 'Boleto', 'Cobrança via boleto bancário', '2025-11-08 02:00:02.684', NULL),
(906, 'Transferência (TED)', 'Transferência bancária (TED)', '2025-11-13 14:10:00.001', NULL),
(907, 'Transferência (DOC)', 'Transferência bancária (DOC)', '2025-11-13 14:10:00.001', NULL),
(908, 'Cheque', 'Pagamento com cheque (sob consulta)', '2025-11-13 14:10:00.001', NULL),
(909, 'Permuta', 'Troca de serviços ou produtos', '2025-11-13 14:10:00.001', NULL),
(910, 'Crédito Loja', 'Uso de crédito interno (devolução)', '2025-11-13 14:10:00.001', NULL),
(911, 'Pagamento Recorrente (CC)', 'Cobrança automática no cartão de crédito', '2025-11-13 14:10:00.001', NULL),
(912, 'Débito Automático', 'Cobrança automática em conta', '2025-11-13 14:10:00.001', NULL),
(913, 'Carteira Digital (Genérica)', 'Pagamento via app (ex: PicPay, Mercado Pago)', '2025-11-13 14:10:00.001', NULL),
(914, 'Link de Pagamento', 'Link enviado para pagamento online (CC)', '2025-11-13 14:10:00.001', NULL),
(915, 'Carnê', 'Pagamento parcelado via carnê (loja)', '2025-11-13 14:10:00.001', NULL),
(916, 'Vale (Adiantamento)', 'Adiantamento de funcionário', '2025-11-13 14:10:00.001', NULL),
(917, 'Cortesia', 'Serviço/Produto fornecido sem custo (Garantia/Bônus)', '2025-11-13 14:10:00.001', NULL),
(918, 'Faturamento 30 dias', 'Faturamento PJ (30 dias)', '2025-11-13 14:10:00.001', NULL),
(919, 'Faturamento 45 dias', 'Faturamento PJ (45 dias)', '2025-11-13 14:10:00.001', NULL),
(920, 'Faturamento 60 dias', 'Faturamento PJ (60 dias)', '2025-11-13 14:10:00.001', NULL),
(921, 'Consignação', 'Pagamento após venda (consignado)', '2025-11-13 14:10:00.001', NULL),
(922, 'Criptomoeda (BTC)', 'Pagamento em Bitcoin (experimental)', '2025-11-13 14:10:00.001', NULL),
(923, 'Criptomoeda (ETH)', 'Pagamento em Ethereum (experimental)', '2025-11-13 14:10:00.001', NULL),
(924, 'PayPal', 'Pagamento via plataforma PayPal', '2025-11-13 14:10:00.001', NULL),
(925, 'Stripe', 'Pagamento via plataforma Stripe', '2025-11-13 14:10:00.001', NULL),
(926, 'PagSeguro', 'Pagamento via PagSeguro', '2025-11-13 14:10:00.001', NULL),
(927, 'Mercado Pago', 'Pagamento via Mercado Pago', '2025-11-13 14:10:00.001', NULL),
(928, 'Boleto (Parcelado 2x)', 'Boleto com 2 parcelas', '2025-11-13 14:10:00.001', NULL),
(929, 'Boleto (Parcelado 3x)', 'Boleto com 3 parcelas', '2025-11-13 14:10:00.001', NULL),
(930, 'Cartão Frota (Ticket Log)', 'Pagamento com cartão de frota', '2025-11-13 14:10:00.001', NULL),
(931, 'Cartão Frota (VB)', 'Pagamento com cartão de frota VB', '2025-11-13 14:10:00.001', NULL),
(932, 'Cartão Frota (Alelo)', 'Pagamento com cartão de frota Alelo', '2025-11-13 14:10:00.001', NULL),
(933, 'Financiamento (Banco)', 'Financiamento via parceiro (Banco X)', '2025-11-13 14:10:00.001', NULL),
(934, 'Seguradora (Pagamento)', 'Pagamento direto da seguradora', '2025-11-13 14:10:00.001', NULL),
(935, 'Crédito (Funcionário)', 'Crédito interno de funcionário', '2025-11-13 14:10:00.001', NULL);
