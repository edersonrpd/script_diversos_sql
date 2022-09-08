
SELECT *
FROM Tab_FarmaPedidoItens tpi
WHERE fk_int_Tab_FarmaPedido in (
    select pk_int_Tab_FarmaPedidoItens
from Tab_FarmaPedido 
JOIN OuroReports..Estoque es on es.str_IdItem collate SQL_Latin1_General_CP1_CI_AS = tpi.str_id_Item collate SQL_Latin1_General_CP1_CI_AS
    JOIN Tab_FarmaPedido tp on tp.pk_int_Pedido = tpi.fk_int_Pedido
    JOIN Ourobase..Mov_Estoque me on me.IdMovimento = tp.fk_int_Movimento
    JOIN OuroReports..Marca ma on ma.pk_int_Marca = es.fk_int_Marca
WHERE int_NroPedidoSite IN (904697466)
)