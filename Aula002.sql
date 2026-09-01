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

SELECT --TOP 1000 
			BusinessEntityID	AS [ID PESSOA],
			PersonType			AS [TIPO PESSOA],
			Title				AS [TITULO],
			FirstName			AS [PRIMEIRO NOME],
			MiddleName			AS [NOME DO MEIO],
			LastName			AS [ULTIMO NOME]

FROM		Person.Person
WHERE Title = 'Mr.'	
ORDER BY	[PRIMEIRO NOME] ,
			[ULTIMO NOME] DESC	

--=======================================================

SELECT 
DISTINCT	-- TOP 1000 
			--BusinessEntityID	AS [ID PESSOA],
			--PersonType			AS [TIPO PESSOA],
			--Title				AS [TITULO],
			FirstName,
			MiddleName,
			LastName

FROM Person.Person
WHERE		Title = 'Mr.'
AND MiddleName = 'M.'
ORDER BY	FirstName, 
			MiddleName
