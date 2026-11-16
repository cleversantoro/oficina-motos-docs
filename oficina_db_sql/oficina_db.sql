-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Tempo de geração: 04/11/2026 às 23:32
-- Versão do servidor: 8.0.44
-- Versão do PHP: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_anexos`
--

CREATE TABLE `os_anexos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `Nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_upload` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_avaliacoes`
--

CREATE TABLE `os_avaliacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `Nota` int NOT NULL,
  `Comentario` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Usuario` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_checklists`
--

CREATE TABLE `os_checklists` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `Item` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Realizado` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_itens`
--

CREATE TABLE `os_itens` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `peca_id` bigint DEFAULT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `quantidade` int NOT NULL,
  `valor_unitario` decimal(18,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `total` decimal(18,2) NOT NULL DEFAULT '0.00',
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_itens`
--

INSERT INTO `os_itens` (`Id`, `ordem_servico_id`, `peca_id`, `Descricao`, `quantidade`, `valor_unitario`, `created_at`, `updated_at`, `total`, `DeletedAt`, `IsDeleted`) VALUES
(1, 2, NULL, 'troca de freio', 1, 20.00, '2026-09-10 00:30:57.325455', NULL, 0.00, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_observacoes`
--

CREATE TABLE `os_observacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `Usuario` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Texto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens`
--

CREATE TABLE `os_ordens` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint NOT NULL,
  `mecanico_id` bigint NOT NULL,
  `veiculo_id` bigint NOT NULL DEFAULT '0',
  `descricao_problema` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Aberta',
  `data_abertura` datetime(6) NOT NULL,
  `data_conclusao` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_ordens`
--

INSERT INTO `os_ordens` (`Id`, `cliente_id`, `mecanico_id`, `veiculo_id`, `descricao_problema`, `status`, `data_abertura`, `data_conclusao`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 1, 1, 'Teste', 'Aberta', '2026-08-12 20:32:00.000000', NULL, '2026-08-12 23:35:01.569104', NULL, NULL, 0),
(2, 1, 1, 1, 'freio', 'EmAndamento', '0001-01-01 00:00:00.000000', NULL, '2026-09-09 01:45:52.380349', '2026-09-09 01:46:10.397684', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens_historico`
--

CREATE TABLE `os_ordens_historico` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `data_alteracao` datetime(6) NOT NULL,
  `Usuario` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Campo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_antigo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_novo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_pagamentos`
--

CREATE TABLE `os_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `Valor` decimal(18,2) NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_pagamento` datetime(6) DEFAULT NULL,
  `Metodo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_anexos_ordem_servico_id` (`ordem_servico_id`);

--
-- Índices de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_avaliacoes_ordem_servico_id` (`ordem_servico_id`);

--
-- Índices de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_checklists_ordem_servico_id` (`ordem_servico_id`);

--
-- Índices de tabela `os_itens`
--
ALTER TABLE `os_itens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_itens_ordem_servico_id` (`ordem_servico_id`),
  ADD KEY `IX_os_itens_peca_id` (`peca_id`);

--
-- Índices de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_observacoes_ordem_servico_id` (`ordem_servico_id`);

--
-- Índices de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_cliente_id` (`cliente_id`),
  ADD KEY `IX_os_ordens_mecanico_id` (`mecanico_id`),
  ADD KEY `IX_os_ordens_veiculo_id` (`veiculo_id`);

--
-- Índices de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_historico_ordem_servico_id` (`ordem_servico_id`);

--
-- Índices de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_pagamentos_ordem_servico_id` (`ordem_servico_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_itens`
--
ALTER TABLE `os_itens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD CONSTRAINT `FK_os_anexos_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD CONSTRAINT `FK_os_avaliacoes_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD CONSTRAINT `FK_os_checklists_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_itens`
--
ALTER TABLE `os_itens`
  ADD CONSTRAINT `FK_os_itens_est_pecas_peca_id` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_os_itens_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD CONSTRAINT `FK_os_observacoes_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD CONSTRAINT `FK_os_ordens_cad_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_os_ordens_cad_mecanicos_mecanico_id` FOREIGN KEY (`mecanico_id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `FK_os_ordens_cad_veiculos_veiculo_id` FOREIGN KEY (`veiculo_id`) REFERENCES `cad_veiculos` (`Id`) ON DELETE RESTRICT;

--
-- Restrições para tabelas `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD CONSTRAINT `FK_os_ordens_historico_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD CONSTRAINT `FK_os_pagamentos_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
