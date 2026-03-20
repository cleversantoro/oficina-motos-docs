
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_categorias`
--

CREATE TABLE `est_categorias` (
  `Id` bigint NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_categorias`
--

INSERT INTO `est_categorias` (`Id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Filtros', 'Filtros de óleo, ar e combustível', '2025-11-06 23:55:09.215', NULL),
(2, 'Correias', 'Correias dentadas e auxiliares', '2025-11-06 23:55:09.215', NULL),
(3, 'Freios', 'Pastilhas, discos e lonas', '2025-11-06 23:55:09.215', NULL),
(4, 'Suspensão', 'Amortecedores, buchas e pivôs', '2025-11-06 23:55:09.215', NULL),
(5, 'Elétrica', 'Baterias, lâmpadas e chicotes', '2025-11-06 23:55:09.215', NULL),
(6, 'Injeção', 'Bicos, sensores e bombas de combustível', '2025-11-13 10:10:00.500', NULL),
(7, 'Transmissão', 'Kits de embreagem, homocinéticas e rolamentos', '2025-11-13 10:10:00.500', NULL),
(8, 'Lubrificantes e Fluidos', 'Óleos de motor, câmbio e fluidos diversos', '2025-11-13 10:10:00.500', NULL),
(9, 'Baterias', 'Baterias automotivas e de moto', '2025-11-13 10:10:00.500', NULL),
(10, 'Iluminação', 'Lâmpadas, faróis e lanternas', '2025-11-13 10:10:00.500', NULL),
(11, 'Arrefecimento', 'Radiadores, válvulas termostáticas, mangueiras', '2025-11-13 10:10:00.500', NULL),
(12, 'Visibilidade', 'Palhetas de limpador e vidros', '2025-11-13 10:10:00.500', NULL),
(13, 'Escapamento', 'Silenciosos, catalisadores e ponteiras', '2025-11-13 10:10:00.500', NULL),
(14, 'Lataria', 'Para-choques, portas e capôs', '2025-11-13 10:10:00.500', NULL),
(15, 'Acabamento Interno', 'Tapetes, forros e painéis', '2025-11-13 10:10:00.500', NULL),
(16, 'Ferramentas', 'Ferramentas manuais e especiais', '2025-11-13 10:10:00.500', NULL),
(17, 'Pneus', 'Pneus de passeio e carga', '2025-11-13 10:10:00.500', NULL),
(18, 'Rodas', 'Rodas de liga leve e aço', '2025-11-13 10:10:00.500', NULL),
(19, 'Segurança', 'Cintos, airbags e módulos', '2025-11-13 10:10:00.500', NULL),
(20, 'Acessórios', 'Som, alarmes e racks', '2025-11-13 10:10:00.500', NULL),
(21, 'Químicos', 'Adesivos, desengripantes e limpeza', '2025-11-13 10:10:00.500', NULL),
(22, 'Mangueiras', 'Mangueiras de combustível, água e ar', '2025-11-13 10:10:00.500', NULL),
(23, 'Juntas e Retentores', 'Juntas de motor e retentores', '2025-11-13 10:10:00.500', NULL),
(24, 'Rolamentos', 'Rolamentos de roda e motor', '2025-11-13 10:10:00.500', NULL),
(25, 'Parafusos e Fixação', 'Kits de parafusos e fixadores', '2025-11-13 10:10:00.500', NULL),
(26, 'Módulos Eletrônicos', 'Módulos de injeção e conforto', '2025-11-13 10:10:00.500', NULL),
(27, 'Performance', 'Filtros esportivos, turbinas', '2025-11-13 10:10:00.500', NULL),
(28, 'Direção', 'Caixas de direção, terminais e axiais', '2025-11-13 10:10:00.500', NULL),
(29, 'Ar Condicionado', 'Compressores, filtros e gás', '2025-11-13 10:10:00.500', NULL),
(30, 'Motor', 'Pistões, anéis, bielas', '2025-11-13 10:10:00.500', NULL),
(31, 'Vidros e Travas', 'Máquinas de vidro e travas elétricas', '2025-11-13 10:10:00.500', NULL),
(32, 'Borrachas e Guarnições', 'Guarnições de porta e vedação', '2025-11-13 10:10:00.500', NULL),
(33, 'Carga', 'Engates, reboques e bagageiros', '2025-11-13 10:10:00.500', NULL),
(34, 'Oficina (Diversos)', 'EPIs, material de limpeza', '2025-11-13 10:10:00.500', NULL),
(35, 'Admissão', 'TBI, corpo de borboleta, coletor', '2025-11-13 10:10:00.500', NULL);
