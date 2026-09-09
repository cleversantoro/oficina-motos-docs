-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: oficina-mysql
-- Tempo de geração: 13/11/2025 às 17:04
-- Versão do servidor: 8.4.6
-- Versão do PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina_db`
--

--
-- Despejando dados para a tabela `cad_clientes_anexos`
--

INSERT INTO `cad_clientes_anexos` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Nome`, `Tipo`, `Url`, `Observacao`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 'RG_Mariana.pdf', 'application/pdf', 'https://storage.oficina.com/docs/RG_Mariana.pdf', 'Doc de identificação'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 'CNH_Carlos.jpg', 'image/jpeg', 'https://storage.oficina.com/docs/CNH_Carlos.jpg', 'CNH digitalizada'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 'Orcamento_Luciana.xlsx', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 'https://storage.oficina.com/docs/Orcamento_Luciana.xlsx', 'Orçamento aprovado'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 'Comprovante_Endereco_Eduardo.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Comprovante_Endereco_Eduardo.pdf', 'Endereço atualizado'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 'Contrato_Fernanda.pdf', 'application/pdf', 'https://storage.oficina.com/docs/Contrato_Fernanda.pdf', 'Contrato corporativo');

--
-- Despejando dados para a tabela `cad_clientes_contatos`
--

INSERT INTO `cad_clientes_contatos` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Tipo`, `Valor`, `Principal`, `Observacao`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 2, '(11) 91234-1001', 1, 'WhatsApp principal'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 3, 'carlos.barbosa@example.com', 1, 'E-mail preferencial'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 1, '(11) 95555-3003', 1, 'Telefone residencial'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 2, '(11) 94444-4004', 1, 'Contato urgente'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 3, 'fernanda.reis@example.com', 1, 'E-mail corporativo'),
(6, '2025-10-14 00:15:25.000000', NULL, 12, 2, '(11) 91234-1056', 1, 'WhatsApp principal'),
(8, '2025-10-14 00:15:25.000000', NULL, 12, 2, '(11) 91234-1078', 0, 'Telefone residencial');

--
-- Despejando dados para a tabela `cad_clientes_enderecos`
--

INSERT INTO `cad_clientes_enderecos` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Tipo`, `Cep`, `Logradouro`, `Numero`, `Bairro`, `Cidade`, `Estado`, `Pais`, `Complemento`, `Principal`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 1, '01310-100', 'Av. Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', 'Brasil', 'Apto 101', 1),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 1, '04001-001', 'Rua Vergueiro', '250', 'Paraíso', 'São Paulo', 'SP', 'Brasil', NULL, 1),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 1, '04567-020', 'Av. Faria Lima', '1500', 'Itaim Bibi', 'São Paulo', 'SP', 'Brasil', 'Conj. 1207', 1),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 2, '06000-020', 'Rua do Progresso', '900', 'Centro', 'Osasco', 'SP', 'Brasil', 'Sala 05', 1),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 3, '07070-030', 'Rua das Flores', '45', 'Jardim', 'Guarulhos', 'SP', 'Brasil', NULL, 1);

--
-- Despejando dados para a tabela `cad_clientes_financeiro`
--

INSERT INTO `cad_clientes_financeiro` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Limite_Credito`, `Prazo_Pagamento`, `Bloqueado`, `Observacoes`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 5000.00, 15, 0, 'Limite padrão PF'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 8000.00, 20, 0, 'Cliente VIP'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 3000.00, 10, 0, 'Liberado após análise'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 4500.00, 20, 0, 'Perfil regular'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 6000.00, 25, 0, 'Cliente corporativo pequeno porte');

--
-- Despejando dados para a tabela `cad_clientes_indicacoes`
--

INSERT INTO `cad_clientes_indicacoes` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Indicador_Nome`, `Indicador_Telefone`, `Observacao`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 'Juliana Ramos', '(11) 98888-0000', 'Amiga de infância'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 'Pedro Oliveira', '(11) 97777-3333', 'Colega de trabalho'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 'Fernanda Dias', '(11) 96666-2222', 'Contato via telefone'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 'Marcos Lima', '(11) 95555-1111', 'Vizinho'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 'Ana Ferreira', '(11) 93333-4444', 'Parceira de negócios');

--
-- Despejando dados para a tabela `cad_clientes_lgpd_consentimentos`
--

INSERT INTO `cad_clientes_lgpd_consentimentos` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Tipo`, `Aceito`, `Data`, `Valido_Ate`, `Observacoes`, `Canal`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, 1, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Aceitou receber promoções', 'API'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, 2, 1, '2025-10-14 00:15:25.000000', '2026-10-14 00:15:25.000000', 'Compartilhamento de dados', 'Portal'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, 3, 1, '2025-10-14 00:15:25.000000', '2027-10-14 00:15:25.000000', 'Comunicados de serviço', 'Telefone'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, 1, 0, '2025-10-14 00:15:25.000000', NULL, 'Não deseja marketing', 'Aplicativo'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, 3, 1, '2025-10-14 00:15:25.000000', '2028-10-14 00:15:25.000000', 'Notificações sobre agenda', 'API');

--
-- Despejando dados para a tabela `cad_clientes_origens`
--

INSERT INTO `cad_clientes_origens` (`Id`, `Created_At`, `Updated_At`, `Nome`, `Descricao`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 'Campanha Digital', 'Leads de anúncios on-line'),
(2, '2025-10-14 00:15:25.000000', NULL, 'Indicação', 'Clientes indicados por parceiros'),
(3, '2025-10-14 00:15:25.000000', NULL, 'Walk-in', 'Atendimento presencial'),
(4, '2025-10-14 00:15:25.000000', NULL, 'Telefone', 'Contato via call center'),
(5, '2025-10-14 00:15:25.000000', NULL, 'Aplicativo', 'Cadastro feito no app');

--
-- Despejando dados para a tabela `cad_clientes_pf`
--

INSERT INTO `cad_clientes_pf` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Cpf`, `Rg`, `Data_Nascimento`, `Genero`, `Estado_Civil`, `Profissao`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 1, '12345678901', '45.123.987-1', '1990-05-12', 'Feminino', 'Solteira', 'Designer'),
(2, '2025-10-14 00:15:25.000000', NULL, 2, '98765432100', '12.987.654-2', '1985-03-22', 'Masculino', 'Casado', 'Analista de Sistemas'),
(3, '2025-10-14 00:15:25.000000', NULL, 3, '45678912300', '98.321.456-9', '1993-11-01', 'Feminino', 'Divorciada', 'Administradora'),
(4, '2025-10-14 00:15:25.000000', NULL, 4, '74185296300', '74.185.296-3', '1988-07-30', 'Masculino', 'Solteiro', 'Professor'),
(5, '2025-10-14 00:15:25.000000', NULL, 5, '36925814700', '36.925.814-7', '1995-01-18', 'Feminino', 'Casada', 'Arquiteta');

--
-- Despejando dados para a tabela `cad_clientes_pj`
--

INSERT INTO `cad_clientes_pj` (`Id`, `Created_At`, `Updated_At`, `Cliente_Id`, `Cnpj`, `Razao_Social`, `Nome_Fantasia`, `Inscricao_Estadual`, `Inscricao_Municipal`, `Responsavel`) VALUES
(1, '2025-10-14 00:15:25.000000', NULL, 6, '11222333444455', 'Auto Peças Horizonte LTDA', 'Auto Horizonte', '112.223.334.444', '12.345.678', 'Paulo Henrique'),
(2, '2025-10-14 00:15:25.000000', NULL, 7, '55443322110088', 'TechFleet Serviços LTDA', 'TechFleet', '554.433.221.100', '98.765.432', 'Renata Lima'),
(3, '2025-10-14 00:15:25.000000', NULL, 8, '00334455667788', 'Logparts Comércio LTDA', 'Logparts', '003.344.556.677', '11.222.333', 'Fernando Costa'),
(4, '2025-10-14 00:15:25.000000', NULL, 9, '00998877665544', 'FleetPlus Transportes SA', 'FleetPlus', '009.988.776.655', '66.555.444', 'Marcela Queiroz'),
(5, '2025-10-14 00:15:25.000000', NULL, 10, '00778899001122', 'Motores Brasil Indústria LTDA', 'Motores Brasil', '007.788.990.011', '55.444.333', 'Leonardo Azevedo');

--
-- Despejando dados para a tabela `fin_anexos`
--

INSERT INTO `fin_anexos` (`id`, `pagamento_id`, `conta_pagar_id`, `conta_receber_id`, `nome`, `tipo`, `url`, `observacao`, `data_upload`, `created_at`, `updated_at`) VALUES
(9601, 9101, NULL, 9301, 'recibo-os10001.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10001.pdf', 'Recibo pagamento cliente', '2025-10-31 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9602, NULL, 9202, NULL, 'nf12450.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12450.pdf', 'Nota fiscal amortecedores Monroe', '2025-11-04 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9603, 9103, NULL, 9303, 'recibo-os10003.pdf', 'application/pdf', 'https://exemplo.com/fin/recibo-os10003.pdf', 'Recibo OS diagnóstico', '2025-10-22 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9604, NULL, 9201, NULL, 'nf12345.pdf', 'application/pdf', 'https://exemplo.com/fin/nf12345.pdf', 'Compra filtros Bosch', '2025-11-03 02:00:02.000', '2025-11-08 02:00:02.822', NULL),
(9605, NULL, 9205, NULL, 'cotacao-sensores.pdf', 'application/pdf', 'https://exemplo.com/fin/cotacao-sensores.pdf', 'Cotação aguardando aprovação', '2025-11-07 02:00:02.000', '2025-11-08 02:00:02.822', NULL);

--
-- Despejando dados para a tabela `fin_contas_pagar`
--

INSERT INTO `fin_contas_pagar` (`id`, `fornecedor_id`, `descricao`, `valor`, `vencimento`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9201, 301, 'Compra de filtros de óleo Bosch', 580.00, '2025-11-18 02:00:02.000', 'PENDENTE', NULL, 904, 'Prazo 10 dias via PIX', '2025-11-08 02:00:02.716', NULL),
(9202, 302, 'Compra de amortecedores Monroe', 1396.00, '2025-11-03 02:00:02.000', 'PAGO', '2025-11-05 02:00:02.000', 902, 'Parcela única no cartão', '2025-11-08 02:00:02.716', NULL),
(9203, 303, 'Compra de pastilhas TRW', 480.00, '2025-11-01 02:00:02.000', 'PAGO', '2025-11-02 02:00:02.000', 901, 'Pago em dinheiro na entrega', '2025-11-08 02:00:02.716', NULL),
(9204, 304, 'Compra de sensores Eletricar', 820.50, '2025-11-23 02:00:02.000', 'PENDENTE', NULL, 905, 'Aguardando nota fiscal', '2025-11-08 02:00:02.716', NULL),
(9205, 305, 'Compra de buchas Suspensul', 600.00, '2025-11-28 02:00:02.000', 'PENDENTE', NULL, 904, 'Pagamento agendado via PIX', '2025-11-08 02:00:02.716', NULL);

--
-- Despejando dados para a tabela `fin_contas_receber`
--

INSERT INTO `fin_contas_receber` (`id`, `cliente_id`, `descricao`, `valor`, `vencimento`, `status`, `data_recebimento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9301, 201, 'Ordem #10001 - Troca de óleo', 250.00, '2025-10-31 02:00:02.000', 'RECEBIDO', '2025-10-31 02:00:02.000', 903, 'Pago no débito no balcão', '2025-11-08 02:00:02.741', NULL),
(9302, 202, 'Ordem #10002 - Suspensão dianteira', 698.00, '2025-11-10 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando aprovação', '2025-11-08 02:00:02.741', NULL),
(9303, 203, 'Ordem #10003 - Diagnóstico de ignição', 320.00, '2025-10-21 02:00:02.000', 'RECEBIDO', '2025-10-22 02:00:02.000', 901, 'Pago em espécie', '2025-11-08 02:00:02.741', NULL),
(9304, 204, 'Ordem #10004 - Freios e fluido', 160.00, '2025-10-25 02:00:02.000', 'RECEBIDO', '2025-10-25 02:00:02.000', 902, 'Cartão de crédito', '2025-11-08 02:00:02.741', NULL),
(9305, 205, 'Ordem #10005 - Scanner de injeção', 89.00, '2025-11-13 02:00:02.000', 'PENDENTE', NULL, 904, 'Aguardando liberação', '2025-11-08 02:00:02.741', NULL);

--
-- Despejando dados para a tabela `fin_historico`
--

INSERT INTO `fin_historico` (`id`, `entidade`, `entidade_id`, `data_alteracao`, `usuario`, `campo`, `valor_antigo`, `valor_novo`, `created_at`, `updated_at`) VALUES
(9501, 'fin_contas_pagar', 9202, '2025-11-03 02:00:02.000', 'clever', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9502, 'fin_contas_receber', 9303, '2025-10-22 02:00:02.000', 'maria', 'status', 'PENDENTE', 'RECEBIDO', '2025-11-08 02:00:02.802', NULL),
(9503, 'fin_pagamentos', 9104, '2025-10-25 02:00:02.000', 'ana', 'status', 'PENDENTE', 'PAGO', '2025-11-08 02:00:02.802', NULL),
(9504, 'fin_contas_pagar', 9205, '2025-11-07 02:00:02.000', 'clever', 'observacao', 'Aguardando NF', 'Pagamento agendado via PIX', '2025-11-08 02:00:02.802', NULL),
(9505, 'fin_contas_receber', 9302, '2025-11-07 02:00:02.000', 'paulo', 'status', 'PENDENTE', 'AGUARDANDO', '2025-11-08 02:00:02.802', NULL);

--
-- Despejando dados para a tabela `fin_lancamentos`
--

INSERT INTO `fin_lancamentos` (`id`, `tipo`, `descricao`, `valor`, `data_lancamento`, `referencia`, `observacao`, `created_at`, `updated_at`) VALUES
(9401, 'ENTRADA', 'Recebimento OS #10001', 250.00, '2025-10-31 02:00:02.000', 'OS10001', 'Pagamento concluído', '2025-11-08 02:00:02.780', NULL),
(9402, 'SAIDA', 'Compra filtros Bosch', 580.00, '2025-11-03 02:00:02.000', 'NF12345', 'Fornecedor 301', '2025-11-08 02:00:02.780', NULL),
(9403, 'ENTRADA', 'Recebimento OS #10003', 320.00, '2025-10-22 02:00:02.000', 'OS10003', 'Serviço concluído', '2025-11-08 02:00:02.780', NULL),
(9404, 'SAIDA', 'Compra amortecedores Monroe', 1396.00, '2025-11-05 02:00:02.000', 'NF12450', 'Pago cartão crédito', '2025-11-08 02:00:02.780', NULL),
(9405, 'ENTRADA', 'Recebimento OS #10004', 160.00, '2025-10-25 02:00:02.000', 'OS10004', 'Recebido via cartão crédito', '2025-11-08 02:00:02.780', NULL);

--
-- Despejando dados para a tabela `fin_metodos_pagamento`
--

INSERT INTO `fin_metodos_pagamento` (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(901, 'Dinheiro', 'Pagamento em espécie no caixa', '2025-11-08 02:00:02.684', NULL),
(902, 'Cartão Crédito', 'Pagamentos via cartão de crédito', '2025-11-08 02:00:02.684', NULL),
(903, 'Cartão Débito', 'Pagamentos via cartão de débito', '2025-11-08 02:00:02.684', NULL),
(904, 'PIX', 'Transferência instantânea via PIX', '2025-11-08 02:00:02.684', NULL),
(905, 'Boleto', 'Cobrança via boleto bancário', '2025-11-08 02:00:02.684', NULL);

--
-- Despejando dados para a tabela `fin_pagamentos`
--

INSERT INTO `fin_pagamentos` (`id`, `ordem_servico_id`, `cliente_id`, `fornecedor_id`, `valor`, `status`, `data_pagamento`, `metodo_id`, `observacao`, `created_at`, `updated_at`) VALUES
(9101, 10001, 201, NULL, 250.00, 'PAGO', '2025-10-31 02:00:02.000', 903, 'Recebido no balcão', '2025-11-08 02:00:02.761', NULL),
(9102, NULL, NULL, 302, 1396.00, 'PAGO', '2025-11-05 02:00:02.000', 902, 'Compra amortecedores Monroe', '2025-11-08 02:00:02.761', NULL),
(9103, 10003, 203, NULL, 320.00, 'PAGO', '2025-10-22 02:00:02.000', 901, 'Serviço concluído', '2025-11-08 02:00:02.761', NULL),
(9104, 10004, 204, NULL, 160.00, 'PAGO', '2025-10-25 02:00:02.000', 902, 'Freio e fluido', '2025-11-08 02:00:02.761', NULL),
(9105, NULL, NULL, 304, 820.50, 'PENDENTE', NULL, 905, 'Compra sensores aguardando NF', '2025-11-08 02:00:02.761', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
