
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_itens`
--

CREATE TABLE `os_itens` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `peca_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `quantidade` int NOT NULL,
  `valor_unitario` decimal(12,2) NOT NULL,
  `total` decimal(12,2) GENERATED ALWAYS AS ((`quantidade` * `valor_unitario`)) STORED,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_itens`
--

INSERT INTO `os_itens` (`Id`, `ordem_servico_id`, `peca_id`, `descricao`, `quantidade`, `valor_unitario`, `created_at`, `updated_at`) VALUES
(20001, 10001, 1001, 'Filtro de óleo Bosch', 1, 29.90, '2025-11-08 01:50:11.960', NULL),
(20002, 10001, 1002, 'Filtro de ar NGK', 1, 39.50, '2025-11-08 01:50:11.960', NULL),
(20003, 10002, 1004, 'Amortecedor Monroe dianteiro', 2, 349.00, '2025-11-08 01:50:11.960', NULL),
(20004, 10004, 1003, 'Pastilhas de freio TRW', 1, 119.90, '2025-11-08 01:50:11.960', NULL),
(20005, 10005, 1005, 'Correia dentada SKF', 1, 89.00, '2025-11-08 01:50:11.960', NULL),
(20006, 10006, 1006, 'Vela de ignição Onix 1.0 (NGK)', 4, 45.00, '2025-11-13 13:01:00.002', NULL),
(20007, 10007, NULL, 'Carga de Gás R134a', 1, 150.00, '2025-11-13 13:01:00.002', NULL),
(20008, 10008, 1033, 'Disco de freio traseiro Jetta TSI (TRW)', 2, 199.00, '2025-11-13 13:01:00.002', NULL),
(20009, 10009, 1009, 'Kit de embreagem Uno Fire 1.0 (SKF)', 1, 450.00, '2025-11-13 13:01:00.002', NULL),
(20010, 10010, 1010, 'Óleo de motor 5W30 Sintético (Monroe)', 4, 59.90, '2025-11-13 13:01:00.002', NULL),
(20011, 10011, 1011, 'Bateria 60Ah M60AD (Moura)', 1, 410.00, '2025-11-13 13:01:00.002', NULL),
(20012, 10012, 1012, 'Lâmpada H4 Night Breaker (Osram)', 1, 75.00, '2025-11-13 13:01:00.002', NULL),
(20013, 10013, 1013, 'Pivô de suspensão Corsa (Nakata)', 2, 65.00, '2025-11-13 13:01:00.002', NULL),
(20014, 10014, 1014, 'Filtro de cabine Corolla (Bosch)', 1, 49.90, '2025-11-13 13:01:00.002', NULL),
(20015, 10015, 1015, 'Tensor correia dentada Gol EA111 (SKF)', 1, 130.00, '2025-11-13 13:01:00.002', NULL),
(20016, 10016, 1016, 'Radiador de água Celta/Prisma (Valeo)', 1, 399.00, '2025-11-13 13:01:00.002', NULL),
(20017, 10017, 1017, 'Junta Homocinética Ford Ka 1.0 (Nakata)', 1, 179.90, '2025-11-13 13:01:00.002', NULL),
(20018, 10018, 1018, 'Fluido de freio DOT4 500ml (TRW)', 1, 22.50, '2025-11-13 13:01:00.002', NULL),
(20019, 10019, 1019, 'Bobina de ignição Fox 1.6 (NGK)', 1, 199.00, '2025-11-13 13:01:00.002', NULL),
(20020, 10020, 1020, 'Óleo câmbio automático ATF 1L (Monroe)', 5, 75.00, '2025-11-13 13:01:00.002', NULL),
(20021, 10021, 1021, 'Palheta limpador Silicone 20\" (Bosch)', 1, 35.00, '2025-11-13 13:01:00.002', NULL),
(20022, 10022, 1022, 'Sonda Lambda VW UP TSI (NGK)', 1, 280.00, '2025-11-13 13:01:00.002', NULL),
(20023, 10023, 1023, 'Pastilha de freio Hilux 2.8 (TRW)', 1, 259.90, '2025-11-13 13:01:00.002', NULL),
(20024, 10024, 1024, 'Amortecedor traseiro Onix (Monroe)', 2, 299.00, '2025-11-13 13:01:00.002', NULL),
(20025, 10025, 1025, 'Kit correia alternador Cruze 1.8 (SKF)', 1, 210.00, '2025-11-13 13:01:00.002', NULL),
(20026, 10026, 1026, 'Bateria 70Ah HG70ND (Heliar)', 1, 519.00, '2025-11-13 13:01:00.002', NULL),
(20027, 10027, 1027, 'Lâmpada H7 X-treme Vision (Philips)', 1, 110.00, '2025-11-13 13:01:00.002', NULL),
(20028, 10028, 1028, 'Válvula termostática Palio Fire (MTE)', 1, 85.00, '2025-11-13 13:01:00.002', NULL),
(20029, 10029, 1029, 'Filtro de combustível Gol G5 (Bosch)', 1, 25.00, '2025-11-13 13:01:00.002', NULL),
(20030, 10030, 1030, 'Aditivo radiador Paraflu Bio 1L', 2, 32.00, '2025-11-13 13:01:00.002', NULL),
(20031, 10031, 1031, 'Cabo de vela Celta 1.0 (NGK)', 1, 115.00, '2025-11-13 13:01:00.002', NULL),
(20032, 10032, 1032, 'Bico injetor Peugeot 308 1.6 THP (Bosch)', 1, 450.00, '2025-11-13 13:01:00.002', NULL),
(20033, 10033, 1033, 'Disco de freio traseiro Jetta TSI (TRW)', 2, 199.00, '2025-11-13 13:01:00.002', NULL),
(20034, 10034, 1034, 'Kit batente amortecedor Ford Ka (Nakata)', 2, 120.00, '2025-11-13 13:01:00.002', NULL),
(20035, 10035, 1035, 'Rolamento roda dianteira Gol G5 (SKF)', 1, 145.00, '2025-11-13 13:01:00.002', NULL);
