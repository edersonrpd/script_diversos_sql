SELECT
    a.str_msg_Documento,
    a.fk_int_Movimento,
    a.str_Excecao,
    *
FROM
    OuroWebServiceLive.dbo.tab_Pedido a
WHERE
    isnull(str_Excecao, '') <> ''
    and dte_Pedido >= '05/20/22'
ORDER BY
    a.dte_Pedido DESC