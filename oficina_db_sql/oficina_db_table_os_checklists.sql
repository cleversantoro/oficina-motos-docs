
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_checklists`
--

CREATE TABLE `os_checklists` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `item` varchar(200) NOT NULL,
  `realizado` tinyint(1) NOT NULL DEFAULT '0',
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_checklists`
--

INSERT INTO `os_checklists` (`Id`, `ordem_servico_id`, `item`, `realizado`, `observacao`, `created_at`, `updated_at`) VALUES
(30001, 10001, 'Nível do óleo', 1, 'Troca realizada', '2025-11-08 01:50:11.983', NULL),
(30002, 10002, 'Suspensão dianteira', 1, 'Barulho detectado', '2025-11-08 01:50:11.983', NULL),
(30003, 10003, 'Velas e cabos', 1, 'Cabos substituídos', '2025-11-08 01:50:11.983', NULL),
(30004, 10004, 'Sistema de freio', 1, 'Pastilhas novas', '2025-11-08 01:50:11.983', NULL),
(30005, 10005, 'Scanner OBDII', 0, 'Aguardando aprovação do cliente', '2025-11-08 01:50:11.983', NULL),
(30006, 10006, 'Troca de velas', 1, 'NGK Iridium OK', '2025-11-13 13:02:00.003', NULL),
(30007, 10007, 'Verificar pressão do gás A/C', 1, 'Baixa pressão. Suspeita de vazamento.', '2025-11-13 13:02:00.003', NULL),
(30008, 10008, 'Verificar pastilhas traseiras', 1, 'Desgastadas, 2mm.', '2025-11-13 13:02:00.003', NULL),
(30009, 10009, 'Nível óleo câmbio', 1, 'Verificado. OK.', '2025-11-13 13:02:00.003', NULL),
(30010, 10010, 'Filtro de óleo', 1, 'Trocado', '2025-11-13 13:02:00.003', NULL),
(30011, 10011, 'Teste de bateria', 1, 'CCA Baixo (150A). Necessária troca.', '2025-11-13 13:02:00.003', NULL),
(30012, 10012, 'Teste de luzes', 1, 'Lâmpada H4 LD queimada.', '2025-11-13 13:02:00.003', NULL),
(30013, 10013, 'Verificar pivôs', 1, 'Ambos com folga.', '2025-11-13 13:02:00.003', NULL),
(30014, 10014, 'Filtro de cabine', 1, 'Substituído (Carvão Ativado).', '2025-11-13 13:02:00.003', NULL),
(30015, 10015, 'Verificar tensor correia', 1, 'Tensor ruidoso.', '2025-11-13 13:02:00.003', NULL),
(30016, 10016, 'Verificar mangueiras radiador', 1, 'Mangueira superior com vazamento.', '2025-11-13 13:02:00.003', NULL),
(30017, 10017, 'Verificar homocinética', 1, 'Coifa rasgada, junta danificada (LD).', '2025-11-13 13:02:00.003', NULL),
(30018, 10018, 'Sangria do sistema', 1, 'Realizada nas 4 rodas.', '2025-11-13 13:02:00.003', NULL),
(30019, 10019, 'Diagnóstico bobina', 0, 'Aguardando aprovação.', '2025-11-13 13:02:00.003', NULL),
(30020, 10020, 'Nível fluido câmbio', 1, 'Nível OK após troca.', '2025-11-13 13:02:00.003', NULL),
(30021, 10021, 'Verificar limpadores', 1, 'Palheta 20\" (LE) trocada.', '2025-11-13 13:02:00.003', NULL),
(30022, 10022, 'Leitura Sonda Lambda', 1, 'Sonda pré-catalisador travada.', '2025-11-13 13:02:00.003', NULL),
(30023, 10023, 'Verificar pastilhas', 1, 'Pastilhas de cerâmica instaladas.', '2025-11-13 13:02:00.003', NULL),
(30024, 10024, 'Verificar amortecedores', 1, 'Traseiros estourados.', '2025-11-13 13:02:00.003', NULL),
(30025, 10025, 'Inspeção correia alternador', 1, 'Correia ressecada, tensor com folga.', '2025-11-13 13:02:00.003', NULL),
(30026, 10026, 'Verificar alternador', 1, 'Carga OK (14.1V).', '2025-11-13 13:02:00.003', NULL),
(30027, 10027, 'Verificar farol', 1, 'Lâmpada H7 LE trocada.', '2025-11-13 13:02:00.003', NULL),
(30028, 10028, 'Verificar válvula termostática', 1, 'Válvula travada aberta.', '2025-11-13 13:02:00.003', NULL),
(30029, 10029, 'Filtro combustível', 1, 'Trocado.', '2025-11-13 13:02:00.003', NULL),
(30030, 10030, 'Limpeza sistema arrefecimento', 1, 'Limpeza realizada.', '2025-11-13 13:02:00.003', NULL),
(30031, 10031, 'Verificar cabos de vela', 1, 'Cabos com fuga de corrente.', '2025-11-13 13:02:00.003', NULL),
(30032, 10032, 'Orçamento peça', 0, 'Peça descontinuada (ID 1032).', '2025-11-13 13:02:00.003', NULL),
(30033, 10033, 'Discos traseiros', 1, 'Substituição em andamento.', '2025-11-13 13:02:00.003', NULL),
(30034, 10034, 'Verificar batentes', 1, 'Batentes dianteiros (ambos) trocados.', '2025-11-13 13:02:00.003', NULL),
(30035, 10035, 'Rolamento dianteiro', 1, 'Rolamento LD (com ABS) trocado.', '2025-11-13 13:02:00.003', NULL);
