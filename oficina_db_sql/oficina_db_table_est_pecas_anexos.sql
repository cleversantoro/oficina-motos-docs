
-- --------------------------------------------------------

--
-- Estrutura para tabela `est_pecas_anexos`
--

CREATE TABLE `est_pecas_anexos` (
  `Id` bigint NOT NULL,
  `peca_id` bigint NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `est_pecas_anexos`
--

INSERT INTO `est_pecas_anexos` (`Id`, `peca_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(7001, 1001, 'foto-filtro-oleo.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-oleo.jpg', 'Foto do produto', '2025-10-19 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7002, 1002, 'catalogo-ngk.pdf', 'application/pdf', 'https://exemplo.com/docs/catalogo-ngk.pdf', 'Aplicações HB20', '2025-10-23 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7003, 1003, 'pastilha-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/pastilha-trw.jpg', 'Foto caixa TRW', '2025-10-27 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7004, 1004, 'monroe-spec.pdf', 'application/pdf', 'https://exemplo.com/docs/monroe-spec.pdf', 'Especificação técnica', '2025-10-29 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7005, 1005, 'guia-correas-skf.pdf', 'application/pdf', 'https://exemplo.com/docs/guia-correas-skf.pdf', 'Guia de instalação', '2025-11-03 23:55:09', '2025-11-06 23:55:09.443', NULL),
(7006, 1006, 'vela-onix-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/vela-onix-ngk.jpg', 'Foto do produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7007, 1007, 'bomba-fit-bosch.pdf', 'application/pdf', 'https://exemplo.com/docs/bomba-fit-bosch.pdf', 'Manual de instalação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7008, 1008, 'disco-civic-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/disco-civic-trw.jpg', 'Foto da caixa', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7009, 1009, 'embreagem-uno-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/embreagem-uno-skf.jpg', 'Foto do kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7010, 1010, 'oleo-5w30-monroe.pdf', 'application/pdf', 'https://exemplo.com/docs/oleo-5w30-monroe.pdf', 'Ficha técnica (FISPQ)', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7011, 1011, 'bateria-moura-m60ad.jpg', 'image/jpeg', 'https://exemplo.com/media/bateria-moura-m60ad.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7012, 1012, 'lamp-h4-osram-nb.pdf', 'application/pdf', 'https://exemplo.com/docs/lamp-h4-osram-nb.pdf', 'Especificações', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7013, 1013, 'pivo-corsa-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/pivo-corsa-nakata.jpg', 'Foto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7014, 1014, 'filtro-cabine-corolla.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-cabine-corolla.jpg', 'Foto aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7015, 1015, 'tensor-gol-skf.pdf', 'application/pdf', 'https://exemplo.com/docs/tensor-gol-skf.pdf', 'Guia de aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7016, 1016, 'radiador-celta-valeo.jpg', 'image/jpeg', 'https://exemplo.com/media/radiador-celta-valeo.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7017, 1017, 'homocinetica-ka-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/homocinetica-ka-nakata.jpg', 'Foto do kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7018, 1018, 'fluido-freio-dot4-trw.pdf', 'application/pdf', 'https://exemplo.com/docs/fluido-freio-dot4-trw.pdf', 'FISPQ', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7019, 1019, 'bobina-fox-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/bobina-fox-ngk.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7020, 1020, 'oleo-atf-monroe.jpg', 'image/jpeg', 'https://exemplo.com/media/oleo-atf-monroe.jpg', 'Foto frasco', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7021, 1021, 'palheta-bosch-aerofit.pdf', 'application/pdf', 'https://exemplo.com/docs/palheta-bosch-aerofit.pdf', 'Tabela de aplicação', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7022, 1022, 'sonda-up-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/sonda-up-ngk.jpg', 'Foto conector', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7023, 1023, 'pastilha-hilux-trw.jpg', 'image/jpeg', 'https://exemplo.com/media/pastilha-hilux-trw.jpg', 'Foto cerâmica', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7024, 1024, 'amortecedor-onix-monroe.pdf', 'application/pdf', 'https://exemplo.com/docs/amortecedor-onix-monroe.pdf', 'Garantia OESpectrum', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7025, 1025, 'kit-alt-cruze-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/kit-alt-cruze-skf.jpg', 'Foto kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7026, 1026, 'bateria-heliar-70a.jpg', 'image/jpeg', 'https://exemplo.com/media/bateria-heliar-70a.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7027, 1027, 'lamp-h7-philips.pdf', 'application/pdf', 'https://exemplo.com/docs/lamp-h7-philips.pdf', 'Especificações técnicas', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7028, 1028, 'valvula-palio-mte.jpg', 'image/jpeg', 'https://exemplo.com/media/valvula-palio-mte.jpg', 'Foto carcaça', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7029, 1029, 'filtro-comb-golg5-bosch.jpg', 'image/jpeg', 'https://exemplo.com/media/filtro-comb-golg5-bosch.jpg', 'Foto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7030, 1030, 'aditivo-paraflu-bio.pdf', 'application/pdf', 'https://exemplo.com/docs/aditivo-paraflu-bio.pdf', 'FISPQ', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7031, 1031, 'cabo-vela-celta-ngk.jpg', 'image/jpeg', 'https://exemplo.com/media/cabo-vela-celta-ngk.jpg', 'Foto caixa', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7032, 1032, 'bico-thp-bosch.jpg', 'image/jpeg', 'https://exemplo.com/media/bico-thp-bosch.jpg', 'Foto do bico (antiga)', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7033, 1033, 'disco-jetta-trw.pdf', 'application/pdf', 'https://exemplo.com/docs/disco-jetta-trw.pdf', 'Dimensões', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7034, 1034, 'kit-batente-ka-nakata.jpg', 'image/jpeg', 'https://exemplo.com/media/kit-batente-ka-nakata.jpg', 'Foto kit', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL),
(7035, 1035, 'rolamento-gol-skf.jpg', 'image/jpeg', 'https://exemplo.com/media/rolamento-gol-skf.jpg', 'Foto produto', '2025-11-13 10:01:00', '2025-11-13 10:01:00.200', NULL);
