/*
MySQL Question ID : 2100

Task: average salary by education
Tables: google_salaries

Schema:
- id: bigint
- first_name: text
- last_name: text
- department: text
- education: text
- salary: bigint
*/



/* 
Expected Output:
education	avg_salary
Bachelors	100000
Masters	150000
PhD	200000

Solution:
1. Group by education and calculate the average salary
*/

SELECT education, AVG(salary) as avg_salary
FROM google_salaries
GROUP BY education;
