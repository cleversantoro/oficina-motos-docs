
-- --------------------------------------------------------

--
-- Estrutura para tabela `cad_clientes_origens`
--

CREATE TABLE `cad_clientes_origens` (
  `Id` bigint NOT NULL,
  `Nome` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Descricao` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_At` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `Updated_At` datetime(6) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cad_clientes_origens`
--

INSERT INTO `cad_clientes_origens` (`Id`, `Nome`, `Descricao`, `Created_At`, `Updated_At`) VALUES
(1, 'Campanha Digital', 'Leads de anúncios on-line', '2025-10-14 00:15:25.000000', NULL),
(2, 'Indicação', 'Clientes indicados por parceiros', '2025-10-14 00:15:25.000000', NULL),
(3, 'Walk-in', 'Atendimento presencial', '2025-10-14 00:15:25.000000', NULL),
(4, 'Telefone', 'Contato via call center', '2025-10-14 00:15:25.000000', NULL),
(5, 'Aplicativo', 'Cadastro feito no app', '2025-10-14 00:15:25.000000', NULL),
(6, 'Google Maps', 'Cliente encontrou pelo Google Maps', '2025-11-13 14:00:00.000000', NULL),
(7, 'Instagram', 'Lead de campanha paga no Instagram', '2025-11-13 14:00:00.000000', NULL),
(8, 'Facebook', 'Lead de campanha paga no Facebook', '2025-11-13 14:00:00.000000', NULL),
(9, 'Seguradora Alfa', 'Parceria com seguradora Alfa', '2025-11-13 14:00:00.000000', NULL),
(10, 'Seguradora Beta', 'Parceria com seguradora Beta', '2025-11-13 14:00:00.000000', NULL),
(11, 'Indicação (Mecânico)', 'Indicação de mecânico parceiro', '2025-11-13 14:00:00.000000', NULL),
(12, 'Google (Orgânico)', 'Busca orgânica no Google', '2025-11-13 14:00:00.000000', NULL),
(13, 'Waze', 'Anúncio no Waze', '2025-11-13 14:00:00.000000', NULL),
(14, 'LinkedIn', 'Prospecção ativa (PJ)', '2025-11-13 14:00:00.000000', NULL),
(15, 'Rádio Local', 'Campanha de rádio', '2025-11-13 14:00:00.000000', NULL),
(16, 'Evento (Feira)', 'Participação em feira local', '2025-11-13 14:00:00.000000', NULL),
(17, 'Panfleto', 'Distribuição de material gráfico', '2025-11-13 14:00:00.000000', NULL),
(18, 'Youtube', 'Canal de dicas da oficina', '2025-11-13 14:00:00.000000', NULL),
(19, 'Cliente Antigo (Reativado)', 'Cliente que voltou após > 2 anos', '2025-11-13 14:00:00.000000', NULL),
(20, 'Parceria (Loja de Pneus)', 'Indicação de loja de pneus vizinha', '2025-11-13 14:00:00.000000', NULL),
(21, 'Parceria (Lava-rápido)', 'Indicação de lava-rápido', '2025-11-13 14:00:00.000000', NULL),
(22, 'SMS Marketing', 'Campanha de SMS', '2025-11-13 14:00:00.000000', NULL),
(23, 'E-mail Marketing', 'Campanha de E-mail (Base Fria)', '2025-11-13 14:00:00.000000', NULL),
(24, 'WhatsApp Business', 'Contato inicial pelo WhatsApp', '2025-11-13 14:00:00.000000', NULL),
(25, 'Blog Post', 'Lead via artigo do blog', '2025-11-13 14:00:00.000000', NULL),
(26, 'Grupo de Carros', 'Indicação em grupo de carros (WhatsApp/Face)', '2025-11-13 14:00:00.000000', NULL),
(27, 'Outdoor', 'Campanha em outdoor regional', '2025-11-13 14:00:00.000000', NULL),
(28, 'GetNinjas', 'Plataforma de serviços', '2025-11-13 14:00:00.000000', NULL),
(29, 'Associação Comercial', 'Membro da associação comercial (PJ)', '2025-11-13 14:00:00.000000', NULL),
(30, 'Frota (Contrato)', 'Contrato de manutenção de frota', '2025-11-13 14:00:00.000000', NULL),
(31, 'Google Ads (Display)', 'Rede de Display', '2025-11-13 14:00:00.000000', NULL),
(32, 'TikTok', 'Campanha de vídeos curtos', '2025-11-13 14:00:00.000000', NULL),
(33, 'Carro de Som', 'Publicidade local', '2025-11-13 14:00:00.000000', NULL),
(34, 'Reclame Aqui', 'Cliente veio após resposta positiva', '2025-11-13 14:00:00.000000', NULL),
(35, 'Desconhecido', 'Cliente não soube informar', '2025-11-13 14:00:00.000000', NULL);
