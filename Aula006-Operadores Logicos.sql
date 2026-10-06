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
	AND	( MiddleName = 'DevDojo')
	--OR MiddleName = 'G'AND LastName = 'Boladao')
	--ORDER BY FirstName;

	SELECT * FROM Person.Person
	WHERE BusinessEntityID BETWEEN 600 AND 800;
	
	
	SELECT * FROM Person.Person
	WHERE BusinessEntityID IN (1, 2, 3, 4, 
	659, 500, 900, 4500)

	SELECT * FROM Person.Person
	WHERE FirstName IN('Ken', 'Gigi', 'Aaron')
	ORDER BY FirstName;

	SELECT * FROM Person.Person
	WHERE FirstName NOT IN('Ken', 'Gigi', 'Aaron')
	ORDER BY FirstName;

	SELECT * FROM Person.Person
	--WHERE FirstName LIKE 'G%'
	WHERE FirstName LIKE 'G__a'
	ORDER BY FirstName

	SELECT * FROM Person.Person
	--WHERE FirstName LIKE 'G%'
	WHERE FirstName NOT LIKE '[ABCDEFG]__a'
	ORDER BY FirstName


	-- ^ Significa negação, 
	--aquilo que não for igual a algo ou ao intervalo
	SELECT * FROM Person.Person
	
	WHERE FirstName NOT LIKE '[^ABCDEFG]__a'
	ORDER BY FirstName