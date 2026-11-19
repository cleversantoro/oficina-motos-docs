CREATE TABLE cad_tipos_contato (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(30) NOT NULL,
    descricao VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (id),
    UNIQUE KEY uk_tipos_contato_codigo (codigo)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;


INSERT INTO cad_tipos_contato (codigo, descricao) VALUES
('TELEFONE', 'Telefone'),
('CELULAR', 'Celular'),
('EMAIL', 'Email'),
('WHATSAPP', 'WhatsApp'),
('WEBSITE', 'Website');


CREATE TABLE cad_tipos_endereco (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(30) NOT NULL,
    descricao VARCHAR(80) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (id),
    UNIQUE KEY uk_tipos_endereco_codigo (codigo)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;


INSERT INTO cad_tipos_endereco (codigo, descricao) VALUES
('RESIDENCIAL', 'Residencial'),
('COMERCIAL', 'Comercial'),
('COBRANCA', 'Cobrança'),
('ENTREGA', 'Entrega'),
('OUTRO', 'Outro');

CREATE TABLE cad_origens_cadastro (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    codigo VARCHAR(30) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    PRIMARY KEY (id),
    UNIQUE KEY uk_origens_cadastro_codigo (codigo)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;


INSERT INTO cad_origens_cadastro (codigo, descricao) VALUES
('MANUAL', 'Cadastro manual'),
('SITE', 'Website'),
('INDICACAO', 'Indicação'),
('IMPORTACAO', 'Importação'),
('INTEGRACAO', 'Integração');

CREATE TABLE cad_pessoas (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    tipo_pessoa TINYINT UNSIGNED NOT NULL
        COMMENT '1 = Pessoa Física; 2 = Pessoa Jurídica',

    nome VARCHAR(180) NOT NULL,
    nome_exibicao VARCHAR(180) DEFAULT NULL,

    documento VARCHAR(14) NOT NULL,

    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    observacoes VARCHAR(500) DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    UNIQUE KEY uk_pessoas_documento (documento),

    KEY idx_pessoas_nome (nome),
    KEY idx_pessoas_nome_exibicao (nome_exibicao),
    KEY idx_pessoas_tipo (tipo_pessoa),
    KEY idx_pessoas_ativo (ativo),

    CONSTRAINT chk_pessoas_tipo
        CHECK (tipo_pessoa IN (1, 2)),

    CONSTRAINT chk_pessoas_documento
        CHECK (
            (tipo_pessoa = 1 AND CHAR_LENGTH(documento) = 11)
            OR
            (tipo_pessoa = 2 AND CHAR_LENGTH(documento) = 14)
        )

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;


  CREATE TABLE cad_pessoas_pf (
    pessoa_id BIGINT UNSIGNED NOT NULL,

    rg VARCHAR(20) DEFAULT NULL,

    data_nascimento DATE DEFAULT NULL,

    genero VARCHAR(30) DEFAULT NULL,

    estado_civil VARCHAR(30) DEFAULT NULL,

    profissao VARCHAR(120) DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (pessoa_id),

    CONSTRAINT fk_pessoas_pf_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

  CREATE TABLE cad_pessoas_pj (
    pessoa_id BIGINT UNSIGNED NOT NULL,

    inscricao_estadual VARCHAR(30) DEFAULT NULL,

    inscricao_municipal VARCHAR(30) DEFAULT NULL,

    responsavel_pessoa_id BIGINT UNSIGNED DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (pessoa_id),

    KEY idx_pessoas_pj_responsavel (responsavel_pessoa_id),

    CONSTRAINT fk_pessoas_pj_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_pessoas_pj_responsavel
        FOREIGN KEY (responsavel_pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT chk_pessoas_pj_responsavel
        CHECK (
            responsavel_pessoa_id IS NULL
            OR responsavel_pessoa_id <> pessoa_id
        )

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cad_pessoas_contatos (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    pessoa_id BIGINT UNSIGNED NOT NULL,

    tipo_contato_id INT UNSIGNED NOT NULL,

    descricao VARCHAR(80) DEFAULT NULL,

    valor VARCHAR(255) NOT NULL,

    possui_whatsapp BOOLEAN NOT NULL DEFAULT FALSE,

    principal BOOLEAN NOT NULL DEFAULT FALSE,

    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    observacoes VARCHAR(255) DEFAULT NULL,

    pessoa_id_principal BIGINT UNSIGNED
        GENERATED ALWAYS AS (
            CASE
                WHEN principal = TRUE THEN pessoa_id
                ELSE NULL
            END
        ) STORED,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    KEY idx_pessoas_contatos_pessoa (pessoa_id),

    KEY idx_pessoas_contatos_tipo (tipo_contato_id),

    UNIQUE KEY uk_contato_principal (
        pessoa_id_principal,
        tipo_contato_id
    ),

    CONSTRAINT fk_pessoas_contatos_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_pessoas_contatos_tipo
        FOREIGN KEY (tipo_contato_id)
        REFERENCES cad_tipos_contato (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

pessoa_id_principal BIGINT UNSIGNED
GENERATED ALWAYS AS (
    CASE
        WHEN principal = TRUE THEN pessoa_id
        ELSE NULL
    END
) STORED

CREATE TABLE cad_pessoas_enderecos (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    pessoa_id BIGINT UNSIGNED NOT NULL,

    tipo_endereco_id INT UNSIGNED NOT NULL,

    descricao VARCHAR(80) DEFAULT NULL,

    cep VARCHAR(8) NOT NULL,

    logradouro VARCHAR(180) NOT NULL,

    numero VARCHAR(20) DEFAULT NULL,

    complemento VARCHAR(120) DEFAULT NULL,

    bairro VARCHAR(100) DEFAULT NULL,

    cidade VARCHAR(120) NOT NULL,

    uf CHAR(2) NOT NULL,

    pais CHAR(2) NOT NULL DEFAULT 'BR',

    ponto_referencia VARCHAR(180) DEFAULT NULL,

    principal BOOLEAN NOT NULL DEFAULT FALSE,

    ativo BOOLEAN NOT NULL DEFAULT TRUE,

    pessoa_id_principal BIGINT UNSIGNED
        GENERATED ALWAYS AS (
            CASE
                WHEN principal = TRUE THEN pessoa_id
                ELSE NULL
            END
        ) STORED,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    KEY idx_pessoas_enderecos_pessoa (pessoa_id),

    KEY idx_pessoas_enderecos_tipo (tipo_endereco_id),

    KEY idx_pessoas_enderecos_cep (cep),

    KEY idx_pessoas_enderecos_cidade_uf (cidade, uf),

    UNIQUE KEY uk_endereco_principal (
        pessoa_id_principal,
        tipo_endereco_id
    ),

    CONSTRAINT fk_pessoas_enderecos_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_pessoas_enderecos_tipo
        FOREIGN KEY (tipo_endereco_id)
        REFERENCES cad_tipos_endereco (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT chk_pessoas_enderecos_uf
        CHECK (CHAR_LENGTH(uf) = 2),

    CONSTRAINT chk_pessoas_enderecos_cep
        CHECK (CHAR_LENGTH(cep) = 8)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cad_clientes (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    pessoa_id BIGINT UNSIGNED NOT NULL,

    codigo BIGINT UNSIGNED NOT NULL,

    status TINYINT UNSIGNED NOT NULL DEFAULT 1
        COMMENT '0 = Inativo; 1 = Ativo; 2 = Suspenso; 3 = Bloqueado',

    vip BOOLEAN NOT NULL DEFAULT FALSE,

    observacoes VARCHAR(500) DEFAULT NULL,

    origem_cadastro_id INT UNSIGNED DEFAULT NULL,

    origem_id BIGINT UNSIGNED DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    UNIQUE KEY uk_clientes_pessoa (pessoa_id),

    UNIQUE KEY uk_clientes_codigo (codigo),

    KEY idx_clientes_status (status),

    KEY idx_clientes_vip (vip),

    CONSTRAINT fk_clientes_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_clientes_origem
        FOREIGN KEY (origem_cadastro_id)
        REFERENCES cad_origens_cadastro (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT chk_clientes_status
        CHECK (status IN (0, 1, 2, 3))

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cad_fornecedores (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    pessoa_id BIGINT UNSIGNED NOT NULL,

    codigo BIGINT UNSIGNED NOT NULL,

    status TINYINT UNSIGNED NOT NULL DEFAULT 1
        COMMENT '0 = Inativo; 1 = Ativo; 2 = Suspenso; 3 = Bloqueado',

    observacoes VARCHAR(500) DEFAULT NULL,

    origem_cadastro_id INT UNSIGNED DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    UNIQUE KEY uk_fornecedores_pessoa (pessoa_id),

    UNIQUE KEY uk_fornecedores_codigo (codigo),

    KEY idx_fornecedores_status (status),

    CONSTRAINT fk_fornecedores_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT fk_fornecedores_origem
        FOREIGN KEY (origem_cadastro_id)
        REFERENCES cad_origens_cadastro (id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    CONSTRAINT chk_fornecedores_status
        CHECK (status IN (0, 1, 2, 3))

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cad_mecanicos (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,

    pessoa_id BIGINT UNSIGNED NOT NULL,

    codigo BIGINT UNSIGNED NOT NULL,

    status TINYINT UNSIGNED NOT NULL DEFAULT 1
        COMMENT '0 = Inativo; 1 = Ativo; 2 = Afastado; 3 = Desligado',

    data_admissao DATE DEFAULT NULL,

    data_desligamento DATE DEFAULT NULL,

    especialidade VARCHAR(120) DEFAULT NULL,

    observacoes VARCHAR(500) DEFAULT NULL,

    created_at DATETIME(6) NOT NULL
        DEFAULT CURRENT_TIMESTAMP(6),

    updated_at DATETIME(6) DEFAULT NULL
        ON UPDATE CURRENT_TIMESTAMP(6),

    PRIMARY KEY (id),

    UNIQUE KEY uk_mecanicos_pessoa (pessoa_id),

    UNIQUE KEY uk_mecanicos_codigo (codigo),

    KEY idx_mecanicos_status (status),

    CONSTRAINT fk_mecanicos_pessoa
        FOREIGN KEY (pessoa_id)
        REFERENCES cad_pessoas (id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    CONSTRAINT chk_mecanicos_status
        CHECK (status IN (0, 1, 2, 3)),

    CONSTRAINT chk_mecanicos_datas
        CHECK (
            data_desligamento IS NULL
            OR data_admissao IS NULL
            OR data_desligamento >= data_admissao
        )

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;

DELIMITER $$

CREATE TRIGGER trg_pessoas_pf_before_insert
BEFORE INSERT ON cad_pessoas_pf
FOR EACH ROW
BEGIN
    DECLARE v_tipo TINYINT UNSIGNED;

    SELECT tipo_pessoa
      INTO v_tipo
      FROM cad_pessoas
     WHERE id = NEW.pessoa_id;

    IF v_tipo <> 1 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'A especializacao PF exige uma pessoa fisica.';
    END IF;

    IF EXISTS (
        SELECT 1
          FROM cad_pessoas_pj
         WHERE pessoa_id = NEW.pessoa_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'A pessoa ja possui especializacao PJ.';
    END IF;
END$$


CREATE TRIGGER trg_pessoas_pj_before_insert
BEFORE INSERT ON cad_pessoas_pj
FOR EACH ROW
BEGIN
    DECLARE v_tipo TINYINT UNSIGNED;

    SELECT tipo_pessoa
      INTO v_tipo
      FROM cad_pessoas
     WHERE id = NEW.pessoa_id;

    IF v_tipo <> 2 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'A especializacao PJ exige uma pessoa juridica.';
    END IF;

    IF EXISTS (
        SELECT 1
          FROM cad_pessoas_pf
         WHERE pessoa_id = NEW.pessoa_id
    ) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT =
                'A pessoa ja possui especializacao PF.';
    END IF;
END$$

DELIMITER ;

START TRANSACTION;

-- 1. Criar a pessoa
INSERT INTO cad_pessoas (
    tipo_pessoa,
    nome,
    nome_exibicao,
    documento
)
VALUES (
    1,
    'Joao da Silva',
    'Joao',
    '12345678901'
);

SET @pessoa_id = LAST_INSERT_ID();

-- 2. Criar a especializacao PF
INSERT INTO cad_pessoas_pf (
    pessoa_id,
    rg,
    data_nascimento,
    profissao
)
VALUES (
    @pessoa_id,
    '123456789',
    '1990-05-15',
    'Mecanico'
);

-- 3. Criar o papel de cliente
INSERT INTO cad_clientes (
    pessoa_id,
    codigo,
    status,
    vip,
    origem_cadastro_id
)
VALUES (
    @pessoa_id,
    1001,
    1,
    FALSE,
    1
);

-- 4. Cadastrar telefone
INSERT INTO cad_pessoas_contatos (
    pessoa_id,
    tipo_contato_id,
    descricao,
    valor,
    possui_whatsapp,
    principal
)
VALUES (
    @pessoa_id,
    2,
    'Celular pessoal',
    '11999990000',
    TRUE,
    TRUE
);

-- 5. Cadastrar email
INSERT INTO cad_pessoas_contatos (
    pessoa_id,
    tipo_contato_id,
    descricao,
    valor,
    principal
)
VALUES (
    @pessoa_id,
    3,
    'Email pessoal',
    'joao@email.com',
    TRUE
);

COMMIT;

START TRANSACTION;

INSERT INTO cad_pessoas (
    tipo_pessoa,
    nome,
    nome_exibicao,
    documento
)
VALUES (
    2,
    'Oficina Exemplo LTDA',
    'Oficina Exemplo',
    '12345678000199'
);

SET @empresa_id = LAST_INSERT_ID();

INSERT INTO cad_pessoas_pj (
    pessoa_id,
    inscricao_estadual,
    inscricao_municipal,
    responsavel_pessoa_id
)
VALUES (
    @empresa_id,
    '123456789',
    '987654',
    1
);

INSERT INTO cad_clientes (
    pessoa_id,
    codigo,
    status
)
VALUES (
    @empresa_id,
    1002,
    1
);

COMMIT;

SELECT
    c.id AS cliente_id,
    c.codigo,

    p.id AS pessoa_id,
    p.tipo_pessoa,
    p.nome,
    p.nome_exibicao,
    p.documento,

    c.status,
    c.vip,

    pf.data_nascimento,
    pf.profissao,

    pj.inscricao_estadual,
    pj.inscricao_municipal,

    pj.responsavel_pessoa_id

FROM cad_clientes c

INNER JOIN cad_pessoas p
    ON p.id = c.pessoa_id

LEFT JOIN cad_pessoas_pf pf
    ON pf.pessoa_id = p.id

LEFT JOIN cad_pessoas_pj pj
    ON pj.pessoa_id = p.id

WHERE c.id = 1;

SELECT
    pc.id,
    tc.codigo AS tipo_contato,
    pc.descricao,
    pc.valor,
    pc.possui_whatsapp,
    pc.principal

FROM cad_pessoas_contatos pc

INNER JOIN cad_tipos_contato tc
    ON tc.id = pc.tipo_contato_id

WHERE pc.pessoa_id = 1
  AND pc.ativo = TRUE

ORDER BY
    pc.principal DESC,
    tc.descricao;

SELECT
    pe.id,
    te.codigo AS tipo_endereco,
    pe.cep,
    pe.logradouro,
    pe.numero,
    pe.complemento,
    pe.bairro,
    pe.cidade,
    pe.uf,
    pe.principal

FROM cad_pessoas_enderecos pe

INNER JOIN cad_tipos_endereco te
    ON te.id = pe.tipo_endereco_id

WHERE pe.pessoa_id = 1
  AND pe.ativo = TRUE

ORDER BY
    pe.principal DESC,
    te.descricao;

SELECT id
FROM cad_tipos_contato
WHERE codigo = 'CELULAR';

