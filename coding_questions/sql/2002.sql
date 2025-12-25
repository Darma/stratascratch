/*
MySQL Question ID : 2002

*/

/* Solution:
at least one Refinance (type) AND at least one InSchool(type)
*/

-- Option 1: Using subquery with IN clause
SELECT user_id
FROM loans
WHERE type = 'Refinance' OR type = 'InSchool' -- there were duplicates AND is not will not work because it will return the user_id that have both Refinance and InSchool
GROUP BY user_id
HAVING COUNT(DISTINCT type) = 2;
