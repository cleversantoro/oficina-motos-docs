
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_fornecedores`
--

CREATE TABLE `est_pecas_fornecedores` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `fornecedor_id` bigint NOT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `prazo_entrega` int DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_fornecedores`
--

INSERT INTO `est_pecas_fornecedores` (`Id`, `peca_id`, `fornecedor_id`, `preco`, `prazo_entrega`, `observacao`, `created_at`, `updated_at`) VALUES
(8001, 1001, 301, 27.90, 3, 'Fornecedor preferencial (lote mínimo 10)', '2025-11-06 23:59:27.154', NULL),
(8002, 1002, 302, 37.00, 5, 'Entrega via transportadora', '2025-11-06 23:59:27.154', NULL),
(8003, 1003, 303, 112.50, 4, 'Desconto para 5+ unidades', '2025-11-06 23:59:27.154', NULL),
(8004, 1004, 304, 335.00, 7, 'Amortecedor linha premium', '2025-11-06 23:59:27.154', NULL),
(8005, 1005, 305, 84.90, 2, 'Estoque local do fornecedor', '2025-11-06 23:59:27.154', NULL),
(8006, 1006, 301, 42.00, 2, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8007, 1007, 302, 275.00, 5, 'Importação direta', '2025-11-13 10:02:00.300', NULL),
(8008, 1008, 303, 205.00, 3, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8009, 1009, 304, 430.00, 4, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8010, 1010, 305, 55.00, 1, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8011, 1011, 306, 390.00, 2, 'Distribuidor Moura', '2025-11-13 10:02:00.300', NULL),
(8012, 1012, 301, 70.00, 3, 'Autopeças elétricas', '2025-11-13 10:02:00.300', NULL),
(8013, 1013, 302, 60.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8014, 1014, 303, 45.00, 4, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8015, 1015, 304, 122.00, 3, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8016, 1016, 305, 380.00, 6, 'Valeo (encomenda)', '2025-11-13 10:02:00.300', NULL),
(8017, 1017, 306, 170.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8018, 1018, 301, 20.00, 1, 'TRW Químicos', '2025-11-13 10:02:00.300', NULL),
(8019, 1019, 302, 189.00, 3, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8020, 1020, 303, 70.00, 2, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8021, 1021, 304, 31.00, 1, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8022, 1022, 305, 265.00, 5, 'Importação direta', '2025-11-13 10:02:00.300', NULL),
(8023, 1023, 306, 245.00, 4, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8024, 1024, 301, 285.00, 3, 'Monroe premium', '2025-11-13 10:02:00.300', NULL),
(8025, 1025, 302, 200.00, 2, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8026, 1026, 303, 499.00, 2, 'Distribuidor Heliar', '2025-11-13 10:02:00.300', NULL),
(8027, 1027, 304, 100.00, 4, 'Philips Auto', '2025-11-13 10:02:00.300', NULL),
(8028, 1028, 305, 79.00, 3, 'MTE-THOMSON', '2025-11-13 10:02:00.300', NULL),
(8029, 1029, 306, 22.00, 1, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8030, 1030, 301, 29.00, 1, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8031, 1031, 302, 105.00, 2, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8032, 1032, 303, 430.00, 10, 'Importação (sem estoque)', '2025-11-13 10:02:00.300', NULL),
(8033, 1033, 304, 185.00, 3, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8034, 1034, 305, 110.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8035, 1035, 306, 135.00, 2, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL);
