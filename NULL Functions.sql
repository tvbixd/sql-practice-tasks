--Show all customers, but if a customer’s Last Name is NULL, display "No Lastname" instead.
SELECT 
Firstname,
lastname,
Country,
ISNULL(Lastname, 'No Lastname') AS Lastname
FROM Sales.Customers

--Write a query to find all employees who do not have a ManagerID

SELECT
ManagerID,
FirstName,
LastName
FROM Sales.Employees
WHERE ManagerID IS NULL;

/*Show each customer’s preferred contact:
If ShipAddress is available, use that.
If ShipAddress is NULL, use BillAddress.
If both are NULL, display "No Address Available".*/

SELECT
OrderID,
ProductID,
ShipAddress,
BillAddress,
COALESCE(ShipAddress, BillAddress, 'No Address Available') AS PreferredContact
FROM Sales.Orders

--Count how many employees have a ManagerID and how many don’t.

SELECT
CASE
    WHEN ManagerID IS NULL
    THEN 'NO MANAGER ID'
    ELSE 'HAS MANAGER ID'
END AS Manager_Status,
COUNT(*) AS Employee_Count
FROM Sales.Employees
GROUP BY CASE
    WHEN ManagerID IS NULL
    THEN 'NO MANAGER ID'
    ELSE 'HAS MANAGER ID'
END;

-- Select all customers ordered by Score, but make sure the ones with NULL Score appear at the bottom.

SELECT 
FirstName,
LastName,
Score
from sales.Customers
ORDER BY Score DESC

-- Aletrnative using ISNULL to treat NULL as 0

SELECT 
FirstName,
LastName,
ISNULL(score, 0) AS Score
from sales.Customers
ORDER BY Score DESC