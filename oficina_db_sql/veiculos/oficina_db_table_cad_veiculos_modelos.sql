
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_modelos`
--

CREATE TABLE `cad_veiculos_modelos` (
  `Id` bigint NOT NULL,
  `Marca_Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ano_Inicio` int DEFAULT NULL,
  `Ano_Fim` int DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos_modelos`
--

INSERT INTO `cad_veiculos_modelos` (`Id`, `Marca_Id`, `Nome`, `Ano_Inicio`, `Ano_Fim`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Corolla XEi', 2019, NULL, '2025-10-14 00:15:26.000000', NULL),
(2, 2, 'Onix LTZ', 2018, NULL, '2025-10-14 00:15:26.000000', NULL),
(3, 3, 'T-Cross Highline', 2020, NULL, '2025-10-14 00:15:26.000000', NULL),
(4, 4, 'Cronos Precision', 2019, NULL, '2025-10-14 00:15:26.000000', NULL),
(5, 5, 'Ranger XLS', 2017, NULL, '2025-10-14 00:15:26.000000', NULL),
(6, 6, 'Civic Touring', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(7, 7, 'HB20 Diamond', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(8, 8, 'Kicks Exclusive', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(9, 9, 'Kwid Intense', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(10, 10, '208 Griffe', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(11, 11, 'C4 Cactus Shine', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(12, 12, 'C-180 Avantgarde', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(13, 13, '320i GP', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(14, 14, 'A3 Sedan S Line', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(15, 15, 'Sportage EX', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(16, 16, 'Compass Longitude', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(17, 17, 'Discovery Sport SE', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(18, 18, 'XC60 Momentum', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(19, 19, 'L200 Triton Sport', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(20, 20, 'Forester S', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(21, 21, 'CX-5 Touring', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(22, 22, 'UX 250h Dynamic', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(23, 23, 'Cayenne S', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(24, 24, 'F-Pace R-Sport', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(25, 25, 'Cooper S', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(26, 26, 'Tiggo 8 TXS', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(27, 27, 'T40 Plus', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(28, 28, '1500 Rebel', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(29, 29, 'Challenger GT', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(30, 30, '300C', 2017, NULL, '2025-11-13 12:16:00.000000', NULL),
(31, 31, 'Jimny Sierra', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(32, 32, 'Dolphin', 2023, NULL, '2025-11-13 12:16:00.000000', NULL),
(33, 33, 'Haval H6', 2023, NULL, '2025-11-13 12:16:00.000000', NULL),
(34, 34, 'Model 3', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(35, 35, 'Daily 35-150', 2020, NULL, '2025-11-13 12:16:00.000000', NULL);
