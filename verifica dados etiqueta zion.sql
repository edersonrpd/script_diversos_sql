-- Consultar dados que irá compor a etiqueta de volume para a Zion
USE Ourobase
GO

select * from vw_lst_IntegrationStore_Movimento where IdMovimento = 22963769 --Nº Pedido de Venda na Etiqueta
