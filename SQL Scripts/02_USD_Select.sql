





SELECT
	C.CurrencyAlternateKey,
	COUNT(*) AS RowsNumber
FROM
	FactInternetSales AS S
INNER JOIN 
	DimCurrency AS C
ON
	S.CurrencyKey = C.CurrencyKey
GROUP BY
	C.CurrencyAlternateKey
ORDER BY
	RowsNumber DESC