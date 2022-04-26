select o.customer_id, p.Amount, o.order_id
from {{ref('stg_payments')}} as p
inner join {{ref('stg_orders')}} as o
    on p.order_id = o.order_id
    and p.payment_status = 'success'

