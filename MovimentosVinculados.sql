Declare @pedido INT
set @pedido = 6548912 --Medley



-- Orçamento
SELECT a.IdMovimento,
       a.NúmeroDocumento,
       a.Descrição,
       a.IdCadastro,
       a.IdUsuário,
       a.TotalDocumento,
       a.DataMovimento,
       a.IdCancelamento,
       a.IdUsuarioCancelamento,
       a.MotivoCancelamento,
       a.LiberaçãoUsuário
FROM Ourobase.dbo.Mov_Estoque a
WHERE a.IdMovimento in
      (SELECT DISTINCT fk_int_Movimento
       FROM OuroWebServiceLive.dbo.tab_Pedido
       WHERE fk_int_PedidoSite = @pedido)
   or a.IdMovimento in (SELECT DISTINCT int_IdMovimento
                        FROM Ourobase.dbo.Tab_FarmaPedido
                        WHERE int_NroPedidoSite = @pedido)

UNION ALL

-- Pedido
SELECT a.IdMovimento,
       a.NúmeroDocumento,
       a.Descrição,
       a.IdCadastro,
       a.IdUsuário,
       a.TotalDocumento,
       a.DataEmissão,
       a.IdCancelamento,
       a.IdUsuarioCancelamento,
       a.MotivoCancelamento,
       a.LiberaçãoUsuário
FROM Ourobase.dbo.Mov_Estoque a
WHERE a.IdOrçamentoUtilizado =
      (SELECT DISTINCT fk_int_Movimento
       FROM OuroWebServiceLive.dbo.tab_Pedido
       WHERE fk_int_PedidoSite = @pedido)
   or a.IdOrçamentoUtilizado = (SELECT DISTINCT int_IdMovimento
                                FROM Ourobase.dbo.Tab_FarmaPedido
                                WHERE int_NroPedidoSite = @pedido)


UNION ALL
-- Venda
SELECT a.IdMovimento,
       a.NúmeroDocumento,
       a.Descrição,
       a.IdCadastro,
       a.IdUsuário,
       a.TotalDocumento,
       a.DataMovimento,
       a.IdCancelamento,
       a.IdUsuarioCancelamento,
       a.MotivoCancelamento,
       a.LiberaçãoUsuário
FROM Ourobase.dbo.Mov_Estoque a
WHERE a.IdPedidoUtilizado in
      (SELECT DISTINCT IdMovimento
       FROM Ourobase.dbo.Mov_Estoque
       WHERE IdOrçamentoUtilizado =
             (SELECT DISTINCT fk_int_Movimento
              FROM OuroWebServiceLive.dbo.tab_Pedido
              WHERE fk_int_PedidoSite = @pedido))
   or a.IdPedidoUtilizado = (SELECT DISTINCT IdMovimento
                             FROM Ourobase.dbo.Mov_estoque
                             Where IdOrçamentoUtilizado = (SELECT DISTINCT int_IdMovimento
                                                           FROM Ourobase.dbo.Tab_FarmaPedido
                                                           WHERE int_NroPedidoSite = @pedido))