# Oficina de Motos — Bounded Contexts (C4 + Context Map)

Abaixo estão três diagramas em **Mermaid** para visualizar os **Bounded Contexts** do sistema da oficina:
1) **C4 — Contexto do Sistema (L1)**,
2) **DDD Context Map** (relações estratégicas),
3) **C4 — Contêineres (L2) focado em integração entre BCs**.

---

## 1) C4 — Contexto do Sistema (L1)
```mermaid
flowchart LR
    %% Sistema no centro
    subgraph S["Sistema Oficina de Motos"]
      direction TB
      CtxCadastro["Cadastro (BC)"]
      CtxOS["Ordem de Serviço (BC)"]
      CtxEstoque["Estoque (BC)"]
      CtxFinanceiro["Financeiro (BC)"]
    end

    %% Atores externos
    Cliente((Cliente))
    Mecanico((Mecânico))
    Fornecedor((Fornecedor))
    GatewayPagamento[(Gateway de Pagamento)]
    ReceitaFederal[(Serviço Fiscal/Nota Eletrônica)]
    Banco[(Banco)]

    %% Interações principais
    Cliente -- "Cadastra-se, consulta OS" --> S
    Mecanico -- "Registra serviços/OS" --> S
    Fornecedor -- "Entrega Peças" --> CtxEstoque

    CtxFinanceiro -- "Pix/Boleto/Cartão" --> GatewayPagamento
    CtxFinanceiro -- "Remessa/Retorno" --> Banco
    CtxFinanceiro -- "Emissão NF-e" --> ReceitaFederal

    %% Conexões internas
    CtxOS <--> CtxCadastro
    CtxOS <--> CtxEstoque
    CtxOS --> CtxFinanceiro
```

---

## 2) DDD Context Map — Relações Estratégicas entre BCs
```mermaid
flowchart LR
    classDef bc fill:#f7f7ff,stroke:#6b6f8a,stroke-width:1px,rx:8,ry:8
    classDef ext fill:#fff7f7,stroke:#8a6b6b,stroke-width:1px,rx:8,ry:8

    Cadastro["Cadastro (BC)\n— Clientes, Motos, Profissionais —"]:::bc
    OS["Ordem de Serviço (BC)\n— Orçamento, Execução, Checklist —"]:::bc
    Estoque["Estoque (BC)\n— Peças, Movimentações, Reservas —"]:::bc
    Financeiro["Financeiro (BC)\n— Faturas, Recebíveis, NF —"]:::bc

    Gateway[(OHS: Gateway de Pagamento)]:::ext
    Fiscal[(Serviço Fiscal/SEFAZ)]:::ext

    %% Relações estratégicas
    %% Cadastro -> OS
    Cadastro -- "Supplier  ⟶  Customer\n(OS se conforma ao contrato do Cadastro)\nPadrão: Conformist + ACL" --> OS

    %% Estoque -> OS
    Estoque -- "Supplier  ⟶  Customer\n(OS usa catálogo/movimentação de peças)\nPadrão: ACL (traduz modelos)" --> OS

    %% OS -> Financeiro por eventos
    OS -- "Published Language (Eventos Domínio)\nEx.: OrcamentoAprovado, ServicoFinalizado" --> Financeiro

    %% Financeiro -> externos
    Financeiro -- "Open Host Service (API/contrato)" --> Gateway
    Financeiro -- "Anticorruption / Adapter Fiscal" --> Fiscal
```

**Legenda rápida dos padrões:**
- **Customer/Supplier:** um BC (Customer) depende do contrato/saídas do outro (Supplier).
- **Conformist:** o Customer adota (se conforma) ao modelo do Supplier para reduzir acoplamento de tradução.
- **ACL — Anti-Corruption Layer:** camada de tradução/isolamento para proteger o modelo interno.
- **Published Language:** integração assíncrona por eventos com linguagem/eventos publicados.
- **OHS — Open Host Service:** serviço aberto com contrato explícito para integração.

---

## 3) C4 — Contêineres (L2) com foco de integração
```mermaid
flowchart TB
    classDef bc fill:#f7f7ff,stroke:#6b6f8a,stroke-width:1px,rx:8,ry:8
    classDef infra fill:#f7fff7,stroke:#6b8a6b,stroke-width:1px,rx:8,ry:8

    subgraph Bus["Event Bus / Mensageria"]
      Evt["Tópicos/Eventos:\nOrcamentoAprovado, ServicoFinalizado, PecasReservadas..."]:::infra
    end

    subgraph BC1["Cadastro (BC)"]
      direction TB
      API1["API REST"]:::bc
      SVC1["Serviços de Domínio"]:::bc
      DB1[(DB Cadastro)]:::bc
    end

    subgraph BC2["Ordem de Serviço (BC)"]
      direction TB
      API2["API REST"]:::bc
      SUB2["Assinante Eventos (Evt Bus)"]:::bc
      SVC2["Serviços de Domínio + ACL p/ Cadastro & Estoque"]:::bc
      DB2[(DB OS)]:::bc
    end

    subgraph BC3["Estoque (BC)"]
      direction TB
      API3["API REST"]:::bc
      SVC3["Serviços de Domínio"]:::bc
      DB3[(DB Estoque)]:::bc
    end

    subgraph BC4["Financeiro (BC)"]
      direction TB
      API4["API REST / OHS"]:::bc
      SUB4["Assinante Eventos (Evt Bus)"]:::bc
      SVC4["Serviços de Domínio\nEmissão NF, Faturamento"]:::bc
      DB4[(DB Financeiro)]:::bc
    end

    %% Integrações síncronas (REST)
    API2 -- "Consulta Cliente/Moto" --> API1
    API2 -- "Reservar/Consumir Peças" --> API3

    %% Integrações assíncronas (Eventos)
    SVC2 -- "Publica eventos" --> Evt
    Evt -- "Consome eventos" --> SUB4

    %% Persistência
    API1 --> SVC1 --> DB1
    API2 --> SVC2 --> DB2
    API3 --> SVC3 --> DB3
    API4 --> SVC4 --> DB4
```

---

### Notas de implementação
- **Autonomia por BC:** cada BC pode ter seu **repositório, pipeline CI/CD, banco** e **versionamento de contrato**.
- **Sincronismo vs Assíncrono:**
  - **Leituras** de referência (ex.: dados do cliente/peça) podem ser síncronas (REST).
  - **Fluxos de negócio** entre OS → Financeiro/Estoque preferem **eventos** (acoplamento menor e resiliência).
- **Observabilidade:** propagar **correlation-id** entre BCs, métricas e traces (OpenTelemetry) para rastrear uma OS ponta a ponta.
- **Evolução Segura:** introduza **ACL** quando modelos começarem a “vazar” entre contextos.

---

Se quiser, eu posso gerar **PlantUML** ou **diagramas C4-Plant** equivalentes, ou ainda transformar isso em um **PPT** executivo com as legendas e padrões ressaltados.

