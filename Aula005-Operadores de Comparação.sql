/*
Operadores de comparação

= (igual a)
<> (diferente de) ou !=(esse não é padrão ISO)
< (menor do que)
<= (menor ou igual a)
> (maior que)
>= (maior ou igual a)

*/

SELECT * FROM Person.Person
WHERE FirstName = 'Gigi';

SELECT * FROM Person.Person
WHERE FirstName != 'Gigi';

SELECT * FROM Person.Person
WHERE FirstName <> 'Gigi';

SELECT * FROM Person.Person
WHERE BusinessEntityID < 10;

SELECT * FROM Person.Person
WHERE BusinessEntityID > 2;

SELECT * FROM Person.Person
WHERE BusinessEntityID >= 10;

SELECT * FROM Person.Person
WHERE FirstName <= 'Gigi';