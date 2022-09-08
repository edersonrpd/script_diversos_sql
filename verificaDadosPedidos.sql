SELECT
    a.fk_int_Movimento,
    a.pk_int_Pedido,
    a.fk_int_PedidoSite,
	b.NúmeroDocumento,
    a.str_Excecao,
    a.str_msg_Documento,
    *
FROM
    OuroWebServiceLive..tab_Pedido a
LEFT JOIN Ourobase..Mov_Estoque b on b.IdMovimento = a.fk_int_Movimento
WHERE
    fk_int_PedidoSite IN (
	904383690,
	904383505
	)