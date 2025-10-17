SELECT
	COUNT(*) AS NumberOfRows_US
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


SELECT
	COUNT(*) AS NumberOfRowOutside_US
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