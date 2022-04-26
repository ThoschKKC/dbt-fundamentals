select orderid as order_id
, amount/100 as amount
, created as created_at
, status as payment_status
, paymentmethod as payment_method
, id as payment_id
from {{ source('stripe', 'payment') }}