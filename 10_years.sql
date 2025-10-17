












SELECT DISTINCT
	DATEPART(YEAR, D.FullDateAlternateKey) AS YEAR
FROM
	DimDate AS D
ORDER BY
	DATEPART(YEAR, D.FullDateAlternateKey) 