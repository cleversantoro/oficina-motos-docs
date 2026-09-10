
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_certificacoes`
--

CREATE TABLE `cad_mecanicos_certificacoes` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint DEFAULT NULL,
  `Titulo` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Instituicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Conclusao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Codigo_Certificacao` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_certificacoes`
--

INSERT INTO `cad_mecanicos_certificacoes` (`Id`, `Mecanico_Id`, `Especialidade_Id`, `Titulo`, `Instituicao`, `Data_Conclusao`, `Data_Validade`, `Codigo_Certificacao`, `Created_At`, `Updated_At`) VALUES
(1, 2, 2, 'Certificacao Avancada em Diagnostico Eletrico', 'Bosch', '2022-07-15', '2025-07-14', 'BOSCH-EL-2022', '2025-10-14 02:17:24.382057', NULL),
(2, 1, 4, 'Transmissao Automatica Nivel 1', 'SENAI', '2021-02-10', '2024-02-09', 'SENAI-TR-2021', '2025-11-13 14:05:00.000000', NULL),
(3, 3, 3, 'Freios ABS/ESP', 'MTE-THOMSON', '2022-11-05', '2025-11-04', 'MTE-FR-2022', '2025-11-13 14:05:00.000000', NULL),
(4, 4, 5, 'Diagnostico com Osciloscopio', 'Bosch', '2023-01-20', '2026-01-19', 'BOSCH-DIAG-2023', '2025-11-13 14:05:00.000000', NULL),
(5, 5, 6, 'Injecao Direta GDI', 'SENAI', '2023-04-15', '2026-04-14', 'SENAI-GDI-2023', '2025-11-13 14:05:00.000000', NULL),
(6, 6, 7, 'Climatizacao Automotiva Avancada', 'DENSO', '2021-07-10', '2024-07-09', 'DENSO-AC-2021', '2025-11-13 14:05:00.000000', NULL),
(7, 7, 8, 'Reparo Estrutural', 'Cesvi Brasil', '2022-09-01', '2025-08-31', 'CESVI-FUN-2022', '2025-11-13 14:05:00.000000', NULL),
(8, 8, 9, 'Colorimetria Digital', 'PPG', '2022-05-25', '2025-05-24', 'PPG-COL-2022', '2025-11-13 14:05:00.000000', NULL),
(9, 10, 11, 'Calibracao de Radar e Camera ADAS', 'Bosch', '2023-06-12', '2026-06-11', 'BOSCH-ADAS-2023', '2025-11-13 14:05:00.000000', NULL),
(10, 11, 12, 'Seguranca em Veiculos Hibridos', 'SENAI', '2023-02-28', '2026-02-27', 'SENAI-HIBRID-2023', '2025-11-13 14:05:00.000000', NULL),
(11, 12, 13, 'Motores Diesel Common Rail', 'Cummins', '2020-10-10', '2024-10-09', 'CUMMINS-CR-2020', '2025-11-13 14:05:00.000000', NULL),
(12, 13, 14, 'Instalador GNV 5 Geracao', 'INMETRO', '2023-08-01', '2026-07-31', 'INMETRO-GNV-2023', '2025-11-13 14:05:00.000000', NULL),
(13, 16, 17, 'Instalador de Som High-End', 'Pioneer', '2021-12-05', '2024-12-04', 'PIO-SOM-2021', '2025-11-13 14:05:00.000000', NULL),
(14, 17, 18, 'Remapeamento de ECU', 'Alientech', '2022-10-20', '2025-10-19', 'ALIEN-REMAP-2022', '2025-11-13 14:05:00.000000', NULL),
(15, 18, 19, 'Restauracao e Fabricacao', 'Instituto Auto Antigo', '2019-01-15', '2029-01-14', 'IAA-REST-2019', '2025-11-13 14:05:00.000000', NULL),
(16, 19, 20, 'Sistemas de Direcao Eletrica', 'SENAI', '2022-04-10', '2025-04-09', 'SENAI-EPS-2022', '2025-11-13 14:05:00.000000', NULL),
(17, 21, 22, 'Tecnicas de Martelinho', 'FastPDR', '2023-05-01', '2026-04-30', 'PDR-MARTEL-2023', '2025-11-13 14:05:00.000000', NULL),
(18, 22, 23, 'Polimento e Vitrificacao', 'Meguiars', '2021-09-18', '2024-09-17', 'MEG-POLI-2021', '2025-11-13 14:05:00.000000', NULL),
(19, 23, 24, 'Sistemas Start-Stop', 'Moura', '2022-03-14', '2025-03-13', 'MOURA-SS-2022', '2025-11-13 14:05:00.000000', NULL),
(20, 24, 25, 'Diagnostico de Rede CAN', 'SENAI', '2021-06-20', '2024-06-19', 'SENAI-CAN-2021', '2025-11-13 14:05:00.000000', NULL),
(21, 25, 26, 'Reparo de ECU Nivel Avancado', 'AutoEletronica', '2023-01-30', '2026-01-29', 'AE-ECU-2023', '2025-11-13 14:05:00.000000', NULL),
(22, 26, 27, 'Imobilizadores', 'Chiptronic', '2022-08-11', '2025-08-10', 'CHIP-IMO-2022', '2025-11-13 14:05:00.000000', NULL),
(23, 28, 29, 'Sistemas 4x4 e Diferenciais', 'ZF', '2022-02-15', '2025-02-14', 'ZF-4X4-2022', '2025-11-13 14:05:00.000000', NULL),
(24, 29, 30, 'Mecanica de Alta Cilindrada', 'Honda', '2021-11-20', '2024-11-19', 'HONDA-MOTO-2021', '2025-11-13 14:05:00.000000', NULL),
(25, 30, 31, 'Motores de Popa Yamaha', 'Yamaha Nautica', '2022-01-10', '2025-01-09', 'YAMAHA-NAUT-2022', '2025-11-13 14:05:00.000000', NULL),
(26, 31, 32, 'Hidraulica de Maquinas', 'Caterpillar', '2019-09-05', '2024-09-04', 'CAT-HID-2019', '2025-11-13 14:05:00.000000', NULL),
(27, 32, 33, 'Cambio DSG e Powershift', 'SENAI', '2023-03-20', '2026-03-19', 'SENAI-DSG-2023', '2025-11-13 14:05:00.000000', NULL),
(28, 33, 34, 'Metrologia de Retifica', 'MWM', '2020-02-01', '2025-01-31', 'MWM-RET-2020', '2025-11-13 14:05:00.000000', NULL),
(29, 4, 2, 'Eletrica Basica Automotiva', 'SENAI', '2022-03-01', '2025-02-28', 'SENAI-EL-2022', '2025-11-13 14:05:00.000000', NULL),
(30, 1, 1, 'Injecao Eletronica Avancada', 'Bosch', '2022-05-10', '2025-05-09', 'BOSCH-INJ-2022', '2025-11-13 14:05:00.000000', NULL),
(31, 12, 1, 'Reparo de Motor Diesel Pesado', 'Scania', '2021-08-15', '2024-08-14', 'SCANIA-MOT-2021', '2025-11-13 14:05:00.000000', NULL);
