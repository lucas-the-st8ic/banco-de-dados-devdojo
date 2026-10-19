/*
COUNT: CONTAGEM
MIN: MINIMO
MAX: MAXIMO
SUM: SOMATORIO
AVG: MEDIA
*/

SELECT COUNT(*) FROM Person.Person

SELECT COUNT (*) FROM Sales.SalesPerson


SELECT COUNT(*) AS CONTADOR,
			FirstName,
			MiddleName

	FROM Person.Person
	WHERE	MiddleName IS NOT NULL
GROUP BY	FirstName,
			MiddleName
			

SELECT MIN(BusinessEntityID) AS Minimo,
		MIN(ModifiedDate) AS [Data Modificada]
	FROM Person.Person

	
SELECT MAX(BusinessEntityID) AS Maximo,
		MAX(ModifiedDate) AS [Data Modificada]
	FROM Person.Person


SELECT SUM(BusinessEntityID) AS SOMA
	FROM Person.Person

SELECT AVG(BusinessEntityID)
	FROM Person.Person

SELECT	--SSP.BusinessEntityID,
		--FirstName,
		MiddleName,
		--LastName,
		--TerritoryID,
		SUM(SalesQuota) AS SalesQuota
		--Bonus,
		--CommissionPct,
		-- SalesYTD,
		--SalesLastYear,
		--PP.ModifiedDate
	FROM Sales.SalesPerson AS SSP
	JOIN Person.Person AS PP
		ON SSP.BusinessEntityID = PP.BusinessEntityID
	GROUP BY	SSP.BusinessEntityID,
				--FirstName,
				MiddleName
				--LastName,
				--TerritoryID,
				--Bonus,
				--CommissionPct,
				--SalesYTD,
				--SalesLastYear,
				--PP.ModifiedDate