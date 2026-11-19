# Oficina Motos — Plano de Adequação da API ao Banco V2

**Projeto:** Sistema de Gestão de Oficina de Motos  
**Banco anterior:** `oficina_db`  
**Novo banco:** `oficina_db_new`  
**SGBD:** MySQL 8  
**Backend:** C# / ASP.NET Core  
**Documento de referência:** `oficina_db_new_mysql8.sql`

## 1. Objetivo

Adequar a API existente da Oficina Motos ao novo modelo de banco de dados V2, preservando as funcionalidades implementadas e respeitando as decisões arquiteturais aprovadas.

A API não deve ser reconstruída do zero. O trabalho consiste em identificar diferenças entre o código atual e o banco novo, planejar as alterações necessárias e implementá-las de forma incremental.

## 2. Instruções obrigatórias para a IA

Atue como um arquiteto de software e desenvolvedor .NET sênior, especializado em DDD, APIs REST, Entity Framework Core e MySQL.

Antes de modificar qualquer arquivo:

1. Analise toda a solução existente.
2. Identifique projetos, camadas, entidades, repositórios, serviços, DTOs, controllers, endpoints e testes.
3. Leia integralmente o arquivo `oficina_db_new_mysql8.sql`.
4. Compare o modelo atual da API com o novo banco.
5. Identifique os componentes afetados.
6. Produza uma matriz de impacto.
7. Apresente um plano de implementação.
8. Aguarde aprovação antes de executar alterações.

**Restrições:**

- Não modificar o banco antigo `oficina_db`.
- Não remover funcionalidades existentes.
- Não criar entidades ou colunas inexistentes no DDL sem aprovação.
- Não reescrever a arquitetura sem justificativa.
- Não introduzir dependências desnecessárias.
- Não executar alterações destrutivas.
- Não modificar o frontend Angular nesta etapa.
- Não avançar automaticamente entre etapas.
- Não declarar testes aprovados sem executá-los.

O DDL V2 é a fonte de verdade para nomes, tipos, relacionamentos, índices e restrições físicas.

## 3. Decisões arquiteturais aprovadas

### 3.1 Centralização de pessoas

A tabela `cad_pessoas` representa a identidade única de uma pessoa física ou jurídica.

Uma pessoa pode exercer simultaneamente diferentes papéis:

- Cliente
- Fornecedor
- Prestador de serviços

Os papéis são representados por tabelas específicas:

- `cad_clientes`
- `cad_fornecedores`
- `cad_prestadores`

Os dados pessoais comuns não devem ser duplicados nessas tabelas.

### 3.2 Dados compartilhados

Utilizar as seguintes estruturas:

| Tabela | Responsabilidade |
|---|---|
| `cad_pessoas` | Identificação principal |
| `cad_pessoas_pf` | Dados de pessoa física |
| `cad_pessoas_pj` | Dados de pessoa jurídica |
| `cad_pessoas_contatos` | Telefones, e-mails e outros contatos |
| `cad_pessoas_enderecos` | Endereços |
| `cad_pessoas_documentos` | Documentos complementares |
| `cad_pessoas_anexos` | Anexos pessoais |

CPF/CNPJ principal deve permanecer em `cad_pessoas.documento`.

### 3.3 Usuários do sistema

`seg_usuarios` permanece independente de `cad_pessoas`.

Não criar uma associação obrigatória entre usuários autenticados e pessoas cadastradas.

Preservar autenticação, autorização, perfis, permissões e refresh tokens existentes.

### 3.4 Representantes de fornecedores

Representantes devem ser pessoas cadastradas.

A tabela `cad_fornecedores_representantes` representa o vínculo entre fornecedor e pessoa.

Dados como cargo e observações pertencem ao vínculo. Dados pessoais e contatos pertencem ao cadastro central de pessoas.

### 3.5 Prestadores de serviços

`cad_prestadores` representa o vínculo profissional de uma pessoa.

O modelo deve permitir mecânicos, eletricistas e outros profissionais.

A tabela `cad_atividades_profissionais` representa o catálogo único de atividades.

A tabela `cad_prestadores_atividades` permite associar várias atividades ao mesmo prestador.

**Regra:** um prestador pode possuir várias atividades, mas no máximo uma atividade principal ativa.

### 3.6 Mecânicos

Mecânico é uma especialização de prestador.

Um mecânico pode atuar em diferentes atividades profissionais, incluindo mecânica geral e elétrica.

Não duplicar os dados pessoais do mecânico.

### 3.7 Ordens de serviço

Uma OS pode existir sem veículo.

O campo `os_ordens.veiculo_id` deve aceitar `NULL`.

Não utilizar `0` para representar ausência de veículo.

Uma OS pode possuir vários prestadores.

O executor e a atividade profissional são associados ao item de serviço, respeitando os campos e relacionamentos existentes no DDL.

Não utilizar um único mecânico na OS para representar todos os executores.

### 3.8 Anexos

Os anexos devem permanecer separados por responsabilidade:

| Contexto | Tabela |
|---|---|
| Pessoas | `cad_pessoas_anexos` |
| Ordem de serviço | `os_anexos` |
| Estoque | `est_pecas_anexos` |
| Financeiro | `fin_anexos` |

### 3.9 Exclusão e histórico

Preferir inativação ou soft delete para registros de negócio.

Não excluir em cascata:

- Ordens de serviço
- Pagamentos
- Movimentações de estoque
- Históricos financeiros
- Registros de auditoria

Respeitar as constraints definidas no DDL.

## 4. Arquitetura da API

Preservar a arquitetura encontrada no projeto.

Caso a solução utilize DDD e arquitetura em camadas, manter as responsabilidades:

### Domain

Responsável por entidades, agregados, objetos de valor, invariantes e regras de negócio.

### Application

Responsável por casos de uso, serviços de aplicação, DTOs, comandos, consultas e validações.

### Infrastructure

Responsável por persistência, configurações do ORM, repositórios e integrações.

### API

Responsável por endpoints, controllers, autenticação, autorização, documentação OpenAPI e tratamento de respostas HTTP.

Não criar novas camadas se a estrutura existente já atender às necessidades.

## 5. Alterações necessárias

### 5.1 Entidades

Revisar todas as entidades relacionadas às tabelas modificadas.

Identificar:

- Entidades que deixaram de existir.
- Entidades que precisam ser criadas.
- Propriedades removidas ou renomeadas.
- Novos relacionamentos.
- Alterações de nulabilidade.
- Novas regras de integridade.

Não presumir propriedades: verificar o DDL.

### 5.2 Entity Framework Core

Caso o projeto utilize EF Core:

- Atualizar o `DbContext`.
- Revisar os `DbSet`.
- Atualizar configurações `IEntityTypeConfiguration`.
- Configurar nomes de tabelas e colunas.
- Configurar chaves primárias e estrangeiras.
- Configurar índices únicos.
- Configurar relacionamentos.
- Ajustar comportamentos de exclusão.
- Revisar conversões de enums e tipos MySQL.
- Verificar a estratégia de migrations existente.

A API deve utilizar o banco `oficina_db_new` no ambiente configurado para a V2.

Não sobrescrever configurações de produção.

### 5.3 Repositórios

Atualizar os repositórios existentes para refletir o novo modelo.

Verificar consultas, filtros, paginação, ordenação e carregamento de relacionamentos.

Evitar consultas N+1 e carregamento desnecessário de coleções.

### 5.4 Serviços de aplicação

Adaptar os serviços existentes para trabalhar com pessoas e papéis.

Garantir transações nas operações que envolvam múltiplas tabelas.

Exemplo: cadastrar cliente pode envolver pessoa, extensão PF/PJ, contatos, endereços e papel de cliente.

### 5.5 DTOs

Revisar os contratos de entrada e saída.

Não expor entidades diretamente na API.

Preservar contratos existentes quando possível.

Documentar mudanças incompatíveis que exijam ajustes no Angular.

### 5.6 Validações

Implementar ou revisar:

- CPF/CNPJ válido e único.
- Coerência entre pessoa física e jurídica.
- Unicidade de papel por pessoa.
- Unicidade de atividade profissional por prestador.
- Uma atividade principal ativa por prestador.
- Existência das referências informadas.
- Prestador habilitado para a atividade executada.
- Veículo opcional na OS.
- Integridade de pagamentos e históricos.
- Tratamento de violações de FK e índices únicos.

## 6. Etapas de implementação

### Etapa 1 — Diagnóstico

**Não modificar código.**

Entregar:

- Inventário dos projetos.
- Arquitetura identificada.
- ORM e estratégia de migrations.
- Mapeamento das entidades.
- Inventário dos endpoints.
- Matriz de diferenças entre API e DDL V2.
- Riscos técnicos.
- Plano de implementação.

Aguardar aprovação.

### Etapa 2 — Núcleo de pessoas

Adequar:

- `cad_pessoas`
- `cad_pessoas_pf`
- `cad_pessoas_pj`
- `cad_pessoas_contatos`
- `cad_pessoas_enderecos`
- `cad_pessoas_documentos`
- `cad_pessoas_anexos`

Implementar mapeamentos, repositórios, serviços, DTOs, endpoints e testes necessários.

### Etapa 3 — Clientes e fornecedores

Adequar os papéis de clientes e fornecedores.

Preservar informações comerciais, financeiras, segmentos, representantes, avaliações, bancos, certificações, origens de cadastro e consentimentos LGPD.

Garantir que os dados pessoais sejam consultados pelo núcleo de pessoas.

### Etapa 4 — Prestadores e atividades profissionais

Adequar:

- `cad_prestadores`
- `cad_mecanicos`
- `cad_atividades_profissionais`
- `cad_prestadores_atividades`
- Tabelas de disponibilidade, experiência e certificação previstas no DDL.

Implementar a associação de várias atividades ao prestador e a regra de atividade principal.

### Etapa 5 — Veículos e ordens de serviço

Adequar:

- Cadastro de veículos.
- `os_ordens`
- `os_itens`
- Checklists.
- Observações.
- Avaliações.
- Anexos.
- Pagamentos.
- Histórico.

Implementar veículo opcional e executor por item de serviço.

### Etapa 6 — Estoque e financeiro

Revisar as entidades e relacionamentos dos módulos de estoque e financeiro.

Preservar funcionalidades existentes, regras de movimentação, pagamentos e histórico.

Não alterar regras comerciais sem justificativa e aprovação.

### Etapa 7 — Segurança e auditoria

Revisar o mapeamento das tabelas `seg_*`.

Preservar autenticação, perfis, permissões e refresh tokens.

Manter usuários independentes de pessoas.

### Etapa 8 — Validação final

Executar:

- Build completo da solução.
- Testes unitários.
- Testes de integração com MySQL 8.
- Testes de contratos HTTP.
- Validação dos relacionamentos.
- Verificação de consultas e paginação.
- Atualização do Swagger/OpenAPI.
- Revisão de compatibilidade com o frontend.

## 7. Testes obrigatórios

A IA deverá criar ou atualizar testes que comprovem os seguintes cenários:

| Cenário | Resultado esperado |
|---|---|
| Pessoa cliente e fornecedor | Uma identidade com dois papéis |
| Pessoa cliente e prestador | Uma identidade com dois papéis |
| CPF/CNPJ duplicado | Operação rejeitada |
| Mecânico com várias atividades | Operação permitida |
| Duas atividades principais ativas | Operação rejeitada |
| Representante vinculado a fornecedor | Pessoa e vínculo persistidos corretamente |
| OS sem veículo | Operação permitida |
| OS com vários prestadores | Executores associados aos respectivos itens |
| Item de serviço com atividade inválida | Operação rejeitada |
| Exclusão de cliente com histórico de OS | Histórico preservado |
| Exclusão de peça com movimentações | Histórico preservado |
| Autenticação de usuário | Independente do cadastro de pessoas |

Os testes de integração devem utilizar MySQL compatível com o DDL real. Não confiar exclusivamente em provedores de banco em memória.

## 8. Critérios de aceite

A implementação será considerada concluída quando:

- [ ] A API conectar corretamente ao banco `oficina_db_new`.
- [ ] Os mapeamentos corresponderem ao DDL V2.
- [ ] Pessoas puderem exercer múltiplos papéis.
- [ ] Dados pessoais não forem duplicados entre papéis.
- [ ] Clientes e fornecedores continuarem funcionais.
- [ ] Representantes utilizarem pessoas cadastradas.
- [ ] Prestadores puderem exercer múltiplas atividades.
- [ ] Mecânicos forem tratados como especialização.
- [ ] Apenas uma atividade principal ativa for permitida.
- [ ] OS sem veículo funcionar.
- [ ] Prestadores forem associados aos itens de serviço.
- [ ] Anexos respeitarem as estruturas aprovadas.
- [ ] Segurança e autenticação continuarem funcionais.
- [ ] Históricos e pagamentos forem preservados.
- [ ] Build e testes forem aprovados.
- [ ] Swagger/OpenAPI estiver atualizado.
- [ ] Mudanças necessárias no Angular estiverem documentadas.

## 9. Relatório obrigatório ao concluir cada etapa

A IA deverá apresentar:

1. Resumo das alterações.
2. Arquivos criados ou modificados.
3. Entidades e relacionamentos afetados.
4. Endpoints e DTOs alterados.
5. Regras de negócio implementadas.
6. Testes executados e seus resultados reais.
7. Problemas encontrados.
8. Pendências e riscos.
9. Impactos identificados no frontend.
10. Próxima etapa proposta.

A IA deve aguardar aprovação antes de avançar.

## 10. Prompt inicial para o agente

Analise integralmente este documento e o arquivo `oficina_db_new_mysql8.sql`.

Você deverá adequar a API C# da Oficina Motos ao novo banco MySQL `oficina_db_new`, preservando as funcionalidades existentes e respeitando a arquitetura do projeto.

Comece exclusivamente pela **Etapa 1 — Diagnóstico**.

Analise o workspace, identifique a arquitetura, as entidades, os repositórios, serviços, DTOs, endpoints, mapeamentos ORM, validações e testes.

Compare o código existente com o DDL V2.

Entregue uma matriz de impacto por módulo, identificando exatamente quais arquivos precisam ser modificados, quais precisam ser criados e quais podem ser preservados.

Não altere nenhum arquivo durante o diagnóstico.

Não suponha que o modelo antigo corresponde ao novo.

Não invente propriedades, endpoints ou funcionalidades.

Ao concluir o diagnóstico, apresente o plano detalhado de implementação e aguarde minha aprovação antes de iniciar a Etapa 2.

---

**Fim do documento.**