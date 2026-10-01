/*
	Operadores Lógicos

	ALL (SUBQUERY)
	AND
	OR 
	SOME | ANY (SUBQUERY)
	BETWEEN
	EXISTS
	IN | NOT IN
	LIKE | NOT LIKE
*/

SELECT * FROM Person.Person
	WHERE BusinessEntityID > 150
	AND	FirstName <> 'Lane'
	AND FirstName <> 'Aaron'
	ORDER BY FirstName

	SELECT * FROM Person.Person
	WHERE BusinessEntityID > 150
	AND	FirstName <> 'Aaron'
	AND FirstName <> 'G'
	ORDER BY FirstName