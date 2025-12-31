/*
MySQL Question ID : 2017

Task: number of paid users, any call in April 2020
Tables: rc_calls, rc_users

Schema:
rc_calls:
- user_id: bigint
- call_id: bigint
- call_date: datetime

rc_users:
- user_id: bigint
- status: text
- company_id: bigint
*/

/* Solution:
1. Create a CTE to identify paid users from rc_users table
2. Join rc_calls with the paid_users CTE on user_id
3. Filter for calls made in April 2020 using call_date
4. Count distinct user_ids to get the number of unique paid users who made calls
*/

WITH paid_users AS (
    SELECT user_id
    FROM rc_users
    WHERE status = 'paid'
)
SELECT COUNT(DISTINCT c.user_id)
FROM rc_calls c
INNER JOIN paid_users p ON c.user_id = p.user_id
WHERE c.call_date BETWEEN '2020-04-01' AND '2020-04-30'
