SELECT *,
(case 
 when score > 750 then 'High'
 when score > 500 then 'Medium'
 else 'Low'
End) AS Score_Category
FROM Sales.Customers
WHERE Score IS NOT NULL
ORDER BY Score ASC
