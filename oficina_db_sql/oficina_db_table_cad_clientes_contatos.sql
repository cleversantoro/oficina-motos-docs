
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_contatos`
--

CREATE TABLE `cad_clientes_contatos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_contatos`
--

INSERT INTO `cad_clientes_contatos` (`Id`, `Cliente_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 2, '(11) 91234-1001', 1, 'WhatsApp principal', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 3, 'carlos.barbosa@example.com', 1, 'E-mail preferencial', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 1, '(11) 95555-3003', 1, 'Telefone residencial', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 2, '(11) 94444-4004', 1, 'Contato urgente', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, 'fernanda.reis@example.com', 1, 'E-mail corporativo', '2025-10-14 00:15:25.000000', NULL),
(6, 12, 2, '(11) 91234-1056', 1, 'WhatsApp principal', '2025-10-14 00:15:25.000000', NULL),
(8, 12, 2, '(11) 91234-1078', 0, 'Telefone residencial', '2025-10-14 00:15:25.000000', NULL),
(9, 13, 2, '(11) 91111-0013', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(10, 14, 3, 'beatriz.enf@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(11, 15, 1, '(11) 2111-0015', 1, 'Residencial', '2025-11-13 14:04:00.000000', NULL),
(12, 16, 2, '(11) 91111-0016', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(13, 17, 3, 'daniel.moura.adv@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(14, 18, 2, '(11) 91111-0018', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(15, 19, 3, 'fabio.guedes.dev@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(16, 20, 2, '(11) 91111-0020', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(17, 21, 1, '(11) 3111-0021', 1, 'Comercial', '2025-11-13 14:04:00.000000', NULL),
(18, 22, 3, 'janaina.rios.odonto@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(19, 23, 2, '(11) 91111-0023', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(20, 24, 3, 'lucas.jornal@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(21, 25, 2, '(11) 91111-0025', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(22, 26, 3, 'nairto.bio@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(23, 27, 2, '(11) 91111-0027', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(24, 28, 3, 'ricardo.alves@transporteveloz.com', 1, 'E-mail (Financeiro PJ)', '2025-11-13 14:04:00.000000', NULL),
(25, 29, 2, '(11) 92222-0029', 1, 'WhatsApp (Compras PJ)', '2025-11-13 14:04:00.000000', NULL),
(26, 30, 1, '(11) 4222-0030', 1, 'Telefone (Base PJ)', '2025-11-13 14:04:00.000000', NULL),
(27, 31, 3, 'daniel@construmoura.com', 1, 'E-mail (Proprietário PJ)', '2025-11-13 14:04:00.000000', NULL),
(28, 32, 2, '(11) 92222-0032', 1, 'WhatsApp (Diretoria PJ)', '2025-11-13 14:04:00.000000', NULL),
(29, 33, 3, 'fabio@solucoestech.com', 1, 'E-mail (TI PJ)', '2025-11-13 14:04:00.000000', NULL),
(30, 34, 2, '(11) 92222-0034', 1, 'WhatsApp (Clínica PJ)', '2025-11-13 14:04:00.000000', NULL),
(31, 35, 1, '(11) 5222-0035', 1, 'Telefone (Restaurante PJ)', '2025-11-13 14:04:00.000000', NULL),
(32, 36, 3, 'contato@corpoforte.com', 1, 'E-mail (Recepção PJ)', '2025-11-13 14:04:00.000000', NULL),
(33, 37, 2, '(11) 92222-0037', 1, 'WhatsApp (Paisagismo PJ)', '2025-11-13 14:04:00.000000', NULL),
(34, 38, 3, 'katia.moreira@odontoprime.com', 1, 'E-mail (Consultório PJ)', '2025-11-13 14:04:00.000000', NULL),
(35, 39, 1, '(11) 6222-0039', 1, 'Telefone (Gráfica PJ)', '2025-11-13 14:04:00.000000', NULL),
(36, 40, 2, '(11) 92222-0040', 1, 'WhatsApp (Padaria PJ)', '2025-11-13 14:04:00.000000', NULL),
(37, 41, 3, 'nairto.gomes@cargaluz.com', 1, 'E-mail (Elétrica PJ)', '2025-11-13 14:04:00.000000', NULL),
(38, 42, 2, '(11) 92222-0042', 1, 'WhatsApp (Oficina Moto PJ)', '2025-11-13 14:04:00.000000', NULL);
