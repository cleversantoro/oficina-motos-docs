# Módulo de Segurança — Usuários, Perfis e Permissões (`seg_`)

## Visão Geral

Este módulo implementa um sistema **RBAC (Role-Based Access Control)** completo para o sistema Oficina de Motos. Ele define quem pode acessar o sistema, com qual perfil e quais ações cada perfil pode executar em cada módulo.

---

## Arquivos Gerados

| Arquivo | Descrição |
|---------|-----------|
| `scripts/oficina_seg_usuarios.sql` | Script completo do módulo (todas as 7 tabelas + dados + índices + FKs) |
| `scripts/oficina_db.sql` | Script principal do banco — atualizado com o bloco `seg_` |
| `oficina_db_sql/oficina_db_table_seg_modulos.sql` | Tabela de módulos do sistema |
| `oficina_db_sql/oficina_db_table_seg_perfis.sql` | Tabela de perfis/papéis |
| `oficina_db_sql/oficina_db_table_seg_permissoes.sql` | Tabela de permissões |
| `oficina_db_sql/oficina_db_table_seg_perfis_permissoes.sql` | Vínculo perfil ↔ permissão |
| `oficina_db_sql/oficina_db_table_seg_usuarios.sql` | Tabela de usuários |
| `oficina_db_sql/oficina_db_table_seg_usuarios_perfis.sql` | Vínculo usuário ↔ perfil |
| `oficina_db_sql/oficina_db_table_seg_audit_log.sql` | Log de auditoria (INSERT-ONLY) |

---

## Modelo de Dados

```
seg_modulos
    └── seg_permissoes (Modulo_Id → FK)
            └── seg_perfis_permissoes (Permissao_Id → FK)
                        └── seg_perfis (Perfil_Id → FK)
                                    └── seg_usuarios_perfis (Perfil_Id → FK)
                                                └── seg_usuarios (Usuario_Id → FK)
                                                        └── seg_audit_log (Usuario_Id → FK)
```

---

## Tabelas

### `seg_modulos` — Módulos do Sistema

Registra os 11 módulos funcionais do sistema, com suporte a hierarquia (`Modulo_Pai_Id`).

| Id | Nome | Rota |
|----|------|------|
| 1 | Dashboard | /dashboard |
| 2 | Clientes | /clientes |
| 3 | Mecânicos | /mecanicos |
| 4 | Veículos | /veiculos |
| 5 | Ordens de Serviço | /ordens |
| 6 | Estoque | /estoque |
| 7 | Financeiro | /financeiro |
| 8 | Relatórios | /relatorios |
| 9 | Configurações | /configuracoes |
| 10 | Segurança | /seguranca |
| 11 | Fornecedores | /fornecedores |

**Campos relevantes:** `Icone`, `Rota`, `Modulo_Pai_Id` (suporte a submenus), `Ordem`, `Ativo`

---

### `seg_perfis` — Perfis de Acesso (Roles)

Define os papéis disponíveis no sistema. O campo `Nivel` controla a hierarquia: **menor valor = maior privilégio**.

| Id | Nome | Nível |
|----|------|-------|
| 1 | Administrador | 1 |
| 2 | Gerente | 2 |
| 3 | Recepcionista | 3 |
| 4 | Financeiro | 4 |
| 5 | Mecânico | 5 |
| 6 | Consulta | 6 |

---

### `seg_permissoes` — Permissões

46 permissões derivadas da combinação **módulo × ação**. Ações disponíveis:

| Ação | Descrição |
|------|-----------|
| `visualizar` | Leitura e listagem |
| `criar` | Inserção de novos registros |
| `editar` | Alteração de registros existentes |
| `excluir` | Remoção de registros |
| `exportar` | Geração e download de arquivos |
| `aprovar` | Aprovação de orçamentos ou lançamentos |

---

### `seg_perfis_permissoes` — Vínculo Perfil ↔ Permissão

128 registros mapeando cada perfil às suas permissões permitidas.

| Perfil | Permissões concedidas |
|--------|----------------------|
| Administrador | Todas (46 permissões) |
| Gerente | Todas, exceto: criar/editar/excluir usuários (`seg_`) e editar configurações |
| Recepcionista | Dashboard, Clientes (visualizar/criar/editar), Mecânicos (visualizar), Veículos, OS (visualizar/criar/editar), Fornecedores (visualizar) |
| Financeiro | Dashboard, Clientes (visualizar), OS (visualizar), Financeiro (completo), Relatórios |
| Mecânico | Dashboard, Clientes/Veículos (visualizar), OS (visualizar/editar/aprovar), Estoque (visualizar/editar) |
| Consulta | Somente `visualizar` em: Dashboard, Clientes, Mecânicos, Veículos, OS, Estoque, Financeiro, Relatórios, Fornecedores |

---

### `seg_usuarios` — Usuários

Armazena as credenciais e configurações de acesso dos usuários.

| Id | Login | E-mail | Perfil |
|----|-------|--------|--------|
| 1 | clever.admin | clever.admin@oficina.com | Administrador |
| 2 | carlos.gerente | carlos.gerente@oficina.com | Gerente |
| 3 | ana.recep | ana.recep@oficina.com | Recepcionista |
| 4 | roberto.fin | roberto.fin@oficina.com | Financeiro |
| 5 | joao.mec | joao.mec@oficina.com | Mecânico |
| 6 | consulta.view | consulta@oficina.com | Consulta |

**Campos de segurança:**

| Campo | Finalidade |
|-------|-----------|
| `Senha` | Hash **bcrypt custo 12** (`$2y$12$...`) — nunca texto puro |
| `Status` | `0` Inativo · `1` Ativo · `2` Suspenso · `3` Bloqueado |
| `Tentativas_Login` | Contador de falhas consecutivas |
| `Bloqueado_Ate` | Data/hora até quando o acesso está bloqueado |
| `Token_Reset` | Token de redefinição de senha (UUID ou hash) |
| `Token_Reset_Expira_Em` | Validade do token de reset |
| `Ultimo_Login` | Registro do último acesso bem-sucedido |
| `Criado_Por` | FK auto-referenciada para rastrear quem cadastrou |

> ⚠️ **ALTERAR TODAS AS SENHAS antes do deploy em produção.**

---

### `seg_usuarios_perfis` — Vínculo Usuário ↔ Perfil

Suporta **múltiplos perfis por usuário** (N:N). O campo `Ativo` permite desativar um perfil sem removê-lo.

---

### `seg_audit_log` — Log de Auditoria

Tabela **INSERT-ONLY** — registros jamais devem ser atualizados ou excluídos.

**Ações registradas:**

| Ação | Quando usar |
|------|-------------|
| `LOGIN` | Autenticação bem-sucedida |
| `LOGOUT` | Encerramento de sessão |
| `LOGIN_FAIL` | Tentativa de login com credencial inválida |
| `CREATE` | Inserção de registro |
| `UPDATE` | Alteração de registro |
| `DELETE` | Exclusão/cancelamento de registro |
| `VIEW` | Consulta a listagens ou detalhes sensíveis |
| `EXPORT` | Geração de arquivo para download |
| `APPROVE` | Aprovação de orçamento ou lançamento financeiro |

**Campos de contexto:** `Ip`, `User_Agent`, `Dados_Antes` (JSON), `Dados_Depois` (JSON), `Registro_Id`

> O campo `Usuario_Id` aceita `NULL` para registrar eventos sem autenticação (ex.: `LOGIN_FAIL`). O campo `Login` é preservado mesmo que o usuário seja excluído.

---

## Índices e Restrições

### Índices únicos

| Tabela | Colunas |
|--------|---------|
| `seg_modulos` | `Nome` |
| `seg_perfis` | `Nome` |
| `seg_permissoes` | `(Modulo_Id, Acao)` |
| `seg_perfis_permissoes` | `(Perfil_Id, Permissao_Id)` |
| `seg_usuarios` | `Email`, `Login` |
| `seg_usuarios_perfis` | `(Usuario_Id, Perfil_Id)` |

### Foreign Keys

| Tabela | Campo | Referência | Comportamento |
|--------|-------|-----------|---------------|
| `seg_modulos` | `Modulo_Pai_Id` | `seg_modulos.Id` | `SET NULL` |
| `seg_permissoes` | `Modulo_Id` | `seg_modulos.Id` | `CASCADE` |
| `seg_perfis_permissoes` | `Perfil_Id` | `seg_perfis.Id` | `CASCADE` |
| `seg_perfis_permissoes` | `Permissao_Id` | `seg_permissoes.Id` | `CASCADE` |
| `seg_usuarios` | `Criado_Por` | `seg_usuarios.Id` | `SET NULL` |
| `seg_usuarios_perfis` | `Usuario_Id` | `seg_usuarios.Id` | `CASCADE` |
| `seg_usuarios_perfis` | `Perfil_Id` | `seg_perfis.Id` | `CASCADE` |
| `seg_audit_log` | `Usuario_Id` | `seg_usuarios.Id` | `SET NULL` |

---

## Padrões Seguidos

- **Engine:** InnoDB
- **Charset:** `utf8mb4` / `utf8mb4_unicode_ci` (igual a todas as tabelas do sistema)
- **PKs:** `bigint` auto-incremento em tabelas de dados; `int` em tabelas de domínio (módulos, perfis, permissões)
- **Timestamps:** `Created_At datetime(6)` com `DEFAULT CURRENT_TIMESTAMP(6)`; `Updated_At datetime(6)` com `ON UPDATE CURRENT_TIMESTAMP(6)`
- **Prefixo:** `seg_` (segurança) — seguindo a convenção `cad_`, `est_`, `fin_`, `os_` existente

---

## Considerações para Produção

1. **Senhas:** Gerar novos hashes bcrypt para todos os usuários antes do deploy.
2. **Audit log:** Configurar rotação/arquivamento periódico (a tabela nunca pode ser truncada).
3. **Bloqueio por tentativas:** Implementar na camada de aplicação o incremento de `Tentativas_Login` e o preenchimento de `Bloqueado_Ate`.
4. **Token de reset:** Gerar via `crypto.randomBytes(32)` ou equivalente; definir TTL de 1 hora.
5. **Múltiplos perfis:** A query de verificação de permissão deve considerar todos os perfis ativos (`Ativo = 1`) do usuário.
