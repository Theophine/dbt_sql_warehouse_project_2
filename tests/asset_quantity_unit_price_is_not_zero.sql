-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where total_amount < 0 to make the test fail.
select
    quantity, 
    unit_price
from {{ ref('bronze_orders') }}
where 
unit_price <= 0 
and 
quantity <= 0