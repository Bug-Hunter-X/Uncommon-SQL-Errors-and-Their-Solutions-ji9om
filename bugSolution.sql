```sql
-- Correcting the query to handle potential string type for department_id
SELECT * FROM employees WHERE CAST(department_id AS UNSIGNED) = 123 AND salary > 100000;

-- Correctly handling NULL values
SELECT * FROM employees WHERE department_id IS NOT NULL AND salary > 100000; 

-- Explicit type conversion for numeric comparison
SELECT * FROM employees WHERE CAST(salary AS DECIMAL(10,2)) > CAST('100000' AS DECIMAL(10,2));
```