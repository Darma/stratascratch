/*
MySQL Question ID : 10128


Task: Number of Abigali Breslin nominated for the Oscar award
Tables: oscar_nominees

Schema:
oscar_nominees:
- nominee: text
- movie: text
- year: bigint
- category: text
- winner: tinyint
- id: bigint
*/

/* 
Expected Output:
number_of_nominations
1

Solution:
1. Filter for the nominee = 'Abigail Breslin'
2. Count the number of nominations
*/

SELECT COUNT(nominee) as number_of_nominations
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin';