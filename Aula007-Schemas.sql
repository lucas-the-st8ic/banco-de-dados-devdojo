/*
SCHEMA
*/

SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT * FROM Person.Person

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Person'
AND TABLE_NAME = 'Person'

SELECT * FROM AdventureWorks2022.Sales.Store

--dbo: schema padrão
SELECT * FROM /*[nome_da_base].[nome_do_schema].[nome_da_tabela]*/ PESSOA