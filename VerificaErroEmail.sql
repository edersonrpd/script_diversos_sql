SELECT
    *
FROM
    Ourobase..LogEnvioEmail
WHERE
    CONVERT(DATE, dte_DataHoraEnvio) >= '2022-05-28' --aaaa/mm/dd
    AND CONVERT(DATE, dte_DataHoraEnvio) <= '2022-05-30' --and int_IdMovimento = 6886970
    --and int_NumeroDocumento >= 678950
    AND str_ErroEnvioEmail <> 'E-mail enviado com sucesso'
ORDER BY
    dte_DataHoraEnvio DESC