
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_fabricantes`
--

CREATE TABLE `est_fabricantes` (
  `Id` bigint NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_fabricantes`
--

INSERT INTO `est_fabricantes` (`Id`, `nome`, `cnpj`, `contato`, `created_at`, `updated_at`) VALUES
(1, 'Bosch', '12.345.678/0001-90', 'contato@bosch.com.br', '2025-11-06 23:55:09.242', NULL),
(2, 'NGK', '98.765.432/0001-10', 'suporte@ngk.com.br', '2025-11-06 23:55:09.242', NULL),
(3, 'TRW', '11.222.333/0001-44', 'vendas@trw.com.br', '2025-11-06 23:55:09.242', NULL),
(4, 'SKF', '22.333.444/0001-55', 'brasil@skf.com', '2025-11-06 23:55:09.242', NULL),
(5, 'Monroe', '33.444.555/0001-66', 'atendimento@monroe.com.br', '2025-11-06 23:55:09.242', NULL),
(6, 'Moura', '44.555.666/0001-77', 'comercial@moura.com.br', '2025-11-13 10:10:00.600', NULL),
(7, 'Osram', '55.666.777/0001-88', 'contato@osram.com.br', '2025-11-13 10:10:00.600', NULL),
(8, 'Nakata', '66.777.888/0001-99', 'vendas@nakata.com.br', '2025-11-13 10:10:00.600', NULL),
(9, 'Valeo', '77.888.999/0001-00', 'suporte@valeo.com', '2025-11-13 10:10:00.600', NULL),
(10, 'Heliar', '88.999.000/0001-11', 'contato@heliar.com.br', '2025-11-13 10:10:00.600', NULL),
(11, 'Philips', '99.000.111/0001-22', 'auto@philips.com.br', '2025-11-13 10:10:00.600', NULL),
(12, 'MTE-THOMSON', '10.111.222/0001-33', 'vendas@mte-thomson.com.br', '2025-11-13 10:10:00.600', NULL),
(13, 'Paraflu', '11.222.333/0001-44', 'contato@paraflu.com.br', '2025-11-13 10:10:00.600', NULL),
(14, 'Cofap', '12.333.444/0001-55', 'atendimento@cofap.com.br', '2025-11-13 10:10:00.600', NULL),
(15, 'Magneti Marelli', '13.444.555/0001-66', 'mm@mmarelli.com', '2025-11-13 10:10:00.600', NULL),
(16, 'Gates', '14.555.666/0001-77', 'br.vendas@gates.com', '2025-11-13 10:10:00.600', NULL),
(17, 'Fras-le', '15.666.777/0001-88', 'contato@fras-le.com', '2025-11-13 10:10:00.600', NULL),
(18, 'Continental', '16.777.888/0001-99', 'vendas.auto@continental.com', '2025-11-13 10:10:00.600', NULL),
(19, 'Luk', '17.888.999/0001-00', 'info@luk.com.br', '2025-11-13 10:10:00.600', NULL),
(20, 'Sachs', '18.999.000/0001-11', 'atendimento@sachs.com.br', '2025-11-13 10:10:00.600', NULL),
(21, 'Mobil', '19.000.111/0001-22', 'sac@mobil.com', '2025-11-13 10:10:00.600', NULL),
(22, 'Castrol', '20.111.222/0001-33', 'faleconosco@castrol.com.br', '2025-11-13 10:10:00.600', NULL),
(23, 'Goodyear', '21.222.333/0001-44', 'contato@goodyear.com.br', '2025-11-13 10:10:00.600', NULL),
(24, 'Pirelli', '22.333.444/0001-55', 'atendimento.pneu@pirelli.com', '2025-11-13 10:10:00.600', NULL),
(25, 'Delphi', '23.444.555/0001-66', 'sac.delphi@borgwarner.com', '2025-11-13 10:10:00.600', NULL),
(26, '3M', '24.555.666/0001-77', 'auto@3m.com.br', '2025-11-13 10:10:00.600', NULL),
(27, 'Wurth', '25.666.777/0001-88', 'vendas@wurth.com.br', '2025-11-13 10:10:00.600', NULL),
(28, 'Denso', '26.777.888/0001-99', 'sac@denso.com.br', '2025-11-13 10:10:00.600', NULL),
(29, 'Acdelco', '27.888.999/0001-00', 'contato@acdelco.com.br', '2025-11-13 10:10:00.600', NULL),
(30, 'Cobreq', '28.999.000/0001-11', 'vendas@cobreq.com.br', '2025-11-13 10:10:00.600', NULL),
(31, 'Elf', '29.000.111/0001-22', 'sac@totalenergies.com.br', '2025-11-13 10:10:00.600', NULL),
(32, 'Ipiranga', '30.111.222/0001-33', 'lubrificantes@ipiranga.com.br', '2025-11-13 10:10:00.600', NULL),
(33, 'Petrobras', '31.222.333/0001-44', 'br@br.com.br', '2025-11-13 10:10:00.600', NULL),
(34, 'Mahle', '32.333.444/0001-55', 'contato@mahle.com.br', '2025-11-13 10:10:00.600', NULL),
(35, 'Mann-Filter', '33.444.555/0001-66', 'vendas@mann-hummel.com', '2025-11-13 10:10:00.600', NULL);
