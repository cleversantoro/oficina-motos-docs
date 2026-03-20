
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_avaliacoes`
--

CREATE TABLE `os_avaliacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `nota` int NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_avaliacoes`
--

INSERT INTO `os_avaliacoes` (`Id`, `ordem_servico_id`, `nota`, `comentario`, `usuario`, `created_at`, `updated_at`) VALUES
(60001, 10001, 5, 'Serviço rápido e bem feito. Recomendo!', 'joao.silva', '2025-11-08 01:50:12.074', NULL),
(60002, 10002, 4, 'Diagnóstico correto, aguardando orçamento.', 'maria.oliveira', '2025-11-08 01:50:12.074', NULL),
(60003, 10003, 5, 'Problema resolvido. Oficina confiável.', 'carlos.santos', '2025-11-08 01:50:12.074', NULL),
(60004, 10004, 5, 'Freio perfeito, atendimento excelente.', 'patricia.lima', '2025-11-08 01:50:12.074', NULL),
(60005, 10005, 3, 'Aguardando contato sobre orçamento.', 'eduardo.souza', '2025-11-08 01:50:12.074', NULL),
(60006, 10006, 5, 'Revisão completa, carro ficou ótimo.', 'cliente_206', '2025-11-13 13:05:00.006', NULL),
(60007, 10007, 3, 'Ainda em diagnóstico, mas o mecânico foi atencioso.', 'cliente_207', '2025-11-13 13:05:00.006', NULL),
(60008, 10008, 4, 'Recebi o orçamento rápido, aguardando aprovação.', 'cliente_208', '2025-11-13 13:05:00.006', NULL),
(60009, 10009, 5, 'Serviço pesado, mas ficou excelente.', 'cliente_209', '2025-11-13 13:05:00.006', NULL),
(60010, 10010, 5, 'Troca de óleo rápida.', 'cliente_210', '2025-11-13 13:05:00.006', NULL),
(60011, 10011, 5, 'Resolveram rápido, era a bateria mesmo.', 'cliente_211', '2025-11-13 13:05:00.006', NULL),
(60012, 10012, 5, 'Troca de lâmpada simples, sem espera.', 'cliente_212', '2025-11-13 13:05:00.006', NULL),
(60013, 10013, 4, 'Aguardando alinhamento para finalizar.', 'cliente_213', '2025-11-13 13:05:00.006', NULL),
(60014, 10014, 5, 'Filtro de cabine trocado, ar ficou melhor.', 'cliente_214', '2025-11-13 13:05:00.006', NULL),
(60015, 10015, 4, 'Diagnóstico parece correto (tensor).', 'cliente_215', '2025-11-13 13:05:00.006', NULL),
(60016, 10016, 4, 'Ainda em reparo (aguardando peça).', 'cliente_216', '2025-11-13 13:05:00.006', NULL),
(60017, 10017, 5, 'Barulho na roda sumiu. Ótimo.', 'cliente_217', '2025-11-13 13:05:00.006', NULL),
(60018, 10018, 5, 'Serviço rápido.', 'cliente_218', '2025-11-13 13:05:00.006', NULL),
(60019, 10019, 3, 'Aguardando orçamento da bobina.', 'cliente_219', '2025-11-13 13:05:00.006', NULL),
(60020, 10020, 5, 'Câmbio ficou mais suave após a troca do ATF.', 'cliente_220', '2025-11-13 13:05:00.006', NULL),
(60021, 10021, 5, 'Troca rápida.', 'cliente_221', '2025-11-13 13:05:00.006', NULL),
(60022, 10022, 4, 'Aguardando peça (sonda).', 'cliente_222', '2025-11-13 13:05:00.006', NULL),
(60023, 10023, 5, 'Serviço bem feito na Hilux.', 'cliente_223', '2025-11-13 13:05:00.006', NULL),
(60024, 10024, 4, 'Em andamento.', 'cliente_224', '2025-11-13 13:05:00.006', NULL),
(60025, 10025, 4, 'Aguardando aprovação.', 'cliente_225', '2025-11-13 13:05:00.006', NULL),
(60026, 10026, 5, 'Troca de bateria rápida.', 'cliente_226', '2025-11-13 13:05:00.006', NULL),
(60027, 10027, 5, 'Serviço rápido.', 'cliente_227', '2025-11-13 13:05:00.006', NULL),
(60028, 10028, 4, 'Aguardando finalização do reparo.', 'cliente_228', '2025-11-13 13:05:00.006', NULL),
(60029, 10029, 5, 'OK.', 'cliente_229', '2025-11-13 13:05:00.006', NULL),
(60030, 10030, 5, 'Troca de aditivo OK.', 'cliente_230', '2025-11-13 13:05:00.006', NULL),
(60031, 10031, 4, 'Aguardando aprovação orçamento cabos.', 'cliente_231', '2025-11-13 13:05:00.006', NULL),
(60032, 10032, 2, 'Não conseguiram a peça (descontinuada).', 'cliente_232', '2025-11-13 13:05:00.006', NULL),
(60033, 10033, 4, 'Aguardando finalização.', 'cliente_233', '2025-11-13 13:05:00.006', NULL),
(60034, 10034, 5, 'Serviço concluído. OK.', 'cliente_234', '2025-11-13 13:05:00.006', NULL),
(60035, 10035, 5, 'Barulho do rolamento resolvido.', 'cliente_235', '2025-11-13 13:05:00.006', NULL);
