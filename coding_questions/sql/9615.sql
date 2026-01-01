/*
MySQL Question ID : 9615

Task: find out search details for apartments designed for a sole person stay
Tables: airbnb_search_details

Schema:
airbnb_search_details:
- id: bigint
- price: double
- property_type: text
- room_type: text
- amenities: text
- accommodates: bigint
- bathrooms: bigint
- bed_type: text
- cancellation_policy: text
- cleaning_fee: tinyint
- city: text
- host_identity_verified: text
- host_response_rate: text
- host_since: date
- neighbourhood: text
- number_of_reviews: bigint
- review_scores_rating: double
- zipcode: bigint
- bedrooms: bigint
- beds: bigint    
*/

/* Solution:
1. Select all columns from airbnb_search_details table
2. Filter for property_type = 'Apartment' to get only apartments
3. Filter for accommodates = 1 to find listings designed for a sole person stay
*/

SELECT *
FROM airbnb_search_details
WHERE property_type = 'Apartment'
  AND accommodates = 1;
