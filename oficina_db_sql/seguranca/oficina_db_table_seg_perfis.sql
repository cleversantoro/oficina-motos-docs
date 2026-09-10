-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_perfis`
--

CREATE TABLE `seg_perfis` (
  `Id` int NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nivel` int NOT NULL DEFAULT '99' COMMENT '1 = maior prioridade / acesso total; valores maiores = acesso mais restrito',
  `Status` int NOT NULL DEFAULT '1' COMMENT '0 = Inativo; 1 = Ativo',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_perfis`
--

INSERT INTO `seg_perfis` (`Id`, `Nome`, `Descricao`, `Nivel`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'Administrador', 'Acesso total ao sistema, incluindo configurações e segurança',                    1, 1, '2026-04-20 00:00:00.000000', NULL),
(2, 'Gerente',       'Gestão operacional e financeira completa, sem acesso a configurações de segurança', 2, 1, '2026-04-20 00:00:00.000000', NULL),
(3, 'Recepcionista', 'Atendimento ao cliente: cadastro, veículos e abertura de OS',                    3, 1, '2026-04-20 00:00:00.000000', NULL),
(4, 'Financeiro',    'Gestão financeira, contas, lançamentos e relatórios',                            4, 1, '2026-04-20 00:00:00.000000', NULL),
(5, 'Mecânico',      'Execução de ordens de serviço e consulta de estoque',                            5, 1, '2026-04-20 00:00:00.000000', NULL),
(6, 'Consulta',      'Acesso somente leitura a todos os módulos operacionais',                         6, 1, '2026-04-20 00:00:00.000000', NULL);

--
-- Índices de tabela `seg_perfis`
--
ALTER TABLE `seg_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_nome` (`Nome`);

ALTER TABLE `seg_perfis`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
