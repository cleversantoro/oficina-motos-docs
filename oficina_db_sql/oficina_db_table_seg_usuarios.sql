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
-- Senha em texto puro (somente para seed de desenvolvimento — ALTERAR em produção):
--   Id 1 (clever.admin)   → Admin@2026!
--   Id 2 (carlos.gerente) → Gerente@2026!
--   Id 3 (ana.recep)       → Recep@2026!
--   Id 4 (roberto.fin)    → Fin@2026!
--   Id 5 (joao.mec)       → Mec@2026!
--   Id 6 (consulta.view)  → Consulta@2026!
--

INSERT INTO `seg_usuarios` (`Id`, `Nome`, `Email`, `Login`, `Senha`, `Telefone`, `Foto_Url`, `Status`, `Ultimo_Login`, `Token_Reset`, `Token_Reset_Expira_Em`, `Tentativas_Login`, `Bloqueado_Ate`, `Criado_Por`, `Created_At`, `Updated_At`) VALUES
(1, 'Clever Santoro Lopes',  'clever.admin@oficina.com',   'clever.admin',   '$2y$12$T4e7kYpNq8mRsVwX2uBcLu3HzAoJ1dKfNmQeP9gWvY0bO5sX6jI4C', '(11) 95241-5782', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, '2026-04-20 00:00:00.000000', NULL),
(2, 'Carlos Alberto Gerente','carlos.gerente@oficina.com', 'carlos.gerente', '$2y$12$R7n9lZoMq5wSuVxA3vCdKt4IyBpG2eLhNpRfQ8hXwZ1cP6tY7kH3A', '(11) 98000-1002', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(3, 'Ana Paula Recepcionista','ana.recep@oficina.com',     'ana.recep',      '$2y$12$U8o0mApNr6xTvWyB4wDeJu5JzCqH3fMiOqSgR9iYxA2dQ7uZ8lI4D', '(11) 97000-1003', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(4, 'Roberto Financeiro',    'roberto.fin@oficina.com',   'roberto.fin',    '$2y$12$V9p1nBqOr7yUwXzC5xEfKv6KaDrI4gNjPrThS0jZyB3eR8vA9mJ5E', '(11) 96000-1004', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(5, 'João Mecânico Silva',   'joao.mec@oficina.com',      'joao.mec',       '$2y$12$W0q2oCrPs8zVxYaD6yFgLw7LbEsJ5hOkQsUiT1kAzC4fS9wB0nK6F', '(11) 95000-1005', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL),
(6, 'Consulta Sistema',      'consulta@oficina.com',      'consulta.view',  '$2y$12$X1r3pDsQt9aWyZbE7zGhMx8McFtK6iPkRtVjU2lBaD5gT0xC1oL7G', '(11) 94000-1006', NULL, 1, NULL, NULL, NULL, 0, NULL, 1,    '2026-04-20 00:00:00.000000', NULL);

--
-- Índices de tabela `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_email` (`Email`),
  ADD UNIQUE KEY `UQ_seg_usuarios_login` (`Login`),
  ADD KEY `IDX_seg_usuarios_status` (`Status`),
  ADD CONSTRAINT `FK_seg_usuarios_criado_por` FOREIGN KEY (`Criado_Por`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

ALTER TABLE `seg_usuarios`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
