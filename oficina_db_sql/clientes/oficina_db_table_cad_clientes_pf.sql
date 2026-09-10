
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_pf`
--

CREATE TABLE `cad_clientes_pf` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Cpf` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Genero` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado_Civil` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profissao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_pf`
--

INSERT INTO `cad_clientes_pf` (`Id`, `Cliente_Id`, `Cpf`, `Rg`, `Data_Nascimento`, `Genero`, `Estado_Civil`, `Profissao`, `Created_At`, `Updated_At`) VALUES
(1, 1, '12345678901', '45.123.987-1', '1990-05-12', 'Feminino', 'Solteira', 'Designer', '2025-10-14 00:15:25.000000', NULL),
(2, 2, '98765432100', '12.987.654-2', '1985-03-22', 'Masculino', 'Casado', 'Analista de Sistemas', '2025-10-14 00:15:25.000000', NULL),
(3, 3, '45678912300', '98.321.456-9', '1993-11-01', 'Feminino', 'Divorciada', 'Administradora', '2025-10-14 00:15:25.000000', NULL),
(4, 4, '74185296300', '74.185.296-3', '1988-07-30', 'Masculino', 'Solteiro', 'Professor', '2025-10-14 00:15:25.000000', NULL),
(5, 5, '36925814700', '36.925.814-7', '1995-01-18', 'Feminino', 'Casada', 'Arquiteta', '2025-10-14 00:15:25.000000', NULL),
(6, 13, '11122233301', '11.222.333-1', '1982-01-15', 'Masculino', 'Casado', 'Engenheiro', '2025-11-13 14:01:00.000000', NULL),
(7, 14, '22233344402', '22.333.444-2', '1995-10-20', 'Feminino', 'Solteira', 'Enfermeira', '2025-11-13 14:01:00.000000', NULL),
(8, 15, '33344455503', '33.444.555-3', '1975-06-05', 'Masculino', 'Casado', 'Motorista', '2025-11-13 14:01:00.000000', NULL),
(9, 16, '44455566604', '44.555.666-4', '2000-02-28', 'Feminino', 'Solteira', 'Estudante', '2025-11-13 14:01:00.000000', NULL),
(10, 17, '55566677705', '55.666.777-5', '1988-09-10', 'Masculino', 'Divorciado', 'Advogado', '2025-11-13 14:01:00.000000', NULL),
(11, 18, '66677788806', '66.777.888-6', '1990-12-01', 'Feminino', 'Casada', 'Autônoma', '2025-11-13 14:01:00.000000', NULL),
(12, 19, '77788899907', '77.888.999-7', '1985-07-14', 'Masculino', 'Solteiro', 'Programador', '2025-11-13 14:01:00.000000', NULL),
(13, 20, '88899900008', '88.999.000-8', '1998-03-03', 'Feminino', 'Solteira', 'Vendedora', '2025-11-13 14:01:00.000000', NULL),
(14, 21, '99900011109', '99.000.111-9', '1979-11-11', 'Masculino', 'Casado', 'Contador', '2025-11-13 14:01:00.000000', NULL),
(15, 22, '00011122210', '00.111.222-0', '1993-08-19', 'Feminino', 'Solteira', 'Dentista', '2025-11-13 14:01:00.000000', NULL),
(16, 23, '11122233311', '11.222.333-1', '1984-04-25', 'Masculino', 'Casado', 'Bancário', '2025-11-13 14:01:00.000000', NULL),
(17, 24, '22233344412', '22.333.444-2', '1991-05-06', 'Feminino', 'Solteira', 'Jornalista', '2025-11-13 14:01:00.000000', NULL),
(18, 25, '33344455513', '33.444.555-3', '1987-02-17', 'Masculino', 'Solteiro', 'Policial', '2025-11-13 14:01:00.000000', NULL),
(19, 26, '44455566614', '44.555.666-4', '1996-09-30', 'Feminino', 'Casada', 'Bióloga', '2025-11-13 14:01:00.000000', NULL),
(20, 27, '55566677715', '55.666.777-5', '1980-12-12', 'Masculino', 'Divorciado', 'Representante Comercial', '2025-11-13 14:01:00.000000', NULL);
