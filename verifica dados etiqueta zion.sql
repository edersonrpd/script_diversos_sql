-- Consultar dados que ir� compor a etiqueta de volume para a Zion
USE Ourobase
GO

select * from vw_lst_IntegrationStore_Movimento where IdMovimento = 22963769 --N� Pedido de Venda na Etiqueta
