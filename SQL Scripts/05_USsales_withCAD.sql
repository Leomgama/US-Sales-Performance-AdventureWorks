

SELECT
	T.SalesTerritoryCountry,
	COUNT(*) AS RowsNumber
FROM
	FactInternetSales AS S
INNER JOIN DimSalesTerritory AS T
ON S.SalesTerritoryKey = T.SalesTerritoryKey
GROUP BY
	T.SalesTerritoryCountry
ORDER BY
	RowsNumber




SELECT
	COUNT(*) AS NUMBERROWS
FROM
	FactInternetSales AS S
INNER JOIN DimSalesTerritory AS T
ON S.SalesTerritoryKey = T.SalesTerritoryKey
INNER JOIN DimCurrency AS C
ON S.CurrencyKey = C.CurrencyKey
WHERE
	C.CurrencyAlternateKey = 'USD'
	AND SalesTerritoryCountry = 'United States'