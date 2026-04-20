-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Módulo: Segurança — Usuários, Perfis e Permissões
-- Tempo de geração: 20/04/2026
-- Versão do servidor: 8.0.44
-- Versão do PHP: 8.3.26
--
-- Prefixo das tabelas: seg_
-- Nomenclatura segue o padrão existente do banco oficina_db
--
-- Tabelas criadas:
--   seg_modulos              — Módulos do sistema (telas/funcionalidades)
--   seg_perfis               — Perfis de acesso (roles/grupos)
--   seg_permissoes           — Permissões por módulo e ação
--   seg_perfis_permissoes    — Relação perfil ↔ permissão
--   seg_usuarios             — Usuários do sistema
--   seg_usuarios_perfis      — Relação usuário ↔ perfil
--   seg_audit_log            — Log de auditoria de ações dos usuários
--
-- Senhas de exemplo (bcrypt cost 12 — ALTERAR em produção):
--   clever.admin   → Admin@2026!
--   carlos.gerente → Gerente@2026!
--   ana.recep      → Recep@2026!
--   roberto.fin    → Fin@2026!
--   joao.mec       → Mec@2026!
--   consulta.view  → Consulta@2026!
-- ============================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_perfis_permissoes`
--

CREATE TABLE `seg_perfis_permissoes` (
  `Id` bigint NOT NULL,
  `Perfil_Id` int NOT NULL,
  `Permissao_Id` int NOT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_perfis_permissoes`
-- Mapeamento:
--   Administrador (1)  → todas as 46 permissões
--   Gerente (2)        → tudo exceto Segurança: criar/editar/excluir (39,40,41) e Configurações: editar (37)
--   Recepcionista (3)  → Dashboard, Clientes(vis/criar/editar), Veículos(vis/criar/editar), OS(vis/criar/editar), Mecânicos(vis)
--   Financeiro (4)     → Dashboard, Clientes(vis), OS(vis), Financeiro(todos), Relatórios(todos)
--   Mecânico (5)       → Dashboard, Clientes(vis), Veículos(vis), OS(vis/editar/aprovar), Estoque(vis/editar)
--   Consulta (6)       → somente visualizar em todos os módulos operacionais
--

INSERT INTO `seg_perfis_permissoes` (`Id`, `Perfil_Id`, `Permissao_Id`, `Created_At`) VALUES
-- ── Administrador: todas as permissões (1-46) ─────────────────────────────
(1,  1, 1,  '2026-04-20 00:00:00.000000'),
(2,  1, 2,  '2026-04-20 00:00:00.000000'),
(3,  1, 3,  '2026-04-20 00:00:00.000000'),
(4,  1, 4,  '2026-04-20 00:00:00.000000'),
(5,  1, 5,  '2026-04-20 00:00:00.000000'),
(6,  1, 6,  '2026-04-20 00:00:00.000000'),
(7,  1, 7,  '2026-04-20 00:00:00.000000'),
(8,  1, 8,  '2026-04-20 00:00:00.000000'),
(9,  1, 9,  '2026-04-20 00:00:00.000000'),
(10, 1, 10, '2026-04-20 00:00:00.000000'),
(11, 1, 11, '2026-04-20 00:00:00.000000'),
(12, 1, 12, '2026-04-20 00:00:00.000000'),
(13, 1, 13, '2026-04-20 00:00:00.000000'),
(14, 1, 14, '2026-04-20 00:00:00.000000'),
(15, 1, 15, '2026-04-20 00:00:00.000000'),
(16, 1, 16, '2026-04-20 00:00:00.000000'),
(17, 1, 17, '2026-04-20 00:00:00.000000'),
(18, 1, 18, '2026-04-20 00:00:00.000000'),
(19, 1, 19, '2026-04-20 00:00:00.000000'),
(20, 1, 20, '2026-04-20 00:00:00.000000'),
(21, 1, 21, '2026-04-20 00:00:00.000000'),
(22, 1, 22, '2026-04-20 00:00:00.000000'),
(23, 1, 23, '2026-04-20 00:00:00.000000'),
(24, 1, 24, '2026-04-20 00:00:00.000000'),
(25, 1, 25, '2026-04-20 00:00:00.000000'),
(26, 1, 26, '2026-04-20 00:00:00.000000'),
(27, 1, 27, '2026-04-20 00:00:00.000000'),
(28, 1, 28, '2026-04-20 00:00:00.000000'),
(29, 1, 29, '2026-04-20 00:00:00.000000'),
(30, 1, 30, '2026-04-20 00:00:00.000000'),
(31, 1, 31, '2026-04-20 00:00:00.000000'),
(32, 1, 32, '2026-04-20 00:00:00.000000'),
(33, 1, 33, '2026-04-20 00:00:00.000000'),
(34, 1, 34, '2026-04-20 00:00:00.000000'),
(35, 1, 35, '2026-04-20 00:00:00.000000'),
(36, 1, 36, '2026-04-20 00:00:00.000000'),
(37, 1, 37, '2026-04-20 00:00:00.000000'),
(38, 1, 38, '2026-04-20 00:00:00.000000'),
(39, 1, 39, '2026-04-20 00:00:00.000000'),
(40, 1, 40, '2026-04-20 00:00:00.000000'),
(41, 1, 41, '2026-04-20 00:00:00.000000'),
(42, 1, 42, '2026-04-20 00:00:00.000000'),
(43, 1, 43, '2026-04-20 00:00:00.000000'),
(44, 1, 44, '2026-04-20 00:00:00.000000'),
(45, 1, 45, '2026-04-20 00:00:00.000000'),
(46, 1, 46, '2026-04-20 00:00:00.000000'),
-- ── Gerente: tudo exceto Seg. criar/editar/excluir (39,40,41) e Config. editar (37) ──
(47, 2, 1,  '2026-04-20 00:00:00.000000'),
(48, 2, 2,  '2026-04-20 00:00:00.000000'),
(49, 2, 3,  '2026-04-20 00:00:00.000000'),
(50, 2, 4,  '2026-04-20 00:00:00.000000'),
(51, 2, 5,  '2026-04-20 00:00:00.000000'),
(52, 2, 6,  '2026-04-20 00:00:00.000000'),
(53, 2, 7,  '2026-04-20 00:00:00.000000'),
(54, 2, 8,  '2026-04-20 00:00:00.000000'),
(55, 2, 9,  '2026-04-20 00:00:00.000000'),
(56, 2, 10, '2026-04-20 00:00:00.000000'),
(57, 2, 11, '2026-04-20 00:00:00.000000'),
(58, 2, 12, '2026-04-20 00:00:00.000000'),
(59, 2, 13, '2026-04-20 00:00:00.000000'),
(60, 2, 14, '2026-04-20 00:00:00.000000'),
(61, 2, 15, '2026-04-20 00:00:00.000000'),
(62, 2, 16, '2026-04-20 00:00:00.000000'),
(63, 2, 17, '2026-04-20 00:00:00.000000'),
(64, 2, 18, '2026-04-20 00:00:00.000000'),
(65, 2, 19, '2026-04-20 00:00:00.000000'),
(66, 2, 20, '2026-04-20 00:00:00.000000'),
(67, 2, 21, '2026-04-20 00:00:00.000000'),
(68, 2, 22, '2026-04-20 00:00:00.000000'),
(69, 2, 23, '2026-04-20 00:00:00.000000'),
(70, 2, 24, '2026-04-20 00:00:00.000000'),
(71, 2, 25, '2026-04-20 00:00:00.000000'),
(72, 2, 26, '2026-04-20 00:00:00.000000'),
(73, 2, 27, '2026-04-20 00:00:00.000000'),
(74, 2, 28, '2026-04-20 00:00:00.000000'),
(75, 2, 29, '2026-04-20 00:00:00.000000'),
(76, 2, 30, '2026-04-20 00:00:00.000000'),
(77, 2, 31, '2026-04-20 00:00:00.000000'),
(78, 2, 32, '2026-04-20 00:00:00.000000'),
(79, 2, 33, '2026-04-20 00:00:00.000000'),
(80, 2, 34, '2026-04-20 00:00:00.000000'),
(81, 2, 35, '2026-04-20 00:00:00.000000'),
(82, 2, 36, '2026-04-20 00:00:00.000000'),
-- sem 37 (config editar), sem 39/40/41 (seg criar/editar/excluir)
(83, 2, 38, '2026-04-20 00:00:00.000000'),
(84, 2, 42, '2026-04-20 00:00:00.000000'),
(85, 2, 43, '2026-04-20 00:00:00.000000'),
(86, 2, 44, '2026-04-20 00:00:00.000000'),
(87, 2, 45, '2026-04-20 00:00:00.000000'),
(88, 2, 46, '2026-04-20 00:00:00.000000'),
-- ── Recepcionista: Dashboard, Clientes(vis/criar/editar), Veículos(vis/criar/editar), OS(vis/criar/editar), Mecânicos(vis), Fornecedores(vis) ──
(89,  3, 1,  '2026-04-20 00:00:00.000000'),  -- Dashboard: visualizar
(90,  3, 2,  '2026-04-20 00:00:00.000000'),  -- Clientes: visualizar
(91,  3, 3,  '2026-04-20 00:00:00.000000'),  -- Clientes: criar
(92,  3, 4,  '2026-04-20 00:00:00.000000'),  -- Clientes: editar
(93,  3, 7,  '2026-04-20 00:00:00.000000'),  -- Mecânicos: visualizar
(94,  3, 12, '2026-04-20 00:00:00.000000'),  -- Veículos: visualizar
(95,  3, 13, '2026-04-20 00:00:00.000000'),  -- Veículos: criar
(96,  3, 14, '2026-04-20 00:00:00.000000'),  -- Veículos: editar
(97,  3, 17, '2026-04-20 00:00:00.000000'),  -- OS: visualizar
(98,  3, 18, '2026-04-20 00:00:00.000000'),  -- OS: criar
(99,  3, 19, '2026-04-20 00:00:00.000000'),  -- OS: editar
(100, 3, 42, '2026-04-20 00:00:00.000000'),  -- Fornecedores: visualizar
-- ── Financeiro: Dashboard, Clientes(vis), OS(vis), Financeiro(todos), Relatórios(todos) ──
(101, 4, 1,  '2026-04-20 00:00:00.000000'),  -- Dashboard: visualizar
(102, 4, 2,  '2026-04-20 00:00:00.000000'),  -- Clientes: visualizar
(103, 4, 17, '2026-04-20 00:00:00.000000'),  -- OS: visualizar
(104, 4, 28, '2026-04-20 00:00:00.000000'),  -- Financeiro: visualizar
(105, 4, 29, '2026-04-20 00:00:00.000000'),  -- Financeiro: criar
(106, 4, 30, '2026-04-20 00:00:00.000000'),  -- Financeiro: editar
(107, 4, 31, '2026-04-20 00:00:00.000000'),  -- Financeiro: excluir
(108, 4, 32, '2026-04-20 00:00:00.000000'),  -- Financeiro: exportar
(109, 4, 33, '2026-04-20 00:00:00.000000'),  -- Financeiro: aprovar
(110, 4, 34, '2026-04-20 00:00:00.000000'),  -- Relatórios: visualizar
(111, 4, 35, '2026-04-20 00:00:00.000000'),  -- Relatórios: exportar
-- ── Mecânico: Dashboard, Clientes(vis), Veículos(vis), OS(vis/editar/aprovar), Estoque(vis/editar) ──
(112, 5, 1,  '2026-04-20 00:00:00.000000'),  -- Dashboard: visualizar
(113, 5, 2,  '2026-04-20 00:00:00.000000'),  -- Clientes: visualizar
(114, 5, 12, '2026-04-20 00:00:00.000000'),  -- Veículos: visualizar
(115, 5, 17, '2026-04-20 00:00:00.000000'),  -- OS: visualizar
(116, 5, 19, '2026-04-20 00:00:00.000000'),  -- OS: editar
(117, 5, 22, '2026-04-20 00:00:00.000000'),  -- OS: aprovar (liberar execução)
(118, 5, 23, '2026-04-20 00:00:00.000000'),  -- Estoque: visualizar
(119, 5, 25, '2026-04-20 00:00:00.000000'),  -- Estoque: editar (movimentar saídas)
-- ── Consulta: somente visualizar em todos os módulos operacionais ─────────
(120, 6, 1,  '2026-04-20 00:00:00.000000'),  -- Dashboard: visualizar
(121, 6, 2,  '2026-04-20 00:00:00.000000'),  -- Clientes: visualizar
(122, 6, 7,  '2026-04-20 00:00:00.000000'),  -- Mecânicos: visualizar
(123, 6, 12, '2026-04-20 00:00:00.000000'),  -- Veículos: visualizar
(124, 6, 17, '2026-04-20 00:00:00.000000'),  -- OS: visualizar
(125, 6, 23, '2026-04-20 00:00:00.000000'),  -- Estoque: visualizar
(126, 6, 28, '2026-04-20 00:00:00.000000'),  -- Financeiro: visualizar
(127, 6, 34, '2026-04-20 00:00:00.000000'),  -- Relatórios: visualizar
(128, 6, 42, '2026-04-20 00:00:00.000000');  -- Fornecedores: visualizar

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_usuarios`
--
-- Observações de segurança:
--   • Senha: hash bcrypt (custo 12) — nunca armazenar em texto puro
--   • Login e Email possuem índice UNIQUE
--   • Bloqueio automático após 5 tentativas falhas (controle via aplicação)
--   • Token_Reset expira em 1 hora (controle via aplicação)
--   • ALTERAR TODAS AS SENHAS ANTES DO DEPLOY EM PRODUÇÃO
--

CREATE TABLE `seg_usuarios` (
  `Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    COMMENT 'Hash bcrypt custo 12. Nunca armazenar senha em texto puro.',
  `Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Foto_Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` int NOT NULL DEFAULT '1'
    COMMENT '0 = Inativo | 1 = Ativo | 2 = Suspenso | 3 = Bloqueado',
  `Ultimo_Login` datetime DEFAULT NULL,
  `Token_Reset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Token_Reset_Expira_Em` datetime DEFAULT NULL,
  `Tentativas_Login` int NOT NULL DEFAULT '0',
  `Bloqueado_Ate` datetime DEFAULT NULL,
  `Criado_Por` bigint DEFAULT NULL
    COMMENT 'Id do usuário que realizou o cadastro',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_usuarios`
--
-- Senha em texto puro (somente para seed de desenvolvimento):
--   Id 1 → Admin@2026!
--   Id 2 → Gerente@2026!
--   Id 3 → Recep@2026!
--   Id 4 → Fin@2026!
--   Id 5 → Mec@2026!
--   Id 6 → Consulta@2026!
-- Substituir os hashes pelos gerados na aplicação antes de usar em produção.
--

INSERT INTO `seg_usuarios` (`Id`, `Nome`, `Email`, `Login`, `Senha`, `Telefone`, `Foto_Url`, `Status`, `Ultimo_Login`, `Token_Reset`, `Token_Reset_Expira_Em`, `Tentativas_Login`, `Bloqueado_Ate`, `Criado_Por`, `Created_At`, `Updated_At`) VALUES
(1, 'Clever Santoro Lopes',  'clever.admin@oficina.com',   'clever.admin',   '$2y$12$T4e7kYpNq8mRsVwX2uBcLu3HzAoJ1dKfNmQeP9gWvY0bO5sX6jI4C', '(11) 95241-5782', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, '2026-04-20 00:00:00.000000', NULL),
(2, 'Carlos Alberto Gerente','carlos.gerente@oficina.com', 'carlos.gerente', '$2y$12$R7n9lZoMq5wSuVxA3vCdKt4IyBpG2eLhNpRfQ8hXwZ1cP6tY7kH3A', '(11) 98000-1002', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(3, 'Ana Paula Recepcionista','ana.recep@oficina.com',     'ana.recep',      '$2y$12$U8o0mApNr6xTvWyB4wDeJu5JzCqH3fMiOqSgR9iYxA2dQ7uZ8lI4D', '(11) 97000-1003', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(4, 'Roberto Financeiro',    'roberto.fin@oficina.com',   'roberto.fin',    '$2y$12$V9p1nBqOr7yUwXzC5xEfKv6KaDrI4gNjPrThS0jZyB3eR8vA9mJ5E', '(11) 96000-1004', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(5, 'João Mecânico Silva',   'joao.mec@oficina.com',      'joao.mec',       '$2y$12$W0q2oCrPs8zVxYaD6yFgLw7LbEsJ5hOkQsUiT1kAzC4fS9wB0nK6F', '(11) 95000-1005', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(6, 'Consulta Sistema',      'consulta@oficina.com',      'consulta.view',  '$2y$12$X1r3pDsQt9aWyZbE7zGhMx8McFtK6iPkRtVjU2lBaD5gT0xC1oL7G', '(11) 94000-1006', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL);

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_usuarios_perfis`
--

CREATE TABLE `seg_usuarios_perfis` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint NOT NULL,
  `Perfil_Id` int NOT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_usuarios_perfis`
--

INSERT INTO `seg_usuarios_perfis` (`Id`, `Usuario_Id`, `Perfil_Id`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 1, '2026-04-20 00:00:00.000000', NULL),  -- clever.admin     → Administrador
(2, 2, 2, 1, '2026-04-20 00:00:00.000000', NULL),  -- carlos.gerente   → Gerente
(3, 3, 3, 1, '2026-04-20 00:00:00.000000', NULL),  -- ana.recep         → Recepcionista
(4, 4, 4, 1, '2026-04-20 00:00:00.000000', NULL),  -- roberto.fin      → Financeiro
(5, 5, 5, 1, '2026-04-20 00:00:00.000000', NULL),  -- joao.mec         → Mecânico
(6, 6, 6, 1, '2026-04-20 00:00:00.000000', NULL);  -- consulta.view    → Consulta

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_audit_log`
--
-- Registra todas as ações relevantes realizadas pelos usuários.
-- Ações possíveis: LOGIN | LOGOUT | CREATE | UPDATE | DELETE | VIEW | EXPORT | APPROVE
-- Esta tabela é INSERT-ONLY — nunca atualizar ou excluir registros de auditoria.
--

CREATE TABLE `seg_audit_log` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint DEFAULT NULL
    COMMENT 'NULL quando a ação ocorrer sem autenticação (ex.: tentativa de login falha)',
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Login utilizado na ação (útil quando o usuário já tiver sido removido)',
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    COMMENT 'LOGIN | LOGOUT | CREATE | UPDATE | DELETE | VIEW | EXPORT | APPROVE | LOGIN_FAIL',
  `Modulo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tabela` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Registro_Id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descricao` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dados_Antes` json DEFAULT NULL
    COMMENT 'Estado do registro antes da alteração (UPDATE/DELETE)',
  `Dados_Depois` json DEFAULT NULL
    COMMENT 'Estado do registro após a alteração (CREATE/UPDATE)',
  `Ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Suporta IPv4 e IPv6',
  `User_Agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `seg_audit_log`
-- Registros de exemplo para demonstração
--

INSERT INTO `seg_audit_log` (`Id`, `Usuario_Id`, `Login`, `Acao`, `Modulo`, `Tabela`, `Registro_Id`, `Descricao`, `Dados_Antes`, `Dados_Depois`, `Ip`, `User_Agent`, `Created_At`) VALUES
(1, 1,    'clever.admin',   'LOGIN',      'Segurança',        NULL,             NULL, 'Login realizado com sucesso',                                    NULL,                                             NULL,                                               '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:00:00.000000'),
(2, 1,    'clever.admin',   'CREATE',     'Segurança',        'seg_usuarios',   '2',  'Usuário carlos.gerente criado',                                   NULL,                                             '{"Login":"carlos.gerente","Perfil":"Gerente"}',     '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:05:00.000000'),
(3, 1,    'clever.admin',   'CREATE',     'Segurança',        'seg_usuarios',   '3',  'Usuário ana.recep criado',                                        NULL,                                             '{"Login":"ana.recep","Perfil":"Recepcionista"}',    '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:06:00.000000'),
(4, 1,    'clever.admin',   'CREATE',     'Segurança',        'seg_usuarios',   '4',  'Usuário roberto.fin criado',                                      NULL,                                             '{"Login":"roberto.fin","Perfil":"Financeiro"}',     '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:07:00.000000'),
(5, 1,    'clever.admin',   'CREATE',     'Segurança',        'seg_usuarios',   '5',  'Usuário joao.mec criado',                                         NULL,                                             '{"Login":"joao.mec","Perfil":"Mecanico"}',          '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:08:00.000000'),
(6, 1,    'clever.admin',   'CREATE',     'Segurança',        'seg_usuarios',   '6',  'Usuário consulta.view criado',                                    NULL,                                             '{"Login":"consulta.view","Perfil":"Consulta"}',     '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:09:00.000000'),
(7, 2,    'carlos.gerente', 'LOGIN',      'Segurança',        NULL,             NULL, 'Login realizado com sucesso',                                    NULL,                                             NULL,                                               '192.168.1.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 09:00:00.000000'),
(8, 2,    'carlos.gerente', 'VIEW',       'Clientes',         'cad_clientes',   NULL, 'Listagem de clientes consultada',                                NULL,                                             NULL,                                               '192.168.1.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 09:05:00.000000'),
(9, NULL, NULL,             'LOGIN_FAIL', 'Segurança',        NULL,             NULL, 'Tentativa de login falha para o usuário "inexistente"',          NULL,                                             NULL,                                               '10.0.0.55',     'Mozilla/5.0 (Linux; Android 11)',            '2026-04-20 09:10:00.000000'),
(10,3,    'ana.recep',      'LOGIN',      'Segurança',        NULL,             NULL, 'Login realizado com sucesso',                                    NULL,                                             NULL,                                               '192.168.1.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 10:00:00.000000'),
(11,3,    'ana.recep',      'CREATE',     'Clientes',         'cad_clientes',   '43', 'Novo cliente cadastrado: Fábio Henrique',                         NULL,                                             '{"Nome":"Fábio Henrique","Documento":"11122233344"}','192.168.1.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 10:15:00.000000'),
(12,4,    'roberto.fin',    'LOGIN',      'Segurança',        NULL,             NULL, 'Login realizado com sucesso',                                    NULL,                                             NULL,                                               '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 11:00:00.000000'),
(13,4,    'roberto.fin',    'EXPORT',     'Financeiro',       'fin_lancamentos',NULL, 'Exportação de lançamentos financeiros — abr/2026',               NULL,                                             NULL,                                               '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 11:30:00.000000'),
(14,5,    'joao.mec',       'LOGIN',      'Segurança',        NULL,             NULL, 'Login realizado com sucesso',                                    NULL,                                             NULL,                                               '192.168.1.104', 'Mozilla/5.0 (Android 12; Mobile)',           '2026-04-20 08:30:00.000000'),
(15,5,    'joao.mec',       'UPDATE',     'Ordens de Serviço','os_ordens',      '101','OS #101 atualizada: status alterado para "Em Execução"',          '{"Status":"Aguardando"}',                        '{"Status":"Em Execução"}',                         '192.168.1.104', 'Mozilla/5.0 (Android 12; Mobile)',           '2026-04-20 08:45:00.000000'),
(16,1,    'clever.admin',   'LOGOUT',     'Segurança',        NULL,             NULL, 'Sessão encerrada',                                               NULL,                                             NULL,                                               '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 18:00:00.000000');

-- ============================================================
-- Índices e chaves primárias
-- ============================================================

--
-- Índices de tabela `seg_modulos`
--
ALTER TABLE `seg_modulos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_modulos_nome` (`Nome`);

--
-- Índices de tabela `seg_perfis`
--
ALTER TABLE `seg_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_nome` (`Nome`);

--
-- Índices de tabela `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_permissoes_modulo_acao` (`Modulo_Id`, `Acao`),
  ADD KEY `IDX_seg_permissoes_modulo` (`Modulo_Id`);

--
-- Índices de tabela `seg_perfis_permissoes`
--
ALTER TABLE `seg_perfis_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_permissoes` (`Perfil_Id`, `Permissao_Id`),
  ADD KEY `IDX_seg_perfis_permissoes_perfil` (`Perfil_Id`),
  ADD KEY `IDX_seg_perfis_permissoes_permissao` (`Permissao_Id`);

--
-- Índices de tabela `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_email` (`Email`),
  ADD UNIQUE KEY `UQ_seg_usuarios_login` (`Login`),
  ADD KEY `IDX_seg_usuarios_status` (`Status`);

--
-- Índices de tabela `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_perfis` (`Usuario_Id`, `Perfil_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_perfil` (`Perfil_Id`);

--
-- Índices de tabela `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_seg_audit_log_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_audit_log_acao` (`Acao`),
  ADD KEY `IDX_seg_audit_log_created` (`Created_At`);

-- ============================================================
-- AUTO_INCREMENT
-- ============================================================

ALTER TABLE `seg_modulos`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `seg_perfis`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `seg_permissoes`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

ALTER TABLE `seg_perfis_permissoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

ALTER TABLE `seg_usuarios`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `seg_usuarios_perfis`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `seg_audit_log`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

-- ============================================================
-- Restrições (Foreign Keys)
-- ============================================================

--
-- Restrições para tabelas `seg_modulos`
--
ALTER TABLE `seg_modulos`
  ADD CONSTRAINT `FK_seg_modulos_pai` FOREIGN KEY (`Modulo_Pai_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  ADD CONSTRAINT `FK_seg_permissoes_modulo` FOREIGN KEY (`Modulo_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_perfis_permissoes`
--
ALTER TABLE `seg_perfis_permissoes`
  ADD CONSTRAINT `FK_seg_perfis_permissoes_perfil`    FOREIGN KEY (`Perfil_Id`)    REFERENCES `seg_perfis`    (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_perfis_permissoes_permissao` FOREIGN KEY (`Permissao_Id`) REFERENCES `seg_permissoes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  ADD CONSTRAINT `FK_seg_usuarios_criado_por` FOREIGN KEY (`Criado_Por`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  ADD CONSTRAINT `FK_seg_usuarios_perfis_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_usuarios_perfis_perfil`  FOREIGN KEY (`Perfil_Id`)  REFERENCES `seg_perfis`   (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  ADD CONSTRAINT `FK_seg_audit_log_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
