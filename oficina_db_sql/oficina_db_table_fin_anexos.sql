
-- --------------------------------------------------------

--
-- Estrutura para tabela `fin_anexos`
--

CREATE TABLE `fin_anexos` (
  `Id` bigint NOT NULL,
  `pagamento_id` bigint DEFAULT NULL,
  `conta_pagar_id` bigint DEFAULT NULL,
  `conta_receber_id` bigint DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fin_anexos`
--

INSERT INTO `fin_anexos` (`Id`, `pagamento_id`, `conta_pagar_id`, `conta_receber_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(9601, 9101, NULL, 9301, 'recibo-os10001.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10001.pdf', 'Recibo pagamento cliente', '2025-10-31 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9602, NULL, 9202, NULL, 'nf12450.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12450.pdf', 'Nota fiscal amortecedores Monroe', '2025-11-04 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9603, 9103, NULL, 9303, 'recibo-os10003.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10003.pdf', 'Recibo OS diagnóstico', '2025-10-22 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9604, NULL, 9201, NULL, 'nf12345.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12345.pdf', 'Compra filtros Bosch', '2025-11-03 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9605, NULL, 9205, NULL, 'cotacao-sensores.pdf', 'application/pdf', 'https://exemplo.com/fin/cotacao-sensores.pdf', 'Cotação aguardando aprovação', '2025-11-07 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9606, 9106, NULL, 9306, 'recibo-os10006.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10006.pdf', 'Recibo OS 10006', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9607, 9110, NULL, 9310, 'recibo-os10010.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10010.pdf', 'Recibo OS 10010', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9608, 9111, NULL, 9311, 'recibo-os10011.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10011.pdf', 'Recibo OS 10011', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9609, 9115, NULL, 9317, 'recibo-os10017.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10017.pdf', 'Recibo OS 10017', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9610, 9120, NULL, 9334, 'recibo-os10034.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10034.pdf', 'Recibo OS 10034', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9611, 9135, NULL, 9335, 'recibo-os10035.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10035.pdf', 'Recibo OS 10035', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9612, NULL, NULL, 9307, 'orcamento-os10007.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10007.pdf', 'Orçamento A/C', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9613, NULL, NULL, 9308, 'orcamento-os10008.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10008.pdf', 'Orçamento Freio Civic', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9614, NULL, NULL, 9315, 'orcamento-os10015.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10015.pdf', 'Orçamento Tensor Gol', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9615, NULL, NULL, 9319, 'orcamento-os10019.pdf', 'application/pdf', 'https://exemplo.com/fin/orcamento-os10019.pdf', 'Orçamento Bobina Fox', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9616, NULL, 9206, NULL, 'nf-lubribrasil.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-lubribrasil.pdf', 'NF Lubrificantes', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9617, NULL, 9207, NULL, 'nf-pneuforte.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-pneuforte.pdf', 'NF Pneus', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9618, NULL, 9208, NULL, 'nf-somcenter.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-somcenter.pdf', 'NF Alarmes', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9619, NULL, 9209, NULL, 'nf-quimicar.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-quimicar.pdf', 'NF Aditivos', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9620, NULL, 9210, NULL, 'nf-ferramaster.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-ferramaster.pdf', 'NF Scanner', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9621, NULL, 9211, NULL, 'nf-ilumicenter.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-ilumicenter.pdf', 'NF Lâmpadas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9622, NULL, 9212, NULL, 'nf-baterias-hz.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-baterias-hz.pdf', 'NF Baterias', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9623, NULL, 9213, NULL, 'nf-4x4.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-4x4.pdf', 'NF Peças 4x4', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9624, NULL, 9214, NULL, 'nf-vidrocar.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-vidrocar.pdf', 'NF Palhetas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9625, NULL, 9215, NULL, 'nf-autojuntas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-autojuntas.pdf', 'NF Juntas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9626, 9121, NULL, NULL, 'boleto-lubribrasil.pdf', 'application/pdf', 'https://exemplo.com/fin/boleto-lubribrasil.pdf', 'Boleto CP 9206', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9627, 9122, NULL, NULL, 'comprovante-pix-pneus.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pix-pneus.pdf', 'Agendamento PIX CP 9207', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9628, 9124, NULL, NULL, 'comprovante-pgto-quimicar.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-quimicar.pdf', 'Recibo dinheiro CP 9209', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9629, 9126, NULL, NULL, 'comprovante-pgto-ilumicenter.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-ilumicenter.pdf', 'Comprovante PIX CP 9211', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9630, 9128, NULL, NULL, 'comprovante-pgto-4x4.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-4x4.pdf', 'Comprovante Débito CP 9213', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9631, 9130, NULL, NULL, 'comprovante-pgto-juntas.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-juntas.pdf', 'Comprovante PIX CP 9215', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9632, 9133, NULL, NULL, 'comprovante-pgto-arrefecer.pdf', 'application/pdf', 'https://exemplo.com/fin/comprovante-pgto-arrefecer.pdf', 'Comprovante TED CP 9218', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9633, NULL, 9222, NULL, 'nf-borrachas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-borrachas.pdf', 'NF Mangueiras', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9634, NULL, 9226, NULL, 'nf-rodas.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-rodas.pdf', 'NF Rodas', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL),
(9635, NULL, 9229, NULL, 'nf-parafusos.pdf', 'application/pdf', 'https://exemplo.com/fin/nf-parafusos.pdf', 'NF Fixa Tudo', '2025-11-13 00:00:00.000', '2025-11-13 14:15:00.006', NULL);
