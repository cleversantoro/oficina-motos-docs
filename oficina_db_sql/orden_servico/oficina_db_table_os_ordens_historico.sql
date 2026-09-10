
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens_historico`
--

CREATE TABLE `os_ordens_historico` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `data_alteracao` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_ordens_historico`
--

INSERT INTO `os_ordens_historico` (`Id`, `ordem_servico_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(80001, 10001, '2025-10-29 01:50:12.000', 'clever', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80002, 10002, '2025-11-02 01:50:12.000', 'mecanico_paulo', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-08 01:50:12.128', NULL),
(80003, 10003, '2025-10-20 01:50:12.000', 'mecanico_maria', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80004, 10004, '2025-10-24 01:50:12.000', 'mecanico_ana', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80005, 10005, '2025-11-07 01:50:12.000', 'mecanico_lucas', 'status', 'ABERTA', 'AGUARDANDO_APROVACAO', '2025-11-08 01:50:12.128', NULL),
(80006, 10006, '2025-11-09 17:00:00.000', 'mecanico_andre', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80007, 10007, '2025-11-10 09:05:00.000', 'mecanico_bruna', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80008, 10008, '2025-11-10 10:30:00.000', 'mecanico_caio', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80009, 10009, '2025-11-10 11:05:00.000', 'mecanico_daniela', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80010, 10010, '2025-11-10 15:00:00.000', 'mecanico_eduardo', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80011, 10011, '2025-11-11 09:30:00.000', 'mecanico_fabiana', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80012, 10012, '2025-11-11 09:20:00.000', 'mecanico_gustavo', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80013, 10013, '2025-11-11 10:05:00.000', 'mecanico_helena', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80014, 10014, '2025-11-11 11:45:00.000', 'mecanico_igor', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80015, 10015, '2025-11-11 14:30:00.000', 'mecanico_julia', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80016, 10016, '2025-11-12 08:05:00.000', 'mecanico_kleber', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80017, 10017, '2025-11-12 11:00:00.000', 'mecanico_larissa', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80018, 10018, '2025-11-12 10:40:00.000', 'mecanico_marcos', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80019, 10019, '2025-11-12 11:30:00.000', 'mecanico_natalia', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80020, 10020, '2025-11-12 17:00:00.000', 'mecanico_otavio', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80021, 10021, '2025-11-12 15:15:00.000', 'mecanico_paula', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80022, 10022, '2025-11-12 16:05:00.000', 'mecanico_quintino', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80023, 10023, '2025-11-13 10:00:00.000', 'mecanico_rafaela', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80024, 10024, '2025-11-13 09:05:00.000', 'mecanico_sergio', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80025, 10025, '2025-11-13 10:30:00.000', 'mecanico_tais', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80026, 10026, '2025-11-13 11:30:00.000', 'mecanico_ulisses', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80027, 10027, '2025-11-13 11:50:00.000', 'mecanico_valeria', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80028, 10028, '2025-11-13 12:05:00.000', 'mecanico_wagner', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80029, 10029, '2025-11-13 13:00:00.000', 'mecanico_xenia', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80030, 10030, '2025-11-13 13:45:00.000', 'mecanico_yara', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80031, 10031, '2025-11-13 13:20:00.000', 'mecanico_zaqueu', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80032, 10032, '2025-11-13 13:35:00.000', 'mecanico_aline', 'status', 'AGUARDANDO_APROVACAO', 'CANCELADA', '2025-11-13 13:07:00.008', NULL),
(80033, 10033, '2025-11-13 13:50:00.000', 'mecanico_bernardo', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80034, 10034, '2025-11-13 15:30:00.000', 'mecanico_clara', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80035, 10035, '2025-11-13 16:00:00.000', 'mecanico_davi', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL);
