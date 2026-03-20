
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_historico`
--

CREATE TABLE `est_pecas_historico` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_historico`
--

INSERT INTO `est_pecas_historico` (`Id`, `peca_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(9001, 1001, '2025-10-18 23:59:27', 'clever', 'preco_unitario', '26.90', '29.90', '2025-11-06 23:59:27.187', NULL),
(9002, 1003, '2025-10-24 23:59:27', 'maria', 'quantidade', '10', '12', '2025-11-06 23:59:27.187', NULL),
(9003, 1004, '2025-10-26 23:59:27', 'jose', 'localizacao_id', '3', '5', '2025-11-06 23:59:27.187', NULL),
(9004, 1002, '2025-10-29 23:59:27', 'ana', 'observacoes', NULL, 'Compatível 2012–2019', '2025-11-06 23:59:27.187', NULL),
(9005, 1005, '2025-11-02 23:59:27', 'clever', 'preco_unitario', '79.90', '89.00', '2025-11-06 23:59:27.187', NULL),
(9006, 1006, '2025-11-13 10:03:00', 'clever', 'quantidade', '0', '40', '2025-11-13 10:03:00.400', NULL),
(9007, 1007, '2025-11-13 10:03:00', 'maria', 'preco_unitario', '299.90', '289.90', '2025-11-13 10:03:00.400', NULL),
(9008, 1008, '2025-11-13 10:03:00', 'jose', 'localizacao_id', '1', '3', '2025-11-13 10:03:00.400', NULL),
(9009, 1009, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '5', '2025-11-13 10:03:00.400', NULL),
(9010, 1010, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '55.00', '59.90', '2025-11-13 10:03:00.400', NULL),
(9011, 1011, '2025-11-13 10:03:00', 'maria', 'estoque_minimo', '2', '5', '2025-11-13 10:03:00.400', NULL),
(9012, 1012, '2025-11-13 10:03:00', 'jose', 'quantidade', '0', '30', '2025-11-13 10:03:00.400', NULL),
(9013, 1013, '2025-11-13 10:03:00', 'ana', 'preco_unitario', '69.00', '65.00', '2025-11-13 10:03:00.400', NULL),
(9014, 1014, '2025-11-13 10:03:00', 'clever', 'localizacao_id', '2', '4', '2025-11-13 10:03:00.400', NULL),
(9015, 1015, '2025-11-13 10:03:00', 'maria', 'quantidade', '0', '12', '2025-11-13 10:03:00.400', NULL),
(9016, 1016, '2025-11-13 10:03:00', 'jose', 'status', 'Ativo', 'Inativo', '2025-11-13 10:03:00.400', NULL),
(9017, 1016, '2025-11-13 10:04:00', 'jose', 'status', 'Inativo', 'Ativo', '2025-11-13 10:03:00.400', NULL),
(9018, 1017, '2025-11-13 10:03:00', 'ana', 'preco_unitario', '185.00', '179.90', '2025-11-13 10:03:00.400', NULL),
(9019, 1018, '2025-11-13 10:03:00', 'clever', 'quantidade', '0', '60', '2025-11-13 10:03:00.400', NULL),
(9020, 1019, '2025-11-13 10:03:00', 'maria', 'localizacao_id', '1', '4', '2025-11-13 10:03:00.400', NULL),
(9021, 1020, '2025-11-13 10:03:00', 'jose', 'observacoes', NULL, 'Dexron VI', '2025-11-13 10:03:00.400', NULL),
(9022, 1021, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '30', '2025-11-13 10:03:00.400', NULL),
(9023, 1022, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '280.00', '285.00', '2025-11-13 10:03:00.400', NULL),
(9024, 1023, '2025-11-13 10:03:00', 'maria', 'observacoes', 'Jogo com 4 peças', 'Cerâmica', '2025-11-13 10:03:00.400', NULL),
(9025, 1024, '2025-11-13 10:03:00', 'jose', 'quantidade', '0', '6', '2025-11-13 10:03:00.400', NULL),
(9026, 1025, '2025-11-13 10:03:00', 'ana', 'localizacao_id', '5', '4', '2025-11-13 10:03:00.400', NULL),
(9027, 1026, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '500.00', '519.00', '2025-11-13 10:03:00.400', NULL),
(9028, 1027, '2025-11-13 10:03:00', 'maria', 'quantidade', '0', '20', '2025-11-13 10:03:00.400', NULL),
(9029, 1028, '2025-11-13 10:03:00', 'jose', 'codigo', 'TERM-PALIO', 'TERM-AGUA-PALIO', '2025-11-13 10:03:00.400', NULL),
(9030, 1029, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '50', '2025-11-13 10:03:00.400', NULL),
(9031, 1030, '2025-11-13 10:03:00', 'clever', 'estoque_maximo', '50', '80', '2025-11-13 10:03:00.400', NULL),
(9032, 1031, '2025-11-13 10:03:00', 'maria', 'preco_unitario', '110.00', '115.00', '2025-11-13 10:03:00.400', NULL),
(9033, 1032, '2025-11-13 10:03:00', 'jose', 'status', 'Ativo', 'Inativo', '2025-11-13 10:03:00.400', NULL),
(9034, 1033, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '10', '2025-11-13 10:03:00.400', NULL),
(9035, 1034, '2025-11-13 10:03:00', 'clever', 'localizacao_id', '1', '4', '2025-11-13 10:03:00.400', NULL);
