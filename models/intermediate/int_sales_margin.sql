select 
products_id, 
date_date, 
orders_id,
revenue, 
quantity, 
CAST(purchse_price AS FLOAT64), 
ROUND(quantity*CAST(purchse_price AS FLOAT64),2) AS purchase_cost,
revenue - ROUND(quantity*CAST(purchse_price AS FLOAT64),2) AS margin
from {{ref('stg_raw__sales')}}
JOIN
{{ref("stg_raw__product")}}
USING (products_id)
