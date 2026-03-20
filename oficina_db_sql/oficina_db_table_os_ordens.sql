
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens`
--

CREATE TABLE `os_ordens` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint NOT NULL,
  `mecanico_id` bigint NOT NULL,
  `descricao_problema` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ABERTA',
  `data_abertura` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `data_conclusao` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_ordens`
--

INSERT INTO `os_ordens` (`Id`, `cliente_id`, `mecanico_id`, `descricao_problema`, `status`, `data_abertura`, `data_conclusao`, `created_at`, `updated_at`) VALUES
(10001, 1, 1, 'Troca de óleo e filtro - revisão preventiva', 'CONCLUIDA', '2025-10-29 01:50:11.000', '2025-10-30 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10002, 2, 2, 'Ruído na suspensão dianteira ao frear', 'EM_ANDAMENTO', '2025-11-01 01:50:11.000', NULL, '2025-11-08 01:50:11.934', NULL),
(10003, 3, 3, 'Motor falhando - diagnóstico de ignição', 'CONCLUIDA', '2025-10-19 01:50:11.000', '2025-10-21 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10004, 4, 4, 'Substituição de pastilhas e fluido de freio', 'CONCLUIDA', '2025-10-24 01:50:11.000', '2025-10-25 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10005, 5, 5, 'Luz da injeção acesa - leitura scanner', 'ABERTA', '2025-11-06 01:50:11.000', NULL, '2025-11-08 01:50:11.934', NULL),
(10006, 6, 6, 'Revisão 30.000km Onix. Trocar velas e filtros.', 'CONCLUIDA', '2025-11-09 08:00:00.000', '2025-11-09 17:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10007, 7, 7, 'Ar condicionado não gela - Honda Fit.', 'EM_ANDAMENTO', '2025-11-10 09:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10008, 8, 8, 'Barulho (assobio) freio traseiro Civic.', 'AGUARDANDO_APROVACAO', '2025-11-10 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10009, 9, 9, 'Troca kit de embreagem Uno Fire.', 'EM_ANDAMENTO', '2025-11-10 11:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10010, 10, 10, 'Troca de óleo e filtro - 5W30 Sintético.', 'CONCLUIDA', '2025-11-10 14:00:00.000', '2025-11-10 15:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10011, 11, 34, 'Veículo não dá partida. Suspeita de bateria.', 'CONCLUIDA', '2025-11-11 08:30:00.000', '2025-11-11 09:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10012, 12, 10, 'Luz alta (H4) queimada.', 'CONCLUIDA', '2025-11-11 09:00:00.000', '2025-11-11 09:20:00.000', '2025-11-13 13:00:00.001', NULL),
(10013, 13, 11, 'Instabilidade na suspensão Corsa.', 'EM_ANDAMENTO', '2025-11-11 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10014, 14, 12, 'Troca filtro de cabine Corolla.', 'CONCLUIDA', '2025-11-11 11:00:00.000', '2025-11-11 11:45:00.000', '2025-11-13 13:00:00.001', NULL),
(10015, 15, 13, 'Barulho correia dentada Gol.', 'AGUARDANDO_APROVACAO', '2025-11-11 14:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10016, 16, 14, 'Aquecimento do motor Celta (com A/C).', 'EM_ANDAMENTO', '2025-11-12 08:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10017, 17, 15, 'Barulho na roda dianteira Ford Ka.', 'CONCLUIDA', '2025-11-12 09:00:00.000', '2025-11-12 11:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10018, 18, 16, 'Troca fluido de freio (DOT4).', 'CONCLUIDA', '2025-11-12 10:00:00.000', '2025-11-12 10:40:00.000', '2025-11-13 13:00:00.001', NULL),
(10019, 19, 17, 'Carro engasgando - Fox 1.6.', 'AGUARDANDO_APROVACAO', '2025-11-12 11:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10020, 20, 18, 'Revisão câmbio automático (troca fluido ATF).', 'CONCLUIDA', '2025-11-12 14:00:00.000', '2025-11-12 17:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10021, 21, 19, 'Troca palheta limpador 20\".', 'CONCLUIDA', '2025-11-12 15:00:00.000', '2025-11-12 15:15:00.000', '2025-11-13 13:00:00.001', NULL),
(10022, 22, 20, 'Luz injeção acesa VW UP TSI.', 'EM_ANDAMENTO', '2025-11-12 16:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10023, 23, 21, 'Troca pastilhas freio Hilux.', 'CONCLUIDA', '2025-11-13 08:00:00.000', '2025-11-13 10:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10024, 24, 22, 'Troca amortecedores traseiros Onix.', 'EM_ANDAMENTO', '2025-11-13 09:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10025, 25, 23, 'Barulho correia alternador Cruze.', 'AGUARDANDO_APROVACAO', '2025-11-13 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10026, 26, 24, 'Troca bateria 70Ah.', 'CONCLUIDA', '2025-11-13 11:00:00.000', '2025-11-13 11:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10027, 27, 25, 'Troca lâmpada H7 Philips.', 'CONCLUIDA', '2025-11-13 11:30:00.000', '2025-11-13 11:50:00.000', '2025-11-13 13:00:00.001', NULL),
(10028, 28, 26, 'Carro demorando para esquentar (Palio).', 'EM_ANDAMENTO', '2025-11-13 12:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10029, 29, 27, 'Troca filtro combustível Gol G5.', 'CONCLUIDA', '2025-11-13 12:30:00.000', '2025-11-13 13:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10030, 30, 28, 'Troca aditivo radiador (Paraflu Rosa).', 'CONCLUIDA', '2025-11-13 13:00:00.000', '2025-11-13 13:45:00.000', '2025-11-13 13:00:00.001', NULL),
(10031, 31, 29, 'Falha motor Celta (cabos e velas).', 'AGUARDANDO_APROVACAO', '2025-11-13 13:15:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10032, 32, 30, 'Orçamento bico injetor Peugeot 308 THP.', 'CANCELADA', '2025-11-13 13:30:00.000', '2025-11-13 13:35:00.000', '2025-11-13 13:00:00.001', NULL),
(10033, 33, 31, 'Troca discos freio Jetta TSI (traseiro).', 'EM_ANDAMENTO', '2025-11-13 13:45:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10034, 34, 32, 'Troca kit batente amortecedor Ka.', 'CONCLUIDA', '2025-11-13 14:00:00.000', '2025-11-13 15:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10035, 35, 33, 'Barulho rolamento roda dianteira Gol (ABS).', 'CONCLUIDA', '2025-11-13 14:15:00.000', '2025-11-13 16:00:00.000', '2025-11-13 13:00:00.001', NULL);
