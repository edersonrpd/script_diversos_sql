USE Ourobase
GO

DECLARE @DteEmissao DATE
SET @DteEmissao = '2022-09-08'

-- Selecionar notas com Rejeição 778: Informado NCM inexistente
SELECT int_cod_statusresposta, *
FROM nfeletronica
WHERE int_cod_statusresposta = 778
  and dte_Emissao >= @DteEmissao

-- Selecionando itens da NF que estão com erro de acordo com o primeiro Select
SELECT *
FROM ItensNFEletronica
WHERE fk_int_nf in ('') --pk_int_NF da tabela nfeletronica
 

-- Atualizando o NCM dos Itens.
-- UPDATE ItensNFEletronica SET str_NCM = '' WHERE pk_int_ItensNF in ()

-- Removendo Status de rejeição 
-- UPDATE nfeletronica SET int_cod_StatusResposta = NULL WHERE pk_int_NF in ()