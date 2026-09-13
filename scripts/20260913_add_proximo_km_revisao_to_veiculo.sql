-- ==============================================================================
-- Script de Migração DDL: AddProximoKmRevisaoToVeiculo
-- Banco de Dados: MySQL 8.0 (InnoDB, utf8mb4)
-- Tabela Afetada: cad_veiculos
-- História de Usuário: US-014 — Adicionar campo proximo_km_revisao ao veículo
-- Data: 2026-09-13
-- ==============================================================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

-- Adiciona a coluna proximo_km_revisao (tipo INT anulável) na tabela cad_veiculos
ALTER TABLE `cad_veiculos`
ADD COLUMN `proximo_km_revisao` int NULL DEFAULT NULL;

COMMIT;

-- ==============================================================================
-- ROLLBACK (Reversão / Down):
-- Em caso de necessidade de reversão, execute o comando abaixo:
--
-- START TRANSACTION;
-- ALTER TABLE `cad_veiculos` DROP COLUMN `proximo_km_revisao`;
-- COMMIT;
-- ==============================================================================

