
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_financeiro`
--

CREATE TABLE `cad_clientes_financeiro` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Limite_Credito` decimal(10,2) DEFAULT NULL,
  `Prazo_Pagamento` int DEFAULT NULL,
  `Bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_financeiro`
--

INSERT INTO `cad_clientes_financeiro` (`Id`, `Cliente_Id`, `Limite_Credito`, `Prazo_Pagamento`, `Bloqueado`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(1, 1, 5000.00, 15, 0, 'Limite padrão PF', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 8000.00, 20, 0, 'Cliente VIP', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 3000.00, 10, 0, 'Liberado após análise', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 4500.00, 20, 0, 'Perfil regular', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 6000.00, 25, 0, 'Cliente corporativo pequeno porte', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(7, 14, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(8, 15, 2000.00, 5, 0, 'Novo cliente PF - Risco moderado', '2025-11-13 14:06:00.000000', NULL),
(9, 16, 2500.00, 10, 0, 'Novo cliente PF (Estudante)', '2025-11-13 14:06:00.000000', NULL),
(10, 17, 7000.00, 20, 0, 'Cliente PF (Advogado)', '2025-11-13 14:06:00.000000', NULL),
(11, 18, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(12, 19, 5000.00, 15, 0, 'Cliente PF (Programador)', '2025-11-13 14:06:00.000000', NULL),
(13, 20, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(14, 21, 4000.00, 15, 0, 'Cliente PF (Contador)', '2025-11-13 14:06:00.000000', NULL),
(15, 22, 6000.00, 20, 0, 'Cliente PF (Dentista)', '2025-11-13 14:06:00.000000', NULL),
(16, 23, 4000.00, 15, 0, 'Cliente PF (Bancário)', '2025-11-13 14:06:00.000000', NULL),
(17, 24, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(18, 25, 3500.00, 10, 0, 'Cliente PF (Policial)', '2025-11-13 14:06:00.000000', NULL),
(19, 26, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(20, 27, 4000.00, 15, 0, 'Cliente PF (Rep. Comercial)', '2025-11-13 14:06:00.000000', NULL),
(21, 28, 20000.00, 30, 0, 'Cliente PJ (Transportadora) - Frota grande', '2025-11-13 14:06:00.000000', NULL),
(22, 29, 8000.00, 20, 0, 'Cliente PJ (Alimentos)', '2025-11-13 14:06:00.000000', NULL),
(23, 30, 15000.00, 30, 0, 'Cliente PJ (Segurança)', '2025-11-13 14:06:00.000000', NULL),
(24, 31, 10000.00, 25, 0, 'Cliente PJ (Construção)', '2025-11-13 14:06:00.000000', NULL),
(25, 32, 5000.00, 20, 0, 'Cliente PJ (Escola) - Vans', '2025-11-13 14:06:00.000000', NULL),
(26, 33, 6000.00, 20, 0, 'Cliente PJ (TI)', '2025-11-13 14:06:00.000000', NULL),
(27, 34, 5000.00, 15, 0, 'Cliente PJ (Clínica Vet)', '2025-11-13 14:06:00.000000', NULL),
(28, 35, 4000.00, 15, 0, 'Cliente PJ (Restaurante)', '2025-11-13 14:06:00.000000', NULL),
(29, 36, 4000.00, 15, 0, 'Cliente PJ (Academia)', '2025-11-13 14:06:00.000000', NULL),
(30, 37, 5000.00, 20, 0, 'Cliente PJ (Paisagismo)', '2025-11-13 14:06:00.000000', NULL),
(31, 38, 7000.00, 20, 0, 'Cliente PJ (Consultório)', '2025-11-13 14:06:00.000000', NULL),
(32, 39, 6000.00, 20, 0, 'Cliente PJ (Gráfica)', '2025-11-13 14:06:00.000000', NULL),
(33, 40, 4000.00, 15, 0, 'Cliente PJ (Padaria)', '2025-11-13 14:06:00.000000', NULL),
(34, 41, 8000.00, 20, 0, 'Cliente PJ (Auto Elétrica)', '2025-11-13 14:06:00.000000', NULL),
(35, 42, 5000.00, 15, 0, 'Cliente PJ (Oficina Moto)', '2025-11-13 14:06:00.000000', NULL);
