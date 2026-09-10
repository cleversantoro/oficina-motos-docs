
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_contatos`
--

CREATE TABLE `cad_mecanicos_contatos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_contatos`
--

INSERT INTO `cad_mecanicos_contatos` (`Id`, `Mecanico_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Celular', '(11) 98888-0001', 1, 'Disponivel via WhatsApp', '2025-10-14 02:17:24.351517', NULL),
(2, 2, 'Email', 'fernanda.costa@oficina.com', 1, NULL, '2025-10-14 02:17:24.351517', NULL),
(3, 3, 'Email', 'joao.pereira@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(4, 4, 'Email', 'andre.melo@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(5, 5, 'Celular', '(21) 98888-0002', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(6, 6, 'Email', 'caio.dias@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(7, 7, 'Celular', '(31) 98888-0003', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(8, 8, 'Email', 'eduardo.lima@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(9, 9, 'Email', 'fabiana.guedes@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(10, 10, 'Celular', '(41) 98888-0004', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(11, 11, 'Email', 'helena.morais@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(12, 12, 'Email', 'igor.nogueira@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(13, 13, 'Celular', '(51) 98888-0005', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(14, 14, 'Email', 'kleber.ramos@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(15, 15, 'Email', 'larissa.sampaio@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(16, 16, 'Celular', '(61) 98888-0006', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(17, 17, 'Email', 'natalia.uchoa@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(18, 18, 'Email', 'otavio.viana@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(19, 19, 'Celular', '(71) 98888-0007', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(20, 20, 'Email', 'quintino.zabe@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(21, 21, 'Email', 'rafaela.bastos@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(22, 22, 'Celular', '(81) 98888-0008', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(23, 23, 'Email', 'tais.dourado@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(24, 24, 'Email', 'ulisses.esteves@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(25, 25, 'Celular', '(91) 98888-0009', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(26, 26, 'Email', 'wagner.gontijo@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(27, 27, 'Email', 'xenia.horta@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(28, 28, 'Celular', '(11) 98888-0010', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(29, 29, 'Email', 'zaqueu.jales@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(30, 30, 'Email', 'aline.barros@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(31, 31, 'Celular', '(21) 98888-0011', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(32, 32, 'Email', 'clara.dantas@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL);
