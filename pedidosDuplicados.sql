SELECT str_msg_Documento, * FROM tab_Pedido
WHERE str_msg_Documento IN (
	SELECT
    [str_msg_Documento]

FROM
    tab_Pedido
group by
    [str_msg_Documento] 
having
    COUNT([str_msg_Documento]) > 1 
    AND [str_msg_Documento] like '%MASTER FORMULA%'
)