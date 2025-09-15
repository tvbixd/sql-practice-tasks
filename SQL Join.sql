/* Show the order_id, customer_name, the employee’s full name (first_name + last_name), and the product_name.
Include the quantity and the total_amount (quantity * price).
Sort results by the employee’s name, then highest total amount.
.*/

SELECT 
    o.OrderID,
    CONCAT(c.FirstName,' ' ,c.lastName) AS CustomerFullName,
    CONCAT(e.FirstName,' ', e.LastName) AS EmployeeFullName,
    p.Product,
    o.Quantity,
    (o.Quantity * p.Price) AS TotalSales
FROM sales.Orders o
LEFT JOIN sales.Customers c ON o.OrderID = c.customerID
LEFT JOIN sales.Employees e ON o.SalesPersonID = e.EmployeeID
LEFT JOIN sales.Products p ON o.ProductID = p.ProductID



