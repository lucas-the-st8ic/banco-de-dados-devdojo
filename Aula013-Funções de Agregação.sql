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