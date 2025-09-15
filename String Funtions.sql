/* Tasks:
Show each customer’s full name in uppercase (use UPPER() + CONCAT()).
Show each customer’s last name in lowercase (use LOWER()).
Show only customers whose first_name starts with A (use LIKE or LEFT()).
Return the length of each customer’s full name (use LENGTH() or LEN()).
Show the first 3 letters of each last_name (use SUBSTRING() / LEFT()). */

SELECT 
  CONCAT( UPPER(FirstName), ' ', UPPER(LastName)) AS full_name_upper,
  LOWER(LastName) AS last_name_lower,
  LEFT(FirstName, 1),
  LEN(FirstName + LastName) AS full_name_length,
  SUBSTRING(LastName, 1, 3) AS last_name_first_3
From sales.customers