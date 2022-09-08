USE OuroWebServiceLive
GO

SELECT
    CASE
        WHEN b.str_msg_Documento = 'ENTIRE' THEN 'FOCO PDV'
        ELSE b.str_msg_Documento
    END AS 'OL',
    b.fk_int_PedidoSite 'PEDIDO',
    b.str_Excecao,
    b.dte_Pedido 'DATA',
    c.NúmeroDocumento 'N_DOC_ORC',
    c.IdMovimento 'ID_MOV_ORC',
    d.str_IdItem 'ID_PROD',
    d.str_Descricao 'DESCRICAO',
    a.int_qtd_Item 'QTDE',
    d.str_Categoria 'CATEGORIA',
    d.fk_int_Marca 'ID_MARCA',
    e.str_Marca 'MARCA',
    b.dbl_vlr_Total 'VR TOT',
    a.*
FROM
    OuroWebServiceLive..tab_PedidoItem a
    JOIN OuroReports..Estoque d on d.str_IdItem collate SQL_Latin1_General_CP1_CI_AS = a.str_id_Item collate SQL_Latin1_General_CP1_CI_AS
    JOIN OuroWebServiceLive..tab_Pedido b on b.pk_int_Pedido = a.fk_int_Pedido
    JOIN Ourobase..Mov_Estoque c on c.IdMovimento = b.fk_int_Movimento
    JOIN OuroReports..Marca e on e.pk_int_Marca = d.fk_int_Marca
WHERE
    a.fk_int_Pedido IN (
        SELECT
            pk_int_Pedido
        FROM
            OuroWebServiceLive..tab_Pedido
        WHERE
            fk_int_PedidoSite IN (16079584)
    )
ORDER BY
    N_DOC_ORC