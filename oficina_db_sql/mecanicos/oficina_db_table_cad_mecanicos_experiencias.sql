
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_experiencias`
--

CREATE TABLE `cad_mecanicos_experiencias` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Empresa` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cargo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Inicio` date DEFAULT NULL,
  `Data_Fim` date DEFAULT NULL,
  `Resumo_Atividades` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_experiencias`
--

INSERT INTO `cad_mecanicos_experiencias` (`Id`, `Mecanico_Id`, `Empresa`, `Cargo`, `Data_Inicio`, `Data_Fim`, `Resumo_Atividades`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Auto Center Prime', 'Mecanico Senior', '2015-01-01', '2019-12-15', 'Liderou equipe de manutencao pesada e treinou mecanicos junior.', '2025-10-14 02:17:24.414609', NULL),
(2, 2, 'Eletrica AutoTech', 'Especialista Eletrica', '2017-03-01', '2021-04-30', 'Responsavel por diagnostico de sistemas eletricos e implementacao de novas ferramentas.', '2025-10-14 02:17:24.414609', NULL),
(3, 3, 'Freios Master', 'Mecanico Chefe', '2014-01-01', '2019-02-28', 'Coordenador da area de freios e suspensao.', '2025-11-13 14:07:00.000000', NULL),
(4, 4, 'Diagnostico Facil', 'Mecanico Pleno', '2019-01-15', '2021-12-31', 'Diagnostico de falhas eletronicas.', '2025-11-13 14:07:00.000000', NULL),
(5, 5, 'Auto Eletrica Fenix', 'Ajudante Eletricista', '2021-01-10', '2022-02-28', 'Auxiliar em injecao eletronica.', '2025-11-13 14:07:00.000000', NULL),
(6, 6, 'Gelofrio A/C', 'Tecnico de A/C', '2015-05-01', '2018-06-14', 'Manutencao de ar condicionado.', '2025-11-13 14:07:00.000000', NULL),
(7, 7, 'Funilaria Brilho Novo', 'Funileiro', '2017-03-01', '2020-02-19', 'Reparos de lataria e alinhamento de chassi.', '2025-11-13 14:07:00.000000', NULL),
(8, 8, 'Pintura Express', 'Pintor', '2018-02-01', '2021-07-31', 'Preparacao e pintura.', '2025-11-13 14:07:00.000000', NULL),
(9, 9, 'Centro Automotivo Roda Certa', 'Alinhador', '2020-01-10', '2022-05-11', 'Servicos de alinhamento e balanceamento.', '2025-11-13 14:07:00.000000', NULL),
(10, 10, 'Concessionaria Tesla', 'Tecnico ADAS', '2017-06-01', '2019-10-31', 'Calibracao de sistemas ADAS (experiencia internacional).', '2025-11-13 14:07:00.000000', NULL),
(11, 11, 'Green Auto', 'Eletricista Hibrido', '2020-01-01', '2022-12-31', 'Manutencao em Toyota Prius e Corolla Hybrid.', '2025-11-13 14:07:00.000000', NULL),
(12, 12, 'Diesel Ponto', 'Mecanico Diesel', '2010-01-01', '2017-01-19', 'Reparo de motores diesel pesados.', '2025-11-13 14:07:00.000000', NULL),
(13, 13, 'GNV Total', 'Instalador', '2022-01-01', '2023-07-09', 'Instalacao de kits GNV.', '2025-11-13 14:07:00.000000', NULL),
(14, 14, 'Auto Vidros JKL', 'Instalador', '2018-05-01', '2021-04-14', 'Troca de vidros e reparo de travas.', '2025-11-13 14:07:00.000000', NULL),
(15, 15, 'Super Troca Oleo', 'Lubrificador', '2021-01-01', '2022-09-30', 'Troca de oleo e filtros.', '2025-11-13 14:07:00.000000', NULL),
(16, 16, 'Som Auto Store', 'Instalador', '2017-08-01', '2020-08-31', 'Instalacao de som e acessorios.', '2025-11-13 14:07:00.000000', NULL),
(17, 17, 'Performance Garage', 'Mecanico Preparador', '2019-01-01', '2022-02-10', 'Preparacao de motores para performance.', '2025-11-13 14:07:00.000000', NULL),
(18, 18, 'Oficina Classicos', 'Restaurador', '2010-01-01', '2015-03-09', 'Restauracao de mecanica de carros antigos.', '2025-11-13 14:07:00.000000', NULL),
(19, 19, 'Direcao Certa', 'Tecnico Hidraulico', '2016-01-01', '2019-07-19', 'Reparo de caixas de direcao.', '2025-11-13 14:07:00.000000', NULL),
(20, 20, 'Escapamentos ZM', 'Soldador', '2018-10-01', '2021-11-14', 'Troca e solda de escapamentos.', '2025-11-13 14:07:00.000000', NULL),
(21, 21, 'Tira Amassados', 'Aprendiz', '2022-01-01', '2023-02-28', 'Auxiliar de martelinho de ouro.', '2025-11-13 14:07:00.000000', NULL),
(22, 22, 'Estetica Premium', 'Polidor', '2016-01-01', '2018-09-30', 'Servicos de polimento e estetica.', '2025-11-13 14:07:00.000000', NULL),
(23, 23, 'Auto Eletrica Luz', 'Eletricista', '2017-01-01', '2020-05-04', 'Reparo de alternadores e motores de partida.', '2025-11-13 14:07:00.000000', NULL),
(24, 24, 'Airbag Solutions', 'Tecnico Eletronico', '2015-01-01', '2017-08-09', 'Diagnostico de sistemas de airbag.', '2025-11-13 14:07:00.000000', NULL),
(25, 25, 'Modulo Certo', 'Programador ECU', '2020-01-01', '2022-06-19', 'Reparo de modulos.', '2025-11-13 14:07:00.000000', NULL),
(26, 26, 'Chaveiro Central', 'Chaveiro', '2016-01-01', '2019-01-14', 'Codificacao de chaves.', '2025-11-13 14:07:00.000000', NULL),
(27, 27, 'Borracharia ZP', 'Borracheiro', '2021-01-01', '2023-01-31', 'Troca e reparo de pneus.', '2025-11-13 14:07:00.000000', NULL),
(28, 28, '4x4 Garage', 'Mecanico 4x4', '2018-01-01', '2021-03-09', 'Manutencao de Troller e Jeep.', '2025-11-13 14:07:00.000000', NULL),
(29, 29, 'Moto Racing', 'Mecanico de Motos', '2015-01-01', '2018-11-30', 'Manutencao geral de motos.', '2025-11-13 14:07:00.000000', NULL),
(30, 30, 'Nautica Sul', 'Tecnico Nautico', '2017-01-01', '2020-06-30', 'Manutencao de motores de popa.', '2025-11-13 14:07:00.000000', NULL),
(31, 31, 'Maquinas Terra', 'Mecanico Maquinas', '2012-01-01', '2016-08-31', 'Reparo de tratores.', '2025-11-13 14:07:00.000000', NULL),
(32, 32, 'Automaticos & Cia', 'Tecnico Cambio AT', '2019-01-01', '2022-09-09', 'Reparo de cambio automatico.', '2025-11-13 14:07:00.000000', NULL),
(33, 33, 'Retifica Confianca', 'Retificador', '2015-01-01', '2019-05-14', 'Servicos de retifica de motor.', '2025-11-13 14:07:00.000000', NULL);
