
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_lgpd_consentimentos`
--

CREATE TABLE `cad_clientes_lgpd_consentimentos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Aceito` tinyint(1) NOT NULL,
  `Data` datetime(6) DEFAULT NULL,
  `Valido_Ate` datetime(6) DEFAULT NULL,
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Canal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_lgpd_consentimentos`
--

INSERT INTO `cad_clientes_lgpd_consentimentos` (`Id`, `Cliente_Id`, `Tipo`, `Aceito`, `Data`, `Valido_Ate`, `Observacoes`, `Canal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Aceitou receber promoções', 'API', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 2, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Compartilhamento de dados', 'Portal', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 3, 1, '2025-10-14 00:15:25.000000', '2027-10-14 00:15:25.000000', 'Comunicados de serviço', 'Telefone', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 1, 0, '2025-10-14 00:15:25.000000', NULL, 'Não deseja marketing', 'Aplicativo', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, 1, '2025-10-14 00:15:25.000000', '2028-10-14 00:15:25.000000', 'Notificações sobre agenda', 'API', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(7, 14, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(8, 15, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(9, 16, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(10, 17, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(11, 18, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(12, 19, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(13, 20, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(14, 21, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(15, 22, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'API', '2025-11-13 14:08:00.000000', NULL),
(16, 23, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(17, 24, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(18, 25, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(19, 26, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(20, 27, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(21, 28, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ (Contrato)', 'API', '2025-11-13 14:08:00.000000', NULL),
(22, 29, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(23, 30, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(24, 31, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(25, 32, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(26, 33, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(27, 34, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(28, 35, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(29, 36, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(30, 37, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(31, 38, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(32, 39, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(33, 40, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(34, 41, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(35, 42, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL);
