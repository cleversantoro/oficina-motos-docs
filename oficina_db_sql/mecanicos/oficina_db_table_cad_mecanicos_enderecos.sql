
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_enderecos`
--

CREATE TABLE `cad_mecanicos_enderecos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Despejando dados para a tabela `cad_mecanicos_enderecos`
--

INSERT INTO `cad_mecanicos_enderecos` (`Id`, `Mecanico_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Residencial', '01001000', 'Rua Alfa', '120', 'Centro', 'Sao Paulo', 'SP', 'Brasil', 'Apto 32', 1, '2025-10-14 02:17:24.366380', NULL),
(2, 2, 'Residencial', '02002000', 'Rua Beta', '45', 'Vila Nova', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(3, 3, 'Residencial', '03003000', 'Avenida Gama', '678', 'Centro', 'Sao Paulo', 'SP', 'Brasil', 'Casa 2', 1, '2025-11-13 14:04:00.000000', NULL),
(4, 4, 'Residencial', '04004000', 'Rua Delta', '100', 'Jardins', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(5, 5, 'Residencial', '20000100', 'Rua Epsilon', '210', 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil', 'Apto 501', 1, '2025-11-13 14:04:00.000000', NULL),
(6, 6, 'Residencial', '30000200', 'Rua Zeta', '320', 'Savassi', 'Belo Horizonte', 'MG', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(7, 7, 'Residencial', '40000300', 'Avenida Eta', '430', 'Barra', 'Salvador', 'BA', 'Brasil', 'Bloco A', 1, '2025-11-13 14:04:00.000000', NULL),
(8, 8, 'Residencial', '50000400', 'Rua Teta', '540', 'Boa Viagem', 'Recife', 'PE', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(9, 9, 'Residencial', '60000500', 'Rua Iota', '650', 'Meireles', 'Fortaleza', 'CE', 'Brasil', 'Apto 1102', 1, '2025-11-13 14:04:00.000000', NULL),
(10, 10, 'Residencial', '70000600', 'Rua Kappa', '760', 'Asa Sul', 'Brasilia', 'DF', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(11, 11, 'Residencial', '80000700', 'Avenida Lambda', '870', 'Batel', 'Curitiba', 'PR', 'Brasil', 'Casa 10', 1, '2025-11-13 14:04:00.000000', NULL),
(12, 12, 'Residencial', '90000800', 'Rua Mi', '980', 'Moinhos de Vento', 'Porto Alegre', 'RS', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(13, 13, 'Residencial', '05005000', 'Rua Ni', '111', 'Perdizes', 'Sao Paulo', 'SP', 'Brasil', 'Apto 33', 1, '2025-11-13 14:04:00.000000', NULL),
(14, 14, 'Residencial', '06006000', 'Rua Xi', '222', 'Moema', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(15, 15, 'Residencial', '07007000', 'Avenida Omicron', '333', 'Tatuape', 'Sao Paulo', 'SP', 'Brasil', 'Fundos', 1, '2025-11-13 14:04:00.000000', NULL),
(16, 16, 'Residencial', '08008000', 'Rua Pi', '444', 'Mooca', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(17, 17, 'Residencial', '09009000', 'Rua Ro', '555', 'Ipiranga', 'Sao Paulo', 'SP', 'Brasil', 'Apto 12', 1, '2025-11-13 14:04:00.000000', NULL),
(18, 18, 'Residencial', '11011000', 'Rua Sigma', '666', 'Santana', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(19, 19, 'Residencial', '12012000', 'Avenida Tau', '777', 'Saude', 'Sao Paulo', 'SP', 'Brasil', 'Bloco B Apto 101', 1, '2025-11-13 14:04:00.000000', NULL),
(20, 20, 'Residencial', '13013000', 'Rua Upsilon', '888', 'Liberdade', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(21, 21, 'Residencial', '14014000', 'Rua Fi', '999', 'Consolacao', 'Sao Paulo', 'SP', 'Brasil', 'Apto 45', 1, '2025-11-13 14:04:00.000000', NULL),
(22, 22, 'Residencial', '15015000', 'Rua Chi', '1010', 'Bela Vista', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(23, 23, 'Residencial', '16016000', 'Avenida Psi', '1212', 'Cambuci', 'Sao Paulo', 'SP', 'Brasil', 'Casa 3', 1, '2025-11-13 14:04:00.000000', NULL),
(24, 24, 'Residencial', '17017000', 'Rua Omega', '1313', 'Aclimacao', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(25, 25, 'Residencial', '21021000', 'Rua Alfa 2', '1414', 'Lapa', 'Sao Paulo', 'SP', 'Brasil', 'Apto 222', 1, '2025-11-13 14:04:00.000000', NULL),
(26, 26, 'Residencial', '22022000', 'Rua Beta 2', '1515', 'Pinheiros', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(27, 27, 'Residencial', '23023000', 'Avenida Gama 2', '1616', 'Vila Madalena', 'Sao Paulo', 'SP', 'Brasil', 'Apto 50', 1, '2025-11-13 14:04:00.000000', NULL),
(28, 28, 'Residencial', '24024000', 'Rua Delta 2', '1717', 'Itaim Bibi', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(29, 29, 'Residencial', '25025000', 'Rua Epsilon 2', '1818', 'Butanta', 'Sao Paulo', 'SP', 'Brasil', 'Casa 1', 1, '2025-11-13 14:04:00.000000', NULL),
(30, 30, 'Residencial', '26026000', 'Rua Zeta 2', '1919', 'Morumbi', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(31, 31, 'Residencial', '27027000', 'Avenida Eta 2', '2020', 'Santo Amaro', 'Sao Paulo', 'SP', 'Brasil', 'Apto 91', 1, '2025-11-13 14:04:00.000000', NULL);
