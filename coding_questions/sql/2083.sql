/*
MySQL Question ID : 2083

Task: Count pending claims submitted in December 2021
Tables: cvs_claims

Schema:
cvs_claims:
- claim_id: bigint
- account_id: text
- date_submitted: date
- date_accepted: date
- date_rejected: date
*/

/* Solution:
1. Filter for claims submitted in December 2021 (date_submitted between '2021-12-01' and '2021-12-31')
2. Filter for pending claims where both date_accepted and date_rejected are NULL
3. Count the number of such claims
*/

SELECT COUNT(claim_id) AS pending_claims
FROM cvs_claims
WHERE date_submitted >= '2021-12-01' 
  AND date_submitted < '2022-01-01'
  AND date_accepted IS NULL
  AND date_rejected IS NULL;