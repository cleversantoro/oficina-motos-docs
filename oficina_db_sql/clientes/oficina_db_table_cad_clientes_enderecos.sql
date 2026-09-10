
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_enderecos`
--

CREATE TABLE `cad_clientes_enderecos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Cep` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logradouro` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_enderecos`
--

INSERT INTO `cad_clientes_enderecos` (`Id`, `Cliente_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, '01310-100', 'Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', 'Brasil', 'Apto 101', 1, '2025-10-14 00:15:25.000000', NULL),
(2, 2, 1, '04001-001', 'Rua Vergueiro', '250', 'Paraíso', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-10-14 00:15:25.000000', NULL),
(3, 3, 1, '04567-020', 'Av. Faria Lima', '1500', 'Itaim Bibi', 'São Paulo', 'SP', 'Brasil', 'Conj. 1207', 1, '2025-10-14 00:15:25.000000', NULL),
(4, 4, 2, '06000-020', 'Rua do Progresso', '900', 'Centro', 'Osasco', 'SP', 'Brasil', 'Sala 05', 1, '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, '07070-030', 'Rua das Flores', '45', 'Jardim', 'Guarulhos', 'SP', 'Brasil', NULL, 1, '2025-10-14 00:15:25.000000', NULL),
(6, 13, 1, '09010-010', 'Rua Alfa', '10', 'Centro', 'Santo André', 'SP', 'Brasil', 'Apto 11', 1, '2025-11-13 14:05:00.000000', NULL),
(7, 14, 1, '09010-020', 'Rua Beta', '20', 'Jardim', 'Santo André', 'SP', 'Brasil', 'Casa 2', 1, '2025-11-13 14:05:00.000000', NULL),
(8, 15, 1, '09010-030', 'Rua Gama', '30', 'Vila Alpina', 'Santo André', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(9, 16, 1, '09510-010', 'Av. Delta', '40', 'Centro', 'São Caetano do Sul', 'SP', 'Brasil', 'Apto 33', 1, '2025-11-13 14:05:00.000000', NULL),
(10, 17, 1, '09510-020', 'Rua Epsilon', '50', 'Santa Paula', 'São Caetano do Sul', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(11, 18, 1, '09510-030', 'Av. Zeta', '60', 'Olímpico', 'São Caetano do Sul', 'SP', 'Brasil', 'Casa 1', 1, '2025-11-13 14:05:00.000000', NULL),
(12, 19, 1, '09710-010', 'Rua Eta', '70', 'Centro', 'São Bernardo do Campo', 'SP', 'Brasil', 'Apto 44', 1, '2025-11-13 14:05:00.000000', NULL),
(13, 20, 1, '09710-020', 'Rua Teta', '80', 'Baeta Neves', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(14, 21, 1, '09710-030', 'Rua Iota', '90', 'Nova Petrópolis', 'São Bernardo do Campo', 'SP', 'Brasil', 'Bloco B', 1, '2025-11-13 14:05:00.000000', NULL),
(15, 22, 1, '09810-010', 'Rua Kappa', '100', 'Assunção', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(16, 23, 1, '09210-010', 'Rua Lambda', '110', 'Vila Pires', 'Santo André', 'SP', 'Brasil', 'Apto 55', 1, '2025-11-13 14:05:00.000000', NULL),
(17, 24, 1, '09210-020', 'Rua Mi', '120', 'Vila Gilda', 'Santo André', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(18, 25, 1, '09210-030', 'Rua Ni', '130', 'Utinga', 'Santo André', 'SP', 'Brasil', 'Fundos', 1, '2025-11-13 14:05:00.000000', NULL),
(19, 26, 1, '09610-010', 'Rua Xi', '140', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', 'Brasil', 'Apto 66', 1, '2025-11-13 14:05:00.000000', NULL),
(20, 27, 1, '09610-020', 'Rua Omicron', '150', 'Paulicéia', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(21, 28, 3, '04001-010', 'Av. Pi', '160', 'Paraíso', 'São Paulo', 'SP', 'Brasil', 'Galpão 1', 1, '2025-11-13 14:05:00.000000', NULL),
(22, 29, 3, '04001-020', 'Av. Ro', '170', 'Vila Mariana', 'São Paulo', 'SP', 'Brasil', 'Loja A', 1, '2025-11-13 14:05:00.000000', NULL),
(23, 30, 3, '04001-030', 'Av. Sigma', '180', 'Aclimação', 'São Paulo', 'SP', 'Brasil', 'Base 1', 1, '2025-11-13 14:05:00.000000', NULL),
(24, 31, 3, '03010-010', 'Rua Tau', '190', 'Brás', 'São Paulo', 'SP', 'Brasil', 'Depósito', 1, '2025-11-13 14:05:00.000000', NULL),
(25, 32, 3, '03010-020', 'Rua Upsilon', '200', 'Mooca', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(26, 33, 3, '03010-030', 'Rua Fi', '210', 'Tatuapé', 'São Paulo', 'SP', 'Brasil', 'Sala 10', 1, '2025-11-13 14:05:00.000000', NULL),
(27, 34, 3, '05010-010', 'Rua Chi', '220', 'Perdizes', 'São Paulo', 'SP', 'Brasil', 'Consultório 5', 1, '2025-11-13 14:05:00.000000', NULL),
(28, 35, 3, '05010-020', 'Rua Psi', '230', 'Pompéia', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(29, 36, 3, '05010-030', 'Rua Omega', '240', 'Lapa', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(30, 37, 3, '05410-010', 'Rua Alfa 2', '250', 'Pinheiros', 'São Paulo', 'SP', 'Brasil', 'Loja 3', 1, '2025-11-13 14:05:00.000000', NULL),
(31, 38, 3, '05410-020', 'Rua Beta 2', '260', 'Vila Madalena', 'São Paulo', 'SP', 'Brasil', 'Sala 202', 1, '2025-11-13 14:05:00.000000', NULL),
(32, 39, 3, '01010-010', 'Rua Gama 2', '270', 'Centro', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(33, 40, 3, '01010-020', 'Rua Delta 2', '280', 'Consolação', 'São Paulo', 'SP', 'Brasil', 'Loja 1', 1, '2025-11-13 14:05:00.000000', NULL),
(34, 41, 3, '01010-030', 'Rua Epsilon 2', '290', 'Santa Cecília', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(35, 42, 3, '01010-040', 'Rua Zeta 2', '300', 'República', 'São Paulo', 'SP', 'Brasil', 'Box 5', 1, '2025-11-13 14:05:00.000000', NULL);
