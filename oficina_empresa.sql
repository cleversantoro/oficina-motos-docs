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

INSERT INTO `empresa_config` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `logradouro`, `cidade`, `estado`, `updated_at`) VALUES
(1, 'Mecânica Torque Certo Ltda', 'Torque Certo Motos', '12.345.678/0001-90', 'Av. Brasil, 1500', 'São Paulo', 'SP', '2025-12-09 21:07:15'),
(2, 'Mecânica Torque Certo Ltda', 'Torque Certo - Filial Sul', '12.345.678/0002-70', 'Rua das Flores, 200', 'Curitiba', 'PR', '2025-12-09 21:07:15'),
(3, 'Mecânica Torque Certo Ltda', 'Torque Certo - Filial Minas', '12.345.678/0003-50', 'Av. Afonso Pena, 300', 'Belo Horizonte', 'MG', '2025-12-09 21:07:15'),
(4, 'Motos Performance S.A', 'Top Speed Garage', '98.765.432/0001-10', 'Rua da Velocidade, 88', 'Rio de Janeiro', 'RJ', '2025-12-09 21:07:15'),
(5, 'Oficina do Zé MEI', 'Oficina do Zé', '45.678.901/0001-22', 'Rua Pequena, 10', 'Osasco', 'SP', '2025-12-09 21:07:15');

ALTER TABLE `empresa_config`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `empresa_config`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;


CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `colaborador_id` int DEFAULT NULL,
  `email_login` varchar(100) NOT NULL,
  `senha_hash` varchar(255) NOT NULL,
  `perfil_acesso` enum('ADMIN','GERENTE','ATENDIMENTO','MECANICO') DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `usuarios` (`id`, `colaborador_id`, `email_login`, `senha_hash`, `perfil_acesso`, `is_deleted`) VALUES
(1, 3, 'gerencia@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'GERENTE', 0),
(2, 1, 'carlos.mec@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'MECANICO', 0),
(3, 2, 'ana.atend@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'ATENDIMENTO', 0),
(4, 4, 'pedro.mec@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'MECANICO', 0),
(5, 5, 'financeiro@oficina.com', '$2y$10$ExemploHashDeSenhaSegura123', 'ADMIN', 0);

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_login` (`email_login`),
  ADD KEY `colaborador_id` (`colaborador_id`);

ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`);
  
COMMIT;  