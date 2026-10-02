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
	AND	Firstname = 'Fabricio'
	AND	( MiddleName = 'DevDojo';
	--OR MiddleName = 'G'AND LastName = 'Boladao')
	--ORDER BY FirstName;

	SELECT * FROM Person.Person
	WHERE BusinessEntityID BETWEEN 600 AND 800;
	