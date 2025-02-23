SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND department IS NOT NULL; -- Solution 1: Explicitly check for NOT NULL to avoid issues with NULL values. 

SELECT * FROM employees WHERE coalesce(department, '') = 'Sales' AND salary > 100000; -- Solution 2: Use COALESCE to replace NULL with an empty string for comparison. 