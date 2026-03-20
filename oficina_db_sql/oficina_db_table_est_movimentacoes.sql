
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_movimentacoes`
--

CREATE TABLE `est_movimentacoes` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `quantidade` int NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `data_movimentacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_movimentacoes`
--

INSERT INTO `est_movimentacoes` (`Id`, `peca_id`, `quantidade`, `tipo`, `referencia`, `data_movimentacao`, `usuario`, `created_at`, `updated_at`) VALUES
(5001, 1001, 20, 'ENTRADA', 'NF 12345/2025 - Compra estoques', '2025-10-17 23:55:09', 'clever', '2025-11-06 23:55:09.418', NULL),
(5002, 1003, 2, 'SAIDA', 'OS #874 - Troca freio Gol', '2025-10-22 23:55:09', 'maria', '2025-11-06 23:55:09.418', NULL),
(5003, 1004, 4, 'ENTRADA', 'NF 12401/2025 - Reposição', '2025-10-25 23:55:09', 'jose', '2025-11-06 23:55:09.418', NULL),
(5004, 1002, 1, 'SAIDA', 'OS #905 - Revisão HB20', '2025-10-28 23:55:09', 'ana', '2025-11-06 23:55:09.418', NULL),
(5005, 1005, 3, 'AJUSTE', 'Inventário periódico', '2025-11-01 23:55:09', 'clever', '2025-11-06 23:55:09.418', NULL),
(5006, 1006, 40, 'ENTRADA', 'NF 12500/2025 - Compra NGK', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5007, 1007, 8, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5008, 1008, 10, 'ENTRADA', 'NF 12502/2025 - Compra TRW', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5009, 1009, 5, 'ENTRADA', 'NF 12503/2025 - Compra SKF', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5010, 1010, 50, 'ENTRADA', 'NF 12504/2025 - Compra Monroe', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5011, 1011, 10, 'ENTRADA', 'NF 12505/2025 - Compra Moura', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5012, 1006, 4, 'SAIDA', 'OS #1001 - Revisão Onix', '2025-11-14 09:00:00', 'jose', '2025-11-14 09:00:00.800', NULL),
(5013, 1010, 4, 'SAIDA', 'OS #1002 - Troca Óleo Fit', '2025-11-14 09:30:00', 'ana', '2025-11-14 09:30:00.800', NULL),
(5014, 1008, 1, 'SAIDA', 'OS #1003 - Troca Freio Civic', '2025-11-14 10:00:00', 'clever', '2025-11-14 10:00:00.800', NULL),
(5015, 1009, 1, 'SAIDA', 'OS #1004 - Troca Embreagem Uno', '2025-11-14 11:00:00', 'maria', '2025-11-14 11:00:00.800', NULL),
(5016, 1012, 30, 'ENTRADA', 'NF 12506/2025 - Compra Osram', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5017, 1013, 15, 'ENTRADA', 'NF 12507/2025 - Compra Nakata', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5018, 1014, 20, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5019, 1015, 12, 'ENTRADA', 'NF 12503/2025 - Compra SKF', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5020, 1016, 4, 'ENTRADA', 'NF 12508/2025 - Compra Valeo', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5021, 1017, 8, 'ENTRADA', 'NF 12507/2025 - Compra Nakata', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5022, 1018, 60, 'ENTRADA', 'NF 12502/2025 - Compra TRW', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5023, 1019, 10, 'ENTRADA', 'NF 12500/2025 - Compra NGK', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5024, 1020, 25, 'ENTRADA', 'NF 12504/2025 - Compra Monroe', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5025, 1021, 30, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5026, 1022, 1, 'SAIDA', 'OS #1005 - Reparo Injeção UP', '2025-11-14 14:00:00', 'clever', '2025-11-14 14:00:00.800', NULL),
(5027, 1023, 1, 'SAIDA', 'OS #1006 - Troca Freio Hilux', '2025-11-14 15:00:00', 'maria', '2025-11-14 15:00:00.800', NULL),
(5028, 1024, 2, 'SAIDA', 'OS #1001 - Revisão Onix', '2025-11-14 09:00:00', 'jose', '2025-11-14 09:00:00.800', NULL),
(5029, 1025, 1, 'SAIDA', 'OS #1007 - Reparo Alternador Cruze', '2025-11-14 16:00:00', 'ana', '2025-11-14 16:00:00.800', NULL),
(5030, 1026, 8, 'ENTRADA', 'NF 12509/2025 - Compra Heliar', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5031, 1028, 1, 'SAIDA', 'OS #1008 - Reparo Arrefecimento Palio', '2025-11-14 17:00:00', 'maria', '2025-11-14 17:00:00.800', NULL),
(5032, 1029, 10, 'AJUSTE', 'Contagem de inventário - Sobra', '2025-11-15 08:00:00', 'jose', '2025-11-15 08:00:00.800', NULL),
(5033, 1032, 1, 'AJUSTE', 'Peça descontinuada - Baixa', '2025-11-15 08:05:00', 'ana', '2025-11-15 08:05:00.800', NULL),
(5034, 1034, 2, 'SAIDA', 'OS #1009 - Troca Suspensão Ka', '2025-11-15 09:00:00', 'clever', '2025-11-15 09:00:00.800', NULL),
(5035, 1035, 2, 'SAIDA', 'OS #1010 - Reparo Roda Gol', '2025-11-15 10:00:00', 'maria', '2025-11-15 10:00:00.800', NULL);
