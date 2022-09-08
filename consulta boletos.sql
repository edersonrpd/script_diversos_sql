SELECT
    "Empresa",
    "DataVencimento",
	"DataEmissão",
    "NomeEmpresa",
    "ValorPagamento",
    "Descrição",
    "NúmeroDocumento",
    "IdBanco_Filtro",
    "CódigoConta_Filtro",
    "Histórico",
    "IdMovimento",
    "NúmeroCheque",
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
        [DataEmissão] >= '11/01/21'
        And [DataEmissão] <= '12/31/21'
        And [IdEmpresa_Filtro] = 2
        And [IdBanco_Filtro] = 'BANESTES 2'

    )