









SELECT
	SalesOrderNumber,
	ProductKey,
	COUNT(*) AS cnt
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
GROUP BY 
	SalesOrderNumber,
	ProductKey
HAVING
	COUNT(*) > 0