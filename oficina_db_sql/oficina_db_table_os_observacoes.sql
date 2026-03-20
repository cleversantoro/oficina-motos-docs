
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_observacoes`
--

CREATE TABLE `os_observacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `texto` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_observacoes`
--

INSERT INTO `os_observacoes` (`Id`, `ordem_servico_id`, `usuario`, `texto`, `created_at`, `updated_at`) VALUES
(40001, 10001, 'mecanico_joao', 'Cliente solicitou óleo sintético 5W30.', '2025-11-08 01:50:12.002', NULL),
(40002, 10002, 'mecanico_paulo', 'Suspensão com folga. Recomendado trocar buchas.', '2025-11-08 01:50:12.002', NULL),
(40003, 10003, 'mecanico_maria', 'Troca de velas NGK e limpeza de bicos realizada.', '2025-11-08 01:50:12.002', NULL),
(40004, 10004, 'mecanico_ana', 'Fluido DOT 4 sangrado. Freio firme.', '2025-11-08 01:50:12.002', NULL),
(40005, 10005, 'mecanico_lucas', 'Leitura scanner: falha intermitente no sensor lambda.', '2025-11-08 01:50:12.002', NULL),
(40006, 10006, 'mecanico_andre', 'Cliente aprovou troca de velas e filtro de ar (Peca 1002).', '2025-11-13 13:03:00.004', NULL),
(40007, 10007, 'mecanico_bruna', 'Injetado contraste UV no sistema de A/C. Aguardar 24h para verificar vazamento.', '2025-11-13 13:03:00.004', NULL),
(40008, 10008, 'mecanico_caio', 'Discos e pastilhas traseiras necessitam substituição. Enviado orçamento.', '2025-11-13 13:03:00.004', NULL),
(40009, 10009, 'mecanico_daniela', 'Câmbio no chão. Embreagem antiga estava no limite.', '2025-11-13 13:03:00.004', NULL),
(40010, 10010, 'mecanico_eduardo', 'Troca de óleo e filtro de óleo. Nível OK.', '2025-11-13 13:03:00.004', NULL),
(40011, 10011, 'mecanico_fabiana', 'Bateria M60AD instalada. Alternador carregando 14.2V.', '2025-11-13 13:03:00.004', NULL),
(40012, 10012, 'mecanico_gustavo', 'Lâmpada Osram H4 instalada.', '2025-11-13 13:03:00.004', NULL),
(40013, 10013, 'mecanico_helena', 'Pivôs Nakata (par) instalados. Necessário alinhar.', '2025-11-13 13:03:00.004', NULL),
(40014, 10014, 'mecanico_igor', 'Filtro de cabine antigo estava muito sujo.', '2025-11-13 13:03:00.004', NULL),
(40015, 10015, 'mecanico_julia', 'Tensor ruidoso. Cliente ciente do risco. Aguardando aprovação da troca.', '2025-11-13 13:03:00.004', NULL),
(40016, 10016, 'mecanico_kleber', 'Vazamento na mangueira superior do radiador. Radiador OK.', '2025-11-13 13:03:00.004', NULL),
(40017, 10017, 'mecanico_larissa', 'Junta homocinética LD substituída (Kit Nakata).', '2025-11-13 13:03:00.004', NULL),
(40018, 10018, 'mecanico_marcos', 'Fluido TRW DOT4 aplicado. Sistema sangrado.', '2025-11-13 13:03:00.004', NULL),
(40019, 10019, 'mecanico_natalia', 'Passado scanner. Falha P0301 (Bobina). Orçamento bobina NGK enviado.', '2025-11-13 13:03:00.004', NULL),
(40020, 10020, 'mecanico_otavio', 'Troca de 5L fluido ATF Dexron VI (Monroe). Filtro interno OK.', '2025-11-13 13:03:00.004', NULL),
(40021, 10021, 'mecanico_paula', 'Palheta Bosch Aerofit 20\" LE instalada.', '2025-11-13 13:03:00.004', NULL),
(40022, 10022, 'mecanico_quintino', 'Falha P0135 (Sonda Lambda). Aguardando peça (NGK).', '2025-11-13 13:03:00.004', NULL),
(40023, 10023, 'mecanico_rafaela', 'Pastilhas cerâmica TRW instaladas. Cliente avisado sobre período de assentamento.', '2025-11-13 13:03:00.004', NULL),
(40024, 10024, 'mecanico_sergio', 'Amortecedores Monroe OESpectrum (par) traseiros instalados.', '2025-11-13 13:03:00.004', NULL),
(40025, 10025, 'mecanico_tais', 'Kit correia alternador SKF orçado. Aguardando aprovação.', '2025-11-13 13:03:00.004', NULL),
(40026, 10026, 'mecanico_ulisses', 'Bateria Heliar 70A instalada.', '2025-11-13 13:03:00.004', NULL),
(40027, 10027, 'mecanico_valeria', 'Lâmpada H7 Philips LE (farol baixo) trocada.', '2025-11-13 13:03:00.004', NULL),
(40028, 10028, 'mecanico_wagner', 'Diagnóstico: Válvula termostática MTE travada. Substituição em andamento.', '2025-11-13 13:03:00.004', NULL),
(40029, 10029, 'mecanico_xenia', 'Filtro de combustível Bosch trocado.', '2025-11-13 13:03:00.004', NULL),
(40030, 10030, 'mecanico_yara', 'Sistema de arrefecimento limpo. Adicionado 2L Paraflu Bio.', '2025-11-13 13:03:00.004', NULL),
(40031, 10031, 'mecanico_zaqueu', 'Cabos de vela NGK e velas (não inclusas) orçados.', '2025-11-13 13:03:00.004', NULL),
(40032, 10032, 'mecanico_aline', 'Cliente ciente de que a peça (1032) está descontinuada. OS Cancelada.', '2025-11-13 13:03:00.004', NULL),
(40033, 10033, 'mecanico_bernardo', 'Discos TRW (par) traseiros em substituição.', '2025-11-13 13:03:00.004', NULL),
(40034, 10034, 'mecanico_clara', 'Kit batente Nakata (par) dianteiro instalado.', '2025-11-13 13:03:00.004', NULL),
(40035, 10035, 'mecanico_davi', 'Rolamento SKF LD (com sensor ABS) substituído. Ruído sanado.', '2025-11-13 13:03:00.004', NULL);
