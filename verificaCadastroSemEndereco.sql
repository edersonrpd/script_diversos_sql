SELECT
    Classificação,
    NroEndereco,
    *
FROM
    Tab_Cadastro WITH(nolock)
WHERE
    NroEndereco IS NULL