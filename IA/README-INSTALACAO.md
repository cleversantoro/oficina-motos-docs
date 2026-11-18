# Frontend Architect + Angular Frontend Engineer

Pacote de instruções para GitHub Copilot no VS Code.

## Conteúdo

- `.github/agents/frontend-architect.agent.md`: agente coordenador e arquiteto.
- `.github/skills/angular-frontend-engineer/SKILL.md`: skill com regras técnicas de implementação.
- `.github/skills/angular-frontend-engineer/references/`: referências de arquitetura, responsividade, Design System e qualidade.

## Instalação

1. Extraia o conteúdo do ZIP na raiz do repositório Angular.
2. Confirme que a estrutura `.github/agents` e `.github/skills` foi criada.
3. Abra o projeto no VS Code.
4. Abra o GitHub Copilot Chat e selecione o agente **Frontend Architect** no seletor de agentes.
5. Peça uma análise do projeto antes de solicitar alterações.

## Primeiro comando recomendado

"Frontend Architect: analise o projeto Angular. Não altere arquivos. Identifique a versão, arquitetura, Design System, responsividade, testes e principais riscos. Apresente um relatório e um plano de melhorias priorizado."

## Observações

- O agente coordena e toma decisões; a Skill define os padrões técnicos de implementação.
- O agente não deve presumir que o projeto está em Angular 21: deve verificar a versão instalada.
- Em mudanças estruturais ou de grande impacto, o agente deve apresentar o plano e aguardar aprovação.
- Se a Skill não for reconhecida pelo ambiente, confirme se o VS Code/Copilot está atualizado e se o caminho `.github/skills` é suportado pela versão utilizada.
