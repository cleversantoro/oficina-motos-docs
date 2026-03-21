-- ============================================================
-- SEGMENTOS (pré-requisito)
-- ============================================================
INSERT INTO `cad_fornecedores_segmentos` (`Id`, `Codigo`, `Nome`, `Descricao`, `Ativo`, `Created_At`) VALUES
(1, 'PECAS',  'Peças e Componentes', 'Distribuidoras e fabricantes de peças originais e paralelas', 1, NOW()),
(2, 'LUBRIF', 'Lubrificantes e Fluidos', 'Óleos, fluidos de freio, graxas e produtos químicos automotivos', 1, NOW());

-- ============================================================
-- FORNECEDOR 1 — Distribuidora de Peças
-- ============================================================
INSERT INTO `cad_fornecedores` (
  `Id`, `Codigo`, `Tipo`, `Razao_Social`, `Nome_Fantasia`, `Documento`,
  `Inscricao_Estadual`, `Inscricao_Municipal`, `Segmento_Principal_Id`,
  `Website`, `Email`, `Telefone_Principal`, `Status`,
  `Condicao_Pagamento_Padrao`, `Prazo_Entrega_Medio`, `Nota_Media`,
  `Observacoes`, `Prazo_Garantia_Padrao`, `Termos_Negociados`,
  `Atendimento_Personalizado`, `Retirada_Local`,
  `Rating_Logistica`, `Rating_Qualidade`, `Created_At`
) VALUES (
  301, 'FORN-0001', 'PJ', 'Distribuidora AutoParts Sul Ltda', 'AutoParts Sul',
  '12.345.678/0001-90', '123.456.789.012', '12.345/001', 1,
  'https://www.autopartssul.com.br', 'vendas@autopartssul.com.br', '(11) 3344-5566', 'ATIVO',
  'Boleto 28/56 dias', 3, 4.50,
  'Fornecedor preferencial para peças Honda e Yamaha. Lote mínimo 10 unidades para desconto.',
  '6 meses contra defeito de fabricação',
  'Desconto de 8% em pedidos acima de R$ 2.000. Frete grátis acima de R$ 5.000.',
  1, 1, 4.60, 4.40, NOW()
);

-- Endereços — Fornecedor 1
INSERT INTO `cad_fornecedores_enderecos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`,
  `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Observacao`, `Created_At`
) VALUES
(1001, 301, 'Matriz',          '04343-001', 'Av. das Indústrias',    '1000', 'Santo André',     'São Paulo',   'SP', 'Brasil', 'Galpão 4', 1, 'Endereço fiscal e administrativo', NOW()),
(1002, 301, 'Centro de Dist.', '07750-000', 'Rod. Anhanguera',       'KM 20','Área Industrial',  'Cajamar',     'SP', 'Brasil', NULL,       0, 'CD — retirada de pedidos grandes', NOW());

-- Contatos — Fornecedor 1
INSERT INTO `cad_fornecedores_contatos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`
) VALUES
(2001, 301, 'Telefone',  '(11) 3344-5566', 1, 'Comercial — seg a sex 8h–18h', NOW()),
(2002, 301, 'WhatsApp',  '(11) 98877-6655', 0, 'Pedidos urgentes',            NOW()),
(2003, 301, 'Email',     'vendas@autopartssul.com.br', 0, NULL,                NOW());

-- Representantes — Fornecedor 1
INSERT INTO `cad_fornecedores_representantes` (
  `Id`, `Fornecedor_Id`, `Nome`, `Cargo`, `Email`, `Telefone`, `Celular`,
  `Preferencia_Contato`, `Principal`, `Observacoes`, `Created_At`
) VALUES
(3001, 301, 'Roberto Almeida',   'Gerente de Contas – Região Sul', 'roberto@autopartssul.com.br', NULL,           '(11) 98877-6655', 'WhatsApp', 1, 'Atende exclusivamente nossa conta',   NOW()),
(3002, 301, 'Central de Vendas', 'Televendas Geral',               'vendas@autopartssul.com.br',  '0800 777 9999', NULL,              'Telefone', 0, NULL,                                  NOW());

-- Dados Bancários — Fornecedor 1
INSERT INTO `cad_fornecedores_bancos` (
  `Id`, `Fornecedor_Id`, `Banco`, `Agencia`, `Conta`, `Digito`, `Tipo_Conta`,
  `Pix_Chave`, `Observacoes`, `Principal`, `Created_At`
) VALUES (
  4001, 301, 'Banco Itaú (341)', '1234', '56789', '0', 'Corrente',
  '12.345.678/0001-90', 'Conta principal para boletos e transferências', 1, NOW()
);

-- Documentos — Fornecedor 1
INSERT INTO `cad_fornecedores_documentos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Numero`, `Data_Emissao`, `Data_Validade`,
  `Orgao_Expedidor`, `Arquivo_Url`, `Observacoes`, `Created_At`
) VALUES
(5001, 301, 'Contrato Social',     'CS-2018-0042',  '2018-03-15', NULL,         'JUCESP', NULL, NULL,                    NOW()),
(5002, 301, 'Certidão Negativa',   'CN-2025-11987', '2025-11-01', '2026-05-01', 'Receita Federal', NULL, 'Renovar semestralmente', NOW());

-- Certificações — Fornecedor 1
INSERT INTO `cad_fornecedores_certificacoes` (
  `Id`, `Fornecedor_Id`, `Titulo`, `Instituicao`, `Data_Emissao`, `Data_Validade`,
  `Codigo_Certificacao`, `Escopo`, `Created_At`
) VALUES (
  6001, 301, 'ISO 9001:2015 — Gestão da Qualidade', 'Bureau Veritas',
  '2023-04-10', '2026-04-09', 'BV-ISO9001-2023-0341',
  'Distribuição de peças automotivas e motociclísticas', NOW()
);

-- Avaliações — Fornecedor 1
INSERT INTO `cad_fornecedores_avaliacoes` (
  `Id`, `Fornecedor_Id`, `Data_Avaliacao`, `Avaliado_Por`, `Categoria`,
  `Nota`, `Comentarios`, `Created_At`
) VALUES
(7001, 301, '2025-12-10 10:00:00', 'Carlos Souza',  'Entrega',   4.50, 'Prazo cumprido, embalagem ok. Pequeno atraso na última remessa.', NOW()),
(7002, 301, '2026-02-05 14:30:00', 'Maria Oliveira','Qualidade',  4.50, 'Peças originais, sem defeitos no lote de 50 unidades.',           NOW());

-- Segmento vínculo — Fornecedor 1
INSERT INTO `cad_fornecedores_segmentos_rel` (
  `Id`, `Fornecedor_Id`, `Segmento_Id`, `Principal`, `Observacoes`, `Created_At`
) VALUES (
  8001, 301, 1, 1, 'Segmento principal — peças Honda, Yamaha e Suzuki', NOW()
);


-- ============================================================
-- FORNECEDOR 2 — Lubrificantes
-- ============================================================
INSERT INTO `cad_fornecedores` (
  `Id`, `Codigo`, `Tipo`, `Razao_Social`, `Nome_Fantasia`, `Documento`,
  `Inscricao_Estadual`, `Inscricao_Municipal`, `Segmento_Principal_Id`,
  `Website`, `Email`, `Telefone_Principal`, `Status`,
  `Condicao_Pagamento_Padrao`, `Prazo_Entrega_Medio`, `Nota_Media`,
  `Observacoes`, `Prazo_Garantia_Padrao`, `Termos_Negociados`,
  `Atendimento_Personalizado`, `Retirada_Local`,
  `Rating_Logistica`, `Rating_Qualidade`, `Created_At`
) VALUES (
  302, 'FORN-0002', 'PJ', 'Petromax Lubrificantes Comercial Ltda', 'Petromax',
  '98.765.432/0001-11', '987.654.321.098', '98.765/002', 2,
  'https://www.petromax.com.br', 'contato@petromax.com.br', '(21) 2233-4455', 'ATIVO',
  'Boleto 30 dias / Cartão 2x sem juros', 2, 4.20,
  'Revendedor autorizado Mobil e Castrol. Entrega via motoboy para pedidos até 20 litros.',
  '12 meses (embalagem lacrada)',
  'Desconto progressivo: 5% (R$500+), 10% (R$1.500+). Bonificação trimestral em galões.',
  1, 0, 4.30, 4.10, NOW()
);

-- Endereços — Fornecedor 2
INSERT INTO `cad_fornecedores_enderecos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`,
  `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`, `Observacao`, `Created_At`
) VALUES (
  1003, 302, 'Sede', '20040-020', 'Rua dos Comerciantes', '450', 'Centro',
  'Rio de Janeiro', 'RJ', 'Brasil', 'Sala 12', 1, 'Endereço comercial e fiscal', NOW()
);

-- Contatos — Fornecedor 2
INSERT INTO `cad_fornecedores_contatos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`, `Created_At`
) VALUES
(2004, 302, 'Telefone', '(21) 2233-4455', 1, 'SAC — seg a sex 8h–17h',  NOW()),
(2005, 302, 'Email',    'contato@petromax.com.br', 0, 'Pedidos e NF-e', NOW());

-- Representantes — Fornecedor 2
INSERT INTO `cad_fornecedores_representantes` (
  `Id`, `Fornecedor_Id`, `Nome`, `Cargo`, `Email`, `Telefone`, `Celular`,
  `Preferencia_Contato`, `Principal`, `Observacoes`, `Created_At`
) VALUES (
  3003, 302, 'Fernanda Lima', 'Representante Comercial – SP e RJ',
  'fernanda@petromax.com.br', '(21) 2233-4455', '(21) 99912-3456',
  'Email', 1, 'Visita mensal — trazer lista de pedidos antecipada', NOW()
);

-- Dados Bancários — Fornecedor 2
INSERT INTO `cad_fornecedores_bancos` (
  `Id`, `Fornecedor_Id`, `Banco`, `Agencia`, `Conta`, `Digito`, `Tipo_Conta`,
  `Pix_Chave`, `Observacoes`, `Principal`, `Created_At`
) VALUES (
  4002, 302, 'Bradesco (237)', '0987', '12345', '6', 'Corrente',
  '98.765.432/0001-11', 'Conta para TED e boletos', 1, NOW()
);

-- Documentos — Fornecedor 2
INSERT INTO `cad_fornecedores_documentos` (
  `Id`, `Fornecedor_Id`, `Tipo`, `Numero`, `Data_Emissao`, `Data_Validade`,
  `Orgao_Expedidor`, `Arquivo_Url`, `Observacoes`, `Created_At`
) VALUES
(5003, 302, 'Contrato Social',    'CS-2015-7721',  '2015-07-20', NULL,         'JUCERJ', NULL, NULL, NOW()),
(5004, 302, 'Licença Ambiental',  'LA-RJ-2024-883','2024-01-10', '2026-12-31', 'INEA-RJ', NULL, 'Obrigatória para armazenamento de inflamáveis', NOW());

-- Certificações — Fornecedor 2
INSERT INTO `cad_fornecedores_certificacoes` (
  `Id`, `Fornecedor_Id`, `Titulo`, `Instituicao`, `Data_Emissao`, `Data_Validade`,
  `Codigo_Certificacao`, `Escopo`, `Created_At`
) VALUES (
  6002, 302, 'ISO 14001:2015 — Gestão Ambiental', 'DNV GL',
  '2022-09-01', '2025-08-31', 'DNV-ISO14001-2022-1120',
  'Armazenamento, distribuição e comercialização de lubrificantes e fluidos automotivos', NOW()
);

-- Avaliações — Fornecedor 2
INSERT INTO `cad_fornecedores_avaliacoes` (
  `Id`, `Fornecedor_Id`, `Data_Avaliacao`, `Avaliado_Por`, `Categoria`,
  `Nota`, `Comentarios`, `Created_At`
) VALUES
(7003, 302, '2025-11-20 09:00:00', 'João Pereira', 'Entrega',   4.00, 'Motoboy pontual, mas embalagem poderia ser mais resistente.', NOW()),
(7004, 302, '2026-01-15 16:00:00', 'Carlos Souza', 'Qualidade', 4.50, 'Mobil 1 e Castrol GTX sempre originais e dentro da validade.', NOW());

-- Segmento vínculo — Fornecedor 2
INSERT INTO `cad_fornecedores_segmentos_rel` (
  `Id`, `Fornecedor_Id`, `Segmento_Id`, `Principal`, `Observacoes`, `Created_At`
) VALUES (
  8002, 302, 2, 1, 'Segmento principal — lubrificantes Mobil, Castrol e Shell', NOW()
);