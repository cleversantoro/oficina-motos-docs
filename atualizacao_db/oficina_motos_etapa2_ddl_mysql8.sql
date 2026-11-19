-- ============================================================================
-- OFICINA MOTOS - ETAPA 2
-- MySQL 8.0.44 | Modelo V2 aprovado
-- Estratégia: EXPAND -> BACKFILL -> VALIDATE -> SWITCH -> CONTRACT
--
-- IMPORTANTE:
-- 1) Execute primeiro em uma cópia/restauração do banco.
-- 2) MySQL faz COMMIT implícito em DDL. START TRANSACTION não torna este script
--    reversível como um todo.
-- 3) Este script cria o novo núcleo de pessoas/prestadores e prepara as tabelas
--    existentes. Não apaga tabelas legadas nem tenta deduplicar pessoas
--    automaticamente.
-- 4) A migração dos dados é separada e deve ser validada antes do corte.
-- ============================================================================

SET NAMES utf8mb4;
SET time_zone = '+00:00';

-- --------------------------------------------------------------------------
-- 1. NÚCLEO DE PESSOAS
-- --------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS cad_pessoas (
    id BIGINT NOT NULL AUTO_INCREMENT,
    tipo_pessoa ENUM('PF','PJ') NOT NULL,
    documento VARCHAR(20) NULL,
    documento_normalizado VARCHAR(20) NULL COMMENT 'Preenchido/normalizado pela aplicação ou rotina de migração',
    nome VARCHAR(180) NOT NULL,
    nome_exibicao VARCHAR(180) NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1,
    observacoes VARCHAR(600) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_cad_pessoas_documento_normalizado (documento_normalizado),
    KEY ix_cad_pessoas_nome (nome),
    KEY ix_cad_pessoas_tipo_ativo (tipo_pessoa, ativo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_pf (
    pessoa_id BIGINT NOT NULL,
    data_nascimento DATE NULL,
    rg VARCHAR(30) NULL,
    orgao_expedidor VARCHAR(80) NULL,
    estado_civil VARCHAR(30) NULL,
    genero VARCHAR(30) NULL,
    profissao VARCHAR(120) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    PRIMARY KEY (pessoa_id),
    CONSTRAINT fk_cad_pessoas_pf_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_pj (
    pessoa_id BIGINT NOT NULL,
    razao_social VARCHAR(200) NOT NULL,
    nome_fantasia VARCHAR(200) NULL,
    inscricao_estadual VARCHAR(50) NULL,
    inscricao_municipal VARCHAR(50) NULL,
    website VARCHAR(200) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    PRIMARY KEY (pessoa_id),
    CONSTRAINT fk_cad_pessoas_pj_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_contatos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    pessoa_id BIGINT NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    valor VARCHAR(180) NOT NULL,
    valor_normalizado VARCHAR(180) NULL,
    principal TINYINT(1) NOT NULL DEFAULT 0,
    recebe_whatsapp TINYINT(1) NOT NULL DEFAULT 0,
    observacao VARCHAR(240) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_pessoas_contatos_pessoa (pessoa_id),
    KEY ix_pessoas_contatos_tipo_valor (tipo, valor_normalizado),
    CONSTRAINT fk_pessoas_contatos_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_enderecos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    pessoa_id BIGINT NOT NULL,
    tipo VARCHAR(30) NOT NULL DEFAULT 'RESIDENCIAL',
    cep VARCHAR(12) NULL,
    logradouro VARCHAR(180) NOT NULL,
    numero VARCHAR(20) NULL,
    bairro VARCHAR(120) NULL,
    cidade VARCHAR(120) NOT NULL,
    estado VARCHAR(60) NOT NULL,
    pais VARCHAR(80) NOT NULL DEFAULT 'Brasil',
    complemento VARCHAR(160) NULL,
    principal TINYINT(1) NOT NULL DEFAULT 0,
    observacao VARCHAR(240) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_pessoas_enderecos_pessoa (pessoa_id),
    KEY ix_pessoas_enderecos_cep (cep),
    CONSTRAINT fk_pessoas_enderecos_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_documentos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    pessoa_id BIGINT NOT NULL,
    tipo VARCHAR(40) NOT NULL,
    numero VARCHAR(80) NOT NULL,
    orgao_expedidor VARCHAR(100) NULL,
    data_emissao DATE NULL,
    data_validade DATE NULL,
    arquivo_url VARCHAR(500) NULL,
    observacao VARCHAR(240) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_pessoas_documentos_pessoa (pessoa_id),
    KEY ix_pessoas_documentos_tipo_numero (tipo, numero),
    CONSTRAINT fk_pessoas_documentos_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_pessoas_anexos (
    id BIGINT NOT NULL AUTO_INCREMENT,
    pessoa_id BIGINT NOT NULL,
    nome VARCHAR(200) NOT NULL,
    tipo VARCHAR(100) NULL,
    url VARCHAR(500) NOT NULL,
    observacao VARCHAR(240) NULL,
    data_upload DATETIME(6) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_pessoas_anexos_pessoa (pessoa_id),
    CONSTRAINT fk_pessoas_anexos_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------------------------
-- 2. PAPÉIS DA PESSOA E PRESTADORES
-- As tabelas cad_clientes e cad_fornecedores existentes serão preservadas.
-- --------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS cad_prestadores (
    id BIGINT NOT NULL AUTO_INCREMENT,
    pessoa_id BIGINT NOT NULL,
    codigo VARCHAR(40) NULL,
    tipo_vinculo ENUM('FUNCIONARIO','AUTONOMO','TERCEIRIZADO','PARCEIRO') NOT NULL DEFAULT 'FUNCIONARIO',
    data_inicio DATE NULL,
    data_fim DATE NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'ATIVO',
    valor_hora DECIMAL(18,2) NULL,
    carga_horaria_semanal DECIMAL(6,2) NULL,
    observacoes VARCHAR(600) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_cad_prestadores_pessoa (pessoa_id),
    UNIQUE KEY uk_cad_prestadores_codigo (codigo),
    CONSTRAINT fk_cad_prestadores_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_atividades_profissionais (
    id BIGINT NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(40) NOT NULL,
    nome VARCHAR(160) NOT NULL,
    descricao VARCHAR(300) NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_atividades_profissionais_codigo (codigo),
    UNIQUE KEY uk_atividades_profissionais_nome (nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_prestadores_atividades (
    id BIGINT NOT NULL AUTO_INCREMENT,
    prestador_id BIGINT NOT NULL,
    atividade_profissional_id BIGINT NOT NULL,
    nivel VARCHAR(40) NULL,
    principal TINYINT(1) NOT NULL DEFAULT 0,
    observacoes VARCHAR(300) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    deleted_at DATETIME(6) NULL,
    principal_prestador_id BIGINT
        GENERATED ALWAYS AS (
            CASE WHEN principal = 1 AND deleted_at IS NULL THEN prestador_id ELSE NULL END
        ) STORED,
    PRIMARY KEY (id),
    UNIQUE KEY uk_prestador_atividade (prestador_id, atividade_profissional_id),
    UNIQUE KEY uk_uma_atividade_principal_por_prestador (principal_prestador_id),
    KEY ix_prestadores_atividades_atividade (atividade_profissional_id),
    CONSTRAINT fk_prestadores_atividades_prestador
        FOREIGN KEY (prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT,
    CONSTRAINT fk_prestadores_atividades_atividade
        FOREIGN KEY (atividade_profissional_id)
        REFERENCES cad_atividades_profissionais(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Especialização de prestador para quem atua como mecânico.
-- Campos próprios do mecânico ficam aqui; dados pessoais ficam em cad_pessoas.
CREATE TABLE IF NOT EXISTS cad_mecanicos_v2 (
    id BIGINT NOT NULL AUTO_INCREMENT,
    prestador_id BIGINT NOT NULL,
    nivel_tecnico VARCHAR(40) NULL,
    observacoes VARCHAR(500) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_mecanicos_v2_prestador (prestador_id),
    CONSTRAINT fk_mecanicos_v2_prestador
        FOREIGN KEY (prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_mecanicos_disponibilidades_v2 (
    id BIGINT NOT NULL AUTO_INCREMENT,
    prestador_id BIGINT NOT NULL,
    dia_semana TINYINT NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    capacidade_atendimentos INT NOT NULL DEFAULT 5,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_mecanicos_disp_prestador_dia (prestador_id, dia_semana),
    CONSTRAINT fk_mecanicos_disp_v2_prestador
        FOREIGN KEY (prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT,
    CONSTRAINT ck_mecanicos_disp_dia CHECK (dia_semana BETWEEN 1 AND 7),
    CONSTRAINT ck_mecanicos_disp_horario CHECK (hora_fim > hora_inicio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cad_prestadores_experiencias (
    id BIGINT NOT NULL AUTO_INCREMENT,
    prestador_id BIGINT NOT NULL,
    empresa VARCHAR(200) NOT NULL,
    cargo VARCHAR(160) NOT NULL,
    data_inicio DATE NULL,
    data_fim DATE NULL,
    resumo_atividades VARCHAR(500) NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NULL,
    PRIMARY KEY (id),
    KEY ix_prestadores_experiencias_prestador (prestador_id),
    CONSTRAINT fk_prestadores_experiencias_prestador
        FOREIGN KEY (prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------------------------
-- 3. AJUSTES NAS TABELAS DE PAPÉIS EXISTENTES
-- Execute depois de confirmar que as colunas ainda não existem.
-- --------------------------------------------------------------------------

ALTER TABLE cad_clientes
    ADD COLUMN pessoa_id BIGINT NULL,
    ADD UNIQUE KEY uk_cad_clientes_pessoa (pessoa_id),
    ADD CONSTRAINT fk_cad_clientes_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT;

ALTER TABLE cad_fornecedores
    ADD COLUMN pessoa_id BIGINT NULL,
    ADD UNIQUE KEY uk_cad_fornecedores_pessoa (pessoa_id),
    ADD CONSTRAINT fk_cad_fornecedores_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT;

-- Representantes passam a apontar para uma pessoa cadastrada.
ALTER TABLE cad_fornecedores_representantes
    ADD COLUMN pessoa_id BIGINT NULL,
    ADD KEY ix_fornecedores_representantes_pessoa (pessoa_id),
    ADD CONSTRAINT fk_fornecedores_representantes_pessoa
        FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT;

-- Não removemos cad_mecanicos neste momento. Ele permanece como legado até
-- a migração dos dados e da aplicação para cad_prestadores + cad_mecanicos_v2.
-- A nova estrutura é criada sem quebrar a aplicação atual.

-- --------------------------------------------------------------------------
-- 4. ORDEM DE SERVIÇO
-- --------------------------------------------------------------------------

ALTER TABLE os_itens
    ADD COLUMN tipo_item ENUM('SERVICO','PECA') NULL,
    ADD COLUMN prestador_id BIGINT NULL,
    ADD COLUMN atividade_profissional_id BIGINT NULL,
    ADD KEY ix_os_itens_prestador_atividade (prestador_id, atividade_profissional_id),
    ADD CONSTRAINT fk_os_itens_prestador_atividade
        FOREIGN KEY (prestador_id, atividade_profissional_id)
        REFERENCES cad_prestadores_atividades(prestador_id, atividade_profissional_id)
        ON DELETE RESTRICT;

-- Permite OS sem veículo. O default 0 é removido porque não representa ausência.
ALTER TABLE os_ordens
    MODIFY COLUMN veiculo_id BIGINT NULL;

-- A FK atual do cliente usa CASCADE. Trocar para RESTRICT para preservar OS.
ALTER TABLE os_ordens
    DROP FOREIGN KEY FK_os_ordens_cad_clientes_cliente_id,
    ADD CONSTRAINT fk_os_ordens_cliente
        FOREIGN KEY (cliente_id) REFERENCES cad_clientes(Id) ON DELETE RESTRICT;

-- Pagamentos não devem desaparecer quando uma OS for excluída.
ALTER TABLE os_pagamentos
    DROP FOREIGN KEY FK_os_pagamentos_os_ordens_ordem_servico_id,
    ADD CONSTRAINT fk_os_pagamentos_ordem
        FOREIGN KEY (ordem_servico_id) REFERENCES os_ordens(Id) ON DELETE RESTRICT;

-- Histórico de estoque não deve ser apagado em cascata.
ALTER TABLE est_movimentacoes
    DROP FOREIGN KEY FK_est_movimentacoes_est_pecas_peca_id,
    ADD CONSTRAINT fk_est_movimentacoes_peca
        FOREIGN KEY (peca_id) REFERENCES est_pecas(Id) ON DELETE RESTRICT;

ALTER TABLE est_pecas_historico
    DROP FOREIGN KEY FK_est_pecas_historico_est_pecas_peca_id,
    ADD CONSTRAINT fk_est_pecas_historico_peca
        FOREIGN KEY (peca_id) REFERENCES est_pecas(Id) ON DELETE RESTRICT;

-- --------------------------------------------------------------------------
-- 5. ÍNDICES ÚNICOS/REGRAS A APLICAR APÓS BACKFILL
-- --------------------------------------------------------------------------

-- Primeiro preencher documento_normalizado removendo pontuação/espaços.
-- Só execute depois de resolver duplicidades de CPF/CNPJ:
-- ALTER TABLE cad_pessoas
--   ADD UNIQUE KEY uk_cad_pessoas_documento (documento_normalizado);
--
-- Antes disso, execute:
-- SELECT documento_normalizado, COUNT(*) qtd
-- FROM cad_pessoas
-- WHERE documento_normalizado IS NOT NULL
-- GROUP BY documento_normalizado
-- HAVING COUNT(*) > 1;
--
-- Só torne os campos obrigatórios depois de preencher e validar todos os papéis:
-- ALTER TABLE cad_clientes MODIFY pessoa_id BIGINT NOT NULL;
-- ALTER TABLE cad_fornecedores MODIFY pessoa_id BIGINT NOT NULL;
-- ALTER TABLE cad_fornecedores_representantes MODIFY pessoa_id BIGINT NOT NULL;

-- --------------------------------------------------------------------------
-- 6. REGRAS DE OS_ITENS A APLICAR APÓS CLASSIFICAR OS REGISTROS EXISTENTES
-- --------------------------------------------------------------------------

-- Primeiro classifique todos os itens antigos como SERVICO ou PECA.
-- Em seguida preencha prestador_id + atividade_profissional_id para serviços.
-- Peças devem ter peca_id e não devem ter prestador/atividade.
--
-- Diagnóstico obrigatório:
-- SELECT id, ordem_servico_id, descricao, peca_id, tipo_item,
--        prestador_id, atividade_profissional_id
-- FROM os_itens
-- WHERE tipo_item IS NULL
--    OR (tipo_item = 'SERVICO' AND
--        (prestador_id IS NULL OR atividade_profissional_id IS NULL))
--    OR (tipo_item = 'PECA' AND
--        (peca_id IS NULL OR prestador_id IS NOT NULL
--         OR atividade_profissional_id IS NOT NULL));
--
-- Após zerar o resultado:
-- ALTER TABLE os_itens
--   MODIFY tipo_item ENUM('SERVICO','PECA') NOT NULL;
--
-- ALTER TABLE os_itens
--   ADD CONSTRAINT ck_os_itens_tipo CHECK (
--     (tipo_item = 'SERVICO' AND peca_id IS NULL
--       AND prestador_id IS NOT NULL
--       AND atividade_profissional_id IS NOT NULL)
--     OR
--     (tipo_item = 'PECA' AND peca_id IS NOT NULL
--       AND prestador_id IS NULL
--       AND atividade_profissional_id IS NULL)
--   );

-- --------------------------------------------------------------------------
-- 7. CATÁLOGO INICIAL DE ATIVIDADES (ajustável pelo negócio)
-- --------------------------------------------------------------------------

INSERT INTO cad_atividades_profissionais (codigo, nome, descricao)
VALUES
 ('MEC_GERAL', 'Mecânica geral', 'Diagnóstico e manutenção mecânica geral'),
 ('ELETRICA', 'Elétrica', 'Sistema elétrico, bateria, carga e partida'),
 ('INJECAO', 'Injeção eletrônica', 'Diagnóstico e manutenção de injeção eletrônica'),
 ('FREIOS', 'Freios', 'Manutenção do sistema de freios'),
 ('TRANSMISSAO', 'Transmissão', 'Corrente, coroa, pinhão e transmissão'),
 ('SUSPENSAO', 'Suspensão', 'Manutenção de suspensão dianteira e traseira'),
 ('MOTOR', 'Motor', 'Manutenção e reparação de motores'),
 ('PNEUS', 'Pneus e rodas', 'Pneus, rodas, alinhamento e balanceamento')
ON DUPLICATE KEY UPDATE
    descricao = VALUES(descricao);

-- --------------------------------------------------------------------------
-- 8. CONSULTAS DE VALIDAÇÃO PÓS-MIGRAÇÃO
-- --------------------------------------------------------------------------

-- Papéis sem pessoa:
-- SELECT COUNT(*) FROM cad_clientes WHERE pessoa_id IS NULL;
-- SELECT COUNT(*) FROM cad_fornecedores WHERE pessoa_id IS NULL;
-- SELECT COUNT(*) FROM cad_fornecedores_representantes WHERE pessoa_id IS NULL;
--
-- Pessoa com extensão incompatível:
-- SELECT p.id, p.tipo_pessoa,
--        (pf.pessoa_id IS NOT NULL) tem_pf,
--        (pj.pessoa_id IS NOT NULL) tem_pj
-- FROM cad_pessoas p
-- LEFT JOIN cad_pessoas_pf pf ON pf.pessoa_id = p.id
-- LEFT JOIN cad_pessoas_pj pj ON pj.pessoa_id = p.id
-- WHERE (p.tipo_pessoa = 'PF' AND (pf.pessoa_id IS NULL OR pj.pessoa_id IS NOT NULL))
--    OR (p.tipo_pessoa = 'PJ' AND (pj.pessoa_id IS NULL OR pf.pessoa_id IS NOT NULL));
--
-- Mais de uma atividade principal por prestador:
-- SELECT prestador_id, COUNT(*) qtd
-- FROM cad_prestadores_atividades
-- WHERE principal = 1 AND deleted_at IS NULL
-- GROUP BY prestador_id HAVING COUNT(*) > 1;
--
-- Itens de serviço sem executor/atividade:
-- SELECT COUNT(*) FROM os_itens
-- WHERE tipo_item = 'SERVICO'
--   AND (prestador_id IS NULL OR atividade_profissional_id IS NULL);

-- FIM DA ETAPA 2 - DDL DE EXPANSÃO
