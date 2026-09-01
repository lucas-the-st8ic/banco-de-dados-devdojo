--SQL - STRUCTURED QUERY LANGUAGE -
--	  - LINGUAGEM DE CONSULTA ESTRUTURADA -
-- T-SQL = TRANSACT SQL
-- SELECT = SELECIONE
-- * TUDO (TODAS as colunas)
-- FROM = A patir DE/ Vindo DE
-- Nome_da_Tabela
-- WHERE = ONDE

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