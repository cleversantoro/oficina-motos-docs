-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_usuarios_perfis`
-- Relação N:N entre usuários e perfis
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

--
-- Índices de tabela `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_perfis` (`Usuario_Id`, `Perfil_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_perfil` (`Perfil_Id`),
  ADD CONSTRAINT `FK_seg_usuarios_perfis_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_usuarios_perfis_perfil`  FOREIGN KEY (`Perfil_Id`)  REFERENCES `seg_perfis`   (`Id`) ON DELETE CASCADE;

ALTER TABLE `seg_usuarios_perfis`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
