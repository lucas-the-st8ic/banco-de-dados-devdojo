/*
CAST, CONVERT, TRY_CAST, TRY_CONVERT, PARSE,
 TRY_PARSE

 PARSE(Nome_da_coluna AS [data_type] [USING culture] )

*/

SELECT (SELECT PARSE('3654' AS INT)) + (SELECT PARSE('6' AS INT)) AS "Soma"

SELECT TRY_PARSE('46184f' AS INT) 

SELECT TRY_PARSE('R$360,00' AS INT USING 'pt-BR')

SELECT	BusinessEntityID,
		Title,
		FirstName,
		MiddleName,
		LastName,
		ModifiedDate,

		TRY_CAST(ModifiedDate AS DATE) 
			AS DataModificada,

		TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) 
			AS DataModificada2,

		TRY_PARSE(ModifiedDate AS DATE USING 'pt-BR') AS DataModificada3

	FROM Person.Person