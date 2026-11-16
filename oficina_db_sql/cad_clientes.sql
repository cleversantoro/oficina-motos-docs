-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Tempo de geração: 04/11/2026 às 21:17
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

--
-- Despejando dados para a tabela `cad_clientes`
--

INSERT INTO `cad_clientes` (`Id`, `Codigo`, `Nome`, `NomeExibicao`, `Documento`, `Tipo`, `Status`, `Vip`, `Observacoes`, `OrigemCadastroId`, `Telefone`, `Email`, `Origem_Id`, `Created_At`, `Updated_At`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 'Cliente Teste', 'Cliente Teste', '12345678901', 1, 1, 0, 'Cliente para teste de ordem de serviço', 1, '11988887777', 'cliente@teste.com', NULL, '2026-08-12 23:31:53.000000', NULL, NULL, 0);

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
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD CONSTRAINT `FK_cad_clientes_cad_clientes_origens_Origem_Id` FOREIGN KEY (`Origem_Id`) REFERENCES `cad_clientes_origens` (`Id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
