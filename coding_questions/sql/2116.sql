/*
MySQL Question ID : 2116

Task: number of orders shipped by Speedy Express carrier
Tables: shopify_orders, shopify_carriers

Schema:
shopify_orders
- order_id: bigint
- shop_id: bigint
- user_id: bigint
- order_amount: bigint
- total_items: bigint
- payment_method: text
- created_at: timestamp
- resp_employee_id: bigint
- carrier_id: double

shopify_carriers
- id: bigint
- name: text
*/



/* 
Expected Output:
n_shipped
7

Solution:
1. Join the shopify_orders and shopify_carriers tables on the carrier_id column
2. Filter for the carrier_name = 'speedy express' , make it smalle case to avoid case sensitivity
3. Count the number of orders
*/

SELECT COUNT(o.order_id) as n_shipped
FROM shopify_orders o
INNER JOIN shopify_carriers c ON o.carrier_id = c.id
WHERE LOWER(c.name) = 'speedy express';
