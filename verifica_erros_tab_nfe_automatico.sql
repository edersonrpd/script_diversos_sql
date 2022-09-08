SELECT
    TOP 100 *
FROM
    Ourobase.dbo.Tab_ErroMovimentoAutomatico
WHERE
    str_MessagemErro LIKE '%Ocorreu%'
ORDER BY
    dte_DataHoraErro DESC



SELECT
    TOP 100 *
FROM
    Ourobase.dbo.Tab_ErroNFE
ORDER BY
    dte_DataHora DESC
