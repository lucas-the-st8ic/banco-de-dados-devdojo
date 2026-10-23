
SELECT
	BusinessEntityID,
	PersonType,
	NameStyle,
	Title,

	CASE Title
		WHEN 'Ms.' THEN 'Senhora'
		WHEN 'Mr' THEN 'Senhor'
		ELSE ''
	END AS TITULO,

	FirstName,
	MiddleName,
	LastName,
	FirstName + ' ' + 
	MiddleName + ' ' + LastName AS FullName,
	ModifiedDate
		FROM Person.Person;

SELECT 
	PP.BusinessEntityID,
	LoginID,
	OrganizationLevel,
	JobTitle,
	BirthDate,

	CASE
		MaritalStatus
		WHEN 'S' THEN 'Single'
		WHEN 'M' THEN 'Married'
		ELSE 'Not Found'
	END AS MaritalStatus, 
		
	CASE
		Gender
		WHEN 'M' THEN 'Masculino'
		WHEN 'F' THEN 'Feminino'
		ELSE 'Not Found'
	END AS Gender,

	PersonType,
	NameStyle,
	Title,

	FirstName,
	MiddleName,
	LastName,

	Rate,
	CASE
		
		WHEN Rate < 12.000 THEN 'Salário Minimo'
		WHEN Rate BETWEEN 12.000 
					AND 20.000 THEN 'EMPRESARIO'
		WHEN Rate > 20.000 THEN 'MILIONARIO'
		ELSE 'Not Found'
	END AS [Comparação Rate],

	PayFrequency,
	PEA.EmailAddress,
	PPP.PhoneNumber,
	PPP.PhoneNumberTypeID,
	FirstName + ' ' + 
	MiddleName + ' ' + LastName AS FullName
		FROM Person.Person AS PP
JOIN Person.EmailAddress AS PEA
	ON PP.BusinessEntityID = PEA.BusinessEntityID
JOIN Person.PersonPhone AS PPP
	ON PP.BusinessEntityID = PPP.BusinessEntityID
LEFT JOIN HumanResources.Employee AS HRE
	ON HRE.BusinessEntityID = PP.BusinessEntityID
LEFT JOIN HumanResources.EmployeePayHistory AS HREPH
	ON HREPH.BusinessEntityID = PP.BusinessEntityID

SELECT * 
		FROM HumanResources.Employee;

SELECT * 
		FROM Person.EmailAddress

SELECT * 
		FROM Person.PersonPhone

SELECT * 
		FROM Person.PhoneNumberType