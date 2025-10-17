


SELECT
	COUNT(*) AS TotalRows,
	SUM(CASE WHEN ProductKey IS NULL THEN 1 ELSE 0 END) NullProductKey,
	SUM(CASE WHEN OrderDateKey IS NULL THEN 1 ELSE 0 END) AS NullOrderDateKey,
	SUM(CASE WHEN SalesAmount IS NULL THEN 1 ELSE 0 END) AS NullSalesAmount
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
	AND SalesTerritoryCountry = 'United States'