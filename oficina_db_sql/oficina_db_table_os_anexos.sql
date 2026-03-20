
-- --------------------------------------------------------

--
-- Estrutura para tabela `os_anexos`
--

CREATE TABLE `os_anexos` (
  `Id` bigint NOT NULL,
  `ordem_servico_id` bigint NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `data_upload` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `os_anexos`
--

INSERT INTO `os_anexos` (`Id`, `ordem_servico_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(50001, 10001, 'foto-filtro-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10001/filtro.jpg', 'Filtro sujo substituído', '2025-10-29 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50002, 10002, 'video-barulho.mp4', 'video/mp4', 'https://exemplo.com/os10002/barulho.mp4', 'Ruído capturado em teste', '2025-11-02 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50003, 10003, 'relatorio-ignicao.pdf', 'application/pdf', 'https://exemplo.com/os10003/diagnostico.pdf', 'Relatório técnico', '2025-10-20 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50004, 10004, 'foto-freio-novo.jpg', 'image/jpeg', 'https://exemplo.com/os10004/freio.jpg', 'Pastilhas novas instaladas', '2025-10-25 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50005, 10005, 'leitura-obd.jpg', 'image/jpeg', 'https://exemplo.com/os10005/obd.jpg', 'Código P0130 armazenado', '2025-11-07 01:50:12.000', '2025-11-08 01:50:12.037', NULL),
(50006, 10006, 'vela-antiga.jpg', 'image/jpeg', 'https://exemplo.com/os10006/vela-antiga.jpg', 'Velas antigas carbonizadas', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50007, 10007, 'foto-vazamento-uv.jpg', 'image/jpeg', 'https://exemplo.com/os10007/vazamento.jpg', 'Ponto de vazamento no condensador (UV)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50008, 10008, 'audio-freio.mp3', 'audio/mpeg', 'https://exemplo.com/os10008/audio.mp3', 'Áudio do ruído (cliente)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50009, 10009, 'foto-embreagem.jpg', 'image/jpeg', 'https://exemplo.com/os10009/embreagem.jpg', 'Disco de embreagem antigo', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50010, 10010, 'nota-oleo.pdf', 'application/pdf', 'https://exemplo.com/os10010/nota.pdf', 'Nota fiscal óleo Monroe', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50011, 10011, 'teste-bateria.png', 'image/png', 'https://exemplo.com/os10011/teste.png', 'Resultado teste CCA', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50012, 10012, 'foto-lampada.jpg', 'image/jpeg', 'https://exemplo.com/os10012/lampada.jpg', 'Caixa lâmpada Osram', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50013, 10013, 'foto-pivo-folga.jpg', 'image/jpeg', 'https://exemplo.com/os10013/pivo.jpg', 'Folga excessiva pivô LE', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50014, 10014, 'filtro-cabine-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10014/filtro.jpg', 'Filtro antigo contaminado', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50015, 10015, 'video-tensor.mp4', 'video/mp4', 'https://exemplo.com/os10015/video.mp4', 'Ruído do tensor', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50016, 10016, 'foto-mangueira.jpg', 'image/jpeg', 'https://exemplo.com/os10016/mangueira.jpg', 'Vazamento mangueira superior', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50017, 10017, 'foto-coifa-rasgada.jpg', 'image/jpeg', 'https://exemplo.com/os10017/coifa.jpg', 'Coifa homocinética LD', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50018, 10018, 'nota-fluido-trw.pdf', 'application/pdf', 'https://exemplo.com/os10018/nota.pdf', 'Nota fiscal fluido', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50019, 10019, 'scanner-p0301.png', 'image/png', 'https://exemplo.com/os10019/scanner.png', 'Falha cilindro 1', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50020, 10020, 'foto-oleo-atf-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10020/oleo.jpg', 'Comparativo óleo ATF', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50021, 10021, 'foto-palheta.jpg', 'image/jpeg', 'https://exemplo.com/os10021/palheta.jpg', 'Palheta Bosch instalada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50022, 10022, 'scanner-sonda-up.png', 'image/png', 'https://exemplo.com/os10022/scanner.png', 'Gráfico sonda lambda (travada)', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50023, 10023, 'foto-pastilha-hilux.jpg', 'image/jpeg', 'https://exemplo.com/os10023/pastilha.jpg', 'Pastilha cerâmica TRW', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50024, 10024, 'amortecedor-estourado.jpg', 'image/jpeg', 'https://exemplo.com/os10024/amortecedor.jpg', 'Vazamento óleo amortecedor TR LD', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50025, 10025, 'video-correia-cruze.mp4', 'video/mp4', 'https://exemplo.com/os10025/video.mp4', 'Ruído tensor alternador', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50026, 10026, 'foto-bateria-heliar.jpg', 'image/jpeg', 'https://exemplo.com/os10026/bateria.jpg', 'Bateria nova instalada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50027, 10027, 'foto-lampada-h7.jpg', 'image/jpeg', 'https://exemplo.com/os10027/lampada.jpg', 'Caixa Philips H7', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50028, 10028, 'valvula-travada.jpg', 'image/jpeg', 'https://exemplo.com/os10028/valvula.jpg', 'Válvula termostática antiga', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50029, 10029, 'filtro-comb-antigo.jpg', 'image/jpeg', 'https://exemplo.com/os10029/filtro.jpg', 'Filtro combustível antigo', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50030, 10030, 'foto-aditivo.jpg', 'image/jpeg', 'https://exemplo.com/os10030/aditivo.jpg', 'Aditivo Paraflu Rosa', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50031, 10031, 'foto-fuga-corrente.jpg', 'image/jpeg', 'https://exemplo.com/os10031/fuga.jpg', 'Cabo vela cilindro 2 com fuga', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50032, 10032, 'orcamento-cancelado.pdf', 'application/pdf', 'https://exemplo.com/os10032/cancelado.pdf', 'Peça descontinuada', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50033, 10033, 'disco-traseiro-jetta.jpg', 'image/jpeg', 'https://exemplo.com/os10033/disco.jpg', 'Discos novos TRW', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50034, 10034, 'kit-batente-ka.jpg', 'image/jpeg', 'https://exemplo.com/os10034/batente.jpg', 'Kit batente Nakata', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL),
(50035, 10035, 'rolamento-skf-abs.jpg', 'image/jpeg', 'https://exemplo.com/os10035/rolamento.jpg', 'Rolamento SKF com anel ABS', '2025-11-13 16:56:14.038', '2025-11-13 13:04:00.005', NULL);
