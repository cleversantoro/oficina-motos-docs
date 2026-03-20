
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes`
--

CREATE TABLE `cad_clientes` (
  `Id` bigint NOT NULL,
  `Codigo` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NomeExibicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo` int NOT NULL,
  `Status` int NOT NULL COMMENT '0 = Inativo\r\n1 = Ativo\r\n2 = Suspenso\r\n3 = Bloqueado',
  `Vip` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrigemCadastroId` int NOT NULL DEFAULT '0',
  `Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Origem_Id` bigint DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes`
--

INSERT INTO `cad_clientes` (`Id`, `Codigo`, `Nome`, `NomeExibicao`, `Documento`, `Tipo`, `Status`, `Vip`, `Observacoes`, `OrigemCadastroId`, `Telefone`, `Email`, `Origem_Id`, `Created_At`, `Updated_At`) VALUES
(1, 20241010001, 'Mariana Souza', 'Mariana Souza', '12345678901', 1, 1, 0, 'Nova cliente via campanha digital', 1, '(11) 91234-1001', 'mariana.souza@example.com', 1, '2025-10-14 00:15:25.000000', NULL),
(2, 20241010002, 'Carlos Barbosa', 'Carlos Barbosa', '98765432100', 1, 1, 1, 'Cliente VIP indicado por parceiro', 2, '(11) 98888-2002', 'carlos.barbosa@example.com', 2, '2025-10-14 00:15:25.000000', NULL),
(3, 20241010003, 'Luciana Prado', 'Luciana Prado', '45678912300', 1, 2, 0, 'Aguardando aprovação de orçamento', 3, '(11) 95555-3003', 'luciana.prado@example.com', 3, '2025-10-14 00:15:25.000000', NULL),
(4, 20241010004, 'Eduardo Martins', 'Eduardo Martins', '74185296300', 1, 1, 0, 'Prefere atendimentos noturnos', 4, '(11) 94444-4004', 'eduardo.martins@example.com', 4, '2025-10-14 00:15:25.000000', NULL),
(5, 20241010005, 'Fernanda Reis', 'Fernanda Reis', '36925814700', 1, 1, 0, 'Parceria com empresa local', 5, '(11) 93333-5005', 'fernanda.reis@example.com', 5, '2025-10-14 00:15:25.000000', NULL),
(6, 20241010006, 'Auto Peças Horizonte LTDA', 'Auto Horizonte', '11222333444455', 2, 1, 0, 'Fornecedor eventual de peças', 1, '(11) 3456-6006', 'contato@autohorizonte.com.br', 1, '2025-10-14 00:15:25.000000', NULL),
(7, 20241010007, 'TechFleet Serviços LTDA', 'TechFleet', '55443322110088', 2, 1, 1, 'Contrato de manutenção de frota', 2, '(11) 4000-7007', 'suporte@techfleet.com.br', 2, '2025-10-14 00:15:25.000000', NULL),
(8, 20241010008, 'Logparts Comércio LTDA', 'Logparts', '00334455667788', 2, 1, 0, 'Parceiro logístico', 3, '(11) 3666-8008', 'suporte@logparts.com.br', 3, '2025-10-14 00:15:25.000000', NULL),
(9, 20241010009, 'FleetPlus Transportes SA', 'FleetPlus', '00998877665544', 2, 1, 1, 'Cliente corporativo', 4, '(11) 3222-9009', 'contato@fleetplus.com.br', 4, '2025-10-14 00:15:25.000000', NULL),
(10, 20241010010, 'Motores Brasil Indústria LTDA', 'Motores Brasil', '00778899001122', 2, 1, 0, 'Fornece componentes especiais', 5, '(11) 3111-0010', 'comercial@motoresbr.com', 5, '2025-10-14 00:15:25.000000', NULL),
(12, 20241010026, 'Clever Santoro Lopes', 'Clever Santoro', '45678912359', 1, 1, 1, 'Aguardando orçamento', 3, '11 952415782', 'clever.lopes@example.com', 3, '2025-10-14 00:15:25.000000', NULL),
(13, 20241010027, 'Rafael Oliveira', 'Rafael Oliveira', '11122233344', 1, 1, 0, 'Cliente novo, veio por indicação', 2, '(11) 98765-4321', 'rafael.oliveira@example.com', 2, '2025-11-13 12:23:00.000000', NULL),
(14, 20241010028, 'Juliana Costa', 'Juliana Costa', '22233344455', 1, 1, 1, 'Cliente VIP, prioridade no atendimento', 4, '(21) 91234-5678', 'juliana.costa@example.com', 4, '2025-11-13 12:23:00.000000', NULL),
(15, 20241010029, 'Soluções Rápidas LTDA', 'Soluções Rápidas', '12345678000199', 2, 1, 0, 'Contrato de manutenção de frota pequena', 5, '(31) 3333-4444', 'contato@solucoesrapidas.com', 5, '2025-11-13 12:23:00.000000', NULL),
(16, 20241010030, 'Bruno Santos', 'Bruno Santos', '33344455566', 1, 1, 0, 'Veio pela campanha do Google', 1, '(41) 99988-7766', 'bruno.santos@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(17, 20241010031, 'Camila Pereira', 'Camila Pereira', '44455566677', 1, 2, 0, 'Orçamento pendente de aprovação', 3, '(51) 98877-6655', 'camila.pereira@example.com', 3, '2025-11-13 12:23:00.000000', NULL),
(18, 20241010032, 'Transportadora Veloz SA', 'Transportadora Veloz', '87654321000188', 2, 1, 1, 'Parceiro logístico estratégico', 2, '(61) 3210-9876', 'logistica@velozsa.com', 2, '2025-11-13 12:23:00.000000', NULL),
(19, 20241010033, 'Lucas Ferreira', 'Lucas Ferreira', '55566677788', 1, 1, 0, '', 1, '(71) 98123-4567', 'lucas.ferreira@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(20, 20241010034, 'Beatriz Almeida', 'Beatriz Almeida', '66677788899', 1, 1, 0, 'Cliente recorrente para revisões', 4, '(81) 99111-2222', 'beatriz.almeida@example.com', 4, '2025-11-13 12:23:00.000000', NULL),
(21, 20241010035, 'Comércio de Peças União', 'Peças União', '11223344000155', 2, 1, 0, 'Fornecedor de peças de reposição', 5, '(11) 4567-8901', 'vendas@pecasuniao.com', 5, '2025-11-13 12:23:00.000000', NULL),
(22, 20241010036, 'Gustavo Lima', 'Gustavo Lima', '77788899900', 1, 1, 1, 'Indicação de cliente VIP', 2, '(11) 98888-1111', 'gustavo.lima@example.com', 2, '2025-11-13 12:23:00.000000', NULL),
(23, 20241010037, 'Larissa Rodrigues', 'Larissa Rodrigues', '88899900011', 1, 1, 0, 'Primeiro serviço na oficina', 1, '(21) 97777-3333', 'larissa.rodrigues@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(24, 20241010038, 'Serviços Automotivos Confiança', 'Confiança Auto', '22334455000166', 2, 1, 0, 'Parceria para serviços terceirizados', 3, '(31) 3444-5555', 'parcerias@confiancaauto.com', 3, '2025-11-13 12:23:00.000000', NULL),
(25, 20241010039, 'Matheus Martins', 'Matheus Martins', '99900011122', 1, 1, 0, 'Solicitou orçamento para funilaria', 3, '(41) 96666-4444', 'matheus.martins@example.com', 3, '2025-11-13 12:23:00.000000', NULL),
(26, 20241010040, 'Amanda Gomes', 'Amanda Gomes', '00011122233', 1, 1, 0, '', 5, '(51) 95555-8888', 'amanda.gomes@example.com', 5, '2025-11-13 12:23:00.000000', NULL),
(27, 20241010041, 'Global Parts Importação', 'Global Parts', '33445566000177', 2, 1, 1, 'Fornecedor de peças importadas', 2, '(61) 3987-6543', 'import@globalparts.com', 2, '2025-11-13 12:23:00.000000', NULL),
(28, 20241010042, 'Felipe Azevedo', 'Felipe Azevedo', '11122233355', 1, 1, 0, 'Cliente antigo', 4, '(71) 94444-9999', 'felipe.azevedo@example.com', 4, '2025-11-13 12:23:00.000000', NULL),
(29, 20241010043, 'Gabriela Ribeiro', 'Gabriela Ribeiro', '22233344466', 1, 0, 0, 'Cliente inativo, última visita há 2 anos', 1, '(81) 93333-0000', 'gabriela.ribeiro@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(30, 20241010044, 'Frota Express Logística', 'Frota Express', '44556677000188', 2, 1, 0, 'Manutenção de vans e utilitários', 5, '(11) 3111-2222', 'frota@expresslog.com', 5, '2025-11-13 12:23:00.000000', NULL),
(31, 20241010045, 'Thiago Carvalho', 'Thiago Carvalho', '33344455577', 1, 1, 0, 'Veio pela fachada da loja', 5, '(21) 92222-1111', 'thiago.carvalho@example.com', 5, '2025-11-13 12:23:00.000000', NULL),
(32, 20241010046, 'Vanessa Rocha', 'Vanessa Rocha', '44455566688', 1, 1, 1, 'Cliente VIP, parente do proprietário', 2, '(31) 91111-9999', 'vanessa.rocha@example.com', 2, '2025-11-13 12:23:00.000000', NULL),
(33, 20241010047, 'Mecânica Central SP', 'Mecânica Central', '55667788000199', 2, 1, 0, 'Oficina parceira', 3, '(11) 3888-7777', 'contato@mecanicacentralsp.com', 3, '2025-11-13 12:23:00.000000', NULL),
(34, 20241010048, 'Leonardo Barbosa', 'Leonardo Barbosa', '55566677799', 1, 1, 0, 'Cliente de primeira viagem', 1, '(41) 98888-6666', 'leonardo.barbosa@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(35, 20241010049, 'Priscila Dias', 'Priscila Dias', '66677788800', 1, 2, 0, 'Bloqueado por falta de pagamento', 3, '(51) 97777-5555', 'priscila.dias@example.com', 3, '2025-11-13 12:23:00.000000', NULL),
(36, 20241010050, 'Distribuidora de Pneus Brasil', 'Pneus Brasil', '66778899000100', 2, 1, 0, 'Fornecedor principal de pneus', 4, '(61) 3555-4444', 'comercial@pneusbrasil.com', 4, '2025-11-13 12:23:00.000000', NULL),
(37, 20241010051, 'Diego Castro', 'Diego Castro', '77788899911', 1, 1, 0, '', 5, '(71) 96666-3333', 'diego.castro@example.com', 5, '2025-11-13 12:23:00.000000', NULL),
(38, 20241010052, 'Sofia Nunes', 'Sofia Nunes', '88899900022', 1, 1, 0, 'Prefere contato via WhatsApp', 1, '(81) 95555-2222', 'sofia.nunes@example.com', 1, '2025-11-13 12:23:00.000000', NULL),
(39, 20241010053, 'Oficina do Futuro EIRELI', 'Oficina do Futuro', '77889900000111', 2, 1, 1, 'Cliente corporativo com contrato de fidelidade', 2, '(11) 3444-1111', 'adm@oficinadofuturo.com', 2, '2025-11-13 12:23:00.000000', NULL),
(40, 20241010054, 'Ricardo Mendes', 'Ricardo Mendes', '99900011133', 1, 1, 0, 'Indicação de amigo', 2, '(21) 94444-8888', 'ricardo.mendes@example.com', 2, '2025-11-13 12:23:00.000000', NULL),
(41, 20241010055, 'Alice Teixeira', 'Alice Teixeira', '00011122244', 1, 1, 0, 'Agendou revisão anual', 4, '(31) 93333-7777', 'alice.teixeira@example.com', 4, '2025-11-13 12:23:00.000000', NULL),
(42, 20241010056, 'Auto Center Famoso LTDA', 'Auto Center Famoso', '88990011000122', 2, 1, 0, 'Parceiro para alinhamento e balanceamento', 3, '(41) 3222-9999', 'parceria@autocenterfamoso.com', 3, '2025-11-13 12:23:00.000000', NULL);
