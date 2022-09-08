select *
from (SELECT a.pk_int_Tab_FarmaPedido,
             a.int_IdMovimento     'IdMov',
             f.NúmeroDocumento,
             a.int_NroPedidoSite   'Pedido',
             a.str_Codinome        'Codinome',
             e.NomeEmpresa         'Empresa',
             a.dte_DataPedido      'Data Pedido',
             b.int_IdEstoque       'Id Estoque',
             b.str_CodigoBarra     'Ean',
             c.Descrição           'Descrição',
             d.str_Marca           'Marca',
             b.cur_QuantidadeUsada 'Qtde',
             b.dbl_ValorUnitario   'Vlr Un',
             b.dbl_ValorTotal      'Vlr Total',
             a.str_ArquivoPedido   'Arquivo'
      FROM Ourobase..Tab_FarmaPedido a
               JOIN Ourobase..Tab_FarmaPedidoItens b ON b.fk_int_Tab_FarmaPedido = a.pk_int_Tab_FarmaPedido
               JOIN Ourobase..Tab_Estoque c ON c.IdItem = b.str_IdItem
               JOIN OuroReports..Marca d ON d.pk_int_Marca = c.IdMarca
               JOIN Ourobase..Tab_Cadastro e on e.Codinome = a.str_Codinome
               JOIN Ourobase..Mov_Estoque f ON f.IdMovimento = a.int_IdMovimento
      WHERE a.int_NroPedidoSite IN (10301)) abcdef