
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_documentos`
--

CREATE TABLE `cad_clientes_documentos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Documento` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Orgao_Expedidor` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_documentos`
--

INSERT INTO `cad_clientes_documentos` (`Id`, `Cliente_Id`, `Tipo`, `Documento`, `Data_Emissao`, `Data_Validade`, `Orgao_Expedidor`, `Principal`, `Created_At`, `Updated_At`) VALUES
(11001, 13, 'CPF', '11122233301', '2005-01-10', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11002, 14, 'CPF', '22233344402', '2013-05-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11003, 15, 'CPF', '33344455503', '1995-03-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11004, 16, 'CPF', '44455566604', '2018-02-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11005, 17, 'CPF', '55566677705', '2008-09-05', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11006, 18, 'CPF', '66677788806', '2010-11-12', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11007, 19, 'CPF', '77788899907', '2006-07-07', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11008, 20, 'CPF', '88899900008', '2016-04-18', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11009, 21, 'CPF', '99900011109', '1999-01-30', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11010, 22, 'CPF', '00011122210', '2011-06-22', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11011, 23, 'CPF', '11122233311', '2004-08-14', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11012, 24, 'CPF', '22233344412', '2009-10-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11013, 25, 'CPF', '33344455513', '2007-03-25', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11014, 26, 'CPF', '44455566614', '2014-11-08', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11015, 27, 'CPF', '55566677715', '2000-12-19', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11016, 28, 'CNPJ', '10000001000110', '2010-01-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11017, 29, 'CNPJ', '10000002000120', '2012-03-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11018, 30, 'CNPJ', '10000003000130', '2008-05-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11019, 31, 'CNPJ', '10000004000140', '2015-07-10', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11020, 32, 'CNPJ', '10000005000150', '2018-02-05', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11021, 33, 'CNPJ', '10000006000160', '2019-11-11', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11022, 34, 'CNPJ', '10000007000170', '2017-09-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11023, 35, 'CNPJ', '10000008000180', '2014-04-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11024, 36, 'CNPJ', '10000009000190', '2016-06-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11025, 37, 'CNPJ', '10000010000100', '2013-10-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11026, 38, 'CNPJ', '10000011000111', '2011-08-25', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11027, 39, 'CNPJ', '10000012000122', '2009-12-30', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11028, 40, 'CNPJ', '10000013000133', '2010-02-18', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11029, 41, 'CNPJ', '10000014000144', '2007-05-14', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11030, 42, 'CNPJ', '10000015000155', '2014-01-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL);
