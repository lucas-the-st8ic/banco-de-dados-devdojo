--SQL - STRUCTURED QUERY LANGUAGE -
--	  - LINGUAGEM DE CONSULTA ESTRUTURADA -
-- T-SQL = TRANSACT SQL
-- SELECT = SELECIONE
-- * TUDO (TODAS as colunas)
-- FROM = A patir DE/ Vindo DE
-- Nome_da_Tabela
-- WHERE = ONDE
--ORDER BY ORDERNAR POR(Critérios de ordenação vem em seguida)
--DESC - Decrescente, ASC - Ascendente
-- DISTINCT - Remove valores duplicados

SELECT	BusinessEntityID,
		PersonType,
		Title,
		FirstName,
		MiddleName,
		LastName,
		ModifiedDate --Ultima coluna sem vírgula

FROM Person.Person
WHERE FirstName = 'Ken'
AND	MiddleName = 'L'

--=======================================================

SELECT DISTINCT --TOP 1000 
		BusinessEntityID,
		--PersonType,
		--Title,
		FirstName,
		--MiddleName,
		LastName
		--ModifiedDate

	FROM	Person.Person
	--WHERE		MiddleName = 'N'
	ORDER BY	LastName
	OFFSET 5 ROWS --Ignora as linhas de acordo com o valor inserido.Nesse caso 5
	FETCH NEXT 10 ROWS ONLY --Ex
	/*ORDER BY	FirstName, --DEFAULT ASC
				MiddleName DESC,
				LastName*/