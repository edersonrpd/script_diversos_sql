declare @pedido INT
set @pedido = 11933939

-- Orçamento
SELECT
    a.NúmeroDocumento,
    a.IdMovimento,
    a.Descrição,
    a.IdCadastro,
    a.IdUsuário,
    a.DataEmissão,
    a.IdCancelamento,
    a.IdUsuarioCancelamento,
    a.MotivoCancelamento,
    a.LiberaçãoUsuário
FROM Ourobase.dbo.Mov_Estoque a
WHERE a.IdMovimento =
      (SELECT a.fk_int_Movimento
    FROM OuroWebServiceLive.dbo.tab_Pedido a
    WHERE fk_int_PedidoSite = @pedido) or a.IdMovimento = (SELECT int_IdMovimento
    FROM Ourobase.dbo.Tab_FarmaPedido
    WHERE int_NroPedidoSite = @pedido)



-- Pedido
SELECT
    a.NúmeroDocumento,
    a.IdMovimento,
    a.Descrição,
    a.IdCadastro,
    a.IdUsuário,
    a.DataEmissão,
    a.IdCancelamento,
    a.IdUsuarioCancelamento,
    a.MotivoCancelamento,
    a.LiberaçãoUsuário
FROM Ourobase.dbo.Mov_Estoque a
WHERE a.IdOrçamentoUtilizado =
      (SELECT fk_int_Movimento
    FROM OuroWebServiceLive.dbo.tab_Pedido
    WHERE fk_int_PedidoSite =  @pedido) or a.IdMovimento = (SELECT int_IdMovimento
    FROM Ourobase.dbo.Tab_FarmaPedido
    WHERE int_NroPedidoSite = @pedido)

-- Venda
SELECT
    a.NúmeroDocumento,
    a.IdMovimento,
    a.Descrição,
    a.IdCadastro,
    a.IdUsuário,
    a.DataEmissão,
    a.IdCancelamento,
    a.IdUsuarioCancelamento,
    a.MotivoCancelamento,
    a.LiberaçãoUsuário
FROM Ourobase..Mov_Estoque a
WHERE a.IdPedidoUtilizado in
      (SELECT a.IdMovimento
    FROM Ourobase..Mov_Estoque a
    WHERE a.IdOrçamentoUtilizado =
             (SELECT fk_int_Movimento
    FROM OuroWebServiceLive.dbo.tab_Pedido
    WHERE fk_int_PedidoSite =  @pedido)  
	  ) or a.IdMovimento = (SELECT int_IdMovimento
    FROM Ourobase.dbo.Tab_FarmaPedido
    WHERE int_NroPedidoSite = @pedido)