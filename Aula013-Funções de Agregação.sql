/*
COUNT: CONTAGEM
MIN: MINIMO
MAX: MAXIMO
SUM: SOMATORIO
AVG: MEDIA
*/

/* ==========================================
   AGREGAÇÕES BÁSICAS E CONTAGENS
   ========================================== */

-- Contagem total de linhas na tabela Person
SELECT COUNT(*) AS TotalPessoas 
FROM Person.Person;

-- Contagem total de vendedores
SELECT COUNT(*) AS TotalVendedores 
FROM Sales.SalesPerson;

-- Contagem agrupada por nome e segundo nome (desconsiderando nulos)
SELECT 
    FirstName,
    MiddleName,
    COUNT(*) AS TotalOcorrencias
FROM Person.Person
WHERE MiddleName IS NOT NULL
GROUP BY 
    FirstName,
    MiddleName;


/* ==========================================
   FUNÇÕES DE AGREGAÇÃO (MIN, MAX, SUM, AVG)
   ========================================== */

-- Menor ID e menor data de modificação
SELECT 
    MIN(BusinessEntityID) AS MenorID,
    MIN(ModifiedDate) AS PrimeiradataModificada
FROM Person.Person;

-- Maior ID e maior data de modificação
SELECT 
    MAX(BusinessEntityID) AS MaiorID,
    MAX(ModifiedDate) AS UltimaDataModificada
FROM Person.Person;

-- Soma de IDs (uso conceitual)
SELECT 
    SUM(BusinessEntityID) AS SomaIDs
FROM Person.Person;

-- Média de IDs (uso conceitual)
SELECT 
    AVG(BusinessEntityID) AS MediaIDs
FROM Person.Person;


/* ==========================================
   JOINS E AGRUPAMENTOS
   ========================================== */

-- Soma da cota de vendas por vendedor e segundo nome
SELECT 
    SSP.BusinessEntityID,
    PP.MiddleName,
    SUM(SSP.SalesQuota) AS TotalSalesQuota
FROM Sales.SalesPerson AS SSP
INNER JOIN Person.Person AS PP
    ON SSP.BusinessEntityID = PP.BusinessEntityID
GROUP BY 
    SSP.BusinessEntityID,
    PP.MiddleName;


/* ==========================================
   FILTROS DE DATA E CONSULTAS DIVERSAS
   ========================================== */

-- Histórico de departamentos completo
SELECT * 
FROM HumanResources.EmployeeDepartmentHistory;

-- Histórico de departamentos filtrado por intervalo de datas
SELECT * 
FROM HumanResources.EmployeeDepartmentHistory
WHERE StartDate 
    BETWEEN '2001-01-01' AND '2009-01-04'
ORDER BY 
    StartDate ASC;

-- Histórico de pagamento completo
SELECT * 
FROM HumanResources.EmployeePayHistory;

-- Soma das taxas pagas por data de alteração
SELECT 
    RateChangeDate,
    SUM(Rate) AS TotalRate,
    MAX(Rate) AS MaxRate
FROM HumanResources.EmployeePayHistory
GROUP BY 
    RateChangeDate;

SELECT 
    COUNT(*) AS CONTADOR,
        FirstName
FROM Person.Person
GROUP BY
    FirstName
--HAVING COUNT(*) > 20

SELECT 
    AVG(Rate) AS [Rate],
    RateChangeDate
FROM HumanResources.EmployeePayHistory
GROUP BY RateChangeDate
HAVING 
    AVG(Rate) > 10.000

SELECT 
    SUM(Rate) AS [Rate],
    RateChangeDate
FROM HumanResources.EmployeePayHistory
GROUP BY RateChangeDate
HAVING 
    SUM(Rate) < 7.000 
    