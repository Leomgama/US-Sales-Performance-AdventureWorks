




SELECT
	T.SalesTerritoryRegion,
	SUM(S.SalesAmount) AS Revenue,
	SUM(S.TotalProductCost) AS Cost,
	SUM(S.SalesAmount - S.TotalProductCost) AS Profit,
	SUM(S.SalesAmount - S.TotalProductCost)/SUM(S.SalesAmount) * 100 AS MarginPercent
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
	T.SalesTerritoryRegion
ORDER BY
	Profit DESC




