-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_permissoes`
--

CREATE TABLE `seg_permissoes` (
  `Id` int NOT NULL,
  `Modulo_Id` int NOT NULL,
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    COMMENT 'Ações possíveis: visualizar | criar | editar | excluir | exportar | aprovar',
  `Descricao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_permissoes`
--

INSERT INTO `seg_permissoes` (`Id`, `Modulo_Id`, `Acao`, `Descricao`, `Created_At`) VALUES
-- Dashboard (módulo 1)
(1,  1,  'visualizar', 'Visualizar painel de indicadores',                    '2026-04-20 00:00:00.000000'),
-- Clientes (módulo 2)
(2,  2,  'visualizar', 'Consultar lista e detalhes de clientes',              '2026-04-20 00:00:00.000000'),
(3,  2,  'criar',      'Cadastrar novos clientes',                            '2026-04-20 00:00:00.000000'),
(4,  2,  'editar',     'Alterar dados de clientes',                           '2026-04-20 00:00:00.000000'),
(5,  2,  'excluir',    'Remover clientes do sistema',                         '2026-04-20 00:00:00.000000'),
(6,  2,  'exportar',   'Exportar listagem de clientes',                       '2026-04-20 00:00:00.000000'),
-- Mecânicos (módulo 3)
(7,  3,  'visualizar', 'Consultar lista e perfis de mecânicos',               '2026-04-20 00:00:00.000000'),
(8,  3,  'criar',      'Cadastrar novos mecânicos',                           '2026-04-20 00:00:00.000000'),
(9,  3,  'editar',     'Alterar dados de mecânicos',                          '2026-04-20 00:00:00.000000'),
(10, 3,  'excluir',    'Remover mecânicos do sistema',                        '2026-04-20 00:00:00.000000'),
(11, 3,  'exportar',   'Exportar listagem de mecânicos',                      '2026-04-20 00:00:00.000000'),
-- Veículos (módulo 4)
(12, 4,  'visualizar', 'Consultar veículos e histórico',                      '2026-04-20 00:00:00.000000'),
(13, 4,  'criar',      'Cadastrar novos veículos',                            '2026-04-20 00:00:00.000000'),
(14, 4,  'editar',     'Alterar dados de veículos',                           '2026-04-20 00:00:00.000000'),
(15, 4,  'excluir',    'Remover veículos do sistema',                         '2026-04-20 00:00:00.000000'),
(16, 4,  'exportar',   'Exportar listagem de veículos',                       '2026-04-20 00:00:00.000000'),
-- Ordens de Serviço (módulo 5)
(17, 5,  'visualizar', 'Consultar ordens de serviço',                         '2026-04-20 00:00:00.000000'),
(18, 5,  'criar',      'Abrir novas ordens de serviço',                       '2026-04-20 00:00:00.000000'),
(19, 5,  'editar',     'Atualizar ordens de serviço',                         '2026-04-20 00:00:00.000000'),
(20, 5,  'excluir',    'Cancelar/remover ordens de serviço',                  '2026-04-20 00:00:00.000000'),
(21, 5,  'exportar',   'Exportar ordens de serviço',                          '2026-04-20 00:00:00.000000'),
(22, 5,  'aprovar',    'Aprovar orçamentos e liberar execução de OS',         '2026-04-20 00:00:00.000000'),
-- Estoque (módulo 6)
(23, 6,  'visualizar', 'Consultar peças e movimentações de estoque',          '2026-04-20 00:00:00.000000'),
(24, 6,  'criar',      'Adicionar peças e entradas de estoque',               '2026-04-20 00:00:00.000000'),
(25, 6,  'editar',     'Ajustar dados de peças e localizações',               '2026-04-20 00:00:00.000000'),
(26, 6,  'excluir',    'Remover peças do estoque',                            '2026-04-20 00:00:00.000000'),
(27, 6,  'exportar',   'Exportar relatório de estoque',                       '2026-04-20 00:00:00.000000'),
-- Financeiro (módulo 7)
(28, 7,  'visualizar', 'Consultar lançamentos, contas e pagamentos',          '2026-04-20 00:00:00.000000'),
(29, 7,  'criar',      'Registrar lançamentos e contas',                      '2026-04-20 00:00:00.000000'),
(30, 7,  'editar',     'Alterar lançamentos e contas',                        '2026-04-20 00:00:00.000000'),
(31, 7,  'excluir',    'Remover lançamentos e contas',                        '2026-04-20 00:00:00.000000'),
(32, 7,  'exportar',   'Exportar extratos e relatórios financeiros',          '2026-04-20 00:00:00.000000'),
(33, 7,  'aprovar',    'Aprovar lançamentos e baixas financeiras',            '2026-04-20 00:00:00.000000'),
-- Relatórios (módulo 8)
(34, 8,  'visualizar', 'Visualizar relatórios gerenciais',                    '2026-04-20 00:00:00.000000'),
(35, 8,  'exportar',   'Exportar relatórios em PDF/Excel',                    '2026-04-20 00:00:00.000000'),
-- Configurações (módulo 9)
(36, 9,  'visualizar', 'Visualizar parâmetros do sistema',                    '2026-04-20 00:00:00.000000'),
(37, 9,  'editar',     'Alterar parâmetros e configurações do sistema',       '2026-04-20 00:00:00.000000'),
-- Segurança (módulo 10)
(38, 10, 'visualizar', 'Consultar usuários, perfis e permissões',             '2026-04-20 00:00:00.000000'),
(39, 10, 'criar',      'Criar usuários e perfis de acesso',                   '2026-04-20 00:00:00.000000'),
(40, 10, 'editar',     'Editar usuários, perfis e permissões',                '2026-04-20 00:00:00.000000'),
(41, 10, 'excluir',    'Remover usuários e perfis de acesso',                 '2026-04-20 00:00:00.000000'),
-- Fornecedores (módulo 11)
(42, 11, 'visualizar', 'Consultar lista e detalhes de fornecedores',          '2026-04-20 00:00:00.000000'),
(43, 11, 'criar',      'Cadastrar novos fornecedores',                        '2026-04-20 00:00:00.000000'),
(44, 11, 'editar',     'Alterar dados de fornecedores',                       '2026-04-20 00:00:00.000000'),
(45, 11, 'excluir',    'Remover fornecedores do sistema',                     '2026-04-20 00:00:00.000000'),
(46, 11, 'exportar',   'Exportar listagem de fornecedores',                   '2026-04-20 00:00:00.000000');

--
-- Índices de tabela `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_permissoes_modulo_acao` (`Modulo_Id`, `Acao`),
  ADD KEY `IDX_seg_permissoes_modulo` (`Modulo_Id`),
  ADD CONSTRAINT `FK_seg_permissoes_modulo` FOREIGN KEY (`Modulo_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE CASCADE;

ALTER TABLE `seg_permissoes`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
