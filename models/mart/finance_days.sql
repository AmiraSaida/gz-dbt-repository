select
    date_date,
    round(sum(revenue),2) as total_revenue,
    round(sum(margin),2) as total_margin,
    count(distinct orders_id) as nb_transactions,
    round(sum(revenue) / count(distinct orders_id), 2) as average_basket,
    round(sum(operational_margin),2) as total_operational_margin,
    round(sum(purchase_cost),2) as total_purchase_cost,
    round(sum(logcost),0) as log_cost,
    round(sum(shipping_fee),0) as shipping_fee,
    round(sum(ship_cost),0) as ship_cost,
    sum(quantity) as quantity
from
{{ ref('int_orders_operational') }}
group by date_date