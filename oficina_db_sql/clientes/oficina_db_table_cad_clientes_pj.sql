
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_pj`
--

CREATE TABLE `cad_clientes_pj` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Razao_Social` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome_Fantasia` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Inscricao_Estadual` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Inscricao_Municipal` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Responsavel` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_pj`
--

INSERT INTO `cad_clientes_pj` (`Id`, `Cliente_Id`, `Cnpj`, `Razao_Social`, `Nome_Fantasia`, `Inscricao_Estadual`, `Inscricao_Municipal`, `Responsavel`, `Created_At`, `Updated_At`) VALUES
(1, 6, '11222333444455', 'Auto Peças Horizonte LTDA', 'Auto Horizonte', '112.223.334.444', '12.345.678', 'Paulo Henrique', '2025-10-14 00:15:25.000000', NULL),
(2, 7, '55443322110088', 'TechFleet Serviços LTDA', 'TechFleet', '554.433.221.100', '98.765.432', 'Renata Lima', '2025-10-14 00:15:25.000000', NULL),
(3, 8, '00334455667788', 'Logparts Comércio LTDA', 'Logparts', '003.344.556.677', '11.222.333', 'Fernando Costa', '2025-10-14 00:15:25.000000', NULL),
(4, 9, '00998877665544', 'FleetPlus Transportes SA', 'FleetPlus', '009.988.776.655', '66.555.444', 'Marcela Queiroz', '2025-10-14 00:15:25.000000', NULL),
(5, 10, '00778899001122', 'Motores Brasil Indústria LTDA', 'Motores Brasil', '007.788.990.011', '55.444.333', 'Leonardo Azevedo', '2025-10-14 00:15:25.000000', NULL),
(6, 28, '10000001000110', 'Transportadora Veloz LTDA', 'Transporte Veloz', '111.222.333.111', '123.456', 'Ricardo Alves', '2025-11-13 14:02:00.000000', NULL),
(7, 29, '10000002000120', 'Alimentos Sabor Divino EIRELI', 'Sabor Divino', '222.333.444.222', '234.567', 'Beatriz Costa', '2025-11-13 14:02:00.000000', NULL),
(8, 30, '10000003000130', 'Segurança Protege S.A.', 'Protege Vigilância', '333.444.555.333', '345.678', 'Carlos Eduardo', '2025-11-13 14:02:00.000000', NULL),
(9, 31, '10000004000140', 'ConstruMoura Empreiteira', 'ConstruMoura', '444.555.666.444', '456.789', 'Daniel Moura', '2025-11-13 14:02:00.000000', NULL),
(10, 32, '10000005000150', 'Escola Futura Kids LTDA', 'Escola Futura', '555.666.777.555', '567.890', 'Elisa Fernandes', '2025-11-13 14:02:00.000000', NULL),
(11, 33, '10000006000160', 'TI Soluções Tech ME', 'Soluções Tech', '666.777.888.666', '678.901', 'Fábio Guedes', '2025-11-13 14:02:00.000000', NULL),
(12, 34, '10000007000170', 'Clínica Vet Vida Animal EIRELI', 'Vet Vida', '777.888.999.777', '789.012', 'Gabriela Pinto', '2025-11-13 14:02:00.000000', NULL),
(13, 35, '10000008000180', 'Restaurante Sabor Caseiro', 'Sabor Caseiro', '888.999.000.888', '890.123', 'Hugo Matos', '2025-11-13 14:02:00.000000', NULL),
(14, 36, '10000009000190', 'Academia Corpo Forte LTDA', 'Academia Corpo Forte', '999.000.111.999', '901.234', 'Ícaro Lopes', '2025-11-13 14:02:00.000000', NULL),
(15, 37, '10000010000100', 'Jardim Florido Paisagismo', 'Jardim Florido', '000.111.222.000', '012.345', 'Janaína Rios', '2025-11-13 14:02:00.000000', NULL),
(16, 38, '10000011000111', 'Consultório OdontoPrime S/S', 'OdontoPrime', '111.222.333.112', '123.457', 'Kátia Moreira', '2025-11-13 14:02:00.000000', NULL),
(17, 39, '10000012000122', 'Gráfica Impressão Rápida', 'Impressão Rápida', '222.333.444.223', '234.568', 'Lucas Barros', '2025-11-13 14:02:00.000000', NULL),
(18, 40, '10000013000133', 'Padaria Doce Manhã LTDA', 'Padaria Doce Manhã', '333.444.555.334', '345.679', 'Márcia Oliveira', '2025-11-13 14:02:00.000000', NULL),
(19, 41, '10000014000144', 'Auto Elétrica Carga Rápida', 'Carga Rápida', '444.555.666.445', '456.780', 'Nairto Gomes', '2025-11-13 14:02:00.000000', NULL),
(20, 42, '10000015000155', 'Oficina de Motos Duas Rodas', 'Duas Rodas Oficina', '555.666.777.556', '567.891', 'Otávio Pereira', '2025-11-13 14:02:00.000000', NULL);
