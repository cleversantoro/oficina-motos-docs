# Oficina Motos — Etapa 2: DDL e plano de migração

## 1. Escopo e premissas

- Banco atual: `oficina_db`.
- SGBD identificado no dump: MySQL `8.0.44`.
- Engine e charset predominantes: InnoDB / utf8mb4.
- O dump contém estrutura, mas não contém registros de negócio. Portanto, este plano não presume quantidade de pessoas duplicadas, órfãos ou itens de OS sem classificação.
- Estratégia escolhida: **Expand → Backfill → Validate → Switch → Contract**. O sistema continua funcionando durante a expansão; as tabelas antigas só são removidas depois do corte e da validação.

## 2. Decisões do DER consolidadas

| Regra | Decisão |
|---|---|
| OS sem veículo | Permitida; `os_ordens.veiculo_id` nullable |
| Prestadores por OS | Múltiplos; o executor é informado por item de serviço |
| Atividade principal | No máximo uma atividade principal por prestador |
| Anexos | Pessoas centralizadas em `cad_pessoas_anexos`; anexos de OS, estoque e financeiro continuam separados |
| Usuários | `seg_usuarios` independente de `cad_pessoas` |
| Representantes | São pessoas (`cad_pessoas`) vinculadas a fornecedores |
| Catálogo profissional | Único para todos os prestadores |
| Mecânico | Especialização de `cad_prestadores`, não um cadastro pessoal independente |

## 3. Arquivos entregues

- `oficina_motos_etapa2_ddl_mysql8.sql`: DDL de expansão do núcleo de pessoas/prestadores, alterações necessárias nas tabelas atuais, restrições de OS e consultas de validação.

O SQL é uma migração de expansão, não um dump de criação de banco vazio. As tabelas existentes de estoque, financeiro, OS e segurança são preservadas. A estrutura legada de clientes, fornecedores e mecânicos permanece disponível durante o backfill.

## 4. Modelo físico alvo

### 4.1 Pessoas

- `cad_pessoas`: identidade comum, PF/PJ, CPF/CNPJ principal, nome e auditoria.
- `cad_pessoas_pf`: atributos exclusivos de pessoa física.
- `cad_pessoas_pj`: atributos exclusivos de pessoa jurídica.
- `cad_pessoas_contatos`: telefones, e-mails, WhatsApp e demais contatos.
- `cad_pessoas_enderecos`: endereços compartilhados por todos os papéis.
- `cad_pessoas_documentos`: documentos complementares; CPF/CNPJ principal fica em `cad_pessoas.documento`.
- `cad_pessoas_anexos`: anexos gerais da pessoa.

Uma pessoa poderá ter simultaneamente os papéis de cliente, fornecedor e prestador. A mesma pessoa não deve ser replicada para cada papel.

### 4.2 Papéis

- `cad_clientes.pessoa_id` → `cad_pessoas.id`.
- `cad_fornecedores.pessoa_id` → `cad_pessoas.id`.
- `cad_prestadores.pessoa_id` → `cad_pessoas.id`.
- `cad_fornecedores_representantes.pessoa_id` → `cad_pessoas.id`.

O relacionamento pessoa/papel é 1:0..1 em cada tabela de papel. Uma pessoa pode, portanto, ter mais de um papel diferente.

### 4.3 Prestadores e atividades

- `cad_prestadores`: vínculo profissional/comercial e dados de contratação.
- `cad_atividades_profissionais`: catálogo único.
- `cad_prestadores_atividades`: associação N:N, com nível e indicação de atividade principal.
- `cad_mecanicos_v2`: extensão para prestadores que também são mecânicos.
- Disponibilidade e experiência passam a referenciar o prestador, não um cadastro pessoal isolado de mecânico.

A chave única `(prestador_id, atividade_profissional_id)` evita associação repetida. A coluna gerada `principal_prestador_id` permite garantir por índice único uma única atividade principal ativa por prestador.

### 4.4 Ordem de serviço

`os_itens` passa a discriminar:

- `SERVICO`: exige `prestador_id` e `atividade_profissional_id`; não referencia peça.
- `PECA`: exige `peca_id`; não recebe prestador nem atividade.

A FK composta `(prestador_id, atividade_profissional_id)` garante que a atividade selecionada pertence ao prestador selecionado. Isso evita atribuir a um profissional uma atividade que não está cadastrada para ele.

Uma OS poderá ter serviços executados por prestadores diferentes. O responsável é registrado no item de serviço, não na OS como um único mecânico global.

## 5. Plano de migração

### Fase 0 — Preparação e segurança

1. Criar backup físico/lógico completo.
2. Restaurar o backup em ambiente de homologação.
3. Registrar contagens das tabelas envolvidas.
4. Colocar a aplicação em modo de manutenção para a janela final de migração.
5. Garantir que o backend atual não execute gravações durante o corte.
6. Versionar o SQL e registrar o hash do backup usado no ensaio.

**Não execute o script diretamente em produção antes de ensaiá-lo em uma cópia.** MySQL executa commits implícitos em DDL; não conte com rollback transacional para desfazer a migração.

### Fase 1 — Expandir o esquema

Executar as seções 1 a 4 do arquivo SQL em homologação:

1. Criar o núcleo `cad_pessoas`.
2. Criar extensões PF/PJ, contatos, endereços, documentos e anexos.
3. Criar `cad_prestadores`, catálogo de atividades e associação prestador/atividade.
4. Criar a especialização `cad_mecanicos_v2`.
5. Adicionar `pessoa_id` aos papéis existentes.
6. Adicionar colunas de executor e atividade em `os_itens`.
7. Permitir `veiculo_id = NULL`.
8. Trocar exclusões em cascata perigosas por `RESTRICT`.

O script não remove `cad_mecanicos`, os contatos antigos, os endereços antigos nem os anexos antigos. Eles são fontes para o backfill e devem permanecer até o corte.

### Fase 2 — Diagnóstico dos dados

Antes do backfill, levantar:

- Clientes, fornecedores e mecânicos com CPF/CNPJ/documento ausente.
- Documentos iguais entre cadastros de papéis diferentes.
- Documentos repetidos dentro do mesmo papel.
- Representantes sem dados mínimos de identificação.
- Contatos e endereços marcados como principais em duplicidade.
- Itens de OS sem `peca_id` e sem indicação clara de serviço.
- OS com `mecanico_id` preenchido, mas sem executor identificável por item.
- OS com `veiculo_id = 0` ou outro valor sem correspondência.

Exemplo de diagnóstico para documentos nas tabelas atuais:

```sql
SELECT 'CLIENTE' origem, Id origem_id, Documento documento
FROM cad_clientes
UNION ALL
SELECT 'FORNECEDOR', Id, Documento
FROM cad_fornecedores
UNION ALL
SELECT 'MECANICO', Id, Documento_Principal
FROM cad_mecanicos;
```

A normalização deve remover pontuação e espaços antes da comparação. Não una pessoas apenas pelo nome: nomes iguais não provam identidade. Se o documento estiver ausente ou divergente, a conciliação deve ser manual.

### Fase 3 — Backfill de pessoas e papéis

Ordem recomendada:

1. Montar uma planilha/tabela de conciliação com `origem`, `origem_id`, documento normalizado e pessoa de destino.
2. Agrupar cadastros que comprovadamente representam a mesma pessoa.
3. Criar uma única linha em `cad_pessoas` para cada identidade confirmada.
4. Criar a extensão PF ou PJ correspondente.
5. Preencher `cad_clientes.pessoa_id`.
6. Preencher `cad_fornecedores.pessoa_id`.
7. Criar `cad_prestadores` para cada mecânico/prestador e preencher a relação com `cad_pessoas`.
8. Criar `cad_mecanicos_v2` para os prestadores que são mecânicos.
9. Criar pessoas para representantes e preencher `cad_fornecedores_representantes.pessoa_id`.
10. Copiar contatos e endereços das tabelas antigas para as tabelas compartilhadas.
11. Copiar documentos e anexos pessoais para as tabelas centralizadas.
12. Copiar experiências, disponibilidades, certificações e especialidades para as estruturas novas.

**Regra crítica:** não executar um `INSERT ... SELECT` cego que crie uma pessoa por linha de cada papel. Isso recriaria justamente a duplicidade que o novo modelo pretende eliminar. A tabela de conciliação deve determinar quando registros de cliente, fornecedor e mecânico apontam para a mesma pessoa.

### Fase 4 — Migrar atividades profissionais

1. Migrar as especialidades atuais de `cad_mecanicos_especialidades` para `cad_atividades_profissionais`.
2. Resolver nomes/códigos duplicados no catálogo.
3. Migrar `cad_mecanicos_especialidades_rel` para `cad_prestadores_atividades`.
4. Migrar `Nivel` para `nivel`.
5. Migrar `Principal` preservando apenas uma atividade principal ativa por prestador.
6. Migrar `cad_mecanicos.Especialidade_Principal_Id` apenas como fonte auxiliar de conciliação; não criar uma segunda fonte de verdade.

A atividade principal deve ser uma só. Se houver mais de uma marcada no legado, escolher uma com validação do negócio antes de inserir.

### Fase 5 — Migrar itens da OS

1. Classificar cada linha de `os_itens` como `SERVICO` ou `PECA`.
2. Para `PECA`, manter `peca_id`; prestador e atividade devem ficar nulos.
3. Para `SERVICO`, localizar o prestador que executou e a atividade correspondente.
4. Validar se a combinação existe em `cad_prestadores_atividades`.
5. Comparar o `mecanico_id` legado da OS com os prestadores atribuídos aos itens.
6. Se a OS tiver serviços executados por mais de uma pessoa, registrar cada executor no seu item.
7. Não copiar automaticamente o mecânico da OS para todos os itens sem confirmar que ele executou todos os serviços.

Se não houver informação histórica suficiente para determinar o executor real, preservar a OS e marcar o item para saneamento. Não inventar atribuição histórica.

### Fase 6 — Validar integridade

Executar as consultas de validação no final do SQL e verificar:

- Nenhum cliente/fornecedor/representante sem `pessoa_id`.
- Toda pessoa PF tem somente extensão PF; toda PJ tem somente extensão PJ.
- Não há CPF/CNPJ normalizado duplicado entre pessoas distintas, salvo exceção formalmente aprovada.
- Nenhum prestador tem mais de uma atividade principal ativa.
- Nenhuma associação prestador/atividade duplicada.
- Todo item de serviço tem prestador e atividade compatíveis.
- Todo item de peça tem peça e não tem prestador/atividade.
- Nenhuma OS tem `veiculo_id = 0`; ausência de veículo é `NULL`.
- Histórico e pagamentos continuam presentes e relacionados.

Depois de resolver duplicidades documentais, criar a chave única:

```sql
ALTER TABLE cad_pessoas
  ADD UNIQUE KEY uk_cad_pessoas_documento (documento_normalizado);
```

Não execute essa instrução enquanto a consulta de duplicidades retornar linhas.

### Fase 7 — Corte da aplicação

1. Publicar backend que lê e grava no modelo V2.
2. Atualizar endpoints/DTOs para que cliente, fornecedor e prestador carreguem dados de `cad_pessoas`.
3. Atualizar telas para contatos/endereço/documentos compartilhados.
4. Atualizar cadastro de prestador para escolher atividades do catálogo único.
5. Atualizar OS para selecionar tipo do item e, para serviços, prestador + atividade.
6. Atualizar consultas de OS para exibir executores por item.
7. Validar relatórios, estoque, financeiro, autenticação e permissões.
8. Monitorar erros e comparar totais com o legado.

Durante o período de estabilização, manter as tabelas antigas sem escrita pela aplicação nova, mas ainda disponíveis para auditoria/rollback operacional.

### Fase 8 — Contrair o legado

Somente após homologação e período de estabilidade:

- Remover `cad_clientes_anexos`, `cad_clientes_contatos`, `cad_clientes_documentos`, `cad_clientes_enderecos` depois de comprovar a cópia.
- Remover as estruturas equivalentes antigas de fornecedores e mecânicos depois de comprovar a cópia.
- Remover colunas redundantes de representante (`Nome`, `Email`, `Telefone`, `Celular`) depois que a aplicação usar a pessoa vinculada.
- Remover `cad_mecanicos` somente quando todos os seus dados estiverem em `cad_prestadores`, `cad_mecanicos_v2` e tabelas dependentes.
- Remover `os_ordens.mecanico_id` somente quando a aplicação não o utilizar e os itens históricos estiverem tratados.
- Consolidar `OrigemCadastroId` e `Origem_Id` de `cad_clientes` após definir qual campo representa a origem de cadastro e migrar seus valores.

Não apagar tabelas legadas na mesma implantação que faz o primeiro backfill.

## 6. Ajustes que exigem atenção especial

### 6.1 Representantes

A tabela atual armazena nome, cargo, e-mail e telefones diretamente. No modelo V2, `pessoa_id` identifica a pessoa; `cargo`, preferência de contato, indicador de principal e observações continuam no vínculo com o fornecedor. Contatos pessoais devem ser armazenados em `cad_pessoas_contatos`.

### 6.2 Anexos financeiros

A tabela `fin_anexos` atual possui três FKs opcionais (`pagamento_id`, `conta_pagar_id`, `conta_receber_id`). Recomenda-se garantir que exatamente um deles esteja preenchido por registro. Essa regra deve ser validada antes de adicionar um CHECK, pois o legado pode conter linhas inconsistentes.

### 6.3 Histórico polimórfico

`fin_historico.entidade` + `entidade_id` e `seg_audit_log.Tabela` + `Registro_Id` são referências polimórficas. Elas não possuem FK tradicional. Podem permanecer assim por serem trilhas genéricas, mas o backend deve validar os tipos de entidade aceitos.

### 6.4 Exclusão de registros

- Pessoas, clientes, fornecedores, prestadores, peças, OS e documentos financeiros devem ser inativados/soft-deleted.
- Histórico, pagamentos e movimentações não devem ser apagados em cascata.
- `CASCADE` deve ficar restrito principalmente a associações puramente dependentes e sem valor histórico próprio.
- A ausência de veículo em OS é representada por `NULL`, nunca por `0`.

## 7. Padrões físicos

- Tabelas e colunas em `snake_case`.
- PK: `id`.
- FK: `<entidade>_id`.
- Auditoria: `created_at`, `updated_at`, `deleted_at`.
- Não manter simultaneamente `is_deleted` e `deleted_at`; `deleted_at IS NOT NULL` representa exclusão lógica.
- Valores monetários: `DECIMAL(18,2)`.
- Datas de nascimento: `DATE`.
- Quilometragem: tipo numérico inteiro quando a regra não admitir frações.
- FKs de histórico/financeiro/OS com `RESTRICT` ou `SET NULL`, conforme a semântica; evitar `CASCADE` destrutivo.

## 8. Limites desta entrega

O dump analisado contém somente a estrutura. Por isso, o DDL prepara o modelo e o plano define como migrar, mas não é seguro gerar um backfill automático definitivo sem examinar os registros reais. Em especial, não é possível decidir por SQL genérico quais clientes, fornecedores e mecânicos são a mesma pessoa, nem identificar quem executou cada serviço histórico.

A próxima atividade técnica, depois de ensaiar a expansão, é produzir o script de backfill com base em uma cópia do banco contendo dados e nos resultados das consultas de diagnóstico.
