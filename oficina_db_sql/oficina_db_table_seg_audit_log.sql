-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_audit_log`
--
-- Observações:
--   • Esta tabela é INSERT-ONLY — nunca atualizar ou excluir registros de auditoria.
--   • Ações: LOGIN | LOGOUT | LOGIN_FAIL | CREATE | UPDATE | DELETE | VIEW | EXPORT | APPROVE
--   • Usuario_Id é NULL em ações sem autenticação (ex.: LOGIN_FAIL)
--   • Ip suporta IPv4 (max 15 chars) e IPv6 (max 45 chars)
--   • Dados_Antes e Dados_Depois armazenam snapshot JSON para rastreabilidade
--

CREATE TABLE `seg_audit_log` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint DEFAULT NULL
    COMMENT 'NULL quando a ação ocorrer sem autenticação (ex.: tentativa de login falha)',
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
    COMMENT 'Login utilizado na ação (útil quando o usuário já tiver sido removido)',
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    COMMENT 'LOGIN | LOGOUT | LOGIN_FAIL | CREATE | UPDATE | DELETE | VIEW | EXPORT | APPROVE',
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
(1,  1,    'clever.admin',   'LOGIN',      'Segurança',         NULL,             NULL, 'Login realizado com sucesso',                                NULL,                                             NULL,                                              '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:00:00.000000'),
(2,  1,    'clever.admin',   'CREATE',     'Segurança',         'seg_usuarios',   '2',  'Usuário carlos.gerente criado',                               NULL,                                             '{"Login":"carlos.gerente","Perfil":"Gerente"}',    '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:05:00.000000'),
(3,  1,    'clever.admin',   'CREATE',     'Segurança',         'seg_usuarios',   '3',  'Usuário ana.recep criado',                                    NULL,                                             '{"Login":"ana.recep","Perfil":"Recepcionista"}',   '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:06:00.000000'),
(4,  1,    'clever.admin',   'CREATE',     'Segurança',         'seg_usuarios',   '4',  'Usuário roberto.fin criado',                                  NULL,                                             '{"Login":"roberto.fin","Perfil":"Financeiro"}',    '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:07:00.000000'),
(5,  1,    'clever.admin',   'CREATE',     'Segurança',         'seg_usuarios',   '5',  'Usuário joao.mec criado',                                     NULL,                                             '{"Login":"joao.mec","Perfil":"Mecanico"}',         '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:08:00.000000'),
(6,  1,    'clever.admin',   'CREATE',     'Segurança',         'seg_usuarios',   '6',  'Usuário consulta.view criado',                                NULL,                                             '{"Login":"consulta.view","Perfil":"Consulta"}',    '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 08:09:00.000000'),
(7,  2,    'carlos.gerente', 'LOGIN',      'Segurança',         NULL,             NULL, 'Login realizado com sucesso',                                NULL,                                             NULL,                                              '192.168.1.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 09:00:00.000000'),
(8,  2,    'carlos.gerente', 'VIEW',       'Clientes',          'cad_clientes',   NULL, 'Listagem de clientes consultada',                            NULL,                                             NULL,                                              '192.168.1.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 09:05:00.000000'),
(9,  NULL, NULL,             'LOGIN_FAIL', 'Segurança',         NULL,             NULL, 'Tentativa de login falha para o usuário "inexistente"',      NULL,                                             NULL,                                              '10.0.0.55',     'Mozilla/5.0 (Linux; Android 11)',            '2026-04-20 09:10:00.000000'),
(10, 3,    'ana.recep',      'LOGIN',      'Segurança',         NULL,             NULL, 'Login realizado com sucesso',                                NULL,                                             NULL,                                              '192.168.1.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 10:00:00.000000'),
(11, 3,    'ana.recep',      'CREATE',     'Clientes',          'cad_clientes',   '43', 'Novo cliente cadastrado: Fábio Henrique',                     NULL,                                             '{"Nome":"Fábio Henrique","Documento":"11122233344"}','192.168.1.102','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 10:15:00.000000'),
(12, 4,    'roberto.fin',    'LOGIN',      'Segurança',         NULL,             NULL, 'Login realizado com sucesso',                                NULL,                                             NULL,                                              '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 11:00:00.000000'),
(13, 4,    'roberto.fin',    'EXPORT',     'Financeiro',        'fin_lancamentos',NULL, 'Exportação de lançamentos financeiros — abr/2026',            NULL,                                             NULL,                                              '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 11:30:00.000000'),
(14, 5,    'joao.mec',       'LOGIN',      'Segurança',         NULL,             NULL, 'Login realizado com sucesso',                                NULL,                                             NULL,                                              '192.168.1.104', 'Mozilla/5.0 (Android 12; Mobile)',           '2026-04-20 08:30:00.000000'),
(15, 5,    'joao.mec',       'UPDATE',     'Ordens de Serviço', 'os_ordens',      '101','OS #101 atualizada: status alterado para Em Execução',        '{"Status":"Aguardando"}',                        '{"Status":"Em Execução"}',                        '192.168.1.104', 'Mozilla/5.0 (Android 12; Mobile)',           '2026-04-20 08:45:00.000000'),
(16, 1,    'clever.admin',   'LOGOUT',     'Segurança',         NULL,             NULL, 'Sessão encerrada',                                           NULL,                                             NULL,                                              '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2026-04-20 18:00:00.000000');

--
-- Índices de tabela `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_seg_audit_log_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_audit_log_acao` (`Acao`),
  ADD KEY `IDX_seg_audit_log_created` (`Created_At`),
  ADD CONSTRAINT `FK_seg_audit_log_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

ALTER TABLE `seg_audit_log`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
