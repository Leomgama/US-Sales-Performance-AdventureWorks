


WITH RegionalRevenue 
AS
(
	SELECT
		T.SalesTerritoryRegion,
		SUM(S.SalesAmount) AS RevenueRegion
	FROM
		FactInternetSales AS S
	INNER JOIN DimCurrency AS C ON S.CurrencyKey = C.CurrencyKey
	INNER JOIN DimSalesTerritory AS T ON S.SalesTerritoryKey = T.SalesTerritoryKey
	WHERE
		C.CurrencyAlternateKey = 'USD'
		AND T.SalesTerritoryCountry = 'United States'
	GROUP BY
		T.SalesTerritoryRegion
)

SELECT
	(SELECT
		SUM(SalesAmount)
	FROM
		FactInternetSales AS S
	INNER JOIN DimCurrency AS C ON  S.CurrencyKey = C.CurrencyKey
	INNER JOIN DimSalesTerritory AS T ON S.SalesTerritoryKey = T.SalesTerritoryKey
	WHERE
		C.CurrencyAlternateKey = 'USD'
		AND T.SalesTerritoryCountry = 'United States') AS TotalRevenue_US,
	SUM(RevenueRegion) AS SumRegionalRevenue
FROM
	RegionalRevenue

