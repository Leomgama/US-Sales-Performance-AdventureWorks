











SELECT
	C.CurrencyAlternateKey,
	T.SalesTerritoryCountry,
	T.SalesTerritoryRegion
FROM
	FactInternetSales AS S
INNER JOIN
	DimSalesTerritory AS T
ON S.SalesTerritoryKey = T.SalesTerritoryKey
INNER JOIN
	DimCurrency AS C
ON S.CurrencyKey = C.CurrencyKey
WHERE
	C.CurrencyAlternateKey = 'USD'
	AND SalesTerritoryCountry <> 'United States'



