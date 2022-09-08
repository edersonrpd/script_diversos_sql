SELECT
    "Empresa",
    "DataVencimento",
	"DataEmiss�o",
    "NomeEmpresa",
    "ValorPagamento",
    "Descri��o",
    "N�meroDocumento",
    "IdBanco_Filtro",
    "C�digoConta_Filtro",
    "Hist�rico",
    "IdMovimento",
    "N�meroCheque",
    "DataMov_Filtro",
    "StatusFinanceiro",
    "Vendedor",
    "DataPagamento",
    "valorJuros",
    "ValorMulta",
    "Tarifa",
    "IdEmpresa_Filtro"
FROM
    (
        select
            *
        from
            uvw_FinanceiroDataVencAtraso
    ) AS DRVD_TBL
WHERE
    (
        [DataEmiss�o] >= '11/01/21'
        And [DataEmiss�o] <= '12/31/21'
        And [IdEmpresa_Filtro] = 2
        And [IdBanco_Filtro] = 'BANESTES 2'

    )