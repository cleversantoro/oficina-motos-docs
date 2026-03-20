
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas`
--

CREATE TABLE `est_pecas` (
  `Id` bigint NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `fabricante_id` bigint DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `localizacao_id` bigint DEFAULT NULL,
  `preco_unitario` decimal(12,2) NOT NULL,
  `quantidade` int NOT NULL DEFAULT '0',
  `estoque_minimo` int DEFAULT '0',
  `estoque_maximo` int DEFAULT '0',
  `unidade` varchar(10) DEFAULT 'UN',
  `status` varchar(20) DEFAULT 'Ativo',
  `observacoes` text,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas`
--

INSERT INTO `est_pecas` (`Id`, `codigo`, `descricao`, `fabricante_id`, `categoria_id`, `localizacao_id`, `preco_unitario`, `quantidade`, `estoque_minimo`, `estoque_maximo`, `unidade`, `status`, `observacoes`, `data_cadastro`, `created_at`, `updated_at`) VALUES
(1001, 'FLT-OL-FOX1', 'Filtro de óleo VW Fox 1.6 8v (Bosch)', 1, 1, 1, 29.90, 25, 5, 50, 'UN', 'Ativo', 'Aplicação: EA111/EA113', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1002, 'FLT-AR-HB20', 'Filtro de ar Hyundai HB20 1.0/1.6 (NGK)', 2, 1, 2, 39.50, 18, 5, 40, 'UN', 'Ativo', 'Compatível 2012–2019', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1003, 'PST-FREIO-GOL', 'Pastilha de freio dianteira Gol G5/G6 (TRW)', 3, 3, 3, 119.90, 12, 4, 30, 'JGO', 'Ativo', 'Jogo com 4 peças', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1004, 'AMT-FR-STR', 'Amortecedor dianteiro Strada (Monroe)', 5, 4, 5, 349.00, 6, 2, 12, 'UN', 'Ativo', 'Linha Original', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1005, 'COR-DENT-PAL', 'Correia dentada Palio 1.0/1.3 (SKF)', 4, 2, 4, 89.00, 15, 3, 25, 'UN', 'Ativo', 'Verificar tensor', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1006, 'VLG-IGN-ONIX', 'Vela de ignição Onix 1.0 (NGK)', 2, 5, 1, 45.00, 40, 10, 80, 'UN', 'Ativo', 'Jogo com 4 unidades', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1007, 'BMP-COMB-FIT', 'Bomba de combustível Honda Fit 1.4/1.5 (Bosch)', 1, 6, 2, 289.90, 8, 3, 15, 'UN', 'Ativo', 'Compatível 2009-2014', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1008, 'DSC-FREIO-CIV', 'Disco de freio dianteiro Civic (TRW)', 3, 3, 3, 215.50, 10, 4, 20, 'PAR', 'Ativo', 'Par, ventilado', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1009, 'KIT-EMB-UNO', 'Kit de embreagem Uno Fire 1.0 (SKF)', 4, 7, 4, 450.00, 5, 2, 10, 'KIT', 'Ativo', 'Platô + Disco + Rolamento', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1010, 'OLEO-5W30-SINT', 'Óleo de motor 5W30 Sintético (Monroe)', 5, 8, 5, 59.90, 50, 20, 100, 'L', 'Ativo', 'API SN', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1011, 'BAT-MOURA-60A', 'Bateria 60Ah M60AD (Moura)', 6, 9, 1, 410.00, 10, 5, 20, 'UN', 'Ativo', '18 meses garantia', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1012, 'LAMP-H4-OSRAM', 'Lâmpada H4 Night Breaker (Osram)', 7, 10, 2, 75.00, 30, 10, 60, 'PAR', 'Ativo', 'Super Branca', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1013, 'PIVO-SUSP-CORS', 'Pivô de suspensão Corsa (Nakata)', 8, 4, 3, 65.00, 15, 5, 30, 'UN', 'Ativo', 'Lado Esquerdo/Direito', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1014, 'FLT-CAB-COROL', 'Filtro de cabine Corolla (Bosch)', 1, 1, 4, 49.90, 20, 10, 40, 'UN', 'Ativo', 'Carvão ativado', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1015, 'TENSOR-COR-GOL', 'Tensor correia dentada Gol EA111 (SKF)', 4, 2, 5, 130.00, 12, 3, 25, 'UN', 'Ativo', 'Apenas tensor', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1016, 'RAD-AGUA-CELTA', 'Radiador de água Celta/Prisma (Valeo)', 9, 11, 1, 399.00, 4, 2, 8, 'UN', 'Ativo', 'Com A/C', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1017, 'HOMOCIN-KA', 'Junta Homocinética Ford Ka 1.0 (Nakata)', 8, 7, 2, 179.90, 8, 3, 15, 'KIT', 'Ativo', 'Kit completo com coifa', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1018, 'FLUIDO-FREIO-DOT4', 'Fluido de freio DOT4 500ml (TRW)', 3, 8, 3, 22.50, 60, 20, 100, 'UN', 'Ativo', 'Sintético', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1019, 'BOB-IGN-FOX', 'Bobina de ignição Fox 1.6 (NGK)', 2, 5, 4, 199.00, 10, 4, 20, 'UN', 'Ativo', '4 pinos', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1020, 'OLEO-CAMBIO-ATF', 'Óleo câmbio automático ATF 1L (Monroe)', 5, 8, 5, 75.00, 25, 10, 50, 'L', 'Ativo', 'Dexron VI', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1021, 'PALHETA-SL-20', 'Palheta limpador Silicone 20\" (Bosch)', 1, 12, 1, 35.00, 30, 10, 60, 'UN', 'Ativo', 'Aerofit', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1022, 'SONDA-LAMBDA-UP', 'Sonda Lambda VW UP TSI (NGK)', 2, 6, 2, 280.00, 7, 3, 15, 'UN', 'Ativo', 'Pré-catalisador', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1023, 'PST-FREIO-HILUX', 'Pastilha de freio Hilux 2.8 (TRW)', 3, 3, 3, 259.90, 8, 3, 15, 'JGO', 'Ativo', 'Cerâmica', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1024, 'AMT-TR-ONIX', 'Amortecedor traseiro Onix (Monroe)', 5, 4, 5, 299.00, 6, 2, 12, 'UN', 'Ativo', 'Linha OESpectrum', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1025, 'KIT-COR-ALT-CRUZE', 'Kit correia alternador Cruze 1.8 (SKF)', 4, 2, 4, 210.00, 10, 3, 20, 'KIT', 'Ativo', 'Correia + Tensor', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1026, 'BAT-HELIAR-70A', 'Bateria 70Ah HG70ND (Heliar)', 10, 9, 1, 519.00, 8, 3, 15, 'UN', 'Ativo', '24 meses garantia', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1027, 'LAMP-H7-PHILIPS', 'Lâmpada H7 X-treme Vision (Philips)', 11, 10, 2, 110.00, 20, 5, 40, 'PAR', 'Ativo', '+130% luz', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1028, 'TERM-AGUA-PALIO', 'Válvula termostática Palio Fire (MTE)', 12, 11, 3, 85.00, 15, 5, 30, 'UN', 'Ativo', 'Completa com carcaça', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1029, 'FLT-COMB-GOLG5', 'Filtro de combustível Gol G5 (Bosch)', 1, 1, 4, 25.00, 50, 15, 100, 'UN', 'Ativo', 'Filtro externo', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1030, 'ADIT-RAD-PARAFLU', 'Aditivo radiador Paraflu Bio 1L', 13, 8, 5, 32.00, 40, 15, 80, 'L', 'Ativo', 'Rosa, orgânico', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1031, 'CABO-VELA-CELTA', 'Cabo de vela Celta 1.0 (NGK)', 2, 5, 1, 115.00, 20, 5, 40, 'JGO', 'Ativo', 'Silicone', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1032, 'BICO-INJETOR-308', 'Bico injetor Peugeot 308 1.6 THP (Bosch)', 1, 6, 2, 450.00, 4, 2, 8, 'UN', 'Inativo', 'Injeção direta - DESCONTINUADO', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1033, 'DSC-FREIO-TR-JETTA', 'Disco de freio traseiro Jetta TSI (TRW)', 3, 3, 3, 199.00, 10, 4, 20, 'PAR', 'Ativo', 'Sólido', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1034, 'KIT-BAT-AMT-KA', 'Kit batente amortecedor Ford Ka (Nakata)', 8, 4, 4, 120.00, 15, 5, 30, 'KIT', 'Ativo', 'Dianteiro (Par)', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1035, 'ROLAMENTO-RODA-GOL', 'Rolamento roda dianteira Gol G5 (SKF)', 4, 7, 5, 145.00, 10, 4, 20, 'UN', 'Ativo', 'Com ABS', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL);
