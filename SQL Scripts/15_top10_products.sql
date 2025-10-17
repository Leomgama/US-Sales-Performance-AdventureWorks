




SELECT TOP 10
	PC.EnglishProductCategoryName,
	PS.EnglishProductSubcategoryName,
	P.EnglishProductName AS Product,
	SUM(S.SalesAmount) AS Revenue,
	SUM(S.TotalProductCost) AS Cost,
	SUM(S.SalesAmount - S.TotalProductCost) AS Profit
FROM
	FactInternetSales AS S
INNER JOIN DimProduct AS P
ON S.ProductKey = P.ProductKey
INNER JOIN  DimProductSubcategory AS PS
ON P.ProductSubcategoryKey = PS.ProductSubcategoryKey
INNER JOIN DimProductCategory AS PC
ON PS.ProductCategoryKey = PC.ProductCategoryKey
INNER JOIN DimSalesTerritory AS T
ON S.SalesTerritoryKey = T.SalesTerritoryKey
INNER JOIN DimCurrency AS C
ON S.CurrencyKey = C.CurrencyKey
WHERE
	C.CurrencyAlternateKey = 'USD'
	AND SalesTerritoryCountry = 'United States'
GROUP BY
	PC.EnglishProductCategoryName,
	PS.EnglishProductSubcategoryName,
	P.EnglishProductName
ORDER BY
	Revenue DESC



