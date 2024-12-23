```sql
SELECT * FROM employees WHERE department_id = '123' AND salary > 100000;
```
This SQL query might seem fine, but it could lead to unexpected results if the `department_id` column is not of a numeric type. If it's stored as a string, then the query would perform a string comparison instead of a numeric comparison, leading to incorrect results. This is a common error when dealing with mixed data types in SQL.

Another uncommon but critical error that often goes unnoticed involves the use of implicit type conversions in SQL queries that compare numeric columns with string literals. If the table has a numeric column (like 'salary') and the query uses a string literal for comparison (e.g., `salary > '100000'`), the database might perform implicit type conversion which might unexpectedly affect query results and potentially slow down query performance.

Furthermore, there might be subtle issues arising from the way SQL engines handle NULL values. For example, using `=` operator to compare a column to NULL will always return false, even if the column is NULL. The correct way to compare to a NULL value is to use `IS NULL` or `IS NOT NULL` operators. Failure to understand this can lead to unexpected filtering or aggregation results.