/*
CAST(Valor[Nome_da_coluna] AS [Tipo_do_dado] )
CONVERT([Tipo_do_dado], Nome_da_coluna, [Style])
*/

SELECT ( SELECT CAST('33' AS INT)) 
	+ ( SELECT CAST('37' AS INT)) AS RESULT

SELECT CAST('20010101' AS DATE)

SELECT GETDATE()

SELECT CONVERT(VARCHAR(10), GETDATE(), 103)