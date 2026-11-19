-- ============================================================================
-- OFICINA MOTOS - Banco V2 (criação integral)
-- Banco: oficina_db_new | MySQL 8.0.44+ | InnoDB | utf8mb4
-- Baseado no dump legado de oficina_db e no DER V2 aprovado.
-- ATENÇÃO: cria estrutura vazia; não migra dados do banco antigo.
-- ============================================================================

CREATE DATABASE IF NOT EXISTS `oficina_db_new`
  CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `oficina_db_new`;
SET NAMES utf8mb4;
SET time_zone = '+00:00';
SET FOREIGN_KEY_CHECKS = 0;

-- ---------------------------------------------------------------------------
-- CADASTRO: núcleo de pessoas e papéis
-- ---------------------------------------------------------------------------
CREATE TABLE cad_pessoas (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  codigo BIGINT UNSIGNED NOT NULL,
  tipo_pessoa ENUM('PF','PJ') NOT NULL,
  documento VARCHAR(20) NOT NULL,
  nome VARCHAR(180) NOT NULL,
  nome_exibicao VARCHAR(180) NOT NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1,
  observacoes VARCHAR(600) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  deleted_at DATETIME(6) NULL,
  PRIMARY KEY (id), UNIQUE KEY uq_cad_pessoas_codigo (codigo),
  UNIQUE KEY uq_cad_pessoas_documento (documento), KEY ix_cad_pessoas_nome (nome),
  KEY ix_cad_pessoas_tipo_ativo (tipo_pessoa,ativo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_pf (
  pessoa_id BIGINT UNSIGNED NOT NULL,
  rg VARCHAR(30) NULL, data_nascimento DATE NULL, genero VARCHAR(30) NULL,
  estado_civil VARCHAR(30) NULL, profissao VARCHAR(120) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (pessoa_id),
  CONSTRAINT fk_pessoas_pf_pessoa FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_pj (
  pessoa_id BIGINT UNSIGNED NOT NULL,
  razao_social VARCHAR(200) NOT NULL, nome_fantasia VARCHAR(200) NULL,
  inscricao_estadual VARCHAR(50) NULL, inscricao_municipal VARCHAR(50) NULL,
  responsavel VARCHAR(160) NULL, website VARCHAR(200) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (pessoa_id),
  CONSTRAINT fk_pessoas_pj_pessoa FOREIGN KEY (pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_contatos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  tipo VARCHAR(40) NOT NULL, valor VARCHAR(180) NOT NULL, principal TINYINT(1) NOT NULL DEFAULT 0,
  observacao VARCHAR(240) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_pessoas_contatos_pessoa(pessoa_id),
  CONSTRAINT fk_pessoas_contatos_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_enderecos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  tipo VARCHAR(40) NOT NULL DEFAULT 'PRINCIPAL', cep VARCHAR(12) NULL,
  logradouro VARCHAR(200) NOT NULL, numero VARCHAR(20) NOT NULL, bairro VARCHAR(120) NOT NULL,
  cidade VARCHAR(120) NOT NULL, estado VARCHAR(60) NOT NULL, pais VARCHAR(80) NOT NULL DEFAULT 'Brasil',
  complemento VARCHAR(160) NULL, principal TINYINT(1) NOT NULL DEFAULT 0, observacao VARCHAR(240) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_pessoas_enderecos_pessoa(pessoa_id), KEY ix_pessoas_enderecos_cep(cep),
  CONSTRAINT fk_pessoas_enderecos_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_documentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  tipo VARCHAR(50) NOT NULL, numero VARCHAR(80) NOT NULL, data_emissao DATE NULL,
  data_validade DATE NULL, orgao_expedidor VARCHAR(100) NULL, arquivo_url VARCHAR(500) NULL,
  observacoes VARCHAR(240) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_pessoas_documentos_pessoa(pessoa_id),
  CONSTRAINT fk_pessoas_documentos_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_pessoas_anexos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  nome VARCHAR(200) NOT NULL, tipo VARCHAR(100) NOT NULL, url VARCHAR(500) NOT NULL,
  observacao VARCHAR(240) NULL, tamanho_bytes BIGINT UNSIGNED NULL, mime_type VARCHAR(120) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_pessoas_anexos_pessoa(pessoa_id),
  CONSTRAINT fk_pessoas_anexos_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_clientes_origens (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(120) NOT NULL,
  descricao VARCHAR(240) NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_clientes_origens_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_clientes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  codigo BIGINT UNSIGNED NOT NULL, status VARCHAR(30) NOT NULL DEFAULT 'ATIVO', vip TINYINT(1) NOT NULL DEFAULT 0,
  origem_id BIGINT UNSIGNED NULL, observacoes VARCHAR(500) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_clientes_pessoa(pessoa_id), UNIQUE KEY uq_clientes_codigo(codigo), KEY ix_clientes_status(status),
  CONSTRAINT fk_clientes_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_clientes_origem FOREIGN KEY(origem_id) REFERENCES cad_clientes_origens(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_clientes_financeiro (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, cliente_id BIGINT UNSIGNED NOT NULL,
  limite_credito DECIMAL(18,2) NULL, prazo_pagamento INT NULL, bloqueado TINYINT(1) NOT NULL DEFAULT 0,
  observacoes VARCHAR(500) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_cliente_financeiro(cliente_id),
  CONSTRAINT fk_cliente_financeiro_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_clientes_indicacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, cliente_id BIGINT UNSIGNED NOT NULL,
  indicador_nome VARCHAR(160) NOT NULL, indicador_telefone VARCHAR(30) NULL, observacao VARCHAR(240) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_cliente_indicacoes_cliente(cliente_id),
  CONSTRAINT fk_cliente_indicacoes_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_clientes_lgpd_consentimentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, cliente_id BIGINT UNSIGNED NOT NULL,
  tipo INT NOT NULL, aceito TINYINT(1) NOT NULL, data_consentimento DATETIME(6) NULL,
  valido_ate DATETIME(6) NULL, observacoes VARCHAR(240) NULL, canal VARCHAR(80) NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_cliente_lgpd_cliente(cliente_id),
  CONSTRAINT fk_cliente_lgpd_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_segmentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(120) NOT NULL, descricao VARCHAR(240) NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_fornecedor_segmento_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  codigo VARCHAR(40) NOT NULL, tipo VARCHAR(50) NOT NULL, segmento_principal_id BIGINT UNSIGNED NULL,
  status VARCHAR(30) NOT NULL DEFAULT 'ATIVO', condicao_pagamento_padrao VARCHAR(120) NULL,
  prazo_entrega_medio INT NULL, nota_media DECIMAL(4,2) NULL, prazo_garantia_padrao VARCHAR(120) NULL,
  termos_negociados VARCHAR(240) NULL, atendimento_personalizado TINYINT(1) NOT NULL DEFAULT 0,
  retirada_local TINYINT(1) NOT NULL DEFAULT 0, rating_logistica DECIMAL(4,2) NULL,
  rating_qualidade DECIMAL(4,2) NULL, observacoes VARCHAR(600) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_fornecedores_pessoa(pessoa_id), UNIQUE KEY uq_fornecedores_codigo(codigo),
  CONSTRAINT fk_fornecedores_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fornecedores_segmento FOREIGN KEY(segmento_principal_id) REFERENCES cad_fornecedores_segmentos(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_segmentos_rel (
  fornecedor_id BIGINT UNSIGNED NOT NULL, segmento_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), PRIMARY KEY(fornecedor_id,segmento_id),
  CONSTRAINT fk_fornec_segmentos_rel_fornecedor FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fornec_segmentos_rel_segmento FOREIGN KEY(segmento_id) REFERENCES cad_fornecedores_segmentos(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_representantes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, fornecedor_id BIGINT UNSIGNED NOT NULL,
  pessoa_id BIGINT UNSIGNED NOT NULL, cargo VARCHAR(120) NULL, principal TINYINT(1) NOT NULL DEFAULT 0,
  preferencial TINYINT(1) NOT NULL DEFAULT 0, observacoes VARCHAR(240) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_fornecedor_representante(fornecedor_id,pessoa_id),
  CONSTRAINT fk_representantes_fornecedor FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT,
  CONSTRAINT fk_representantes_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_avaliacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, fornecedor_id BIGINT UNSIGNED NOT NULL,
  data_avaliacao DATETIME(6) NOT NULL, avaliado_por VARCHAR(120) NULL, categoria VARCHAR(60) NULL,
  nota DECIMAL(4,2) NOT NULL, comentarios VARCHAR(400) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_fornecedor_avaliacoes(fornecedor_id,data_avaliacao),
  CONSTRAINT fk_fornecedor_avaliacoes FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_bancos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, fornecedor_id BIGINT UNSIGNED NOT NULL,
  banco VARCHAR(120) NOT NULL, agencia VARCHAR(30) NULL, conta VARCHAR(30) NULL, digito VARCHAR(5) NULL,
  tipo_conta VARCHAR(50) NULL, pix_chave VARCHAR(160) NULL, observacoes VARCHAR(240) NULL,
  principal TINYINT(1) NOT NULL DEFAULT 0, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_fornecedor_bancos(fornecedor_id),
  CONSTRAINT fk_fornecedor_bancos FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_fornecedores_certificacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, fornecedor_id BIGINT UNSIGNED NOT NULL,
  titulo VARCHAR(160) NOT NULL, instituicao VARCHAR(160) NULL, data_emissao DATE NULL,
  data_validade DATE NULL, codigo_certificacao VARCHAR(60) NULL, escopo VARCHAR(200) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_fornecedor_certificacoes(fornecedor_id),
  CONSTRAINT fk_fornecedor_certificacoes FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_prestadores (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, pessoa_id BIGINT UNSIGNED NOT NULL,
  codigo VARCHAR(40) NOT NULL, tipo_vinculo VARCHAR(30) NOT NULL DEFAULT 'INTERNO',
  status VARCHAR(30) NOT NULL DEFAULT 'ATIVO', data_inicio DATE NULL, data_fim DATE NULL,
  valor_hora DECIMAL(18,2) NULL, observacoes VARCHAR(500) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_prestadores_pessoa(pessoa_id), UNIQUE KEY uq_prestadores_codigo(codigo),
  CONSTRAINT fk_prestadores_pessoa FOREIGN KEY(pessoa_id) REFERENCES cad_pessoas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_mecanicos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, prestador_id BIGINT UNSIGNED NOT NULL,
  matricula VARCHAR(40) NULL, nivel VARCHAR(40) NULL, data_admissao DATE NULL,
  observacoes VARCHAR(500) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_mecanicos_prestador(prestador_id), UNIQUE KEY uq_mecanicos_matricula(matricula),
  CONSTRAINT fk_mecanicos_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_atividades_profissionais (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, codigo VARCHAR(40) NOT NULL,
  nome VARCHAR(120) NOT NULL, descricao VARCHAR(300) NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_atividades_codigo(codigo), UNIQUE KEY uq_atividades_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_prestadores_atividades (
  prestador_id BIGINT UNSIGNED NOT NULL, atividade_profissional_id BIGINT UNSIGNED NOT NULL,
  nivel VARCHAR(40) NULL, principal TINYINT(1) NOT NULL DEFAULT 0, ativo TINYINT(1) NOT NULL DEFAULT 1,
  prestador_principal_id BIGINT UNSIGNED GENERATED ALWAYS AS (CASE WHEN principal = 1 THEN prestador_id ELSE NULL END) STORED,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(prestador_id,atividade_profissional_id), UNIQUE KEY uq_prestador_atividade_principal(prestador_principal_id),
  CONSTRAINT fk_prest_ativ_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT,
  CONSTRAINT fk_prest_ativ_atividade FOREIGN KEY(atividade_profissional_id) REFERENCES cad_atividades_profissionais(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_prestadores_disponibilidades (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, prestador_id BIGINT UNSIGNED NOT NULL,
  dia_semana TINYINT UNSIGNED NOT NULL, hora_inicio TIME NOT NULL, hora_fim TIME NOT NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_prest_disp_prestador(prestador_id),
  CONSTRAINT fk_prest_disp_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT,
  CONSTRAINT ck_prest_disp_dia CHECK(dia_semana BETWEEN 1 AND 7),
  CONSTRAINT ck_prest_disp_hora CHECK(hora_fim > hora_inicio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_prestadores_experiencias (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, prestador_id BIGINT UNSIGNED NOT NULL,
  empresa VARCHAR(160) NOT NULL, cargo VARCHAR(120) NULL, descricao VARCHAR(500) NULL,
  data_inicio DATE NULL, data_fim DATE NULL, atual TINYINT(1) NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_prest_exp_prestador(prestador_id),
  CONSTRAINT fk_prest_exp_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cad_prestadores_certificacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, prestador_id BIGINT UNSIGNED NOT NULL,
  titulo VARCHAR(160) NOT NULL, instituicao VARCHAR(160) NULL, data_emissao DATE NULL,
  data_validade DATE NULL, codigo_certificacao VARCHAR(60) NULL, arquivo_url VARCHAR(500) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_prest_cert_prestador(prestador_id),
  CONSTRAINT fk_prest_cert_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ---------------------------------------------------------------------------
-- VEÍCULOS
-- ---------------------------------------------------------------------------
CREATE TABLE cad_veiculos_marcas (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(100) NOT NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_veiculo_marca_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE cad_veiculos_modelos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, marca_id BIGINT UNSIGNED NOT NULL,
  nome VARCHAR(120) NOT NULL, cilindrada INT NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_veiculo_modelo(marca_id,nome),
  CONSTRAINT fk_veiculo_modelo_marca FOREIGN KEY(marca_id) REFERENCES cad_veiculos_marcas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE cad_veiculos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, cliente_id BIGINT UNSIGNED NOT NULL,
  marca_id BIGINT UNSIGNED NULL, modelo_id BIGINT UNSIGNED NULL, codigo VARCHAR(40) NULL,
  placa VARCHAR(10) NULL, renavam VARCHAR(20) NULL, chassi VARCHAR(40) NULL,
  ano_fabricacao SMALLINT NULL, ano_modelo SMALLINT NULL, cor VARCHAR(40) NULL,
  combustivel VARCHAR(30) NULL, quilometragem INT NULL, observacoes VARCHAR(500) NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_veiculos_placa(placa), UNIQUE KEY uq_veiculos_chassi(chassi),
  KEY ix_veiculos_cliente(cliente_id),
  CONSTRAINT fk_veiculos_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT,
  CONSTRAINT fk_veiculos_marca FOREIGN KEY(marca_id) REFERENCES cad_veiculos_marcas(id) ON DELETE SET NULL,
  CONSTRAINT fk_veiculos_modelo FOREIGN KEY(modelo_id) REFERENCES cad_veiculos_modelos(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ---------------------------------------------------------------------------
-- ESTOQUE
-- ---------------------------------------------------------------------------
CREATE TABLE est_categorias (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(120) NOT NULL,
  descricao VARCHAR(240) NULL, categoria_pai_id BIGINT UNSIGNED NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_est_categoria_nome(nome),
  CONSTRAINT fk_est_categoria_pai FOREIGN KEY(categoria_pai_id) REFERENCES est_categorias(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_fabricantes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(160) NOT NULL,
  documento VARCHAR(30) NULL, website VARCHAR(200) NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_est_fabricante_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_localizacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, codigo VARCHAR(40) NOT NULL,
  nome VARCHAR(120) NOT NULL, descricao VARCHAR(240) NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_est_localizacao_codigo(codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_pecas (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, codigo VARCHAR(60) NOT NULL,
  codigo_barras VARCHAR(80) NULL, nome VARCHAR(180) NOT NULL, descricao VARCHAR(500) NULL,
  categoria_id BIGINT UNSIGNED NULL, fabricante_id BIGINT UNSIGNED NULL, localizacao_id BIGINT UNSIGNED NULL,
  unidade VARCHAR(20) NOT NULL DEFAULT 'UN', quantidade_estoque DECIMAL(18,3) NOT NULL DEFAULT 0,
  estoque_minimo DECIMAL(18,3) NOT NULL DEFAULT 0, estoque_maximo DECIMAL(18,3) NULL,
  custo_medio DECIMAL(18,2) NOT NULL DEFAULT 0, preco_venda DECIMAL(18,2) NOT NULL DEFAULT 0,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_est_pecas_codigo(codigo), UNIQUE KEY uq_est_pecas_barras(codigo_barras),
  KEY ix_est_pecas_nome(nome),
  CONSTRAINT fk_est_pecas_categoria FOREIGN KEY(categoria_id) REFERENCES est_categorias(id) ON DELETE SET NULL,
  CONSTRAINT fk_est_pecas_fabricante FOREIGN KEY(fabricante_id) REFERENCES est_fabricantes(id) ON DELETE SET NULL,
  CONSTRAINT fk_est_pecas_localizacao FOREIGN KEY(localizacao_id) REFERENCES est_localizacoes(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_pecas_fornecedores (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, peca_id BIGINT UNSIGNED NOT NULL,
  fornecedor_id BIGINT UNSIGNED NOT NULL, codigo_fornecedor VARCHAR(80) NULL,
  custo_atual DECIMAL(18,2) NULL, prazo_entrega_dias INT NULL, principal TINYINT(1) NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_peca_fornecedor(peca_id,fornecedor_id),
  CONSTRAINT fk_peca_fornec_peca FOREIGN KEY(peca_id) REFERENCES est_pecas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_peca_fornec_fornecedor FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_pecas_anexos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, peca_id BIGINT UNSIGNED NOT NULL,
  nome VARCHAR(200) NOT NULL, tipo VARCHAR(100) NOT NULL, url VARCHAR(500) NOT NULL,
  observacao VARCHAR(240) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_est_pecas_anexos_peca(peca_id),
  CONSTRAINT fk_est_pecas_anexos_peca FOREIGN KEY(peca_id) REFERENCES est_pecas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_movimentacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, peca_id BIGINT UNSIGNED NOT NULL,
  tipo VARCHAR(30) NOT NULL, quantidade DECIMAL(18,3) NOT NULL,
  custo_unitario DECIMAL(18,2) NULL, origem_tipo VARCHAR(40) NULL, origem_id BIGINT UNSIGNED NULL,
  observacao VARCHAR(300) NULL, usuario_id BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_est_mov_peca_data(peca_id,created_at), KEY ix_est_mov_origem(origem_tipo,origem_id),
  CONSTRAINT fk_est_mov_peca FOREIGN KEY(peca_id) REFERENCES est_pecas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE est_pecas_historico (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, peca_id BIGINT UNSIGNED NOT NULL,
  campo VARCHAR(80) NOT NULL, valor_anterior VARCHAR(500) NULL, valor_novo VARCHAR(500) NULL,
  usuario_id BIGINT UNSIGNED NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_est_pecas_hist(peca_id,created_at),
  CONSTRAINT fk_est_pecas_hist_peca FOREIGN KEY(peca_id) REFERENCES est_pecas(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ---------------------------------------------------------------------------
-- ORDEM DE SERVIÇO
-- ---------------------------------------------------------------------------
CREATE TABLE os_ordens (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, numero BIGINT UNSIGNED NOT NULL,
  cliente_id BIGINT UNSIGNED NOT NULL, veiculo_id BIGINT UNSIGNED NULL,
  descricao_problema VARCHAR(1000) NOT NULL, diagnostico TEXT NULL,
  status VARCHAR(40) NOT NULL DEFAULT 'ABERTA', prioridade VARCHAR(20) NOT NULL DEFAULT 'NORMAL',
  data_abertura DATETIME(6) NOT NULL, previsao_entrega DATETIME(6) NULL, data_conclusao DATETIME(6) NULL,
  valor_pecas DECIMAL(18,2) NOT NULL DEFAULT 0, valor_servicos DECIMAL(18,2) NOT NULL DEFAULT 0,
  desconto DECIMAL(18,2) NOT NULL DEFAULT 0, valor_total DECIMAL(18,2) NOT NULL DEFAULT 0,
  observacoes VARCHAR(1000) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_os_numero(numero), KEY ix_os_cliente(cliente_id), KEY ix_os_veiculo(veiculo_id), KEY ix_os_status(status), KEY ix_os_abertura(data_abertura),
  CONSTRAINT fk_os_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_veiculo FOREIGN KEY(veiculo_id) REFERENCES cad_veiculos(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_itens (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  tipo VARCHAR(20) NOT NULL, descricao VARCHAR(500) NOT NULL,
  peca_id BIGINT UNSIGNED NULL, atividade_profissional_id BIGINT UNSIGNED NULL,
  prestador_id BIGINT UNSIGNED NULL, quantidade DECIMAL(18,3) NOT NULL DEFAULT 1,
  valor_unitario DECIMAL(18,2) NOT NULL DEFAULT 0, desconto DECIMAL(18,2) NOT NULL DEFAULT 0,
  total DECIMAL(18,2) NOT NULL DEFAULT 0, status VARCHAR(30) NOT NULL DEFAULT 'PENDENTE',
  observacoes VARCHAR(500) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_os_itens_ordem(ordem_servico_id), KEY ix_os_itens_prestador(prestador_id),
  CONSTRAINT fk_os_itens_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_itens_peca FOREIGN KEY(peca_id) REFERENCES est_pecas(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_itens_atividade FOREIGN KEY(atividade_profissional_id) REFERENCES cad_atividades_profissionais(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_itens_prestador FOREIGN KEY(prestador_id) REFERENCES cad_prestadores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_anexos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  nome VARCHAR(200) NOT NULL, tipo VARCHAR(100) NOT NULL, url VARCHAR(500) NOT NULL,
  observacao VARCHAR(240) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_os_anexos_ordem(ordem_servico_id),
  CONSTRAINT fk_os_anexos_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_checklists (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  item VARCHAR(200) NOT NULL, categoria VARCHAR(80) NULL, status VARCHAR(30) NOT NULL DEFAULT 'PENDENTE',
  observacao VARCHAR(300) NULL, responsavel_prestador_id BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_os_checklists_ordem(ordem_servico_id),
  CONSTRAINT fk_os_checklists_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_checklists_prestador FOREIGN KEY(responsavel_prestador_id) REFERENCES cad_prestadores(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_observacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  usuario_id BIGINT UNSIGNED NULL, texto VARCHAR(1000) NOT NULL, tipo VARCHAR(30) NOT NULL DEFAULT 'INTERNA',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_os_observacoes_ordem(ordem_servico_id),
  CONSTRAINT fk_os_observacoes_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_avaliacoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  cliente_id BIGINT UNSIGNED NOT NULL, nota TINYINT UNSIGNED NOT NULL, comentario VARCHAR(1000) NULL,
  data_avaliacao DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_os_avaliacao(ordem_servico_id),
  CONSTRAINT fk_os_avaliacoes_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT,
  CONSTRAINT fk_os_avaliacoes_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT,
  CONSTRAINT ck_os_avaliacao_nota CHECK(nota BETWEEN 1 AND 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_ordens_historico (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  usuario_id BIGINT UNSIGNED NULL, data_alteracao DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  campo VARCHAR(120) NULL, valor_antigo VARCHAR(500) NULL, valor_novo VARCHAR(500) NULL,
  PRIMARY KEY(id), KEY ix_os_hist_ordem_data(ordem_servico_id,data_alteracao),
  CONSTRAINT fk_os_hist_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE os_pagamentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, ordem_servico_id BIGINT UNSIGNED NOT NULL,
  valor DECIMAL(18,2) NOT NULL, status VARCHAR(30) NOT NULL, data_pagamento DATETIME(6) NULL,
  metodo VARCHAR(120) NULL, observacao VARCHAR(240) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_os_pagamentos_ordem(ordem_servico_id),
  CONSTRAINT fk_os_pagamentos_ordem FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ---------------------------------------------------------------------------
-- FINANCEIRO
-- ---------------------------------------------------------------------------
CREATE TABLE fin_metodos_pagamento (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(100) NOT NULL,
  tipo VARCHAR(40) NOT NULL, ativo TINYINT(1) NOT NULL DEFAULT 1,
  taxa_percentual DECIMAL(8,4) NOT NULL DEFAULT 0, taxa_fixa DECIMAL(18,2) NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_fin_metodo_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_contas_pagar (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, fornecedor_id BIGINT UNSIGNED NULL,
  descricao VARCHAR(240) NOT NULL, documento VARCHAR(80) NULL, valor_original DECIMAL(18,2) NOT NULL,
  valor_pago DECIMAL(18,2) NOT NULL DEFAULT 0, data_emissao DATE NULL, data_vencimento DATE NOT NULL,
  status VARCHAR(30) NOT NULL DEFAULT 'ABERTA', observacoes VARCHAR(500) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_fin_pagar_vencimento(data_vencimento), KEY ix_fin_pagar_status(status),
  CONSTRAINT fk_fin_pagar_fornecedor FOREIGN KEY(fornecedor_id) REFERENCES cad_fornecedores(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_contas_receber (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, cliente_id BIGINT UNSIGNED NULL,
  ordem_servico_id BIGINT UNSIGNED NULL, descricao VARCHAR(240) NOT NULL,
  valor_original DECIMAL(18,2) NOT NULL, valor_recebido DECIMAL(18,2) NOT NULL DEFAULT 0,
  data_emissao DATE NULL, data_vencimento DATE NOT NULL, status VARCHAR(30) NOT NULL DEFAULT 'ABERTA',
  observacoes VARCHAR(500) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), KEY ix_fin_receber_vencimento(data_vencimento), KEY ix_fin_receber_status(status),
  CONSTRAINT fk_fin_receber_cliente FOREIGN KEY(cliente_id) REFERENCES cad_clientes(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fin_receber_os FOREIGN KEY(ordem_servico_id) REFERENCES os_ordens(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_pagamentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, conta_pagar_id BIGINT UNSIGNED NULL,
  conta_receber_id BIGINT UNSIGNED NULL, metodo_pagamento_id BIGINT UNSIGNED NULL,
  valor DECIMAL(18,2) NOT NULL, data_pagamento DATETIME(6) NOT NULL,
  tipo VARCHAR(20) NOT NULL, status VARCHAR(30) NOT NULL DEFAULT 'CONFIRMADO',
  referencia_externa VARCHAR(120) NULL, observacao VARCHAR(300) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_fin_pagamento_data(data_pagamento),
  CONSTRAINT fk_fin_pag_pagar FOREIGN KEY(conta_pagar_id) REFERENCES fin_contas_pagar(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fin_pag_receber FOREIGN KEY(conta_receber_id) REFERENCES fin_contas_receber(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fin_pag_metodo FOREIGN KEY(metodo_pagamento_id) REFERENCES fin_metodos_pagamento(id) ON DELETE SET NULL,
  CONSTRAINT ck_fin_pagamento_vinculo CHECK ((conta_pagar_id IS NOT NULL) + (conta_receber_id IS NOT NULL) = 1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_lancamentos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, tipo VARCHAR(20) NOT NULL,
  categoria VARCHAR(100) NULL, descricao VARCHAR(240) NOT NULL, valor DECIMAL(18,2) NOT NULL,
  data_competencia DATE NOT NULL, data_lancamento DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  origem_tipo VARCHAR(40) NULL, origem_id BIGINT UNSIGNED NULL, observacoes VARCHAR(500) NULL,
  PRIMARY KEY(id), KEY ix_fin_lancamentos_competencia(data_competencia), KEY ix_fin_lancamentos_origem(origem_tipo,origem_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_historico (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, entidade VARCHAR(80) NOT NULL,
  entidade_id BIGINT UNSIGNED NOT NULL, acao VARCHAR(40) NOT NULL,
  dados_anteriores JSON NULL, dados_novos JSON NULL, usuario_id BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_fin_historico_entidade(entidade,entidade_id), KEY ix_fin_historico_data(created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE fin_anexos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, conta_pagar_id BIGINT UNSIGNED NULL,
  conta_receber_id BIGINT UNSIGNED NULL, pagamento_id BIGINT UNSIGNED NULL,
  nome VARCHAR(200) NOT NULL, tipo VARCHAR(100) NOT NULL, url VARCHAR(500) NOT NULL,
  observacao VARCHAR(240) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id),
  CONSTRAINT fk_fin_anexo_pagar FOREIGN KEY(conta_pagar_id) REFERENCES fin_contas_pagar(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fin_anexo_receber FOREIGN KEY(conta_receber_id) REFERENCES fin_contas_receber(id) ON DELETE RESTRICT,
  CONSTRAINT fk_fin_anexo_pagamento FOREIGN KEY(pagamento_id) REFERENCES fin_pagamentos(id) ON DELETE RESTRICT,
  CONSTRAINT ck_fin_anexo_vinculo CHECK ((conta_pagar_id IS NOT NULL) + (conta_receber_id IS NOT NULL) + (pagamento_id IS NOT NULL) = 1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ---------------------------------------------------------------------------
-- SEGURANÇA: usuários são independentes de cad_pessoas
-- ---------------------------------------------------------------------------
CREATE TABLE seg_modulos (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(80) NOT NULL,
  descricao VARCHAR(240) NULL, icone VARCHAR(100) NULL, rota VARCHAR(200) NULL,
  modulo_pai_id BIGINT UNSIGNED NULL, ordem INT NOT NULL DEFAULT 0, ativo TINYINT(1) NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_seg_modulos_nome(nome),
  CONSTRAINT fk_seg_modulo_pai FOREIGN KEY(modulo_pai_id) REFERENCES seg_modulos(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_perfis (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(80) NOT NULL,
  descricao VARCHAR(240) NULL, nivel INT NOT NULL DEFAULT 0, status INT NOT NULL DEFAULT 1,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_seg_perfis_nome(nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_permissoes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, modulo_id BIGINT UNSIGNED NOT NULL,
  acao VARCHAR(30) NOT NULL, descricao VARCHAR(200) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_seg_permissao(modulo_id,acao),
  CONSTRAINT fk_seg_permissao_modulo FOREIGN KEY(modulo_id) REFERENCES seg_modulos(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_perfis_permissoes (
  perfil_id BIGINT UNSIGNED NOT NULL, permissao_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), PRIMARY KEY(perfil_id,permissao_id),
  CONSTRAINT fk_seg_perfil_perm_perfil FOREIGN KEY(perfil_id) REFERENCES seg_perfis(id) ON DELETE RESTRICT,
  CONSTRAINT fk_seg_perfil_perm_permissao FOREIGN KEY(permissao_id) REFERENCES seg_permissoes(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_usuarios (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, nome VARCHAR(160) NOT NULL,
  email VARCHAR(160) NOT NULL, login VARCHAR(80) NOT NULL, senha VARCHAR(255) NOT NULL,
  telefone VARCHAR(30) NULL, foto_url VARCHAR(500) NULL, status INT NOT NULL DEFAULT 1,
  ultimo_login DATETIME(6) NULL, token_reset VARCHAR(255) NULL, token_reset_expira_em DATETIME(6) NULL,
  tentativas_login INT NOT NULL DEFAULT 0, bloqueado_ate DATETIME(6) NULL, criado_por BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6), deleted_at DATETIME(6) NULL,
  PRIMARY KEY(id), UNIQUE KEY uq_seg_usuario_email(email), UNIQUE KEY uq_seg_usuario_login(login),
  CONSTRAINT fk_seg_usuario_criado_por FOREIGN KEY(criado_por) REFERENCES seg_usuarios(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_usuarios_perfis (
  usuario_id BIGINT UNSIGNED NOT NULL, perfil_id BIGINT UNSIGNED NOT NULL,
  ativo TINYINT(1) NOT NULL DEFAULT 1, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(usuario_id,perfil_id),
  CONSTRAINT fk_seg_usuario_perfil_usuario FOREIGN KEY(usuario_id) REFERENCES seg_usuarios(id) ON DELETE RESTRICT,
  CONSTRAINT fk_seg_usuario_perfil_perfil FOREIGN KEY(perfil_id) REFERENCES seg_perfis(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_refresh_tokens (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, usuario_id BIGINT UNSIGNED NOT NULL,
  token_hash VARCHAR(255) NOT NULL, expira_em DATETIME(6) NOT NULL, revogado_em DATETIME(6) NULL,
  motivo_revogacao VARCHAR(160) NULL, ip_criacao VARCHAR(45) NULL, user_agent_criacao VARCHAR(500) NULL,
  ultimo_uso_em DATETIME(6) NULL, created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), UNIQUE KEY uq_seg_refresh_hash(token_hash), KEY ix_seg_refresh_usuario(usuario_id),
  CONSTRAINT fk_seg_refresh_usuario FOREIGN KEY(usuario_id) REFERENCES seg_usuarios(id) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE seg_audit_log (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT, usuario_id BIGINT UNSIGNED NULL,
  login VARCHAR(80) NULL, acao VARCHAR(30) NOT NULL, modulo VARCHAR(80) NULL,
  tabela VARCHAR(80) NULL, registro_id VARCHAR(40) NULL, descricao VARCHAR(500) NULL,
  dados_antes JSON NULL, dados_depois JSON NULL, ip VARCHAR(45) NULL, user_agent VARCHAR(500) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY(id), KEY ix_seg_audit_usuario(usuario_id), KEY ix_seg_audit_tabela_registro(tabela,registro_id), KEY ix_seg_audit_data(created_at),
  CONSTRAINT fk_seg_audit_usuario FOREIGN KEY(usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- FKs de auditoria de usuário adicionadas após a criação de seg_usuarios.
ALTER TABLE est_movimentacoes
  ADD CONSTRAINT fk_est_mov_usuario FOREIGN KEY (usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL;
ALTER TABLE est_pecas_historico
  ADD CONSTRAINT fk_est_pecas_hist_usuario FOREIGN KEY (usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL;
ALTER TABLE os_observacoes
  ADD CONSTRAINT fk_os_observacoes_usuario FOREIGN KEY (usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL;
ALTER TABLE os_ordens_historico
  ADD CONSTRAINT fk_os_hist_usuario FOREIGN KEY (usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL;
ALTER TABLE fin_historico
  ADD CONSTRAINT fk_fin_historico_usuario FOREIGN KEY (usuario_id) REFERENCES seg_usuarios(id) ON DELETE SET NULL;

-- ---------------------------------------------------------------------------
-- Catálogos iniciais de atividades profissionais (editáveis depois)
-- ---------------------------------------------------------------------------
INSERT INTO cad_atividades_profissionais (codigo,nome,descricao) VALUES
 ('MEC_GERAL','Mecânica geral','Manutenção mecânica geral de motocicletas'),
 ('ELETRICA','Elétrica','Diagnóstico e manutenção do sistema elétrico'),
 ('INJECAO','Injeção eletrônica','Diagnóstico e manutenção de injeção eletrônica'),
 ('TRANSMISSAO','Transmissão','Manutenção de embreagem, corrente e transmissão'),
 ('FREIOS','Freios','Manutenção do sistema de freios'),
 ('SUSPENSAO','Suspensão','Manutenção de suspensão dianteira e traseira'),
 ('PNEUS','Pneus e rodas','Montagem, balanceamento e reparos de pneus e rodas');

SET FOREIGN_KEY_CHECKS = 1;

-- ---------------------------------------------------------------------------
-- CHECKLIST PÓS-CRIAÇÃO
-- ---------------------------------------------------------------------------
SELECT 'oficina_db_new criado' AS resultado;
SELECT COUNT(*) AS total_tabelas
FROM information_schema.tables
WHERE table_schema = DATABASE() AND table_type = 'BASE TABLE';

-- Regras estruturais importantes:
-- 1) OS pode existir sem veículo: os_ordens.veiculo_id é NULL.
-- 2) Prestador executor é indicado por os_itens.prestador_id.
-- 3) Atividade executada é indicada por os_itens.atividade_profissional_id.
-- 4) Prestador pode possuir várias atividades em cad_prestadores_atividades.
-- 5) Não há FK de seg_usuarios para cad_pessoas.
-- 6) Exclusão física é restrita em registros históricos/financeiros/OS/estoque.
-- 7) Anexos de pessoas, OS, peças e financeiro permanecem em tabelas separadas.
-- 8) A coluna gerada + índice único em cad_prestadores_atividades garante no
--    máximo uma atividade principal por prestador.
