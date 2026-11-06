/*
EOMONTH(DATA/Nome_da_coluna, [precisãoOpcional])
*/

SELECT 
	GETDATE() AS [GETDATE()],
	EOMONTH( GETDATE() ) AS [EOMONTH],
	EOMONTH('2010-02-10') AS FEV