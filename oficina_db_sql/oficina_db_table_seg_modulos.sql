-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_modulos`
--

CREATE TABLE `seg_modulos` (
  `Id` int NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Icone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rota` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Modulo_Pai_Id` int DEFAULT NULL,
  `Ordem` int NOT NULL DEFAULT '0',
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_modulos`
--

INSERT INTO `seg_modulos` (`Id`, `Nome`, `Descricao`, `Icone`, `Rota`, `Modulo_Pai_Id`, `Ordem`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1,  'Dashboard',           'Painel principal com indicadores e resumos',         'pi-home',          '/dashboard',    NULL, 1,  1, '2026-04-20 00:00:00.000000', NULL),
(2,  'Clientes',            'Cadastro e gestão de clientes PF e PJ',              'pi-users',         '/clientes',     NULL, 2,  1, '2026-04-20 00:00:00.000000', NULL),
(3,  'Mecânicos',           'Cadastro e gestão de mecânicos',                     'pi-wrench',        '/mecanicos',    NULL, 3,  1, '2026-04-20 00:00:00.000000', NULL),
(4,  'Veículos',            'Cadastro e histórico de veículos',                   'pi-car',           '/veiculos',     NULL, 4,  1, '2026-04-20 00:00:00.000000', NULL),
(5,  'Ordens de Serviço',   'Abertura, execução e encerramento de OS',            'pi-clipboard-list','/ordens',       NULL, 5,  1, '2026-04-20 00:00:00.000000', NULL),
(6,  'Estoque',             'Gestão de peças, movimentações e localização',       'pi-box',           '/estoque',      NULL, 6,  1, '2026-04-20 00:00:00.000000', NULL),
(7,  'Financeiro',          'Contas a pagar/receber, lançamentos e pagamentos',   'pi-dollar',        '/financeiro',   NULL, 7,  1, '2026-04-20 00:00:00.000000', NULL),
(8,  'Relatórios',          'Geração e exportação de relatórios gerenciais',      'pi-chart-bar',     '/relatorios',   NULL, 8,  1, '2026-04-20 00:00:00.000000', NULL),
(9,  'Configurações',       'Parâmetros gerais do sistema',                       'pi-cog',           '/configuracoes',NULL, 9,  1, '2026-04-20 00:00:00.000000', NULL),
(10, 'Segurança',           'Gestão de usuários, perfis e permissões de acesso',  'pi-shield',        '/seguranca',    NULL, 10, 1, '2026-04-20 00:00:00.000000', NULL),
(11, 'Fornecedores',        'Cadastro e gestão de fornecedores',                  'pi-truck',         '/fornecedores', NULL, 11, 1, '2026-04-20 00:00:00.000000', NULL);

--
-- Índices de tabela `seg_modulos`
--
ALTER TABLE `seg_modulos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_modulos_nome` (`Nome`),
  ADD CONSTRAINT `FK_seg_modulos_pai` FOREIGN KEY (`Modulo_Pai_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE SET NULL;

ALTER TABLE `seg_modulos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
