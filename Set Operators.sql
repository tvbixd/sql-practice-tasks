/* Customers and Employees:
UNION → Find all unique names (first + last) that appear in either customers or employees.
INTERSECT → Find names that appear in both customers and employees.
EXCEPT → Find customers who are not employees. */

SELECT
    FirstName,
    LastName
from Sales.Customers

UNION

SELECT
    FirstName,
    LastName
FROM Sales.Employees


SELECT
    FirstName,
    LastName
from Sales.Customers

INTERSECT

SELECT
    FirstName,
    LastName
FROM Sales.Employees

SELECT
    FirstName,
    LastName
from Sales.Customers

EXCEPT

SELECT
    FirstName,
    LastName
FROM Sales.Employees