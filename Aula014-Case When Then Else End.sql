
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
	PersonType,
	NameStyle,
	Title,

	FirstName,
	MiddleName,
	LastName,
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

SELECT * 
		FROM Person.EmailAddress

SELECT * 
		FROM Person.PersonPhone

SELECT * 
		FROM Person.PhoneNumberType