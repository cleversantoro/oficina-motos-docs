
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades`
--

CREATE TABLE `cad_mecanicos_especialidades` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_especialidades`
--

INSERT INTO `cad_mecanicos_especialidades` (`Id`, `Codigo`, `Nome`, `Descricao`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 'MOTOR', 'Especialista em Motor', 'Manutencao pesada de motores combustion', 1, '2025-10-14 02:17:24.306042', NULL),
(2, 'ELETR', 'Eletrica Automotiva', 'Diagnostico e reparo de sistemas eletricos e eletronicos', 1, '2025-10-14 02:17:24.306042', NULL),
(3, 'SUSPE', 'Suspensao e Freios', 'Ajustes de suspensao, amortecedores e freios', 1, '2025-10-14 02:17:24.306042', NULL),
(4, 'TRANS', 'Transmissao', 'Manutencao de caixas de cambio e transmissao automatica', 1, '2025-10-14 02:17:24.306042', NULL),
(5, 'DIAG', 'Diagnostico Avancado', 'Uso de scanners e ferramentas de diagnostico complexo', 1, '2025-11-13 14:00:00.000000', NULL),
(6, 'INJEC', 'Injecao Eletronica', 'Especialista em sistemas de injecao direta e indireta', 1, '2025-11-13 14:00:00.000000', NULL),
(7, 'ARCON', 'Ar Condicionado', 'Manutencao e reparo de sistemas de climatizacao', 1, '2025-11-13 14:00:00.000000', NULL),
(8, 'FUNIL', 'Funilaria', 'Reparo de lataria e estrutura de veiculos', 1, '2025-11-13 14:00:00.000000', NULL),
(9, 'PINT', 'Pintura Automotiva', 'Preparacao e aplicacao de pintura', 1, '2025-11-13 14:00:00.000000', NULL),
(10, 'ALINH', 'Alinhamento e Balanceamento', 'Servicos de geometria veicular', 1, '2025-11-13 14:00:00.000000', NULL),
(11, 'ADAS', 'Sistemas ADAS', 'Calibracao de sistemas avancados de assistencia ao motorista', 1, '2025-11-13 14:00:00.000000', NULL),
(12, 'HIBRID', 'Veiculos Hibridos/Eletricos', 'Manutencao de sistemas de alta tensao', 1, '2025-11-13 14:00:00.000000', NULL),
(13, 'DIESEL', 'Motores Diesel', 'Manutencao de motores diesel leve e pesado', 1, '2025-11-13 14:00:00.000000', NULL),
(14, 'GNV', 'Gas Natural Veicular', 'Instalacao e manutencao de GNV', 1, '2025-11-13 14:00:00.000000', NULL),
(15, 'VIDROS', 'Vidros e Travas', 'Reparo de maquinas de vidro e travas eletricas', 1, '2025-11-13 14:00:00.000000', NULL),
(16, 'LUBRI', 'Lubrificacao e Filtros', 'Troca de oleo e filtros gerais', 1, '2025-11-13 14:00:00.000000', NULL),
(17, 'SOM', 'Som e Acessorios', 'Instalacao de multimidia e acessorios', 1, '2025-11-13 14:00:00.000000', NULL),
(18, 'TUNING', 'Performance e Tuning', 'Modificacoes para aumento de performance', 1, '2025-11-13 14:00:00.000000', NULL),
(19, 'RESTA', 'Restauracao Classicos', 'Restauracao de veiculos antigos', 1, '2025-11-13 14:00:00.000000', NULL),
(20, 'DIREH', 'Direcao Hidraulica', 'Reparo de sistemas de direcao hidraulica e eletrica', 1, '2025-11-13 14:00:00.000000', NULL),
(21, 'ESCAP', 'Escapamentos', 'Troca e reparo de sistema de exaustao', 1, '2025-11-13 14:00:00.000000', NULL),
(22, 'MARTEL', 'Martelinho de Ouro', 'Reparo de amassados sem pintura', 1, '2025-11-13 14:00:00.000000', NULL),
(23, 'POLIM', 'Polimento e Estetica', 'Servicos de estetica automotiva', 1, '2025-11-13 14:00:00.000000', NULL),
(24, 'BAT', 'Baterias e Alternadores', 'Manutencao de sistema de carga', 1, '2025-11-13 14:00:00.000000', NULL),
(25, 'AIRBAG', 'Airbags', 'Reparo e diagnostico de sistemas de airbag', 1, '2025-11-13 14:00:00.000000', NULL),
(26, 'MODECU', 'Modulos ECU', 'Reparo e programacao de modulos de controle', 1, '2025-11-13 14:00:00.000000', NULL),
(27, 'CHAVE', 'Chaveiro Codificado', 'Codificacao de chaves e telecomandos', 1, '2025-11-13 14:00:00.000000', NULL),
(28, 'PNEUS', 'Pneus e Rodas', 'Troca e reparo de pneus', 1, '2025-11-13 14:00:00.000000', NULL),
(29, '4X4', 'Tracao 4x4', 'Manutencao de sistemas de tracao integral', 1, '2025-11-13 14:00:00.000000', NULL),
(30, 'MOTO', 'Motocicletas', 'Manutencao geral de motos', 1, '2025-11-13 14:00:00.000000', NULL),
(31, 'NAUT', 'Motor Nautico', 'Manutencao de motores de popa e centro', 1, '2025-11-13 14:00:00.000000', NULL),
(32, 'PESAD', 'Maquinas Pesadas', 'Manutencao de tratores e escavadeiras', 1, '2025-11-13 14:00:00.000000', NULL),
(33, 'CAMBIO', 'Cambio Automatico', 'Especialista em cambio automatico e CVT', 1, '2025-11-13 14:00:00.000000', NULL),
(34, 'RETMOT', 'Retifica de Motor', 'Servicos de retifica de cabecote e bloco', 1, '2025-11-13 14:00:00.000000', NULL);
