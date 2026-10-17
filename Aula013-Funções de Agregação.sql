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
			

SELECT DISTINCT FirstName FROM Person.Person