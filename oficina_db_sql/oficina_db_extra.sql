
--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_origem` (`Origem_Id`);

--
-- Índices de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_anexos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_contatos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_documentos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_enderecos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_financeiro_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_indicacoes_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_lgpd_consentimentos_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_origens`
--
ALTER TABLE `cad_clientes_origens`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_pf_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_clientes_pj_cliente` (`Cliente_Id`);

--
-- Índices de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_codigo` (`Codigo`),
  ADD UNIQUE KEY `UX_cad_fornecedores_documento` (`Documento`),
  ADD KEY `IX_cad_fornecedores_segmento` (`Segmento_Principal_Id`);

--
-- Índices de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_avaliacoes_fornecedor` (`Fornecedor_Id`,`Data_Avaliacao`);

--
-- Índices de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_bancos` (`Fornecedor_Id`,`Banco`,`Agencia`,`Conta`,`Digito`);

--
-- Índices de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_certificacoes` (`Fornecedor_Id`,`Titulo`);

--
-- Índices de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_contatos` (`Fornecedor_Id`,`Tipo`,`Valor`);

--
-- Índices de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_documentos` (`Fornecedor_Id`,`Tipo`,`Numero`);

--
-- Índices de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_fornecedores_enderecos_fornecedor_tipo` (`Fornecedor_Id`,`Tipo`);

--
-- Índices de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_representantes` (`Fornecedor_Id`,`Nome`);

--
-- Índices de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_codigo` (`Codigo`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_nome` (`Nome`);

--
-- Índices de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_fornecedores_segmentos_rel` (`Fornecedor_Id`,`Segmento_Id`),
  ADD KEY `IX_cad_fornecedores_segmentos_rel_segmento` (`Segmento_Id`);

--
-- Índices de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_codigo` (`Codigo`),
  ADD KEY `IX_cad_mecanicos_especialidade` (`Especialidade_Principal_Id`);

--
-- Índices de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_mecanico` (`Mecanico_Id`),
  ADD KEY `IX_cad_mecanicos_certificacoes_especialidade` (`Especialidade_Id`);

--
-- Índices de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_contatos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_disponibilidades_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_documentos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_enderecos_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_especialidades_codigo` (`Codigo`);

--
-- Índices de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_mecanicos_especialidades_rel` (`Mecanico_Id`,`Especialidade_Id`),
  ADD KEY `IX_cad_mecanicos_especialidades_rel_especialidade` (`Especialidade_Id`);

--
-- Índices de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_mecanicos_experiencias_mecanico` (`Mecanico_Id`);

--
-- Índices de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_veiculos_placa` (`Placa`),
  ADD KEY `IX_cad_veiculos_cliente` (`Cliente_Id`),
  ADD KEY `IX_cad_veiculos_modelo` (`Modelo_Id`);

--
-- Índices de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_cad_veiculos_marcas_nome` (`Nome`);

--
-- Índices de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_cad_veiculos_modelos_marca` (`Marca_Id`);

--
-- Índices de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_categorias_nome` (`nome`);

--
-- Índices de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_fabricantes_nome` (`nome`);

--
-- Índices de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_localizacoes_descricao` (`descricao`);

--
-- Índices de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_movimentacoes_peca` (`peca_id`);

--
-- Índices de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_pecas_codigo` (`codigo`),
  ADD KEY `IX_est_pecas_fabricante` (`fabricante_id`),
  ADD KEY `IX_est_pecas_categoria` (`categoria_id`),
  ADD KEY `IX_est_pecas_localizacao` (`localizacao_id`);

--
-- Índices de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_anexos_peca` (`peca_id`);

--
-- Índices de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_est_pecas_fornecedores` (`peca_id`,`fornecedor_id`),
  ADD KEY `IX_est_pecas_fornecedores_fornecedor` (`fornecedor_id`);

--
-- Índices de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_est_pecas_historico_peca` (`peca_id`);

--
-- Índices de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_anexos_pagamento` (`pagamento_id`),
  ADD KEY `IX_fin_anexos_conta_pagar` (`conta_pagar_id`),
  ADD KEY `IX_fin_anexos_conta_receber` (`conta_receber_id`);

--
-- Índices de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_pagar_fornecedor` (`fornecedor_id`),
  ADD KEY `IX_fin_contas_pagar_metodo` (`metodo_id`);

--
-- Índices de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_contas_receber_cliente` (`cliente_id`),
  ADD KEY `IX_fin_contas_receber_metodo` (`metodo_id`);

--
-- Índices de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_historico_entidade` (`entidade`,`entidade_id`);

--
-- Índices de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  ADD PRIMARY KEY (`Id`);

--
-- Índices de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UX_fin_metodos_pagamento_nome` (`nome`);

--
-- Índices de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_fin_pagamentos_ordem_servico` (`ordem_servico_id`),
  ADD KEY `IX_fin_pagamentos_cliente` (`cliente_id`),
  ADD KEY `IX_fin_pagamentos_fornecedor` (`fornecedor_id`),
  ADD KEY `IX_fin_pagamentos_metodo` (`metodo_id`);

--
-- Índices de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_anexos_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_avaliacoes_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_checklists_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_itens`
--
ALTER TABLE `os_itens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_itens_ordem` (`ordem_servico_id`),
  ADD KEY `IX_os_itens_peca` (`peca_id`);

--
-- Índices de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_observacoes_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_cliente` (`cliente_id`),
  ADD KEY `IX_os_ordens_mecanico` (`mecanico_id`);

--
-- Índices de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_ordens_historico_ordem` (`ordem_servico_id`);

--
-- Índices de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_os_pagamentos_ordem` (`ordem_servico_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cad_clientes`
--
ALTER TABLE `cad_clientes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11031;

--
-- AUTO_INCREMENT de tabela `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_origens`
--
ALTER TABLE `cad_clientes_origens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos`
--
ALTER TABLE `cad_fornecedores_segmentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades`
--
ALTER TABLE `cad_mecanicos_especialidades`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_marcas`
--
ALTER TABLE `cad_veiculos_marcas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_categorias`
--
ALTER TABLE `est_categorias`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_fabricantes`
--
ALTER TABLE `est_fabricantes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_localizacoes`
--
ALTER TABLE `est_localizacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5036;

--
-- AUTO_INCREMENT de tabela `est_pecas`
--
ALTER TABLE `est_pecas`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT de tabela `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7036;

--
-- AUTO_INCREMENT de tabela `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8036;

--
-- AUTO_INCREMENT de tabela `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9036;

--
-- AUTO_INCREMENT de tabela `fin_anexos`
--
ALTER TABLE `fin_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9636;

--
-- AUTO_INCREMENT de tabela `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9236;

--
-- AUTO_INCREMENT de tabela `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9336;

--
-- AUTO_INCREMENT de tabela `fin_historico`
--
ALTER TABLE `fin_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9536;

--
-- AUTO_INCREMENT de tabela `fin_lancamentos`
--
ALTER TABLE `fin_lancamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9436;

--
-- AUTO_INCREMENT de tabela `fin_metodos_pagamento`
--
ALTER TABLE `fin_metodos_pagamento`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=936;

--
-- AUTO_INCREMENT de tabela `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9136;

--
-- AUTO_INCREMENT de tabela `os_anexos`
--
ALTER TABLE `os_anexos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50036;

--
-- AUTO_INCREMENT de tabela `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60036;

--
-- AUTO_INCREMENT de tabela `os_checklists`
--
ALTER TABLE `os_checklists`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30036;

--
-- AUTO_INCREMENT de tabela `os_itens`
--
ALTER TABLE `os_itens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20036;

--
-- AUTO_INCREMENT de tabela `os_observacoes`
--
ALTER TABLE `os_observacoes`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40036;

--
-- AUTO_INCREMENT de tabela `os_ordens`
--
ALTER TABLE `os_ordens`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10093;

--
-- AUTO_INCREMENT de tabela `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80036;

--
-- AUTO_INCREMENT de tabela `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  MODIFY `Id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70036;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cad_clientes`
--
ALTER TABLE `cad_clientes`
  ADD CONSTRAINT `FK_cad_clientes_origem` FOREIGN KEY (`Origem_Id`) REFERENCES `cad_clientes_origens` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_clientes_anexos`
--
ALTER TABLE `cad_clientes_anexos`
  ADD CONSTRAINT `FK_cad_clientes_anexos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_contatos`
--
ALTER TABLE `cad_clientes_contatos`
  ADD CONSTRAINT `FK_cad_clientes_contatos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_documentos`
--
ALTER TABLE `cad_clientes_documentos`
  ADD CONSTRAINT `FK_cad_clientes_documentos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_enderecos`
--
ALTER TABLE `cad_clientes_enderecos`
  ADD CONSTRAINT `FK_cad_clientes_enderecos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_financeiro`
--
ALTER TABLE `cad_clientes_financeiro`
  ADD CONSTRAINT `FK_cad_clientes_financeiro_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_indicacoes`
--
ALTER TABLE `cad_clientes_indicacoes`
  ADD CONSTRAINT `FK_cad_clientes_indicacoes_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_lgpd_consentimentos`
--
ALTER TABLE `cad_clientes_lgpd_consentimentos`
  ADD CONSTRAINT `FK_cad_clientes_lgpd_consentimentos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pf`
--
ALTER TABLE `cad_clientes_pf`
  ADD CONSTRAINT `FK_cad_clientes_pf_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_clientes_pj`
--
ALTER TABLE `cad_clientes_pj`
  ADD CONSTRAINT `FK_cad_clientes_pj_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores`
--
ALTER TABLE `cad_fornecedores`
  ADD CONSTRAINT `FK_cad_fornecedores_segmento` FOREIGN KEY (`Segmento_Principal_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_fornecedores_avaliacoes`
--
ALTER TABLE `cad_fornecedores_avaliacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_avaliacoes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_bancos`
--
ALTER TABLE `cad_fornecedores_bancos`
  ADD CONSTRAINT `FK_cad_fornecedores_bancos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_certificacoes`
--
ALTER TABLE `cad_fornecedores_certificacoes`
  ADD CONSTRAINT `FK_cad_fornecedores_certificacoes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_contatos`
--
ALTER TABLE `cad_fornecedores_contatos`
  ADD CONSTRAINT `FK_cad_fornecedores_contatos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_documentos`
--
ALTER TABLE `cad_fornecedores_documentos`
  ADD CONSTRAINT `FK_cad_fornecedores_documentos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_enderecos`
--
ALTER TABLE `cad_fornecedores_enderecos`
  ADD CONSTRAINT `FK_cad_fornecedores_enderecos_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_representantes`
--
ALTER TABLE `cad_fornecedores_representantes`
  ADD CONSTRAINT `FK_cad_fornecedores_representantes_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_fornecedores_segmentos_rel`
--
ALTER TABLE `cad_fornecedores_segmentos_rel`
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_fornecedor` FOREIGN KEY (`Fornecedor_Id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_fornecedores_segmentos_rel_segmento` FOREIGN KEY (`Segmento_Id`) REFERENCES `cad_fornecedores_segmentos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos`
--
ALTER TABLE `cad_mecanicos`
  ADD CONSTRAINT `FK_cad_mecanicos_especialidade` FOREIGN KEY (`Especialidade_Principal_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_mecanicos_certificacoes`
--
ALTER TABLE `cad_mecanicos_certificacoes`
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_especialidade` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_cad_mecanicos_certificacoes_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_contatos`
--
ALTER TABLE `cad_mecanicos_contatos`
  ADD CONSTRAINT `FK_cad_mecanicos_contatos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_disponibilidades`
--
ALTER TABLE `cad_mecanicos_disponibilidades`
  ADD CONSTRAINT `FK_cad_mecanicos_disponibilidades_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_documentos`
--
ALTER TABLE `cad_mecanicos_documentos`
  ADD CONSTRAINT `FK_cad_mecanicos_documentos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_enderecos`
--
ALTER TABLE `cad_mecanicos_enderecos`
  ADD CONSTRAINT `FK_cad_mecanicos_enderecos_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_especialidades_rel`
--
ALTER TABLE `cad_mecanicos_especialidades_rel`
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_especialidade` FOREIGN KEY (`Especialidade_Id`) REFERENCES `cad_mecanicos_especialidades` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_mecanicos_especialidades_rel_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_mecanicos_experiencias`
--
ALTER TABLE `cad_mecanicos_experiencias`
  ADD CONSTRAINT `FK_cad_mecanicos_experiencias_mecanico` FOREIGN KEY (`Mecanico_Id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cad_veiculos`
--
ALTER TABLE `cad_veiculos`
  ADD CONSTRAINT `FK_cad_veiculos_cliente` FOREIGN KEY (`Cliente_Id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_cad_veiculos_modelo` FOREIGN KEY (`Modelo_Id`) REFERENCES `cad_veiculos_modelos` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cad_veiculos_modelos`
--
ALTER TABLE `cad_veiculos_modelos`
  ADD CONSTRAINT `FK_cad_veiculos_modelos_marca` FOREIGN KEY (`Marca_Id`) REFERENCES `cad_veiculos_marcas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_movimentacoes`
--
ALTER TABLE `est_movimentacoes`
  ADD CONSTRAINT `FK_est_movimentacoes_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas`
--
ALTER TABLE `est_pecas`
  ADD CONSTRAINT `FK_est_pecas_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `est_categorias` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_fabricante` FOREIGN KEY (`fabricante_id`) REFERENCES `est_fabricantes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_est_pecas_localizacao` FOREIGN KEY (`localizacao_id`) REFERENCES `est_localizacoes` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `est_pecas_anexos`
--
ALTER TABLE `est_pecas_anexos`
  ADD CONSTRAINT `FK_est_pecas_anexos_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_fornecedores`
--
ALTER TABLE `est_pecas_fornecedores`
  ADD CONSTRAINT `FK_est_pecas_fornecedores_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_est_pecas_fornecedores_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `est_pecas_historico`
--
ALTER TABLE `est_pecas_historico`
  ADD CONSTRAINT `FK_est_pecas_historico_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fin_anexos`
--
ALTER TABLE `fin_anexos`
  ADD CONSTRAINT `FK_fin_anexos_conta_pagar` FOREIGN KEY (`conta_pagar_id`) REFERENCES `fin_contas_pagar` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fin_anexos_conta_receber` FOREIGN KEY (`conta_receber_id`) REFERENCES `fin_contas_receber` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_fin_anexos_pagamento` FOREIGN KEY (`pagamento_id`) REFERENCES `fin_pagamentos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `fin_contas_pagar`
--
ALTER TABLE `fin_contas_pagar`
  ADD CONSTRAINT `FK_fin_contas_pagar_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_pagar_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_contas_receber`
--
ALTER TABLE `fin_contas_receber`
  ADD CONSTRAINT `FK_fin_contas_receber_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_contas_receber_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `fin_pagamentos`
--
ALTER TABLE `fin_pagamentos`
  ADD CONSTRAINT `FK_fin_pagamentos_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_fornecedor` FOREIGN KEY (`fornecedor_id`) REFERENCES `cad_fornecedores` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_metodo` FOREIGN KEY (`metodo_id`) REFERENCES `fin_metodos_pagamento` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_fin_pagamentos_ordem_servico` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `os_anexos`
--
ALTER TABLE `os_anexos`
  ADD CONSTRAINT `FK_os_anexos_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_avaliacoes`
--
ALTER TABLE `os_avaliacoes`
  ADD CONSTRAINT `FK_os_avaliacoes_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_checklists`
--
ALTER TABLE `os_checklists`
  ADD CONSTRAINT `FK_os_checklists_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_itens`
--
ALTER TABLE `os_itens`
  ADD CONSTRAINT `FK_os_itens_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_os_itens_peca` FOREIGN KEY (`peca_id`) REFERENCES `est_pecas` (`Id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `os_observacoes`
--
ALTER TABLE `os_observacoes`
  ADD CONSTRAINT `FK_os_observacoes_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_ordens`
--
ALTER TABLE `os_ordens`
  ADD CONSTRAINT `FK_os_ordens_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cad_clientes` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_os_ordens_mecanico` FOREIGN KEY (`mecanico_id`) REFERENCES `cad_mecanicos` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_ordens_historico`
--
ALTER TABLE `os_ordens_historico`
  ADD CONSTRAINT `FK_os_ordens_historico_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `os_pagamentos`
--
ALTER TABLE `os_pagamentos`
  ADD CONSTRAINT `FK_os_pagamentos_ordem` FOREIGN KEY (`ordem_servico_id`) REFERENCES `os_ordens` (`Id`) ON DELETE CASCADE;
