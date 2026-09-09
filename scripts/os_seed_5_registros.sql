USE oficina;
SET FOREIGN_KEY_CHECKS = 0;

-- =========================================================
-- os_ordens  (Ordens de Serviço principais)
-- =========================================================
INSERT INTO os_ordens (
  id, cliente_id, mecanico_id, descricao_problema, status, data_abertura, data_conclusao, created_at
)
VALUES
  (10001, 201, 501, 'Troca de óleo e filtro - revisão preventiva', 'CONCLUIDA', NOW() - INTERVAL 10 DAY, NOW() - INTERVAL 9 DAY, NOW(3)),
  (10002, 202, 502, 'Ruído na suspensão dianteira ao frear', 'EM_ANDAMENTO', NOW() - INTERVAL 7 DAY, NULL, NOW(3)),
  (10003, 203, 503, 'Motor falhando - diagnóstico de ignição', 'CONCLUIDA', NOW() - INTERVAL 20 DAY, NOW() - INTERVAL 18 DAY, NOW(3)),
  (10004, 204, 504, 'Substituição de pastilhas e fluido de freio', 'CONCLUIDA', NOW() - INTERVAL 15 DAY, NOW() - INTERVAL 14 DAY, NOW(3)),
  (10005, 205, 505, 'Luz da injeção acesa - leitura scanner', 'ABERTA', NOW() - INTERVAL 2 DAY, NULL, NOW(3));

-- =========================================================
-- os_itens (peças utilizadas nas ordens)
-- =========================================================
INSERT INTO os_itens (
  id, ordem_servico_id, peca_id, descricao, quantidade, valor_unitario, created_at
)
VALUES
  (20001, 10001, 1001, 'Filtro de óleo Bosch', 1, 29.90, NOW(3)),
  (20002, 10001, 1002, 'Filtro de ar NGK', 1, 39.50, NOW(3)),
  (20003, 10002, 1004, 'Amortecedor Monroe dianteiro', 2, 349.00, NOW(3)),
  (20004, 10004, 1003, 'Pastilhas de freio TRW', 1, 119.90, NOW(3)),
  (20005, 10005, 1005, 'Correia dentada SKF', 1, 89.00, NOW(3));

-- =========================================================
-- os_checklists (inspeção de entrada e saída)
-- =========================================================
INSERT INTO os_checklists (
  id, ordem_servico_id, item, realizado, observacao, created_at
)
VALUES
  (30001, 10001, 'Nível do óleo', 1, 'Troca realizada', NOW(3)),
  (30002, 10002, 'Suspensão dianteira', 1, 'Barulho detectado', NOW(3)),
  (30003, 10003, 'Velas e cabos', 1, 'Cabos substituídos', NOW(3)),
  (30004, 10004, 'Sistema de freio', 1, 'Pastilhas novas', NOW(3)),
  (30005, 10005, 'Scanner OBDII', 0, 'Aguardando aprovação do cliente', NOW(3));

-- =========================================================
-- os_observacoes (comentários e notas da equipe)
-- =========================================================
INSERT INTO os_observacoes (
  id, ordem_servico_id, usuario, texto, created_at
)
VALUES
  (40001, 10001, 'mecanico_joao', 'Cliente solicitou óleo sintético 5W30.', NOW(3)),
  (40002, 10002, 'mecanico_paulo', 'Suspensão com folga. Recomendado trocar buchas.', NOW(3)),
  (40003, 10003, 'mecanico_maria', 'Troca de velas NGK e limpeza de bicos realizada.', NOW(3)),
  (40004, 10004, 'mecanico_ana', 'Fluido DOT 4 sangrado. Freio firme.', NOW(3)),
  (40005, 10005, 'mecanico_lucas', 'Leitura scanner: falha intermitente no sensor lambda.', NOW(3));

-- =========================================================
-- os_anexos (fotos, orçamentos, relatórios)
-- =========================================================
INSERT INTO os_anexos (
  id, ordem_servico_id, nome, tipo, url, observacao, data_upload, created_at
)
VALUES
  (50001, 10001, 'foto-filtro-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10001/filtro.jpg', 'Filtro sujo substituído', NOW() - INTERVAL 10 DAY, NOW(3)),
  (50002, 10002, 'video-barulho.mp4', 'video/mp4', 'https://exemplo.com/os10002/barulho.mp4', 'Ruído capturado em teste', NOW() - INTERVAL 6 DAY, NOW(3)),
  (50003, 10003, 'relatorio-ignicao.pdf', 'application/pdf', 'https://exemplo.com/os10003/diagnostico.pdf', 'Relatório técnico', NOW() - INTERVAL 19 DAY, NOW(3)),
  (50004, 10004, 'foto-freio-novo.jpg', 'image/jpeg', 'https://exemplo.com/os10004/freio.jpg', 'Pastilhas novas instaladas', NOW() - INTERVAL 14 DAY, NOW(3)),
  (50005, 10005, 'leitura-obd.jpg', 'image/jpeg', 'https://exemplo.com/os10005/obd.jpg', 'Código P0130 armazenado', NOW() - INTERVAL 1 DAY, NOW(3));

-- =========================================================
-- os_avaliacoes (feedback do cliente)
-- =========================================================
INSERT INTO os_avaliacoes (
  id, ordem_servico_id, nota, comentario, usuario, created_at
)
VALUES
  (60001, 10001, 5, 'Serviço rápido e bem feito. Recomendo!', 'joao.silva', NOW(3)),
  (60002, 10002, 4, 'Diagnóstico correto, aguardando orçamento.', 'maria.oliveira', NOW(3)),
  (60003, 10003, 5, 'Problema resolvido. Oficina confiável.', 'carlos.santos', NOW(3)),
  (60004, 10004, 5, 'Freio perfeito, atendimento excelente.', 'patricia.lima', NOW(3)),
  (60005, 10005, 3, 'Aguardando contato sobre orçamento.', 'eduardo.souza', NOW(3));

-- =========================================================
-- os_pagamentos (lançamentos financeiros)
-- =========================================================
INSERT INTO os_pagamentos (
  id, ordem_servico_id, valor, status, data_pagamento, metodo, observacao, created_at
)
VALUES
  (70001, 10001, 250.00, 'PAGO', NOW() - INTERVAL 9 DAY, 'Cartão Crédito', 'Troca de óleo completa', NOW(3)),
  (70002, 10002, 698.00, 'PENDENTE', NULL, 'PIX', 'Peças em aprovação', NOW(3)),
  (70003, 10003, 320.00, 'PAGO', NOW() - INTERVAL 18 DAY, 'Dinheiro', 'Serviço completo', NOW(3)),
  (70004, 10004, 160.00, 'PAGO', NOW() - INTERVAL 14 DAY, 'Cartão Débito', 'Pastilhas e fluido', NOW(3)),
  (70005, 10005, 89.00, 'PENDENTE', NULL, 'PIX', 'Aguardando diagnóstico final', NOW(3));

-- =========================================================
-- os_ordens_historico (alterações de status ou campos)
-- =========================================================
INSERT INTO os_ordens_historico (
  id, ordem_servico_id, data_alteracao, usuario, campo, valor_antigo, valor_novo, created_at
)
VALUES
  (80001, 10001, NOW() - INTERVAL 10 DAY, 'clever', 'status', 'ABERTA', 'CONCLUIDA', NOW(3)),
  (80002, 10002, NOW() - INTERVAL 6 DAY, 'mecanico_paulo', 'status', 'ABERTA', 'EM_ANDAMENTO', NOW(3)),
  (80003, 10003, NOW() - INTERVAL 19 DAY, 'mecanico_maria', 'status', 'ABERTA', 'CONCLUIDA', NOW(3)),
  (80004, 10004, NOW() - INTERVAL 15 DAY, 'mecanico_ana', 'status', 'ABERTA', 'CONCLUIDA', NOW(3)),
  (80005, 10005, NOW() - INTERVAL 1 DAY, 'mecanico_lucas', 'status', 'ABERTA', 'AGUARDANDO_APROVACAO', NOW(3));

SET FOREIGN_KEY_CHECKS = 1;