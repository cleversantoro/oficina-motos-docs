-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Tempo de geração: 19/11/2026 às 18:20
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
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `NomeExibicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Documento` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipo` int NOT NULL,
  `Status` int NOT NULL,
  `Vip` tinyint(1) NOT NULL,
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `OrigemCadastroId` int NOT NULL,
  `Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Origem_Id` bigint DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_anexos`
--

CREATE TABLE `cad_clientes_anexos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_contatos`
--

CREATE TABLE `cad_clientes_contatos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_documentos`
--

CREATE TABLE `cad_clientes_documentos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Documento` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_Emissao` datetime(6) DEFAULT NULL,
  `Data_Validade` datetime(6) DEFAULT NULL,
  `Orgao_Expedidor` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_enderecos`
--

CREATE TABLE `cad_clientes_enderecos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Tipo` int NOT NULL,
  `Cep` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Logradouro` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estado` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_financeiro`
--

CREATE TABLE `cad_clientes_financeiro` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Limite_Credito` decimal(65,30) DEFAULT NULL,
  `Prazo_Pagamento` int DEFAULT NULL,
  `Bloqueado` tinyint(1) NOT NULL,
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_indicacoes`
--

CREATE TABLE `cad_clientes_indicacoes` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Indicador_Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Indicador_Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Canal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_origens`
--

CREATE TABLE `cad_clientes_origens` (
  `Id` bigint NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_pf`
--

CREATE TABLE `cad_clientes_pf` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Cpf` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Rg` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Data_Nascimento` datetime(6) DEFAULT NULL,
  `Genero` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Estado_Civil` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Profissao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_pj`
--

CREATE TABLE `cad_clientes_pj` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Cnpj` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Razao_Social` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nome_Fantasia` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Inscricao_Estadual` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Inscricao_Municipal` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Responsavel` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores`
--

CREATE TABLE `cad_fornecedores` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Razao_Social` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nome_Fantasia` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Documento` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Inscricao_Estadual` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Inscricao_Municipal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Segmento_Principal_Id` bigint DEFAULT NULL,
  `Website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Telefone_Principal` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'ATIVO',
  `Condicao_Pagamento_Padrao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Prazo_Entrega_Medio` int DEFAULT NULL,
  `Nota_Media` decimal(4,2) DEFAULT NULL,
  `Observacoes` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Prazo_Garantia_Padrao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Termos_Negociados` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Atendimento_Personalizado` tinyint(1) NOT NULL DEFAULT '0',
  `Retirada_Local` tinyint(1) NOT NULL DEFAULT '0',
  `Rating_Logistica` decimal(4,2) DEFAULT NULL,
  `Rating_Qualidade` decimal(4,2) DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_avaliacoes`
--

CREATE TABLE `cad_fornecedores_avaliacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Data_Avaliacao` datetime(6) NOT NULL,
  `Avaliado_Por` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Categoria` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nota` decimal(4,2) NOT NULL,
  `Comentarios` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_bancos`
--

CREATE TABLE `cad_fornecedores_bancos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Banco` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Agencia` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Conta` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Digito` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tipo_Conta` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Pix_Chave` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_certificacoes`
--

CREATE TABLE `cad_fornecedores_certificacoes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Titulo` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Instituicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Data_Emissao` datetime(6) DEFAULT NULL,
  `Data_Validade` datetime(6) DEFAULT NULL,
  `Codigo_Certificacao` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Escopo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_contatos`
--

CREATE TABLE `cad_fornecedores_contatos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_documentos`
--

CREATE TABLE `cad_fornecedores_documentos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_Emissao` datetime(6) DEFAULT NULL,
  `Data_Validade` datetime(6) DEFAULT NULL,
  `Orgao_Expedidor` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Arquivo_Url` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_enderecos`
--

CREATE TABLE `cad_fornecedores_enderecos` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cep` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Logradouro` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_representantes`
--

CREATE TABLE `cad_fornecedores_representantes` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cargo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Telefone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Celular` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Preferencia_Contato` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos`
--

CREATE TABLE `cad_fornecedores_segmentos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_fornecedores_segmentos_rel`
--

CREATE TABLE `cad_fornecedores_segmentos_rel` (
  `Id` bigint NOT NULL,
  `Fornecedor_Id` bigint NOT NULL,
  `Segmento_Id` bigint NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacoes` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos`
--

CREATE TABLE `cad_mecanicos` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sobrenome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nome_Social` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Documento_Principal` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tipo_Documento` int NOT NULL,
  `Data_Nascimento` datetime(6) DEFAULT NULL,
  `Data_Admissao` datetime(6) NOT NULL,
  `Data_Demissao` datetime(6) DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Ativo',
  `Especialidade_Principal_Id` bigint DEFAULT NULL,
  `Nivel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Pleno',
  `Valor_Hora` decimal(18,2) NOT NULL,
  `Carga_Horaria_Semanal` int NOT NULL DEFAULT '44',
  `Observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_certificacoes`
--

CREATE TABLE `cad_mecanicos_certificacoes` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint DEFAULT NULL,
  `Titulo` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Instituicao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Data_Conclusao` datetime(6) DEFAULT NULL,
  `Data_Validade` datetime(6) DEFAULT NULL,
  `Codigo_Certificacao` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_contatos`
--

CREATE TABLE `cad_mecanicos_contatos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Valor` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_disponibilidades`
--

CREATE TABLE `cad_mecanicos_disponibilidades` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Dia_Semana` int NOT NULL,
  `Hora_Inicio` time(6) NOT NULL,
  `Hora_Fim` time(6) NOT NULL,
  `Capacidade_Atendimentos` int NOT NULL DEFAULT '5',
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_documentos`
--

CREATE TABLE `cad_mecanicos_documentos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_Emissao` datetime(6) DEFAULT NULL,
  `Data_Validade` datetime(6) DEFAULT NULL,
  `Orgao_Expedidor` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Arquivo_Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_enderecos`
--

CREATE TABLE `cad_mecanicos_enderecos` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cep` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Logradouro` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numero` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Bairro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cidade` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pais` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Complemento` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades`
--

CREATE TABLE `cad_mecanicos_especialidades` (
  `Id` bigint NOT NULL,
  `Codigo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ativo` tinyint(1) NOT NULL DEFAULT '1',
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_especialidades_rel`
--

CREATE TABLE `cad_mecanicos_especialidades_rel` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Especialidade_Id` bigint NOT NULL,
  `Nivel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Pleno',
  `Principal` tinyint(1) NOT NULL DEFAULT '0',
  `Anotacoes` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_mecanicos_experiencias`
--

CREATE TABLE `cad_mecanicos_experiencias` (
  `Id` bigint NOT NULL,
  `Mecanico_Id` bigint NOT NULL,
  `Empresa` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cargo` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_Inicio` datetime(6) DEFAULT NULL,
  `Data_Fim` datetime(6) DEFAULT NULL,
  `Resumo_Atividades` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos`
--

CREATE TABLE `cad_veiculos` (
  `Id` bigint NOT NULL,
  `Cliente_Id` bigint NOT NULL,
  `Placa` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Modelo_Id` bigint DEFAULT NULL,
  `Ano_Fab` int DEFAULT NULL,
  `Ano_Mod` int DEFAULT NULL,
  `Cor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Chassi` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Renavam` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Km` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Combustivel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Principal` tinyint(1) NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `proximo_km_revisao` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_marcas`
--

CREATE TABLE `cad_veiculos_marcas` (
  `Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pais` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_veiculos_modelos`
--

CREATE TABLE `cad_veiculos_modelos` (
  `Id` bigint NOT NULL,
  `Marca_Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Ano_Inicio` int DEFAULT NULL,
  `Ano_Fim` int DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_categorias`
--

CREATE TABLE `est_categorias` (
  `Id` bigint NOT NULL,
  `nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_fabricantes`
--

CREATE TABLE `est_fabricantes` (
  `Id` bigint NOT NULL,
  `nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cnpj` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contato` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_localizacoes`
--

CREATE TABLE `est_localizacoes` (
  `Id` bigint NOT NULL,
  `descricao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `corredor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prateleira` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_movimentacoes`
--

CREATE TABLE `est_movimentacoes` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `quantidade` int NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `referencia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_movimentacao` datetime(6) NOT NULL,
  `usuario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas`
--

CREATE TABLE `est_pecas` (
  `Id` bigint NOT NULL,
  `codigo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fabricante_id` bigint DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `localizacao_id` bigint DEFAULT NULL,
  `preco_unitario` decimal(18,2) NOT NULL,
  `quantidade` int NOT NULL,
  `estoque_minimo` int NOT NULL DEFAULT '0',
  `estoque_maximo` int NOT NULL DEFAULT '0',
  `unidade` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'UN',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Ativo',
  `observacoes` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_cadastro` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_anexos`
--

CREATE TABLE `est_pecas_anexos` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_upload` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_fornecedores`
--

CREATE TABLE `est_pecas_fornecedores` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `fornecedor_id` bigint NOT NULL,
  `preco` decimal(18,2) DEFAULT NULL,
  `prazo_entrega` int DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_historico`
--

CREATE TABLE `est_pecas_historico` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `data_alteracao` datetime(6) NOT NULL,
  `usuario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `campo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_antigo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_novo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_anexos`
--

CREATE TABLE `fin_anexos` (
  `Id` bigint NOT NULL,
  `pagamento_id` bigint DEFAULT NULL,
  `conta_pagar_id` bigint DEFAULT NULL,
  `conta_receber_id` bigint DEFAULT NULL,
  `nome` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data_upload` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_pagar`
--

CREATE TABLE `fin_contas_pagar` (
  `Id` bigint NOT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valor` decimal(18,2) NOT NULL,
  `vencimento` datetime(6) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_pagamento` datetime(6) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_contas_receber`
--

CREATE TABLE `fin_contas_receber` (
  `Id` bigint NOT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valor` decimal(18,2) NOT NULL,
  `vencimento` datetime(6) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_recebimento` datetime(6) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_historico`
--

CREATE TABLE `fin_historico` (
  `Id` bigint NOT NULL,
  `entidade` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `entidade_id` bigint NOT NULL,
  `data_alteracao` datetime(6) NOT NULL,
  `usuario` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `campo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_antigo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valor_novo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_lancamentos`
--

CREATE TABLE `fin_lancamentos` (
  `Id` bigint NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `valor` decimal(18,2) NOT NULL,
  `data_lancamento` datetime(6) NOT NULL,
  `referencia` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_metodos_pagamento`
--

CREATE TABLE `fin_metodos_pagamento` (
  `Id` bigint NOT NULL,
  `nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_pagamentos`
--

CREATE TABLE `fin_pagamentos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `valor` decimal(18,2) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data_pagamento` datetime(6) DEFAULT NULL,
  `metodo_id` bigint DEFAULT NULL,
  `observacao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_audit_log`
--

CREATE TABLE `seg_audit_log` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint DEFAULT NULL,
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Modulo` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tabela` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Registro_Id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Descricao` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Dados_Antes` json DEFAULT NULL,
  `Dados_Depois` json DEFAULT NULL,
  `Ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `User_Agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_modulos`
--

CREATE TABLE `seg_modulos` (
  `Id` bigint NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Icone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rota` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Modulo_Pai_Id` bigint DEFAULT NULL,
  `Ordem` int NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_perfis`
--

CREATE TABLE `seg_perfis` (
  `Id` bigint NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Nivel` int NOT NULL,
  `Status` int NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_perfis_permissoes`
--

CREATE TABLE `seg_perfis_permissoes` (
  `Id` bigint NOT NULL,
  `Perfil_Id` bigint NOT NULL,
  `Permissao_Id` bigint NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_permissoes`
--

CREATE TABLE `seg_permissoes` (
  `Id` bigint NOT NULL,
  `Modulo_Id` bigint NOT NULL,
  `Acao` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Descricao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_refresh_tokens`
--

CREATE TABLE `seg_refresh_tokens` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint NOT NULL,
  `Token_Hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Expira_Em` datetime(6) NOT NULL,
  `Revogado_Em` datetime(6) DEFAULT NULL,
  `Motivo_Revogacao` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ip_Criacao` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `User_Agent_Criacao` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Ultimo_Uso_Em` datetime(6) DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_usuarios`
--

CREATE TABLE `seg_usuarios` (
  `Id` bigint NOT NULL,
  `Nome` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(160) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Login` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Senha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Foto_Url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` int NOT NULL,
  `Ultimo_Login` datetime(6) DEFAULT NULL,
  `Token_Reset` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Token_Reset_Expira_Em` datetime(6) DEFAULT NULL,
  `Tentativas_Login` int NOT NULL,
  `Bloqueado_Ate` datetime(6) DEFAULT NULL,
  `Criado_Por` bigint DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `seg_usuarios_perfis`
--

CREATE TABLE `seg_usuarios_perfis` (
  `Id` bigint NOT NULL,
  `Usuario_Id` bigint NOT NULL,
  `Perfil_Id` bigint NOT NULL,
  `Ativo` tinyint(1) NOT NULL,
  `Created_At` datetime(6) NOT NULL,
  `Updated_At` datetime(6) DEFAULT NULL,
  `DeletedAt` datetime(6) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_Origem_Id` (`Origem_Id`);

--
-- Índices de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_anexos_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_contatos_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_documentos_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_enderecos_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_cad_clientes_financeiro_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_indicacoes_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_lgpd_consentimentos_Cliente_Id` (`Cliente_Id`);

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
  ADD UNIQUE KEY `IX_cad_clientes_pf_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_cad_clientes_pj_Cliente_Id` (`Cliente_Id`);

--
-- Índices de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_Segmento_Principal_Id` (`Segmento_Principal_Id`);

--
-- Índices de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_avaliacoes_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_bancos_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_certificacoes_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_contatos_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_documentos_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_enderecos_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_representantes_Fornecedor_Id` (`Fornecedor_Id`);

--
-- Índices de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_segmentos_rel_Fornecedor_Id` (`Fornecedor_Id`),
  ADD KEY `IX_cad_fornecedores_segmentos_rel_Segmento_Id` (`Segmento_Id`);

--
-- Índices de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_Especialidade_Principal_Id` (`Especialidade_Principal_Id`);

--
-- Índices de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_Especialidade_Id` (`Especialidade_Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_contatos_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_disponibilidades_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_documentos_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_enderecos_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_especialidades_rel_Especialidade_Id` (`Especialidade_Id`),
  ADD KEY `IX_cad_mecanicos_especialidades_rel_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_experiencias_Mecanico_Id` (`Mecanico_Id`);

--
-- Índices de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_veiculos_Cliente_Id` (`Cliente_Id`),
  ADD KEY `IX_cad_veiculos_Modelo_Id` (`Modelo_Id`);

--
-- Índices de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_veiculos_modelos_Marca_Id` (`Marca_Id`);

--
-- Índices de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_movimentacoes_peca_id` (`peca_id`);

--
-- Índices de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_categoria_id` (`categoria_id`),
  ADD KEY `IX_est_pecas_fabricante_id` (`fabricante_id`),
  ADD KEY `IX_est_pecas_localizacao_id` (`localizacao_id`);

--
-- Índices de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_anexos_peca_id` (`peca_id`);

--
-- Índices de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_fornecedores_fornecedor_id` (`fornecedor_id`),
  ADD KEY `IX_est_pecas_fornecedores_peca_id` (`peca_id`);

--
-- Índices de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_historico_peca_id` (`peca_id`);

--
-- Índices de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_anexos_conta_pagar_id` (`conta_pagar_id`),
  ADD KEY `IX_fin_anexos_conta_receber_id` (`conta_receber_id`),
  ADD KEY `IX_fin_anexos_pagamento_id` (`pagamento_id`);

--
-- Índices de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_pagar_fornecedor_id` (`fornecedor_id`),
  ADD KEY `IX_fin_contas_pagar_metodo_id` (`metodo_id`);

--
-- Índices de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_receber_cliente_id` (`cliente_id`),
  ADD KEY `IX_fin_contas_receber_metodo_id` (`metodo_id`);

--
-- Índices de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_pagamentos_cliente_id` (`cliente_id`),
  ADD KEY `IX_fin_pagamentos_fornecedor_id` (`fornecedor_id`),
  ADD KEY `IX_fin_pagamentos_metodo_id` (`metodo_id`),
  ADD KEY `IX_fin_pagamentos_ordem_servico_id` (`ordem_servico_id`);

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
-- Índices de tabela `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_seg_audit_log_Usuario_Id` (`Usuario_Id`);

--
-- Índices de tabela `seg_modulos`
--
ALTER TABLE `seg_modulos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_seg_modulos_Modulo_Pai_Id` (`Modulo_Pai_Id`);

--
-- Índices de tabela `seg_perfis`
--
ALTER TABLE `seg_perfis`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `seg_perfis_permissoes`
--
ALTER TABLE `seg_perfis_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_perfis_permissoes` (`Perfil_Id`,`Permissao_Id`),
  ADD KEY `IX_seg_perfis_permissoes_Permissao_Id` (`Permissao_Id`);

--
-- Índices de tabela `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_permissoes_modulo_acao` (`Modulo_Id`,`Acao`);

--
-- Índices de tabela `seg_refresh_tokens`
--
ALTER TABLE `seg_refresh_tokens`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_refresh_tokens_hash` (`Token_Hash`),
  ADD KEY `IX_seg_refresh_tokens_Usuario_Id` (`Usuario_Id`);

--
-- Índices de tabela `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_email` (`Email`),
  ADD UNIQUE KEY `UQ_seg_usuarios_login` (`Login`),
  ADD KEY `IX_seg_usuarios_Criado_Por` (`Criado_Por`);

--
-- Índices de tabela `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UQ_seg_usuarios_perfis` (`Usuario_Id`,`Perfil_Id`),
  ADD KEY `IX_seg_usuarios_perfis_Perfil_Id` (`Perfil_Id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_origens`
--
ALTER TABLE `cad_clientes_origens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

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
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de tabela `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_modulos`
--
ALTER TABLE `seg_modulos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_perfis`
--
ALTER TABLE `seg_perfis`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_perfis_permissoes`
--
ALTER TABLE `seg_perfis_permissoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_refresh_tokens`
--
ALTER TABLE `seg_refresh_tokens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD CONSTRAINT `FK_cad_clientes_cad_clientes_origens_Origem_Id` FOREIGN KEY (`Origem_Id`) REFERENCES `cad_clientes_origens` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD CONSTRAINT `FK_cad_clientes_anexos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD CONSTRAINT `FK_cad_clientes_contatos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD CONSTRAINT `FK_cad_clientes_documentos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD CONSTRAINT `FK_cad_clientes_enderecos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD CONSTRAINT `FK_cad_clientes_financeiro_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD CONSTRAINT `FK_cad_clientes_indicacoes_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD CONSTRAINT `FK_cad_clientes_lgpd_consentimentos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  ADD CONSTRAINT `FK_cad_clientes_pf_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD CONSTRAINT `FK_cad_clientes_pj_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD CONSTRAINT `FK_cad_fornecedores_cad_fornecedores_segmentos_Segmento_Princip~` FOREIGN KEY (`Segmento_Principal_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_avaliacoes_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD CONSTRAINT `FK_cad_fornecedores_bancos_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_certificacoes_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD CONSTRAINT `FK_cad_fornecedores_contatos_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD CONSTRAINT `FK_cad_fornecedores_documentos_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD CONSTRAINT `FK_cad_fornecedores_enderecos_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD CONSTRAINT `FK_cad_fornecedores_representantes_cad_fornecedores_Fornecedor_~` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_cad_fornecedores_Fornecedor_Id` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_cad_fornecedores_segmentos_Se~` FOREIGN KEY (`Segmento_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD CONSTRAINT `FK_cad_mecanicos_cad_mecanicos_especialidades_Especialidade_Pri~` FOREIGN KEY (`Especialidade_Principal_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_cad_mecanicos_especialidades_Esp~` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD CONSTRAINT `FK_cad_mecanicos_contatos_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD CONSTRAINT `FK_cad_mecanicos_disponibilidades_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD CONSTRAINT `FK_cad_mecanicos_documentos_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD CONSTRAINT `FK_cad_mecanicos_enderecos_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_cad_mecanicos_especialidade~` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD CONSTRAINT `FK_cad_mecanicos_experiencias_cad_mecanicos_Mecanico_Id` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD CONSTRAINT `FK_cad_veiculos_cad_clientes_Cliente_Id` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_veiculos_cad_veiculos_modelos_Modelo_Id` FOREIGN KEY (`Modelo_Id`) REFERENCES `cad_veiculos_modelos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD CONSTRAINT `FK_cad_veiculos_modelos_cad_veiculos_marcas_Marca_Id` FOREIGN KEY (`Marca_Id`) REFERENCES `cad_veiculos_marcas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD CONSTRAINT `FK_est_movimentacoes_est_pecas_peca_id` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD CONSTRAINT `FK_est_pecas_est_categorias_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `est_categorias` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_est_fabricantes_fabricante_id` FOREIGN KEY (`fabricante_id`) REFERENCES `est_fabricantes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_est_localizacoes_localizacao_id` FOREIGN KEY (`localizacao_id`) REFERENCES `est_localizacoes` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD CONSTRAINT `FK_est_pecas_anexos_est_pecas_peca_id` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD CONSTRAINT `FK_est_pecas_fornecedores_cad_fornecedores_fornecedor_id` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_est_pecas_fornecedores_est_pecas_peca_id` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD CONSTRAINT `FK_est_pecas_historico_est_pecas_peca_id` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD CONSTRAINT `FK_fin_anexos_fin_contas_pagar_conta_pagar_id` FOREIGN KEY (`conta_pagar_id`) REFERENCES `fin_contas_pagar` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_anexos_fin_contas_receber_conta_receber_id` FOREIGN KEY (`conta_receber_id`) REFERENCES `fin_contas_receber` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_anexos_fin_pagamentos_pagamento_id` FOREIGN KEY (`pagamento_id`) REFERENCES `fin_pagamentos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD CONSTRAINT `FK_fin_contas_pagar_cad_fornecedores_fornecedor_id` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_pagar_fin_metodos_pagamento_metodo_id` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD CONSTRAINT `FK_fin_contas_receber_cad_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_receber_fin_metodos_pagamento_metodo_id` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD CONSTRAINT `FK_fin_pagamentos_cad_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_cad_fornecedores_fornecedor_id` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_fin_metodos_pagamento_metodo_id` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_os_ordens_ordem_servico_id` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE SET NULL;

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

--
-- Restrições para tabelas `seg_audit_log`
--
ALTER TABLE `seg_audit_log`
  ADD CONSTRAINT `FK_seg_audit_log_seg_usuarios_Usuario_Id` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `seg_modulos`
--
ALTER TABLE `seg_modulos`
  ADD CONSTRAINT `FK_seg_modulos_seg_modulos_Modulo_Pai_Id` FOREIGN KEY (`Modulo_Pai_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `seg_perfis_permissoes`
--
ALTER TABLE `seg_perfis_permissoes`
  ADD CONSTRAINT `FK_seg_perfis_permissoes_seg_perfis_Perfil_Id` FOREIGN KEY (`Perfil_Id`) REFERENCES `seg_perfis` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_perfis_permissoes_seg_permissoes_Permissao_Id` FOREIGN KEY (`Permissao_Id`) REFERENCES `seg_permissoes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_permissoes`
--
ALTER TABLE `seg_permissoes`
  ADD CONSTRAINT `FK_seg_permissoes_seg_modulos_Modulo_Id` FOREIGN KEY (`Modulo_Id`) REFERENCES `seg_modulos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_refresh_tokens`
--
ALTER TABLE `seg_refresh_tokens`
  ADD CONSTRAINT `FK_seg_refresh_tokens_seg_usuarios_Usuario_Id` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `seg_usuarios`
--
ALTER TABLE `seg_usuarios`
  ADD CONSTRAINT `FK_seg_usuarios_seg_usuarios_Criado_Por` FOREIGN KEY (`Criado_Por`) REFERENCES `seg_usuarios` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `seg_usuarios_perfis`
--
ALTER TABLE `seg_usuarios_perfis`
  ADD CONSTRAINT `FK_seg_usuarios_perfis_seg_perfis_Perfil_Id` FOREIGN KEY (`Perfil_Id`) REFERENCES `seg_perfis` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_seg_usuarios_perfis_seg_usuarios_Usuario_Id` FOREIGN KEY (`Usuario_Id`) REFERENCES `seg_usuarios` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
