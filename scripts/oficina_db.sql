-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Tempo de geração: 20/04/2026 às 19:31
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_anexos`
--

CREATE TABLE `cad_clientes_anexos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_anexos`
--

INSERT INTO `cad_clientes_anexos` (`Id`, `Cliente_Id`, `Nome`, `Tipo`, `Url`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'RG_Mariana.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Mariana.pdf', 'Doc de identificação', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 'CNH_Carlos.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNH_Carlos.jpg', 'CNH digitalizada', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 'Orcamento_Luciana.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'https://storage.oficina.com/docs/Orcamento_Luciana.xlsx', 'Orçamento aprovado', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 'Comprovante_Endereco_Eduardo.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Comprovante_Endereco_Eduardo.pdf', 'Endereço atualizado', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 'Contrato_Fernanda.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Fernanda.pdf', 'Contrato corporativo', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 'CNH_Ricardo.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Ricardo.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(7, 14, 'RG_Beatriz.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/RG_Beatriz.jpg', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(8, 15, 'Comprovante_Residencia_Carlos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Comprovante_Residencia_Carlos.pdf', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(9, 16, 'Documento_Estudante_Daniel.png', 'image/png', 'https://storage.oficina.com/docs/Documento_Estudante_Daniel.png', 'Comprovante estudante', '2025-11-13 14:03:00.000000', NULL),
(10, 17, 'OAB_Elisa.pdf', 'application/pdf', 'https://storage.oficina.com/docs/OAB_Elisa.pdf', 'Documento profissional', '2025-11-13 14:03:00.000000', NULL),
(11, 18, 'CNH_Fabio.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNH_Fabio.jpg', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(12, 19, 'RG_Gabriela.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Gabriela.pdf', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(13, 20, 'Comprovante_Residencia_Hugo.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Comprovante_Residencia_Hugo.jpg', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(14, 21, 'CNH_Icaro.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Icaro.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(15, 22, 'CRO_Janaina.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CRO_Janaina.pdf', 'Documento profissional', '2025-11-13 14:03:00.000000', NULL),
(16, 23, 'RG_Katia.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/RG_Katia.jpg', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(17, 24, 'CNH_Lucas.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNH_Lucas.pdf', 'CNH PF', '2025-11-13 14:03:00.000000', NULL),
(18, 25, 'Funcional_Marcia.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Funcional_Marcia.pdf', 'Documento funcional', '2025-11-13 14:03:00.000000', NULL),
(19, 26, 'Comprovante_Residencia_Nairto.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Comprovante_Residencia_Nairto.jpg', 'Endereço PF', '2025-11-13 14:03:00.000000', NULL),
(20, 27, 'RG_Otavio.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Otavio.pdf', 'RG PF', '2025-11-13 14:03:00.000000', NULL),
(21, 28, 'Contrato_Social_Transportadora.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Social_Transportadora.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(22, 29, 'CNPJ_Alimentos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Alimentos.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(23, 30, 'Procuracao_Protege.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Procuracao_Protege.pdf', 'Procuração Responsável', '2025-11-13 14:03:00.000000', NULL),
(24, 31, 'CNPJ_ConstruMoura.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_ConstruMoura.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(25, 32, 'Alvara_Escola.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Alvara_Escola.pdf', 'Alvará PJ', '2025-11-13 14:03:00.000000', NULL),
(26, 33, 'Contrato_Social_TI.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Social_TI.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(27, 34, 'CNPJ_Vet.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Vet.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(28, 35, 'Contrato_Restaurante.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/Contrato_Restaurante.jpg', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(29, 36, 'CNPJ_Academia.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Academia.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(30, 37, 'Contrato_Jardim.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Jardim.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(31, 38, 'CNPJ_Odonto.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_Odonto.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(32, 39, 'Contrato_Grafica.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Grafica.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL),
(33, 40, 'CNPJ_Padaria.pdf', 'application/pdf', 'https://storage.oficina.com/docs/CNPJ_Padaria.pdf', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(34, 41, 'CNPJ_Eletrica.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNPJ_Eletrica.jpg', 'Cartão CNPJ', '2025-11-13 14:03:00.000000', NULL),
(35, 42, 'Contrato_Motos.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Motos.pdf', 'Contrato Social PJ', '2025-11-13 14:03:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_contatos`
--

CREATE TABLE `cad_clientes_contatos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_contatos`
--

INSERT INTO `cad_clientes_contatos` (`Id`, `Cliente_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 2, '(11) 91234-1001', 1, 'WhatsApp principal', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 3, 'carlos.barbosa@example.com', 1, 'E-mail preferencial', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 1, '(11) 95555-3003', 1, 'Telefone residencial', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 2, '(11) 94444-4004', 1, 'Contato urgente', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, 'fernanda.reis@example.com', 1, 'E-mail corporativo', '2025-10-14 00:15:25.000000', NULL),
(6, 12, 2, '(11) 91234-1056', 1, 'WhatsApp principal', '2025-10-14 00:15:25.000000', NULL),
(8, 12, 2, '(11) 91234-1078', 0, 'Telefone residencial', '2025-10-14 00:15:25.000000', NULL),
(9, 13, 2, '(11) 91111-0013', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(10, 14, 3, 'beatriz.enf@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(11, 15, 1, '(11) 2111-0015', 1, 'Residencial', '2025-11-13 14:04:00.000000', NULL),
(12, 16, 2, '(11) 91111-0016', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(13, 17, 3, 'daniel.moura.adv@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(14, 18, 2, '(11) 91111-0018', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(15, 19, 3, 'fabio.guedes.dev@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(16, 20, 2, '(11) 91111-0020', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(17, 21, 1, '(11) 3111-0021', 1, 'Comercial', '2025-11-13 14:04:00.000000', NULL),
(18, 22, 3, 'janaina.rios.odonto@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(19, 23, 2, '(11) 91111-0023', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(20, 24, 3, 'lucas.jornal@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(21, 25, 2, '(11) 91111-0025', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(22, 26, 3, 'nairto.bio@example.com', 1, 'E-mail', '2025-11-13 14:04:00.000000', NULL),
(23, 27, 2, '(11) 91111-0027', 1, 'WhatsApp', '2025-11-13 14:04:00.000000', NULL),
(24, 28, 3, 'ricardo.alves@transporteveloz.com', 1, 'E-mail (Financeiro PJ)', '2025-11-13 14:04:00.000000', NULL),
(25, 29, 2, '(11) 92222-0029', 1, 'WhatsApp (Compras PJ)', '2025-11-13 14:04:00.000000', NULL),
(26, 30, 1, '(11) 4222-0030', 1, 'Telefone (Base PJ)', '2025-11-13 14:04:00.000000', NULL),
(27, 31, 3, 'daniel@construmoura.com', 1, 'E-mail (Proprietário PJ)', '2025-11-13 14:04:00.000000', NULL),
(28, 32, 2, '(11) 92222-0032', 1, 'WhatsApp (Diretoria PJ)', '2025-11-13 14:04:00.000000', NULL),
(29, 33, 3, 'fabio@solucoestech.com', 1, 'E-mail (TI PJ)', '2025-11-13 14:04:00.000000', NULL),
(30, 34, 2, '(11) 92222-0034', 1, 'WhatsApp (Clínica PJ)', '2025-11-13 14:04:00.000000', NULL),
(31, 35, 1, '(11) 5222-0035', 1, 'Telefone (Restaurante PJ)', '2025-11-13 14:04:00.000000', NULL),
(32, 36, 3, 'contato@corpoforte.com', 1, 'E-mail (Recepção PJ)', '2025-11-13 14:04:00.000000', NULL),
(33, 37, 2, '(11) 92222-0037', 1, 'WhatsApp (Paisagismo PJ)', '2025-11-13 14:04:00.000000', NULL),
(34, 38, 3, 'katia.moreira@odontoprime.com', 1, 'E-mail (Consultório PJ)', '2025-11-13 14:04:00.000000', NULL),
(35, 39, 1, '(11) 6222-0039', 1, 'Telefone (Gráfica PJ)', '2025-11-13 14:04:00.000000', NULL),
(36, 40, 2, '(11) 92222-0040', 1, 'WhatsApp (Padaria PJ)', '2025-11-13 14:04:00.000000', NULL),
(37, 41, 3, 'nairto.gomes@cargaluz.com', 1, 'E-mail (Elétrica PJ)', '2025-11-13 14:04:00.000000', NULL),
(38, 42, 2, '(11) 92222-0042', 1, 'WhatsApp (Oficina Moto PJ)', '2025-11-13 14:04:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_documentos`
--

CREATE TABLE `cad_clientes_documentos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Documento` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Orgao_Expedidor` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_documentos`
--

INSERT INTO `cad_clientes_documentos` (`Id`, `Cliente_Id`, `Tipo`, `Documento`, `Data_Emissao`, `Data_Validade`, `Orgao_Expedidor`, `Principal`, `Created_At`, `Updated_At`) VALUES
(11001, 13, 'CPF', '11122233301', '2005-01-10', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11002, 14, 'CPF', '22233344402', '2013-05-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11003, 15, 'CPF', '33344455503', '1995-03-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11004, 16, 'CPF', '44455566604', '2018-02-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11005, 17, 'CPF', '55566677705', '2008-09-05', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11006, 18, 'CPF', '66677788806', '2010-11-12', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11007, 19, 'CPF', '77788899907', '2006-07-07', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11008, 20, 'CPF', '88899900008', '2016-04-18', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11009, 21, 'CPF', '99900011109', '1999-01-30', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11010, 22, 'CPF', '00011122210', '2011-06-22', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11011, 23, 'CPF', '11122233311', '2004-08-14', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11012, 24, 'CPF', '22233344412', '2009-10-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11013, 25, 'CPF', '33344455513', '2007-03-25', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11014, 26, 'CPF', '44455566614', '2014-11-08', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11015, 27, 'CPF', '55566677715', '2000-12-19', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11016, 28, 'CNPJ', '10000001000110', '2010-01-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11017, 29, 'CNPJ', '10000002000120', '2012-03-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11018, 30, 'CNPJ', '10000003000130', '2008-05-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11019, 31, 'CNPJ', '10000004000140', '2015-07-10', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11020, 32, 'CNPJ', '10000005000150', '2018-02-05', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11021, 33, 'CNPJ', '10000006000160', '2019-11-11', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11022, 34, 'CNPJ', '10000007000170', '2017-09-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11023, 35, 'CNPJ', '10000008000180', '2014-04-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11024, 36, 'CNPJ', '10000009000190', '2016-06-15', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11025, 37, 'CNPJ', '10000010000100', '2013-10-01', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11026, 38, 'CNPJ', '10000011000111', '2011-08-25', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11027, 39, 'CNPJ', '10000012000122', '2009-12-30', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11028, 40, 'CNPJ', '10000013000133', '2010-02-18', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11029, 41, 'CNPJ', '10000014000144', '2007-05-14', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL),
(11030, 42, 'CNPJ', '10000015000155', '2014-01-20', NULL, 'Receita Federal', 1, '2025-11-13 14:20:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_enderecos`
--

CREATE TABLE `cad_clientes_enderecos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Cep` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logradouro` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_enderecos`
--

INSERT INTO `cad_clientes_enderecos` (`Id`, `Cliente_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, '01310-100', 'Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', 'Brasil', 'Apto 101', 1, '2025-10-14 00:15:25.000000', NULL),
(2, 2, 1, '04001-001', 'Rua Vergueiro', '250', 'Paraíso', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-10-14 00:15:25.000000', NULL),
(3, 3, 1, '04567-020', 'Av. Faria Lima', '1500', 'Itaim Bibi', 'São Paulo', 'SP', 'Brasil', 'Conj. 1207', 1, '2025-10-14 00:15:25.000000', NULL),
(4, 4, 2, '06000-020', 'Rua do Progresso', '900', 'Centro', 'Osasco', 'SP', 'Brasil', 'Sala 05', 1, '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, '07070-030', 'Rua das Flores', '45', 'Jardim', 'Guarulhos', 'SP', 'Brasil', NULL, 1, '2025-10-14 00:15:25.000000', NULL),
(6, 13, 1, '09010-010', 'Rua Alfa', '10', 'Centro', 'Santo André', 'SP', 'Brasil', 'Apto 11', 1, '2025-11-13 14:05:00.000000', NULL),
(7, 14, 1, '09010-020', 'Rua Beta', '20', 'Jardim', 'Santo André', 'SP', 'Brasil', 'Casa 2', 1, '2025-11-13 14:05:00.000000', NULL),
(8, 15, 1, '09010-030', 'Rua Gama', '30', 'Vila Alpina', 'Santo André', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(9, 16, 1, '09510-010', 'Av. Delta', '40', 'Centro', 'São Caetano do Sul', 'SP', 'Brasil', 'Apto 33', 1, '2025-11-13 14:05:00.000000', NULL),
(10, 17, 1, '09510-020', 'Rua Epsilon', '50', 'Santa Paula', 'São Caetano do Sul', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(11, 18, 1, '09510-030', 'Av. Zeta', '60', 'Olímpico', 'São Caetano do Sul', 'SP', 'Brasil', 'Casa 1', 1, '2025-11-13 14:05:00.000000', NULL),
(12, 19, 1, '09710-010', 'Rua Eta', '70', 'Centro', 'São Bernardo do Campo', 'SP', 'Brasil', 'Apto 44', 1, '2025-11-13 14:05:00.000000', NULL),
(13, 20, 1, '09710-020', 'Rua Teta', '80', 'Baeta Neves', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(14, 21, 1, '09710-030', 'Rua Iota', '90', 'Nova Petrópolis', 'São Bernardo do Campo', 'SP', 'Brasil', 'Bloco B', 1, '2025-11-13 14:05:00.000000', NULL),
(15, 22, 1, '09810-010', 'Rua Kappa', '100', 'Assunção', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(16, 23, 1, '09210-010', 'Rua Lambda', '110', 'Vila Pires', 'Santo André', 'SP', 'Brasil', 'Apto 55', 1, '2025-11-13 14:05:00.000000', NULL),
(17, 24, 1, '09210-020', 'Rua Mi', '120', 'Vila Gilda', 'Santo André', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(18, 25, 1, '09210-030', 'Rua Ni', '130', 'Utinga', 'Santo André', 'SP', 'Brasil', 'Fundos', 1, '2025-11-13 14:05:00.000000', NULL),
(19, 26, 1, '09610-010', 'Rua Xi', '140', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', 'Brasil', 'Apto 66', 1, '2025-11-13 14:05:00.000000', NULL),
(20, 27, 1, '09610-020', 'Rua Omicron', '150', 'Paulicéia', 'São Bernardo do Campo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(21, 28, 3, '04001-010', 'Av. Pi', '160', 'Paraíso', 'São Paulo', 'SP', 'Brasil', 'Galpão 1', 1, '2025-11-13 14:05:00.000000', NULL),
(22, 29, 3, '04001-020', 'Av. Ro', '170', 'Vila Mariana', 'São Paulo', 'SP', 'Brasil', 'Loja A', 1, '2025-11-13 14:05:00.000000', NULL),
(23, 30, 3, '04001-030', 'Av. Sigma', '180', 'Aclimação', 'São Paulo', 'SP', 'Brasil', 'Base 1', 1, '2025-11-13 14:05:00.000000', NULL),
(24, 31, 3, '03010-010', 'Rua Tau', '190', 'Brás', 'São Paulo', 'SP', 'Brasil', 'Depósito', 1, '2025-11-13 14:05:00.000000', NULL),
(25, 32, 3, '03010-020', 'Rua Upsilon', '200', 'Mooca', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(26, 33, 3, '03010-030', 'Rua Fi', '210', 'Tatuapé', 'São Paulo', 'SP', 'Brasil', 'Sala 10', 1, '2025-11-13 14:05:00.000000', NULL),
(27, 34, 3, '05010-010', 'Rua Chi', '220', 'Perdizes', 'São Paulo', 'SP', 'Brasil', 'Consultório 5', 1, '2025-11-13 14:05:00.000000', NULL),
(28, 35, 3, '05010-020', 'Rua Psi', '230', 'Pompéia', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(29, 36, 3, '05010-030', 'Rua Omega', '240', 'Lapa', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(30, 37, 3, '05410-010', 'Rua Alfa 2', '250', 'Pinheiros', 'São Paulo', 'SP', 'Brasil', 'Loja 3', 1, '2025-11-13 14:05:00.000000', NULL),
(31, 38, 3, '05410-020', 'Rua Beta 2', '260', 'Vila Madalena', 'São Paulo', 'SP', 'Brasil', 'Sala 202', 1, '2025-11-13 14:05:00.000000', NULL),
(32, 39, 3, '01010-010', 'Rua Gama 2', '270', 'Centro', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(33, 40, 3, '01010-020', 'Rua Delta 2', '280', 'Consolação', 'São Paulo', 'SP', 'Brasil', 'Loja 1', 1, '2025-11-13 14:05:00.000000', NULL),
(34, 41, 3, '01010-030', 'Rua Epsilon 2', '290', 'Santa Cecília', 'São Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:05:00.000000', NULL),
(35, 42, 3, '01010-040', 'Rua Zeta 2', '300', 'República', 'São Paulo', 'SP', 'Brasil', 'Box 5', 1, '2025-11-13 14:05:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_financeiro`
--

CREATE TABLE `cad_clientes_financeiro` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Limite_Credito` decimal(10,2) DEFAULT NULL,
  `Prazo_Pagamento` int DEFAULT NULL,
  `Bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_financeiro`
--

INSERT INTO `cad_clientes_financeiro` (`Id`, `Cliente_Id`, `Limite_Credito`, `Prazo_Pagamento`, `Bloqueado`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(1, 1, 5000.00, 15, 0, 'Limite padrão PF', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 8000.00, 20, 0, 'Cliente VIP', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 3000.00, 10, 0, 'Liberado após análise', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 4500.00, 20, 0, 'Perfil regular', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 6000.00, 25, 0, 'Cliente corporativo pequeno porte', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(7, 14, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(8, 15, 2000.00, 5, 0, 'Novo cliente PF - Risco moderado', '2025-11-13 14:06:00.000000', NULL),
(9, 16, 2500.00, 10, 0, 'Novo cliente PF (Estudante)', '2025-11-13 14:06:00.000000', NULL),
(10, 17, 7000.00, 20, 0, 'Cliente PF (Advogado)', '2025-11-13 14:06:00.000000', NULL),
(11, 18, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(12, 19, 5000.00, 15, 0, 'Cliente PF (Programador)', '2025-11-13 14:06:00.000000', NULL),
(13, 20, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(14, 21, 4000.00, 15, 0, 'Cliente PF (Contador)', '2025-11-13 14:06:00.000000', NULL),
(15, 22, 6000.00, 20, 0, 'Cliente PF (Dentista)', '2025-11-13 14:06:00.000000', NULL),
(16, 23, 4000.00, 15, 0, 'Cliente PF (Bancário)', '2025-11-13 14:06:00.000000', NULL),
(17, 24, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(18, 25, 3500.00, 10, 0, 'Cliente PF (Policial)', '2025-11-13 14:06:00.000000', NULL),
(19, 26, 3000.00, 10, 0, 'Novo cliente PF', '2025-11-13 14:06:00.000000', NULL),
(20, 27, 4000.00, 15, 0, 'Cliente PF (Rep. Comercial)', '2025-11-13 14:06:00.000000', NULL),
(21, 28, 20000.00, 30, 0, 'Cliente PJ (Transportadora) - Frota grande', '2025-11-13 14:06:00.000000', NULL),
(22, 29, 8000.00, 20, 0, 'Cliente PJ (Alimentos)', '2025-11-13 14:06:00.000000', NULL),
(23, 30, 15000.00, 30, 0, 'Cliente PJ (Segurança)', '2025-11-13 14:06:00.000000', NULL),
(24, 31, 10000.00, 25, 0, 'Cliente PJ (Construção)', '2025-11-13 14:06:00.000000', NULL),
(25, 32, 5000.00, 20, 0, 'Cliente PJ (Escola) - Vans', '2025-11-13 14:06:00.000000', NULL),
(26, 33, 6000.00, 20, 0, 'Cliente PJ (TI)', '2025-11-13 14:06:00.000000', NULL),
(27, 34, 5000.00, 15, 0, 'Cliente PJ (Clínica Vet)', '2025-11-13 14:06:00.000000', NULL),
(28, 35, 4000.00, 15, 0, 'Cliente PJ (Restaurante)', '2025-11-13 14:06:00.000000', NULL),
(29, 36, 4000.00, 15, 0, 'Cliente PJ (Academia)', '2025-11-13 14:06:00.000000', NULL),
(30, 37, 5000.00, 20, 0, 'Cliente PJ (Paisagismo)', '2025-11-13 14:06:00.000000', NULL),
(31, 38, 7000.00, 20, 0, 'Cliente PJ (Consultório)', '2025-11-13 14:06:00.000000', NULL),
(32, 39, 6000.00, 20, 0, 'Cliente PJ (Gráfica)', '2025-11-13 14:06:00.000000', NULL),
(33, 40, 4000.00, 15, 0, 'Cliente PJ (Padaria)', '2025-11-13 14:06:00.000000', NULL),
(34, 41, 8000.00, 20, 0, 'Cliente PJ (Auto Elétrica)', '2025-11-13 14:06:00.000000', NULL),
(35, 42, 5000.00, 15, 0, 'Cliente PJ (Oficina Moto)', '2025-11-13 14:06:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_indicacoes`
--

CREATE TABLE `cad_clientes_indicacoes` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Indicador_Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Indicador_Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_indicacoes`
--

INSERT INTO `cad_clientes_indicacoes` (`Id`, `Cliente_Id`, `Indicador_Nome`, `Indicador_Telefone`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Juliana Ramos', '(11) 98888-0000', 'Amiga de infância', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 'Pedro Oliveira', '(11) 97777-3333', 'Colega de trabalho', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 'Fernanda Dias', '(11) 96666-2222', 'Contato via telefone', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 'Marcos Lima', '(11) 95555-1111', 'Vizinho', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 'Ana Ferreira', '(11) 93333-4444', 'Parceira de negócios', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 'Google Maps', NULL, 'Origem Google Maps', '2025-11-13 14:07:00.000000', NULL),
(7, 14, 'Instagram', NULL, 'Origem Instagram', '2025-11-13 14:07:00.000000', NULL),
(8, 15, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(9, 16, 'Facebook', NULL, 'Origem Facebook', '2025-11-13 14:07:00.000000', NULL),
(10, 17, 'Paulo Andrade', '(11) 93333-0017', 'Colega OAB', '2025-11-13 14:07:00.000000', NULL),
(11, 18, 'Waze', NULL, 'Anúncio Waze', '2025-11-13 14:07:00.000000', NULL),
(12, 19, 'Ana Silva', '(11) 93333-0019', 'Indicação de cliente', '2025-11-13 14:07:00.000000', NULL),
(13, 20, 'Google (Orgânico)', NULL, 'Busca Google', '2025-11-13 14:07:00.000000', NULL),
(14, 21, 'Marcos Lima', '(11) 93333-0021', 'Indicação de cliente', '2025-11-13 14:07:00.000000', NULL),
(15, 22, 'Rádio Local', NULL, 'Anúncio Rádio', '2025-11-13 14:07:00.000000', NULL),
(16, 23, 'Telefone', NULL, 'Ligou direto', '2025-11-13 14:07:00.000000', NULL),
(17, 24, 'Panfleto', NULL, 'Viu panfleto', '2025-11-13 14:07:00.000000', NULL),
(18, 25, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(19, 26, 'Youtube', NULL, 'Viu vídeo de dicas', '2025-11-13 14:07:00.000000', NULL),
(20, 27, 'Carlos Barbosa (Cliente 2)', '(11) 97777-3333', 'Indicação cliente 2', '2025-11-13 14:07:00.000000', NULL),
(21, 28, 'LinkedIn', NULL, 'Prospecção ativa PJ', '2025-11-13 14:07:00.000000', NULL),
(22, 29, 'Google Maps', NULL, 'Busca PJ', '2025-11-13 14:07:00.000000', NULL),
(23, 30, 'Seguradora Alfa', NULL, 'Parceria Seguradora', '2025-11-13 14:07:00.000000', NULL),
(24, 31, 'Indicação (Mecânico)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(25, 32, 'Telefone', NULL, 'Contato telefônico PJ', '2025-11-13 14:07:00.000000', NULL),
(26, 33, 'LinkedIn', NULL, 'Prospecção ativa PJ', '2025-11-13 14:07:00.000000', NULL),
(27, 34, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(28, 35, 'Google (Orgânico)', NULL, 'Busca Google', '2025-11-13 14:07:00.000000', NULL),
(29, 36, 'Instagram', NULL, 'Campanha Instagram', '2025-11-13 14:07:00.000000', NULL),
(30, 37, 'Parceria (Lava-rápido)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(31, 38, 'Mariana Alves (Cliente 1)', '(11) 91234-1001', 'Indicação cliente 1', '2025-11-13 14:07:00.000000', NULL),
(32, 39, 'Google Maps', NULL, 'Busca PJ', '2025-11-13 14:07:00.000000', NULL),
(33, 40, 'Walk-in', NULL, 'Veio direto', '2025-11-13 14:07:00.000000', NULL),
(34, 41, 'Indicação (Mecânico)', NULL, 'Parceria', '2025-11-13 14:07:00.000000', NULL),
(35, 42, 'Grupo de Carros', NULL, 'Grupo WhatsApp (Motos)', '2025-11-13 14:07:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_lgpd_consentimentos`
--

CREATE TABLE `cad_clientes_lgpd_consentimentos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Aceito` tinyint(1) NOT NULL,
  `Data` datetime(6) DEFAULT NULL,
  `Valido_Ate` datetime(6) DEFAULT NULL,
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Canal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_lgpd_consentimentos`
--

INSERT INTO `cad_clientes_lgpd_consentimentos` (`Id`, `Cliente_Id`, `Tipo`, `Aceito`, `Data`, `Valido_Ate`, `Observacoes`, `Canal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Aceitou receber promoções', 'API', '2025-10-14 00:15:25.000000', NULL),
(2, 2, 2, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Compartilhamento de dados', 'Portal', '2025-10-14 00:15:25.000000', NULL),
(3, 3, 3, 1, '2025-10-14 00:15:25.000000', '2027-10-14 00:15:25.000000', 'Comunicados de serviço', 'Telefone', '2025-10-14 00:15:25.000000', NULL),
(4, 4, 1, 0, '2025-10-14 00:15:25.000000', NULL, 'Não deseja marketing', 'Aplicativo', '2025-10-14 00:15:25.000000', NULL),
(5, 5, 3, 1, '2025-10-14 00:15:25.000000', '2028-10-14 00:15:25.000000', 'Notificações sobre agenda', 'API', '2025-10-14 00:15:25.000000', NULL),
(6, 13, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(7, 14, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(8, 15, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(9, 16, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(10, 17, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(11, 18, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(12, 19, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(13, 20, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(14, 21, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(15, 22, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'API', '2025-11-13 14:08:00.000000', NULL),
(16, 23, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(17, 24, 3, 1, '2025-11-13 14:08:00.000000', '2027-11-13 14:08:00.000000', 'Aceitou comunicados serviço', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(18, 25, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing', 'API', '2025-11-13 14:08:00.000000', NULL),
(19, 26, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(20, 27, 2, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Compartilhamento de dados', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(21, 28, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ (Contrato)', 'API', '2025-11-13 14:08:00.000000', NULL),
(22, 29, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(23, 30, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(24, 31, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(25, 32, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(26, 33, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(27, 34, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(28, 35, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(29, 36, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(30, 37, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(31, 38, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'Aplicativo', '2025-11-13 14:08:00.000000', NULL),
(32, 39, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'Telefone', '2025-11-13 14:08:00.000000', NULL),
(33, 40, 1, 0, '2025-11-13 14:08:00.000000', NULL, 'Recusou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL),
(34, 41, 3, 1, '2025-11-13 14:08:00.000000', '2028-11-13 14:08:00.000000', 'Comunicados PJ', 'Portal', '2025-11-13 14:08:00.000000', NULL),
(35, 42, 1, 1, '2025-11-13 14:08:00.000000', '2026-11-13 14:08:00.000000', 'Aceitou marketing PJ', 'API', '2025-11-13 14:08:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_origens`
--

CREATE TABLE `cad_clientes_origens` (
  `Id` bigint NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_origens`
--

INSERT INTO `cad_clientes_origens` (`Id`, `Nome`, `Descricao`, `Created_At`, `Updated_At`) VALUES
(1, 'Campanha Digital', 'Leads de anúncios on-line', '2025-10-14 00:15:25.000000', NULL),
(2, 'Indicação', 'Clientes indicados por parceiros', '2025-10-14 00:15:25.000000', NULL),
(3, 'Walk-in', 'Atendimento presencial', '2025-10-14 00:15:25.000000', NULL),
(4, 'Telefone', 'Contato via call center', '2025-10-14 00:15:25.000000', NULL),
(5, 'Aplicativo', 'Cadastro feito no app', '2025-10-14 00:15:25.000000', NULL),
(6, 'Google Maps', 'Cliente encontrou pelo Google Maps', '2025-11-13 14:00:00.000000', NULL),
(7, 'Instagram', 'Lead de campanha paga no Instagram', '2025-11-13 14:00:00.000000', NULL),
(8, 'Facebook', 'Lead de campanha paga no Facebook', '2025-11-13 14:00:00.000000', NULL),
(9, 'Seguradora Alfa', 'Parceria com seguradora Alfa', '2025-11-13 14:00:00.000000', NULL),
(10, 'Seguradora Beta', 'Parceria com seguradora Beta', '2025-11-13 14:00:00.000000', NULL),
(11, 'Indicação (Mecânico)', 'Indicação de mecânico parceiro', '2025-11-13 14:00:00.000000', NULL),
(12, 'Google (Orgânico)', 'Busca orgânica no Google', '2025-11-13 14:00:00.000000', NULL),
(13, 'Waze', 'Anúncio no Waze', '2025-11-13 14:00:00.000000', NULL),
(14, 'LinkedIn', 'Prospecção ativa (PJ)', '2025-11-13 14:00:00.000000', NULL),
(15, 'Rádio Local', 'Campanha de rádio', '2025-11-13 14:00:00.000000', NULL),
(16, 'Evento (Feira)', 'Participação em feira local', '2025-11-13 14:00:00.000000', NULL),
(17, 'Panfleto', 'Distribuição de material gráfico', '2025-11-13 14:00:00.000000', NULL),
(18, 'Youtube', 'Canal de dicas da oficina', '2025-11-13 14:00:00.000000', NULL),
(19, 'Cliente Antigo (Reativado)', 'Cliente que voltou após > 2 anos', '2025-11-13 14:00:00.000000', NULL),
(20, 'Parceria (Loja de Pneus)', 'Indicação de loja de pneus vizinha', '2025-11-13 14:00:00.000000', NULL),
(21, 'Parceria (Lava-rápido)', 'Indicação de lava-rápido', '2025-11-13 14:00:00.000000', NULL),
(22, 'SMS Marketing', 'Campanha de SMS', '2025-11-13 14:00:00.000000', NULL),
(23, 'E-mail Marketing', 'Campanha de E-mail (Base Fria)', '2025-11-13 14:00:00.000000', NULL),
(24, 'WhatsApp Business', 'Contato inicial pelo WhatsApp', '2025-11-13 14:00:00.000000', NULL),
(25, 'Blog Post', 'Lead via artigo do blog', '2025-11-13 14:00:00.000000', NULL),
(26, 'Grupo de Carros', 'Indicação em grupo de carros (WhatsApp/Face)', '2025-11-13 14:00:00.000000', NULL),
(27, 'Outdoor', 'Campanha em outdoor regional', '2025-11-13 14:00:00.000000', NULL),
(28, 'GetNinjas', 'Plataforma de serviços', '2025-11-13 14:00:00.000000', NULL),
(29, 'Associação Comercial', 'Membro da associação comercial (PJ)', '2025-11-13 14:00:00.000000', NULL),
(30, 'Frota (Contrato)', 'Contrato de manutenção de frota', '2025-11-13 14:00:00.000000', NULL),
(31, 'Google Ads (Display)', 'Rede de Display', '2025-11-13 14:00:00.000000', NULL),
(32, 'TikTok', 'Campanha de vídeos curtos', '2025-11-13 14:00:00.000000', NULL),
(33, 'Carro de Som', 'Publicidade local', '2025-11-13 14:00:00.000000', NULL),
(34, 'Reclame Aqui', 'Cliente veio após resposta positiva', '2025-11-13 14:00:00.000000', NULL),
(35, 'Desconhecido', 'Cliente não soube informar', '2025-11-13 14:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_pf`
--

CREATE TABLE `cad_clientes_pf` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Cpf` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Genero` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estado_Civil` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Profissao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_pf`
--

INSERT INTO `cad_clientes_pf` (`Id`, `Cliente_Id`, `Cpf`, `Rg`, `Data_Nascimento`, `Genero`, `Estado_Civil`, `Profissao`, `Created_At`, `Updated_At`) VALUES
(1, 1, '12345678901', '45.123.987-1', '1990-05-12', 'Feminino', 'Solteira', 'Designer', '2025-10-14 00:15:25.000000', NULL),
(2, 2, '98765432100', '12.987.654-2', '1985-03-22', 'Masculino', 'Casado', 'Analista de Sistemas', '2025-10-14 00:15:25.000000', NULL),
(3, 3, '45678912300', '98.321.456-9', '1993-11-01', 'Feminino', 'Divorciada', 'Administradora', '2025-10-14 00:15:25.000000', NULL),
(4, 4, '74185296300', '74.185.296-3', '1988-07-30', 'Masculino', 'Solteiro', 'Professor', '2025-10-14 00:15:25.000000', NULL),
(5, 5, '36925814700', '36.925.814-7', '1995-01-18', 'Feminino', 'Casada', 'Arquiteta', '2025-10-14 00:15:25.000000', NULL),
(6, 13, '11122233301', '11.222.333-1', '1982-01-15', 'Masculino', 'Casado', 'Engenheiro', '2025-11-13 14:01:00.000000', NULL),
(7, 14, '22233344402', '22.333.444-2', '1995-10-20', 'Feminino', 'Solteira', 'Enfermeira', '2025-11-13 14:01:00.000000', NULL),
(8, 15, '33344455503', '33.444.555-3', '1975-06-05', 'Masculino', 'Casado', 'Motorista', '2025-11-13 14:01:00.000000', NULL),
(9, 16, '44455566604', '44.555.666-4', '2000-02-28', 'Feminino', 'Solteira', 'Estudante', '2025-11-13 14:01:00.000000', NULL),
(10, 17, '55566677705', '55.666.777-5', '1988-09-10', 'Masculino', 'Divorciado', 'Advogado', '2025-11-13 14:01:00.000000', NULL),
(11, 18, '66677788806', '66.777.888-6', '1990-12-01', 'Feminino', 'Casada', 'Autônoma', '2025-11-13 14:01:00.000000', NULL),
(12, 19, '77788899907', '77.888.999-7', '1985-07-14', 'Masculino', 'Solteiro', 'Programador', '2025-11-13 14:01:00.000000', NULL),
(13, 20, '88899900008', '88.999.000-8', '1998-03-03', 'Feminino', 'Solteira', 'Vendedora', '2025-11-13 14:01:00.000000', NULL),
(14, 21, '99900011109', '99.000.111-9', '1979-11-11', 'Masculino', 'Casado', 'Contador', '2025-11-13 14:01:00.000000', NULL),
(15, 22, '00011122210', '00.111.222-0', '1993-08-19', 'Feminino', 'Solteira', 'Dentista', '2025-11-13 14:01:00.000000', NULL),
(16, 23, '11122233311', '11.222.333-1', '1984-04-25', 'Masculino', 'Casado', 'Bancário', '2025-11-13 14:01:00.000000', NULL),
(17, 24, '22233344412', '22.333.444-2', '1991-05-06', 'Feminino', 'Solteira', 'Jornalista', '2025-11-13 14:01:00.000000', NULL),
(18, 25, '33344455513', '33.444.555-3', '1987-02-17', 'Masculino', 'Solteiro', 'Policial', '2025-11-13 14:01:00.000000', NULL),
(19, 26, '44455566614', '44.555.666-4', '1996-09-30', 'Feminino', 'Casada', 'Bióloga', '2025-11-13 14:01:00.000000', NULL),
(20, 27, '55566677715', '55.666.777-5', '1980-12-12', 'Masculino', 'Divorciado', 'Representante Comercial', '2025-11-13 14:01:00.000000', NULL);

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores`
--

CREATE TABLE `cad_fornecedores` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Razao_Social` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome_Fantasia` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Inscricao_Estadual` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Inscricao_Municipal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Segmento_Principal_Id` bigint DEFAULT NULL,
  `Website` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefone_Principal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ATIVO',
  `Condicao_Pagamento_Padrao` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prazo_Entrega_Medio` int DEFAULT NULL,
  `Nota_Media` decimal(4,2) DEFAULT NULL,
  `Observacoes` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Prazo_Garantia_Padrao` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Termos_Negociados` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Atendimento_Personalizado` tinyint(1) NOT NULL DEFAULT '0',
  `Retirada_Local` tinyint(1) NOT NULL DEFAULT '0',
  `Rating_Logistica` decimal(4,2) DEFAULT NULL,
  `Rating_Qualidade` decimal(4,2) DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores`
--

INSERT INTO `cad_fornecedores` (`Id`, `Codigo`, `Tipo`, `Razao_Social`, `Nome_Fantasia`, `Documento`, `Inscricao_Estadual`, `Inscricao_Municipal`, `Segmento_Principal_Id`, `Website`, `Email`, `Telefone_Principal`, `Status`, `Condicao_Pagamento_Padrao`, `Prazo_Entrega_Medio`, `Nota_Media`, `Observacoes`, `Prazo_Garantia_Padrao`, `Termos_Negociados`, `Atendimento_Personalizado`, `Retirada_Local`, `Rating_Logistica`, `Rating_Qualidade`, `Created_At`, `Updated_At`) VALUES
(301, 'FORN-0001', 'PJ', 'Distribuidora AutoParts Sul Ltda', 'AutoParts Sul', '12.345.678/0001-90', '123.456.789.012', '12.345/001', 1, 'https://www.autopartssul.com.br', 'vendas@autopartssul.com.br', '(11) 3344-5566', 'ATIVO', 'Boleto 28/56 dias', 3, 4.50, 'Fornecedor preferencial para peças Honda e Yamaha. Lote mínimo 10 unidades para desconto.', '6 meses contra defeito de fabricação', 'Desconto de 8% em pedidos acima de R$ 2.000. Frete grátis acima de R$ 5.000.', 1, 1, 4.60, 4.40, '2026-03-21 01:31:29.000000', NULL),
(302, 'FORN-0002', 'PJ', 'Petromax Lubrificantes Comercial Ltda', 'Petromax', '98.765.432/0001-11', '987.654.321.098', '98.765/002', 2, 'https://www.petromax.com.br', 'contato@petromax.com.br', '(21) 2233-4455', 'ATIVO', 'Boleto 30 dias / Cartão 2x sem juros', 2, 4.20, 'Revendedor autorizado Mobil e Castrol. Entrega via motoboy para pedidos até 20 litros.', '12 meses (embalagem lacrada)', 'Desconto progressivo: 5% (R$500+), 10% (R$1.500+). Bonificação trimestral em galões.', 1, 0, 4.30, 4.10, '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_avaliacoes`
--

CREATE TABLE `cad_fornecedores_avaliacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Data_Avaliacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Avaliado_Por` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Categoria` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nota` decimal(4,2) NOT NULL,
  `Comentarios` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_avaliacoes`
--

INSERT INTO `cad_fornecedores_avaliacoes` (`Id`, `Fornecedor_Id`, `Data_Avaliacao`, `Avaliado_Por`, `Categoria`, `Nota`, `Comentarios`, `Created_At`, `Updated_At`) VALUES
(7001, 301, '2025-12-10 10:00:00.000000', 'Carlos Souza', 'Entrega', 4.50, 'Prazo cumprido, embalagem ok. Pequeno atraso na última remessa.', '2026-03-21 01:31:29.000000', NULL),
(7002, 301, '2026-02-05 14:30:00.000000', 'Maria Oliveira', 'Qualidade', 4.50, 'Peças originais, sem defeitos no lote de 50 unidades.', '2026-03-21 01:31:29.000000', NULL),
(7003, 302, '2025-11-20 09:00:00.000000', 'João Pereira', 'Entrega', 4.00, 'Motoboy pontual, mas embalagem poderia ser mais resistente.', '2026-03-21 01:31:30.000000', NULL),
(7004, 302, '2026-01-15 16:00:00.000000', 'Carlos Souza', 'Qualidade', 4.50, 'Mobil 1 e Castrol GTX sempre originais e dentro da validade.', '2026-03-21 01:31:30.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_bancos`
--

CREATE TABLE `cad_fornecedores_bancos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Banco` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Agencia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Conta` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Digito` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tipo_Conta` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pix_Chave` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_bancos`
--

INSERT INTO `cad_fornecedores_bancos` (`Id`, `Fornecedor_Id`, `Banco`, `Agencia`, `Conta`, `Digito`, `Tipo_Conta`, `Pix_Chave`, `Observacoes`, `Principal`, `Created_At`, `Updated_At`) VALUES
(4001, 301, 'Banco Itaú (341)', '1234', '56789', '0', 'Corrente', '12.345.678/0001-90', 'Conta principal para boletos e transferências', 1, '2026-03-21 01:31:29.000000', NULL),
(4002, 302, 'Bradesco (237)', '0987', '12345', '6', 'Corrente', '98.765.432/0001-11', 'Conta para TED e boletos', 1, '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_certificacoes`
--

CREATE TABLE `cad_fornecedores_certificacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Titulo` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Instituicao` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Codigo_Certificacao` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Escopo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_certificacoes`
--

INSERT INTO `cad_fornecedores_certificacoes` (`Id`, `Fornecedor_Id`, `Titulo`, `Instituicao`, `Data_Emissao`, `Data_Validade`, `Codigo_Certificacao`, `Escopo`, `Created_At`, `Updated_At`) VALUES
(6001, 301, 'ISO 9001:2015 — Gestão da Qualidade', 'Bureau Veritas', '2023-04-10', '2026-04-09', 'BV-ISO9001-2023-0341', 'Distribuição de peças automotivas e motociclísticas', '2026-03-21 01:31:29.000000', NULL),
(6002, 302, 'ISO 14001:2015 — Gestão Ambiental', 'DNV GL', '2022-09-01', '2025-08-31', 'DNV-ISO14001-2022-1120', 'Armazenamento, distribuição e comercialização de lubrificantes e fluidos automotivos', '2026-03-21 01:31:30.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_contatos`
--

CREATE TABLE `cad_fornecedores_contatos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_contatos`
--

INSERT INTO `cad_fornecedores_contatos` (`Id`, `Fornecedor_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(2001, 301, 'Telefone', '(11) 3344-5566', 1, 'Comercial — seg a sex 8h–18h', '2026-03-21 01:31:29.000000', NULL),
(2002, 301, 'WhatsApp', '(11) 98877-6655', 0, 'Pedidos urgentes', '2026-03-21 01:31:29.000000', NULL),
(2003, 301, 'Email', 'vendas@autopartssul.com.br', 0, NULL, '2026-03-21 01:31:29.000000', NULL),
(2004, 302, 'Telefone', '(21) 2233-4455', 1, 'SAC — seg a sex 8h–17h', '2026-03-21 01:31:29.000000', NULL),
(2005, 302, 'Email', 'contato@petromax.com.br', 0, 'Pedidos e NF-e', '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_documentos`
--

CREATE TABLE `cad_fornecedores_documentos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Orgao_Expedidor` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arquivo_Url` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_documentos`
--

INSERT INTO `cad_fornecedores_documentos` (`Id`, `Fornecedor_Id`, `Tipo`, `Numero`, `Data_Emissao`, `Data_Validade`, `Orgao_Expedidor`, `Arquivo_Url`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(5001, 301, 'Contrato Social', 'CS-2018-0042', '2018-03-15', NULL, 'JUCESP', NULL, NULL, '2026-03-21 01:31:29.000000', NULL),
(5002, 301, 'Certidão Negativa', 'CN-2025-11987', '2025-11-01', '2026-05-01', 'Receita Federal', NULL, 'Renovar semestralmente', '2026-03-21 01:31:29.000000', NULL),
(5003, 302, 'Contrato Social', 'CS-2015-7721', '2015-07-20', NULL, 'JUCERJ', NULL, NULL, '2026-03-21 01:31:30.000000', NULL),
(5004, 302, 'Licença Ambiental', 'LA-RJ-2024-883', '2024-01-10', '2026-12-31', 'INEA-RJ', NULL, 'Obrigatória para armazenamento de inflamáveis', '2026-03-21 01:31:30.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_enderecos`
--

CREATE TABLE `cad_fornecedores_enderecos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cep` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Logradouro` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complemento` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_enderecos`
--

INSERT INTO `cad_fornecedores_enderecos` (`Id`, `Fornecedor_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1001, 301, 'Matriz', '04343-001', 'Av. das Indústrias', '1000', 'Santo André', 'São Paulo', 'SP', 'Brasil', 'Galpão 4', 1, 'Endereço fiscal e administrativo', '2026-03-21 01:31:29.000000', NULL),
(1002, 301, 'Centro de Dist.', '07750-000', 'Rod. Anhanguera', 'KM 20', 'Área Industrial', 'Cajamar', 'SP', 'Brasil', NULL, 0, 'CD — retirada de pedidos grandes', '2026-03-21 01:31:29.000000', NULL),
(1003, 302, 'Sede', '20040-020', 'Rua dos Comerciantes', '450', 'Centro', 'Rio de Janeiro', 'RJ', 'Brasil', 'Sala 12', 1, 'Endereço comercial e fiscal', '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_representantes`
--

CREATE TABLE `cad_fornecedores_representantes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cargo` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Celular` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Preferencia_Contato` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_representantes`
--

INSERT INTO `cad_fornecedores_representantes` (`Id`, `Fornecedor_Id`, `Nome`, `Cargo`, `Email`, `Telefone`, `Celular`, `Preferencia_Contato`, `Principal`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(3001, 301, 'Roberto Almeida', 'Gerente de Contas – Região Sul', 'roberto@autopartssul.com.br', NULL, '(11) 98877-6655', 'WhatsApp', 1, 'Atende exclusivamente nossa conta', '2026-03-21 01:31:29.000000', NULL),
(3002, 301, 'Central de Vendas', 'Televendas Geral', 'vendas@autopartssul.com.br', '0800 777 9999', NULL, 'Telefone', 0, NULL, '2026-03-21 01:31:29.000000', NULL),
(3003, 302, 'Fernanda Lima', 'Representante Comercial – SP e RJ', 'fernanda@petromax.com.br', '(21) 2233-4455', '(21) 99912-3456', 'Email', 1, 'Visita mensal — trazer lista de pedidos antecipada', '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos`
--

CREATE TABLE `cad_fornecedores_segmentos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_segmentos`
--

INSERT INTO `cad_fornecedores_segmentos` (`Id`, `Codigo`, `Nome`, `Descricao`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 'PECAS', 'Peças e Componentes', 'Distribuidoras e fabricantes de peças originais e paralelas', 1, '2026-03-21 01:31:29.000000', NULL),
(2, 'LUBRIF', 'Lubrificantes e Fluidos', 'Óleos, fluidos de freio, graxas e produtos químicos automotivos', 1, '2026-03-21 01:31:29.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos_rel`
--

CREATE TABLE `cad_fornecedores_segmentos_rel` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Segmento_Id` bigint NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_fornecedores_segmentos_rel`
--

INSERT INTO `cad_fornecedores_segmentos_rel` (`Id`, `Fornecedor_Id`, `Segmento_Id`, `Principal`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(8001, 301, 1, 1, 'Segmento principal — peças Honda, Yamaha e Suzuki', '2026-03-21 01:31:29.000000', NULL),
(8002, 302, 2, 1, 'Segmento principal — lubrificantes Mobil, Castrol e Shell', '2026-03-21 01:31:30.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos`
--

CREATE TABLE `cad_mecanicos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sobrenome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Nome_Social` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Documento_Principal` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tipo_Documento` int NOT NULL DEFAULT '1',
  `Data_Nascimento` date DEFAULT NULL,
  `Data_Admissao` date NOT NULL,
  `Data_Demissao` date DEFAULT NULL,
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ativo',
  `Especialidade_Principal_Id` bigint DEFAULT NULL,
  `Nivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pleno',
  `Valor_Hora` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Carga_Horaria_Semanal` int NOT NULL DEFAULT '44',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos`
--

INSERT INTO `cad_mecanicos` (`Id`, `Codigo`, `Nome`, `Sobrenome`, `Nome_Social`, `Documento_Principal`, `Tipo_Documento`, `Data_Nascimento`, `Data_Admissao`, `Data_Demissao`, `Status`, `Especialidade_Principal_Id`, `Nivel`, `Valor_Hora`, `Carga_Horaria_Semanal`, `Observacoes`, `Created_At`, `Updated_At`) VALUES
(1, 'MEC0001', 'Carlos', 'Silva', NULL, '12345678900', 1, '1985-02-10', '2020-01-15', NULL, 'Ativo', 1, 'Senior', 110.00, 44, 'Responsavel pela bancada de motores e diagnosticos complexos.', '2025-10-14 02:17:24.322444', NULL),
(2, 'MEC0002', 'Fernanda', 'Costa', NULL, '98765432100', 1, '1990-08-22', '2021-05-10', NULL, 'Ativo', 2, 'Pleno', 95.00, 40, 'Foco em diagnostico eletrico e instalacao de acessorios.', '2025-10-14 02:17:24.322444', NULL),
(3, 'MEC0003', 'Joao', 'Pereira', NULL, '44556677889', 1, '1988-11-12', '2019-03-01', NULL, 'Ativo', 3, 'Senior', 105.00, 44, 'Especialista em suspensao, freios e alinhamento.', '2025-10-14 02:17:24.322444', NULL),
(4, 'MEC0004', 'Andre', 'Melo', NULL, '11122233344', 1, '1992-05-15', '2022-01-10', NULL, 'Ativo', 5, 'Pleno', 100.00, 44, 'Especialista em diagnostico com scanner.', '2025-11-13 14:01:00.000000', NULL),
(5, 'MEC0005', 'Bruna', 'Soares', 'Bruno', '22233344455', 1, '1995-01-20', '2022-03-01', NULL, 'Ativo', 6, 'Junior', 80.00, 40, 'Focada em injecao eletronica.', '2025-11-13 14:01:00.000000', NULL),
(6, 'MEC0006', 'Caio', 'Dias', NULL, '33344455566', 1, '1980-07-30', '2018-06-15', NULL, 'Ativo', 7, 'Senior', 115.00, 44, 'Certificado em sistemas de A/C.', '2025-11-13 14:01:00.000000', NULL),
(7, 'MEC0007', 'Daniela', 'Faria', NULL, '44455566677', 1, '1987-09-05', '2020-02-20', NULL, 'Ativo', 8, 'Pleno', 90.00, 44, 'Especialista em funilaria pesada.', '2025-11-13 14:01:00.000000', NULL),
(8, 'MEC0008', 'Eduardo', 'Lima', NULL, '55566677788', 1, '1990-12-11', '2021-08-01', NULL, 'Ativo', 9, 'Pleno', 95.00, 40, 'Pintor com foco em colorimetria.', '2025-11-13 14:01:00.000000', NULL),
(9, 'MEC0009', 'Fabiana', 'Guedes', NULL, '66677788899', 1, '1993-03-25', '2022-05-12', NULL, 'Ativo', 10, 'Junior', 75.00, 44, 'Operadora de maquina de alinhamento 3D.', '2025-11-13 14:01:00.000000', NULL),
(10, 'MEC0010', 'Gustavo', 'Henrique', NULL, '77788899900', 1, '1986-06-18', '2019-11-01', NULL, 'Ativo', 11, 'Senior', 120.00, 44, 'Especialista em calibracao ADAS.', '2025-11-13 14:01:00.000000', NULL),
(11, 'MEC0011', 'Helena', 'Morais', NULL, '88899900011', 1, '1991-10-02', '2023-01-05', NULL, 'Ativo', 12, 'Pleno', 110.00, 40, 'Foco em hibridos e eletricos.', '2025-11-13 14:01:00.000000', NULL),
(12, 'MEC0012', 'Igor', 'Nogueira', NULL, '99900011122', 1, '1983-04-14', '2017-01-20', NULL, 'Ativo', 13, 'Senior', 125.00, 44, 'Vasta experiencia em motores Diesel.', '2025-11-13 14:01:00.000000', NULL),
(13, 'MEC0013', 'Julia', 'Pires', NULL, '00011122233', 1, '1998-02-08', '2023-07-10', NULL, 'Ativo', 14, 'Junior', 80.00, 40, 'Instaladora de GNV certificada.', '2025-11-13 14:01:00.000000', NULL),
(14, 'MEC0014', 'Kleber', 'Ramos', NULL, '11122233355', 1, '1990-08-17', '2021-04-15', NULL, 'Ativo', 15, 'Pleno', 90.00, 44, 'Reparos em vidros e travas.', '2025-11-13 14:01:00.000000', NULL),
(15, 'MEC0015', 'Larissa', 'Sampaio', NULL, '22233344466', 1, '1996-11-29', '2022-10-01', NULL, 'Ativo', 16, 'Junior', 70.00, 44, 'Agil na troca de oleo e filtros.', '2025-11-13 14:01:00.000000', NULL),
(16, 'MEC0016', 'Marcos', 'Teixeira', NULL, '33344455577', 1, '1989-01-03', '2020-09-01', NULL, 'Ativo', 17, 'Pleno', 95.00, 40, 'Especialista em instalacao de som.', '2025-11-13 14:01:00.000000', NULL),
(17, 'MEC0017', 'Natalia', 'Uchoa', NULL, '44455566688', 1, '1994-07-21', '2022-02-11', NULL, 'Ativo', 18, 'Pleno', 100.00, 44, 'Foco em performance e remapeamento.', '2025-11-13 14:01:00.000000', NULL),
(18, 'MEC0018', 'Otavio', 'Viana', NULL, '55566677799', 1, '1975-05-13', '2015-03-10', NULL, 'Ativo', 19, 'Senior', 130.00, 44, 'Mestre em restauracao de classicos.', '2025-11-13 14:01:00.000000', NULL),
(19, 'MEC0019', 'Paula', 'Xavier', NULL, '66677788800', 1, '1988-10-30', '2019-07-20', NULL, 'Ativo', 20, 'Pleno', 105.00, 40, 'Experiencia em direcao hidraulica.', '2025-11-13 14:01:00.000000', NULL),
(20, 'MEC0020', 'Quintino', 'Zabe', NULL, '77788899911', 1, '1992-04-01', '2021-11-15', NULL, 'Ativo', 21, 'Pleno', 90.00, 44, 'Soldador de escapamentos.', '2025-11-13 14:01:00.000000', NULL),
(21, 'MEC0021', 'Rafaela', 'Bastos', NULL, '88899900022', 1, '1997-09-19', '2023-03-01', NULL, 'Ativo', 22, 'Junior', 85.00, 44, 'Treinada em martelinho de ouro.', '2025-11-13 14:01:00.000000', NULL),
(22, 'MEC0022', 'Sergio', 'Campos', NULL, '99900011133', 1, '1985-12-07', '2018-10-01', NULL, 'Ativo', 23, 'Pleno', 95.00, 40, 'Especialista em polimento tecnico.', '2025-11-13 14:01:00.000000', NULL),
(23, 'MEC0023', 'Tais', 'Dourado', NULL, '00011122244', 1, '1990-03-16', '2020-05-05', NULL, 'Ativo', 24, 'Pleno', 100.00, 44, 'Diagnostico de alternadores.', '2025-11-13 14:01:00.000000', NULL),
(24, 'MEC0024', 'Ulisses', 'Esteves', NULL, '11122233366', 1, '1982-08-28', '2017-08-10', NULL, 'Ativo', 25, 'Senior', 115.00, 44, 'Reparo de sistemas de airbag.', '2025-11-13 14:01:00.000000', NULL),
(25, 'MEC0025', 'Valeria', 'Freitas', NULL, '22233344477', 1, '1993-11-14', '2022-06-20', NULL, 'Ativo', 26, 'Pleno', 110.00, 40, 'Programadora de modulos ECU.', '2025-11-13 14:01:00.000000', NULL),
(26, 'MEC0026', 'Wagner', 'Gontijo', NULL, '33344455588', 1, '1987-02-23', '2019-01-15', NULL, 'Ativo', 27, 'Pleno', 100.00, 44, 'Codificacao de chaves.', '2025-11-13 14:01:00.000000', NULL),
(27, 'MEC0027', 'Xenia', 'Horta', NULL, '44455566699', 1, '1995-06-09', '2023-02-01', NULL, 'Ativo', 28, 'Junior', 75.00, 44, 'Borracheira.', '2025-11-13 14:01:00.000000', NULL),
(28, 'MEC0028', 'Yara', 'Ibanez', NULL, '55566677700', 1, '1991-09-27', '2021-03-10', NULL, 'Ativo', 29, 'Pleno', 105.00, 40, 'Especialista em sistemas 4x4.', '2025-11-13 14:01:00.000000', NULL),
(29, 'MEC0029', 'Zaqueu', 'Jales', NULL, '66677788811', 1, '1984-12-15', '2018-12-01', NULL, 'Ativo', 30, 'Pleno', 100.00, 44, 'Mecanico de motocicletas.', '2025-11-13 14:01:00.000000', NULL),
(30, 'MEC0030', 'Aline', 'Barros', NULL, '77788899922', 1, '1989-05-04', '2020-07-01', NULL, 'Ativo', 31, 'Pleno', 110.00, 44, 'Especialista em motores nauticos.', '2025-11-13 14:01:00.000000', NULL),
(31, 'MEC0031', 'Bernardo', 'Costa', NULL, '88899900033', 1, '1981-11-18', '2016-09-01', NULL, 'Ativo', 32, 'Senior', 130.00, 44, 'Operador de maquinas pesadas.', '2025-11-13 14:01:00.000000', NULL),
(32, 'MEC0032', 'Clara', 'Dantas', NULL, '99900011144', 1, '1994-01-26', '2022-09-10', NULL, 'Ativo', 33, 'Pleno', 115.00, 40, 'Foco em cambio automatico.', '2025-11-13 14:01:00.000000', NULL),
(33, 'MEC0033', 'Davi', 'Eiras', NULL, '00011122255', 1, '1986-07-07', '2019-05-15', NULL, 'Ativo', 34, 'Senior', 120.00, 44, 'Especialista em retifica de motor.', '2025-11-13 14:01:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_certificacoes`
--

CREATE TABLE `cad_mecanicos_certificacoes` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint DEFAULT NULL,
  `Titulo` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Instituicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Data_Conclusao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Codigo_Certificacao` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_certificacoes`
--

INSERT INTO `cad_mecanicos_certificacoes` (`Id`, `Mecanico_Id`, `Especialidade_Id`, `Titulo`, `Instituicao`, `Data_Conclusao`, `Data_Validade`, `Codigo_Certificacao`, `Created_At`, `Updated_At`) VALUES
(1, 2, 2, 'Certificacao Avancada em Diagnostico Eletrico', 'Bosch', '2022-07-15', '2025-07-14', 'BOSCH-EL-2022', '2025-10-14 02:17:24.382057', NULL),
(2, 1, 4, 'Transmissao Automatica Nivel 1', 'SENAI', '2021-02-10', '2024-02-09', 'SENAI-TR-2021', '2025-11-13 14:05:00.000000', NULL),
(3, 3, 3, 'Freios ABS/ESP', 'MTE-THOMSON', '2022-11-05', '2025-11-04', 'MTE-FR-2022', '2025-11-13 14:05:00.000000', NULL),
(4, 4, 5, 'Diagnostico com Osciloscopio', 'Bosch', '2023-01-20', '2026-01-19', 'BOSCH-DIAG-2023', '2025-11-13 14:05:00.000000', NULL),
(5, 5, 6, 'Injecao Direta GDI', 'SENAI', '2023-04-15', '2026-04-14', 'SENAI-GDI-2023', '2025-11-13 14:05:00.000000', NULL),
(6, 6, 7, 'Climatizacao Automotiva Avancada', 'DENSO', '2021-07-10', '2024-07-09', 'DENSO-AC-2021', '2025-11-13 14:05:00.000000', NULL),
(7, 7, 8, 'Reparo Estrutural', 'Cesvi Brasil', '2022-09-01', '2025-08-31', 'CESVI-FUN-2022', '2025-11-13 14:05:00.000000', NULL),
(8, 8, 9, 'Colorimetria Digital', 'PPG', '2022-05-25', '2025-05-24', 'PPG-COL-2022', '2025-11-13 14:05:00.000000', NULL),
(9, 10, 11, 'Calibracao de Radar e Camera ADAS', 'Bosch', '2023-06-12', '2026-06-11', 'BOSCH-ADAS-2023', '2025-11-13 14:05:00.000000', NULL),
(10, 11, 12, 'Seguranca em Veiculos Hibridos', 'SENAI', '2023-02-28', '2026-02-27', 'SENAI-HIBRID-2023', '2025-11-13 14:05:00.000000', NULL),
(11, 12, 13, 'Motores Diesel Common Rail', 'Cummins', '2020-10-10', '2024-10-09', 'CUMMINS-CR-2020', '2025-11-13 14:05:00.000000', NULL),
(12, 13, 14, 'Instalador GNV 5 Geracao', 'INMETRO', '2023-08-01', '2026-07-31', 'INMETRO-GNV-2023', '2025-11-13 14:05:00.000000', NULL),
(13, 16, 17, 'Instalador de Som High-End', 'Pioneer', '2021-12-05', '2024-12-04', 'PIO-SOM-2021', '2025-11-13 14:05:00.000000', NULL),
(14, 17, 18, 'Remapeamento de ECU', 'Alientech', '2022-10-20', '2025-10-19', 'ALIEN-REMAP-2022', '2025-11-13 14:05:00.000000', NULL),
(15, 18, 19, 'Restauracao e Fabricacao', 'Instituto Auto Antigo', '2019-01-15', '2029-01-14', 'IAA-REST-2019', '2025-11-13 14:05:00.000000', NULL),
(16, 19, 20, 'Sistemas de Direcao Eletrica', 'SENAI', '2022-04-10', '2025-04-09', 'SENAI-EPS-2022', '2025-11-13 14:05:00.000000', NULL),
(17, 21, 22, 'Tecnicas de Martelinho', 'FastPDR', '2023-05-01', '2026-04-30', 'PDR-MARTEL-2023', '2025-11-13 14:05:00.000000', NULL),
(18, 22, 23, 'Polimento e Vitrificacao', 'Meguiars', '2021-09-18', '2024-09-17', 'MEG-POLI-2021', '2025-11-13 14:05:00.000000', NULL),
(19, 23, 24, 'Sistemas Start-Stop', 'Moura', '2022-03-14', '2025-03-13', 'MOURA-SS-2022', '2025-11-13 14:05:00.000000', NULL),
(20, 24, 25, 'Diagnostico de Rede CAN', 'SENAI', '2021-06-20', '2024-06-19', 'SENAI-CAN-2021', '2025-11-13 14:05:00.000000', NULL),
(21, 25, 26, 'Reparo de ECU Nivel Avancado', 'AutoEletronica', '2023-01-30', '2026-01-29', 'AE-ECU-2023', '2025-11-13 14:05:00.000000', NULL),
(22, 26, 27, 'Imobilizadores', 'Chiptronic', '2022-08-11', '2025-08-10', 'CHIP-IMO-2022', '2025-11-13 14:05:00.000000', NULL),
(23, 28, 29, 'Sistemas 4x4 e Diferenciais', 'ZF', '2022-02-15', '2025-02-14', 'ZF-4X4-2022', '2025-11-13 14:05:00.000000', NULL),
(24, 29, 30, 'Mecanica de Alta Cilindrada', 'Honda', '2021-11-20', '2024-11-19', 'HONDA-MOTO-2021', '2025-11-13 14:05:00.000000', NULL),
(25, 30, 31, 'Motores de Popa Yamaha', 'Yamaha Nautica', '2022-01-10', '2025-01-09', 'YAMAHA-NAUT-2022', '2025-11-13 14:05:00.000000', NULL),
(26, 31, 32, 'Hidraulica de Maquinas', 'Caterpillar', '2019-09-05', '2024-09-04', 'CAT-HID-2019', '2025-11-13 14:05:00.000000', NULL),
(27, 32, 33, 'Cambio DSG e Powershift', 'SENAI', '2023-03-20', '2026-03-19', 'SENAI-DSG-2023', '2025-11-13 14:05:00.000000', NULL),
(28, 33, 34, 'Metrologia de Retifica', 'MWM', '2020-02-01', '2025-01-31', 'MWM-RET-2020', '2025-11-13 14:05:00.000000', NULL),
(29, 4, 2, 'Eletrica Basica Automotiva', 'SENAI', '2022-03-01', '2025-02-28', 'SENAI-EL-2022', '2025-11-13 14:05:00.000000', NULL),
(30, 1, 1, 'Injecao Eletronica Avancada', 'Bosch', '2022-05-10', '2025-05-09', 'BOSCH-INJ-2022', '2025-11-13 14:05:00.000000', NULL),
(31, 12, 1, 'Reparo de Motor Diesel Pesado', 'Scania', '2021-08-15', '2024-08-14', 'SCANIA-MOT-2021', '2025-11-13 14:05:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_contatos`
--

CREATE TABLE `cad_mecanicos_contatos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_contatos`
--

INSERT INTO `cad_mecanicos_contatos` (`Id`, `Mecanico_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Celular', '(11) 98888-0001', 1, 'Disponivel via WhatsApp', '2025-10-14 02:17:24.351517', NULL),
(2, 2, 'Email', 'fernanda.costa@oficina.com', 1, NULL, '2025-10-14 02:17:24.351517', NULL),
(3, 3, 'Email', 'joao.pereira@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(4, 4, 'Email', 'andre.melo@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(5, 5, 'Celular', '(21) 98888-0002', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(6, 6, 'Email', 'caio.dias@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(7, 7, 'Celular', '(31) 98888-0003', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(8, 8, 'Email', 'eduardo.lima@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(9, 9, 'Email', 'fabiana.guedes@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(10, 10, 'Celular', '(41) 98888-0004', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(11, 11, 'Email', 'helena.morais@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(12, 12, 'Email', 'igor.nogueira@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(13, 13, 'Celular', '(51) 98888-0005', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(14, 14, 'Email', 'kleber.ramos@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(15, 15, 'Email', 'larissa.sampaio@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(16, 16, 'Celular', '(61) 98888-0006', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(17, 17, 'Email', 'natalia.uchoa@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(18, 18, 'Email', 'otavio.viana@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(19, 19, 'Celular', '(71) 98888-0007', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(20, 20, 'Email', 'quintino.zabe@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(21, 21, 'Email', 'rafaela.bastos@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(22, 22, 'Celular', '(81) 98888-0008', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(23, 23, 'Email', 'tais.dourado@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(24, 24, 'Email', 'ulisses.esteves@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(25, 25, 'Celular', '(91) 98888-0009', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(26, 26, 'Email', 'wagner.gontijo@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(27, 27, 'Email', 'xenia.horta@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(28, 28, 'Celular', '(11) 98888-0010', 1, 'WhatsApp', '2025-11-13 14:03:00.000000', NULL),
(29, 29, 'Email', 'zaqueu.jales@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(30, 30, 'Email', 'aline.barros@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(31, 31, 'Celular', '(21) 98888-0011', 1, NULL, '2025-11-13 14:03:00.000000', NULL),
(32, 32, 'Email', 'clara.dantas@oficina.com', 1, NULL, '2025-11-13 14:03:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_disponibilidades`
--

CREATE TABLE `cad_mecanicos_disponibilidades` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Dia_Semana` tinyint NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Fim` time NOT NULL,
  `Capacidade_Atendimentos` int NOT NULL DEFAULT '5',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_disponibilidades`
--

INSERT INTO `cad_mecanicos_disponibilidades` (`Id`, `Mecanico_Id`, `Dia_Semana`, `Hora_Inicio`, `Hora_Fim`, `Capacidade_Atendimentos`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, '08:00:00', '17:00:00', 4, '2025-10-14 02:17:24.396777', NULL),
(2, 2, 3, '10:00:00', '19:00:00', 5, '2025-10-14 02:17:24.396777', NULL),
(3, 3, 2, '08:00:00', '17:00:00', 6, '2025-11-13 14:06:00.000000', NULL),
(4, 4, 1, '09:00:00', '18:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(5, 5, 2, '08:00:00', '17:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(6, 6, 3, '10:00:00', '19:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(7, 7, 4, '08:00:00', '17:00:00', 2, '2025-11-13 14:06:00.000000', NULL),
(8, 8, 5, '09:00:00', '18:00:00', 2, '2025-11-13 14:06:00.000000', NULL),
(9, 9, 1, '08:00:00', '12:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(10, 10, 2, '13:00:00', '18:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(11, 11, 3, '09:00:00', '18:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(12, 12, 4, '08:00:00', '17:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(13, 13, 5, '08:00:00', '17:00:00', 6, '2025-11-13 14:06:00.000000', NULL),
(14, 14, 1, '10:00:00', '19:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(15, 15, 2, '08:00:00', '18:00:00', 8, '2025-11-13 14:06:00.000000', NULL),
(16, 16, 3, '09:00:00', '18:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(17, 17, 4, '08:00:00', '17:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(18, 18, 5, '08:00:00', '18:00:00', 1, '2025-11-13 14:06:00.000000', NULL),
(19, 19, 1, '09:00:00', '18:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(20, 20, 2, '08:00:00', '17:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(21, 21, 3, '10:00:00', '19:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(22, 22, 4, '08:00:00', '17:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(23, 23, 5, '09:00:00', '18:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(24, 24, 1, '08:00:00', '12:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(25, 25, 2, '13:00:00', '18:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(26, 26, 3, '09:00:00', '18:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(27, 27, 4, '08:00:00', '17:00:00', 7, '2025-11-13 14:06:00.000000', NULL),
(28, 28, 5, '08:00:00', '17:00:00', 5, '2025-11-13 14:06:00.000000', NULL),
(29, 29, 1, '10:00:00', '19:00:00', 4, '2025-11-13 14:06:00.000000', NULL),
(30, 30, 2, '09:00:00', '18:00:00', 3, '2025-11-13 14:06:00.000000', NULL),
(31, 31, 3, '08:00:00', '17:00:00', 2, '2025-11-13 14:06:00.000000', NULL),
(32, 32, 4, '08:00:00', '18:00:00', 4, '2025-11-13 14:06:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_documentos`
--

CREATE TABLE `cad_mecanicos_documentos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Emissao` date DEFAULT NULL,
  `Data_Validade` date DEFAULT NULL,
  `Orgao_Expedidor` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arquivo_Url` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_documentos`
--

INSERT INTO `cad_mecanicos_documentos` (`Id`, `Mecanico_Id`, `Tipo`, `Numero`, `Data_Emissao`, `Data_Validade`, `Orgao_Expedidor`, `Arquivo_Url`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'CRMV', 'CRMV-SP-5566', '2019-01-10', '2024-01-09', 'CRMV-SP', NULL, '2025-10-14 02:17:24.431349', NULL),
(2, 2, 'CREA', 'CREA-SP-7788', '2020-03-05', '2025-03-04', 'CREA-SP', NULL, '2025-10-14 02:17:24.431349', NULL),
(3, 3, 'CREA', 'CREA-SP-9900', '2018-01-15', '2024-01-14', 'CREA-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(4, 4, 'CNH', '01020304051', '2020-05-10', '2025-05-09', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(5, 5, 'RG', '554433221', '2015-02-20', NULL, 'SSP-RJ', NULL, '2025-11-13 14:08:00.000000', NULL),
(6, 6, 'CNH', '02030405062', '2019-08-11', '2024-08-10', 'DETRAN-MG', NULL, '2025-11-13 14:08:00.000000', NULL),
(7, 7, 'RG', '443322110', '2010-11-30', NULL, 'SSP-BA', NULL, '2025-11-13 14:08:00.000000', NULL),
(8, 8, 'CNH', '03040506073', '2021-01-05', '2026-01-04', 'DETRAN-PE', NULL, '2025-11-13 14:08:00.000000', NULL),
(9, 9, 'RG', '332211009', '2014-07-15', NULL, 'SSP-CE', NULL, '2025-11-13 14:08:00.000000', NULL),
(10, 10, 'CNH', '04050607084', '2022-03-20', '2027-03-19', 'DETRAN-DF', NULL, '2025-11-13 14:08:00.000000', NULL),
(11, 11, 'CREA', 'CREA-PR-1122', '2022-01-10', '2025-01-09', 'CREA-PR', NULL, '2025-11-13 14:08:00.000000', NULL),
(12, 12, 'CNH', '05060708095', '2018-06-12', '2023-06-11', 'DETRAN-RS', NULL, '2025-11-13 14:08:00.000000', NULL),
(13, 13, 'Cert. INMETRO', 'GNV-98765', '2023-08-02', '2025-08-01', 'INMETRO', NULL, '2025-11-13 14:08:00.000000', NULL),
(14, 14, 'RG', '221100998', '2012-04-18', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(15, 15, 'CNH', '06070809106', '2021-10-01', '2026-09-30', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(16, 16, 'RG', '110099887', '2011-09-05', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(17, 17, 'CNH', '07080910117', '2020-12-15', '2025-12-14', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(18, 18, 'RG', '998877665', '1995-01-20', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(19, 19, 'CNH', '08091011128', '2019-02-10', '2024-02-09', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(20, 20, 'RG', '887766554', '2013-03-11', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(21, 21, 'CNH', '09101112139', '2022-07-22', '2027-07-21', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(22, 22, 'RG', '776655443', '2008-08-08', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(23, 23, 'CNH', '10111213140', '2020-01-30', '2025-01-29', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(24, 24, 'CREA', 'CREA-SP-3344', '2016-05-01', '2024-04-30', 'CREA-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(25, 25, 'CNH', '11121314151', '2021-09-14', '2026-09-13', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(26, 26, 'RG', '665544332', '2009-10-10', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(27, 27, 'CNH', '12131415162', '2022-11-01', '2027-10-31', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(28, 28, 'RG', '554433221', '2012-12-12', NULL, 'SSP-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(29, 29, 'CNH (A)', '13141516173', '2019-04-05', '2024-04-04', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(30, 30, 'ARRAIS', 'ARR-12345', '2018-03-01', '2028-02-29', 'Marinha do Brasil', NULL, '2025-11-13 14:08:00.000000', NULL),
(31, 31, 'CNH (D)', '14151617184', '2017-07-07', '2022-07-06', 'DETRAN-SP', NULL, '2025-11-13 14:08:00.000000', NULL),
(32, 32, 'CREA', 'CREA-SP-5566', '2021-02-10', '2025-02-09', 'CREA-SP', NULL, '2025-11-13 14:08:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_enderecos`
--

CREATE TABLE `cad_mecanicos_enderecos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cep` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logradouro` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_enderecos`
--

INSERT INTO `cad_mecanicos_enderecos` (`Id`, `Mecanico_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Residencial', '01001000', 'Rua Alfa', '120', 'Centro', 'Sao Paulo', 'SP', 'Brasil', 'Apto 32', 1, '2025-10-14 02:17:24.366380', NULL),
(2, 2, 'Residencial', '02002000', 'Rua Beta', '45', 'Vila Nova', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(3, 3, 'Residencial', '03003000', 'Avenida Gama', '678', 'Centro', 'Sao Paulo', 'SP', 'Brasil', 'Casa 2', 1, '2025-11-13 14:04:00.000000', NULL),
(4, 4, 'Residencial', '04004000', 'Rua Delta', '100', 'Jardins', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(5, 5, 'Residencial', '20000100', 'Rua Epsilon', '210', 'Copacabana', 'Rio de Janeiro', 'RJ', 'Brasil', 'Apto 501', 1, '2025-11-13 14:04:00.000000', NULL),
(6, 6, 'Residencial', '30000200', 'Rua Zeta', '320', 'Savassi', 'Belo Horizonte', 'MG', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(7, 7, 'Residencial', '40000300', 'Avenida Eta', '430', 'Barra', 'Salvador', 'BA', 'Brasil', 'Bloco A', 1, '2025-11-13 14:04:00.000000', NULL),
(8, 8, 'Residencial', '50000400', 'Rua Teta', '540', 'Boa Viagem', 'Recife', 'PE', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(9, 9, 'Residencial', '60000500', 'Rua Iota', '650', 'Meireles', 'Fortaleza', 'CE', 'Brasil', 'Apto 1102', 1, '2025-11-13 14:04:00.000000', NULL),
(10, 10, 'Residencial', '70000600', 'Rua Kappa', '760', 'Asa Sul', 'Brasilia', 'DF', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(11, 11, 'Residencial', '80000700', 'Avenida Lambda', '870', 'Batel', 'Curitiba', 'PR', 'Brasil', 'Casa 10', 1, '2025-11-13 14:04:00.000000', NULL),
(12, 12, 'Residencial', '90000800', 'Rua Mi', '980', 'Moinhos de Vento', 'Porto Alegre', 'RS', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(13, 13, 'Residencial', '05005000', 'Rua Ni', '111', 'Perdizes', 'Sao Paulo', 'SP', 'Brasil', 'Apto 33', 1, '2025-11-13 14:04:00.000000', NULL),
(14, 14, 'Residencial', '06006000', 'Rua Xi', '222', 'Moema', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(15, 15, 'Residencial', '07007000', 'Avenida Omicron', '333', 'Tatuape', 'Sao Paulo', 'SP', 'Brasil', 'Fundos', 1, '2025-11-13 14:04:00.000000', NULL),
(16, 16, 'Residencial', '08008000', 'Rua Pi', '444', 'Mooca', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(17, 17, 'Residencial', '09009000', 'Rua Ro', '555', 'Ipiranga', 'Sao Paulo', 'SP', 'Brasil', 'Apto 12', 1, '2025-11-13 14:04:00.000000', NULL),
(18, 18, 'Residencial', '11011000', 'Rua Sigma', '666', 'Santana', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(19, 19, 'Residencial', '12012000', 'Avenida Tau', '777', 'Saude', 'Sao Paulo', 'SP', 'Brasil', 'Bloco B Apto 101', 1, '2025-11-13 14:04:00.000000', NULL),
(20, 20, 'Residencial', '13013000', 'Rua Upsilon', '888', 'Liberdade', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(21, 21, 'Residencial', '14014000', 'Rua Fi', '999', 'Consolacao', 'Sao Paulo', 'SP', 'Brasil', 'Apto 45', 1, '2025-11-13 14:04:00.000000', NULL),
(22, 22, 'Residencial', '15015000', 'Rua Chi', '1010', 'Bela Vista', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(23, 23, 'Residencial', '16016000', 'Avenida Psi', '1212', 'Cambuci', 'Sao Paulo', 'SP', 'Brasil', 'Casa 3', 1, '2025-11-13 14:04:00.000000', NULL),
(24, 24, 'Residencial', '17017000', 'Rua Omega', '1313', 'Aclimacao', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(25, 25, 'Residencial', '21021000', 'Rua Alfa 2', '1414', 'Lapa', 'Sao Paulo', 'SP', 'Brasil', 'Apto 222', 1, '2025-11-13 14:04:00.000000', NULL),
(26, 26, 'Residencial', '22022000', 'Rua Beta 2', '1515', 'Pinheiros', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(27, 27, 'Residencial', '23023000', 'Avenida Gama 2', '1616', 'Vila Madalena', 'Sao Paulo', 'SP', 'Brasil', 'Apto 50', 1, '2025-11-13 14:04:00.000000', NULL),
(28, 28, 'Residencial', '24024000', 'Rua Delta 2', '1717', 'Itaim Bibi', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(29, 29, 'Residencial', '25025000', 'Rua Epsilon 2', '1818', 'Butanta', 'Sao Paulo', 'SP', 'Brasil', 'Casa 1', 1, '2025-11-13 14:04:00.000000', NULL),
(30, 30, 'Residencial', '26026000', 'Rua Zeta 2', '1919', 'Morumbi', 'Sao Paulo', 'SP', 'Brasil', NULL, 1, '2025-11-13 14:04:00.000000', NULL),
(31, 31, 'Residencial', '27027000', 'Avenida Eta 2', '2020', 'Santo Amaro', 'Sao Paulo', 'SP', 'Brasil', 'Apto 91', 1, '2025-11-13 14:04:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades`
--

CREATE TABLE `cad_mecanicos_especialidades` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_especialidades`
--

INSERT INTO `cad_mecanicos_especialidades` (`Id`, `Codigo`, `Nome`, `Descricao`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 'MOTOR', 'Especialista em Motor', 'Manutencao pesada de motores combustion', 1, '2025-10-14 02:17:24.306042', NULL),
(2, 'ELETR', 'Eletrica Automotiva', 'Diagnostico e reparo de sistemas eletricos e eletronicos', 1, '2025-10-14 02:17:24.306042', NULL),
(3, 'SUSPE', 'Suspensao e Freios', 'Ajustes de suspensao, amortecedores e freios', 1, '2025-10-14 02:17:24.306042', NULL),
(4, 'TRANS', 'Transmissao', 'Manutencao de caixas de cambio e transmissao automatica', 1, '2025-10-14 02:17:24.306042', NULL),
(5, 'DIAG', 'Diagnostico Avancado', 'Uso de scanners e ferramentas de diagnostico complexo', 1, '2025-11-13 14:00:00.000000', NULL),
(6, 'INJEC', 'Injecao Eletronica', 'Especialista em sistemas de injecao direta e indireta', 1, '2025-11-13 14:00:00.000000', NULL),
(7, 'ARCON', 'Ar Condicionado', 'Manutencao e reparo de sistemas de climatizacao', 1, '2025-11-13 14:00:00.000000', NULL),
(8, 'FUNIL', 'Funilaria', 'Reparo de lataria e estrutura de veiculos', 1, '2025-11-13 14:00:00.000000', NULL),
(9, 'PINT', 'Pintura Automotiva', 'Preparacao e aplicacao de pintura', 1, '2025-11-13 14:00:00.000000', NULL),
(10, 'ALINH', 'Alinhamento e Balanceamento', 'Servicos de geometria veicular', 1, '2025-11-13 14:00:00.000000', NULL),
(11, 'ADAS', 'Sistemas ADAS', 'Calibracao de sistemas avancados de assistencia ao motorista', 1, '2025-11-13 14:00:00.000000', NULL),
(12, 'HIBRID', 'Veiculos Hibridos/Eletricos', 'Manutencao de sistemas de alta tensao', 1, '2025-11-13 14:00:00.000000', NULL),
(13, 'DIESEL', 'Motores Diesel', 'Manutencao de motores diesel leve e pesado', 1, '2025-11-13 14:00:00.000000', NULL),
(14, 'GNV', 'Gas Natural Veicular', 'Instalacao e manutencao de GNV', 1, '2025-11-13 14:00:00.000000', NULL),
(15, 'VIDROS', 'Vidros e Travas', 'Reparo de maquinas de vidro e travas eletricas', 1, '2025-11-13 14:00:00.000000', NULL),
(16, 'LUBRI', 'Lubrificacao e Filtros', 'Troca de oleo e filtros gerais', 1, '2025-11-13 14:00:00.000000', NULL),
(17, 'SOM', 'Som e Acessorios', 'Instalacao de multimidia e acessorios', 1, '2025-11-13 14:00:00.000000', NULL),
(18, 'TUNING', 'Performance e Tuning', 'Modificacoes para aumento de performance', 1, '2025-11-13 14:00:00.000000', NULL),
(19, 'RESTA', 'Restauracao Classicos', 'Restauracao de veiculos antigos', 1, '2025-11-13 14:00:00.000000', NULL),
(20, 'DIREH', 'Direcao Hidraulica', 'Reparo de sistemas de direcao hidraulica e eletrica', 1, '2025-11-13 14:00:00.000000', NULL),
(21, 'ESCAP', 'Escapamentos', 'Troca e reparo de sistema de exaustao', 1, '2025-11-13 14:00:00.000000', NULL),
(22, 'MARTEL', 'Martelinho de Ouro', 'Reparo de amassados sem pintura', 1, '2025-11-13 14:00:00.000000', NULL),
(23, 'POLIM', 'Polimento e Estetica', 'Servicos de estetica automotiva', 1, '2025-11-13 14:00:00.000000', NULL),
(24, 'BAT', 'Baterias e Alternadores', 'Manutencao de sistema de carga', 1, '2025-11-13 14:00:00.000000', NULL),
(25, 'AIRBAG', 'Airbags', 'Reparo e diagnostico de sistemas de airbag', 1, '2025-11-13 14:00:00.000000', NULL),
(26, 'MODECU', 'Modulos ECU', 'Reparo e programacao de modulos de controle', 1, '2025-11-13 14:00:00.000000', NULL),
(27, 'CHAVE', 'Chaveiro Codificado', 'Codificacao de chaves e telecomandos', 1, '2025-11-13 14:00:00.000000', NULL),
(28, 'PNEUS', 'Pneus e Rodas', 'Troca e reparo de pneus', 1, '2025-11-13 14:00:00.000000', NULL),
(29, '4X4', 'Tracao 4x4', 'Manutencao de sistemas de tracao integral', 1, '2025-11-13 14:00:00.000000', NULL),
(30, 'MOTO', 'Motocicletas', 'Manutencao geral de motos', 1, '2025-11-13 14:00:00.000000', NULL),
(31, 'NAUT', 'Motor Nautico', 'Manutencao de motores de popa e centro', 1, '2025-11-13 14:00:00.000000', NULL),
(32, 'PESAD', 'Maquinas Pesadas', 'Manutencao de tratores e escavadeiras', 1, '2025-11-13 14:00:00.000000', NULL),
(33, 'CAMBIO', 'Cambio Automatico', 'Especialista em cambio automatico e CVT', 1, '2025-11-13 14:00:00.000000', NULL),
(34, 'RETMOT', 'Retifica de Motor', 'Servicos de retifica de cabecote e bloco', 1, '2025-11-13 14:00:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades_rel`
--

CREATE TABLE `cad_mecanicos_especialidades_rel` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint NOT NULL,
  `Nivel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pleno',
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Anotacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_especialidades_rel`
--

INSERT INTO `cad_mecanicos_especialidades_rel` (`Id`, `Mecanico_Id`, `Especialidade_Id`, `Nivel`, `Principal`, `Anotacoes`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 'Senior', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(2, 2, 2, 'Pleno', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(3, 3, 3, 'Senior', 1, 'Especialidade principal', '2025-10-14 02:17:24.338824', NULL),
(4, 1, 4, 'Pleno', 0, 'Suporte secundario em transmissao', '2025-10-14 02:17:24.338824', NULL),
(5, 4, 5, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(6, 5, 6, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(7, 6, 7, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(8, 7, 8, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(9, 8, 9, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(10, 9, 10, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(11, 10, 11, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(12, 11, 12, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(13, 12, 13, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(14, 13, 14, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(15, 14, 15, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(16, 15, 16, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(17, 16, 17, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(18, 17, 18, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(19, 18, 19, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(20, 19, 20, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(21, 20, 21, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(22, 21, 22, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(23, 22, 23, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(24, 23, 24, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(25, 24, 25, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(26, 25, 26, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(27, 26, 27, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(28, 27, 28, 'Junior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(29, 28, 29, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(30, 29, 30, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(31, 30, 31, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(32, 31, 32, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(33, 32, 33, 'Pleno', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL),
(34, 33, 34, 'Senior', 1, 'Especialidade principal', '2025-11-13 14:02:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_experiencias`
--

CREATE TABLE `cad_mecanicos_experiencias` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Empresa` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cargo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Inicio` date DEFAULT NULL,
  `Data_Fim` date DEFAULT NULL,
  `Resumo_Atividades` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_mecanicos_experiencias`
--

INSERT INTO `cad_mecanicos_experiencias` (`Id`, `Mecanico_Id`, `Empresa`, `Cargo`, `Data_Inicio`, `Data_Fim`, `Resumo_Atividades`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Auto Center Prime', 'Mecanico Senior', '2015-01-01', '2019-12-15', 'Liderou equipe de manutencao pesada e treinou mecanicos junior.', '2025-10-14 02:17:24.414609', NULL),
(2, 2, 'Eletrica AutoTech', 'Especialista Eletrica', '2017-03-01', '2021-04-30', 'Responsavel por diagnostico de sistemas eletricos e implementacao de novas ferramentas.', '2025-10-14 02:17:24.414609', NULL),
(3, 3, 'Freios Master', 'Mecanico Chefe', '2014-01-01', '2019-02-28', 'Coordenador da area de freios e suspensao.', '2025-11-13 14:07:00.000000', NULL),
(4, 4, 'Diagnostico Facil', 'Mecanico Pleno', '2019-01-15', '2021-12-31', 'Diagnostico de falhas eletronicas.', '2025-11-13 14:07:00.000000', NULL),
(5, 5, 'Auto Eletrica Fenix', 'Ajudante Eletricista', '2021-01-10', '2022-02-28', 'Auxiliar em injecao eletronica.', '2025-11-13 14:07:00.000000', NULL),
(6, 6, 'Gelofrio A/C', 'Tecnico de A/C', '2015-05-01', '2018-06-14', 'Manutencao de ar condicionado.', '2025-11-13 14:07:00.000000', NULL),
(7, 7, 'Funilaria Brilho Novo', 'Funileiro', '2017-03-01', '2020-02-19', 'Reparos de lataria e alinhamento de chassi.', '2025-11-13 14:07:00.000000', NULL),
(8, 8, 'Pintura Express', 'Pintor', '2018-02-01', '2021-07-31', 'Preparacao e pintura.', '2025-11-13 14:07:00.000000', NULL),
(9, 9, 'Centro Automotivo Roda Certa', 'Alinhador', '2020-01-10', '2022-05-11', 'Servicos de alinhamento e balanceamento.', '2025-11-13 14:07:00.000000', NULL),
(10, 10, 'Concessionaria Tesla', 'Tecnico ADAS', '2017-06-01', '2019-10-31', 'Calibracao de sistemas ADAS (experiencia internacional).', '2025-11-13 14:07:00.000000', NULL),
(11, 11, 'Green Auto', 'Eletricista Hibrido', '2020-01-01', '2022-12-31', 'Manutencao em Toyota Prius e Corolla Hybrid.', '2025-11-13 14:07:00.000000', NULL),
(12, 12, 'Diesel Ponto', 'Mecanico Diesel', '2010-01-01', '2017-01-19', 'Reparo de motores diesel pesados.', '2025-11-13 14:07:00.000000', NULL),
(13, 13, 'GNV Total', 'Instalador', '2022-01-01', '2023-07-09', 'Instalacao de kits GNV.', '2025-11-13 14:07:00.000000', NULL),
(14, 14, 'Auto Vidros JKL', 'Instalador', '2018-05-01', '2021-04-14', 'Troca de vidros e reparo de travas.', '2025-11-13 14:07:00.000000', NULL),
(15, 15, 'Super Troca Oleo', 'Lubrificador', '2021-01-01', '2022-09-30', 'Troca de oleo e filtros.', '2025-11-13 14:07:00.000000', NULL),
(16, 16, 'Som Auto Store', 'Instalador', '2017-08-01', '2020-08-31', 'Instalacao de som e acessorios.', '2025-11-13 14:07:00.000000', NULL),
(17, 17, 'Performance Garage', 'Mecanico Preparador', '2019-01-01', '2022-02-10', 'Preparacao de motores para performance.', '2025-11-13 14:07:00.000000', NULL),
(18, 18, 'Oficina Classicos', 'Restaurador', '2010-01-01', '2015-03-09', 'Restauracao de mecanica de carros antigos.', '2025-11-13 14:07:00.000000', NULL),
(19, 19, 'Direcao Certa', 'Tecnico Hidraulico', '2016-01-01', '2019-07-19', 'Reparo de caixas de direcao.', '2025-11-13 14:07:00.000000', NULL),
(20, 20, 'Escapamentos ZM', 'Soldador', '2018-10-01', '2021-11-14', 'Troca e solda de escapamentos.', '2025-11-13 14:07:00.000000', NULL),
(21, 21, 'Tira Amassados', 'Aprendiz', '2022-01-01', '2023-02-28', 'Auxiliar de martelinho de ouro.', '2025-11-13 14:07:00.000000', NULL),
(22, 22, 'Estetica Premium', 'Polidor', '2016-01-01', '2018-09-30', 'Servicos de polimento e estetica.', '2025-11-13 14:07:00.000000', NULL),
(23, 23, 'Auto Eletrica Luz', 'Eletricista', '2017-01-01', '2020-05-04', 'Reparo de alternadores e motores de partida.', '2025-11-13 14:07:00.000000', NULL),
(24, 24, 'Airbag Solutions', 'Tecnico Eletronico', '2015-01-01', '2017-08-09', 'Diagnostico de sistemas de airbag.', '2025-11-13 14:07:00.000000', NULL),
(25, 25, 'Modulo Certo', 'Programador ECU', '2020-01-01', '2022-06-19', 'Reparo de modulos.', '2025-11-13 14:07:00.000000', NULL),
(26, 26, 'Chaveiro Central', 'Chaveiro', '2016-01-01', '2019-01-14', 'Codificacao de chaves.', '2025-11-13 14:07:00.000000', NULL),
(27, 27, 'Borracharia ZP', 'Borracheiro', '2021-01-01', '2023-01-31', 'Troca e reparo de pneus.', '2025-11-13 14:07:00.000000', NULL),
(28, 28, '4x4 Garage', 'Mecanico 4x4', '2018-01-01', '2021-03-09', 'Manutencao de Troller e Jeep.', '2025-11-13 14:07:00.000000', NULL),
(29, 29, 'Moto Racing', 'Mecanico de Motos', '2015-01-01', '2018-11-30', 'Manutencao geral de motos.', '2025-11-13 14:07:00.000000', NULL),
(30, 30, 'Nautica Sul', 'Tecnico Nautico', '2017-01-01', '2020-06-30', 'Manutencao de motores de popa.', '2025-11-13 14:07:00.000000', NULL),
(31, 31, 'Maquinas Terra', 'Mecanico Maquinas', '2012-01-01', '2016-08-31', 'Reparo de tratores.', '2025-11-13 14:07:00.000000', NULL),
(32, 32, 'Automaticos & Cia', 'Tecnico Cambio AT', '2019-01-01', '2022-09-09', 'Reparo de cambio automatico.', '2025-11-13 14:07:00.000000', NULL),
(33, 33, 'Retifica Confianca', 'Retificador', '2015-01-01', '2019-05-14', 'Servicos de retifica de motor.', '2025-11-13 14:07:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos`
--

CREATE TABLE `cad_veiculos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Placa` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Modelo_Id` bigint DEFAULT NULL,
  `Ano_Fab` int DEFAULT NULL,
  `Ano_Mod` int DEFAULT NULL,
  `Cor` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Chassi` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Renavam` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `KM` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Combustivel` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos`
--

INSERT INTO `cad_veiculos` (`Id`, `Cliente_Id`, `Placa`, `Modelo_Id`, `Ano_Fab`, `Ano_Mod`, `Cor`, `Chassi`, `Renavam`, `KM`, `Combustivel`, `Observacao`, `Principal`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'ABC1D23', 1, 2021, 0, 'Prata', '9BRBLW12345678901', '01234567890', '10.000', 'Gasolina', 'Veículo principal', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(2, 2, 'EFG4H56', 2, 2020, 0, 'Preto', '9BGBCW23456789012', '11223344556', '10.000', 'Flex', 'Uso diário', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(3, 3, 'IJK7L89', 3, 2022, 0, 'Branco', '9BWZZZ377VT004251', '22334455667', '10.000', 'Gasolina', 'Veículo de testes', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(4, 4, 'MNO0P12', 4, 2019, 0, 'Vermelho', '8APZZZ15678945012', '65465467987', '10.000', 'Flex', 'Uso particular', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(5, 7, 'QRS3T45', 5, 2021, 0, 'Azul', '9BFZXXE6549873210', '33445566778', '10.000', 'Diesel', 'Frota TechFleet', 1, 1, '2025-10-14 00:15:26.000000', '2025-11-13 21:01:16.673513'),
(6, 8, 'XYZ9A87', 6, 2020, 2020, 'Cinza', '9CABCDEF123456789', '44556677889', '10.000', 'Gasolina', 'Revisão em dia', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(7, 9, 'BCD8E76', 7, 2021, 2021, 'Branco', '9DBCDEFG234567890', '55667788990', '10.000', 'Flex', 'Segundo dono', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(8, 10, 'FGH7I65', 8, 2022, 2022, 'Prata', '9ECDEFGH345678901', '66778899001', '10.000', 'Flex', 'Uso familiar', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(10, 12, 'NOP5Q43', 10, 2021, 2021, 'Azul', '9GDEFGHB567890123', '88990011223', '10.000', 'Gasolina', 'Pouco rodado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(11, 13, 'RST4U32', 11, 2020, 2020, 'Vermelho', '9HDEFGHJ678901234', '99001122334', '10.000', 'Flex', '', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(12, 14, 'VWX3Y21', 12, 2019, 2019, 'Preto', '9IDEFGH K789012345', '00112233445', '10.000', 'Gasolina', 'Veículo de luxo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(13, 15, 'ZAB2C10', 13, 2022, 2022, 'Branco', '9JDEFGH L890123456', '118573344556', '10.000', 'Flex', 'Blindado', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(14, 16, 'CDE1F09', 14, 2021, 2022, 'Cinza', '9KDEFGH M901234567', '22334464667', '10.000', 'Gasolina', 'Teto solar', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(15, 17, 'FGH0I98', 15, 2018, 2019, 'Prata', '9LDEFGH N012345678', '33445346778', '10.000', 'Flex', 'Garantia de fábrica', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(16, 18, 'JKL9M87', 16, 2021, 2021, 'Verde', '9MDEFGH P123456789', '44554677889', '10.000', 'Diesel', '4x4', 1, 0, '2025-11-13 12:17:00.000000', '2025-11-13 21:11:55.430787'),
(17, 19, 'NOP8Q76', 17, 2019, 2019, 'Azul', '9NDEFGH Q234567890', '556673665990', '10.000', 'Diesel', '7 lugares', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(18, 20, 'RST7U65', 18, 2020, 2021, 'Branco', '9PDEFGH R345678901', '667772299001', '10.000', 'Híbrido', 'Sistema de segurança avançado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(19, 21, 'VWX6Y54', 19, 2022, 2022, 'Preto', '9QDEFGH S456789012', '778898900112', '10.000', 'Diesel', 'Pneus novos', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(20, 22, 'ZAB5C43', 20, 2018, 2018, 'Azul', '9RDEFGH T567890123', '889930011223', '10.000', 'Gasolina', 'Tração integral', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(21, 23, 'CDE4F32', 21, 2019, 2019, 'Vermelho', '9SDEFGH U678901234', '990001122334', '10.000', 'Gasolina', 'Importado', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(22, 24, 'FGH3I21', 22, 2021, 2021, 'Preto', '9TDEFGH V789012345', '0011223433445', '10.000', 'Híbrido', 'Veículo de diretoria', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(23, 25, 'JKL2M10', 23, 2020, 2020, 'Amarelo', '9UDEFGH W890123456', '11224544557', '10.000', 'Gasolina', 'Esportivo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(24, 26, 'NOP1Q09', 24, 2019, 2020, 'Verde', '9VDEFGH X901234567', '22334574668', '10.000', 'Gasolina', '', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(25, 27, 'RST0U98', 25, 2022, 2022, 'Vermelho', '9WDEFGH Y012345678', '33445566779', '10.000', 'Flex', 'Customizado', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(26, 28, 'VWX9Y87', 26, 2021, 2021, 'Branco', '9XDEFGH Z123456789', '4455253477890', '10.000', 'Flex', 'Teto panorâmico', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(27, 29, 'ZAB8C76', 27, 2020, 2020, 'Prata', '9YDEFGH1234567890', '55667788991', '10.000', 'Elétrico', '100% elétrico', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(28, 30, 'CDE7F65', 28, 2022, 2022, 'Preto', '9ZDEFGH2345678901', '66778899002', '10.000', 'Diesel', 'Capota marítima', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(29, 31, 'FGH6I54', 29, 2018, 2018, 'Laranja', '9ADEFGH3456789012', '77889900113', '10.000', 'Gasolina', 'Muscle car', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(30, 32, 'JKL5M43', 30, 2017, 2017, 'Cinza', '9BDEFGH4567890123', '88990011224', '10.000', 'Gasolina', 'Veículo de colecionador', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(31, 33, 'NOP4Q32', 31, 2021, 2022, 'Amarelo', '9CDEFGH5678901234', '99001122335', '10.000', 'Gasolina', 'Acessórios off-road', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(32, 34, 'RST3U21', 32, 2023, 2023, 'Azul', '9DDEFGH6789012345', '00112233446', '10.000', 'Elétrico', 'Carro novo', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(33, 35, 'VWX2Y10', 33, 2023, 2023, 'Branco', '9EDEFGH7890123456', '11223344558', '10.000', 'Híbrido', 'Lançamento', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(34, 36, 'ZAB1C09', 34, 2022, 2022, 'Preto', '9FDEFGH8901234567', '22334455669', '10.000', 'Elétrico', 'Autopilot', 1, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513'),
(35, 37, 'CDE0F98', 35, 2020, 2020, 'Branco', '9GDEFGH9012345678', '33445566780', '10.000', 'Diesel', 'Veículo utilitário', 0, 1, '2025-11-13 12:17:00.000000', '2025-11-13 21:01:16.673513');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_marcas`
--

CREATE TABLE `cad_veiculos_marcas` (
  `Id` bigint NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos_marcas`
--

INSERT INTO `cad_veiculos_marcas` (`Id`, `Nome`, `Pais`, `Created_At`, `Updated_At`) VALUES
(1, 'Toyota', 'Japão', '2025-10-14 00:15:26.000000', NULL),
(2, 'Chevrolet', 'Estados Unidos', '2025-10-14 00:15:26.000000', NULL),
(3, 'Volkswagen', 'Alemanha', '2025-10-14 00:15:26.000000', NULL),
(4, 'Fiat', 'Itália', '2025-10-14 00:15:26.000000', NULL),
(5, 'Ford', 'Estados Unidos', '2025-10-14 00:15:26.000000', NULL),
(6, 'Honda', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(7, 'Hyundai', 'Coreia do Sul', '2025-11-13 12:15:00.000000', NULL),
(8, 'Nissan', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(9, 'Renault', 'França', '2025-11-13 12:15:00.000000', NULL),
(10, 'Peugeot', 'França', '2025-11-13 12:15:00.000000', NULL),
(11, 'Citroën', 'França', '2025-11-13 12:15:00.000000', NULL),
(12, 'Mercedes-Benz', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(13, 'BMW', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(14, 'Audi', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(15, 'Kia', 'Coreia do Sul', '2025-11-13 12:15:00.000000', NULL),
(16, 'Jeep', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(17, 'Land Rover', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(18, 'Volvo', 'Suécia', '2025-11-13 12:15:00.000000', NULL),
(19, 'Mitsubishi', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(20, 'Subaru', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(21, 'Mazda', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(22, 'Lexus', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(23, 'Porsche', 'Alemanha', '2025-11-13 12:15:00.000000', NULL),
(24, 'Jaguar', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(25, 'Mini', 'Reino Unido', '2025-11-13 12:15:00.000000', NULL),
(26, 'Chery', 'China', '2025-11-13 12:15:00.000000', NULL),
(27, 'JAC Motors', 'China', '2025-11-13 12:15:00.000000', NULL),
(28, 'RAM', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(29, 'Dodge', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(30, 'Chrysler', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(31, 'Suzuki', 'Japão', '2025-11-13 12:15:00.000000', NULL),
(32, 'BYD', 'China', '2025-11-13 12:15:00.000000', NULL),
(33, 'GWM', 'China', '2025-11-13 12:15:00.000000', NULL),
(34, 'Tesla', 'Estados Unidos', '2025-11-13 12:15:00.000000', NULL),
(35, 'Iveco', 'Itália', '2025-11-13 12:15:00.000000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_modelos`
--

CREATE TABLE `cad_veiculos_modelos` (
  `Id` bigint NOT NULL,
  `Marca_Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ano_Inicio` int DEFAULT NULL,
  `Ano_Fim` int DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_veiculos_modelos`
--

INSERT INTO `cad_veiculos_modelos` (`Id`, `Marca_Id`, `Nome`, `Ano_Inicio`, `Ano_Fim`, `Created_At`, `Updated_At`) VALUES
(1, 1, 'Corolla XEi', 2019, NULL, '2025-10-14 00:15:26.000000', NULL),
(2, 2, 'Onix LTZ', 2018, NULL, '2025-10-14 00:15:26.000000', NULL),
(3, 3, 'T-Cross Highline', 2020, NULL, '2025-10-14 00:15:26.000000', NULL),
(4, 4, 'Cronos Precision', 2019, NULL, '2025-10-14 00:15:26.000000', NULL),
(5, 5, 'Ranger XLS', 2017, NULL, '2025-10-14 00:15:26.000000', NULL),
(6, 6, 'Civic Touring', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(7, 7, 'HB20 Diamond', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(8, 8, 'Kicks Exclusive', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(9, 9, 'Kwid Intense', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(10, 10, '208 Griffe', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(11, 11, 'C4 Cactus Shine', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(12, 12, 'C-180 Avantgarde', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(13, 13, '320i GP', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(14, 14, 'A3 Sedan S Line', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(15, 15, 'Sportage EX', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(16, 16, 'Compass Longitude', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(17, 17, 'Discovery Sport SE', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(18, 18, 'XC60 Momentum', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(19, 19, 'L200 Triton Sport', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(20, 20, 'Forester S', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(21, 21, 'CX-5 Touring', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(22, 22, 'UX 250h Dynamic', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(23, 23, 'Cayenne S', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(24, 24, 'F-Pace R-Sport', 2019, NULL, '2025-11-13 12:16:00.000000', NULL),
(25, 25, 'Cooper S', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(26, 26, 'Tiggo 8 TXS', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(27, 27, 'T40 Plus', 2020, NULL, '2025-11-13 12:16:00.000000', NULL),
(28, 28, '1500 Rebel', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(29, 29, 'Challenger GT', 2018, NULL, '2025-11-13 12:16:00.000000', NULL),
(30, 30, '300C', 2017, NULL, '2025-11-13 12:16:00.000000', NULL),
(31, 31, 'Jimny Sierra', 2021, NULL, '2025-11-13 12:16:00.000000', NULL),
(32, 32, 'Dolphin', 2023, NULL, '2025-11-13 12:16:00.000000', NULL),
(33, 33, 'Haval H6', 2023, NULL, '2025-11-13 12:16:00.000000', NULL),
(34, 34, 'Model 3', 2022, NULL, '2025-11-13 12:16:00.000000', NULL),
(35, 35, 'Daily 35-150', 2020, NULL, '2025-11-13 12:16:00.000000', NULL);

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_fabricantes`
--

CREATE TABLE `est_fabricantes` (
  `Id` bigint NOT NULL,
  `nome` varchar(120) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_fabricantes`
--

INSERT INTO `est_fabricantes` (`Id`, `nome`, `cnpj`, `contato`, `created_at`, `updated_at`) VALUES
(1, 'Bosch', '12.345.678/0001-90', 'contato@bosch.com.br', '2025-11-06 23:55:09.242', NULL),
(2, 'NGK', '98.765.432/0001-10', 'suporte@ngk.com.br', '2025-11-06 23:55:09.242', NULL),
(3, 'TRW', '11.222.333/0001-44', 'vendas@trw.com.br', '2025-11-06 23:55:09.242', NULL),
(4, 'SKF', '22.333.444/0001-55', 'brasil@skf.com', '2025-11-06 23:55:09.242', NULL),
(5, 'Monroe', '33.444.555/0001-66', 'atendimento@monroe.com.br', '2025-11-06 23:55:09.242', NULL),
(6, 'Moura', '44.555.666/0001-77', 'comercial@moura.com.br', '2025-11-13 10:10:00.600', NULL),
(7, 'Osram', '55.666.777/0001-88', 'contato@osram.com.br', '2025-11-13 10:10:00.600', NULL),
(8, 'Nakata', '66.777.888/0001-99', 'vendas@nakata.com.br', '2025-11-13 10:10:00.600', NULL),
(9, 'Valeo', '77.888.999/0001-00', 'suporte@valeo.com', '2025-11-13 10:10:00.600', NULL),
(10, 'Heliar', '88.999.000/0001-11', 'contato@heliar.com.br', '2025-11-13 10:10:00.600', NULL),
(11, 'Philips', '99.000.111/0001-22', 'auto@philips.com.br', '2025-11-13 10:10:00.600', NULL),
(12, 'MTE-THOMSON', '10.111.222/0001-33', 'vendas@mte-thomson.com.br', '2025-11-13 10:10:00.600', NULL),
(13, 'Paraflu', '11.222.333/0001-44', 'contato@paraflu.com.br', '2025-11-13 10:10:00.600', NULL),
(14, 'Cofap', '12.333.444/0001-55', 'atendimento@cofap.com.br', '2025-11-13 10:10:00.600', NULL),
(15, 'Magneti Marelli', '13.444.555/0001-66', 'mm@mmarelli.com', '2025-11-13 10:10:00.600', NULL),
(16, 'Gates', '14.555.666/0001-77', 'br.vendas@gates.com', '2025-11-13 10:10:00.600', NULL),
(17, 'Fras-le', '15.666.777/0001-88', 'contato@fras-le.com', '2025-11-13 10:10:00.600', NULL),
(18, 'Continental', '16.777.888/0001-99', 'vendas.auto@continental.com', '2025-11-13 10:10:00.600', NULL),
(19, 'Luk', '17.888.999/0001-00', 'info@luk.com.br', '2025-11-13 10:10:00.600', NULL),
(20, 'Sachs', '18.999.000/0001-11', 'atendimento@sachs.com.br', '2025-11-13 10:10:00.600', NULL),
(21, 'Mobil', '19.000.111/0001-22', 'sac@mobil.com', '2025-11-13 10:10:00.600', NULL),
(22, 'Castrol', '20.111.222/0001-33', 'faleconosco@castrol.com.br', '2025-11-13 10:10:00.600', NULL),
(23, 'Goodyear', '21.222.333/0001-44', 'contato@goodyear.com.br', '2025-11-13 10:10:00.600', NULL),
(24, 'Pirelli', '22.333.444/0001-55', 'atendimento.pneu@pirelli.com', '2025-11-13 10:10:00.600', NULL),
(25, 'Delphi', '23.444.555/0001-66', 'sac.delphi@borgwarner.com', '2025-11-13 10:10:00.600', NULL),
(26, '3M', '24.555.666/0001-77', 'auto@3m.com.br', '2025-11-13 10:10:00.600', NULL),
(27, 'Wurth', '25.666.777/0001-88', 'vendas@wurth.com.br', '2025-11-13 10:10:00.600', NULL),
(28, 'Denso', '26.777.888/0001-99', 'sac@denso.com.br', '2025-11-13 10:10:00.600', NULL),
(29, 'Acdelco', '27.888.999/0001-00', 'contato@acdelco.com.br', '2025-11-13 10:10:00.600', NULL),
(30, 'Cobreq', '28.999.000/0001-11', 'vendas@cobreq.com.br', '2025-11-13 10:10:00.600', NULL),
(31, 'Elf', '29.000.111/0001-22', 'sac@totalenergies.com.br', '2025-11-13 10:10:00.600', NULL),
(32, 'Ipiranga', '30.111.222/0001-33', 'lubrificantes@ipiranga.com.br', '2025-11-13 10:10:00.600', NULL),
(33, 'Petrobras', '31.222.333/0001-44', 'br@br.com.br', '2025-11-13 10:10:00.600', NULL),
(34, 'Mahle', '32.333.444/0001-55', 'contato@mahle.com.br', '2025-11-13 10:10:00.600', NULL),
(35, 'Mann-Filter', '33.444.555/0001-66', 'vendas@mann-hummel.com', '2025-11-13 10:10:00.600', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_localizacoes`
--

CREATE TABLE `est_localizacoes` (
  `Id` bigint NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `corredor` varchar(20) DEFAULT NULL,
  `prateleira` varchar(20) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_localizacoes`
--

INSERT INTO `est_localizacoes` (`Id`, `descricao`, `corredor`, `prateleira`, `created_at`, `updated_at`) VALUES
(1, 'Estante principal', 'A', '1', '2025-11-06 23:55:09.297', NULL),
(2, 'Estante lateral', 'A', '2', '2025-11-06 23:55:09.297', NULL),
(3, 'Galpão peças pesadas', 'B', '3', '2025-11-06 23:55:09.297', NULL),
(4, 'Mezanino elétricos', 'C', '1', '2025-11-06 23:55:09.297', NULL),
(5, 'Área pneus/suspensão', 'D', '2', '2025-11-06 23:55:09.297', NULL),
(6, 'Estante Fluidos', 'A', '3', '2025-11-13 10:10:00.700', NULL),
(7, 'Estante Baterias', 'A', '4', '2025-11-13 10:10:00.700', NULL),
(8, 'Ganchos Correias', 'B', '1', '2025-11-13 10:10:00.700', NULL),
(9, 'Estante Injeção', 'B', '2', '2025-11-13 10:10:00.700', NULL),
(10, 'Prateleira Iluminação', 'C', '2', '2025-11-13 10:10:00.700', NULL),
(11, 'Prateleira Arrefecimento', 'C', '3', '2025-11-13 10:10:00.700', NULL),
(12, 'Caixa Palhetas', 'C', '4', '2025-11-13 10:10:00.700', NULL),
(13, 'Área Escapamentos', 'D', '1', '2025-11-13 10:10:00.700', NULL),
(14, 'Galpão Lataria', 'E', '1', '2025-11-13 10:10:00.700', NULL),
(15, 'Prateleira Acabamento', 'E', '2', '2025-11-13 10:10:00.700', NULL),
(16, 'Armário Ferramentas', 'F', '1', '2025-11-13 10:10:00.700', NULL),
(17, 'Área Pneus', 'G', '1', '2025-11-13 10:10:00.700', NULL),
(18, 'Expositor Rodas', 'G', '2', '2025-11-13 10:10:00.700', NULL),
(19, 'Armário Segurança', 'H', '1', '2025-11-13 10:10:00.700', NULL),
(20, 'Gôndola Acessórios', 'H', '2', '2025-11-13 10:10:00.700', NULL),
(21, 'Estante Químicos', 'I', '1', '2025-11-13 10:10:00.700', NULL),
(22, 'Caixa Mangueiras', 'I', '2', '2025-11-13 10:10:00.700', NULL),
(23, 'Gaveteiro Juntas', 'J', '1', '2025-11-13 10:10:00.700', NULL),
(24, 'Gaveteiro Rolamentos', 'J', '2', '2025-11-13 10:10:00.700', NULL),
(25, 'Caixa Fixação', 'J', '3', '2025-11-13 10:10:00.700', NULL),
(26, 'Sala Módulos (Climatizada)', 'K', '1', '2025-11-13 10:10:00.700', NULL),
(27, 'Estante Performance', 'K', '2', '2025-11-13 10:10:00.700', NULL),
(28, 'Prateleira Direção', 'L', '1', '2025-11-13 10:10:00.700', NULL),
(29, 'Estante Ar Condicionado', 'L', '2', '2025-11-13 10:10:00.700', NULL),
(30, 'Galpão Motores', 'M', '1', '2025-11-13 10:10:00.700', NULL),
(31, 'Estante Vidros e Travas', 'M', '2', '2025-11-13 10:10:00.700', NULL),
(32, 'Caixa Borrachas', 'N', '1', '2025-11-13 10:10:00.700', NULL),
(33, 'Área Carga/Engates', 'N', '2', '2025-11-13 10:10:00.700', NULL),
(34, 'Armário Oficina', 'P', '1', '2025-11-13 10:10:00.700', NULL),
(35, 'Estante Admissão', 'P', '2', '2025-11-13 10:10:00.700', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_movimentacoes`
--

CREATE TABLE `est_movimentacoes` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `quantidade` int NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `data_movimentacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_movimentacoes`
--

INSERT INTO `est_movimentacoes` (`Id`, `peca_id`, `quantidade`, `tipo`, `referencia`, `data_movimentacao`, `usuario`, `created_at`, `updated_at`) VALUES
(5001, 1001, 20, 'ENTRADA', 'NF 12345/2025 - Compra estoques', '2025-10-17 23:55:09', 'clever', '2025-11-06 23:55:09.418', NULL),
(5002, 1003, 2, 'SAIDA', 'OS #874 - Troca freio Gol', '2025-10-22 23:55:09', 'maria', '2025-11-06 23:55:09.418', NULL),
(5003, 1004, 4, 'ENTRADA', 'NF 12401/2025 - Reposição', '2025-10-25 23:55:09', 'jose', '2025-11-06 23:55:09.418', NULL),
(5004, 1002, 1, 'SAIDA', 'OS #905 - Revisão HB20', '2025-10-28 23:55:09', 'ana', '2025-11-06 23:55:09.418', NULL),
(5005, 1005, 3, 'AJUSTE', 'Inventário periódico', '2025-11-01 23:55:09', 'clever', '2025-11-06 23:55:09.418', NULL),
(5006, 1006, 40, 'ENTRADA', 'NF 12500/2025 - Compra NGK', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5007, 1007, 8, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5008, 1008, 10, 'ENTRADA', 'NF 12502/2025 - Compra TRW', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5009, 1009, 5, 'ENTRADA', 'NF 12503/2025 - Compra SKF', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5010, 1010, 50, 'ENTRADA', 'NF 12504/2025 - Compra Monroe', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5011, 1011, 10, 'ENTRADA', 'NF 12505/2025 - Compra Moura', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5012, 1006, 4, 'SAIDA', 'OS #1001 - Revisão Onix', '2025-11-14 09:00:00', 'jose', '2025-11-14 09:00:00.800', NULL),
(5013, 1010, 4, 'SAIDA', 'OS #1002 - Troca Óleo Fit', '2025-11-14 09:30:00', 'ana', '2025-11-14 09:30:00.800', NULL),
(5014, 1008, 1, 'SAIDA', 'OS #1003 - Troca Freio Civic', '2025-11-14 10:00:00', 'clever', '2025-11-14 10:00:00.800', NULL),
(5015, 1009, 1, 'SAIDA', 'OS #1004 - Troca Embreagem Uno', '2025-11-14 11:00:00', 'maria', '2025-11-14 11:00:00.800', NULL),
(5016, 1012, 30, 'ENTRADA', 'NF 12506/2025 - Compra Osram', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5017, 1013, 15, 'ENTRADA', 'NF 12507/2025 - Compra Nakata', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5018, 1014, 20, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5019, 1015, 12, 'ENTRADA', 'NF 12503/2025 - Compra SKF', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5020, 1016, 4, 'ENTRADA', 'NF 12508/2025 - Compra Valeo', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5021, 1017, 8, 'ENTRADA', 'NF 12507/2025 - Compra Nakata', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5022, 1018, 60, 'ENTRADA', 'NF 12502/2025 - Compra TRW', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5023, 1019, 10, 'ENTRADA', 'NF 12500/2025 - Compra NGK', '2025-11-13 10:11:00', 'maria', '2025-11-13 10:11:00.800', NULL),
(5024, 1020, 25, 'ENTRADA', 'NF 12504/2025 - Compra Monroe', '2025-11-13 10:11:00', 'jose', '2025-11-13 10:11:00.800', NULL),
(5025, 1021, 30, 'ENTRADA', 'NF 12501/2025 - Compra Bosch', '2025-11-13 10:11:00', 'ana', '2025-11-13 10:11:00.800', NULL),
(5026, 1022, 1, 'SAIDA', 'OS #1005 - Reparo Injeção UP', '2025-11-14 14:00:00', 'clever', '2025-11-14 14:00:00.800', NULL),
(5027, 1023, 1, 'SAIDA', 'OS #1006 - Troca Freio Hilux', '2025-11-14 15:00:00', 'maria', '2025-11-14 15:00:00.800', NULL),
(5028, 1024, 2, 'SAIDA', 'OS #1001 - Revisão Onix', '2025-11-14 09:00:00', 'jose', '2025-11-14 09:00:00.800', NULL),
(5029, 1025, 1, 'SAIDA', 'OS #1007 - Reparo Alternador Cruze', '2025-11-14 16:00:00', 'ana', '2025-11-14 16:00:00.800', NULL),
(5030, 1026, 8, 'ENTRADA', 'NF 12509/2025 - Compra Heliar', '2025-11-13 10:11:00', 'clever', '2025-11-13 10:11:00.800', NULL),
(5031, 1028, 1, 'SAIDA', 'OS #1008 - Reparo Arrefecimento Palio', '2025-11-14 17:00:00', 'maria', '2025-11-14 17:00:00.800', NULL),
(5032, 1029, 10, 'AJUSTE', 'Contagem de inventário - Sobra', '2025-11-15 08:00:00', 'jose', '2025-11-15 08:00:00.800', NULL),
(5033, 1032, 1, 'AJUSTE', 'Peça descontinuada - Baixa', '2025-11-15 08:05:00', 'ana', '2025-11-15 08:05:00.800', NULL),
(5034, 1034, 2, 'SAIDA', 'OS #1009 - Troca Suspensão Ka', '2025-11-15 09:00:00', 'clever', '2025-11-15 09:00:00.800', NULL),
(5035, 1035, 2, 'SAIDA', 'OS #1010 - Reparo Roda Gol', '2025-11-15 10:00:00', 'maria', '2025-11-15 10:00:00.800', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas`
--

CREATE TABLE `est_pecas` (
  `Id` bigint NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `fabricante_id` bigint DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `localizacao_id` bigint DEFAULT NULL,
  `preco_unitario` decimal(12,2) NOT NULL,
  `quantidade` int NOT NULL DEFAULT '0',
  `estoque_minimo` int DEFAULT '0',
  `estoque_maximo` int DEFAULT '0',
  `unidade` varchar(10) DEFAULT 'UN',
  `status` varchar(20) DEFAULT 'Ativo',
  `observacoes` text,
  `data_cadastro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas`
--

INSERT INTO `est_pecas` (`Id`, `codigo`, `descricao`, `fabricante_id`, `categoria_id`, `localizacao_id`, `preco_unitario`, `quantidade`, `estoque_minimo`, `estoque_maximo`, `unidade`, `status`, `observacoes`, `data_cadastro`, `created_at`, `updated_at`) VALUES
(1001, 'FLT-OL-FOX1', 'Filtro de óleo VW Fox 1.6 8v (Bosch)', 1, 1, 1, 29.90, 25, 5, 50, 'UN', 'Ativo', 'Aplicação: EA111/EA113', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1002, 'FLT-AR-HB20', 'Filtro de ar Hyundai HB20 1.0/1.6 (NGK)', 2, 1, 2, 39.50, 18, 5, 40, 'UN', 'Ativo', 'Compatível 2012–2019', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1003, 'PST-FREIO-GOL', 'Pastilha de freio dianteira Gol G5/G6 (TRW)', 3, 3, 3, 119.90, 12, 4, 30, 'JGO', 'Ativo', 'Jogo com 4 peças', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1004, 'AMT-FR-STR', 'Amortecedor dianteiro Strada (Monroe)', 5, 4, 5, 349.00, 6, 2, 12, 'UN', 'Ativo', 'Linha Original', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1005, 'COR-DENT-PAL', 'Correia dentada Palio 1.0/1.3 (SKF)', 4, 2, 4, 89.00, 15, 3, 25, 'UN', 'Ativo', 'Verificar tensor', '2025-11-06 23:55:09', '2025-11-06 23:55:09.374', NULL),
(1006, 'VLG-IGN-ONIX', 'Vela de ignição Onix 1.0 (NGK)', 2, 5, 1, 45.00, 40, 10, 80, 'UN', 'Ativo', 'Jogo com 4 unidades', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1007, 'BMP-COMB-FIT', 'Bomba de combustível Honda Fit 1.4/1.5 (Bosch)', 1, 6, 2, 289.90, 8, 3, 15, 'UN', 'Ativo', 'Compatível 2009-2014', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1008, 'DSC-FREIO-CIV', 'Disco de freio dianteiro Civic (TRW)', 3, 3, 3, 215.50, 10, 4, 20, 'PAR', 'Ativo', 'Par, ventilado', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1009, 'KIT-EMB-UNO', 'Kit de embreagem Uno Fire 1.0 (SKF)', 4, 7, 4, 450.00, 5, 2, 10, 'KIT', 'Ativo', 'Platô + Disco + Rolamento', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1010, 'OLEO-5W30-SINT', 'Óleo de motor 5W30 Sintético (Monroe)', 5, 8, 5, 59.90, 50, 20, 100, 'L', 'Ativo', 'API SN', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1011, 'BAT-MOURA-60A', 'Bateria 60Ah M60AD (Moura)', 6, 9, 1, 410.00, 10, 5, 20, 'UN', 'Ativo', '18 meses garantia', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1012, 'LAMP-H4-OSRAM', 'Lâmpada H4 Night Breaker (Osram)', 7, 10, 2, 75.00, 30, 10, 60, 'PAR', 'Ativo', 'Super Branca', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1013, 'PIVO-SUSP-CORS', 'Pivô de suspensão Corsa (Nakata)', 8, 4, 3, 65.00, 15, 5, 30, 'UN', 'Ativo', 'Lado Esquerdo/Direito', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1014, 'FLT-CAB-COROL', 'Filtro de cabine Corolla (Bosch)', 1, 1, 4, 49.90, 20, 10, 40, 'UN', 'Ativo', 'Carvão ativado', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1015, 'TENSOR-COR-GOL', 'Tensor correia dentada Gol EA111 (SKF)', 4, 2, 5, 130.00, 12, 3, 25, 'UN', 'Ativo', 'Apenas tensor', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1016, 'RAD-AGUA-CELTA', 'Radiador de água Celta/Prisma (Valeo)', 9, 11, 1, 399.00, 4, 2, 8, 'UN', 'Ativo', 'Com A/C', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1017, 'HOMOCIN-KA', 'Junta Homocinética Ford Ka 1.0 (Nakata)', 8, 7, 2, 179.90, 8, 3, 15, 'KIT', 'Ativo', 'Kit completo com coifa', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1018, 'FLUIDO-FREIO-DOT4', 'Fluido de freio DOT4 500ml (TRW)', 3, 8, 3, 22.50, 60, 20, 100, 'UN', 'Ativo', 'Sintético', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1019, 'BOB-IGN-FOX', 'Bobina de ignição Fox 1.6 (NGK)', 2, 5, 4, 199.00, 10, 4, 20, 'UN', 'Ativo', '4 pinos', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1020, 'OLEO-CAMBIO-ATF', 'Óleo câmbio automático ATF 1L (Monroe)', 5, 8, 5, 75.00, 25, 10, 50, 'L', 'Ativo', 'Dexron VI', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1021, 'PALHETA-SL-20', 'Palheta limpador Silicone 20\" (Bosch)', 1, 12, 1, 35.00, 30, 10, 60, 'UN', 'Ativo', 'Aerofit', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1022, 'SONDA-LAMBDA-UP', 'Sonda Lambda VW UP TSI (NGK)', 2, 6, 2, 280.00, 7, 3, 15, 'UN', 'Ativo', 'Pré-catalisador', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1023, 'PST-FREIO-HILUX', 'Pastilha de freio Hilux 2.8 (TRW)', 3, 3, 3, 259.90, 8, 3, 15, 'JGO', 'Ativo', 'Cerâmica', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1024, 'AMT-TR-ONIX', 'Amortecedor traseiro Onix (Monroe)', 5, 4, 5, 299.00, 6, 2, 12, 'UN', 'Ativo', 'Linha OESpectrum', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1025, 'KIT-COR-ALT-CRUZE', 'Kit correia alternador Cruze 1.8 (SKF)', 4, 2, 4, 210.00, 10, 3, 20, 'KIT', 'Ativo', 'Correia + Tensor', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1026, 'BAT-HELIAR-70A', 'Bateria 70Ah HG70ND (Heliar)', 10, 9, 1, 519.00, 8, 3, 15, 'UN', 'Ativo', '24 meses garantia', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1027, 'LAMP-H7-PHILIPS', 'Lâmpada H7 X-treme Vision (Philips)', 11, 10, 2, 110.00, 20, 5, 40, 'PAR', 'Ativo', '+130% luz', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1028, 'TERM-AGUA-PALIO', 'Válvula termostática Palio Fire (MTE)', 12, 11, 3, 85.00, 15, 5, 30, 'UN', 'Ativo', 'Completa com carcaça', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1029, 'FLT-COMB-GOLG5', 'Filtro de combustível Gol G5 (Bosch)', 1, 1, 4, 25.00, 50, 15, 100, 'UN', 'Ativo', 'Filtro externo', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1030, 'ADIT-RAD-PARAFLU', 'Aditivo radiador Paraflu Bio 1L', 13, 8, 5, 32.00, 40, 15, 80, 'L', 'Ativo', 'Rosa, orgânico', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1031, 'CABO-VELA-CELTA', 'Cabo de vela Celta 1.0 (NGK)', 2, 5, 1, 115.00, 20, 5, 40, 'JGO', 'Ativo', 'Silicone', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1032, 'BICO-INJETOR-308', 'Bico injetor Peugeot 308 1.6 THP (Bosch)', 1, 6, 2, 450.00, 4, 2, 8, 'UN', 'Inativo', 'Injeção direta - DESCONTINUADO', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1033, 'DSC-FREIO-TR-JETTA', 'Disco de freio traseiro Jetta TSI (TRW)', 3, 3, 3, 199.00, 10, 4, 20, 'PAR', 'Ativo', 'Sólido', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1034, 'KIT-BAT-AMT-KA', 'Kit batente amortecedor Ford Ka (Nakata)', 8, 4, 4, 120.00, 15, 5, 30, 'KIT', 'Ativo', 'Dianteiro (Par)', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL),
(1035, 'ROLAMENTO-RODA-GOL', 'Rolamento roda dianteira Gol G5 (SKF)', 4, 7, 5, 145.00, 10, 4, 20, 'UN', 'Ativo', 'Com ABS', '2025-11-13 10:00:00', '2025-11-13 10:00:00.100', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_anexos`
--

CREATE TABLE `est_pecas_anexos` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_anexos`
--

INSERT INTO `est_pecas_anexos` (`Id`, `peca_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(7001, 1001, 'foto-filtro-oleo.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-oleo.jpg', 'Foto do produto', '2025-10-19 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7002, 1002, 'catalogo-ngk.pdf', 'application/pdf', 'https://exemplo.com/docs/catalogo-ngk.pdf', 'Aplicações HB20', '2025-10-23 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7003, 1003, 'pastilha-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/pastilha-trw.jpg', 'Foto caixa TRW', '2025-10-27 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7004, 1004, 'monroe-spec.pdf', 'application/pdf', 'https://exemplo.com/docs/monroe-spec.pdf', 'Especificação técnica', '2025-10-29 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7005, 1005, 'guia-correas-skf.pdf', 'application/pdf', 'https://exemplo.com/docs/guia-correas-skf.pdf', 'Guia de instalação', '2025-11-03 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7006, 1006, 'vela-onix-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/vela-onix-ngk.jpg', 'Foto do produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7007, 1007, 'bomba-fit-bosch.pdf', 'application/pdf', 'https://exemplo.com/docs/bomba-fit-bosch.pdf', 'Manual de instalação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7008, 1008, 'disco-civic-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/disco-civic-trw.jpg', 'Foto da caixa', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7009, 1009, 'embreagem-uno-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/embreagem-uno-skf.jpg', 'Foto do kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7010, 1010, 'oleo-5w30-monroe.pdf', 'application/pdf', 'https://exemplo.com/docs/oleo-5w30-monroe.pdf', 'Ficha técnica (FISPQ)', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7011, 1011, 'bateria-moura-m60ad.jpg', 'image/jpeg', 'https://exemplo.com/media/bateria-moura-m60ad.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7012, 1012, 'lamp-h4-osram-nb.pdf', 'application/pdf', 'https://exemplo.com/docs/lamp-h4-osram-nb.pdf', 'Especificações', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7013, 1013, 'pivo-corsa-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/pivo-corsa-nakata.jpg', 'Foto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7014, 1014, 'filtro-cabine-corolla.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-cabine-corolla.jpg', 'Foto aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7015, 1015, 'tensor-gol-skf.pdf', 'application/pdf', 'https://exemplo.com/docs/tensor-gol-skf.pdf', 'Guia de aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7016, 1016, 'radiador-celta-valeo.jpg', 'image/jpeg', 'https://exemplo.com/media/radiador-celta-valeo.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7017, 1017, 'homocinetica-ka-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/homocinetica-ka-nakata.jpg', 'Foto do kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7018, 1018, 'fluido-freio-dot4-trw.pdf', 'application/pdf', 'https://exemplo.com/docs/fluido-freio-dot4-trw.pdf', 'FISPQ', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7019, 1019, 'bobina-fox-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/bobina-fox-ngk.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7020, 1020, 'oleo-atf-monroe.jpg', 'image/jpeg', 'https://exemplo.com/media/oleo-atf-monroe.jpg', 'Foto frasco', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7021, 1021, 'palheta-bosch-aerofit.pdf', 'application/pdf', 'https://exemplo.com/docs/palheta-bosch-aerofit.pdf', 'Tabela de aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7022, 1022, 'sonda-up-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/sonda-up-ngk.jpg', 'Foto conector', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7023, 1023, 'pastilha-hilux-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/pastilha-hilux-trw.jpg', 'Foto cerâmica', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7024, 1024, 'amortecedor-onix-monroe.pdf', 'application/pdf', 'https://exemplo.com/docs/amortecedor-onix-monroe.pdf', 'Garantia OESpectrum', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7025, 1025, 'kit-alt-cruze-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/kit-alt-cruze-skf.jpg', 'Foto kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7026, 1026, 'bateria-heliar-70a.jpg', 'image/jpeg', 'https://exemplo.com/media/bateria-heliar-70a.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7027, 1027, 'lamp-h7-philips.pdf', 'application/pdf', 'https://exemplo.com/docs/lamp-h7-philips.pdf', 'Especificações técnicas', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7028, 1028, 'valvula-palio-mte.jpg', 'image/jpeg', 'https://exemplo.com/media/valvula-palio-mte.jpg', 'Foto carcaça', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7029, 1029, 'filtro-comb-golg5-bosch.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-comb-golg5-bosch.jpg', 'Foto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7030, 1030, 'aditivo-paraflu-bio.pdf', 'application/pdf', 'https://exemplo.com/docs/aditivo-paraflu-bio.pdf', 'FISPQ', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7031, 1031, 'cabo-vela-celta-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/cabo-vela-celta-ngk.jpg', 'Foto caixa', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7032, 1032, 'bico-thp-bosch.jpg', 'image/jpeg', 'https://exemplo.com/media/bico-thp-bosch.jpg', 'Foto do bico (antiga)', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7033, 1033, 'disco-jetta-trw.pdf', 'application/pdf', 'https://exemplo.com/docs/disco-jetta-trw.pdf', 'Dimensões', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7034, 1034, 'kit-batente-ka-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/kit-batente-ka-nakata.jpg', 'Foto kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7035, 1035, 'rolamento-gol-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/rolamento-gol-skf.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_fornecedores`
--

CREATE TABLE `est_pecas_fornecedores` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `fornecedor_id` bigint NOT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `prazo_entrega` int DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_fornecedores`
--

INSERT INTO `est_pecas_fornecedores` (`Id`, `peca_id`, `fornecedor_id`, `preco`, `prazo_entrega`, `observacao`, `created_at`, `updated_at`) VALUES
(8001, 1001, 301, 27.90, 3, 'Fornecedor preferencial (lote mínimo 10)', '2025-11-06 23:59:27.154', NULL),
(8002, 1002, 302, 37.00, 5, 'Entrega via transportadora', '2025-11-06 23:59:27.154', NULL),
(8003, 1003, 303, 112.50, 4, 'Desconto para 5+ unidades', '2025-11-06 23:59:27.154', NULL),
(8004, 1004, 304, 335.00, 7, 'Amortecedor linha premium', '2025-11-06 23:59:27.154', NULL),
(8005, 1005, 305, 84.90, 2, 'Estoque local do fornecedor', '2025-11-06 23:59:27.154', NULL),
(8006, 1006, 301, 42.00, 2, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8007, 1007, 302, 275.00, 5, 'Importação direta', '2025-11-13 10:02:00.300', NULL),
(8008, 1008, 303, 205.00, 3, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8009, 1009, 304, 430.00, 4, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8010, 1010, 305, 55.00, 1, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8011, 1011, 306, 390.00, 2, 'Distribuidor Moura', '2025-11-13 10:02:00.300', NULL),
(8012, 1012, 301, 70.00, 3, 'Autopeças elétricas', '2025-11-13 10:02:00.300', NULL),
(8013, 1013, 302, 60.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8014, 1014, 303, 45.00, 4, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8015, 1015, 304, 122.00, 3, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8016, 1016, 305, 380.00, 6, 'Valeo (encomenda)', '2025-11-13 10:02:00.300', NULL),
(8017, 1017, 306, 170.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8018, 1018, 301, 20.00, 1, 'TRW Químicos', '2025-11-13 10:02:00.300', NULL),
(8019, 1019, 302, 189.00, 3, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8020, 1020, 303, 70.00, 2, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8021, 1021, 304, 31.00, 1, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8022, 1022, 305, 265.00, 5, 'Importação direta', '2025-11-13 10:02:00.300', NULL),
(8023, 1023, 306, 245.00, 4, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8024, 1024, 301, 285.00, 3, 'Monroe premium', '2025-11-13 10:02:00.300', NULL),
(8025, 1025, 302, 200.00, 2, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL),
(8026, 1026, 303, 499.00, 2, 'Distribuidor Heliar', '2025-11-13 10:02:00.300', NULL),
(8027, 1027, 304, 100.00, 4, 'Philips Auto', '2025-11-13 10:02:00.300', NULL),
(8028, 1028, 305, 79.00, 3, 'MTE-THOMSON', '2025-11-13 10:02:00.300', NULL),
(8029, 1029, 306, 22.00, 1, 'Bosch Service', '2025-11-13 10:02:00.300', NULL),
(8030, 1030, 301, 29.00, 1, 'Distribuidor local de lubrificantes', '2025-11-13 10:02:00.300', NULL),
(8031, 1031, 302, 105.00, 2, 'Distribuidor NGK SP', '2025-11-13 10:02:00.300', NULL),
(8032, 1032, 303, 430.00, 10, 'Importação (sem estoque)', '2025-11-13 10:02:00.300', NULL),
(8033, 1033, 304, 185.00, 3, 'Fornecedor TRW', '2025-11-13 10:02:00.300', NULL),
(8034, 1034, 305, 110.00, 2, 'Nakata distribuidor', '2025-11-13 10:02:00.300', NULL),
(8035, 1035, 306, 135.00, 2, 'SKF Campinas', '2025-11-13 10:02:00.300', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_historico`
--

CREATE TABLE `est_pecas_historico` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `data_alteracao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_historico`
--

INSERT INTO `est_pecas_historico` (`Id`, `peca_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(9001, 1001, '2025-10-18 23:59:27', 'clever', 'preco_unitario', '26.90', '29.90', '2025-11-06 23:59:27.187', NULL),
(9002, 1003, '2025-10-24 23:59:27', 'maria', 'quantidade', '10', '12', '2025-11-06 23:59:27.187', NULL),
(9003, 1004, '2025-10-26 23:59:27', 'jose', 'localizacao_id', '3', '5', '2025-11-06 23:59:27.187', NULL),
(9004, 1002, '2025-10-29 23:59:27', 'ana', 'observacoes', NULL, 'Compatível 2012–2019', '2025-11-06 23:59:27.187', NULL),
(9005, 1005, '2025-11-02 23:59:27', 'clever', 'preco_unitario', '79.90', '89.00', '2025-11-06 23:59:27.187', NULL),
(9006, 1006, '2025-11-13 10:03:00', 'clever', 'quantidade', '0', '40', '2025-11-13 10:03:00.400', NULL),
(9007, 1007, '2025-11-13 10:03:00', 'maria', 'preco_unitario', '299.90', '289.90', '2025-11-13 10:03:00.400', NULL),
(9008, 1008, '2025-11-13 10:03:00', 'jose', 'localizacao_id', '1', '3', '2025-11-13 10:03:00.400', NULL),
(9009, 1009, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '5', '2025-11-13 10:03:00.400', NULL),
(9010, 1010, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '55.00', '59.90', '2025-11-13 10:03:00.400', NULL),
(9011, 1011, '2025-11-13 10:03:00', 'maria', 'estoque_minimo', '2', '5', '2025-11-13 10:03:00.400', NULL),
(9012, 1012, '2025-11-13 10:03:00', 'jose', 'quantidade', '0', '30', '2025-11-13 10:03:00.400', NULL),
(9013, 1013, '2025-11-13 10:03:00', 'ana', 'preco_unitario', '69.00', '65.00', '2025-11-13 10:03:00.400', NULL),
(9014, 1014, '2025-11-13 10:03:00', 'clever', 'localizacao_id', '2', '4', '2025-11-13 10:03:00.400', NULL),
(9015, 1015, '2025-11-13 10:03:00', 'maria', 'quantidade', '0', '12', '2025-11-13 10:03:00.400', NULL),
(9016, 1016, '2025-11-13 10:03:00', 'jose', 'status', 'Ativo', 'Inativo', '2025-11-13 10:03:00.400', NULL),
(9017, 1016, '2025-11-13 10:04:00', 'jose', 'status', 'Inativo', 'Ativo', '2025-11-13 10:03:00.400', NULL),
(9018, 1017, '2025-11-13 10:03:00', 'ana', 'preco_unitario', '185.00', '179.90', '2025-11-13 10:03:00.400', NULL),
(9019, 1018, '2025-11-13 10:03:00', 'clever', 'quantidade', '0', '60', '2025-11-13 10:03:00.400', NULL),
(9020, 1019, '2025-11-13 10:03:00', 'maria', 'localizacao_id', '1', '4', '2025-11-13 10:03:00.400', NULL),
(9021, 1020, '2025-11-13 10:03:00', 'jose', 'observacoes', NULL, 'Dexron VI', '2025-11-13 10:03:00.400', NULL),
(9022, 1021, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '30', '2025-11-13 10:03:00.400', NULL),
(9023, 1022, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '280.00', '285.00', '2025-11-13 10:03:00.400', NULL),
(9024, 1023, '2025-11-13 10:03:00', 'maria', 'observacoes', 'Jogo com 4 peças', 'Cerâmica', '2025-11-13 10:03:00.400', NULL),
(9025, 1024, '2025-11-13 10:03:00', 'jose', 'quantidade', '0', '6', '2025-11-13 10:03:00.400', NULL),
(9026, 1025, '2025-11-13 10:03:00', 'ana', 'localizacao_id', '5', '4', '2025-11-13 10:03:00.400', NULL),
(9027, 1026, '2025-11-13 10:03:00', 'clever', 'preco_unitario', '500.00', '519.00', '2025-11-13 10:03:00.400', NULL),
(9028, 1027, '2025-11-13 10:03:00', 'maria', 'quantidade', '0', '20', '2025-11-13 10:03:00.400', NULL),
(9029, 1028, '2025-11-13 10:03:00', 'jose', 'codigo', 'TERM-PALIO', 'TERM-AGUA-PALIO', '2025-11-13 10:03:00.400', NULL),
(9030, 1029, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '50', '2025-11-13 10:03:00.400', NULL),
(9031, 1030, '2025-11-13 10:03:00', 'clever', 'estoque_maximo', '50', '80', '2025-11-13 10:03:00.400', NULL),
(9032, 1031, '2025-11-13 10:03:00', 'maria', 'preco_unitario', '110.00', '115.00', '2025-11-13 10:03:00.400', NULL),
(9033, 1032, '2025-11-13 10:03:00', 'jose', 'status', 'Ativo', 'Inativo', '2025-11-13 10:03:00.400', NULL),
(9034, 1033, '2025-11-13 10:03:00', 'ana', 'quantidade', '0', '10', '2025-11-13 10:03:00.400', NULL),
(9035, 1034, '2025-11-13 10:03:00', 'clever', 'localizacao_id', '1', '4', '2025-11-13 10:03:00.400', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_anexos`
--

CREATE TABLE `fin_anexos` (
  `Id` bigint NOT NULL,
  `pagamento_id` bigint DEFAULT NULL,
  `conta_pagar_id` bigint DEFAULT NULL,
  `conta_receber_id` bigint DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_anexos`
--

INSERT INTO `fin_anexos` (`Id`, `pagamento_id`, `conta_pagar_id`, `conta_receber_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(9601, 9101, NULL, 9301, 'recibo-os10001.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10001.pdf', 'Recibo pagamento cliente', '2025-10-31 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9602, NULL, 9202, NULL, 'nf12450.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12450.pdf', 'Nota fiscal amortecedores Monroe', '2025-11-04 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9603, 9103, NULL, 9303, 'recibo-os10003.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10003.pdf', 'Recibo OS diagnóstico', '2025-10-22 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9604, NULL, 9201, NULL, 'nf12345.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12345.pdf', 'Compra filtros Bosch', '2025-11-03 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9605, NULL, 9205, NULL, 'cotacao-sensores.pdf', 'application/pdf', 'https://exemplo.com/fin/cotacao-sensores.pdf', 'Cotação aguardando aprovação', '2025-11-07 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9606, 9106, NULL, 9306, 'recibo-os10006.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10006.pdf', 'Recibo OS 10006', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9607, 9110, NULL, 9310, 'recibo-os10010.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10010.pdf', 'Recibo OS 10010', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9608, 9111, NULL, 9311, 'recibo-os10011.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10011.pdf', 'Recibo OS 10011', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9609, 9115, NULL, 9317, 'recibo-os10017.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10017.pdf', 'Recibo OS 10017', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9610, 9120, NULL, 9334, 'recibo-os10034.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10034.pdf', 'Recibo OS 10034', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9611, 9135, NULL, 9335, 'recibo-os10035.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10035.pdf', 'Recibo OS 10035', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9612, NULL, NULL, 9307, 'orcamento-os10007.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10007.pdf', 'Orçamento A/C', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9613, NULL, NULL, 9308, 'orcamento-os10008.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10008.pdf', 'Orçamento Freio Civic', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9614, NULL, NULL, 9315, 'orcamento-os10015.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10015.pdf', 'Orçamento Tensor Gol', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9615, NULL, NULL, 9319, 'orcamento-os10019.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10019.pdf', 'Orçamento Bobina Fox', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9616, NULL, 9206, NULL, 'nf-lubribrasil.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-lubribrasil.pdf', 'NF Lubrificantes', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9617, NULL, 9207, NULL, 'nf-pneuforte.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-pneuforte.pdf', 'NF Pneus', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9618, NULL, 9208, NULL, 'nf-somcenter.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-somcenter.pdf', 'NF Alarmes', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9619, NULL, 9209, NULL, 'nf-quimicar.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-quimicar.pdf', 'NF Aditivos', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9620, NULL, 9210, NULL, 'nf-ferramaster.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-ferramaster.pdf', 'NF Scanner', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9621, NULL, 9211, NULL, 'nf-ilumicenter.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-ilumicenter.pdf', 'NF Lâmpadas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9622, NULL, 9212, NULL, 'nf-baterias-hz.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-baterias-hz.pdf', 'NF Baterias', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9623, NULL, 9213, NULL, 'nf-4x4.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-4x4.pdf', 'NF Peças 4x4', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9624, NULL, 9214, NULL, 'nf-vidrocar.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-vidrocar.pdf', 'NF Palhetas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9625, NULL, 9215, NULL, 'nf-autojuntas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-autojuntas.pdf', 'NF Juntas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9626, 9121, NULL, NULL, 'boleto-lubribrasil.pdf', 'application/pdf', 'https://exemplo.com/fin/boleto-lubribrasil.pdf', 'Boleto CP 9206', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9627, 9122, NULL, NULL, 'comprovante-pix-pneus.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pix-pneus.pdf', 'Agendamento PIX CP 9207', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9628, 9124, NULL, NULL, 'comprovante-pgto-quimicar.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-quimicar.pdf', 'Recibo dinheiro CP 9209', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9629, 9126, NULL, NULL, 'comprovante-pgto-ilumicenter.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-ilumicenter.pdf', 'Comprovante PIX CP 9211', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9630, 9128, NULL, NULL, 'comprovante-pgto-4x4.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-4x4.pdf', 'Comprovante Débito CP 9213', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9631, 9130, NULL, NULL, 'comprovante-pgto-juntas.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-juntas.pdf', 'Comprovante PIX CP 9215', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9632, 9133, NULL, NULL, 'comprovante-pgto-arrefecer.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-arrefecer.pdf', 'Comprovante TED CP 9218', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9633, NULL, 9222, NULL, 'nf-borrachas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-borrachas.pdf', 'NF Mangueiras', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9634, NULL, 9226, NULL, 'nf-rodas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-rodas.pdf', 'NF Rodas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9635, NULL, 9229, NULL, 'nf-parafusos.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-parafusos.pdf', 'NF Fixa Tudo', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_pagar`
--

CREATE TABLE `fin_contas_pagar` (
  `Id` bigint NOT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `vencimento` datetime(3) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_contas_pagar`
--

INSERT INTO `fin_contas_pagar` (`Id`, `fornecedor_id`, `descricao`, `valor`, `vencimento`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9201, 301, 'Compra de filtros de óleo Bosch', 580.00, '2025-11-18 02:00:02.000', 'PENDENTE', NULL, 904, 'Prazo 10 dias via PIX', '2025-11-08 02:00:02.716', NULL),
(9202, 302, 'Compra de amortecedores Monroe', 1396.00, '2025-11-03 02:00:02.000', 'PAGO', '2025-11-05 02:00:02.000', 902, 'Parcela única no cartão', '2025-11-08 02:00:02.716', NULL),
(9203, 303, 'Compra de pastilhas TRW', 480.00, '2025-11-01 02:00:02.000', 'PAGO', '2025-11-02 02:00:02.000', 901, 'Pago em dinheiro na entrega', '2025-11-08 02:00:02.716', NULL),
(9204, 304, 'Compra de sensores Eletricar', 820.50, '2025-11-23 02:00:02.000', 'PENDENTE', NULL, 905, 'Aguardando nota fiscal', '2025-11-08 02:00:02.716', NULL),
(9205, 305, 'Compra de buchas Suspensul', 600.00, '2025-11-28 02:00:02.000', 'PENDENTE', NULL, 904, 'Pagamento agendado via PIX', '2025-11-08 02:00:02.716', NULL),
(9206, 306, 'Compra lubrificantes LubriBrasil', 1200.00, '2025-11-30 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 30 dias', '2025-11-13 14:11:00.002', NULL),
(9207, 307, 'Compra pneus PneuForte', 4500.00, '2025-11-20 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX agendado', '2025-11-13 14:11:00.002', NULL),
(9208, 308, 'Compra alarmes SomCenter', 950.00, '2025-11-15 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito 1x', '2025-11-13 14:11:00.002', NULL),
(9209, 309, 'Compra aditivos Quimicar', 300.00, '2025-11-10 00:00:00.000', 'PAGO', '2025-11-10 00:00:00.000', 901, 'Pago na entrega', '2025-11-13 14:11:00.002', NULL),
(9210, 310, 'Compra scanner Ferramaster', 3200.00, '2025-12-01 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 1/3', '2025-11-13 14:11:00.002', NULL),
(9211, 311, 'Compra lâmpadas Ilumicenter', 780.00, '2025-11-12 00:00:00.000', 'PAGO', '2025-11-12 00:00:00.000', 904, 'PIX pago', '2025-11-13 14:11:00.002', NULL),
(9212, 312, 'Compra baterias HZ', 2100.00, '2025-11-25 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto 21 dias', '2025-11-13 14:11:00.002', NULL),
(9213, 313, 'Compra peças 4x4 Brasil', 1100.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 903, 'Débito na retirada', '2025-11-13 14:11:00.002', NULL),
(9214, 314, 'Compra palhetas Vidrocar', 450.00, '2025-11-30 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9215, 315, 'Compra juntas Auto Juntas', 320.00, '2025-11-11 00:00:00.000', 'PAGO', '2025-11-11 00:00:00.000', 904, 'PIX pago', '2025-11-13 14:11:00.002', NULL),
(9216, 316, 'Compra peças asiáticas Import Parts', 1900.00, '2025-12-05 00:00:00.000', 'PENDENTE', NULL, 918, 'Faturamento 30 dias', '2025-11-13 14:11:00.002', NULL),
(9217, 317, 'Compra linha diesel Diesel Parts', 3800.00, '2025-12-10 00:00:00.000', 'PENDENTE', NULL, 920, 'Faturamento 60 dias (parcial)', '2025-11-13 14:11:00.002', NULL),
(9218, 318, 'Compra radiadores Arrefecer', 850.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 906, 'TED', '2025-11-13 14:11:00.002', NULL),
(9219, 319, 'Compra óleo câmbio AT Transmisul', 1300.00, '2025-11-28 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9220, 320, 'Compra produtos estética Esteticar', 600.00, '2025-11-18 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito', '2025-11-13 14:11:00.002', NULL),
(9221, 321, 'Compra para-choques Latas & Cia', 1500.00, '2025-12-01 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9222, 322, 'Compra mangueiras Borrachas Mil', 410.00, '2025-11-14 00:00:00.000', 'PAGO', '2025-11-14 00:00:00.000', 904, 'PIX', '2025-11-13 14:11:00.002', NULL),
(9223, 323, 'Reparo módulo ECU Digital Módulos', 700.00, '2025-11-19 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX (serviço)', '2025-11-13 14:11:00.002', NULL),
(9224, 324, 'Compra turbina Turbo Center', 2800.00, '2025-11-26 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito 3x', '2025-11-13 14:11:00.002', NULL),
(9225, 325, 'Compra caixa direção DH SP', 1150.00, '2025-12-02 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9226, 326, 'Compra rodas Roda Certa', 1800.00, '2025-11-13 00:00:00.000', 'PAGO', '2025-11-13 00:00:00.000', 903, 'Débito na retirada', '2025-11-13 14:11:00.002', NULL),
(9227, 328, 'Compra compressores A/C Clima Auto', 2400.00, '2025-11-29 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9228, 329, 'Compra escapamentos Escape Forte', 900.00, '2025-11-21 00:00:00.000', 'PENDENTE', NULL, 904, 'PIX agendado', '2025-11-13 14:11:00.002', NULL),
(9229, 330, 'Compra parafusos Fixa Tudo', 250.00, '2025-11-10 00:00:00.000', 'PAGO', '2025-11-10 00:00:00.000', 901, 'Dinheiro', '2025-11-13 14:11:00.002', NULL),
(9230, 331, 'Compra peças VW Ar Old Car', 720.00, '2025-11-22 00:00:00.000', 'PENDENTE', NULL, 902, 'Cartão de crédito', '2025-11-13 14:11:00.002', NULL),
(9231, 332, 'Compra filtros (Mann) Filtros BR', 1100.00, '2025-11-24 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9232, 333, 'Compra conectores Conect Car', 480.00, '2025-11-12 00:00:00.000', 'PAGO', '2025-11-12 00:00:00.000', 904, 'PIX', '2025-11-13 14:11:00.002', NULL),
(9233, 334, 'Compra EPIs Oficina Total', 650.00, '2025-11-27 00:00:00.000', 'PENDENTE', NULL, 905, 'Boleto', '2025-11-13 14:11:00.002', NULL),
(9234, 327, 'Compra antiga peças moto (INATIVO)', 300.00, '2023-05-10 00:00:00.000', 'CANCELADO', NULL, 905, 'Fornecedor inativo, baixa', '2025-11-13 14:11:00.002', NULL),
(9235, 335, 'Compra antiga importados (INATIVO)', 1200.00, '2023-01-15 00:00:00.000', 'CANCELADO', NULL, 905, 'Fornecedor inativo, baixa', '2025-11-13 14:11:00.002', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_receber`
--

CREATE TABLE `fin_contas_receber` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `vencimento` datetime(3) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_recebimento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_contas_receber`
--

INSERT INTO `fin_contas_receber` (`Id`, `cliente_id`, `descricao`, `valor`, `vencimento`, `status`, `data_recebimento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9301, 201, 'Ordem #10001 - Troca de óleo', 250.00, '2025-10-31 02:00:02.000', 'RECEBIDO', '2025-10-31 02:00:02.000', 903, 'Pago no débito no balcão', '2025-11-08 02:00:02.741', NULL),
(9302, 202, 'Ordem #10002 - Suspensão dianteira', 698.00, '2025-11-10 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-08 02:00:02.741', NULL),
(9303, 203, 'Ordem #10003 - Diagnóstico de ignição', 320.00, '2025-10-21 02:00:02.000', 'RECEBIDO', '2025-10-22 02:00:02.000', 901, 'Pago em espécie', '2025-11-08 02:00:02.741', NULL),
(9304, 204, 'Ordem #10004 - Freios e fluido', 160.00, '2025-10-25 02:00:02.000', 'RECEBIDO', '2025-10-25 02:00:02.000', 902, 'Cartão de crédito', '2025-11-08 02:00:02.741', NULL),
(9305, 205, 'Ordem #10005 - Scanner de injeção', 89.00, '2025-11-13 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando liberação', '2025-11-08 02:00:02.741', NULL),
(9306, 206, 'Ordem #10006 - Revisão Onix', 280.00, '2025-11-09 00:00:00.000', 'RECEBIDO', '2025-11-09 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9307, 207, 'Ordem #10007 - Diagnóstico A/C Fit', 200.00, '2025-11-15 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação reparo', '2025-11-13 14:12:00.003', NULL),
(9308, 208, 'Ordem #10008 - Freio Civic', 398.00, '2025-11-16 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação peças', '2025-11-13 14:12:00.003', NULL),
(9309, 209, 'Ordem #10009 - Embreagem Uno', 650.00, '2025-11-14 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando conclusão serviço', '2025-11-13 14:12:00.003', NULL),
(9310, 210, 'Ordem #10010 - Troca de óleo', 299.60, '2025-11-10 00:00:00.000', 'RECEBIDO', '2025-11-10 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9311, 211, 'Ordem #10011 - Troca bateria', 460.00, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 901, 'Pago em dinheiro', '2025-11-13 14:12:00.003', NULL),
(9312, 212, 'Ordem #10012 - Troca lâmpada H4', 95.00, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9313, 213, 'Ordem #10013 - Suspensão Corsa', 230.00, '2025-11-17 00:00:00.000', 'PENDENTE', NULL, 903, 'Aguardando alinhamento', '2025-11-13 14:12:00.003', NULL),
(9314, 214, 'Ordem #10014 - Filtro cabine Corolla', 89.90, '2025-11-11 00:00:00.000', 'RECEBIDO', '2025-11-11 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9315, 215, 'Ordem #10015 - Tensor Gol', 230.00, '2025-11-18 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9316, 216, 'Ordem #10016 - Arrefecimento Celta', 549.00, '2025-11-19 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando peça (radiador)', '2025-11-13 14:12:00.003', NULL),
(9317, 217, 'Ordem #10017 - Homocinética Ka', 279.90, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL),
(9318, 218, 'Ordem #10018 - Fluido freio', 82.50, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9319, 219, 'Ordem #10019 - Bobina Fox', 299.00, '2025-11-20 00:00:00.000', 'PENDENTE', NULL, 901, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9320, 220, 'Ordem #10020 - Câmbio ATF', 575.00, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 902, 'Pago no crédito 2x', '2025-11-13 14:12:00.003', NULL),
(9321, 221, 'Ordem #10021 - Palheta', 55.00, '2025-11-12 00:00:00.000', 'RECEBIDO', '2025-11-12 00:00:00.000', 901, 'Pago em dinheiro', '2025-11-13 14:12:00.003', NULL),
(9322, 222, 'Ordem #10022 - Sonda Lambda UP', 380.00, '2025-11-21 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando peça (sonda)', '2025-11-13 14:12:00.003', NULL),
(9323, 223, 'Ordem #10023 - Freio Hilux', 379.90, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9324, 224, 'Ordem #10024 - Amortecedor Onix', 748.00, '2025-11-22 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9325, 225, 'Ordem #10025 - Correia Cruze', 330.00, '2025-11-23 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9326, 226, 'Ordem #10026 - Bateria Heliar', 569.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL),
(9327, 227, 'Ordem #10027 - Lâmpada H7', 130.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9328, 228, 'Ordem #10028 - Válvula Palio', 165.00, '2025-11-24 00:00:00.000', 'PENDENTE', NULL, 901, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9329, 229, 'Ordem #10029 - Filtro Gol G5', 65.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9330, 230, 'Ordem #10030 - Aditivo radiador', 144.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 903, 'Pago no débito', '2025-11-13 14:12:00.003', NULL),
(9331, 231, 'Ordem #10031 - Cabos Celta', 195.00, '2025-11-25 00:00:00.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-13 14:12:00.003', NULL),
(9332, 232, 'Ordem #10032 - Bico Peugeot', 0.00, '2025-11-13 00:00:00.000', 'CANCELADO', NULL, 901, 'Serviço cancelado', '2025-11-13 14:12:00.003', NULL),
(9333, 233, 'Ordem #10033 - Discos Jetta', 548.00, '2025-11-26 00:00:00.000', 'PENDENTE', NULL, 902, 'Aguardando conclusão', '2025-11-13 14:12:00.003', NULL),
(9334, 234, 'Ordem #10034 - Batente Ka', 390.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 904, 'Pago via PIX', '2025-11-13 14:12:00.003', NULL),
(9335, 235, 'Ordem #10035 - Rolamento Gol', 295.00, '2025-11-13 00:00:00.000', 'RECEBIDO', '2025-11-13 00:00:00.000', 902, 'Pago no crédito', '2025-11-13 14:12:00.003', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_historico`
--

CREATE TABLE `fin_historico` (
  `Id` bigint NOT NULL,
  `entidade` varchar(50) NOT NULL,
  `entidade_id` bigint NOT NULL,
  `data_alteracao` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_historico`
--

INSERT INTO `fin_historico` (`Id`, `entidade`, `entidade_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(9501, 'fin_contas_pagar', 9202, '2025-11-03 02:00:02.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9502, 'fin_contas_receber', 9303, '2025-10-22 02:00:02.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-08 02:00:02.802', NULL),
(9503, 'fin_pagamentos', 9104, '2025-10-25 02:00:02.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9504, 'fin_contas_pagar', 9205, '2025-11-07 02:00:02.000', 'clever', 'observacao', 'Aguardando NF', 'Pagamento agendado via PIX', '2025-11-08 02:00:02.802', NULL),
(9505, 'fin_contas_receber', 9302, '2025-11-07 02:00:02.000', 'paulo', 'status', 'PENDENTE', 'AGUARDANDO', '2025-11-08 02:00:02.802', NULL),
(9506, 'fin_contas_pagar', 9209, '2025-11-10 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9507, 'fin_contas_pagar', 9211, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9508, 'fin_contas_pagar', 9213, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9509, 'fin_contas_pagar', 9215, '2025-11-11 00:00:00.000', 'maria', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9510, 'fin_contas_pagar', 9218, '2025-11-13 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9511, 'fin_contas_pagar', 9222, '2025-11-14 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9512, 'fin_contas_pagar', 9226, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9513, 'fin_contas_pagar', 9229, '2025-11-10 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9514, 'fin_contas_pagar', 9232, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9515, 'fin_contas_pagar', 9234, '2025-11-13 00:00:00.000', 'clever', 'status', 'PENDENTE', 'CANCELADO', '2025-11-13 14:16:00.007', NULL),
(9516, 'fin_contas_receber', 9306, '2025-11-09 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9517, 'fin_contas_receber', 9310, '2025-11-10 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9518, 'fin_contas_receber', 9311, '2025-11-11 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9519, 'fin_contas_receber', 9312, '2025-11-11 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9520, 'fin_contas_receber', 9314, '2025-11-11 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9521, 'fin_contas_receber', 9317, '2025-11-12 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9522, 'fin_contas_receber', 9318, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9523, 'fin_contas_receber', 9320, '2025-11-12 00:00:00.000', 'clever', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9524, 'fin_contas_receber', 9321, '2025-11-12 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9525, 'fin_contas_receber', 9323, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9526, 'fin_pagamentos', 9124, '2025-11-10 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9527, 'fin_pagamentos', 9126, '2025-11-12 00:00:00.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9528, 'fin_pagamentos', 9128, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9529, 'fin_pagamentos', 9130, '2025-11-11 00:00:00.000', 'jose', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9530, 'fin_pagamentos', 9133, '2025-11-13 00:00:00.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-13 14:16:00.007', NULL),
(9531, 'fin_contas_receber', 9332, '2025-11-13 00:00:00.000', 'maria', 'status', 'PENDENTE', 'CANCELADO', '2025-11-13 14:16:00.007', NULL),
(9532, 'fin_contas_receber', 9334, '2025-11-13 00:00:00.000', 'ana', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9533, 'fin_contas_receber', 9335, '2025-11-13 00:00:00.000', 'jose', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-13 14:16:00.007', NULL),
(9534, 'fin_contas_pagar', 9210, '2025-11-13 00:00:00.000', 'clever', 'observacao', 'Boleto 1/3', 'Aguardando pagamento 1/3', '2025-11-13 14:16:00.007', NULL),
(9535, 'fin_contas_receber', 9307, '2025-11-13 00:00:00.000', 'paulo', 'status', 'PENDENTE', 'AGUARDANDO', '2025-11-13 14:16:00.007', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_lancamentos`
--

CREATE TABLE `fin_lancamentos` (
  `Id` bigint NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `data_lancamento` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `referencia` varchar(100) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_lancamentos`
--

INSERT INTO `fin_lancamentos` (`Id`, `tipo`, `descricao`, `valor`, `data_lancamento`, `referencia`, `observacao`, `created_at`, `updated_at`) VALUES
(9401, 'ENTRADA', 'Recebimento OS #10001', 250.00, '2025-10-31 02:00:02.000', 'OS10001', 'Pagamento concluído', '2025-11-08 02:00:02.780', NULL),
(9402, 'SAIDA', 'Compra filtros Bosch', 580.00, '2025-11-03 02:00:02.000', 'NF12345', 'Fornecedor 301', '2025-11-08 02:00:02.780', NULL),
(9403, 'ENTRADA', 'Recebimento OS #10003', 320.00, '2025-10-22 02:00:02.000', 'OS10003', 'Serviço concluído', '2025-11-08 02:00:02.780', NULL),
(9404, 'SAIDA', 'Compra amortecedores Monroe', 1396.00, '2025-11-05 02:00:02.000', 'NF12450', 'Pago cartão crédito', '2025-11-08 02:00:02.780', NULL),
(9405, 'ENTRADA', 'Recebimento OS #10004', 160.00, '2025-10-25 02:00:02.000', 'OS10004', 'Recebido via cartão crédito', '2025-11-08 02:00:02.780', NULL),
(9406, 'ENTRADA', 'Recebimento OS #10006 (Onix)', 280.00, '2025-11-09 00:00:00.000', 'OS10006', 'Cliente 206', '2025-11-13 14:14:00.005', NULL),
(9407, 'ENTRADA', 'Recebimento OS #10010 (Troca Óleo)', 299.60, '2025-11-10 00:00:00.000', 'OS10010', 'Cliente 210', '2025-11-13 14:14:00.005', NULL),
(9408, 'ENTRADA', 'Recebimento OS #10011 (Bateria)', 460.00, '2025-11-11 00:00:00.000', 'OS10011', 'Cliente 211', '2025-11-13 14:14:00.005', NULL),
(9409, 'ENTRADA', 'Recebimento OS #10012 (Lâmpada)', 95.00, '2025-11-11 00:00:00.000', 'OS10012', 'Cliente 212', '2025-11-13 14:14:00.005', NULL),
(9410, 'ENTRADA', 'Recebimento OS #10014 (Filtro Cabine)', 89.90, '2025-11-11 00:00:00.000', 'OS10014', 'Cliente 214', '2025-11-13 14:14:00.005', NULL),
(9411, 'ENTRADA', 'Recebimento OS #10017 (Homocinética)', 279.90, '2025-11-12 00:00:00.000', 'OS10017', 'Cliente 217', '2025-11-13 14:14:00.005', NULL),
(9412, 'ENTRADA', 'Recebimento OS #10018 (Fluido Freio)', 82.50, '2025-11-12 00:00:00.000', 'OS10018', 'Cliente 218', '2025-11-13 14:14:00.005', NULL),
(9413, 'ENTRADA', 'Recebimento OS #10020 (Câmbio ATF)', 575.00, '2025-11-12 00:00:00.000', 'OS10020', 'Cliente 220', '2025-11-13 14:14:00.005', NULL),
(9414, 'ENTRADA', 'Recebimento OS #10021 (Palheta)', 55.00, '2025-11-12 00:00:00.000', 'OS10021', 'Cliente 221', '2025-11-13 14:14:00.005', NULL),
(9415, 'ENTRADA', 'Recebimento OS #10023 (Freio Hilux)', 379.90, '2025-11-13 00:00:00.000', 'OS10023', 'Cliente 223', '2025-11-13 14:14:00.005', NULL),
(9416, 'ENTRADA', 'Recebimento OS #10026 (Bateria Heliar)', 569.00, '2025-11-13 00:00:00.000', 'OS10026', 'Cliente 226', '2025-11-13 14:14:00.005', NULL),
(9417, 'ENTRADA', 'Recebimento OS #10027 (Lâmpada H7)', 130.00, '2025-11-13 00:00:00.000', 'OS10027', 'Cliente 227', '2025-11-13 14:14:00.005', NULL),
(9418, 'ENTRADA', 'Recebimento OS #10029 (Filtro Gol G5)', 65.00, '2025-11-13 00:00:00.000', 'OS10029', 'Cliente 229', '2025-11-13 14:14:00.005', NULL),
(9419, 'ENTRADA', 'Recebimento OS #10030 (Aditivo)', 144.00, '2025-11-13 00:00:00.000', 'OS10030', 'Cliente 230', '2025-11-13 14:14:00.005', NULL),
(9420, 'ENTRADA', 'Recebimento OS #10034 (Batente Ka)', 390.00, '2025-11-13 00:00:00.000', 'OS10034', 'Cliente 234', '2025-11-13 14:14:00.005', NULL),
(9421, 'SAIDA', 'Pagamento Lubrificantes', 1200.00, '2025-11-13 00:00:00.000', 'CP9206', 'Fornecedor 306', '2025-11-13 14:14:00.005', NULL),
(9422, 'SAIDA', 'Pagamento Pneus', 4500.00, '2025-11-13 00:00:00.000', 'CP9207', 'Fornecedor 307', '2025-11-13 14:14:00.005', NULL),
(9423, 'SAIDA', 'Pagamento Alarmes', 950.00, '2025-11-13 00:00:00.000', 'CP9208', 'Fornecedor 308', '2025-11-13 14:14:00.005', NULL),
(9424, 'SAIDA', 'Pagamento Aditivos', 300.00, '2025-11-10 00:00:00.000', 'CP9209', 'Fornecedor 309', '2025-11-13 14:14:00.005', NULL),
(9425, 'SAIDA', 'Pagamento Scanner (1/3)', 1066.67, '2025-11-13 00:00:00.000', 'CP9210', 'Fornecedor 310', '2025-11-13 14:14:00.005', NULL),
(9426, 'SAIDA', 'Pagamento Lâmpadas', 780.00, '2025-11-12 00:00:00.000', 'CP9211', 'Fornecedor 311', '2025-11-13 14:14:00.005', NULL),
(9427, 'SAIDA', 'Pagamento Baterias', 2100.00, '2025-11-13 00:00:00.000', 'CP9212', 'Fornecedor 312', '2025-11-13 14:14:00.005', NULL),
(9428, 'SAIDA', 'Pagamento Peças 4x4', 1100.00, '2025-11-13 00:00:00.000', 'CP9213', 'Fornecedor 313', '2025-11-13 14:14:00.005', NULL),
(9429, 'SAIDA', 'Pagamento Palhetas', 450.00, '2025-11-13 00:00:00.000', 'CP9214', 'Fornecedor 314', '2025-11-13 14:14:00.005', NULL),
(9430, 'SAIDA', 'Pagamento Juntas', 320.00, '2025-11-11 00:00:00.000', 'CP9215', 'Fornecedor 315', '2025-11-13 14:14:00.005', NULL),
(9431, 'SAIDA', 'Pagamento Peças Asiáticas', 1900.00, '2025-11-13 00:00:00.000', 'CP9216', 'Fornecedor 316', '2025-11-13 14:14:00.005', NULL),
(9432, 'SAIDA', 'Pagamento Linha Diesel', 3800.00, '2025-11-13 00:00:00.000', 'CP9217', 'Fornecedor 317', '2025-11-13 14:14:00.005', NULL),
(9433, 'SAIDA', 'Pagamento Radiadores', 850.00, '2025-11-13 00:00:00.000', 'CP9218', 'Fornecedor 318', '2025-11-13 14:14:00.005', NULL),
(9434, 'SAIDA', 'Pagamento Óleo Câmbio AT', 1300.00, '2025-11-13 00:00:00.000', 'CP9219', 'Fornecedor 319', '2025-11-13 14:14:00.005', NULL),
(9435, 'SAIDA', 'Pagamento Produtos Estética', 600.00, '2025-11-13 00:00:00.000', 'CP9220', 'Fornecedor 320', '2025-11-13 14:14:00.005', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_metodos_pagamento`
--

CREATE TABLE `fin_metodos_pagamento` (
  `Id` bigint NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_metodos_pagamento`
--

INSERT INTO `fin_metodos_pagamento` (`Id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(901, 'Dinheiro', 'Pagamento em espécie no caixa', '2025-11-08 02:00:02.684', NULL),
(902, 'Cartão Crédito', 'Pagamentos via cartão de crédito', '2025-11-08 02:00:02.684', NULL),
(903, 'Cartão Débito', 'Pagamentos via cartão de débito', '2025-11-08 02:00:02.684', NULL),
(904, 'PIX', 'Transferência instantânea via PIX', '2025-11-08 02:00:02.684', NULL),
(905, 'Boleto', 'Cobrança via boleto bancário', '2025-11-08 02:00:02.684', NULL),
(906, 'Transferência (TED)', 'Transferência bancária (TED)', '2025-11-13 14:10:00.001', NULL),
(907, 'Transferência (DOC)', 'Transferência bancária (DOC)', '2025-11-13 14:10:00.001', NULL),
(908, 'Cheque', 'Pagamento com cheque (sob consulta)', '2025-11-13 14:10:00.001', NULL),
(909, 'Permuta', 'Troca de serviços ou produtos', '2025-11-13 14:10:00.001', NULL),
(910, 'Crédito Loja', 'Uso de crédito interno (devolução)', '2025-11-13 14:10:00.001', NULL),
(911, 'Pagamento Recorrente (CC)', 'Cobrança automática no cartão de crédito', '2025-11-13 14:10:00.001', NULL),
(912, 'Débito Automático', 'Cobrança automática em conta', '2025-11-13 14:10:00.001', NULL),
(913, 'Carteira Digital (Genérica)', 'Pagamento via app (ex: PicPay, Mercado Pago)', '2025-11-13 14:10:00.001', NULL),
(914, 'Link de Pagamento', 'Link enviado para pagamento online (CC)', '2025-11-13 14:10:00.001', NULL),
(915, 'Carnê', 'Pagamento parcelado via carnê (loja)', '2025-11-13 14:10:00.001', NULL),
(916, 'Vale (Adiantamento)', 'Adiantamento de funcionário', '2025-11-13 14:10:00.001', NULL),
(917, 'Cortesia', 'Serviço/Produto fornecido sem custo (Garantia/Bônus)', '2025-11-13 14:10:00.001', NULL),
(918, 'Faturamento 30 dias', 'Faturamento PJ (30 dias)', '2025-11-13 14:10:00.001', NULL),
(919, 'Faturamento 45 dias', 'Faturamento PJ (45 dias)', '2025-11-13 14:10:00.001', NULL),
(920, 'Faturamento 60 dias', 'Faturamento PJ (60 dias)', '2025-11-13 14:10:00.001', NULL),
(921, 'Consignação', 'Pagamento após venda (consignado)', '2025-11-13 14:10:00.001', NULL),
(922, 'Criptomoeda (BTC)', 'Pagamento em Bitcoin (experimental)', '2025-11-13 14:10:00.001', NULL),
(923, 'Criptomoeda (ETH)', 'Pagamento em Ethereum (experimental)', '2025-11-13 14:10:00.001', NULL),
(924, 'PayPal', 'Pagamento via plataforma PayPal', '2025-11-13 14:10:00.001', NULL),
(925, 'Stripe', 'Pagamento via plataforma Stripe', '2025-11-13 14:10:00.001', NULL),
(926, 'PagSeguro', 'Pagamento via PagSeguro', '2025-11-13 14:10:00.001', NULL),
(927, 'Mercado Pago', 'Pagamento via Mercado Pago', '2025-11-13 14:10:00.001', NULL),
(928, 'Boleto (Parcelado 2x)', 'Boleto com 2 parcelas', '2025-11-13 14:10:00.001', NULL),
(929, 'Boleto (Parcelado 3x)', 'Boleto com 3 parcelas', '2025-11-13 14:10:00.001', NULL),
(930, 'Cartão Frota (Ticket Log)', 'Pagamento com cartão de frota', '2025-11-13 14:10:00.001', NULL),
(931, 'Cartão Frota (VB)', 'Pagamento com cartão de frota VB', '2025-11-13 14:10:00.001', NULL),
(932, 'Cartão Frota (Alelo)', 'Pagamento com cartão de frota Alelo', '2025-11-13 14:10:00.001', NULL),
(933, 'Financiamento (Banco)', 'Financiamento via parceiro (Banco X)', '2025-11-13 14:10:00.001', NULL),
(934, 'Seguradora (Pagamento)', 'Pagamento direto da seguradora', '2025-11-13 14:10:00.001', NULL),
(935, 'Crédito (Funcionário)', 'Crédito interno de funcionário', '2025-11-13 14:10:00.001', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_pagamentos`
--

CREATE TABLE `fin_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `valor` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_pagamentos`
--

INSERT INTO `fin_pagamentos` (`Id`, `ordem_servico_id`, `cliente_id`, `fornecedor_id`, `valor`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9101, 10001, 201, NULL, 250.00, 'PAGO', '2025-10-31 02:00:02.000', 903, 'Recebido no balcão', '2025-11-08 02:00:02.761', NULL),
(9102, NULL, NULL, 302, 1396.00, 'PAGO', '2025-11-05 02:00:02.000', 902, 'Compra amortecedores Monroe', '2025-11-08 02:00:02.761', NULL),
(9103, 10003, 203, NULL, 320.00, 'PAGO', '2025-10-22 02:00:02.000', 901, 'Serviço concluído', '2025-11-08 02:00:02.761', NULL),
(9104, 10004, 204, NULL, 160.00, 'PAGO', '2025-10-25 02:00:02.000', 902, 'Freio e fluido', '2025-11-08 02:00:02.761', NULL),
(9105, NULL, NULL, 304, 820.50, 'PENDENTE', NULL, 905, 'Compra sensores aguardando NF', '2025-11-08 02:00:02.761', NULL),
(9106, 10006, 206, NULL, 280.00, 'PAGO', '2025-11-09 00:00:00.000', 904, 'Recebimento OS #10006', '2025-11-13 14:13:00.004', NULL),
(9107, 10010, 210, NULL, 299.60, 'PAGO', '2025-11-10 00:00:00.000', 903, 'Recebimento OS #10010', '2025-11-13 14:13:00.004', NULL),
(9108, 10011, 211, NULL, 460.00, 'PAGO', '2025-11-11 00:00:00.000', 901, 'Recebimento OS #10011', '2025-11-13 14:13:00.004', NULL),
(9109, 10012, 212, NULL, 95.00, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Recebimento OS #10012', '2025-11-13 14:13:00.004', NULL),
(9110, 10014, 214, NULL, 89.90, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Recebimento OS #10014', '2025-11-13 14:13:00.004', NULL),
(9111, 10017, 217, NULL, 279.90, 'PAGO', '2025-11-12 00:00:00.000', 902, 'Recebimento OS #10017', '2025-11-13 14:13:00.004', NULL),
(9112, 10018, 218, NULL, 82.50, 'PAGO', '2025-11-12 00:00:00.000', 904, 'Recebimento OS #10018', '2025-11-13 14:13:00.004', NULL),
(9113, 10020, 220, NULL, 575.00, 'PAGO', '2025-11-12 00:00:00.000', 902, 'Recebimento OS #10020', '2025-11-13 14:13:00.004', NULL),
(9114, 10021, 221, NULL, 55.00, 'PAGO', '2025-11-12 00:00:00.000', 901, 'Recebimento OS #10021', '2025-11-13 14:13:00.004', NULL),
(9115, 10023, 223, NULL, 379.90, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Recebimento OS #10023', '2025-11-13 14:13:00.004', NULL),
(9116, 10026, 226, NULL, 569.00, 'PAGO', '2025-11-13 00:00:00.000', 902, 'Recebimento OS #10026', '2025-11-13 14:13:00.004', NULL),
(9117, 10027, 227, NULL, 130.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10027', '2025-11-13 14:13:00.004', NULL),
(9118, 10029, 229, NULL, 65.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10029', '2025-11-13 14:13:00.004', NULL),
(9119, 10030, 230, NULL, 144.00, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Recebimento OS #10030', '2025-11-13 14:13:00.004', NULL),
(9120, 10034, 234, NULL, 390.00, 'PAGO', '2025-11-13 00:00:00.000', 904, 'Recebimento OS #10034', '2025-11-13 14:13:00.004', NULL),
(9121, NULL, NULL, 306, 1200.00, 'PENDENTE', NULL, 905, 'Pgto LubriBrasil (NF 9206)', '2025-11-13 14:13:00.004', NULL),
(9122, NULL, NULL, 307, 4500.00, 'PENDENTE', NULL, 904, 'Pgto PneuForte (NF 9207)', '2025-11-13 14:13:00.004', NULL),
(9123, NULL, NULL, 308, 950.00, 'PENDENTE', NULL, 902, 'Pgto SomCenter (NF 9208)', '2025-11-13 14:13:00.004', NULL),
(9124, NULL, NULL, 309, 300.00, 'PAGO', '2025-11-10 00:00:00.000', 901, 'Pgto Quimicar (NF 9209)', '2025-11-13 14:13:00.004', NULL),
(9125, NULL, NULL, 310, 3200.00, 'PENDENTE', NULL, 905, 'Pgto Ferramaster (NF 9210)', '2025-11-13 14:13:00.004', NULL),
(9126, NULL, NULL, 311, 780.00, 'PAGO', '2025-11-12 00:00:00.000', 904, 'Pgto Ilumicenter (NF 9211)', '2025-11-13 14:13:00.004', NULL),
(9127, NULL, NULL, 312, 2100.00, 'PENDENTE', NULL, 905, 'Pgto Baterias HZ (NF 9212)', '2025-11-13 14:13:00.004', NULL),
(9128, NULL, NULL, 313, 1100.00, 'PAGO', '2025-11-13 00:00:00.000', 903, 'Pgto 4x4 Brasil (NF 9213)', '2025-11-13 14:13:00.004', NULL),
(9129, NULL, NULL, 314, 450.00, 'PENDENTE', NULL, 905, 'Pgto Vidrocar (NF 9214)', '2025-11-13 14:13:00.004', NULL),
(9130, NULL, NULL, 315, 320.00, 'PAGO', '2025-11-11 00:00:00.000', 904, 'Pgto Auto Juntas (NF 9215)', '2025-11-13 14:13:00.004', NULL),
(9131, NULL, NULL, 316, 1900.00, 'PENDENTE', NULL, 918, 'Pgto Import Parts (NF 9216)', '2025-11-13 14:13:00.004', NULL),
(9132, NULL, NULL, 317, 3800.00, 'PENDENTE', NULL, 920, 'Pgto Diesel Parts (NF 9217)', '2025-11-13 14:13:00.004', NULL),
(9133, NULL, NULL, 318, 850.00, 'PAGO', '2025-11-13 00:00:00.000', 906, 'Pgto Arrefecer (NF 9218)', '2025-11-13 14:13:00.004', NULL),
(9134, NULL, NULL, 319, 1300.00, 'PENDENTE', NULL, 905, 'Pgto Transmisul (NF 9219)', '2025-11-13 14:13:00.004', NULL),
(9135, NULL, NULL, 320, 600.00, 'PENDENTE', NULL, 902, 'Pgto Esteticar (NF 9220)', '2025-11-13 14:13:00.004', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_anexos`
--

CREATE TABLE `os_anexos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_anexos`
--

INSERT INTO `os_anexos` (`Id`, `ordem_servico_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(50001, 10001, 'foto-filtro-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10001/filtro.jpg', 'Filtro sujo substituído', '2025-10-29 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50002, 10002, 'video-barulho.mp4', 'video/mp4', 'https://exemplo.com/os10002/barulho.mp4', 'Ruído capturado em teste', '2025-11-02 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50003, 10003, 'relatorio-ignicao.pdf', 'application/pdf', 'https://exemplo.com/os10003/diagnostico.pdf', 'Relatório técnico', '2025-10-20 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50004, 10004, 'foto-freio-novo.jpg', 'image/jpeg', 'https://exemplo.com/os10004/freio.jpg', 'Pastilhas novas instaladas', '2025-10-25 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50005, 10005, 'leitura-obd.jpg', 'image/jpeg', 'https://exemplo.com/os10005/obd.jpg', 'Código P0130 armazenado', '2025-11-07 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50006, 10006, 'vela-antiga.jpg', 'image/jpeg', 'https://exemplo.com/os10006/vela-antiga.jpg', 'Velas antigas carbonizadas', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50007, 10007, 'foto-vazamento-uv.jpg', 'image/jpeg', 'https://exemplo.com/os10007/vazamento.jpg', 'Ponto de vazamento no condensador (UV)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50008, 10008, 'audio-freio.mp3', 'audio/mpeg', 'https://exemplo.com/os10008/audio.mp3', 'Áudio do ruído (cliente)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50009, 10009, 'foto-embreagem.jpg', 'image/jpeg', 'https://exemplo.com/os10009/embreagem.jpg', 'Disco de embreagem antigo', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50010, 10010, 'nota-oleo.pdf', 'application/pdf', 'https://exemplo.com/os10010/nota.pdf', 'Nota fiscal óleo Monroe', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50011, 10011, 'teste-bateria.png', 'image/png', 'https://exemplo.com/os10011/teste.png', 'Resultado teste CCA', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50012, 10012, 'foto-lampada.jpg', 'image/jpeg', 'https://exemplo.com/os10012/lampada.jpg', 'Caixa lâmpada Osram', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50013, 10013, 'foto-pivo-folga.jpg', 'image/jpeg', 'https://exemplo.com/os10013/pivo.jpg', 'Folga excessiva pivô LE', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50014, 10014, 'filtro-cabine-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10014/filtro.jpg', 'Filtro antigo contaminado', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50015, 10015, 'video-tensor.mp4', 'video/mp4', 'https://exemplo.com/os10015/video.mp4', 'Ruído do tensor', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50016, 10016, 'foto-mangueira.jpg', 'image/jpeg', 'https://exemplo.com/os10016/mangueira.jpg', 'Vazamento mangueira superior', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50017, 10017, 'foto-coifa-rasgada.jpg', 'image/jpeg', 'https://exemplo.com/os10017/coifa.jpg', 'Coifa homocinética LD', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50018, 10018, 'nota-fluido-trw.pdf', 'application/pdf', 'https://exemplo.com/os10018/nota.pdf', 'Nota fiscal fluido', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50019, 10019, 'scanner-p0301.png', 'image/png', 'https://exemplo.com/os10019/scanner.png', 'Falha cilindro 1', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50020, 10020, 'foto-oleo-atf-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10020/oleo.jpg', 'Comparativo óleo ATF', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50021, 10021, 'foto-palheta.jpg', 'image/jpeg', 'https://exemplo.com/os10021/palheta.jpg', 'Palheta Bosch instalada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50022, 10022, 'scanner-sonda-up.png', 'image/png', 'https://exemplo.com/os10022/scanner.png', 'Gráfico sonda lambda (travada)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50023, 10023, 'foto-pastilha-hilux.jpg', 'image/jpeg', 'https://exemplo.com/os10023/pastilha.jpg', 'Pastilha cerâmica TRW', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50024, 10024, 'amortecedor-estourado.jpg', 'image/jpeg', 'https://exemplo.com/os10024/amortecedor.jpg', 'Vazamento óleo amortecedor TR LD', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50025, 10025, 'video-correia-cruze.mp4', 'video/mp4', 'https://exemplo.com/os10025/video.mp4', 'Ruído tensor alternador', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50026, 10026, 'foto-bateria-heliar.jpg', 'image/jpeg', 'https://exemplo.com/os10026/bateria.jpg', 'Bateria nova instalada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50027, 10027, 'foto-lampada-h7.jpg', 'image/jpeg', 'https://exemplo.com/os10027/lampada.jpg', 'Caixa Philips H7', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50028, 10028, 'valvula-travada.jpg', 'image/jpeg', 'https://exemplo.com/os10028/valvula.jpg', 'Válvula termostática antiga', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50029, 10029, 'filtro-comb-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10029/filtro.jpg', 'Filtro combustível antigo', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50030, 10030, 'foto-aditivo.jpg', 'image/jpeg', 'https://exemplo.com/os10030/aditivo.jpg', 'Aditivo Paraflu Rosa', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50031, 10031, 'foto-fuga-corrente.jpg', 'image/jpeg', 'https://exemplo.com/os10031/fuga.jpg', 'Cabo vela cilindro 2 com fuga', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50032, 10032, 'orcamento-cancelado.pdf', 'application/pdf', 'https://exemplo.com/os10032/cancelado.pdf', 'Peça descontinuada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50033, 10033, 'disco-traseiro-jetta.jpg', 'image/jpeg', 'https://exemplo.com/os10033/disco.jpg', 'Discos novos TRW', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50034, 10034, 'kit-batente-ka.jpg', 'image/jpeg', 'https://exemplo.com/os10034/batente.jpg', 'Kit batente Nakata', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50035, 10035, 'rolamento-skf-abs.jpg', 'image/jpeg', 'https://exemplo.com/os10035/rolamento.jpg', 'Rolamento SKF com anel ABS', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_avaliacoes`
--

CREATE TABLE `os_avaliacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `nota` int NOT NULL,
  `comentario` varchar(500) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_avaliacoes`
--

INSERT INTO `os_avaliacoes` (`Id`, `ordem_servico_id`, `nota`, `comentario`, `usuario`, `created_at`, `updated_at`) VALUES
(60001, 10001, 5, 'Serviço rápido e bem feito. Recomendo!', 'joao.silva', '2025-11-08 01:50:12.074', NULL),
(60002, 10002, 4, 'Diagnóstico correto, aguardando orçamento.', 'maria.oliveira', '2025-11-08 01:50:12.074', NULL),
(60003, 10003, 5, 'Problema resolvido. Oficina confiável.', 'carlos.santos', '2025-11-08 01:50:12.074', NULL),
(60004, 10004, 5, 'Freio perfeito, atendimento excelente.', 'patricia.lima', '2025-11-08 01:50:12.074', NULL),
(60005, 10005, 3, 'Aguardando contato sobre orçamento.', 'eduardo.souza', '2025-11-08 01:50:12.074', NULL),
(60006, 10006, 5, 'Revisão completa, carro ficou ótimo.', 'cliente_206', '2025-11-13 13:05:00.006', NULL),
(60007, 10007, 3, 'Ainda em diagnóstico, mas o mecânico foi atencioso.', 'cliente_207', '2025-11-13 13:05:00.006', NULL),
(60008, 10008, 4, 'Recebi o orçamento rápido, aguardando aprovação.', 'cliente_208', '2025-11-13 13:05:00.006', NULL),
(60009, 10009, 5, 'Serviço pesado, mas ficou excelente.', 'cliente_209', '2025-11-13 13:05:00.006', NULL),
(60010, 10010, 5, 'Troca de óleo rápida.', 'cliente_210', '2025-11-13 13:05:00.006', NULL),
(60011, 10011, 5, 'Resolveram rápido, era a bateria mesmo.', 'cliente_211', '2025-11-13 13:05:00.006', NULL),
(60012, 10012, 5, 'Troca de lâmpada simples, sem espera.', 'cliente_212', '2025-11-13 13:05:00.006', NULL),
(60013, 10013, 4, 'Aguardando alinhamento para finalizar.', 'cliente_213', '2025-11-13 13:05:00.006', NULL),
(60014, 10014, 5, 'Filtro de cabine trocado, ar ficou melhor.', 'cliente_214', '2025-11-13 13:05:00.006', NULL),
(60015, 10015, 4, 'Diagnóstico parece correto (tensor).', 'cliente_215', '2025-11-13 13:05:00.006', NULL),
(60016, 10016, 4, 'Ainda em reparo (aguardando peça).', 'cliente_216', '2025-11-13 13:05:00.006', NULL),
(60017, 10017, 5, 'Barulho na roda sumiu. Ótimo.', 'cliente_217', '2025-11-13 13:05:00.006', NULL),
(60018, 10018, 5, 'Serviço rápido.', 'cliente_218', '2025-11-13 13:05:00.006', NULL),
(60019, 10019, 3, 'Aguardando orçamento da bobina.', 'cliente_219', '2025-11-13 13:05:00.006', NULL),
(60020, 10020, 5, 'Câmbio ficou mais suave após a troca do ATF.', 'cliente_220', '2025-11-13 13:05:00.006', NULL),
(60021, 10021, 5, 'Troca rápida.', 'cliente_221', '2025-11-13 13:05:00.006', NULL),
(60022, 10022, 4, 'Aguardando peça (sonda).', 'cliente_222', '2025-11-13 13:05:00.006', NULL),
(60023, 10023, 5, 'Serviço bem feito na Hilux.', 'cliente_223', '2025-11-13 13:05:00.006', NULL),
(60024, 10024, 4, 'Em andamento.', 'cliente_224', '2025-11-13 13:05:00.006', NULL),
(60025, 10025, 4, 'Aguardando aprovação.', 'cliente_225', '2025-11-13 13:05:00.006', NULL),
(60026, 10026, 5, 'Troca de bateria rápida.', 'cliente_226', '2025-11-13 13:05:00.006', NULL),
(60027, 10027, 5, 'Serviço rápido.', 'cliente_227', '2025-11-13 13:05:00.006', NULL),
(60028, 10028, 4, 'Aguardando finalização do reparo.', 'cliente_228', '2025-11-13 13:05:00.006', NULL),
(60029, 10029, 5, 'OK.', 'cliente_229', '2025-11-13 13:05:00.006', NULL),
(60030, 10030, 5, 'Troca de aditivo OK.', 'cliente_230', '2025-11-13 13:05:00.006', NULL),
(60031, 10031, 4, 'Aguardando aprovação orçamento cabos.', 'cliente_231', '2025-11-13 13:05:00.006', NULL),
(60032, 10032, 2, 'Não conseguiram a peça (descontinuada).', 'cliente_232', '2025-11-13 13:05:00.006', NULL),
(60033, 10033, 4, 'Aguardando finalização.', 'cliente_233', '2025-11-13 13:05:00.006', NULL),
(60034, 10034, 5, 'Serviço concluído. OK.', 'cliente_234', '2025-11-13 13:05:00.006', NULL),
(60035, 10035, 5, 'Barulho do rolamento resolvido.', 'cliente_235', '2025-11-13 13:05:00.006', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_checklists`
--

CREATE TABLE `os_checklists` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `item` varchar(200) NOT NULL,
  `realizado` tinyint(1) NOT NULL DEFAULT '0',
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_checklists`
--

INSERT INTO `os_checklists` (`Id`, `ordem_servico_id`, `item`, `realizado`, `observacao`, `created_at`, `updated_at`) VALUES
(30001, 10001, 'Nível do óleo', 1, 'Troca realizada', '2025-11-08 01:50:11.983', NULL),
(30002, 10002, 'Suspensão dianteira', 1, 'Barulho detectado', '2025-11-08 01:50:11.983', NULL),
(30003, 10003, 'Velas e cabos', 1, 'Cabos substituídos', '2025-11-08 01:50:11.983', NULL),
(30004, 10004, 'Sistema de freio', 1, 'Pastilhas novas', '2025-11-08 01:50:11.983', NULL),
(30005, 10005, 'Scanner OBDII', 0, 'Aguardando aprovação do cliente', '2025-11-08 01:50:11.983', NULL),
(30006, 10006, 'Troca de velas', 1, 'NGK Iridium OK', '2025-11-13 13:02:00.003', NULL),
(30007, 10007, 'Verificar pressão do gás A/C', 1, 'Baixa pressão. Suspeita de vazamento.', '2025-11-13 13:02:00.003', NULL),
(30008, 10008, 'Verificar pastilhas traseiras', 1, 'Desgastadas, 2mm.', '2025-11-13 13:02:00.003', NULL),
(30009, 10009, 'Nível óleo câmbio', 1, 'Verificado. OK.', '2025-11-13 13:02:00.003', NULL),
(30010, 10010, 'Filtro de óleo', 1, 'Trocado', '2025-11-13 13:02:00.003', NULL),
(30011, 10011, 'Teste de bateria', 1, 'CCA Baixo (150A). Necessária troca.', '2025-11-13 13:02:00.003', NULL),
(30012, 10012, 'Teste de luzes', 1, 'Lâmpada H4 LD queimada.', '2025-11-13 13:02:00.003', NULL),
(30013, 10013, 'Verificar pivôs', 1, 'Ambos com folga.', '2025-11-13 13:02:00.003', NULL),
(30014, 10014, 'Filtro de cabine', 1, 'Substituído (Carvão Ativado).', '2025-11-13 13:02:00.003', NULL),
(30015, 10015, 'Verificar tensor correia', 1, 'Tensor ruidoso.', '2025-11-13 13:02:00.003', NULL),
(30016, 10016, 'Verificar mangueiras radiador', 1, 'Mangueira superior com vazamento.', '2025-11-13 13:02:00.003', NULL),
(30017, 10017, 'Verificar homocinética', 1, 'Coifa rasgada, junta danificada (LD).', '2025-11-13 13:02:00.003', NULL),
(30018, 10018, 'Sangria do sistema', 1, 'Realizada nas 4 rodas.', '2025-11-13 13:02:00.003', NULL),
(30019, 10019, 'Diagnóstico bobina', 0, 'Aguardando aprovação.', '2025-11-13 13:02:00.003', NULL),
(30020, 10020, 'Nível fluido câmbio', 1, 'Nível OK após troca.', '2025-11-13 13:02:00.003', NULL),
(30021, 10021, 'Verificar limpadores', 1, 'Palheta 20\" (LE) trocada.', '2025-11-13 13:02:00.003', NULL),
(30022, 10022, 'Leitura Sonda Lambda', 1, 'Sonda pré-catalisador travada.', '2025-11-13 13:02:00.003', NULL),
(30023, 10023, 'Verificar pastilhas', 1, 'Pastilhas de cerâmica instaladas.', '2025-11-13 13:02:00.003', NULL),
(30024, 10024, 'Verificar amortecedores', 1, 'Traseiros estourados.', '2025-11-13 13:02:00.003', NULL),
(30025, 10025, 'Inspeção correia alternador', 1, 'Correia ressecada, tensor com folga.', '2025-11-13 13:02:00.003', NULL),
(30026, 10026, 'Verificar alternador', 1, 'Carga OK (14.1V).', '2025-11-13 13:02:00.003', NULL),
(30027, 10027, 'Verificar farol', 1, 'Lâmpada H7 LE trocada.', '2025-11-13 13:02:00.003', NULL),
(30028, 10028, 'Verificar válvula termostática', 1, 'Válvula travada aberta.', '2025-11-13 13:02:00.003', NULL),
(30029, 10029, 'Filtro combustível', 1, 'Trocado.', '2025-11-13 13:02:00.003', NULL),
(30030, 10030, 'Limpeza sistema arrefecimento', 1, 'Limpeza realizada.', '2025-11-13 13:02:00.003', NULL),
(30031, 10031, 'Verificar cabos de vela', 1, 'Cabos com fuga de corrente.', '2025-11-13 13:02:00.003', NULL),
(30032, 10032, 'Orçamento peça', 0, 'Peça descontinuada (ID 1032).', '2025-11-13 13:02:00.003', NULL),
(30033, 10033, 'Discos traseiros', 1, 'Substituição em andamento.', '2025-11-13 13:02:00.003', NULL),
(30034, 10034, 'Verificar batentes', 1, 'Batentes dianteiros (ambos) trocados.', '2025-11-13 13:02:00.003', NULL),
(30035, 10035, 'Rolamento dianteiro', 1, 'Rolamento LD (com ABS) trocado.', '2025-11-13 13:02:00.003', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_itens`
--

CREATE TABLE `os_itens` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `peca_id` bigint DEFAULT NULL,
  `descricao` varchar(200) NOT NULL,
  `quantidade` int NOT NULL,
  `valor_unitario` decimal(12,2) NOT NULL,
  `total` decimal(12,2) GENERATED ALWAYS AS ((`quantidade` * `valor_unitario`)) STORED,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_itens`
--

INSERT INTO `os_itens` (`Id`, `ordem_servico_id`, `peca_id`, `descricao`, `quantidade`, `valor_unitario`, `created_at`, `updated_at`) VALUES
(20001, 10001, 1001, 'Filtro de óleo Bosch', 1, 29.90, '2025-11-08 01:50:11.960', NULL),
(20002, 10001, 1002, 'Filtro de ar NGK', 1, 39.50, '2025-11-08 01:50:11.960', NULL),
(20003, 10002, 1004, 'Amortecedor Monroe dianteiro', 2, 349.00, '2025-11-08 01:50:11.960', NULL),
(20004, 10004, 1003, 'Pastilhas de freio TRW', 1, 119.90, '2025-11-08 01:50:11.960', NULL),
(20005, 10005, 1005, 'Correia dentada SKF', 1, 89.00, '2025-11-08 01:50:11.960', NULL),
(20006, 10006, 1006, 'Vela de ignição Onix 1.0 (NGK)', 4, 45.00, '2025-11-13 13:01:00.002', NULL),
(20007, 10007, NULL, 'Carga de Gás R134a', 1, 150.00, '2025-11-13 13:01:00.002', NULL),
(20008, 10008, 1033, 'Disco de freio traseiro Jetta TSI (TRW)', 2, 199.00, '2025-11-13 13:01:00.002', NULL),
(20009, 10009, 1009, 'Kit de embreagem Uno Fire 1.0 (SKF)', 1, 450.00, '2025-11-13 13:01:00.002', NULL),
(20010, 10010, 1010, 'Óleo de motor 5W30 Sintético (Monroe)', 4, 59.90, '2025-11-13 13:01:00.002', NULL),
(20011, 10011, 1011, 'Bateria 60Ah M60AD (Moura)', 1, 410.00, '2025-11-13 13:01:00.002', NULL),
(20012, 10012, 1012, 'Lâmpada H4 Night Breaker (Osram)', 1, 75.00, '2025-11-13 13:01:00.002', NULL),
(20013, 10013, 1013, 'Pivô de suspensão Corsa (Nakata)', 2, 65.00, '2025-11-13 13:01:00.002', NULL),
(20014, 10014, 1014, 'Filtro de cabine Corolla (Bosch)', 1, 49.90, '2025-11-13 13:01:00.002', NULL),
(20015, 10015, 1015, 'Tensor correia dentada Gol EA111 (SKF)', 1, 130.00, '2025-11-13 13:01:00.002', NULL),
(20016, 10016, 1016, 'Radiador de água Celta/Prisma (Valeo)', 1, 399.00, '2025-11-13 13:01:00.002', NULL),
(20017, 10017, 1017, 'Junta Homocinética Ford Ka 1.0 (Nakata)', 1, 179.90, '2025-11-13 13:01:00.002', NULL),
(20018, 10018, 1018, 'Fluido de freio DOT4 500ml (TRW)', 1, 22.50, '2025-11-13 13:01:00.002', NULL),
(20019, 10019, 1019, 'Bobina de ignição Fox 1.6 (NGK)', 1, 199.00, '2025-11-13 13:01:00.002', NULL),
(20020, 10020, 1020, 'Óleo câmbio automático ATF 1L (Monroe)', 5, 75.00, '2025-11-13 13:01:00.002', NULL),
(20021, 10021, 1021, 'Palheta limpador Silicone 20\" (Bosch)', 1, 35.00, '2025-11-13 13:01:00.002', NULL),
(20022, 10022, 1022, 'Sonda Lambda VW UP TSI (NGK)', 1, 280.00, '2025-11-13 13:01:00.002', NULL),
(20023, 10023, 1023, 'Pastilha de freio Hilux 2.8 (TRW)', 1, 259.90, '2025-11-13 13:01:00.002', NULL),
(20024, 10024, 1024, 'Amortecedor traseiro Onix (Monroe)', 2, 299.00, '2025-11-13 13:01:00.002', NULL),
(20025, 10025, 1025, 'Kit correia alternador Cruze 1.8 (SKF)', 1, 210.00, '2025-11-13 13:01:00.002', NULL),
(20026, 10026, 1026, 'Bateria 70Ah HG70ND (Heliar)', 1, 519.00, '2025-11-13 13:01:00.002', NULL),
(20027, 10027, 1027, 'Lâmpada H7 X-treme Vision (Philips)', 1, 110.00, '2025-11-13 13:01:00.002', NULL),
(20028, 10028, 1028, 'Válvula termostática Palio Fire (MTE)', 1, 85.00, '2025-11-13 13:01:00.002', NULL),
(20029, 10029, 1029, 'Filtro de combustível Gol G5 (Bosch)', 1, 25.00, '2025-11-13 13:01:00.002', NULL),
(20030, 10030, 1030, 'Aditivo radiador Paraflu Bio 1L', 2, 32.00, '2025-11-13 13:01:00.002', NULL),
(20031, 10031, 1031, 'Cabo de vela Celta 1.0 (NGK)', 1, 115.00, '2025-11-13 13:01:00.002', NULL),
(20032, 10032, 1032, 'Bico injetor Peugeot 308 1.6 THP (Bosch)', 1, 450.00, '2025-11-13 13:01:00.002', NULL),
(20033, 10033, 1033, 'Disco de freio traseiro Jetta TSI (TRW)', 2, 199.00, '2025-11-13 13:01:00.002', NULL),
(20034, 10034, 1034, 'Kit batente amortecedor Ford Ka (Nakata)', 2, 120.00, '2025-11-13 13:01:00.002', NULL),
(20035, 10035, 1035, 'Rolamento roda dianteira Gol G5 (SKF)', 1, 145.00, '2025-11-13 13:01:00.002', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_observacoes`
--

CREATE TABLE `os_observacoes` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `texto` text NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_observacoes`
--

INSERT INTO `os_observacoes` (`Id`, `ordem_servico_id`, `usuario`, `texto`, `created_at`, `updated_at`) VALUES
(40001, 10001, 'mecanico_joao', 'Cliente solicitou óleo sintético 5W30.', '2025-11-08 01:50:12.002', NULL),
(40002, 10002, 'mecanico_paulo', 'Suspensão com folga. Recomendado trocar buchas.', '2025-11-08 01:50:12.002', NULL),
(40003, 10003, 'mecanico_maria', 'Troca de velas NGK e limpeza de bicos realizada.', '2025-11-08 01:50:12.002', NULL),
(40004, 10004, 'mecanico_ana', 'Fluido DOT 4 sangrado. Freio firme.', '2025-11-08 01:50:12.002', NULL),
(40005, 10005, 'mecanico_lucas', 'Leitura scanner: falha intermitente no sensor lambda.', '2025-11-08 01:50:12.002', NULL),
(40006, 10006, 'mecanico_andre', 'Cliente aprovou troca de velas e filtro de ar (Peca 1002).', '2025-11-13 13:03:00.004', NULL),
(40007, 10007, 'mecanico_bruna', 'Injetado contraste UV no sistema de A/C. Aguardar 24h para verificar vazamento.', '2025-11-13 13:03:00.004', NULL),
(40008, 10008, 'mecanico_caio', 'Discos e pastilhas traseiras necessitam substituição. Enviado orçamento.', '2025-11-13 13:03:00.004', NULL),
(40009, 10009, 'mecanico_daniela', 'Câmbio no chão. Embreagem antiga estava no limite.', '2025-11-13 13:03:00.004', NULL),
(40010, 10010, 'mecanico_eduardo', 'Troca de óleo e filtro de óleo. Nível OK.', '2025-11-13 13:03:00.004', NULL),
(40011, 10011, 'mecanico_fabiana', 'Bateria M60AD instalada. Alternador carregando 14.2V.', '2025-11-13 13:03:00.004', NULL),
(40012, 10012, 'mecanico_gustavo', 'Lâmpada Osram H4 instalada.', '2025-11-13 13:03:00.004', NULL),
(40013, 10013, 'mecanico_helena', 'Pivôs Nakata (par) instalados. Necessário alinhar.', '2025-11-13 13:03:00.004', NULL),
(40014, 10014, 'mecanico_igor', 'Filtro de cabine antigo estava muito sujo.', '2025-11-13 13:03:00.004', NULL),
(40015, 10015, 'mecanico_julia', 'Tensor ruidoso. Cliente ciente do risco. Aguardando aprovação da troca.', '2025-11-13 13:03:00.004', NULL),
(40016, 10016, 'mecanico_kleber', 'Vazamento na mangueira superior do radiador. Radiador OK.', '2025-11-13 13:03:00.004', NULL),
(40017, 10017, 'mecanico_larissa', 'Junta homocinética LD substituída (Kit Nakata).', '2025-11-13 13:03:00.004', NULL),
(40018, 10018, 'mecanico_marcos', 'Fluido TRW DOT4 aplicado. Sistema sangrado.', '2025-11-13 13:03:00.004', NULL),
(40019, 10019, 'mecanico_natalia', 'Passado scanner. Falha P0301 (Bobina). Orçamento bobina NGK enviado.', '2025-11-13 13:03:00.004', NULL),
(40020, 10020, 'mecanico_otavio', 'Troca de 5L fluido ATF Dexron VI (Monroe). Filtro interno OK.', '2025-11-13 13:03:00.004', NULL),
(40021, 10021, 'mecanico_paula', 'Palheta Bosch Aerofit 20\" LE instalada.', '2025-11-13 13:03:00.004', NULL),
(40022, 10022, 'mecanico_quintino', 'Falha P0135 (Sonda Lambda). Aguardando peça (NGK).', '2025-11-13 13:03:00.004', NULL),
(40023, 10023, 'mecanico_rafaela', 'Pastilhas cerâmica TRW instaladas. Cliente avisado sobre período de assentamento.', '2025-11-13 13:03:00.004', NULL),
(40024, 10024, 'mecanico_sergio', 'Amortecedores Monroe OESpectrum (par) traseiros instalados.', '2025-11-13 13:03:00.004', NULL),
(40025, 10025, 'mecanico_tais', 'Kit correia alternador SKF orçado. Aguardando aprovação.', '2025-11-13 13:03:00.004', NULL),
(40026, 10026, 'mecanico_ulisses', 'Bateria Heliar 70A instalada.', '2025-11-13 13:03:00.004', NULL),
(40027, 10027, 'mecanico_valeria', 'Lâmpada H7 Philips LE (farol baixo) trocada.', '2025-11-13 13:03:00.004', NULL),
(40028, 10028, 'mecanico_wagner', 'Diagnóstico: Válvula termostática MTE travada. Substituição em andamento.', '2025-11-13 13:03:00.004', NULL),
(40029, 10029, 'mecanico_xenia', 'Filtro de combustível Bosch trocado.', '2025-11-13 13:03:00.004', NULL),
(40030, 10030, 'mecanico_yara', 'Sistema de arrefecimento limpo. Adicionado 2L Paraflu Bio.', '2025-11-13 13:03:00.004', NULL),
(40031, 10031, 'mecanico_zaqueu', 'Cabos de vela NGK e velas (não inclusas) orçados.', '2025-11-13 13:03:00.004', NULL),
(40032, 10032, 'mecanico_aline', 'Cliente ciente de que a peça (1032) está descontinuada. OS Cancelada.', '2025-11-13 13:03:00.004', NULL),
(40033, 10033, 'mecanico_bernardo', 'Discos TRW (par) traseiros em substituição.', '2025-11-13 13:03:00.004', NULL),
(40034, 10034, 'mecanico_clara', 'Kit batente Nakata (par) dianteiro instalado.', '2025-11-13 13:03:00.004', NULL),
(40035, 10035, 'mecanico_davi', 'Rolamento SKF LD (com sensor ABS) substituído. Ruído sanado.', '2025-11-13 13:03:00.004', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens`
--

CREATE TABLE `os_ordens` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint NOT NULL,
  `mecanico_id` bigint NOT NULL,
  `descricao_problema` varchar(500) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ABERTA',
  `data_abertura` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `data_conclusao` datetime(3) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_ordens`
--

INSERT INTO `os_ordens` (`Id`, `cliente_id`, `mecanico_id`, `descricao_problema`, `status`, `data_abertura`, `data_conclusao`, `created_at`, `updated_at`) VALUES
(10001, 1, 1, 'Troca de óleo e filtro - revisão preventiva', 'CONCLUIDA', '2025-10-29 01:50:11.000', '2025-10-30 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10002, 2, 2, 'Ruído na suspensão dianteira ao frear', 'EM_ANDAMENTO', '2025-11-01 01:50:11.000', NULL, '2025-11-08 01:50:11.934', NULL),
(10003, 3, 3, 'Motor falhando - diagnóstico de ignição', 'CONCLUIDA', '2025-10-19 01:50:11.000', '2025-10-21 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10004, 4, 4, 'Substituição de pastilhas e fluido de freio', 'CONCLUIDA', '2025-10-24 01:50:11.000', '2025-10-25 01:50:11.000', '2025-11-08 01:50:11.934', NULL),
(10005, 5, 5, 'Luz da injeção acesa - leitura scanner', 'ABERTA', '2025-11-06 01:50:11.000', NULL, '2025-11-08 01:50:11.934', NULL),
(10006, 6, 6, 'Revisão 30.000km Onix. Trocar velas e filtros.', 'CONCLUIDA', '2025-11-09 08:00:00.000', '2025-11-09 17:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10007, 7, 7, 'Ar condicionado não gela - Honda Fit.', 'EM_ANDAMENTO', '2025-11-10 09:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10008, 8, 8, 'Barulho (assobio) freio traseiro Civic.', 'AGUARDANDO_APROVACAO', '2025-11-10 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10009, 9, 9, 'Troca kit de embreagem Uno Fire.', 'EM_ANDAMENTO', '2025-11-10 11:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10010, 10, 10, 'Troca de óleo e filtro - 5W30 Sintético.', 'CONCLUIDA', '2025-11-10 14:00:00.000', '2025-11-10 15:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10011, 11, 34, 'Veículo não dá partida. Suspeita de bateria.', 'CONCLUIDA', '2025-11-11 08:30:00.000', '2025-11-11 09:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10012, 12, 10, 'Luz alta (H4) queimada.', 'CONCLUIDA', '2025-11-11 09:00:00.000', '2025-11-11 09:20:00.000', '2025-11-13 13:00:00.001', NULL),
(10013, 13, 11, 'Instabilidade na suspensão Corsa.', 'EM_ANDAMENTO', '2025-11-11 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10014, 14, 12, 'Troca filtro de cabine Corolla.', 'CONCLUIDA', '2025-11-11 11:00:00.000', '2025-11-11 11:45:00.000', '2025-11-13 13:00:00.001', NULL),
(10015, 15, 13, 'Barulho correia dentada Gol.', 'AGUARDANDO_APROVACAO', '2025-11-11 14:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10016, 16, 14, 'Aquecimento do motor Celta (com A/C).', 'EM_ANDAMENTO', '2025-11-12 08:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10017, 17, 15, 'Barulho na roda dianteira Ford Ka.', 'CONCLUIDA', '2025-11-12 09:00:00.000', '2025-11-12 11:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10018, 18, 16, 'Troca fluido de freio (DOT4).', 'CONCLUIDA', '2025-11-12 10:00:00.000', '2025-11-12 10:40:00.000', '2025-11-13 13:00:00.001', NULL),
(10019, 19, 17, 'Carro engasgando - Fox 1.6.', 'AGUARDANDO_APROVACAO', '2025-11-12 11:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10020, 20, 18, 'Revisão câmbio automático (troca fluido ATF).', 'CONCLUIDA', '2025-11-12 14:00:00.000', '2025-11-12 17:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10021, 21, 19, 'Troca palheta limpador 20\".', 'CONCLUIDA', '2025-11-12 15:00:00.000', '2025-11-12 15:15:00.000', '2025-11-13 13:00:00.001', NULL),
(10022, 22, 20, 'Luz injeção acesa VW UP TSI.', 'EM_ANDAMENTO', '2025-11-12 16:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10023, 23, 21, 'Troca pastilhas freio Hilux.', 'CONCLUIDA', '2025-11-13 08:00:00.000', '2025-11-13 10:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10024, 24, 22, 'Troca amortecedores traseiros Onix.', 'EM_ANDAMENTO', '2025-11-13 09:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10025, 25, 23, 'Barulho correia alternador Cruze.', 'AGUARDANDO_APROVACAO', '2025-11-13 10:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10026, 26, 24, 'Troca bateria 70Ah.', 'CONCLUIDA', '2025-11-13 11:00:00.000', '2025-11-13 11:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10027, 27, 25, 'Troca lâmpada H7 Philips.', 'CONCLUIDA', '2025-11-13 11:30:00.000', '2025-11-13 11:50:00.000', '2025-11-13 13:00:00.001', NULL),
(10028, 28, 26, 'Carro demorando para esquentar (Palio).', 'EM_ANDAMENTO', '2025-11-13 12:00:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10029, 29, 27, 'Troca filtro combustível Gol G5.', 'CONCLUIDA', '2025-11-13 12:30:00.000', '2025-11-13 13:00:00.000', '2025-11-13 13:00:00.001', NULL),
(10030, 30, 28, 'Troca aditivo radiador (Paraflu Rosa).', 'CONCLUIDA', '2025-11-13 13:00:00.000', '2025-11-13 13:45:00.000', '2025-11-13 13:00:00.001', NULL),
(10031, 31, 29, 'Falha motor Celta (cabos e velas).', 'AGUARDANDO_APROVACAO', '2025-11-13 13:15:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10032, 32, 30, 'Orçamento bico injetor Peugeot 308 THP.', 'CANCELADA', '2025-11-13 13:30:00.000', '2025-11-13 13:35:00.000', '2025-11-13 13:00:00.001', NULL),
(10033, 33, 31, 'Troca discos freio Jetta TSI (traseiro).', 'EM_ANDAMENTO', '2025-11-13 13:45:00.000', NULL, '2025-11-13 13:00:00.001', NULL),
(10034, 34, 32, 'Troca kit batente amortecedor Ka.', 'CONCLUIDA', '2025-11-13 14:00:00.000', '2025-11-13 15:30:00.000', '2025-11-13 13:00:00.001', NULL),
(10035, 35, 33, 'Barulho rolamento roda dianteira Gol (ABS).', 'CONCLUIDA', '2025-11-13 14:15:00.000', '2025-11-13 16:00:00.000', '2025-11-13 13:00:00.001', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_ordens_historico`
--

CREATE TABLE `os_ordens_historico` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `data_alteracao` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `usuario` varchar(100) DEFAULT NULL,
  `campo` varchar(100) DEFAULT NULL,
  `valor_antigo` text,
  `valor_novo` text,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_ordens_historico`
--

INSERT INTO `os_ordens_historico` (`Id`, `ordem_servico_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(80001, 10001, '2025-10-29 01:50:12.000', 'clever', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80002, 10002, '2025-11-02 01:50:12.000', 'mecanico_paulo', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-08 01:50:12.128', NULL),
(80003, 10003, '2025-10-20 01:50:12.000', 'mecanico_maria', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80004, 10004, '2025-10-24 01:50:12.000', 'mecanico_ana', 'status', 'ABERTA', 'CONCLUIDA', '2025-11-08 01:50:12.128', NULL),
(80005, 10005, '2025-11-07 01:50:12.000', 'mecanico_lucas', 'status', 'ABERTA', 'AGUARDANDO_APROVACAO', '2025-11-08 01:50:12.128', NULL),
(80006, 10006, '2025-11-09 17:00:00.000', 'mecanico_andre', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80007, 10007, '2025-11-10 09:05:00.000', 'mecanico_bruna', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80008, 10008, '2025-11-10 10:30:00.000', 'mecanico_caio', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80009, 10009, '2025-11-10 11:05:00.000', 'mecanico_daniela', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80010, 10010, '2025-11-10 15:00:00.000', 'mecanico_eduardo', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80011, 10011, '2025-11-11 09:30:00.000', 'mecanico_fabiana', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80012, 10012, '2025-11-11 09:20:00.000', 'mecanico_gustavo', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80013, 10013, '2025-11-11 10:05:00.000', 'mecanico_helena', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80014, 10014, '2025-11-11 11:45:00.000', 'mecanico_igor', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80015, 10015, '2025-11-11 14:30:00.000', 'mecanico_julia', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80016, 10016, '2025-11-12 08:05:00.000', 'mecanico_kleber', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80017, 10017, '2025-11-12 11:00:00.000', 'mecanico_larissa', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80018, 10018, '2025-11-12 10:40:00.000', 'mecanico_marcos', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80019, 10019, '2025-11-12 11:30:00.000', 'mecanico_natalia', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80020, 10020, '2025-11-12 17:00:00.000', 'mecanico_otavio', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80021, 10021, '2025-11-12 15:15:00.000', 'mecanico_paula', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80022, 10022, '2025-11-12 16:05:00.000', 'mecanico_quintino', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80023, 10023, '2025-11-13 10:00:00.000', 'mecanico_rafaela', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80024, 10024, '2025-11-13 09:05:00.000', 'mecanico_sergio', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80025, 10025, '2025-11-13 10:30:00.000', 'mecanico_tais', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80026, 10026, '2025-11-13 11:30:00.000', 'mecanico_ulisses', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80027, 10027, '2025-11-13 11:50:00.000', 'mecanico_valeria', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80028, 10028, '2025-11-13 12:05:00.000', 'mecanico_wagner', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80029, 10029, '2025-11-13 13:00:00.000', 'mecanico_xenia', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80030, 10030, '2025-11-13 13:45:00.000', 'mecanico_yara', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80031, 10031, '2025-11-13 13:20:00.000', 'mecanico_zaqueu', 'status', 'EM_ANDAMENTO', 'AGUARDANDO_APROVACAO', '2025-11-13 13:07:00.008', NULL),
(80032, 10032, '2025-11-13 13:35:00.000', 'mecanico_aline', 'status', 'AGUARDANDO_APROVACAO', 'CANCELADA', '2025-11-13 13:07:00.008', NULL),
(80033, 10033, '2025-11-13 13:50:00.000', 'mecanico_bernardo', 'status', 'ABERTA', 'EM_ANDAMENTO', '2025-11-13 13:07:00.008', NULL),
(80034, 10034, '2025-11-13 15:30:00.000', 'mecanico_clara', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL),
(80035, 10035, '2025-11-13 16:00:00.000', 'mecanico_davi', 'status', 'EM_ANDAMENTO', 'CONCLUIDA', '2025-11-13 13:07:00.008', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_pagamentos`
--

CREATE TABLE `os_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `data_pagamento` datetime(3) DEFAULT NULL,
  `metodo` varchar(50) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_pagamentos`
--

INSERT INTO `os_pagamentos` (`Id`, `ordem_servico_id`, `valor`, `status`, `data_pagamento`, `metodo`, `observacao`, `created_at`, `updated_at`) VALUES
(70001, 10001, 250.00, 'PAGO', '2025-10-30 01:50:12.000', 'Cartão Crédito', 'Troca de óleo completa', '2025-11-08 01:50:12.102', NULL),
(70002, 10002, 698.00, 'PENDENTE', NULL, 'PIX', 'Peças em aprovação', '2025-11-08 01:50:12.102', NULL),
(70003, 10003, 320.00, 'PAGO', '2025-10-21 01:50:12.000', 'Dinheiro', 'Serviço completo', '2025-11-08 01:50:12.102', NULL),
(70004, 10004, 160.00, 'PAGO', '2025-10-25 01:50:12.000', 'Cartão Débito', 'Pastilhas e fluido', '2025-11-08 01:50:12.102', NULL),
(70005, 10005, 89.00, 'PENDENTE', NULL, 'PIX', 'Aguardando diagnóstico final', '2025-11-08 01:50:12.102', NULL),
(70006, 10006, 280.00, 'PAGO', '2025-11-09 17:01:00.000', 'PIX', 'Velas (180) + Mão de Obra (100)', '2025-11-13 13:06:00.007', NULL),
(70007, 10007, 200.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Orçamento pendente (Gás + Vazamento)', '2025-11-13 13:06:00.007', NULL),
(70008, 10008, 398.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Aguardando aprovação (Discos 2x 199)', '2025-11-13 13:06:00.007', NULL),
(70009, 10009, 650.00, 'PENDENTE', NULL, 'PIX', 'Peça (450) + Mão de Obra (200)', '2025-11-13 13:06:00.007', NULL),
(70010, 10010, 299.60, 'PAGO', '2025-11-10 15:01:00.000', 'Cartão Débito', 'Óleo (4x 59.90) + Mão de Obra (60)', '2025-11-13 13:06:00.007', NULL),
(70011, 10011, 460.00, 'PAGO', '2025-11-11 09:31:00.000', 'Dinheiro', 'Bateria (410) + Mão de Obra (50)', '2025-11-13 13:06:00.007', NULL),
(70012, 10012, 95.00, 'PAGO', '2025-11-11 09:21:00.000', 'PIX', 'Lâmpada (75) + Mão de Obra (20)', '2025-11-13 13:06:00.007', NULL),
(70013, 10013, 230.00, 'PENDENTE', NULL, 'Cartão Débito', 'Pivôs (2x 65) + Mão de Obra (100)', '2025-11-13 13:06:00.007', NULL),
(70014, 10014, 89.90, 'PAGO', '2025-11-11 11:46:00.000', 'PIX', 'Filtro (49.90) + Mão de Obra (40)', '2025-11-13 13:06:00.007', NULL),
(70015, 10015, 230.00, 'PENDENTE', NULL, 'PIX', 'Aguardando aprovação (Tensor 130 + MO 100)', '2025-11-13 13:06:00.007', NULL),
(70016, 10016, 549.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Radiador (399) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70017, 10017, 279.90, 'PAGO', '2025-11-12 11:01:00.000', 'Cartão Crédito', 'Homocinética (179.90) + MO (100)', '2025-11-13 13:06:00.007', NULL),
(70018, 10018, 82.50, 'PAGO', '2025-11-12 10:41:00.000', 'PIX', 'Fluido (22.50) + MO (60)', '2025-11-13 13:06:00.007', NULL),
(70019, 10019, 299.00, 'PENDENTE', NULL, 'Dinheiro', 'Aguardando aprovação (Bobina 199 + MO 100)', '2025-11-13 13:06:00.007', NULL),
(70020, 10020, 575.00, 'PAGO', '2025-11-12 17:01:00.000', 'Cartão Crédito', 'Óleo ATF (5x 75) + MO (200)', '2025-11-13 13:06:00.007', NULL),
(70021, 10021, 55.00, 'PAGO', '2025-11-12 15:16:00.000', 'Dinheiro', 'Palheta (35) + MO (20)', '2025-11-13 13:06:00.007', NULL),
(70022, 10022, 380.00, 'PENDENTE', NULL, 'PIX', 'Sonda (280) + MO (100)', '2025-11-13 13:06:00.007', NULL),
(70023, 10023, 379.90, 'PAGO', '2025-11-13 10:01:00.000', 'Cartão Débito', 'Pastilha (259.90) + MO (120)', '2025-11-13 13:06:00.007', NULL),
(70024, 10024, 748.00, 'PENDENTE', NULL, 'PIX', 'Amortecedores (2x 299) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70025, 10025, 330.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Aguardando aprovação (Kit 210 + MO 120)', '2025-11-13 13:06:00.007', NULL),
(70026, 10026, 569.00, 'PAGO', '2025-11-13 11:31:00.000', 'Cartão Crédito', 'Bateria (519) + MO (50)', '2025-11-13 13:06:00.007', NULL),
(70027, 10027, 130.00, 'PAGO', '2025-11-13 11:51:00.000', 'PIX', 'Lâmpada (110) + MO (20)', '2025-11-13 13:06:00.007', NULL),
(70028, 10028, 165.00, 'PENDENTE', NULL, 'Dinheiro', 'Válvula (85) + MO (80)', '2025-11-13 13:06:00.007', NULL),
(70029, 10029, 65.00, 'PAGO', '2025-11-13 13:01:00.000', 'PIX', 'Filtro (25) + MO (40)', '2025-11-13 13:06:00.007', NULL),
(70030, 10030, 144.00, 'PAGO', '2025-11-13 13:46:00.000', 'Cartão Débito', 'Aditivo (2x 32) + MO (80)', '2025-11-13 13:06:00.007', NULL),
(70031, 10031, 195.00, 'PENDENTE', NULL, 'PIX', 'Aguardando aprovação (Cabo 115 + MO 80)', '2025-11-13 13:06:00.007', NULL),
(70032, 10032, 0.00, 'PAGO', '2025-11-13 13:36:00.000', 'N/A', 'Cancelado. Sem custo.', '2025-11-13 13:06:00.007', NULL),
(70033, 10033, 548.00, 'PENDENTE', NULL, 'Cartão Crédito', 'Discos (2x 199) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70034, 10034, 390.00, 'PAGO', '2025-11-13 15:31:00.000', 'PIX', 'Batentes (2x 120) + MO (150)', '2025-11-13 13:06:00.007', NULL),
(70035, 10035, 295.00, 'PAGO', '2025-11-13 16:01:00.000', 'Cartão Crédito', 'Rolamento (145) + MO (150)', '2025-11-13 13:06:00.007', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_origem` (`Origem_Id`);

--
-- Índices de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_anexos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_contatos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_documentos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_enderecos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_financeiro_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_indicacoes_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_lgpd_consentimentos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_origens`
--
ALTER TABLE `cad_clientes_origens`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_pf_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_pj_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_codigo` (`Codigo`),
  ADD UNIQUE KEY `UX_cad_fornecedores_documento` (`Documento`),
  ADD KEY `IX_cad_fornecedores_segmento` (`Segmento_Principal_Id`);

--
-- Índices de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_avaliacoes_fornecedor` (`Fornecedor_Id`,`Data_Avaliacao`);

--
-- Índices de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_bancos` (`Fornecedor_Id`,`Banco`,`Agencia`,`Conta`,`Digito`);

--
-- Índices de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_certificacoes` (`Fornecedor_Id`,`Titulo`);

--
-- Índices de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_contatos` (`Fornecedor_Id`,`Tipo`,`Valor`);

--
-- Índices de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_documentos` (`Fornecedor_Id`,`Tipo`,`Numero`);

--
-- Índices de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_enderecos_fornecedor_tipo` (`Fornecedor_Id`,`Tipo`);

--
-- Índices de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_representantes` (`Fornecedor_Id`,`Nome`);

--
-- Índices de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_codigo` (`Codigo`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_nome` (`Nome`);

--
-- Índices de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_rel` (`Fornecedor_Id`,`Segmento_Id`),
  ADD KEY `IX_cad_fornecedores_segmentos_rel_segmento` (`Segmento_Id`);

--
-- Índices de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_codigo` (`Codigo`),
  ADD KEY `IX_cad_mecanicos_especialidade` (`Especialidade_Principal_Id`);

--
-- Índices de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_mecanico` (`Mecanico_Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_especialidade` (`Especialidade_Id`);

--
-- Índices de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_contatos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_disponibilidades_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_documentos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_enderecos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_especialidades_codigo` (`Codigo`);

--
-- Índices de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_especialidades_rel` (`Mecanico_Id`,`Especialidade_Id`),
  ADD KEY `IX_cad_mecanicos_especialidades_rel_especialidade` (`Especialidade_Id`);

--
-- Índices de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_experiencias_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_veiculos_placa` (`Placa`),
  ADD KEY `IX_cad_veiculos_cliente` (`Cliente_Id`),
  ADD KEY `IX_cad_veiculos_modelo` (`Modelo_Id`);

--
-- Índices de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_veiculos_marcas_nome` (`Nome`);

--
-- Índices de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_veiculos_modelos_marca` (`Marca_Id`);

--
-- Índices de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_categorias_nome` (`nome`);

--
-- Índices de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_fabricantes_nome` (`nome`);

--
-- Índices de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_localizacoes_descricao` (`descricao`);

--
-- Índices de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_movimentacoes_peca` (`peca_id`);

--
-- Índices de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_pecas_codigo` (`codigo`),
  ADD KEY `IX_est_pecas_fabricante` (`fabricante_id`),
  ADD KEY `IX_est_pecas_categoria` (`categoria_id`),
  ADD KEY `IX_est_pecas_localizacao` (`localizacao_id`);

--
-- Índices de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_anexos_peca` (`peca_id`);

--
-- Índices de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_pecas_fornecedores` (`peca_id`,`fornecedor_id`),
  ADD KEY `IX_est_pecas_fornecedores_fornecedor` (`fornecedor_id`);

--
-- Índices de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_historico_peca` (`peca_id`);

--
-- Índices de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_anexos_pagamento` (`pagamento_id`),
  ADD KEY `IX_fin_anexos_conta_pagar` (`conta_pagar_id`),
  ADD KEY `IX_fin_anexos_conta_receber` (`conta_receber_id`);

--
-- Índices de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_pagar_fornecedor` (`fornecedor_id`),
  ADD KEY `IX_fin_contas_pagar_metodo` (`metodo_id`);

--
-- Índices de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_receber_cliente` (`cliente_id`),
  ADD KEY `IX_fin_contas_receber_metodo` (`metodo_id`);

--
-- Índices de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_historico_entidade` (`entidade`,`entidade_id`);

--
-- Índices de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_fin_metodos_pagamento_nome` (`nome`);

--
-- Índices de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_pagamentos_ordem_servico` (`ordem_servico_id`),
  ADD KEY `IX_fin_pagamentos_cliente` (`cliente_id`),
  ADD KEY `IX_fin_pagamentos_fornecedor` (`fornecedor_id`),
  ADD KEY `IX_fin_pagamentos_metodo` (`metodo_id`);

--
-- Índices de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_anexos_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_avaliacoes_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_checklists_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_itens`
--
ALTER TABLE `os_itens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_itens_ordem` (`ordem_servico_id`),
  ADD KEY `IX_os_itens_peca` (`peca_id`);

--
-- Índices de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_observacoes_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_cliente` (`cliente_id`),
  ADD KEY `IX_os_ordens_mecanico` (`mecanico_id`);

--
-- Índices de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_historico_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_pagamentos_ordem` (`ordem_servico_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11031;

--
-- AUTO_INCREMENT de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_origens`
--
ALTER TABLE `cad_clientes_origens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7005;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4003;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6003;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5005;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3004;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8003;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5036;

--
-- AUTO_INCREMENT de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7036;

--
-- AUTO_INCREMENT de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8036;

--
-- AUTO_INCREMENT de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9036;

--
-- AUTO_INCREMENT de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9636;

--
-- AUTO_INCREMENT de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9236;

--
-- AUTO_INCREMENT de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9336;

--
-- AUTO_INCREMENT de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9536;

--
-- AUTO_INCREMENT de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9436;

--
-- AUTO_INCREMENT de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9136;

--
-- AUTO_INCREMENT de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50036;

--
-- AUTO_INCREMENT de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60036;

--
-- AUTO_INCREMENT de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30036;

--
-- AUTO_INCREMENT de tabela `os_itens`
--
ALTER TABLE `os_itens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20036;

--
-- AUTO_INCREMENT de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40036;

--
-- AUTO_INCREMENT de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10093;

--
-- AUTO_INCREMENT de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80036;

--
-- AUTO_INCREMENT de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70036;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD CONSTRAINT `FK_cad_clientes_origem` FOREIGN KEY (`Origem_Id`) REFERENCES `cad_clientes_origens` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD CONSTRAINT `FK_cad_clientes_anexos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD CONSTRAINT `FK_cad_clientes_contatos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD CONSTRAINT `FK_cad_clientes_documentos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD CONSTRAINT `FK_cad_clientes_enderecos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD CONSTRAINT `FK_cad_clientes_financeiro_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD CONSTRAINT `FK_cad_clientes_indicacoes_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD CONSTRAINT `FK_cad_clientes_lgpd_consentimentos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  ADD CONSTRAINT `FK_cad_clientes_pf_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD CONSTRAINT `FK_cad_clientes_pj_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD CONSTRAINT `FK_cad_fornecedores_segmento` FOREIGN KEY (`Segmento_Principal_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_avaliacoes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD CONSTRAINT `FK_cad_fornecedores_bancos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_certificacoes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD CONSTRAINT `FK_cad_fornecedores_contatos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD CONSTRAINT `FK_cad_fornecedores_documentos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD CONSTRAINT `FK_cad_fornecedores_enderecos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD CONSTRAINT `FK_cad_fornecedores_representantes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_segmento` FOREIGN KEY (`Segmento_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD CONSTRAINT `FK_cad_mecanicos_especialidade` FOREIGN KEY (`Especialidade_Principal_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_especialidade` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD CONSTRAINT `FK_cad_mecanicos_contatos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD CONSTRAINT `FK_cad_mecanicos_disponibilidades_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD CONSTRAINT `FK_cad_mecanicos_documentos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD CONSTRAINT `FK_cad_mecanicos_enderecos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_especialidade` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD CONSTRAINT `FK_cad_mecanicos_experiencias_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD CONSTRAINT `FK_cad_veiculos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_veiculos_modelo` FOREIGN KEY (`Modelo_Id`) REFERENCES `cad_veiculos_modelos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD CONSTRAINT `FK_cad_veiculos_modelos_marca` FOREIGN KEY (`Marca_Id`) REFERENCES `cad_veiculos_marcas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD CONSTRAINT `FK_est_movimentacoes_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD CONSTRAINT `FK_est_pecas_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `est_categorias` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_fabricante` FOREIGN KEY (`fabricante_id`) REFERENCES `est_fabricantes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_localizacao` FOREIGN KEY (`localizacao_id`) REFERENCES `est_localizacoes` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD CONSTRAINT `FK_est_pecas_anexos_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD CONSTRAINT `FK_est_pecas_fornecedores_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_est_pecas_fornecedores_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD CONSTRAINT `FK_est_pecas_historico_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD CONSTRAINT `FK_fin_anexos_conta_pagar` FOREIGN KEY (`conta_pagar_id`) REFERENCES `fin_contas_pagar` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fin_anexos_conta_receber` FOREIGN KEY (`conta_receber_id`) REFERENCES `fin_contas_receber` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fin_anexos_pagamento` FOREIGN KEY (`pagamento_id`) REFERENCES `fin_pagamentos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD CONSTRAINT `FK_fin_contas_pagar_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_pagar_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD CONSTRAINT `FK_fin_contas_receber_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_receber_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD CONSTRAINT `FK_fin_pagamentos_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_ordem_servico` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD CONSTRAINT `FK_os_anexos_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD CONSTRAINT `FK_os_avaliacoes_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD CONSTRAINT `FK_os_checklists_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_itens`
--
ALTER TABLE `os_itens`
  ADD CONSTRAINT `FK_os_itens_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_os_itens_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD CONSTRAINT `FK_os_observacoes_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD CONSTRAINT `FK_os_ordens_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_os_ordens_mecanico` FOREIGN KEY (`mecanico_id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD CONSTRAINT `FK_os_ordens_historico_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD CONSTRAINT `FK_os_pagamentos_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

-- ============================================================
-- MÓDULO: SEGURANÇA — Usuários, Perfis e Permissões (seg_)
-- ============================================================

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

INSERT INTO `seg_permissoes` (`Id`, `Modulo_Id`, `Acao`, `Descricao`, `Created_At`) VALUES
(1,1,'visualizar','Visualizar painel de indicadores','2026-04-20 00:00:00.000000'),
(2,2,'visualizar','Consultar lista e detalhes de clientes','2026-04-20 00:00:00.000000'),
(3,2,'criar','Cadastrar novos clientes','2026-04-20 00:00:00.000000'),
(4,2,'editar','Alterar dados de clientes','2026-04-20 00:00:00.000000'),
(5,2,'excluir','Remover clientes do sistema','2026-04-20 00:00:00.000000'),
(6,2,'exportar','Exportar listagem de clientes','2026-04-20 00:00:00.000000'),
(7,3,'visualizar','Consultar lista e perfis de mecânicos','2026-04-20 00:00:00.000000'),
(8,3,'criar','Cadastrar novos mecânicos','2026-04-20 00:00:00.000000'),
(9,3,'editar','Alterar dados de mecânicos','2026-04-20 00:00:00.000000'),
(10,3,'excluir','Remover mecânicos do sistema','2026-04-20 00:00:00.000000'),
(11,3,'exportar','Exportar listagem de mecânicos','2026-04-20 00:00:00.000000'),
(12,4,'visualizar','Consultar veículos e histórico','2026-04-20 00:00:00.000000'),
(13,4,'criar','Cadastrar novos veículos','2026-04-20 00:00:00.000000'),
(14,4,'editar','Alterar dados de veículos','2026-04-20 00:00:00.000000'),
(15,4,'excluir','Remover veículos do sistema','2026-04-20 00:00:00.000000'),
(16,4,'exportar','Exportar listagem de veículos','2026-04-20 00:00:00.000000'),
(17,5,'visualizar','Consultar ordens de serviço','2026-04-20 00:00:00.000000'),
(18,5,'criar','Abrir novas ordens de serviço','2026-04-20 00:00:00.000000'),
(19,5,'editar','Atualizar ordens de serviço','2026-04-20 00:00:00.000000'),
(20,5,'excluir','Cancelar/remover ordens de serviço','2026-04-20 00:00:00.000000'),
(21,5,'exportar','Exportar ordens de serviço','2026-04-20 00:00:00.000000'),
(22,5,'aprovar','Aprovar orçamentos e liberar execução de OS','2026-04-20 00:00:00.000000'),
(23,6,'visualizar','Consultar peças e movimentações de estoque','2026-04-20 00:00:00.000000'),
(24,6,'criar','Adicionar peças e entradas de estoque','2026-04-20 00:00:00.000000'),
(25,6,'editar','Ajustar dados de peças e localizações','2026-04-20 00:00:00.000000'),
(26,6,'excluir','Remover peças do estoque','2026-04-20 00:00:00.000000'),
(27,6,'exportar','Exportar relatório de estoque','2026-04-20 00:00:00.000000'),
(28,7,'visualizar','Consultar lançamentos, contas e pagamentos','2026-04-20 00:00:00.000000'),
(29,7,'criar','Registrar lançamentos e contas','2026-04-20 00:00:00.000000'),
(30,7,'editar','Alterar lançamentos e contas','2026-04-20 00:00:00.000000'),
(31,7,'excluir','Remover lançamentos e contas','2026-04-20 00:00:00.000000'),
(32,7,'exportar','Exportar extratos e relatórios financeiros','2026-04-20 00:00:00.000000'),
(33,7,'aprovar','Aprovar lançamentos e baixas financeiras','2026-04-20 00:00:00.000000'),
(34,8,'visualizar','Visualizar relatórios gerenciais','2026-04-20 00:00:00.000000'),
(35,8,'exportar','Exportar relatórios em PDF/Excel','2026-04-20 00:00:00.000000'),
(36,9,'visualizar','Visualizar parâmetros do sistema','2026-04-20 00:00:00.000000'),
(37,9,'editar','Alterar parâmetros e configurações do sistema','2026-04-20 00:00:00.000000'),
(38,10,'visualizar','Consultar usuários, perfis e permissões','2026-04-20 00:00:00.000000'),
(39,10,'criar','Criar usuários e perfis de acesso','2026-04-20 00:00:00.000000'),
(40,10,'editar','Editar usuários, perfis e permissões','2026-04-20 00:00:00.000000'),
(41,10,'excluir','Remover usuários e perfis de acesso','2026-04-20 00:00:00.000000'),
(42,11,'visualizar','Consultar lista e detalhes de fornecedores','2026-04-20 00:00:00.000000'),
(43,11,'criar','Cadastrar novos fornecedores','2026-04-20 00:00:00.000000'),
(44,11,'editar','Alterar dados de fornecedores','2026-04-20 00:00:00.000000'),
(45,11,'excluir','Remover fornecedores do sistema','2026-04-20 00:00:00.000000'),
(46,11,'exportar','Exportar listagem de fornecedores','2026-04-20 00:00:00.000000');

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

INSERT INTO `seg_perfis_permissoes` (`Id`, `Perfil_Id`, `Permissao_Id`, `Created_At`) VALUES
(1,1,1,'2026-04-20 00:00:00.000000'),(2,1,2,'2026-04-20 00:00:00.000000'),(3,1,3,'2026-04-20 00:00:00.000000'),(4,1,4,'2026-04-20 00:00:00.000000'),(5,1,5,'2026-04-20 00:00:00.000000'),
(6,1,6,'2026-04-20 00:00:00.000000'),(7,1,7,'2026-04-20 00:00:00.000000'),(8,1,8,'2026-04-20 00:00:00.000000'),(9,1,9,'2026-04-20 00:00:00.000000'),(10,1,10,'2026-04-20 00:00:00.000000'),
(11,1,11,'2026-04-20 00:00:00.000000'),(12,1,12,'2026-04-20 00:00:00.000000'),(13,1,13,'2026-04-20 00:00:00.000000'),(14,1,14,'2026-04-20 00:00:00.000000'),(15,1,15,'2026-04-20 00:00:00.000000'),
(16,1,16,'2026-04-20 00:00:00.000000'),(17,1,17,'2026-04-20 00:00:00.000000'),(18,1,18,'2026-04-20 00:00:00.000000'),(19,1,19,'2026-04-20 00:00:00.000000'),(20,1,20,'2026-04-20 00:00:00.000000'),
(21,1,21,'2026-04-20 00:00:00.000000'),(22,1,22,'2026-04-20 00:00:00.000000'),(23,1,23,'2026-04-20 00:00:00.000000'),(24,1,24,'2026-04-20 00:00:00.000000'),(25,1,25,'2026-04-20 00:00:00.000000'),
(26,1,26,'2026-04-20 00:00:00.000000'),(27,1,27,'2026-04-20 00:00:00.000000'),(28,1,28,'2026-04-20 00:00:00.000000'),(29,1,29,'2026-04-20 00:00:00.000000'),(30,1,30,'2026-04-20 00:00:00.000000'),
(31,1,31,'2026-04-20 00:00:00.000000'),(32,1,32,'2026-04-20 00:00:00.000000'),(33,1,33,'2026-04-20 00:00:00.000000'),(34,1,34,'2026-04-20 00:00:00.000000'),(35,1,35,'2026-04-20 00:00:00.000000'),
(36,1,36,'2026-04-20 00:00:00.000000'),(37,1,37,'2026-04-20 00:00:00.000000'),(38,1,38,'2026-04-20 00:00:00.000000'),(39,1,39,'2026-04-20 00:00:00.000000'),(40,1,40,'2026-04-20 00:00:00.000000'),
(41,1,41,'2026-04-20 00:00:00.000000'),(42,1,42,'2026-04-20 00:00:00.000000'),(43,1,43,'2026-04-20 00:00:00.000000'),(44,1,44,'2026-04-20 00:00:00.000000'),(45,1,45,'2026-04-20 00:00:00.000000'),
(46,1,46,'2026-04-20 00:00:00.000000'),
-- Gerente: tudo exceto Seg.criar/editar/excluir(39,40,41) e Config.editar(37)
(47,2,1,'2026-04-20 00:00:00.000000'),(48,2,2,'2026-04-20 00:00:00.000000'),(49,2,3,'2026-04-20 00:00:00.000000'),(50,2,4,'2026-04-20 00:00:00.000000'),(51,2,5,'2026-04-20 00:00:00.000000'),
(52,2,6,'2026-04-20 00:00:00.000000'),(53,2,7,'2026-04-20 00:00:00.000000'),(54,2,8,'2026-04-20 00:00:00.000000'),(55,2,9,'2026-04-20 00:00:00.000000'),(56,2,10,'2026-04-20 00:00:00.000000'),
(57,2,11,'2026-04-20 00:00:00.000000'),(58,2,12,'2026-04-20 00:00:00.000000'),(59,2,13,'2026-04-20 00:00:00.000000'),(60,2,14,'2026-04-20 00:00:00.000000'),(61,2,15,'2026-04-20 00:00:00.000000'),
(62,2,16,'2026-04-20 00:00:00.000000'),(63,2,17,'2026-04-20 00:00:00.000000'),(64,2,18,'2026-04-20 00:00:00.000000'),(65,2,19,'2026-04-20 00:00:00.000000'),(66,2,20,'2026-04-20 00:00:00.000000'),
(67,2,21,'2026-04-20 00:00:00.000000'),(68,2,22,'2026-04-20 00:00:00.000000'),(69,2,23,'2026-04-20 00:00:00.000000'),(70,2,24,'2026-04-20 00:00:00.000000'),(71,2,25,'2026-04-20 00:00:00.000000'),
(72,2,26,'2026-04-20 00:00:00.000000'),(73,2,27,'2026-04-20 00:00:00.000000'),(74,2,28,'2026-04-20 00:00:00.000000'),(75,2,29,'2026-04-20 00:00:00.000000'),(76,2,30,'2026-04-20 00:00:00.000000'),
(77,2,31,'2026-04-20 00:00:00.000000'),(78,2,32,'2026-04-20 00:00:00.000000'),(79,2,33,'2026-04-20 00:00:00.000000'),(80,2,34,'2026-04-20 00:00:00.000000'),(81,2,35,'2026-04-20 00:00:00.000000'),
(82,2,36,'2026-04-20 00:00:00.000000'),(83,2,38,'2026-04-20 00:00:00.000000'),(84,2,42,'2026-04-20 00:00:00.000000'),(85,2,43,'2026-04-20 00:00:00.000000'),(86,2,44,'2026-04-20 00:00:00.000000'),
(87,2,45,'2026-04-20 00:00:00.000000'),(88,2,46,'2026-04-20 00:00:00.000000'),
-- Recepcionista
(89,3,1,'2026-04-20 00:00:00.000000'),(90,3,2,'2026-04-20 00:00:00.000000'),(91,3,3,'2026-04-20 00:00:00.000000'),(92,3,4,'2026-04-20 00:00:00.000000'),
(93,3,7,'2026-04-20 00:00:00.000000'),(94,3,12,'2026-04-20 00:00:00.000000'),(95,3,13,'2026-04-20 00:00:00.000000'),(96,3,14,'2026-04-20 00:00:00.000000'),
(97,3,17,'2026-04-20 00:00:00.000000'),(98,3,18,'2026-04-20 00:00:00.000000'),(99,3,19,'2026-04-20 00:00:00.000000'),(100,3,42,'2026-04-20 00:00:00.000000'),
-- Financeiro
(101,4,1,'2026-04-20 00:00:00.000000'),(102,4,2,'2026-04-20 00:00:00.000000'),(103,4,17,'2026-04-20 00:00:00.000000'),
(104,4,28,'2026-04-20 00:00:00.000000'),(105,4,29,'2026-04-20 00:00:00.000000'),(106,4,30,'2026-04-20 00:00:00.000000'),(107,4,31,'2026-04-20 00:00:00.000000'),
(108,4,32,'2026-04-20 00:00:00.000000'),(109,4,33,'2026-04-20 00:00:00.000000'),(110,4,34,'2026-04-20 00:00:00.000000'),(111,4,35,'2026-04-20 00:00:00.000000'),
-- Mecânico
(112,5,1,'2026-04-20 00:00:00.000000'),(113,5,2,'2026-04-20 00:00:00.000000'),(114,5,12,'2026-04-20 00:00:00.000000'),
(115,5,17,'2026-04-20 00:00:00.000000'),(116,5,19,'2026-04-20 00:00:00.000000'),(117,5,22,'2026-04-20 00:00:00.000000'),
(118,5,23,'2026-04-20 00:00:00.000000'),(119,5,25,'2026-04-20 00:00:00.000000'),
-- Consulta: somente visualizar
(120,6,1,'2026-04-20 00:00:00.000000'),(121,6,2,'2026-04-20 00:00:00.000000'),(122,6,7,'2026-04-20 00:00:00.000000'),(123,6,12,'2026-04-20 00:00:00.000000'),
(124,6,17,'2026-04-20 00:00:00.000000'),(125,6,23,'2026-04-20 00:00:00.000000'),(126,6,28,'2026-04-20 00:00:00.000000'),(127,6,34,'2026-04-20 00:00:00.000000'),
(128,6,42,'2026-04-20 00:00:00.000000');

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_usuarios`
-- ATENÇÃO: Senhas são hashes bcrypt (custo 12). ALTERAR em produção.
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

INSERT INTO `seg_usuarios_perfis` (`Id`, `Usuario_Id`, `Perfil_Id`, `Ativo`, `Created_At`, `Updated_At`) VALUES
(1, 1, 1, 1, '2026-04-20 00:00:00.000000', NULL),
(2, 2, 2, 1, '2026-04-20 00:00:00.000000', NULL),
(3, 3, 3, 1, '2026-04-20 00:00:00.000000', NULL),
(4, 4, 4, 1, '2026-04-20 00:00:00.000000', NULL),
(5, 5, 5, 1, '2026-04-20 00:00:00.000000', NULL),
(6, 6, 6, 1, '2026-04-20 00:00:00.000000', NULL);

-- --------------------------------------------------------
--
-- Estrutura para tabela `seg_audit_log`
-- INSERT-ONLY — nunca atualizar ou excluir registros de auditoria.
--

CREATE TABLE `seg_audit_log` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint DEFAULT NULL
    COMMENT 'NULL quando a ação ocorrer sem autenticação (ex.: tentativa de login falha)',
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
    COMMENT 'LOGIN | LOGOUT | LOGIN_FAIL | CREATE | UPDATE | DELETE | VIEW | EXPORT | APPROVE',
  `Modulo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tabela` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Registro_Id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Descricao` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dados_Antes` json DEFAULT NULL,
  `Dados_Depois` json DEFAULT NULL,
  `Ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_Agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `seg_audit_log` (`Id`, `Usuario_Id`, `Login`, `Acao`, `Modulo`, `Tabela`, `Registro_Id`, `Descricao`, `Dados_Antes`, `Dados_Depois`, `Ip`, `User_Agent`, `Created_At`) VALUES
(1,1,'clever.admin','LOGIN','Segurança',NULL,NULL,'Login realizado com sucesso',NULL,NULL,'192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:00:00.000000'),
(2,1,'clever.admin','CREATE','Segurança','seg_usuarios','2','Usuário carlos.gerente criado',NULL,'{"Login":"carlos.gerente","Perfil":"Gerente"}','192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:05:00.000000'),
(3,1,'clever.admin','CREATE','Segurança','seg_usuarios','3','Usuário ana.recep criado',NULL,'{"Login":"ana.recep","Perfil":"Recepcionista"}','192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:06:00.000000'),
(4,1,'clever.admin','CREATE','Segurança','seg_usuarios','4','Usuário roberto.fin criado',NULL,'{"Login":"roberto.fin","Perfil":"Financeiro"}','192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:07:00.000000'),
(5,1,'clever.admin','CREATE','Segurança','seg_usuarios','5','Usuário joao.mec criado',NULL,'{"Login":"joao.mec","Perfil":"Mecanico"}','192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:08:00.000000'),
(6,1,'clever.admin','CREATE','Segurança','seg_usuarios','6','Usuário consulta.view criado',NULL,'{"Login":"consulta.view","Perfil":"Consulta"}','192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 08:09:00.000000'),
(7,2,'carlos.gerente','LOGIN','Segurança',NULL,NULL,'Login realizado com sucesso',NULL,NULL,'192.168.1.101','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 09:00:00.000000'),
(8,2,'carlos.gerente','VIEW','Clientes','cad_clientes',NULL,'Listagem de clientes consultada',NULL,NULL,'192.168.1.101','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 09:05:00.000000'),
(9,NULL,NULL,'LOGIN_FAIL','Segurança',NULL,NULL,'Tentativa de login falha para o usuário "inexistente"',NULL,NULL,'10.0.0.55','Mozilla/5.0 (Linux; Android 11)','2026-04-20 09:10:00.000000'),
(10,3,'ana.recep','LOGIN','Segurança',NULL,NULL,'Login realizado com sucesso',NULL,NULL,'192.168.1.102','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 10:00:00.000000'),
(11,3,'ana.recep','CREATE','Clientes','cad_clientes','43','Novo cliente cadastrado: Fábio Henrique',NULL,'{"Nome":"Fábio Henrique","Documento":"11122233344"}','192.168.1.102','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 10:15:00.000000'),
(12,4,'roberto.fin','LOGIN','Segurança',NULL,NULL,'Login realizado com sucesso',NULL,NULL,'192.168.1.103','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 11:00:00.000000'),
(13,4,'roberto.fin','EXPORT','Financeiro','fin_lancamentos',NULL,'Exportação de lançamentos financeiros — abr/2026',NULL,NULL,'192.168.1.103','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 11:30:00.000000'),
(14,5,'joao.mec','LOGIN','Segurança',NULL,NULL,'Login realizado com sucesso',NULL,NULL,'192.168.1.104','Mozilla/5.0 (Android 12; Mobile)','2026-04-20 08:30:00.000000'),
(15,5,'joao.mec','UPDATE','Ordens de Serviço','os_ordens','101','OS #101 atualizada: status alterado para Em Execução','{"Status":"Aguardando"}','{"Status":"Em Execução"}','192.168.1.104','Mozilla/5.0 (Android 12; Mobile)','2026-04-20 08:45:00.000000'),
(16,1,'clever.admin','LOGOUT','Segurança',NULL,NULL,'Sessão encerrada',NULL,NULL,'192.168.1.100','Mozilla/5.0 (Windows NT 10.0; Win64; x64)','2026-04-20 18:00:00.000000');

--
-- Índices das tabelas seg_*
--
ALTER TABLE `seg_modulos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_modulos_nome` (`Nome`);

ALTER TABLE `seg_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_nome` (`Nome`);

ALTER TABLE `seg_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_permissoes_modulo_acao` (`Modulo_Id`, `Acao`),
  ADD KEY `IDX_seg_permissoes_modulo` (`Modulo_Id`);

ALTER TABLE `seg_perfis_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_permissoes` (`Perfil_Id`, `Permissao_Id`),
  ADD KEY `IDX_seg_perfis_permissoes_perfil` (`Perfil_Id`),
  ADD KEY `IDX_seg_perfis_permissoes_permissao` (`Permissao_Id`);

ALTER TABLE `seg_usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_email` (`Email`),
  ADD UNIQUE KEY `UQ_seg_usuarios_login` (`Login`),
  ADD KEY `IDX_seg_usuarios_status` (`Status`);

ALTER TABLE `seg_usuarios_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_perfis` (`Usuario_Id`, `Perfil_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_usuarios_perfis_perfil` (`Perfil_Id`);

ALTER TABLE `seg_audit_log`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_seg_audit_log_usuario` (`Usuario_Id`),
  ADD KEY `IDX_seg_audit_log_acao` (`Acao`),
  ADD KEY `IDX_seg_audit_log_created` (`Created_At`);

--
-- AUTO_INCREMENT das tabelas seg_*
--
ALTER TABLE `seg_modulos`           MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
ALTER TABLE `seg_perfis`            MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `seg_permissoes`        MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
ALTER TABLE `seg_perfis_permissoes` MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
ALTER TABLE `seg_usuarios`          MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `seg_usuarios_perfis`   MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `seg_audit_log`         MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições (Foreign Keys) das tabelas seg_*
--
ALTER TABLE `seg_modulos`
  ADD CONSTRAINT `FK_seg_modulos_pai` FOREIGN KEY (`Modulo_Pai_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE SET NULL;

ALTER TABLE `seg_permissoes`
  ADD CONSTRAINT `FK_seg_permissoes_modulo` FOREIGN KEY (`Modulo_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE CASCADE;

ALTER TABLE `seg_perfis_permissoes`
  ADD CONSTRAINT `FK_seg_perfis_permissoes_perfil`    FOREIGN KEY (`Perfil_Id`)    REFERENCES `seg_perfis`     (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_perfis_permissoes_permissao` FOREIGN KEY (`Permissao_Id`) REFERENCES `seg_permissoes` (`Id`) ON DELETE CASCADE;

ALTER TABLE `seg_usuarios`
  ADD CONSTRAINT `FK_seg_usuarios_criado_por` FOREIGN KEY (`Criado_Por`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

ALTER TABLE `seg_usuarios_perfis`
  ADD CONSTRAINT `FK_seg_usuarios_perfis_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_usuarios_perfis_perfil`  FOREIGN KEY (`Perfil_Id`)  REFERENCES `seg_perfis`   (`Id`) ON DELETE CASCADE;

ALTER TABLE `seg_audit_log`
  ADD CONSTRAINT `FK_seg_audit_log_usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
