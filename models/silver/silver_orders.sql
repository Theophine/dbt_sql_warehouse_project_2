select 
id, 
try_cast(format(created_at, 'yyyy/MM/dd') as date) as order_date, 
user_id, 
product_id, 
quantity, 
unit_price, 
{{ multiply_two_columns('quantity', 'unit_price') }} as order_amount
from 
{{ ref("bronze_orders")}}  
