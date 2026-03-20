-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Tempo de geração: 14/12/2025 às 19:49
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
-- Banco de dados: `oficina_motos_pro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nome` varchar(150) NOT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `telefone_principal` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf_cnpj`, `telefone_principal`, `email`, `logradouro`, `cidade`, `estado`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'João Oliveira', '123.123.123-12', '1199999-1111', 'joao@email.com', 'Rua A, 100', 'São Paulo', 'SP', 0, '2025-12-09 21:07:15', '2025-12-10 22:33:07'),
(2, 'Maria Fernandes', '321.321.321-32', '1198888-2222', 'maria@email.com', 'Rua B, 200', 'São Paulo', 'SP', 0, '2025-12-09 21:07:15', '2025-12-10 22:33:11'),
(3, 'Entregas Rápidas LTDA', '10.000.000/0001-00', '113030-4040', 'contato@entregas.com', 'Av Industrial, 500', 'São Bernardo', 'SP', 0, '2025-12-09 21:07:15', '2025-12-10 22:33:15'),
(4, 'Lucas Pereira', '456.456.456-45', '1197777-3333', 'lucas@email.com', 'Rua C, 300', 'Santo André', 'SP', 0, '2025-12-09 21:07:15', '2025-12-10 22:33:17'),
(5, 'Fernanda Costa', '654.654.654-65', '1196666-4444', 'fernanda@email.com', 'Rua D, 400', 'São Caetano', 'SP', 0, '2025-12-09 21:07:15', '2025-12-10 22:33:20'),
(6, 'Clever Santoro Lopes', '14054923803', '944425784', 'clever@email.com', NULL, NULL, NULL, 1, '2025-12-10 19:43:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int NOT NULL,
  `nome_completo` varchar(150) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `nome_completo`, `cpf`, `cargo`, `ativo`, `created_at`) VALUES
(1, 'Carlos Silva', '111.222.333-44', 'Mecânico Chefe', 1, '2025-12-09 21:07:15'),
(2, 'Ana Souza', '222.333.444-55', 'Atendente', 1, '2025-12-09 21:07:15'),
(3, 'Roberto Santos', '333.444.555-66', 'Gerente', 1, '2025-12-09 21:07:15'),
(4, 'Pedro Almeida', '444.555.666-77', 'Mecânico Auxiliar', 1, '2025-12-09 21:07:15'),
(5, 'Julia Lima', '555.666.777-88', 'Financeiro', 1, '2025-12-09 21:07:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresa_config`
--

CREATE TABLE `empresa_config` (
  `id` int NOT NULL,
  `razao_social` varchar(150) NOT NULL,
  `nome_fantasia` varchar(150) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  `logradouro` varchar(150) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `empresa_config`
--

INSERT INTO `empresa_config` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `logradouro`, `cidade`, `estado`, `updated_at`) VALUES
(1, 'Mecânica Torque Certo Ltda', 'Torque Certo Motos', '12.345.678/0001-90', 'Av. Brasil, 1500', 'São Paulo', 'SP', '2025-12-09 21:07:15'),
(2, 'Mecânica Torque Certo Ltda', 'Torque Certo - Filial Sul', '12.345.678/0002-70', 'Rua das Flores, 200', 'Curitiba', 'PR', '2025-12-09 21:07:15'),
(3, 'Mecânica Torque Certo Ltda', 'Torque Certo - Filial Minas', '12.345.678/0003-50', 'Av. Afonso Pena, 300', 'Belo Horizonte', 'MG', '2025-12-09 21:07:15'),
(4, 'Motos Performance S.A', 'Top Speed Garage', '98.765.432/0001-10', 'Rua da Velocidade, 88', 'Rio de Janeiro', 'RJ', '2025-12-09 21:07:15'),
(5, 'Oficina do Zé MEI', 'Oficina do Zé', '45.678.901/0001-22', 'Rua Pequena, 10', 'Osasco', 'SP', '2025-12-09 21:07:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int NOT NULL,
  `razao_social` varchar(150) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `razao_social`, `cnpj`, `telefone`, `is_deleted`) VALUES
(1, 'Distribuidora Peças Brasil', '50.111.222/0001-33', '114004-1000', 0),
(2, 'Lubrificantes do Sul', '60.222.333/0001-44', '413333-4000', 0),
(3, 'Pneus & Borrachas', '70.333.444/0001-55', '212222-5000', 0),
(4, 'Elétrica Moto Parts', '80.444.555/0001-66', '313333-6000', 0),
(5, 'Ferramentas Pro', '90.555.666/0001-77', '115555-7000', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamentos_financeiros`
--

CREATE TABLE `lancamentos_financeiros` (
  `id` int NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `tipo` enum('RECEITA','DESPESA') NOT NULL,
  `os_id` int DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `lancamentos_financeiros`
--

INSERT INTO `lancamentos_financeiros` (`id`, `descricao`, `tipo`, `os_id`, `valor`, `data_vencimento`, `data_pagamento`) VALUES
(1, 'Recebimento OS #1 - João Oliveira', 'RECEITA', 1, 100.00, '2025-12-09', '2025-12-09'),
(2, 'Pagamento Conta de Luz', 'DESPESA', NULL, 450.00, '2025-12-14', NULL),
(3, 'Compra de Peças - Fornecedor 2', 'DESPESA', NULL, 1200.00, '2025-12-07', '2025-12-07'),
(4, 'Adiantamento OS #2 - Maria', 'RECEITA', 2, 150.00, '2025-12-09', '2025-12-09'),
(5, 'Pagamento Aluguel', 'DESPESA', NULL, 2500.00, '2025-12-19', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `motos`
--

CREATE TABLE `motos` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `placa` varchar(10) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `ano_modelo` int DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `renavam` varchar(30) DEFAULT NULL,
  `observacoes` text,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `motos`
--

INSERT INTO `motos` (`id`, `cliente_id`, `placa`, `marca`, `modelo`, `ano_modelo`, `cor`, `renavam`, `observacoes`, `is_deleted`) VALUES
(1, 1, 'ABC-1234', 'Honda', 'CG 160 Titan', 2022, 'Vermelha', '12345678900', NULL, 0),
(2, 2, 'DEF-5678', 'Yamaha', 'Fazer 250', 2021, 'Azul', '09876543211', NULL, 0),
(3, 3, 'GHI-9012', 'Honda', 'Biz 125', 2023, 'Branca', '11223344556', NULL, 0),
(4, 4, 'JKL-3456', 'Kawasaki', 'Ninja 400', 2020, 'Verde', '66778899001', NULL, 0),
(5, 5, 'MNO-7890', 'BMW', 'G 310 GS', 2022, 'Preta', '55443322110', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ordens_servico`
--

CREATE TABLE `ordens_servico` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `moto_id` int NOT NULL,
  `colaborador_abertura_id` int DEFAULT NULL,
  `status` enum('ORCAMENTO','APROVADO','EM_EXECUCAO','FINALIZADO','CANCELADO') DEFAULT 'ORCAMENTO',
  `relato_cliente` text,
  `diagnostico_tecnico` text,
  `total_produtos` decimal(10,2) DEFAULT '0.00',
  `total_servicos` decimal(10,2) DEFAULT '0.00',
  `valor_total_final` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `ordens_servico`
--

INSERT INTO `ordens_servico` (`id`, `cliente_id`, `moto_id`, `colaborador_abertura_id`, `status`, `relato_cliente`, `diagnostico_tecnico`, `total_produtos`, `total_servicos`, `valor_total_final`, `created_at`) VALUES
(1, 1, 1, 2, 'FINALIZADO', 'Moto falhando e troca de óleo', 'Vela suja e óleo vencido', 70.00, 30.00, 100.00, '2025-12-09 21:07:15'),
(2, 2, 2, 2, 'EM_EXECUCAO', 'Revisão de 10 mil km', 'Necessário troca de pastilhas e filtros', 85.00, 250.00, 335.00, '2025-12-09 21:07:15'),
(3, 3, 3, 2, 'ORCAMENTO', 'Pneu furado e barulho na corrente', 'Pneu careca, necessário troca. Relação gasta.', 530.00, 120.00, 650.00, '2025-12-09 21:07:15'),
(4, 4, 4, 3, 'APROVADO', 'Troca de pastilha de freio', 'Pastilhas gastas', 60.00, 0.00, 60.00, '2025-12-09 21:07:15'),
(5, 5, 5, 3, 'CANCELADO', 'Motor fazendo barulho estranho', 'Motor fundido, cliente achou caro', 0.00, 0.00, 0.00, '2025-12-09 21:07:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_itens`
--

CREATE TABLE `os_itens` (
  `id` int NOT NULL,
  `os_id` int NOT NULL,
  `tipo_item` enum('PRODUTO','SERVICO') NOT NULL,
  `produto_id` int DEFAULT NULL,
  `lote_id` int DEFAULT NULL,
  `servico_id` int DEFAULT NULL,
  `colaborador_executante_id` int DEFAULT NULL,
  `quantidade` decimal(10,2) DEFAULT '1.00',
  `valor_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `comissao_valor_final` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_itens`
--

INSERT INTO `os_itens` (`id`, `os_id`, `tipo_item`, `produto_id`, `lote_id`, `servico_id`, `colaborador_executante_id`, `quantidade`, `valor_unitario`, `subtotal`, `comissao_valor_final`) VALUES
(1, 1, 'PRODUTO', 1, 1, NULL, NULL, 1.00, 45.00, 45.00, 0.00),
(2, 1, 'PRODUTO', 2, 2, NULL, NULL, 1.00, 25.00, 25.00, 0.00),
(3, 1, 'SERVICO', NULL, NULL, 1, 1, 1.00, 30.00, 30.00, 0.00),
(4, 2, 'SERVICO', NULL, NULL, 2, 4, 1.00, 250.00, 250.00, 75.00),
(5, 2, 'PRODUTO', 2, 2, NULL, NULL, 1.00, 25.00, 25.00, 0.00),
(6, 2, 'PRODUTO', 5, 5, NULL, NULL, 1.00, 60.00, 60.00, 0.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int NOT NULL,
  `nome` varchar(150) NOT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  `preco_venda` decimal(10,2) NOT NULL,
  `estoque_atual` int DEFAULT '0',
  `estoque_minimo` int DEFAULT '5',
  `ncm` varchar(10) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `codigo_barras`, `preco_venda`, `estoque_atual`, `estoque_minimo`, `ncm`, `is_deleted`) VALUES
(1, 'Óleo Semissintético 10W30', '789100010001', 45.00, 50, 10, '27101932', 0),
(2, 'Filtro de Óleo Honda CG', '789100010002', 25.00, 30, 5, '84212300', 0),
(3, 'Pneu Traseiro 130/70-17', '789100010003', 350.00, 10, 2, '40114000', 0),
(4, 'Kit Relação (Corrente/Coroa/Pinhão)', '789100010004', 180.00, 15, 3, '87141000', 0),
(5, 'Pastilha de Freio Dianteira', '789100010005', 60.00, 20, 4, '87149400', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto_lotes`
--

CREATE TABLE `produto_lotes` (
  `id` int NOT NULL,
  `produto_id` int NOT NULL,
  `fornecedor_id` int DEFAULT NULL,
  `numero_lote_fabricante` varchar(50) DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `preco_compra_unitario` decimal(10,2) NOT NULL,
  `quantidade_inicial` int NOT NULL,
  `quantidade_restante` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produto_lotes`
--

INSERT INTO `produto_lotes` (`id`, `produto_id`, `fornecedor_id`, `numero_lote_fabricante`, `data_validade`, `preco_compra_unitario`, `quantidade_inicial`, `quantidade_restante`) VALUES
(1, 1, 2, 'LOTE-OLEO-001', '2028-12-31', 20.00, 100, 50),
(2, 2, 1, 'LOTE-FILTRO-A', NULL, 10.00, 50, 30),
(3, 3, 3, 'LOTE-PNEU-X', '2030-01-01', 200.00, 20, 10),
(4, 4, 1, 'LOTE-REL-2023', NULL, 90.00, 25, 15),
(5, 5, 4, 'LOTE-FREIO-BZ', NULL, 25.00, 40, 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int NOT NULL,
  `nome` varchar(150) NOT NULL,
  `preco_base` decimal(10,2) NOT NULL,
  `comissao_percentual` decimal(5,2) DEFAULT '0.00',
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `preco_base`, `comissao_percentual`, `is_deleted`) VALUES
(1, 'Troca de Óleo e Filtro', 30.00, 0.00, 0),
(2, 'Revisão Geral', 250.00, 30.00, 0),
(3, 'Troca de Pneu', 40.00, 10.00, 0),
(4, 'Instalação de Kit Relação', 80.00, 20.00, 0),
(5, 'Lavagem Simples', 35.00, 50.00, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `colaborador_id` int DEFAULT NULL,
  `email_login` varchar(100) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `perfil_acesso` enum('ADMIN','GERENTE','ATENDIMENTO','MECANICO') DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `colaborador_id`, `email_login`, `senha_hash`, `perfil_acesso`, `is_deleted`) VALUES
(1, 3, 'gerencia@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'GERENTE', 0),
(2, 1, 'carlos.mec@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'MECANICO', 0),
(3, 2, 'ana.atend@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'ATENDIMENTO', 0),
(4, 4, 'pedro.mec@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'MECANICO', 0),
(5, 5, 'financeiro@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'ADMIN', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `empresa_config`
--
ALTER TABLE `empresa_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `lancamentos_financeiros`
--
ALTER TABLE `lancamentos_financeiros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `os_id` (`os_id`);

--
-- Índices de tabela `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Índices de tabela `ordens_servico`
--
ALTER TABLE `ordens_servico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `moto_id` (`moto_id`);

--
-- Índices de tabela `os_itens`
--
ALTER TABLE `os_itens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `os_id` (`os_id`),
  ADD KEY `produto_id` (`produto_id`),
  ADD KEY `lote_id` (`lote_id`),
  ADD KEY `servico_id` (`servico_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produto_lotes`
--
ALTER TABLE `produto_lotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produto_id` (`produto_id`),
  ADD KEY `fornecedor_id` (`fornecedor_id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_login` (`email_login`),
  ADD KEY `colaborador_id` (`colaborador_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `empresa_config`
--
ALTER TABLE `empresa_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `lancamentos_financeiros`
--
ALTER TABLE `lancamentos_financeiros`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `motos`
--
ALTER TABLE `motos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `ordens_servico`
--
ALTER TABLE `ordens_servico`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `os_itens`
--
ALTER TABLE `os_itens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto_lotes`
--
ALTER TABLE `produto_lotes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `lancamentos_financeiros`
--
ALTER TABLE `lancamentos_financeiros`
  ADD CONSTRAINT `lancamentos_financeiros_ibfk_1` FOREIGN KEY (`os_id`) REFERENCES `ordens_servico` (`id`);

--
-- Restrições para tabelas `motos`
--
ALTER TABLE `motos`
  ADD CONSTRAINT `motos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Restrições para tabelas `ordens_servico`
--
ALTER TABLE `ordens_servico`
  ADD CONSTRAINT `ordens_servico_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ordens_servico_ibfk_2` FOREIGN KEY (`moto_id`) REFERENCES `motos` (`id`);

--
-- Restrições para tabelas `os_itens`
--
ALTER TABLE `os_itens`
  ADD CONSTRAINT `os_itens_ibfk_1` FOREIGN KEY (`os_id`) REFERENCES `ordens_servico` (`id`),
  ADD CONSTRAINT `os_itens_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `os_itens_ibfk_3` FOREIGN KEY (`lote_id`) REFERENCES `produto_lotes` (`id`),
  ADD CONSTRAINT `os_itens_ibfk_4` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`);

--
-- Restrições para tabelas `produto_lotes`
--
ALTER TABLE `produto_lotes`
  ADD CONSTRAINT `produto_lotes_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`),
  ADD CONSTRAINT `produto_lotes_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`);

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
