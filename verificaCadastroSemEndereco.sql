SELECT
    Classifica��o,
    NroEndereco,
    *
FROM
    Tab_Cadastro WITH(nolock)
WHERE
    NroEndereco IS NULL