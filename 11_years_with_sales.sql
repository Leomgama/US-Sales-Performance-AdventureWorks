


SELECT
	D.CalendarYear,
	SUM(S.SalesAmount) AS Revenue,
	SUM(S.TotalProductCost) AS Cost,
	SUM(S.SalesAmount - S.TotalProductCost) AS Profit
FROM
	FactInternetSales AS S
INNER JOIN DimDate AS D
ON S.OrderDateKey = D.DateKey
INNER JOIN DimSalesTerritory AS T
ON S.SalesTerritoryKey = T.SalesTerritoryKey
INNER JOIN DimCurrency AS C
ON S.CurrencyKey = C.CurrencyKey
WHERE
	C.CurrencyAlternateKey = 'USD'
	AND SalesTerritoryCountry = 'United States'
GROUP BY
	D.CalendarYear
ORDER BY
	D.CalendarYear




