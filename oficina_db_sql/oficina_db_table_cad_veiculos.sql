
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos`
--

CREATE TABLE `cad_veiculos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Placa` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Modelo_Id` bigint DEFAULT NULL,
  `Ano_Fab` int DEFAULT NULL,
  `Ano_Mod` int DEFAULT NULL,
  `Cor` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Chassi` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Renavam` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Combustivel` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos`
--

INSERT INTO `cad_veiculos` (`Id`, `Cliente_Id`, `Placa`, `Modelo_Id`, `Ano_Fab`, `Ano_Mod`, `Cor`, `Chassi`, `Renavam`, `KM`, `Combustivel`, `Observacao`, `Principal`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'ABC1D23', 1, 2021, 0, 'Prata', '9BRBLW12345678901', '01234567890', '10.000', 'Gasolina', 'Veículo principal', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(2, 2, 'EFG4H56', 2, 2020, 0, 'Preto', '9BGBCW23456789012', '11223344556', '10.000', 'Flex', 'Uso diário', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(3, 3, 'IJK7L89', 3, 2022, 0, 'Branco', '9BWZZZ377VT004251', '22334455667', '10.000', 'Gasolina', 'Veículo de testes', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(4, 4, 'MNO0P12', 4, 2019, 0, 'Vermelho', '8APZZZ15678945012', '65465467987', '10.000', 'Flex', 'Uso particular', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(5, 7, 'QRS3T45', 5, 2021, 0, 'Azul', '9BFZXXE6549873210', '33445566778', '10.000', 'Diesel', 'Frota TechFleet', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(6, 8, 'XYZ9A87', 6, 2020, 2020, 'Cinza', '9CABCDEF123456789', '44556677889', '10.000', 'Gasolina', 'Revisão em dia', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(7, 9, 'BCD8E76', 7, 2021, 2021, 'Branco', '9DBCDEFG234567890', '55667788990', '10.000', 'Flex', 'Segundo dono', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(8, 10, 'FGH7I65', 8, 2022, 2022, 'Prata', '9ECDEFGH345678901', '66778899001', '10.000', 'Flex', 'Uso familiar', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(10, 12, 'NOP5Q43', 10, 2021, 2021, 'Azul', '9GDEFGHB567890123', '88990011223', '10.000', 'Gasolina', 'Pouco rodado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(11, 13, 'RST4U32', 11, 2020, 2020, 'Vermelho', '9HDEFGHJ678901234', '99001122334', '10.000', 'Flex', '', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(12, 14, 'VWX3Y21', 12, 2019, 2019, 'Preto', '9IDEFGH K789012345', '00112233445', '10.000', 'Gasolina', 'Veículo de luxo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(13, 15, 'ZAB2C10', 13, 2022, 2022, 'Branco', '9JDEFGH L890123456', '118573344556', '10.000', 'Flex', 'Blindado', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(14, 16, 'CDE1F09', 14, 2021, 2022, 'Cinza', '9KDEFGH M901234567', '22334464667', '10.000', 'Gasolina', 'Teto solar', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(15, 17, 'FGH0I98', 15, 2018, 2019, 'Prata', '9LDEFGH N012345678', '33445346778', '10.000', 'Flex', 'Garantia de fábrica', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(16, 18, 'JKL9M87', 16, 2021, 2021, 'Verde', '9MDEFGH P123456789', '44554677889', '10.000', 'Diesel', '4x4', 1, 0, '2025-11-13 12:17:00.000000', '2025-11-13 21:11:55.430787'),
(17, 19, 'NOP8Q76', 17, 2019, 2019, 'Azul', '9NDEFGH Q234567890', '556673665990', '10.000', 'Diesel', '7 lugares', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(18, 20, 'RST7U65', 18, 2020, 2021, 'Branco', '9PDEFGH R345678901', '667772299001', '10.000', 'Híbrido', 'Sistema de segurança avançado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(19, 21, 'VWX6Y54', 19, 2022, 2022, 'Preto', '9QDEFGH S456789012', '778898900112', '10.000', 'Diesel', 'Pneus novos', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(20, 22, 'ZAB5C43', 20, 2018, 2018, 'Azul', '9RDEFGH T567890123', '889930011223', '10.000', 'Gasolina', 'Tração integral', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(21, 23, 'CDE4F32', 21, 2019, 2019, 'Vermelho', '9SDEFGH U678901234', '990001122334', '10.000', 'Gasolina', 'Importado', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(22, 24, 'FGH3I21', 22, 2021, 2021, 'Preto', '9TDEFGH V789012345', '0011223433445', '10.000', 'Híbrido', 'Veículo de diretoria', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(23, 25, 'JKL2M10', 23, 2020, 2020, 'Amarelo', '9UDEFGH W890123456', '11224544557', '10.000', 'Gasolina', 'Esportivo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(24, 26, 'NOP1Q09', 24, 2019, 2020, 'Verde', '9VDEFGH X901234567', '22334574668', '10.000', 'Gasolina', '', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(25, 27, 'RST0U98', 25, 2022, 2022, 'Vermelho', '9WDEFGH Y012345678', '33445566779', '10.000', 'Flex', 'Customizado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(26, 28, 'VWX9Y87', 26, 2021, 2021, 'Branco', '9XDEFGH Z123456789', '4455253477890', '10.000', 'Flex', 'Teto panorâmico', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(27, 29, 'ZAB8C76', 27, 2020, 2020, 'Prata', '9YDEFGH1234567890', '55667788991', '10.000', 'Elétrico', '100% elétrico', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(28, 30, 'CDE7F65', 28, 2022, 2022, 'Preto', '9ZDEFGH2345678901', '66778899002', '10.000', 'Diesel', 'Capota marítima', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(29, 31, 'FGH6I54', 29, 2018, 2018, 'Laranja', '9ADEFGH3456789012', '77889900113', '10.000', 'Gasolina', 'Muscle car', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(30, 32, 'JKL5M43', 30, 2017, 2017, 'Cinza', '9BDEFGH4567890123', '88990011224', '10.000', 'Gasolina', 'Veículo de colecionador', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(31, 33, 'NOP4Q32', 31, 2021, 2022, 'Amarelo', '9CDEFGH5678901234', '99001122335', '10.000', 'Gasolina', 'Acessórios off-road', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(32, 34, 'RST3U21', 32, 2023, 2023, 'Azul', '9DDEFGH6789012345', '00112233446', '10.000', 'Elétrico', 'Carro novo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(33, 35, 'VWX2Y10', 33, 2023, 2023, 'Branco', '9EDEFGH7890123456', '11223344558', '10.000', 'Híbrido', 'Lançamento', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(34, 36, 'ZAB1C09', 34, 2022, 2022, 'Preto', '9FDEFGH8901234567', '22334455669', '10.000', 'Elétrico', 'Autopilot', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(35, 37, 'CDE0F98', 35, 2020, 2020, 'Branco', '9GDEFGH9012345678', '33445566780', '10.000', 'Diesel', 'Veículo utilitário', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513');
