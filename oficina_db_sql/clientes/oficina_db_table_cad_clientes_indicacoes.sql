
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_indicacoes`
--

CREATE TABLE `cad_clientes_indicacoes` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Indicador_Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Indicador_Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_indicacoes`
--

INSERT INTO `cad_clientes_indicacoes` (`Id`, `Cliente_Id`, `Indicador_Nome`, `Indicador_Telefone`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Juliana Ramos', '(11) 98888-0000', 'Amiga de infância', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 'Pedro Oliveira', '(11) 97777-3333', 'Colega de trabalho', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 'Fernanda Dias', '(11) 96666-2222', 'Contato via telefone', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 'Marcos Lima', '(11) 95555-1111', 'Vizinho', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 'Ana Ferreira', '(11) 93333-4444', 'Parceira de negócios', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 'Google Maps', NULL, 'Origem Google Maps', '2025-11-13 14:07:00.000000', NULL),
(7, 14, 'Instagram', NULL, 'Origem Instagram', '2025-11-13 14:07:00.000000', NULL),
(8, 15, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(9, 16, 'Facebook', NULL, 'Origem Facebook', '2025-11-13 14:07:00.000000', NULL),
(10, 17, 'Paulo Andrade', '(11) 93333-0017', 'Colega OAB', '2025-11-13 14:07:00.000000', NULL),
(11, 18, 'Waze', NULL, 'Anúncio Waze', '2025-11-13 14:07:00.000000', NULL),
(12, 19, 'Ana Silva', '(11) 93333-0019', 'Indicação de cliente', '2025-11-13 14:07:00.000000', NULL),
(13, 20, 'Google (Orgânico)', NULL, 'Busca Google', '2025-11-13 14:07:00.000000', NULL),
(14, 21, 'Marcos Lima', '(11) 93333-0021', 'Indicação de cliente', '2025-11-13 14:07:00.000000', NULL),
(15, 22, 'Rádio Local', NULL, 'Anúncio Rádio', '2025-11-13 14:07:00.000000', NULL),
(16, 23, 'Telefone', NULL, 'Ligou direto', '2025-11-13 14:07:00.000000', NULL),
(17, 24, 'Panfleto', NULL, 'Viu panfleto', '2025-11-13 14:07:00.000000', NULL),
(18, 25, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(19, 26, 'Youtube', NULL, 'Viu vídeo de dicas', '2025-11-13 14:07:00.000000', NULL),
(20, 27, 'Carlos Barbosa (Cliente 2)', '(11) 97777-3333', 'Indicação cliente 2', '2025-11-13 14:07:00.000000', NULL),
(21, 28, 'LinkedIn', NULL, 'Prospecção ativa PJ', '2025-11-13 14:07:00.000000', NULL),
(22, 29, 'Google Maps', NULL, 'Busca PJ', '2025-11-13 14:07:00.000000', NULL),
(23, 30, 'Seguradora Alfa', NULL, 'Parceria Seguradora', '2025-11-13 14:07:00.000000', NULL),
(24, 31, 'Indicação (Mecânico)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(25, 32, 'Telefone', NULL, 'Contato telefônico PJ', '2025-11-13 14:07:00.000000', NULL),
(26, 33, 'LinkedIn', NULL, 'Prospecção ativa PJ', '2025-11-13 14:07:00.000000', NULL),
(27, 34, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(28, 35, 'Google (Orgânico)', NULL, 'Busca Google', '2025-11-13 14:07:00.000000', NULL),
(29, 36, 'Instagram', NULL, 'Campanha Instagram', '2025-11-13 14:07:00.000000', NULL),
(30, 37, 'Parceria (Lava-rápido)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(31, 38, 'Mariana Alves (Cliente 1)', '(11) 91234-1001', 'Indicação cliente 1', '2025-11-13 14:07:00.000000', NULL),
(32, 39, 'Google Maps', NULL, 'Busca PJ', '2025-11-13 14:07:00.000000', NULL),
(33, 40, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(34, 41, 'Indicação (Mecânico)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(35, 42, 'Grupo de Carros', NULL, 'Grupo WhatsApp (Motos)', '2025-11-13 14:07:00.000000', NULL);
