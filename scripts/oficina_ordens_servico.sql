-- ============================================================
-- INSERTS DE ORDENS DE SERVIÇO (10 registros por tabela)
-- Baseado nas tabelas de oficina_db.sql:
--   1. os_ordens (tabela pai)
--   2. os_itens
--   3. os_checklists
--   4. os_observacoes
--   5. os_avaliacoes
--   6. os_anexos
--   7. os_ordens_historico
--   8. os_pagamentos
-- ============================================================

-- ------------------------------------------------------------
-- 1. Tabela `os_ordens` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_ordens` (`Id`, `cliente_id`, `mecanico_id`, `veiculo_id`, `descricao_problema`, `status`, `data_abertura`, `data_conclusao`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 1, 1, 'Revisão preventiva de 10.000 km: troca de óleo, filtro e regulagem de corrente', 'Concluida', '2026-10-01 08:30:00.000000', '2026-10-01 16:00:00.000000', '2026-10-01 08:30:00.000000', '2026-10-01 16:00:00.000000', NULL, 0),
(2, 2, 2, 2, 'Ruído no freio dianteiro e alavanca baixa ao acionar', 'Concluida', '2026-10-03 09:15:00.000000', '2026-10-03 14:45:00.000000', '2026-10-03 09:15:00.000000', '2026-10-03 14:45:00.000000', NULL, 0),
(3, 3, 3, 3, 'Motor falhando em baixa rotação e dificuldade na partida a frio', 'Concluida', '2026-10-05 10:00:00.000000', '2026-10-06 11:30:00.000000', '2026-10-05 10:00:00.000000', '2026-10-06 11:30:00.000000', NULL, 0),
(4, 4, 4, 4, 'Vazamento de óleo na bengala dianteira direita e troca de retentores', 'EmAndamento', '2026-10-10 08:45:00.000000', NULL, '2026-10-10 08:45:00.000000', '2026-10-10 13:20:00.000000', NULL, 0),
(5, 5, 5, 5, 'Substituição do kit relação completo (coroa, pinhão e corrente com retentor)', 'Concluida', '2026-10-12 11:00:00.000000', '2026-10-12 15:20:00.000000', '2026-10-12 11:00:00.000000', '2026-10-12 15:20:00.000000', NULL, 0),
(6, 6, 6, 6, 'Luz de injeção eletrônica acesa no painel — diagnóstico via scanner', 'AguardandoPeca', '2026-10-15 14:00:00.000000', NULL, '2026-10-15 14:00:00.000000', '2026-10-15 17:10:00.000000', NULL, 0),
(7, 7, 7, 7, 'Troca de embreagem patinando em subidas e ajuste do cabo', 'Concluida', '2026-10-18 09:00:00.000000', '2026-10-19 12:00:00.000000', '2026-10-18 09:00:00.000000', '2026-10-19 12:00:00.000000', NULL, 0),
(8, 8, 8, 8, 'Bateria não segura carga — teste de estator e retificador de voltagem', 'EmAndamento', '2026-10-22 10:30:00.000000', NULL, '2026-10-22 10:30:00.000000', '2026-10-22 14:00:00.000000', NULL, 0),
(9, 9, 9, 10, 'Troca de pneu traseiro furado, alinhamento de roda e balanceamento', 'Concluida', '2026-10-25 13:15:00.000000', '2026-10-25 15:00:00.000000', '2026-10-25 13:15:00.000000', '2026-10-25 15:00:00.000000', NULL, 0),
(10, 10, 10, 11, 'Revisão geral de 20.000 km: regulagem de válvulas, limpeza de bico e fluidos', 'Aberta', '2026-11-01 08:00:00.000000', NULL, '2026-11-01 08:00:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 2. Tabela `os_itens` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_itens` (`Id`, `ordem_servico_id`, `peca_id`, `Descricao`, `quantidade`, `valor_unitario`, `created_at`, `updated_at`, `total`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 1, 'Óleo Motor Semissintético 10W30 + Filtro de Óleo', 2, 55.00, '2026-10-01 09:00:00.000000', NULL, 110.00, NULL, 0),
(2, 1, NULL, 'Mão de obra revisão preventiva 10.000 km', 1, 120.00, '2026-10-01 09:05:00.000000', NULL, 120.00, NULL, 0),
(3, 2, 2, 'Jogo de Pastilhas de Freio Dianteiro Cerâmica', 1, 85.00, '2026-10-03 10:00:00.000000', NULL, 85.00, NULL, 0),
(4, 2, NULL, 'Substituição de pastilhas e sangria de fluido DOT4', 1, 75.00, '2026-10-03 10:10:00.000000', NULL, 75.00, NULL, 0),
(5, 3, 3, 'Vela de Ignição Iridium + Limpeza de Bico Injetor', 1, 145.00, '2026-10-05 11:20:00.000000', NULL, 145.00, NULL, 0),
(6, 4, 4, 'Par de Retentores de Bengala + Fluido de Suspensão Fork Oil', 1, 160.00, '2026-10-10 09:30:00.000000', NULL, 160.00, NULL, 0),
(7, 5, 5, 'Kit Relação Completo Aço 1045 com Corrente O-Ring', 1, 290.00, '2026-10-12 11:30:00.000000', NULL, 290.00, NULL, 0),
(8, 6, NULL, 'Diagnóstico computadorizado de injeção eletrônica via scanner', 1, 90.00, '2026-10-15 14:30:00.000000', NULL, 90.00, NULL, 0),
(9, 7, 6, 'Kit Discos e Separadores de Embreagem + Mão de Obra', 1, 340.00, '2026-10-18 10:15:00.000000', NULL, 340.00, NULL, 0),
(10, 9, 7, 'Pneu Traseiro 140/70-17 Sem Câmara + Montagem e Balanceamento', 1, 420.00, '2026-10-25 13:30:00.000000', NULL, 420.00, NULL, 0);

-- ------------------------------------------------------------
-- 3. Tabela `os_checklists` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_checklists` (`Id`, `ordem_servico_id`, `Item`, `Realizado`, `Observacao`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 'Verificar nível e estado do óleo do motor', 1, 'Óleo substituído conforme especificação do fabricante', '2026-10-01 08:40:00.000000', NULL, NULL, 0),
(2, 1, 'Tensionar e lubrificar corrente de transmissão', 1, 'Folga ajustada para 25mm e lubrificada com spray', '2026-10-01 09:20:00.000000', NULL, NULL, 0),
(3, 2, 'Inspecionar espessura do disco de freio dianteiro', 1, 'Disco dentro do limite de tolerância (4.2mm)', '2026-10-03 09:30:00.000000', NULL, NULL, 0),
(4, 3, 'Testar pressão da bomba de combustível', 1, 'Pressão estável em 3.0 bar', '2026-10-05 10:40:00.000000', NULL, NULL, 0),
(5, 4, 'Verificar alinhamento dos tubos internos da suspensão', 1, 'Tubos sem empenamento ou riscos cromados', '2026-10-10 09:15:00.000000', NULL, NULL, 0),
(6, 5, 'Conferir desgaste dos coxins da coroa traseira', 1, 'Coxins em bom estado, sem folga excessiva', '2026-10-12 11:45:00.000000', NULL, NULL, 0),
(7, 6, 'Leitura de códigos de falha (DTC) na ECU', 1, 'Código P0135 identificado (Sonda Lambda)', '2026-10-15 14:25:00.000000', NULL, NULL, 0),
(8, 7, 'Regular folga do manete de embreagem', 1, 'Folga ajustada entre 10mm e 15mm', '2026-10-18 11:30:00.000000', NULL, NULL, 0),
(9, 8, 'Medir tensão de carga do alternador/retificador a 5.000 rpm', 0, 'Aguardando conclusão da recarga lenta da bateria', '2026-10-22 11:00:00.000000', NULL, NULL, 0),
(10, 10, 'Inspeção de iluminação, setas, buzina e luz de freio', 0, 'Checklist inicial de entrada na oficina', '2026-11-01 08:10:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 4. Tabela `os_observacoes` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_observacoes` (`Id`, `ordem_servico_id`, `Usuario`, `Texto`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 'Carlos Mecânico', 'Cliente solicitou guardar o filtro antigo para conferência.', '2026-10-01 09:10:00.000000', NULL, NULL, 0),
(2, 2, 'Roberto Atendimento', 'Freio dianteiro estava no ferro; disco preservado sem necessidade de troca.', '2026-10-03 10:30:00.000000', NULL, NULL, 0),
(3, 3, 'Marcos Especialista', 'Combustível no tanque apresentava odor de gasolina velha; recomendada limpeza.', '2026-10-05 11:45:00.000000', NULL, NULL, 0),
(4, 4, 'Carlos Mecânico', 'Bengala direita desmontada, aguardando secagem e montagem do novo retentor.', '2026-10-10 11:00:00.000000', NULL, NULL, 0),
(5, 5, 'João Mecânico', 'Kit relação instalado e testado em rodagem curta.', '2026-10-12 14:50:00.000000', NULL, NULL, 0),
(6, 6, 'Marcos Especialista', 'Sonda lambda com aquecedor aberto. Pedido de peça enviado ao estoque.', '2026-10-15 16:00:00.000000', NULL, NULL, 0),
(7, 7, 'Pedro Mecânico', 'Discos novos deixados em banho de óleo por 2 horas antes da montagem.', '2026-10-18 14:20:00.000000', NULL, NULL, 0),
(8, 8, 'Lucas Eletricista', 'Bateria em carga lenta para teste de queda de tensão na partida.', '2026-10-22 11:30:00.000000', NULL, NULL, 0),
(9, 9, 'João Mecânico', 'Calibragem ajustada para 29 psi dianteiro e 33 psi traseiro.', '2026-10-25 14:40:00.000000', NULL, NULL, 0),
(10, 10, 'Roberto Atendimento', 'Motocicleta deixada com capacete no baú traseiro; chave na gaveta 10.', '2026-11-01 08:15:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 5. Tabela `os_avaliacoes` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_avaliacoes` (`Id`, `ordem_servico_id`, `Nota`, `Comentario`, `Usuario`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 5, 'Serviço rápido e preço justo. A moto ficou muito macia após a revisão!', 'Cliente #1', '2026-10-02 10:00:00.000000', NULL, NULL, 0),
(2, 2, 5, 'Freio ficou excelente, atendimento muito atencioso.', 'Cliente #2', '2026-10-04 09:30:00.000000', NULL, NULL, 0),
(3, 3, 4, 'Resolveu a falha do motor perfeitamente, só demorou um dia a mais.', 'Cliente #3', '2026-10-07 14:15:00.000000', NULL, NULL, 0),
(4, 4, 5, 'Ótima transparência no orçamento da suspensão.', 'Cliente #4', '2026-10-11 11:00:00.000000', NULL, NULL, 0),
(5, 5, 5, 'Troca da relação feita na hora, oficina muito limpa e organizada.', 'Cliente #5', '2026-10-13 08:45:00.000000', NULL, NULL, 0),
(6, 6, 4, 'Diagnóstico preciso com o scanner, aguardando apenas a chegada da peça.', 'Cliente #6', '2026-10-16 16:20:00.000000', NULL, NULL, 0),
(7, 7, 5, 'Embreagem ficou leve como zero km. Recomendo!', 'Cliente #7', '2026-10-20 09:10:00.000000', NULL, NULL, 0),
(8, 8, 4, 'Bom atendimento da parte elétrica, explicaram todo o teste.', 'Cliente #8', '2026-10-23 13:00:00.000000', NULL, NULL, 0),
(9, 9, 5, 'Troca do pneu super rápida e já calibraram e alinharam a roda.', 'Cliente #9', '2026-10-26 10:30:00.000000', NULL, NULL, 0),
(10, 10, 5, 'Recepção impecável no agendamento da revisão de 20.000 km.', 'Cliente #10', '2026-11-01 12:00:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 6. Tabela `os_anexos` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_anexos` (`Id`, `ordem_servico_id`, `Nome`, `Tipo`, `Url`, `Observacao`, `data_upload`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 'checklist-revisao-os1.pdf', 'application/pdf', 'https://storage.oficinamotos.com/os/1/checklist-revisao-os1.pdf', 'Checklist assinado pelo cliente na entrada', '2026-10-01 08:35:00.000000', '2026-10-01 08:35:00.000000', NULL, NULL, 0),
(2, 2, 'foto-pastilha-desgastada-os2.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/2/foto-pastilha-desgastada-os2.jpg', 'Foto comparativa da pastilha antiga vs nova', '2026-10-03 09:50:00.000000', '2026-10-03 09:50:00.000000', NULL, NULL, 0),
(3, 3, 'laudo-bico-injetor-os3.pdf', 'application/pdf', 'https://storage.oficinamotos.com/os/3/laudo-bico-injetor-os3.pdf', 'Relatório de vazão antes e depois da limpeza', '2026-10-05 15:00:00.000000', '2026-10-05 15:00:00.000000', NULL, NULL, 0),
(4, 4, 'foto-vazamento-bengala-os4.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/4/foto-vazamento-bengala-os4.jpg', 'Registro do vazamento no retentor direito', '2026-10-10 09:00:00.000000', '2026-10-10 09:00:00.000000', NULL, NULL, 0),
(5, 5, 'foto-kit-relacao-os5.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/5/foto-kit-relacao-os5.jpg', 'Foto da coroa e corrente nova instaladas', '2026-10-12 14:40:00.000000', '2026-10-12 14:40:00.000000', NULL, NULL, 0),
(6, 6, 'relatorio-scanner-os6.pdf', 'application/pdf', 'https://storage.oficinamotos.com/os/6/relatorio-scanner-os6.pdf', 'Print de leitura da ECU via scanner OBD2', '2026-10-15 15:10:00.000000', '2026-10-15 15:10:00.000000', NULL, NULL, 0),
(7, 7, 'foto-discos-embreagem-os7.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/7/foto-discos-embreagem-os7.jpg', 'Discos antigos queimados retirados do motor', '2026-10-18 11:20:00.000000', '2026-10-18 11:20:00.000000', NULL, NULL, 0),
(8, 8, 'teste-bateria-multimetro-os8.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/8/teste-bateria-multimetro-os8.jpg', 'Medição de tensão em repouso (11.8V)', '2026-10-22 10:50:00.000000', '2026-10-22 10:50:00.000000', NULL, NULL, 0),
(9, 9, 'nota-garantia-pneu-os9.pdf', 'application/pdf', 'https://storage.oficinamotos.com/os/9/nota-garantia-pneu-os9.pdf', 'Certificado de garantia do pneu traseiro', '2026-10-25 14:55:00.000000', '2026-10-25 14:55:00.000000', NULL, NULL, 0),
(10, 10, 'vistoria-entrada-os10.jpg', 'image/jpeg', 'https://storage.oficinamotos.com/os/10/vistoria-entrada-os10.jpg', 'Fotos do estado geral da moto no recebimento', '2026-11-01 08:05:00.000000', '2026-11-01 08:05:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 7. Tabela `os_ordens_historico` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_ordens_historico` (`Id`, `ordem_servico_id`, `data_alteracao`, `Usuario`, `Campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, '2026-10-01 08:50:00.000000', 'Carlos Mecânico', 'status', 'Aberta', 'EmAndamento', '2026-10-01 08:50:00.000000', NULL, NULL, 0),
(2, 1, '2026-10-01 16:00:00.000000', 'Roberto Atendimento', 'status', 'EmAndamento', 'Concluida', '2026-10-01 16:00:00.000000', NULL, NULL, 0),
(3, 2, '2026-10-03 14:45:00.000000', 'Roberto Atendimento', 'status', 'EmAndamento', 'Concluida', '2026-10-03 14:45:00.000000', NULL, NULL, 0),
(4, 3, '2026-10-06 11:30:00.000000', 'Marcos Especialista', 'status', 'EmAndamento', 'Concluida', '2026-10-06 11:30:00.000000', NULL, NULL, 0),
(5, 4, '2026-10-10 09:10:00.000000', 'Carlos Mecânico', 'status', 'Aberta', 'EmAndamento', '2026-10-10 09:10:00.000000', NULL, NULL, 0),
(6, 5, '2026-10-12 15:20:00.000000', 'João Mecânico', 'status', 'EmAndamento', 'Concluida', '2026-10-12 15:20:00.000000', NULL, NULL, 0),
(7, 6, '2026-10-15 17:10:00.000000', 'Marcos Especialista', 'status', 'EmAndamento', 'AguardandoPeca', '2026-10-15 17:10:00.000000', NULL, NULL, 0),
(8, 7, '2026-10-19 12:00:00.000000', 'Pedro Mecânico', 'status', 'EmAndamento', 'Concluida', '2026-10-19 12:00:00.000000', NULL, NULL, 0),
(9, 8, '2026-10-22 10:45:00.000000', 'Lucas Eletricista', 'status', 'Aberta', 'EmAndamento', '2026-10-22 10:45:00.000000', NULL, NULL, 0),
(10, 9, '2026-10-25 15:00:00.000000', 'João Mecânico', 'status', 'EmAndamento', 'Concluida', '2026-10-25 15:00:00.000000', NULL, NULL, 0);

-- ------------------------------------------------------------
-- 8. Tabela `os_pagamentos` (10 registros)
-- ------------------------------------------------------------
INSERT INTO `os_pagamentos` (`Id`, `ordem_servico_id`, `Valor`, `Status`, `data_pagamento`, `Metodo`, `Observacao`, `created_at`, `updated_at`, `DeletedAt`, `IsDeleted`) VALUES
(1, 1, 230.00, 'Pago', '2026-10-01 16:05:00.000000', 'PIX', 'Pagamento integral via PIX na retirada da moto', '2026-10-01 16:05:00.000000', NULL, NULL, 0),
(2, 2, 160.00, 'Pago', '2026-10-03 14:50:00.000000', 'Cartão de Débito', 'Pago no débito em parcela única', '2026-10-03 14:50:00.000000', NULL, NULL, 0),
(3, 3, 145.00, 'Pago', '2026-10-06 11:40:00.000000', 'Dinheiro', 'Recebido no caixa em espécie', '2026-10-06 11:40:00.000000', NULL, NULL, 0),
(4, 4, 80.00, 'Pendente', NULL, 'PIX', 'Adiantamento de 50% para compra dos retentores', '2026-10-10 09:40:00.000000', NULL, NULL, 0),
(5, 5, 290.00, 'Pago', '2026-10-12 15:25:00.000000', 'Cartão de Crédito', 'Parcelado em 2x sem juros', '2026-10-12 15:25:00.000000', NULL, NULL, 0),
(6, 6, 90.00, 'Pendente', NULL, 'A Definir', 'Aguardando chegada da sonda lambda para fechamento', '2026-10-15 17:15:00.000000', NULL, NULL, 0),
(7, 7, 340.00, 'Pago', '2026-10-19 12:10:00.000000', 'PIX', 'Comprovante anexado no financeiro', '2026-10-19 12:10:00.000000', NULL, NULL, 0),
(8, 8, 110.00, 'Pendente', NULL, 'Cartão de Débito', 'Orçamento pré-aprovado pelo cliente', '2026-10-22 14:10:00.000000', NULL, NULL, 0),
(9, 9, 420.00, 'Pago', '2026-10-25 15:05:00.000000', 'Cartão de Crédito', 'Parcelado em 3x no cartão', '2026-10-25 15:05:00.000000', NULL, NULL, 0),
(10, 10, 350.00, 'Pendente', NULL, 'PIX', 'Previsão de pagamento na entrega da revisão de 20.000 km', '2026-11-01 08:20:00.000000', NULL, NULL, 0);

