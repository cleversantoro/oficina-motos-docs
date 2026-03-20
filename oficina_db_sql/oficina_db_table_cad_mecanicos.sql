
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos`
--

CREATE TABLE `cad_mecanicos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sobrenome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nome_Social` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Documento_Principal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Documento` int NOT NULL DEFAULT '1',
  `Data_Nascimento` date DEFAULT NULL,
  `Data_Admissao` date NOT NULL,
  `Data_Demissao` date DEFAULT NULL,
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `Especialidade_Principal_Id` bigint DEFAULT NULL,
  `Nivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pleno',
  `Valor_Hora` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Carga_Horaria_Semanal` int NOT NULL DEFAULT '44',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos`
--

INSERT INTO `cad_mecanicos` (`Id`, `Codigo`, `Nome`, `Sobrenome`, `Nome_Social`, `Documento_Principal`, `Tipo_Documento`, `Data_Nascimento`, `Data_Admissao`, `Data_Demissao`, `Status`, `Especialidade_Principal_Id`, `Nivel`, `Valor_Hora`, `Carga_Horaria_Semanal`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(1, 'MEC0001', 'Carlos', 'Silva', NULL, '12345678900', 1, '1985-02-10', '2020-01-15', NULL, 'Ativo', 1, 'Senior', 110.00, 44, 'Responsavel pela bancada de motores e diagnosticos complexos.', '2025-10-14 02:17:24.322444', NULL),
(2, 'MEC0002', 'Fernanda', 'Costa', NULL, '98765432100', 1, '1990-08-22', '2021-05-10', NULL, 'Ativo', 2, 'Pleno', 95.00, 40, 'Foco em diagnostico eletrico e instalacao de acessorios.', '2025-10-14 02:17:24.322444', NULL),
(3, 'MEC0003', 'Joao', 'Pereira', NULL, '44556677889', 1, '1988-11-12', '2019-03-01', NULL, 'Ativo', 3, 'Senior', 105.00, 44, 'Especialista em suspensao, freios e alinhamento.', '2025-10-14 02:17:24.322444', NULL),
(4, 'MEC0004', 'Andre', 'Melo', NULL, '11122233344', 1, '1992-05-15', '2022-01-10', NULL, 'Ativo', 5, 'Pleno', 100.00, 44, 'Especialista em diagnostico com scanner.', '2025-11-13 14:01:00.000000', NULL),
(5, 'MEC0005', 'Bruna', 'Soares', 'Bruno', '22233344455', 1, '1995-01-20', '2022-03-01', NULL, 'Ativo', 6, 'Junior', 80.00, 40, 'Focada em injecao eletronica.', '2025-11-13 14:01:00.000000', NULL),
(6, 'MEC0006', 'Caio', 'Dias', NULL, '33344455566', 1, '1980-07-30', '2018-06-15', NULL, 'Ativo', 7, 'Senior', 115.00, 44, 'Certificado em sistemas de A/C.', '2025-11-13 14:01:00.000000', NULL),
(7, 'MEC0007', 'Daniela', 'Faria', NULL, '44455566677', 1, '1987-09-05', '2020-02-20', NULL, 'Ativo', 8, 'Pleno', 90.00, 44, 'Especialista em funilaria pesada.', '2025-11-13 14:01:00.000000', NULL),
(8, 'MEC0008', 'Eduardo', 'Lima', NULL, '55566677788', 1, '1990-12-11', '2021-08-01', NULL, 'Ativo', 9, 'Pleno', 95.00, 40, 'Pintor com foco em colorimetria.', '2025-11-13 14:01:00.000000', NULL),
(9, 'MEC0009', 'Fabiana', 'Guedes', NULL, '66677788899', 1, '1993-03-25', '2022-05-12', NULL, 'Ativo', 10, 'Junior', 75.00, 44, 'Operadora de maquina de alinhamento 3D.', '2025-11-13 14:01:00.000000', NULL),
(10, 'MEC0010', 'Gustavo', 'Henrique', NULL, '77788899900', 1, '1986-06-18', '2019-11-01', NULL, 'Ativo', 11, 'Senior', 120.00, 44, 'Especialista em calibracao ADAS.', '2025-11-13 14:01:00.000000', NULL),
(11, 'MEC0011', 'Helena', 'Morais', NULL, '88899900011', 1, '1991-10-02', '2023-01-05', NULL, 'Ativo', 12, 'Pleno', 110.00, 40, 'Foco em hibridos e eletricos.', '2025-11-13 14:01:00.000000', NULL),
(12, 'MEC0012', 'Igor', 'Nogueira', NULL, '99900011122', 1, '1983-04-14', '2017-01-20', NULL, 'Ativo', 13, 'Senior', 125.00, 44, 'Vasta experiencia em motores Diesel.', '2025-11-13 14:01:00.000000', NULL),
(13, 'MEC0013', 'Julia', 'Pires', NULL, '00011122233', 1, '1998-02-08', '2023-07-10', NULL, 'Ativo', 14, 'Junior', 80.00, 40, 'Instaladora de GNV certificada.', '2025-11-13 14:01:00.000000', NULL),
(14, 'MEC0014', 'Kleber', 'Ramos', NULL, '11122233355', 1, '1990-08-17', '2021-04-15', NULL, 'Ativo', 15, 'Pleno', 90.00, 44, 'Reparos em vidros e travas.', '2025-11-13 14:01:00.000000', NULL),
(15, 'MEC0015', 'Larissa', 'Sampaio', NULL, '22233344466', 1, '1996-11-29', '2022-10-01', NULL, 'Ativo', 16, 'Junior', 70.00, 44, 'Agil na troca de oleo e filtros.', '2025-11-13 14:01:00.000000', NULL),
(16, 'MEC0016', 'Marcos', 'Teixeira', NULL, '33344455577', 1, '1989-01-03', '2020-09-01', NULL, 'Ativo', 17, 'Pleno', 95.00, 40, 'Especialista em instalacao de som.', '2025-11-13 14:01:00.000000', NULL),
(17, 'MEC0017', 'Natalia', 'Uchoa', NULL, '44455566688', 1, '1994-07-21', '2022-02-11', NULL, 'Ativo', 18, 'Pleno', 100.00, 44, 'Foco em performance e remapeamento.', '2025-11-13 14:01:00.000000', NULL),
(18, 'MEC0018', 'Otavio', 'Viana', NULL, '55566677799', 1, '1975-05-13', '2015-03-10', NULL, 'Ativo', 19, 'Senior', 130.00, 44, 'Mestre em restauracao de classicos.', '2025-11-13 14:01:00.000000', NULL),
(19, 'MEC0019', 'Paula', 'Xavier', NULL, '66677788800', 1, '1988-10-30', '2019-07-20', NULL, 'Ativo', 20, 'Pleno', 105.00, 40, 'Experiencia em direcao hidraulica.', '2025-11-13 14:01:00.000000', NULL),
(20, 'MEC0020', 'Quintino', 'Zabe', NULL, '77788899911', 1, '1992-04-01', '2021-11-15', NULL, 'Ativo', 21, 'Pleno', 90.00, 44, 'Soldador de escapamentos.', '2025-11-13 14:01:00.000000', NULL),
(21, 'MEC0021', 'Rafaela', 'Bastos', NULL, '88899900022', 1, '1997-09-19', '2023-03-01', NULL, 'Ativo', 22, 'Junior', 85.00, 44, 'Treinada em martelinho de ouro.', '2025-11-13 14:01:00.000000', NULL),
(22, 'MEC0022', 'Sergio', 'Campos', NULL, '99900011133', 1, '1985-12-07', '2018-10-01', NULL, 'Ativo', 23, 'Pleno', 95.00, 40, 'Especialista em polimento tecnico.', '2025-11-13 14:01:00.000000', NULL),
(23, 'MEC0023', 'Tais', 'Dourado', NULL, '00011122244', 1, '1990-03-16', '2020-05-05', NULL, 'Ativo', 24, 'Pleno', 100.00, 44, 'Diagnostico de alternadores.', '2025-11-13 14:01:00.000000', NULL),
(24, 'MEC0024', 'Ulisses', 'Esteves', NULL, '11122233366', 1, '1982-08-28', '2017-08-10', NULL, 'Ativo', 25, 'Senior', 115.00, 44, 'Reparo de sistemas de airbag.', '2025-11-13 14:01:00.000000', NULL),
(25, 'MEC0025', 'Valeria', 'Freitas', NULL, '22233344477', 1, '1993-11-14', '2022-06-20', NULL, 'Ativo', 26, 'Pleno', 110.00, 40, 'Programadora de modulos ECU.', '2025-11-13 14:01:00.000000', NULL),
(26, 'MEC0026', 'Wagner', 'Gontijo', NULL, '33344455588', 1, '1987-02-23', '2019-01-15', NULL, 'Ativo', 27, 'Pleno', 100.00, 44, 'Codificacao de chaves.', '2025-11-13 14:01:00.000000', NULL),
(27, 'MEC0027', 'Xenia', 'Horta', NULL, '44455566699', 1, '1995-06-09', '2023-02-01', NULL, 'Ativo', 28, 'Junior', 75.00, 44, 'Borracheira.', '2025-11-13 14:01:00.000000', NULL),
(28, 'MEC0028', 'Yara', 'Ibanez', NULL, '55566677700', 1, '1991-09-27', '2021-03-10', NULL, 'Ativo', 29, 'Pleno', 105.00, 40, 'Especialista em sistemas 4x4.', '2025-11-13 14:01:00.000000', NULL),
(29, 'MEC0029', 'Zaqueu', 'Jales', NULL, '66677788811', 1, '1984-12-15', '2018-12-01', NULL, 'Ativo', 30, 'Pleno', 100.00, 44, 'Mecanico de motocicletas.', '2025-11-13 14:01:00.000000', NULL),
(30, 'MEC0030', 'Aline', 'Barros', NULL, '77788899922', 1, '1989-05-04', '2020-07-01', NULL, 'Ativo', 31, 'Pleno', 110.00, 44, 'Especialista em motores nauticos.', '2025-11-13 14:01:00.000000', NULL),
(31, 'MEC0031', 'Bernardo', 'Costa', NULL, '88899900033', 1, '1981-11-18', '2016-09-01', NULL, 'Ativo', 32, 'Senior', 130.00, 44, 'Operador de maquinas pesadas.', '2025-11-13 14:01:00.000000', NULL),
(32, 'MEC0032', 'Clara', 'Dantas', NULL, '99900011144', 1, '1994-01-26', '2022-09-10', NULL, 'Ativo', 33, 'Pleno', 115.00, 40, 'Foco em cambio automatico.', '2025-11-13 14:01:00.000000', NULL),
(33, 'MEC0033', 'Davi', 'Eiras', NULL, '00011122255', 1, '1986-07-07', '2019-05-15', NULL, 'Ativo', 34, 'Senior', 120.00, 44, 'Especialista em retifica de motor.', '2025-11-13 14:01:00.000000', NULL);
