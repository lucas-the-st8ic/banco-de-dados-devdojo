/*
DATEPART(Parte_da_data/Hora, Data/Nome_da_coluna) : Retorno será do tipo inteiro
DATENAME(Parte_da_data/hora, Data/Nome_da_coluna) : retorno do tipo texto (nvarchar)
ISDATE(Nome_da_coluna) : retorno 1 = true | 0 = FALSE
*/

SELECT 
	ISDATE(GETDATE() ) AS [ISDATE()],
	ISDATE('20101231') AS [ISDATE2()],
	GETDATE() AS [GETDATE()],
	DATEPART(HOUR, GETDATE()) AS HORA,
	DATEPART(MINUTE, GETDATE()) AS MINUTO,
	DATEPART(YEAR, GETDATE()) AS ANO,

	YEAR(GETDATE()) AS ANO2,
	MONTH(GETDATE()) AS MÊS,
	DAY(GETDATE()) AS DIA,

	DATEPART(MICROSECOND, SYSDATETIME()) AS [MICROSECOND],
	DATEPART(NANOSECOND, SYSDATETIME()) AS [NANO],

	DATENAME(MONTH, GETDATE()) AS NOME_DO_MES,
	DATENAME(DAY, GETDATE()) AS DIA_DO_MES;


SELECT	BusinessEntityID,
		Title,
		FirstName,
		MiddleName,
		LastName,
		TRY_CAST(ModifiedDate AS DATE) AS ModifiedDate,
		DATEPART(YEAR, ModifiedDate) AS ANO,
		ISDATE(ModifiedDate) AS VERIFICADATA,
		ISDATE(TRY_CONVERT(VARCHAR(10), ModifiedDate, 103)) AS VERIFY
	FROM Person.Person
WHERE DATEPART(YEAR, ModifiedDate) = 2008
	AND DATENAME(MONTH, ModifiedDate) = 'Dezembro'
