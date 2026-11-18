# Plano de Evolução Arquitetural — Frontend (`oficina-motos-web`)

**Base:** Diagnóstico Frontend Architect (2026-11-18) · Skill `angular-frontend-engineer`  
**Objetivo:** Evoluir o frontend Angular 21 em etapas incrementais, seguras e verificáveis, sem quebrar funcionalidades existentes.

> **Como solicitar uma etapa:** Basta pedir *"Execute a Etapa X do `PLANO_EVOLUCAO_FRONTEND.md`"* (ou *"Execute a próxima etapa"*).

---

## Resumo das Etapas

| Etapa | Título | Prioridade | Status |
| :--- | :--- | :---: | :---: |
| **Etapa 1** | Correções Rápidas de UX e Remoção de Diálogos Nativos | 🔴 Alta | ✅ Concluída |
| **Etapa 2** | Roteamento com Lazy Loading e `ChangeDetectionStrategy.OnPush` | 🟡 Média | ✅ Concluída |
| **Etapa 3** | Design System (Tokens CSS), Sidebar Mobile Recolhível e Listas Responsivas | 🟡 Média | ✅ Concluída |
| **Etapa 4** | Qualidade de Código, ESLint, Tipagem Estrita e Acessibilidade (WCAG 2.2 AA) | 🟢 Contínua | ✅ Concluída |
| **Etapa 5** | Expansão da Cobertura de Testes Unitários e E2E | 🟢 Contínua | ✅ Concluída |

---

## Etapa 1 — Correções Rápidas de UX e Remoção de Diálogos Nativos

**Prompt sugerido:** `Execute a Etapa 1 do PLANO_EVOLUCAO_FRONTEND.md`

### Escopo
- [x] **E1.1 — Conectar ações do `AppHeader`** (`src/app/layout/header/header.ts` e `header.html`):
  - Conectar o campo de busca global para navegar para `/ordens` (ou filtrar conforme termo digitado).
  - Conectar o botão **"Nova OS"** para navegar para `/ordens/novo` (respeitando visibilidade/permissão).
  - Conectar o botão **"Sincronizar"** para recarregar a rota/dados ou emitir feedback claro via `Toast`.
- [x] **E1.2 — Substituir `confirm()` e `alert()` nativos por `Confirmation` e `Toast`**:
  - `src/app/features/estoque/pages/estoque-lista/estoque-lista.ts`
  - `src/app/features/mecanicos/pages/mecanico-lista/mecanico-lista.ts`
  - `src/app/features/motos/pages/veiculo-lista/veiculo-lista.ts`
  - `src/app/features/ordens-servico/pages/os-lista/os-lista.ts`
- [x] **E1.3 — Testes e Validação**:
  - Criar/atualizar specs para `AppHeader` e listas afetadas.
  - Executar `npm test -- --watch=false` e `npm run build`.

---

## Etapa 2 — Roteamento com Lazy Loading e `ChangeDetectionStrategy.OnPush`

**Prompt sugerido:** `Execute a Etapa 2 do PLANO_EVOLUCAO_FRONTEND.md`

### Escopo
- [x] **E2.1 — Lazy Loading completo das rotas** (`src/app/app.routes.ts`):
  - Converter as rotas atualmente *eager* (`clientes`, `motos`, `estoque`, `fornecedores`, `mecanicos`, `financeiro`) para `loadComponent` / `loadChildren` (atendendo `DA-006`).
- [x] **E2.2 — Padronizar `ChangeDetectionStrategy.OnPush` e Signals**:
  - Aplicado `ChangeDetectionStrategy.OnPush` nos 10 componentes baseados em Signals/Inputs (`App`, `MainLayout`, `AppHeader`, `AppSidebar`, `AppFooter`, `DashboardPrincipalComponent`, `LoadingSpinner`, `ToastComponent`, `PlaceholderPage`, `DataTable`), mantendo os 13 componentes legados com estado mutável em `Default` até migração segura de estado.
- [x] **E2.3 — Testes e Validação**:
  - Verificar redução do bundle inicial em `npm run build` e 100% de aprovação em `npm test -- --watch=false`.

---

## Etapa 3 — Design System (Tokens CSS), Sidebar Mobile Recolhível e Listas Responsivas

**Prompt sugerido:** `Execute a Etapa 3 do PLANO_EVOLUCAO_FRONTEND.md`

### Escopo
- [x] **E3.1 — Expandir Tokens CSS Semânticos** (`src/styles.scss`):
  - Definir tokens `--color-surface-*`, `--color-border-*`, `--color-text-*`, `--color-danger`, `--color-warning`, `--radius-*` e `--spacing-*`, preservando a identidade industrial escura (`#0b1222` / `#f97316` / `#22c55e`).
- [x] **E3.2 — Sidebar Recolhível / Drawer no Mobile (`< 1024px`)** (`src/app/layout/main-layout/` e `src/app/layout/sidebar/`):
  - Substituir a barra horizontal fixa no mobile por botão de menu no header + drawer lateral recolhível com suporte a tecla `Escape` e foco acessível.
  - Revisar `height: 100vh; overflow: hidden` no mobile (`360×800`, `390×844`) para evitar cortes ou áreas reduzidas.
- [x] **E3.3 — Modernizar Listas Antigas com Cards Mobile**:
  - Aplicar padrão responsivo (tabela desktop + cards mobile sem ocultar informações) em `estoque-lista`, `mecanico-lista`, `veiculo-lista` e `cliente-lista`, seguindo o padrão validado em `fornecedor-lista`.
- [x] **E3.4 — Testes e Validação**:
  - Executar `npm test -- --watch=false` e `npm run build`.

---

## Etapa 4 — Qualidade de Código, ESLint, Tipagem Estrita e Acessibilidade

**Prompt sugerido:** `Execute a Etapa 4 do PLANO_EVOLUCAO_FRONTEND.md`

### Escopo
- [x] **E4.1 — Configurar ESLint (`angular-eslint`)**:
  - Instalado `angular-eslint@21`, criado `eslint.config.js` e configurado script `"lint": "ng lint"` em `package.json` e `angular.json` (`0 erros`).
- [x] **E4.2 — Eliminar `any` e Imports Redundantes**:
  - Corrigidos todos os erros estritos (`no-case-declarations`, `prefer-const`, `no-unused-vars`, `eqeqeq`) e migrados os 8 usos restantes de `[ngClass]`/`[ngStyle]` e `*ngFor` para bindings/controle de fluxo nativos (`cliente-lista.html`, `data-table.html`), mantendo `no-explicit-any` e `prefer-inject` como `warn` para redução gradual em código legado.
- [x] **E4.3 — Acessibilidade (WCAG 2.2 AA)**:
  - Padronizados `:focus-visible` e `prefers-reduced-motion` globais em `src/styles.scss`, e adicionado suporte a teclado (`tabindex="0"`, `keydown.enter`, `aria-selected`) em elementos clicáveis (`perfil-lista.html`, `veiculo-lista.html`, `fornecedor-lista.html`, `cliente-lista.html`, `mecanico-cadastro.html`, `veiculo-cadastro.html`, `os-item-peca-modal.html`).
- [x] **E4.4 — Testes e Validação**:
  - Executar `npm run lint`, `npm test -- --watch=false` e `npm run build`.

---

## Etapa 5 — Expansão da Cobertura de Testes Unitários e E2E

**Prompt sugerido:** `Execute a Etapa 5 do PLANO_EVOLUCAO_FRONTEND.md`

### Escopo
- [x] **E5.1 — Testes Unitários de `core/services`**:
  - Criados `.spec.ts` dedicados para os 5 serviços ainda descobertos (`api-client.service.spec.ts`, `veiculos.service.spec.ts`, `fornecedores.service.spec.ts`, `mecanicos.service.spec.ts`, `estoque.service.spec.ts`).
- [x] **E5.2 — Testes Unitários de Páginas e Layout**:
  - Criadas specs para `LoginPage` (`login.spec.ts`), `AppSidebar` (`sidebar.spec.ts`) e `FornecedorDetalhe` (`fornecedor-detalhe.spec.ts`).
- [ ] **E5.3 — Testes E2E (Opcional / Pós-aprovação)**:
  - Configurar Playwright para cobrir fluxos críticos (Login → Criar OS → Adicionar Item → Pagar → Imprimir PDF) — mantido como opcional aguardando aprovação para adicionar dependência.
- [x] **E5.4 — Validação Final**:
  - Executar toda a suíte unitária, lint e `npm run build`.
