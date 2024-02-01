select
orders_id,
date_date,
round(sum(quantity),2) as quantity,
round(sum(revenue),2) as revenue,
round(sum(purchase_cost),2) as purchase_cost,
round (sum(margin),2) as margin
from
{{ ref('int_sales_margin_use') }}
group by orders_id, date_date
order by date_date DESC